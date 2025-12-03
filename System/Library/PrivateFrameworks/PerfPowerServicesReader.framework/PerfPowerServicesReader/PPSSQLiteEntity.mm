@interface PPSSQLiteEntity
- (BOOL)isEqual:(id)equal;
- (PPSSQLiteEntity)initWithTableNames:(id)names;
- (id)disambiguatedSQLForProperty:(id)property shouldEscape:(BOOL)escape;
- (id)joinClauses;
- (unint64_t)hash;
@end

@implementation PPSSQLiteEntity

- (id)joinClauses
{
  tableNames = [(PPSSQLiteEntity *)self tableNames];
  v4 = [tableNames count];

  if (v4 < 2)
  {
    v7 = 0;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    tableNames2 = [(PPSSQLiteEntity *)self tableNames];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__PPSSQLiteEntity_joinClauses__block_invoke;
    v9[3] = &unk_279A11520;
    v7 = array;
    v10 = v7;
    [tableNames2 enumerateObjectsUsingBlock:v9];
  }

  return v7;
}

- (PPSSQLiteEntity)initWithTableNames:(id)names
{
  namesCopy = names;
  v9.receiver = self;
  v9.super_class = PPSSQLiteEntity;
  v5 = [(PPSSQLiteEntity *)&v9 init];
  if (v5)
  {
    v6 = [namesCopy copy];
    tableNames = v5->_tableNames;
    v5->_tableNames = v6;
  }

  return v5;
}

- (id)disambiguatedSQLForProperty:(id)property shouldEscape:(BOOL)escape
{
  escapeCopy = escape;
  propertyCopy = property;
  v6 = propertyCopy;
  v7 = @"%@";
  if (escapeCopy && ![propertyCopy isEqualToString:@"*"])
  {
    v7 = @"%@";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v6];

  return v8;
}

void __30__PPSSQLiteEntity_joinClauses__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"LEFT JOIN '%@' AS '%lu' ON '%d'.%@ = '%lu'.%@", a2, a3, 0, @"ID", a3, @"FK_ID"];
    [*(a1 + 32) addObject:v4];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = PPSSQLiteEntity;
  if ([(PPSSQLiteEntity *)&v9 isEqual:equalCopy])
  {
    tableNames = [(PPSSQLiteEntity *)self tableNames];
    tableNames2 = [equalCopy tableNames];
    v7 = [tableNames isEqualToArray:tableNames2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PPSSQLiteEntity;
  v3 = [(PPSSQLiteEntity *)&v7 hash];
  tableNames = [(PPSSQLiteEntity *)self tableNames];
  v5 = [tableNames hash];

  return v3 + v5;
}

@end