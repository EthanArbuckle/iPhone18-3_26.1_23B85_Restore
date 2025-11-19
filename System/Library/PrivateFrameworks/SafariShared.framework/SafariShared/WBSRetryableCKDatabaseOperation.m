@interface WBSRetryableCKDatabaseOperation
- (CKDatabase)database;
- (void)_setUpOperation:(id)a3;
- (void)setDatabase:(id)a3;
@end

@implementation WBSRetryableCKDatabaseOperation

- (CKDatabase)database
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = self->_database;
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setDatabase:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._internalLock);
  database = self->_database;
  self->_database = v4;
  v6 = v4;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"database"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (void)_setUpOperation:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = WBSRetryableCKDatabaseOperation;
  [(WBSRetryableCKOperation *)&v5 _setUpOperation:v4];
  if ([(NSMutableSet *)self->super._explicitlySetProperties containsObject:@"database"])
  {
    [v4 setDatabase:self->_database];
  }
}

@end