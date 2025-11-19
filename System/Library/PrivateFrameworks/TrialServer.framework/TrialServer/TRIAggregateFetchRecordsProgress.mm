@interface TRIAggregateFetchRecordsProgress
- (TRIAggregateFetchRecordsProgress)initWithProgressBlock:(id)a3;
- (TRIAggregateFetchRecordsProgress)initWithProgressBlockForTesting:(id)a3 guardedData:(id)a4 lock:(id)a5 dispatchQueue:(id)a6;
- (double)_fractionCompletedWithGuardedData:(id)a3;
- (double)fractionCompleted;
- (void)_issueCurrentProgressWithGuardedData:(id)a3;
- (void)registerMAAsset:(id)a3 withExpectedSize:(unint64_t)a4;
- (void)registerRecordId:(id)a3 withExpectedSize:(unint64_t)a4;
- (void)setComplete;
- (void)setFractionCompleted:(double)a3 forMAAsset:(id)a4;
- (void)setFractionCompleted:(double)a3 forRecordId:(id)a4;
- (void)unregisterMAAsset:(id)a3;
- (void)unregisterRecordId:(id)a3;
@end

@implementation TRIAggregateFetchRecordsProgress

- (TRIAggregateFetchRecordsProgress)initWithProgressBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TRIAggregateFetchRecordsProgressGuardedData);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  perCKRecordProgress = v5->perCKRecordProgress;
  v5->perCKRecordProgress = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  perMARecordProgress = v5->perMARecordProgress;
  v5->perMARecordProgress = v8;

  v5->expectedTotalBytes = 0;
  v5->actualBytesTransferred = 0;
  v10 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v5];
  v11 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.aggregate-progress" qosClass:17];
  v12 = [(TRIAggregateFetchRecordsProgress *)self initWithProgressBlockForTesting:v4 guardedData:v5 lock:v10 dispatchQueue:v11];

  return v12;
}

- (TRIAggregateFetchRecordsProgress)initWithProgressBlockForTesting:(id)a3 guardedData:(id)a4 lock:(id)a5 dispatchQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = TRIAggregateFetchRecordsProgress;
  v14 = [(TRIAggregateFetchRecordsProgress *)&v18 init];
  if (v14)
  {
    v15 = MEMORY[0x2743948D0](v10);
    progress = v14->_progress;
    v14->_progress = v15;

    objc_storeStrong(&v14->_lock, a5);
    objc_storeStrong(&v14->_queue, a6);
    [(TRIAggregateFetchRecordsProgress *)v14 _issueCurrentProgressWithGuardedData:v11];
  }

  return v14;
}

- (double)_fractionCompletedWithGuardedData:(id)a3
{
  v3 = *(a3 + 3);
  if (v3)
  {
    v4 = *(a3 + 4) / v3;
  }

  else
  {
    v4 = 0.0;
  }

  return fmin(v4, 1.0);
}

- (void)_issueCurrentProgressWithGuardedData:(id)a3
{
  [(TRIAggregateFetchRecordsProgress *)self _fractionCompletedWithGuardedData:a3];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__TRIAggregateFetchRecordsProgress__issueCurrentProgressWithGuardedData___block_invoke;
  v6[3] = &unk_279DDEE68;
  v6[4] = self;
  v6[5] = v5;
  dispatch_async(queue, v6);
}

- (void)registerRecordId:(id)a3 withExpectedSize:(unint64_t)a4
{
  v6 = a3;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__TRIAggregateFetchRecordsProgress_registerRecordId_withExpectedSize___block_invoke;
  v9[3] = &unk_279DDEE90;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __70__TRIAggregateFetchRecordsProgress_registerRecordId_withExpectedSize___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[1] objectForKeyedSubscript:*(a1 + 32)];

  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Registering duplicate progress for CKRecordID %@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = [[TRICKRecordProgress alloc] initWithSize:*(a1 + 48) transferred:0];
    [v3[1] setObject:v6 forKeyedSubscript:*(a1 + 32)];

    v3[3] = v3[3] + *(a1 + 48);
    [*(a1 + 40) _issueCurrentProgressWithGuardedData:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unregisterRecordId:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__TRIAggregateFetchRecordsProgress_unregisterRecordId___block_invoke;
  v7[3] = &unk_279DDEEB8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __55__TRIAggregateFetchRecordsProgress_unregisterRecordId___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5[1] objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5[3] = v5[3] - [v3 size];
    v5[4] = v5[4] - [v4 transferred];
    [v5[1] setObject:0 forKeyedSubscript:*(a1 + 32)];
    [*(a1 + 40) _issueCurrentProgressWithGuardedData:v5];
  }
}

- (void)setFractionCompleted:(double)a3 forRecordId:(id)a4
{
  v6 = a4;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__TRIAggregateFetchRecordsProgress_setFractionCompleted_forRecordId___block_invoke;
  v9[3] = &unk_279DDEE90;
  v12 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __69__TRIAggregateFetchRecordsProgress_setFractionCompleted_forRecordId___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[1] objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 copyWithReplacementTransferred:{(*(a1 + 48) * objc_msgSend(v4, "size"))}];
    [v3[1] setObject:v6 forKeyedSubscript:*(a1 + 32)];
    v3[4] = v3[4] - [v5 transferred];
    v3[4] = v3[4] + [v6 transferred];
    [*(a1 + 40) _issueCurrentProgressWithGuardedData:v3];
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to set progress for unexpected CKRecordID %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerMAAsset:(id)a3 withExpectedSize:(unint64_t)a4
{
  v6 = a3;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__TRIAggregateFetchRecordsProgress_registerMAAsset_withExpectedSize___block_invoke;
  v9[3] = &unk_279DDEE90;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __69__TRIAggregateFetchRecordsProgress_registerMAAsset_withExpectedSize___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[2] objectForKeyedSubscript:*(a1 + 32)];

  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Registering duplicate progress for MA asset ID %@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = [[TRICKRecordProgress alloc] initWithSize:*(a1 + 48) transferred:0];
    [v3[2] setObject:v6 forKeyedSubscript:*(a1 + 32)];

    v3[3] = v3[3] + *(a1 + 48);
    [*(a1 + 40) _issueCurrentProgressWithGuardedData:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unregisterMAAsset:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__TRIAggregateFetchRecordsProgress_unregisterMAAsset___block_invoke;
  v7[3] = &unk_279DDEEB8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __54__TRIAggregateFetchRecordsProgress_unregisterMAAsset___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5[2] objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5[3] = v5[3] - [v3 size];
    v5[4] = v5[4] - [v4 transferred];
    [v5[2] setObject:0 forKeyedSubscript:*(a1 + 32)];
    [*(a1 + 40) _issueCurrentProgressWithGuardedData:v5];
  }
}

- (void)setFractionCompleted:(double)a3 forMAAsset:(id)a4
{
  v6 = a4;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__TRIAggregateFetchRecordsProgress_setFractionCompleted_forMAAsset___block_invoke;
  v9[3] = &unk_279DDEE90;
  v12 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __68__TRIAggregateFetchRecordsProgress_setFractionCompleted_forMAAsset___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[2] objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 copyWithReplacementTransferred:{(*(a1 + 48) * objc_msgSend(v4, "size"))}];
    [v3[2] setObject:v6 forKeyedSubscript:*(a1 + 32)];
    v3[4] = v3[4] - [v5 transferred];
    v3[4] = v3[4] + [v6 transferred];
    [*(a1 + 40) _issueCurrentProgressWithGuardedData:v3];
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to set progress for unexpected MA asset ID %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setComplete
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TRIAggregateFetchRecordsProgress_setComplete__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (double)fractionCompleted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__TRIAggregateFetchRecordsProgress_fractionCompleted__block_invoke;
  v5[3] = &unk_279DDEF08;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__TRIAggregateFetchRecordsProgress_fractionCompleted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _fractionCompletedWithGuardedData:a2];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

@end