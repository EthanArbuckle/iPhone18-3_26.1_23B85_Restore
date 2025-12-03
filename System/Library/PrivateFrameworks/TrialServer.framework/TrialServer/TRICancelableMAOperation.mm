@interface TRICancelableMAOperation
- (BOOL)isCanceled;
- (TRICancelableMAOperation)init;
- (void)addSemaphore:(id)semaphore;
- (void)setCurrentAsset:(id)asset;
@end

@implementation TRICancelableMAOperation

- (TRICancelableMAOperation)init
{
  v10.receiver = self;
  v10.super_class = TRICancelableMAOperation;
  v2 = [(TRICancelableMAOperation *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    *(v3 + 8) = 0;
    v4 = objc_opt_new();
    v5 = *(v3 + 16);
    *(v3 + 16) = v4;

    *(v3 + 24) = 0;
    v6 = *(v3 + 32);
    *(v3 + 32) = 0;

    v7 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    lock = v2->_lock;
    v2->_lock = v7;
  }

  return v2;
}

- (void)addSemaphore:(id)semaphore
{
  semaphoreCopy = semaphore;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__TRICancelableMAOperation_addSemaphore___block_invoke;
  v7[3] = &unk_279DE2ED0;
  v8 = semaphoreCopy;
  v6 = semaphoreCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

intptr_t __41__TRICancelableMAOperation_addSemaphore___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    return dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    return [*(a2 + 16) addObject:*(a1 + 32)];
  }
}

- (BOOL)isCanceled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__TRICancelableMAOperation_isCanceled__block_invoke;
  v5[3] = &unk_279DE2EF8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__TRICancelableMAOperation_cancel__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = v2;
  if ((v2[24] & 1) == 0)
  {
    v2[24] = 1;
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 8))
      {
        v5 = @"due to deferral";
      }

      else
      {
        v5 = &stru_287FA0430;
      }

      *buf = 138543362;
      v22 = v5;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "MA asset download activity was cancelled %{public}@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(v3 + 2);
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dispatch_semaphore_signal(*(*(&v16 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [*(v3 + 2) removeAllObjects];
    v11 = objc_opt_new();
    v12 = [*(v3 + 4) assetSelector];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __34__TRICancelableMAOperation_cancel__block_invoke_489;
    v14[3] = &unk_279DE25E8;
    v15 = v3;
    [v11 cancelActivityForSelector:v12 completion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __34__TRICancelableMAOperation_cancel__block_invoke_489(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TRILogCategory_Server();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(*(a1 + 32) + 32) assetSelector];
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Upon fetch operation being cancelled, failed to cancel activity for MAAutoAsset %{public}@: %{public}@", &v9, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 32) assetSelector];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Upon fetch operation being cancelled, cancelled activity for MAAutoAsset: %{public}@", &v9, 0xCu);
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentAsset:(id)asset
{
  assetCopy = asset;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__TRICancelableMAOperation_setCurrentAsset___block_invoke;
  v7[3] = &unk_279DE2ED0;
  v8 = assetCopy;
  v6 = assetCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

@end