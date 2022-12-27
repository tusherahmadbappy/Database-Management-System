CREATE DATABASE labexam;
USE labexam;


CREATE TABLE Vechile
(
	VRN INT(3) UNSIGNED PRIMARY KEY,
    Brand_Name	VARCHAR(10) NOT NULL DEFAULT '',
    Color VARCHAR(10) NOT NULL DEFAULT ''
);


CREATE TABLE Person
(
	NID INT(3) UNSIGNED PRIMARY KEY,
    Name VARCHAR(3)NOT NULL DEFAULT '',
    Phone Int(3),
    Address VARCHAR(10) NOT NULL DEFAULT ''
);



CREATE TABLE own
(
	VRN INT(3) UNSIGNED NOT NULL,
    NID INT(3)UNSIGNED NOT NULL,
    FOREIGN KEY(VRN) references Vechile(VRN),
    FOREIGN KEY(NID) references Person(NID)
);

INSERT INTO Vechile VALUES
(777,'BMW','BLACK'),
(555,'VOLVO','WHITE'),
(444,'TOTOTA','SILVER');

INSERT INTO Person VALUES
(111,'A',01,'Uttara'),
(222,'B',01,'Uttara');

INSERT INTO own VALUES
(777,111),
(555,222);

select *from Vechile 
where VRN = 777;
select *from Person
where NID = 222;









