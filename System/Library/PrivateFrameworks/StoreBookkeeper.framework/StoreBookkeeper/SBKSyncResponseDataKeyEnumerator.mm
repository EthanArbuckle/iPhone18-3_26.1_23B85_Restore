@interface SBKSyncResponseDataKeyEnumerator
- (SBKSyncResponseDataKeyEnumerator)initWithResponseData:(id)data;
- (void)_processDeletedKey:(id)key isDirty:(BOOL *)dirty;
- (void)_processNextKey;
- (void)enumerateKeysInResponseForTransaction:(id)transaction completionBlock:(id)block;
@end

@implementation SBKSyncResponseDataKeyEnumerator

- (void)_processNextKey
{
  v3 = 0;
  while (1)
  {
    v8 = 0;
    nextObject = [(NSEnumerator *)self->_updatedKeysEnumerator nextObject];

    if (nextObject)
    {
      [(SBKSyncResponseDataKeyEnumerator *)self _processUpdatedKey:nextObject isConflict:0 isDirty:&v8];
      v3 = nextObject;
      goto LABEL_8;
    }

    nextObject2 = [(NSEnumerator *)self->_conflictedKeysEnumerator nextObject];
    if (nextObject2)
    {
      v3 = nextObject2;
      [(SBKSyncResponseDataKeyEnumerator *)self _processUpdatedKey:nextObject2 isConflict:1 isDirty:&v8];
      goto LABEL_8;
    }

    nextObject3 = [(NSEnumerator *)self->_deletedKeysEnumerator nextObject];
    if (!nextObject3)
    {
      break;
    }

    v3 = nextObject3;
    [(SBKSyncResponseDataKeyEnumerator *)self _processDeletedKey:nextObject3 isDirty:&v8];
LABEL_8:
    self->_resolvedConflictsNeedSyncToServer = (self->_resolvedConflictsNeedSyncToServer | v8) & 1;
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, self->_resolvedConflictsNeedSyncToServer);
  }
}

- (void)_processDeletedKey:(id)key isDirty:(BOOL *)dirty
{
  transaction = self->_transaction;
  keyCopy = key;
  transactionProcessor = [(SBKSyncTransaction *)transaction transactionProcessor];
  [transactionProcessor transaction:self->_transaction processDeletedKey:keyCopy isDirty:dirty];
}

- (void)enumerateKeysInResponseForTransaction:(id)transaction completionBlock:(id)block
{
  objc_storeStrong(&self->_transaction, transaction);
  transactionCopy = transaction;
  blockCopy = block;
  v9 = MEMORY[0x26D6917A0]();

  completionBlock = self->_completionBlock;
  self->_completionBlock = v9;

  updatedKeys = [(SBKSyncResponseData *)self->_responseData updatedKeys];
  objectEnumerator = [updatedKeys objectEnumerator];
  updatedKeysEnumerator = self->_updatedKeysEnumerator;
  self->_updatedKeysEnumerator = objectEnumerator;

  conflictedKeys = [(SBKSyncResponseData *)self->_responseData conflictedKeys];
  objectEnumerator2 = [conflictedKeys objectEnumerator];
  conflictedKeysEnumerator = self->_conflictedKeysEnumerator;
  self->_conflictedKeysEnumerator = objectEnumerator2;

  deletedKeys = [(SBKSyncResponseData *)self->_responseData deletedKeys];
  objectEnumerator3 = [deletedKeys objectEnumerator];
  deletedKeysEnumerator = self->_deletedKeysEnumerator;
  self->_deletedKeysEnumerator = objectEnumerator3;

  self->_resolvedConflictsNeedSyncToServer = 0;

  [(SBKSyncResponseDataKeyEnumerator *)self _processNextKey];
}

- (SBKSyncResponseDataKeyEnumerator)initWithResponseData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = SBKSyncResponseDataKeyEnumerator;
  v6 = [(SBKSyncResponseDataKeyEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseData, data);
  }

  return v7;
}

@end