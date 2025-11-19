@interface PPSSQLiteEntity
- (BOOL)isEqual:(id)a3;
- (PPSSQLiteEntity)initWithTableNames:(id)a3;
- (id)disambiguatedSQLForProperty:(id)a3 shouldEscape:(BOOL)a4;
- (id)joinClauses;
- (unint64_t)hash;
@end

@implementation PPSSQLiteEntity

- (id)joinClauses
{
  v3 = [(PPSSQLiteEntity *)self tableNames];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(PPSSQLiteEntity *)self tableNames];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__PPSSQLiteEntity_joinClauses__block_invoke;
    v9[3] = &unk_279A11520;
    v7 = v5;
    v10 = v7;
    [v6 enumerateObjectsUsingBlock:v9];
  }

  return v7;
}

- (PPSSQLiteEntity)initWithTableNames:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PPSSQLiteEntity;
  v5 = [(PPSSQLiteEntity *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    tableNames = v5->_tableNames;
    v5->_tableNames = v6;
  }

  return v5;
}

- (id)disambiguatedSQLForProperty:(id)a3 shouldEscape:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  v7 = @"%@";
  if (v4 && ![v5 isEqualToString:@"*"])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PPSSQLiteEntity;
  if ([(PPSSQLiteEntity *)&v9 isEqual:v4])
  {
    v5 = [(PPSSQLiteEntity *)self tableNames];
    v6 = [v4 tableNames];
    v7 = [v5 isEqualToArray:v6];
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
  v4 = [(PPSSQLiteEntity *)self tableNames];
  v5 = [v4 hash];

  return v3 + v5;
}

@end