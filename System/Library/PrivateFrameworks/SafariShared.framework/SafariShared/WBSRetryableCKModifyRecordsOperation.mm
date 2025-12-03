@interface WBSRetryableCKModifyRecordsOperation
- (BOOL)atomic;
- (NSArray)recordIDsToDelete;
- (NSArray)recordsToSave;
- (NSData)clientChangeTokenData;
- (id)_makeOperation;
- (id)modifyRecordsCompletionBlock;
- (id)perRecordDeleteBlock;
- (id)perRecordProgressBlock;
- (id)perRecordSaveBlock;
- (int64_t)savePolicy;
- (void)_setUpOperation:(id)operation;
- (void)setAtomic:(BOOL)atomic;
- (void)setClientChangeTokenData:(id)data;
- (void)setModifyRecordsCompletionBlock:(id)block;
- (void)setPerRecordDeleteBlock:(id)block;
- (void)setPerRecordProgressBlock:(id)block;
- (void)setPerRecordSaveBlock:(id)block;
- (void)setRecordIDsToDelete:(id)delete;
- (void)setRecordsToSave:(id)save;
- (void)setSavePolicy:(int64_t)policy;
@end

@implementation WBSRetryableCKModifyRecordsOperation

- (NSArray)recordsToSave
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSArray *)self->_recordsToSave copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordsToSave:(id)save
{
  saveCopy = save;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [saveCopy copy];

  recordsToSave = self->_recordsToSave;
  self->_recordsToSave = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordsToSave"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (NSArray)recordIDsToDelete
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSArray *)self->_recordIDsToDelete copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setRecordIDsToDelete:(id)delete
{
  deleteCopy = delete;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [deleteCopy copy];

  recordIDsToDelete = self->_recordIDsToDelete;
  self->_recordIDsToDelete = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"recordIDsToDelete"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (int64_t)savePolicy
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  savePolicy = self->_savePolicy;
  os_unfair_lock_unlock(&self->super.super._internalLock);
  return savePolicy;
}

- (void)setSavePolicy:(int64_t)policy
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  self->_savePolicy = policy;
  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"savePolicy"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (NSData)clientChangeTokenData
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSData *)self->_clientChangeTokenData copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setClientChangeTokenData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [dataCopy copy];

  clientChangeTokenData = self->_clientChangeTokenData;
  self->_clientChangeTokenData = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"clientChangeTokenData"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (BOOL)atomic
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  atomic = self->_atomic;
  os_unfair_lock_unlock(&self->super.super._internalLock);
  return atomic;
}

- (void)setAtomic:(BOOL)atomic
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  self->_atomic = atomic;
  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"atomic"];

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

- (id)perRecordSaveBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_perRecordSaveBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setPerRecordSaveBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  perRecordSaveBlock = self->_perRecordSaveBlock;
  self->_perRecordSaveBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"perRecordSaveBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)perRecordDeleteBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_perRecordDeleteBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setPerRecordDeleteBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  perRecordDeleteBlock = self->_perRecordDeleteBlock;
  self->_perRecordDeleteBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"perRecordDeleteBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)modifyRecordsCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_modifyRecordsCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setModifyRecordsCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [blockCopy copy];

  modifyRecordsCompletionBlock = self->_modifyRecordsCompletionBlock;
  self->_modifyRecordsCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"modifyRecordsCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)_makeOperation
{
  v2 = objc_alloc_init(MEMORY[0x1E695B9C0]);

  return v2;
}

- (void)_setUpOperation:(id)operation
{
  operationCopy = operation;
  v14.receiver = self;
  v14.super_class = WBSRetryableCKModifyRecordsOperation;
  [(WBSRetryableCKDatabaseOperation *)&v14 _setUpOperation:operationCopy];
  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"recordsToSave"])
  {
    [operationCopy setRecordsToSave:self->_recordsToSave];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"recordIDsToDelete"])
  {
    [operationCopy setRecordIDsToDelete:self->_recordIDsToDelete];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"savePolicy"])
  {
    [operationCopy setSavePolicy:self->_savePolicy];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"clientChangeTokenData"])
  {
    [operationCopy setClientChangeTokenData:self->_clientChangeTokenData];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"atomic"])
  {
    [operationCopy setAtomic:self->_atomic];
  }

  if (self->_perRecordProgressBlock)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke;
    v11[3] = &unk_1E7FCA090;
    objc_copyWeak(&v12, &location);
    [operationCopy setPerRecordProgressBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  if (self->_perRecordSaveBlock)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_3;
    v9[3] = &unk_1E7FC9F28;
    objc_copyWeak(&v10, &location);
    [operationCopy setPerRecordSaveBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  if (self->_perRecordDeleteBlock)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_5;
    v7[3] = &unk_1E7FCA0B8;
    objc_copyWeak(&v8, &location);
    [operationCopy setPerRecordDeleteBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_7;
  v5[3] = &unk_1E7FCA0E0;
  objc_copyWeak(&v6, &location);
  [operationCopy setModifyRecordsCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 33);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_2;
    v9[3] = &unk_1E7FC9E88;
    v9[4] = WeakRetained;
    v10 = v5;
    v11 = a3;
    [v8 addOperationWithBlock:v9];
  }
}

void __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_2(uint64_t a1)
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
      (v4)[2](v4, v5, *(a1 + 40), *(a1 + 48));
    }

    WeakRetained = v5;
  }
}

void __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
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
    v13[2] = __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_4;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 addOperationWithBlock:v13];
  }
}

void __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 440));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6], a1[7]);
    }

    WeakRetained = v5;
  }
}

void __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_5(uint64_t a1, void *a2, void *a3)
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
    v10[2] = __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_6;
    v10[3] = &unk_1E7FB7258;
    v10[4] = WeakRetained;
    v11 = v5;
    v12 = v6;
    [v9 addOperationWithBlock:v10];
  }
}

void __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_6(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 448));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6]);
    }

    WeakRetained = v5;
  }
}

void __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
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
    v13[2] = __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_8;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v9;
    v15 = v7;
    v16 = v8;
    [v12 addOperationWithBlock:v13];
  }
}

void __56__WBSRetryableCKModifyRecordsOperation__setUpOperation___block_invoke_8(uint64_t a1)
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