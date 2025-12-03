@interface WBSRetryableCKDatabaseOperation
- (CKDatabase)database;
- (void)_setUpOperation:(id)operation;
- (void)setDatabase:(id)database;
@end

@implementation WBSRetryableCKDatabaseOperation

- (CKDatabase)database
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = self->_database;
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setDatabase:(id)database
{
  databaseCopy = database;
  os_unfair_lock_lock(&self->super._internalLock);
  database = self->_database;
  self->_database = databaseCopy;
  v6 = databaseCopy;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"database"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (void)_setUpOperation:(id)operation
{
  operationCopy = operation;
  v5.receiver = self;
  v5.super_class = WBSRetryableCKDatabaseOperation;
  [(WBSRetryableCKOperation *)&v5 _setUpOperation:operationCopy];
  if ([(NSMutableSet *)self->super._explicitlySetProperties containsObject:@"database"])
  {
    [operationCopy setDatabase:self->_database];
  }
}

@end