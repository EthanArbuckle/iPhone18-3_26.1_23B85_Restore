@interface SBKSyncResponseDataKeyEnumerator
- (SBKSyncResponseDataKeyEnumerator)initWithResponseData:(id)a3;
- (void)_processDeletedKey:(id)a3 isDirty:(BOOL *)a4;
- (void)_processNextKey;
- (void)enumerateKeysInResponseForTransaction:(id)a3 completionBlock:(id)a4;
@end

@implementation SBKSyncResponseDataKeyEnumerator

- (void)_processNextKey
{
  v3 = 0;
  while (1)
  {
    v8 = 0;
    v4 = [(NSEnumerator *)self->_updatedKeysEnumerator nextObject];

    if (v4)
    {
      [(SBKSyncResponseDataKeyEnumerator *)self _processUpdatedKey:v4 isConflict:0 isDirty:&v8];
      v3 = v4;
      goto LABEL_8;
    }

    v5 = [(NSEnumerator *)self->_conflictedKeysEnumerator nextObject];
    if (v5)
    {
      v3 = v5;
      [(SBKSyncResponseDataKeyEnumerator *)self _processUpdatedKey:v5 isConflict:1 isDirty:&v8];
      goto LABEL_8;
    }

    v6 = [(NSEnumerator *)self->_deletedKeysEnumerator nextObject];
    if (!v6)
    {
      break;
    }

    v3 = v6;
    [(SBKSyncResponseDataKeyEnumerator *)self _processDeletedKey:v6 isDirty:&v8];
LABEL_8:
    self->_resolvedConflictsNeedSyncToServer = (self->_resolvedConflictsNeedSyncToServer | v8) & 1;
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, self->_resolvedConflictsNeedSyncToServer);
  }
}

- (void)_processDeletedKey:(id)a3 isDirty:(BOOL *)a4
{
  transaction = self->_transaction;
  v7 = a3;
  v8 = [(SBKSyncTransaction *)transaction transactionProcessor];
  [v8 transaction:self->_transaction processDeletedKey:v7 isDirty:a4];
}

- (void)enumerateKeysInResponseForTransaction:(id)a3 completionBlock:(id)a4
{
  objc_storeStrong(&self->_transaction, a3);
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x26D6917A0]();

  completionBlock = self->_completionBlock;
  self->_completionBlock = v9;

  v11 = [(SBKSyncResponseData *)self->_responseData updatedKeys];
  v12 = [v11 objectEnumerator];
  updatedKeysEnumerator = self->_updatedKeysEnumerator;
  self->_updatedKeysEnumerator = v12;

  v14 = [(SBKSyncResponseData *)self->_responseData conflictedKeys];
  v15 = [v14 objectEnumerator];
  conflictedKeysEnumerator = self->_conflictedKeysEnumerator;
  self->_conflictedKeysEnumerator = v15;

  v17 = [(SBKSyncResponseData *)self->_responseData deletedKeys];
  v18 = [v17 objectEnumerator];
  deletedKeysEnumerator = self->_deletedKeysEnumerator;
  self->_deletedKeysEnumerator = v18;

  self->_resolvedConflictsNeedSyncToServer = 0;

  [(SBKSyncResponseDataKeyEnumerator *)self _processNextKey];
}

- (SBKSyncResponseDataKeyEnumerator)initWithResponseData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBKSyncResponseDataKeyEnumerator;
  v6 = [(SBKSyncResponseDataKeyEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseData, a3);
  }

  return v7;
}

@end