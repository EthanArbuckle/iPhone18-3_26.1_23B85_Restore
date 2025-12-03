@interface TGITextGenerationInferenceRunnerManager
- (TGITextGenerationInferenceRunnerManager)initWithWorkQueue:(id)queue;
- (TGITextGenerationInferenceRunnerManager)initWithWorkQueue:(id)queue inferenceQueue:(id)inferenceQueue dataSource:(id)source;
- (id).cxx_construct;
- (shared_ptr<TGITextGenerationInferenceModelInterface>)model;
- (void)cancelOperationWithExecutionUUID:(id)d;
- (void)enqueueOperation:(id)operation executionUUID:(id)d session:(id)session;
- (void)runInferenceRunners;
- (void)start;
@end

@implementation TGITextGenerationInferenceRunnerManager

- (TGITextGenerationInferenceRunnerManager)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v5 = dispatch_queue_create("com.apple.text-generation-inference", 0);
  v6 = dispatch_get_global_queue(33, 0);
  dispatch_set_target_queue(v5, v6);

  v7 = objc_alloc_init(TGITextGenerationInferenceDataSource);
  v8 = [(TGITextGenerationInferenceRunnerManager *)self initWithWorkQueue:queueCopy inferenceQueue:v5 dataSource:v7];

  return v8;
}

- (TGITextGenerationInferenceRunnerManager)initWithWorkQueue:(id)queue inferenceQueue:(id)inferenceQueue dataSource:(id)source
{
  queueCopy = queue;
  inferenceQueueCopy = inferenceQueue;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = TGITextGenerationInferenceRunnerManager;
  v12 = [(TGITextGenerationInferenceRunnerManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, source);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    inferenceRunnerByExecutionUUID = v13->_inferenceRunnerByExecutionUUID;
    v13->_inferenceRunnerByExecutionUUID = dictionary;

    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    scheduledInferenceRunnerByExecutionUUID = v13->_scheduledInferenceRunnerByExecutionUUID;
    v13->_scheduledInferenceRunnerByExecutionUUID = dictionary2;

    objc_storeStrong(&v13->_inferenceQueue, inferenceQueue);
    objc_storeStrong(&v13->_workQueue, queue);
  }

  return v13;
}

- (void)start
{
  workQueue = [(TGITextGenerationInferenceRunnerManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(TGITextGenerationInferenceRunnerManager *)self isStarted])
  {
    [(TGITextGenerationInferenceRunnerManager *)self setStarted:1];
    dataSource = [(TGITextGenerationInferenceRunnerManager *)self dataSource];
    defaultConfiguration = [dataSource defaultConfiguration];

    if (defaultConfiguration)
    {
      inferenceQueue = [(TGITextGenerationInferenceRunnerManager *)self inferenceQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __48__TGITextGenerationInferenceRunnerManager_start__block_invoke;
      v8[3] = &unk_279D9C660;
      v8[4] = self;
      v9 = defaultConfiguration;
      dispatch_async(inferenceQueue, v8);
    }

    else
    {
      v7 = _nlpDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(TGITextGenerationInferenceRunnerManager *)v7 start];
      }
    }
  }
}

void __48__TGITextGenerationInferenceRunnerManager_start__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 dataSource];
  v4 = v3;
  if (v3)
  {
    [v3 createModelWithConfiguration:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  [v2 setModel:&v5];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (void)enqueueOperation:(id)operation executionUUID:(id)d session:(id)session
{
  operationCopy = operation;
  dCopy = d;
  sessionCopy = session;
  workQueue = [(TGITextGenerationInferenceRunnerManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(TGITextGenerationInferenceRunnerManager *)self dataSource];
  inferenceQueue = [(TGITextGenerationInferenceRunnerManager *)self inferenceQueue];
  v13 = [dataSource createInferenceRunnerWithQueue:inferenceQueue executionUUID:dCopy operation:operationCopy session:sessionCopy];

  inferenceRunnerByExecutionUUID = [(TGITextGenerationInferenceRunnerManager *)self inferenceRunnerByExecutionUUID];
  v15 = [inferenceRunnerByExecutionUUID count];

  inferenceRunnerByExecutionUUID2 = [(TGITextGenerationInferenceRunnerManager *)self inferenceRunnerByExecutionUUID];
  [inferenceRunnerByExecutionUUID2 setObject:v13 forKeyedSubscript:dCopy];

  if (!v15)
  {
    [(TGITextGenerationInferenceRunnerManager *)self runInferenceRunners];
  }
}

- (void)runInferenceRunners
{
  workQueue = [(TGITextGenerationInferenceRunnerManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  inferenceRunnerByExecutionUUID = [(TGITextGenerationInferenceRunnerManager *)self inferenceRunnerByExecutionUUID];
  v5 = [inferenceRunnerByExecutionUUID count];

  if (v5)
  {
    inferenceRunnerByExecutionUUID2 = [(TGITextGenerationInferenceRunnerManager *)self inferenceRunnerByExecutionUUID];
    allValues = [inferenceRunnerByExecutionUUID2 allValues];
    v8 = [allValues copy];

    inferenceRunnerByExecutionUUID3 = [(TGITextGenerationInferenceRunnerManager *)self inferenceRunnerByExecutionUUID];
    v10 = [inferenceRunnerByExecutionUUID3 copy];
    [(TGITextGenerationInferenceRunnerManager *)self setScheduledInferenceRunnerByExecutionUUID:v10];

    inferenceRunnerByExecutionUUID4 = [(TGITextGenerationInferenceRunnerManager *)self inferenceRunnerByExecutionUUID];
    [inferenceRunnerByExecutionUUID4 removeAllObjects];

    inferenceQueue = [(TGITextGenerationInferenceRunnerManager *)self inferenceQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__TGITextGenerationInferenceRunnerManager_runInferenceRunners__block_invoke;
    v15[3] = &unk_279D9C660;
    v16 = v8;
    selfCopy = self;
    v13 = v8;
    dispatch_async(inferenceQueue, v15);
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];

    [(TGITextGenerationInferenceRunnerManager *)self setScheduledInferenceRunnerByExecutionUUID:v14];
  }
}

void __62__TGITextGenerationInferenceRunnerManager_runInferenceRunners__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = *(a1 + 40);
        if (v7)
        {
          [v7 model];
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        [v6 setModel:&v11];
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        [v6 run];
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v8 = [*(a1 + 40) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TGITextGenerationInferenceRunnerManager_runInferenceRunners__block_invoke_2;
  block[3] = &unk_279D9C638;
  block[4] = *(a1 + 40);
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelOperationWithExecutionUUID:(id)d
{
  dCopy = d;
  workQueue = [(TGITextGenerationInferenceRunnerManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  inferenceRunnerByExecutionUUID = [(TGITextGenerationInferenceRunnerManager *)self inferenceRunnerByExecutionUUID];
  v7 = [inferenceRunnerByExecutionUUID objectForKeyedSubscript:dCopy];

  if (v7)
  {
    inferenceRunnerByExecutionUUID2 = [(TGITextGenerationInferenceRunnerManager *)self inferenceRunnerByExecutionUUID];
    [inferenceRunnerByExecutionUUID2 setObject:0 forKeyedSubscript:dCopy];

LABEL_4:
    [v7 cancel];
    goto LABEL_5;
  }

  scheduledInferenceRunnerByExecutionUUID = [(TGITextGenerationInferenceRunnerManager *)self scheduledInferenceRunnerByExecutionUUID];
  v7 = [scheduledInferenceRunnerByExecutionUUID objectForKeyedSubscript:dCopy];

  if (v7)
  {
    goto LABEL_4;
  }

  v10 = _nlpDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(TGITextGenerationInferenceRunnerManager *)dCopy cancelOperationWithExecutionUUID:v10];
  }

  v7 = 0;
LABEL_5:
}

- (shared_ptr<TGITextGenerationInferenceModelInterface>)model
{
  objc_copyCppObjectAtomic(v2, &self->_model, __copy_helper_atomic_property__0);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (void)cancelOperationWithExecutionUUID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26D3C1000, a2, OS_LOG_TYPE_ERROR, "Cannot cancel, operation with uuid not found: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end