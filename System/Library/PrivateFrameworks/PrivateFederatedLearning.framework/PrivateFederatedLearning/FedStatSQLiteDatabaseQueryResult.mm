@interface FedStatSQLiteDatabaseQueryResult
- (FedStatSQLiteDatabaseQueryResult)initWithQueryStatement:(sqlite3_stmt *)statement;
- (id)next;
- (void)dealloc;
@end

@implementation FedStatSQLiteDatabaseQueryResult

- (FedStatSQLiteDatabaseQueryResult)initWithQueryStatement:(sqlite3_stmt *)statement
{
  v5.receiver = self;
  v5.super_class = FedStatSQLiteDatabaseQueryResult;
  result = [(FedStatSQLiteDatabaseQueryResult *)&v5 init];
  if (result)
  {
    result->_queryStatement = statement;
  }

  return result;
}

- (void)dealloc
{
  sqlite3_finalize([(FedStatSQLiteDatabaseQueryResult *)self queryStatement]);
  v3.receiver = self;
  v3.super_class = FedStatSQLiteDatabaseQueryResult;
  [(FedStatSQLiteDatabaseQueryResult *)&v3 dealloc];
}

- (id)next
{
  if (sqlite3_step([(FedStatSQLiteDatabaseQueryResult *)self queryStatement]) == 100)
  {
    v3 = sqlite3_column_count([(FedStatSQLiteDatabaseQueryResult *)self queryStatement]);
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v3];
    if (v3 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v6;
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_name(-[FedStatSQLiteDatabaseQueryResult queryStatement](self, "queryStatement"), v5)}];

        v8 = sqlite3_column_type([(FedStatSQLiteDatabaseQueryResult *)self queryStatement], v5);
        if ((v8 - 3) < 2)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(-[FedStatSQLiteDatabaseQueryResult queryStatement](self, "queryStatement"), v5)}];
        }

        else if (v8 == 2)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(-[FedStatSQLiteDatabaseQueryResult queryStatement](self, "queryStatement"), v5)}];
        }

        else
        {
          if (v8 == 1)
          {
            [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(-[FedStatSQLiteDatabaseQueryResult queryStatement](self, "queryStatement"), v5)}];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v9 = ;
        }

        v10 = v9;
        [v4 setObject:v9 forKey:v6];

        ++v5;
      }

      while (v3 != v5);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end