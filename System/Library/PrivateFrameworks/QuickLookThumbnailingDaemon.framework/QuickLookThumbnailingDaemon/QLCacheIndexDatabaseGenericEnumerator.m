@interface QLCacheIndexDatabaseGenericEnumerator
- (QLCacheIndexDatabaseGenericEnumerator)initWithSqliteDatabase:(id)a3;
- (void)dealloc;
@end

@implementation QLCacheIndexDatabaseGenericEnumerator

- (void)dealloc
{
  p_stmt = &self->_stmt;
  if (self->_stmt)
  {
    [(QLSqliteDatabase *)self->_sqliteDatabase finalizeStatement:p_stmt];
  }

  v4.receiver = self;
  v4.super_class = QLCacheIndexDatabaseGenericEnumerator;
  [(QLCacheIndexDatabaseGenericEnumerator *)&v4 dealloc];
}

- (QLCacheIndexDatabaseGenericEnumerator)initWithSqliteDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = QLCacheIndexDatabaseGenericEnumerator;
  v6 = [(QLCacheIndexDatabaseGenericEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sqliteDatabase, a3);
  }

  return v7;
}

@end