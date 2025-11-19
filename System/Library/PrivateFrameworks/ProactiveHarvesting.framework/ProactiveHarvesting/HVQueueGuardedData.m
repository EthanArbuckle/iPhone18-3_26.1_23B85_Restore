@interface HVQueueGuardedData
- (char)initWithBiomeStream:(__int16)a3 memoryLimit:(void *)a4 memoryStorageFlushCallback:;
- (void)dealloc;
@end

@implementation HVQueueGuardedData

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_memoryStorage count])
  {
    v3 = hv_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v7 = [(NSMutableArray *)self->_memoryStorage count];
      memoryStorage = self->_memoryStorage;
      *buf = 134218243;
      v11 = v7;
      v12 = 2113;
      v13 = memoryStorage;
      _os_log_fault_impl(&dword_2321EC000, v3, OS_LOG_TYPE_FAULT, "deallocating HVQueueGuardedData with %tu enqueued items (%{private}@) in memory!", buf, 0x16u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  if (!self->_memoryStorageTransaction)
  {
    memoryStorageSigtermSource = self->_memoryStorageSigtermSource;
    if (memoryStorageSigtermSource)
    {
      dispatch_resume(memoryStorageSigtermSource);
    }

    memoryStorageIdleSource = self->_memoryStorageIdleSource;
    if (memoryStorageIdleSource)
    {
      dispatch_resume(memoryStorageIdleSource);
    }
  }

  v9.receiver = self;
  v9.super_class = HVQueueGuardedData;
  [(HVQueueGuardedData *)&v9 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (char)initWithBiomeStream:(__int16)a3 memoryLimit:(void *)a4 memoryStorageFlushCallback:
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = HVQueueGuardedData;
    a1 = objc_msgSendSuper2(&v24, sel_init);
    if (a1)
    {
      v10 = objc_opt_new();
      v11 = *(a1 + 5);
      *(a1 + 5) = v10;

      v12 = objc_opt_new();
      v13 = *(a1 + 6);
      *(a1 + 6) = v12;

      *(a1 + 5) = a3;
      objc_storeStrong(a1 + 10, a2);
      v14 = objc_opt_new();
      v15 = *(a1 + 12);
      *(a1 + 12) = v14;

      a1[8] = 0;
      *(a1 + 12) = 0;
      *(a1 + 28) = 0;
      *(a1 + 20) = 0;
      if (v8)
      {
        if (!v9)
        {
          v23 = [MEMORY[0x277CCA890] currentHandler];
          [v23 handleFailureInMethod:sel_initWithBiomeStream_memoryLimit_memoryStorageFlushCallback_ object:a1 file:@"HVQueue.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"memoryStorageFlushCallback != nil"}];
        }

        if (initWithBiomeStream_memoryLimit_memoryStorageFlushCallback___pasOnceToken2 != -1)
        {
          dispatch_once(&initWithBiomeStream_memoryLimit_memoryStorageFlushCallback___pasOnceToken2, &__block_literal_global_1022);
        }

        v16 = initWithBiomeStream_memoryLimit_memoryStorageFlushCallback___pasExprOnceResult;
        v17 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, v16);
        v18 = *(a1 + 8);
        *(a1 + 8) = v17;

        v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v16);
        v20 = *(a1 + 9);
        *(a1 + 9) = v19;

        v21 = [v9 copy];
        dispatch_source_set_event_handler(*(a1 + 8), v21);
        dispatch_source_set_event_handler(*(a1 + 9), v21);
        dispatch_activate(*(a1 + 8));
        dispatch_activate(*(a1 + 9));
        dispatch_suspend(*(a1 + 8));
        dispatch_suspend(*(a1 + 9));

        v9 = v21;
      }
    }
  }

  return a1;
}

void __81__HVQueueGuardedData_initWithBiomeStream_memoryLimit_memoryStorageFlushCallback___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("HVQueueNotify", v1);

  v3 = initWithBiomeStream_memoryLimit_memoryStorageFlushCallback___pasExprOnceResult;
  initWithBiomeStream_memoryLimit_memoryStorageFlushCallback___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

@end