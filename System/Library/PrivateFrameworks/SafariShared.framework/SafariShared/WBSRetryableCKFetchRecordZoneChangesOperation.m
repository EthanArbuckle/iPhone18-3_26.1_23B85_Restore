@interface WBSRetryableCKFetchRecordZoneChangesOperation
- (BOOL)fetchAllChanges;
- (NSArray)recordZoneIDs;
- (NSDictionary)configurationsByRecordZoneID;
- (id)_makeOperation;
- (id)fetchRecordZoneChangesCompletionBlock;
- (id)recordWasChangedBlock;
- (id)recordWithIDWasDeletedBlock;
- (id)recordZoneChangeTokensUpdatedBlock;
- (id)recordZoneFetchCompletionBlock;
- (void)_setUpOperation:(id)a3;
- (void)setConfigurationsByRecordZoneID:(id)a3;
- (void)setFetchAllChanges:(BOOL)a3;
- (void)setFetchRecordZoneChangesCompletionBlock:(id)a3;
- (void)setRecordWasChangedBlock:(id)a3;
- (void)setRecordWithIDWasDeletedBlock:(id)a3;
- (void)setRecordZoneChangeTokensUpdatedBlock:(id)a3;
- (void)setRecordZoneFetchCompletionBlock:(id)a3;
- (void)setRecordZoneIDs:(id)a3;
@end

@implementation WBSRetryableCKFetchRecordZoneChangesOperation

- (NSArray)recordZoneIDs
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSArray *)self->_recordZoneIDs copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordZoneIDs:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  recordZoneIDs = self->_recordZoneIDs;
  self->_recordZoneIDs = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordZoneIDs"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (NSDictionary)configurationsByRecordZoneID
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSDictionary *)self->_configurationsByRecordZoneID copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setConfigurationsByRecordZoneID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  configurationsByRecordZoneID = self->_configurationsByRecordZoneID;
  self->_configurationsByRecordZoneID = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"configurationsByRecordZoneID"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (BOOL)fetchAllChanges
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  fetchAllChanges = self->_fetchAllChanges;
  os_unfair_lock_unlock(&self->super.super._internalLock);
  return fetchAllChanges;
}

- (void)setFetchAllChanges:(BOOL)a3
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  self->_fetchAllChanges = a3;
  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"fetchAllChanges"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)recordWasChangedBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_recordWasChangedBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordWasChangedBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  recordWasChangedBlock = self->_recordWasChangedBlock;
  self->_recordWasChangedBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordWasChangedBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)recordWithIDWasDeletedBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_recordWithIDWasDeletedBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordWithIDWasDeletedBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  recordWithIDWasDeletedBlock = self->_recordWithIDWasDeletedBlock;
  self->_recordWithIDWasDeletedBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordWithIDWasDeletedBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)recordZoneChangeTokensUpdatedBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_recordZoneChangeTokensUpdatedBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordZoneChangeTokensUpdatedBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  recordZoneChangeTokensUpdatedBlock = self->_recordZoneChangeTokensUpdatedBlock;
  self->_recordZoneChangeTokensUpdatedBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordZoneChangeTokensUpdatedBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)recordZoneFetchCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_recordZoneFetchCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordZoneFetchCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  recordZoneFetchCompletionBlock = self->_recordZoneFetchCompletionBlock;
  self->_recordZoneFetchCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordZoneFetchCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)fetchRecordZoneChangesCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_fetchRecordZoneChangesCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setFetchRecordZoneChangesCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  fetchRecordZoneChangesCompletionBlock = self->_fetchRecordZoneChangesCompletionBlock;
  self->_fetchRecordZoneChangesCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"fetchRecordZoneChangesCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)_makeOperation
{
  v2 = objc_alloc_init(MEMORY[0x1E695B910]);

  return v2;
}

- (void)_setUpOperation:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WBSRetryableCKFetchRecordZoneChangesOperation;
  [(WBSRetryableCKDatabaseOperation *)&v16 _setUpOperation:v4];
  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"recordZoneIDs"])
  {
    [v4 setRecordZoneIDs:self->_recordZoneIDs];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"configurationsByRecordZoneID"])
  {
    [v4 setConfigurationsByRecordZoneID:self->_configurationsByRecordZoneID];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"fetchAllChanges"])
  {
    [v4 setFetchAllChanges:self->_fetchAllChanges];
  }

  if (self->_recordWasChangedBlock)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke;
    v13[3] = &unk_1E7FC9F28;
    objc_copyWeak(&v14, &location);
    [v4 setRecordWasChangedBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  if (self->_recordWithIDWasDeletedBlock)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_3;
    v11[3] = &unk_1E7FC9F50;
    objc_copyWeak(&v12, &location);
    [v4 setRecordWithIDWasDeletedBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  if (self->_recordZoneChangeTokensUpdatedBlock)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_5;
    v9[3] = &unk_1E7FC9F78;
    objc_copyWeak(&v10, &location);
    [v4 setRecordZoneChangeTokensUpdatedBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  if (self->_recordZoneFetchCompletionBlock)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_7;
    v7[3] = &unk_1E7FC9FC8;
    objc_copyWeak(&v8, &location);
    [v4 setRecordZoneFetchCompletionBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_9;
  v5[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v6, &location);
  [v4 setFetchRecordZoneChangesCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 33);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_2;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 addOperationWithBlock:v13];
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 416));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6], a1[7]);
    }

    WeakRetained = v5;
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 33);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_4;
    v10[3] = &unk_1E7FB7258;
    v10[4] = WeakRetained;
    v11 = v5;
    v12 = v6;
    [v9 addOperationWithBlock:v10];
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 424));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6]);
    }

    WeakRetained = v5;
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 33);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_6;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 addOperationWithBlock:v13];
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_6(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 432));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6], a1[7]);
    }

    WeakRetained = v5;
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = *(WeakRetained + 33);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_8;
    v18[3] = &unk_1E7FC9FA0;
    v18[4] = WeakRetained;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v23 = a5;
    v22 = v14;
    [v17 addOperationWithBlock:v18];
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_8(uint64_t a1)
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
      (v4)[2](v4, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 64));
    }

    WeakRetained = v5;
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_10;
    v7[3] = &unk_1E7FB6E30;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __65__WBSRetryableCKFetchRecordZoneChangesOperation__setUpOperation___block_invoke_10(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained && ([*(a1 + 32) _scheduleRetryIfNeededForError:*(a1 + 40)] & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 448));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, *(a1 + 32), WeakRetained, *(a1 + 40));
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