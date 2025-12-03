@interface QLSqliteDatabaseStatementWrapper
- (BOOL)isInUse;
- (QLSqliteDatabaseStatementWrapper)initWithStatement:(sqlite3_stmt *)statement key:(id)key inUseTable:(id)table;
- (void)dealloc;
- (void)setInUse:(BOOL)use;
@end

@implementation QLSqliteDatabaseStatementWrapper

- (QLSqliteDatabaseStatementWrapper)initWithStatement:(sqlite3_stmt *)statement key:(id)key inUseTable:(id)table
{
  keyCopy = key;
  tableCopy = table;
  v14.receiver = self;
  v14.super_class = QLSqliteDatabaseStatementWrapper;
  v11 = [(QLSqliteDatabaseStatementWrapper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_stmt = statement;
    objc_storeStrong(&v11->_key, key);
    objc_storeWeak(&v12->_inUseTable, tableCopy);
  }

  return v12;
}

- (BOOL)isInUse
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_inUseTable);
  LOBYTE(selfCopy) = NSMapGet(WeakRetained, selfCopy->_stmt) == selfCopy;

  return selfCopy;
}

- (void)setInUse:(BOOL)use
{
  WeakRetained = objc_loadWeakRetained(&self->_inUseTable);
  stmt = self->_stmt;
  v7 = WeakRetained;
  if (use)
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