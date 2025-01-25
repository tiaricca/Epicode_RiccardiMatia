CREATE DATABASE Esercitazione_Epicode;

USE esercitazione_epicode;

-- Creazione tabella PRODUCT
CREATE TABLE Product (
	ProductID TINYINT PRIMARY KEY
    , ProductName VARCHAR(50)
    , CategoryName VARCHAR(50)
    , Color VARCHAR(20)
    );

-- Dati inseriti in PRODUCT
INSERT INTO Product 
VALUES
(1, 'Teddy Bear', 'Plush Toys', 'Brown'),
(2, 'Doll', 'Dolls', 'Pink'),
(3, 'Action Figure', 'Action Figures', 'Red'),
(4, 'Toy Car', 'Vehicles', 'Blue'),
(5, 'Building Blocks', 'Building Toys', 'Multi-color'),
(6, 'Puzzle', 'Educational Toys', 'Various'),
(7, 'Rubber Duck', 'Bath Toys', 'Yellow'),
(8, 'Train Set', 'Vehicles', 'Green'),
(9, 'Toy Airplane', 'Vehicles', 'White'),
(10, 'Toy Helicopter', 'Vehicles', 'Orange'),
(11, 'Bouncing Ball', 'Outdoor Toys', 'Red'),
(12, 'Toy Dinosaur', 'Action Figures', 'Green'),
(13, 'Stuffed Lion', 'Plush Toys', 'Yellow'),
(14, 'Race Car', 'Vehicles', 'Black'),
(15, 'Plastic Cup Stack', 'Educational Toys', 'Various'),
(16, 'Action Robot', 'Action Figures', 'Silver'),
(17, 'Toy Boat', 'Vehicles', 'Blue'),
(18, 'Rubik\'s Cube', 'Educational Toys', 'Multicolor'),
(19, 'Toy Train', 'Vehicles', 'Yellow'),
(20, 'Mini Drone', 'Technology Toys', 'Black'),
(21, 'Superhero Cape', 'Dress-Up Toys', 'Red'),
(22, 'Toy Sword', 'Dress-Up Toys', 'Silver'),
(23, 'Toy Gun', 'Pretend Play', 'Black'),
(24, 'Toy Drum Set', 'Musical Toys', 'Red'),
(25, 'Plush Elephant', 'Plush Toys', 'Grey'),
(26, 'Mini Dollhouse', 'Dolls', 'White'),
(27, 'Toy Helicopter', 'Vehicles', 'Blue'),
(28, 'Toy Pirate Ship', 'Playsets', 'Brown'),
(29, 'Building Blocks Set', 'Building Toys', 'Various'),
(30, 'Stuffed Giraffe', 'Plush Toys', 'Yellow'),
(31, 'Action Hero Toy', 'Action Figures', 'Blue'),
(32, 'Toy Robot', 'Action Figures', 'Red'),
(33, 'Bicycle Toy', 'Outdoor Toys', 'Yellow'),
(34, 'Play Kitchen Set', 'Pretend Play', 'Pink'),
(35, 'Toy Guitar', 'Musical Toys', 'Green'),
(36, 'Inflatable Ball', 'Outdoor Toys', 'Blue'),
(37, 'Toy Tractor', 'Vehicles', 'Green'),
(38, 'Rubber Ball', 'Outdoor Toys', 'Red'),
(39, 'Play Dough Set', 'Craft Toys', 'Various'),
(40, 'Toy Spy Glasses', 'Pretend Play', 'Black'),
(41, 'Toy Space Shuttle', 'Space Toys', 'White'),
(42, 'Plush Tiger', 'Plush Toys', 'Orange'),
(43, 'Toy Helicopter', 'Vehicles', 'Red'),
(44, 'Toy Skateboard', 'Outdoor Toys', 'Blue'),
(45, 'Miniature Doll Set', 'Dolls', 'Pink'),
(46, 'Toy Telescope', 'Space Toys', 'Silver'),
(47, 'Magic Set', 'Magic Toys', 'Black'),
(48, 'Toy Kite', 'Outdoor Toys', 'Yellow'),
(49, 'Toy Castle', 'Playsets', 'Purple'),
(50, 'Toy Robot Dog', 'Action Figures', 'Brown');


-- Creazione tabella RESELLER
CREATE TABLE Reseller (
	ResellerID TINYINT PRIMARY KEY
    , RegionID TINYINT 
    , ResellerName VARCHAR(50)
    , ProductLine VARCHAR(50)
    );

ALTER TABLE Reseller
	ADD FOREIGN KEY
		FK_Reseller (RegionID) 
	REFERENCES 
		Region (RegionID);

-- Dati inseriti in RESELLER
INSERT INTO Reseller (ResellerID, RegionID, ResellerName, ProductLine) 
VALUES
(1, 1, 'ToyWorld', 'Plush Toys'),
(2, 1, 'ToyMaster', 'Educational Toys'),
(3, 2, 'PlayLand', 'Action Figures'),
(4, 2, 'KidsToys', 'Vehicles'),
(5, 3, 'ToyBarn', 'Building Toys'),
(6, 3, 'ToyPlanet', 'Dolls'),
(7, 4, 'FunToys', 'Puzzles'),
(8, 4, 'Playhouse', 'Pretend Play'),
(9, 5, 'ToyKingdom', 'Outdoor Toys'),
(10, 5, 'ToyJoy', 'Musical Toys'),
(11, 6, 'The Toy Stop', 'Craft Toys'),
(12, 6, 'ToyStore', 'Sports Toys'),
(13, 7, 'Toys Galore', 'Science Toys'),
(14, 7, 'ToyBox', 'Technology Toys'),
(15, 8, 'Toy Hut', 'Dress-Up Toys'),
(16, 8, 'Play Time', 'Space Toys'),
(17, 9, 'Kiddo Toys', 'Educational Toys'),
(18, 9, 'SuperToy', 'Building Toys'),
(19, 10, 'Toy Kingdom', 'Action Figures'),
(20, 10, 'Kid\'s Play', 'Dolls'),
(21, 11, 'Toy Vault', 'Vehicles'),
(22, 11, 'Play Ventures', 'Dolls'),
(23, 12, 'Dream Toys', 'Building Blocks'),
(24, 12, 'Toy Wonderland', 'Outdoor Toys'),
(25, 13, 'Fun Junction', 'Educational Toys'),
(26, 13, 'KidzToys', 'Pretend Play'),
(27, 14, 'Little Wonders', 'Toy Trains'),
(28, 14, 'ToyCraze', 'Toys for Babies'),
(29, 15, 'My Toy World', 'Teddy Bears'),
(30, 15, 'Toys-R-Us', 'Toy Planes'),
(31, 16, 'PlayPal', 'Puzzles'),
(32, 16, 'Toys Plaza', 'Building Sets'),
(33, 17, 'Smart Toys', 'Rubik’s Cube'),
(34, 17, 'Toy Universe', 'Action Figures'),
(35, 18, 'ToyWorld Express', 'Art & Craft Toys'),
(36, 18, 'PlayMore Toys', 'Musical Instruments'),
(37, 19, 'Happy Toys', 'Dollhouses'),
(38, 19, 'Imagination Toys', 'Toy Robots'),
(39, 20, 'ToyBox Express', 'Toy Trucks'),
(40, 20, 'PlayCity', 'Stuffed Animals'),
(41, 21, 'ToyShop', 'Playsets'),
(42, 21, 'Tiny Toy Shop', 'Outdoor Sports'),
(43, 22, 'Toys 4 Kids', 'Puzzle Games'),
(44, 22, 'Toy Market', 'Magic Toys'),
(45, 23, 'Toy Empire', 'Cars & Trucks'),
(46, 23, 'Toy Kingdom Ltd.', 'Magic & Fun'),
(47, 24, 'Playville', 'Baby Toys'),
(48, 24, 'ToyGiant', 'Educational Games'),
(49, 25, 'Little Toy Shop', 'Animal Figures'),
(50, 25, 'FunTime Toys', 'Collectible Toys');

-- Creazione tabella REGION
CREATE TABLE Region (
	RegionID TINYINT PRIMARY KEY
    , City VARCHAR(30)
    , CountryName VARCHAR(50)
    , PostalCode MEDIUMINT
    );

-- Dati inseriti in REGION
INSERT INTO Region (RegionID, City, CountryName, PostalCode) 
VALUES
(1, 'ToyTown', 'USA', 10001),
(2, 'PlayCity', 'Canada', 10101),
(3, 'ToyLand', 'UK', 20001),
(4, 'FunVille', 'Australia', 3000),
(5, 'KiddoPlace', 'USA', 40001),
(6, 'ToyPark', 'Germany', 50001),
(7, 'PlayZone', 'France', 60001),
(8, 'ToyWorld', 'Spain', 70001),
(9, 'ToyCity', 'Italy', 80001),
(10, 'DreamLand', 'USA', 90001),
(11, 'KidZone', 'Canada', 10102),
(12, 'FunHouse', 'Mexico', 11000),
(13, 'PlayWorld', 'UK', 12000),
(14, 'ToyVillage', 'India', 130000),
(15, 'PlayStation', 'Australia', 14000),
(16, 'FunCity', 'USA', 15001),
(17, 'ToyHaven', 'Canada', 16001),
(18, 'ToyKingdom', 'France', 17001),
(19, 'DreamCity', 'Germany', 18001),
(20, 'KidCity', 'Italy', 19000),
(21, 'PlayToys', 'USA', 20001),
(22, 'ToyPalace', 'UK', 21001),
(23, 'ToyBox', 'Spain', 22000),
(24, 'ToyWorldHQ', 'Australia', 23000),
(25, 'ToysRUs', 'USA', 24001),
(26, 'PlayBox', 'Canada', 25000),
(27, 'ToyCraft', 'Mexico', 26000),
(28, 'PlayZoneHQ', 'UK', 27000),
(29, 'PlayTime', 'Germany', 28001),
(30, 'ToyStore', 'France', 29000),
(31, 'ToyTopia', 'USA', 30000),
(32, 'ToyVenture', 'Canada', 31000),
(33, 'FunPark', 'India', 320000),
(34, 'ToyTropolis', 'Australia', 33000),
(35, 'KidPlay', 'USA', 34001),
(36, 'PlayMate', 'Mexico', 35000),
(37, 'ToyHouse', 'France', 36000),
(38, 'FunTimes', 'Germany', 37001),
(39, 'ToyLandHQ', 'Spain', 38001),
(40, 'PlayPalace', 'Italy', 39000),
(41, 'ToyBay', 'Canada', 40000),
(42, 'ToyEmpire', 'UK', 41000),
(43, 'ToyPlace', 'Australia', 42000),
(44, 'FunvilleHQ', 'USA', 43000),
(45, 'ToyTales', 'Mexico', 44000),
(46, 'PlayDream', 'France', 45000),
(47, 'Kidtopia', 'Germany', 46000),
(48, 'ToyWorldHQ', 'Canada', 47000),
(49, 'PlayDreams', 'Italy', 48000),
(50, 'ToyNation', 'USA', 49000);

-- Creazione tabella SALES
CREATE TABLE Sales (
	SalesOrderNumber VARCHAR(20) 
    , SalesOrderLineNumber TINYINT 
    , RegionID TINYINT
    , ProductID TINYINT
    , ResellerID TINYINT
    , OrderDate DATE 
    , OrderQuantity SMALLINT
    , SalesAmount SMALLINT
    , FOREIGN KEY FK_Sales_r (RegionID) REFERENCES Region (RegionID)
    , FOREIGN KEY FK_Sales_p (ProductID) REFERENCES Product (ProductID)
    , FOREIGN KEY FK_Sales_s (ResellerID) REFERENCES Reseller (ResellerID)
    );
    
-- Aggiunto PRIMARY KEY COMPOSTA 
ALTER TABLE 
	Sales
ADD PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber);

-- Dati inseriti in SALES
INSERT INTO Sales (SalesOrderNumber, SalesOrderLineNumber, RegionID, ProductID, ResellerID, OrderDate, OrderQuantity, SalesAmount) 
VALUES
('NA12345', 1, 1, 3, 10, '2023-05-10', 5, 100.00),
('NA12345', 2, 1, 25, 10, '2023-05-12', 3, 75.00),
('NA12345', 3, 2, 18, 11, '2023-06-01', 7, 140.00),
('NA12345', 4, 2, 42, 11, '2023-06-02', 6, 120.00),
('NA23456', 1, 3, 9, 12, '2024-01-15', 4, 80.00),
('NA23456', 2, 3, 12, 12, '2024-02-20', 2, 50.00),
('NA23456', 3, 4, 33, 13, '2024-03-10', 8, 160.00),
('NA23456', 4, 4, 27, 13, '2024-03-15', 5, 125.00),
('NA34567', 1, 5, 19, 14, '2023-11-05', 10, 200.00),
('NA34567', 2, 5, 22, 14, '2023-11-12', 3, 90.00),
('NA34567', 3, 6, 4, 15, '2023-07-06', 6, 120.00),
('NA34567', 4, 6, 16, 15, '2023-07-15', 4, 80.00),
('NA45678', 1, 7, 44, 16, '2024-04-17', 9, 180.00),
('NA45678', 2, 7, 5, 16, '2024-04-20', 5, 125.00),
('NA45678', 3, 8, 1, 17, '2024-05-05', 7, 140.00),
('NA45678', 4, 8, 38, 17, '2024-05-07', 3, 75.00),
('NA56789', 1, 9, 21, 18, '2023-10-09', 10, 200.00),
('NA56789', 2, 9, 40, 18, '2023-10-10', 4, 80.00),
('NA56789', 3, 10, 31, 19, '2024-06-12', 8, 160.00),
('NA56789', 4, 10, 46, 19, '2024-06-14', 2, 50.00),
('NA67890', 1, 1, 49, 20, '2024-08-01', 6, 120.00),
('NA67890', 2, 1, 6, 20, '2024-08-04', 5, 100.00),
('NA67890', 3, 2, 24, 21, '2023-12-01', 7, 140.00),
('NA67890', 4, 2, 28, 21, '2023-12-02', 3, 75.00),
('NA78901', 1, 3, 13, 22, '2024-01-20', 4, 80.00),
('NA78901', 2, 3, 8, 22, '2024-01-25', 6, 120.00),
('NA78901', 3, 4, 23, 23, '2024-02-14', 8, 160.00),
('NA78901', 4, 4, 35, 23, '2024-02-18', 5, 125.00),
('NA89012', 1, 5, 41, 24, '2023-09-18', 10, 200.00),
('NA89012', 2, 5, 2, 24, '2023-09-20', 3, 90.00),
('NA89012', 3, 6, 15, 25, '2024-03-05', 6, 120.00),
('NA89012', 4, 6, 36, 25, '2024-03-10', 4, 80.00),
('NA90123', 1, 7, 26, 26, '2023-06-25', 9, 180.00),
('NA90123', 2, 7, 7, 26, '2023-06-28', 5, 125.00),
('NA90123', 3, 8, 37, 27, '2024-07-01', 7, 140.00),
('NA90123', 4, 8, 10, 27, '2024-07-03', 3, 75.00),
('NA01234', 1, 9, 11, 28, '2023-08-17', 10, 200.00),
('NA01234', 2, 9, 30, 28, '2023-08-20', 4, 80.00),
('NA01234', 3, 10, 43, 29, '2024-09-22', 8, 160.00),
('NA01234', 4, 10, 32, 29, '2024-09-24', 2, 50.00),
('NA12346', 1, 1, 34, 30, '2024-10-11', 6, 120.00),
('NA12346', 2, 1, 39, 30, '2024-10-13', 5, 100.00),
('NA12346', 3, 2, 33, 31, '2024-11-02', 7, 140.00),
('NA12346', 4, 2, 45, 31, '2024-11-05', 3, 75.00),
('NA23457', 1, 3, 29, 32, '2023-07-13', 4, 80.00),
('NA23457', 2, 3, 47, 32, '2023-07-15', 6, 120.00),
('NA23457', 3, 4, 50, 33, '2024-08-25', 8, 160.00),
('NA23457', 4, 4, 48, 33, '2024-08-28', 5, 125.00),
('NA34568', 1, 5, 14, 34, '2023-10-03', 10, 200.00),
('NA34568', 2, 5, 17, 34, '2023-10-05', 3, 90.00);


-- Verifica che i dati in PK siano UNIVOCI (Sales)
SELECT 
	COUNT(CONCAT(SalesOrderNumber, '-', SalesOrderLineNumber))
    , (SELECT DISTINCT 
			COUNT(CONCAT(SalesOrderNumber, '-', SalesOrderLineNumber))
		FROM
			Sales)
FROM 
	Sales;
    
-- Verifica che i dati in PK siano UNIVOCI (Region)
SELECT 
	COUNT(RegionID)
    , (SELECT DISTINCT 
			COUNT(RegionID)
		FROM
			Region)
FROM 
	Region;

-- Verifica che i dati in PK siano UNIVOCI (Reseller)
SELECT 
	COUNT(ResellerID)
    , (SELECT DISTINCT 
			COUNT(ResellerID)
		FROM
			Reseller)
FROM 
	Reseller;

-- Verifica che i dati in PK siano UNIVOCI (Product)
SELECT 
	COUNT(ProductID) 
    , (SELECT DISTINCT 
			COUNT(ProductID)
		FROM
			Product)
FROM 
	Product;
    
-- Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno
SELECT
	ProductName
    , SUM(SalesAmount)
    , YEAR(OrderDate)
FROM
	Sales s
LEFT JOIN
	Product p
ON
	s.ProductID = p.ProductID
GROUP BY
	ProductName
    , YEAR(OrderDate);
    
-- Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente. 
SELECT
	CountryName
	, YEAR(OrderDate)
    , SUM(salesAmount)
FROM
	Sales s
JOIN
	Region r
ON 
	s.RegionID = r.RegionID
/* uso il WHERE per filtrare l'anno
WHERE 
	YEAR(OrderDate) = 2023 */
GROUP BY
	CountryName
    , YEAR(OrderDate)
ORDER BY 
	YEAR(OrderDate)
    , SUM(SalesAmount) DESC;

-- Ordina il risultato per data e per fatturato decrescente. (Ho inteso in due modi la parola "data")
SELECT
	CountryName
	, OrderDate
    , SUM(SalesAmount)
FROM
	Sales s
JOIN
	Region r
ON 
	s.RegionID = r.RegionID
GROUP BY
	CountryName
    , OrderDate
ORDER BY
	OrderDate
    , SUM(SalesAmount) DESC;
    
-- Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato? 
SELECT 
	CategoryName
FROM
	product p
JOIN 
	Sales s
ON 
	p.productID = s.ProductID
LEFT JOIN
	Region r
ON 
	r.RegionID = s.RegionID
GROUP BY
	CategoryName
ORDER BY
	SUM(SalesAmount) DESC
LIMIT 1;

-- Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti. 

-- 1° Approcio (Migliore)
SELECT 
	ProductName
	, COALESCE(SUM(SalesAmount), 'Non Venduto') AS SalesAmount
FROM
	product p
LEFT JOIN
	sales s
ON
	p.productID = s.productID
GROUP BY
	ProductName
ORDER BY
	COALESCE(SUM(SalesAmount), 'Non Venduto') DESC;
    
-- 2° Approcio
SELECT 
	COUNT(p.ProductID)
    , COUNT(s.ProductID)
FROM
	product p
LEFT JOIN
	sales s
ON
	p.productID = s.productID;   

-- Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente).
SELECT
	ProductName
    , MAX(OrderDate)
FROM
	product p
JOIN
	sales s
ON
	p.ProductID = s.ProductID
GROUP BY
	ProductName
ORDER BY
	MAX(OrderDate) DESC;
