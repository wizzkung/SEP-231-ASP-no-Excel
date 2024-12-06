ALTER proc pGetMusic --3
@category_id int = NULL
AS
SELECT m.id,
		m.name,
		m.author,
		c.category,
		m.category_id,
		m.description		
FROM Category c JOIN Music m ON c.id = m.category_id
WHERE (@category_id IS NULL OR m.category_id = @category_id)
