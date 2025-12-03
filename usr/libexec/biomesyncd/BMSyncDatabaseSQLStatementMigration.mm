@interface BMSyncDatabaseSQLStatementMigration
- (BMSyncDatabaseSQLStatementMigration)initWithSQLStatements:(id)statements;
@end

@implementation BMSyncDatabaseSQLStatementMigration

- (BMSyncDatabaseSQLStatementMigration)initWithSQLStatements:(id)statements
{
  statementsCopy = statements;
  v9.receiver = self;
  v9.super_class = BMSyncDatabaseSQLStatementMigration;
  v6 = [(BMSyncDatabaseSQLStatementMigration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sqlStatements, statements);
  }

  return v7;
}

@end