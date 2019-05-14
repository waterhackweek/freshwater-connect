CREATE TABLE members (
	member_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	name TEXT
);

CREATE TABLE usernames (
	username_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	username TEXT NOT NULL,
	type TEXT,
	member_id INTEGER,
	FOREIGN KEY(member_id) REFERENCES members(member_id)
);

CREATE TABLE cxns (
	cxn_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	person1 TEXT NOT NULL,
	person2 TEXT NOT NULL,
	source TEXT NOT NULL,
	type TEXT NOT NULL,
	FOREIGN KEY(person1) REFERENCES usernames(username),
	FOREIGN KEY(person2) REFERENCES usernames(username)
);