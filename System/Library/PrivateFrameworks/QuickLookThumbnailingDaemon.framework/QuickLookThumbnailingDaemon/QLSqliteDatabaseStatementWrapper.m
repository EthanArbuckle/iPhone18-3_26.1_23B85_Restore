@interface QLSqliteDatabaseStatementWrapper
- (BOOL)isInUse;
- (QLSqliteDatabaseStatementWrapper)initWithStatement:(sqlite3_stmt *)a3 key:(id)a4 inUseTable:(id)a5;
- (void)dealloc;
- (void)setInUse:(BOOL)a3;
@end

@implementation QLSqliteDatabaseStatementWrapper

- (QLSqliteDatabaseStatementWrapper)initWithStatement:(sqlite3_stmt *)a3 key:(id)a4 inUseTable:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = QLSqliteDatabaseStatementWrapper;
  v11 = [(QLSqliteDatabaseStatementWrapper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_stmt = a3;
    objc_storeStrong(&v11->_key, a4);
    objc_storeWeak(&v12->_inUseTable, v10);
  }

  return v12;
}

- (BOOL)isInUse
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_inUseTable);
  LOBYTE(v2) = NSMapGet(WeakRetained, v2->_stmt) == v2;

  return v2;
}

- (void)setInUse:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_inUseTable);
  stmt = self->_stmt;
  v7 = WeakRetained;
  if (a3)
  {
    NSMapInsert(WeakRetained, stmt, self);
  }

  else
  {
    NSMapRemove(WeakRetained, stmt);
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = QLSqliteDatabaseStatementWrapper;
  [(QLSqliteDatabaseStatementWrapper *)&v2 dealloc];
}

@end