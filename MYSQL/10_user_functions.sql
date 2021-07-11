-- User function

DELIMITER //
CREATE FUNCTION ConcatFirstNameAndIdBook (first_name VARCHAR(30), id_book INT)
RETURNS VARCHAR(100)

BEGIN
    RETURN CONCAT(first_name, ' has borrowed the book N° ', id_book);
END; //
DELIMITER ;

-- SELECT

SELECT ConcatFirstNameAndIdBook(first_name, id_book) FROM subscribers s, loans l WHERE s.id_subscriber = l.id_subscriber; 

-- DROP

DROP FUNCTION ConcatFirstNameAndIdBook;