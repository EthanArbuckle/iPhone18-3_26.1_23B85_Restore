@interface WBSRetryableCKFetchDatabaseChangesOperation
- (BOOL)fetchAllChanges;
- (CKServerChangeToken)previousServerChangeToken;
- (id)_makeOperation;
- (id)changeTokenUpdatedBlock;
- (id)fetchDatabaseChangesCompletionBlock;
- (id)recordZoneWithIDChangedBlock;
- (id)recordZoneWithIDWasDeletedBlock;
- (id)recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock;
- (id)recordZoneWithIDWasPurgedBlock;
- (unint64_t)resultsLimit;
- (void)_setUpOperation:(id)operation;
- (void)setChangeTokenUpdatedBlock:(id)block;
- (void)setFetchAllChanges:(BOOL)changes;
- (void)setFetchDatabaseChangesCompletionBlock:(id)block;
- (void)setPreviousServerChangeToken:(id)token;
- (void)setRecordZoneWithIDChangedBlock:(id)block;
- (void)setRecordZoneWithIDWasDeletedBlock:(id)block;
- (void)setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:(id)block;
- (void)setRecordZoneWithIDWasPurgedBlock:(id)block;
- (void)setResultsLimit:(unint64_t)limit;
@end

@implementation WBSRetryableCKFetchDatabaseChangesOperation

- (CKServerChangeToken)previousServerChangeToken
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(CKServerChangeToken *)self->_previousServerChangeToken copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setPreviousServerChangeToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [tokenCopy copy];

  previousServerChangeToken = self->_previousServerChangeToken;
  self->_previousServerChangeToken = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"previousServerChangeToken"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (unint64_t)resultsLimit
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  resultsLimit = self->_resultsLimit;
  os_unfair_lock_unlock(&self->super.super._internalLock);
  return resultsLimit;
}

- (void)setResultsLimit:(unint64_t)limit
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  self->_resultsLimit = limit;
  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"resultsLimit"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (BOOL)fetchAllChanges
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  fetchAllChanges = self->_fetchAllChanges;
  os_unfair_lock_unlock(&self->super.super._internalLock);
  return fetchAllChanges;
}

- (void)setFetchAllChanges:(BOOL)changes
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  self->_fetchAllChanges = changes;
  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"fetchAllChanges"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)recordZoneWithIDChangedBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_recordZoneWithIDChangedBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordZoneWithIDChangedBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  recordZoneWithIDChangedBlock = self->_recordZoneWithIDChangedBlock;
  self->_recordZoneWithIDChangedBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordZoneWithIDChangedBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)recordZoneWithIDWasDeletedBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_recordZoneWithIDWasDeletedBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordZoneWithIDWasDeletedBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  recordZoneWithIDWasDeletedBlock = self->_recordZoneWithIDWasDeletedBlock;
  self->_recordZoneWithIDWasDeletedBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordZoneWithIDWasDeletedBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)recordZoneWithIDWasPurgedBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_recordZoneWithIDWasPurgedBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordZoneWithIDWasPurgedBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  recordZoneWithIDWasPurgedBlock = self->_recordZoneWithIDWasPurgedBlock;
  self->_recordZoneWithIDWasPurgedBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordZoneWithIDWasPurgedBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock = self->_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock;
  self->_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)changeTokenUpdatedBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_changeTokenUpdatedBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setChangeTokenUpdatedBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  changeTokenUpdatedBlock = self->_changeTokenUpdatedBlock;
  self->_changeTokenUpdatedBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"changeTokenUpdatedBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)fetchDatabaseChangesCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_fetchDatabaseChangesCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setFetchDatabaseChangesCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  fetchDatabaseChangesCompletionBlock = self->_fetchDatabaseChangesCompletionBlock;
  self->_fetchDatabaseChangesCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"fetchDatabaseChangesCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)_makeOperation
{
  v2 = objc_alloc_init(MEMORY[0x1E695B8F0]);

  return v2;
}

- (void)_setUpOperation:(id)operation
{
  operationCopy = operation;
  v18.receiver = self;
  v18.super_class = WBSRetryableCKFetchDatabaseChangesOperation;
  [(WBSRetryableCKDatabaseOperation *)&v18 _setUpOperation:operationCopy];
  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"previousServerChangeToken"])
  {
    [operationCopy setPreviousServerChangeToken:self->_previousServerChangeToken];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"resultsLimit"])
  {
    [operationCopy setResultsLimit:self->_resultsLimit];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"fetchAllChanges"])
  {
    [operationCopy setFetchAllChanges:self->_fetchAllChanges];
  }

  if (self->_recordZoneWithIDChangedBlock)
  {
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke;
    v15[3] = &unk_1E7FC9DE8;
    objc_copyWeak(&v16, &location);
    [operationCopy setRecordZoneWithIDChangedBlock:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  if (self->_recordZoneWithIDWasDeletedBlock)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_3;
    v13[3] = &unk_1E7FC9DE8;
    objc_copyWeak(&v14, &location);
    [operationCopy setRecordZoneWithIDWasDeletedBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  if (self->_recordZoneWithIDWasPurgedBlock)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_5;
    v11[3] = &unk_1E7FC9DE8;
    objc_copyWeak(&v12, &location);
    [operationCopy setRecordZoneWithIDWasPurgedBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  if (self->_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_7;
    v9[3] = &unk_1E7FC9DE8;
    objc_copyWeak(&v10, &location);
    [operationCopy setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  if (self->_changeTokenUpdatedBlock)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_9;
    v7[3] = &unk_1E7FC9E10;
    objc_copyWeak(&v8, &location);
    [operationCopy setChangeTokenUpdatedBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_11;
  v5[3] = &unk_1E7FC9E60;
  objc_copyWeak(&v6, &location);
  [operationCopy setFetchDatabaseChangesCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_2;
    v7[3] = &unk_1E7FB6E30;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 416));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, *(a1 + 40));
    }

    WeakRetained = v5;
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_4;
    v7[3] = &unk_1E7FB6E30;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 424));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, *(a1 + 40));
    }

    WeakRetained = v5;
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_6;
    v7[3] = &unk_1E7FB6E30;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 432));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, *(a1 + 40));
    }

    WeakRetained = v5;
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_8;
    v7[3] = &unk_1E7FB6E30;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 440));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, *(a1 + 40));
    }

    WeakRetained = v5;
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_10;
    v7[3] = &unk_1E7FB6E30;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 448));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, *(a1 + 40));
    }

    WeakRetained = v5;
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_11(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = *(WeakRetained + 33);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_12;
    v12[3] = &unk_1E7FC9E38;
    v12[4] = WeakRetained;
    v13 = v8;
    v14 = v7;
    v15 = a3;
    [v11 addOperationWithBlock:v12];
  }
}

void __63__WBSRetryableCKFetchDatabaseChangesOperation__setUpOperation___block_invoke_12(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained && ([*(a1 + 32) _scheduleRetryIfNeededForError:*(a1 + 40)] & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 456));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, *(a1 + 32), WeakRetained, *(a1 + 48), *(a1 + 56), *(a1 + 40));
    }

    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Operation of %{public}@ did finish successfully", &v7, 0xCu);
    }

    [*(a1 + 32) _didFinishOperation];
  }
}

@end