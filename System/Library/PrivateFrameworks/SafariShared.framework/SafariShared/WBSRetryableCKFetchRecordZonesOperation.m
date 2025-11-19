@interface WBSRetryableCKFetchRecordZonesOperation
- (NSArray)recordZoneIDs;
- (id)_makeOperation;
- (id)fetchRecordZonesCompletionBlock;
- (id)perRecordZoneCompletionBlock;
- (void)_setUpOperation:(id)a3;
- (void)setFetchRecordZonesCompletionBlock:(id)a3;
- (void)setPerRecordZoneCompletionBlock:(id)a3;
- (void)setRecordZoneIDs:(id)a3;
@end

@implementation WBSRetryableCKFetchRecordZonesOperation

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

- (id)perRecordZoneCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_perRecordZoneCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setPerRecordZoneCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  perRecordZoneCompletionBlock = self->_perRecordZoneCompletionBlock;
  self->_perRecordZoneCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"perRecordZoneCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)fetchRecordZonesCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_fetchRecordZonesCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setFetchRecordZonesCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  fetchRecordZonesCompletionBlock = self->_fetchRecordZonesCompletionBlock;
  self->_fetchRecordZonesCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"fetchRecordZonesCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)_makeOperation
{
  v2 = objc_alloc_init(MEMORY[0x1E695B930]);

  return v2;
}

- (void)_setUpOperation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSRetryableCKFetchRecordZonesOperation;
  [(WBSRetryableCKDatabaseOperation *)&v10 _setUpOperation:v4];
  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"recordZoneIDs"])
  {
    [v4 setRecordZoneIDs:self->_recordZoneIDs];
  }

  if (self->_perRecordZoneCompletionBlock)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__WBSRetryableCKFetchRecordZonesOperation__setUpOperation___block_invoke;
    v7[3] = &unk_1E7FC9FF0;
    objc_copyWeak(&v8, &location);
    [v4 setPerRecordZoneCompletionBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__WBSRetryableCKFetchRecordZonesOperation__setUpOperation___block_invoke_3;
  v5[3] = &unk_1E7FC9F00;
  objc_copyWeak(&v6, &location);
  [v4 setFetchRecordZonesCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __59__WBSRetryableCKFetchRecordZonesOperation__setUpOperation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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
    v13[2] = __59__WBSRetryableCKFetchRecordZonesOperation__setUpOperation___block_invoke_2;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 addOperationWithBlock:v13];
  }
}

void __59__WBSRetryableCKFetchRecordZonesOperation__setUpOperation___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 400));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6], a1[7]);
    }

    WeakRetained = v5;
  }
}

void __59__WBSRetryableCKFetchRecordZonesOperation__setUpOperation___block_invoke_3(uint64_t a1, void *a2, void *a3)
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
    v10[2] = __59__WBSRetryableCKFetchRecordZonesOperation__setUpOperation___block_invoke_4;
    v10[3] = &unk_1E7FB7258;
    v10[4] = WeakRetained;
    v11 = v6;
    v12 = v5;
    [v9 addOperationWithBlock:v10];
  }
}

void __59__WBSRetryableCKFetchRecordZonesOperation__setUpOperation___block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained && ([*(a1 + 32) _scheduleRetryIfNeededForError:*(a1 + 40)] & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 408));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, *(a1 + 32), WeakRetained, *(a1 + 48), *(a1 + 40));
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