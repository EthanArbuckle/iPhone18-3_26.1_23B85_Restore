@interface WBSRetryableCKFetchRecordsOperation
- (NSArray)desiredKeys;
- (NSArray)recordIDs;
- (id)_makeOperation;
- (id)fetchRecordsCompletionBlock;
- (id)perRecordCompletionBlock;
- (id)perRecordProgressBlock;
- (void)_setUpOperation:(id)operation;
- (void)setDesiredKeys:(id)keys;
- (void)setFetchRecordsCompletionBlock:(id)block;
- (void)setPerRecordCompletionBlock:(id)block;
- (void)setPerRecordProgressBlock:(id)block;
- (void)setRecordIDs:(id)ds;
@end

@implementation WBSRetryableCKFetchRecordsOperation

- (NSArray)recordIDs
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSArray *)self->_recordIDs copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [dsCopy copy];

  recordIDs = self->_recordIDs;
  self->_recordIDs = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordIDs"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (NSArray)desiredKeys
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSArray *)self->_desiredKeys copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setDesiredKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [keysCopy copy];

  desiredKeys = self->_desiredKeys;
  self->_desiredKeys = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"desiredKeys"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)perRecordProgressBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_perRecordProgressBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setPerRecordProgressBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  perRecordProgressBlock = self->_perRecordProgressBlock;
  self->_perRecordProgressBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"perRecordProgressBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)perRecordCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_perRecordCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setPerRecordCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  perRecordCompletionBlock = self->_perRecordCompletionBlock;
  self->_perRecordCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"perRecordCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)fetchRecordsCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_fetchRecordsCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setFetchRecordsCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  fetchRecordsCompletionBlock = self->_fetchRecordsCompletionBlock;
  self->_fetchRecordsCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"fetchRecordsCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)_makeOperation
{
  v2 = objc_alloc_init(MEMORY[0x1E695B940]);

  return v2;
}

- (void)_setUpOperation:(id)operation
{
  operationCopy = operation;
  v12.receiver = self;
  v12.super_class = WBSRetryableCKFetchRecordsOperation;
  [(WBSRetryableCKDatabaseOperation *)&v12 _setUpOperation:operationCopy];
  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"recordIDs"])
  {
    [operationCopy setRecordIDs:self->_recordIDs];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"desiredKeys"])
  {
    [operationCopy setDesiredKeys:self->_desiredKeys];
  }

  if (self->_perRecordProgressBlock)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke;
    v9[3] = &unk_1E7FC9EB0;
    objc_copyWeak(&v10, &location);
    [operationCopy setPerRecordProgressBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  if (self->_perRecordCompletionBlock)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_3;
    v7[3] = &unk_1E7FC9ED8;
    objc_copyWeak(&v8, &location);
    [operationCopy setPerRecordCompletionBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_5;
  v5[3] = &unk_1E7FC9F00;
  objc_copyWeak(&v6, &location);
  [operationCopy setFetchRecordsCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 33);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_2;
    v9[3] = &unk_1E7FC9E88;
    v9[4] = WeakRetained;
    v10 = v5;
    v11 = a3;
    [v8 addOperationWithBlock:v9];
  }
}

void __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 408));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, *(a1 + 40), *(a1 + 48));
    }

    WeakRetained = v5;
  }
}

void __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
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
    v13[2] = __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_4;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 addOperationWithBlock:v13];
  }
}

void __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_4(void *a1)
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

void __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_5(uint64_t a1, void *a2, void *a3)
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
    v10[2] = __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_6;
    v10[3] = &unk_1E7FB7258;
    v10[4] = WeakRetained;
    v11 = v6;
    v12 = v5;
    [v9 addOperationWithBlock:v10];
  }
}

void __55__WBSRetryableCKFetchRecordsOperation__setUpOperation___block_invoke_6(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained && ([*(a1 + 32) _scheduleRetryIfNeededForError:*(a1 + 40)] & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 424));
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