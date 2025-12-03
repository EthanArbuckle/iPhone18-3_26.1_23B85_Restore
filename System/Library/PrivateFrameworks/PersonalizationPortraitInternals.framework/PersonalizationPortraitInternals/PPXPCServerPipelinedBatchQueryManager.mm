@interface PPXPCServerPipelinedBatchQueryManager
- (PPXPCServerPipelinedBatchQueryManager)initWithPipelineDepth:(int64_t)depth pipelinedCallTimeoutNsec:(unint64_t)nsec maxConcurrentRequestsPerConnection:(unint64_t)connection;
- (void)_unblockQueryReplyThrottleSemaphore:(id)semaphore;
- (void)runConcurrentlyWithRequestThrottle:(id)throttle;
- (void)runSynchronouslyWithRequestThrottle:(id)throttle;
- (void)sendBatchedResultForQueryWithName:(id)name queryId:(unint64_t)id batchGenerator:(id)generator sendError:(id)error sendBatch:(id)batch;
- (void)unblockPendingQueries;
- (void)waitForBlockWithRequestThrottle:(id)throttle;
@end

@implementation PPXPCServerPipelinedBatchQueryManager

- (void)sendBatchedResultForQueryWithName:(id)name queryId:(unint64_t)id batchGenerator:(id)generator sendError:(id)error sendBatch:(id)batch
{
  v60[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  generatorCopy = generator;
  errorCopy = error;
  batchCopy = batch;
  v14 = self->_queryReplyThrottleSemaphores;
  objc_sync_enter(v14);
  queryReplyThrottleSemaphores = self->_queryReplyThrottleSemaphores;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:id];
  v17 = [(NSMutableDictionary *)queryReplyThrottleSemaphores objectForKeyedSubscript:v16];

  if (!v17)
  {
    v23 = dispatch_semaphore_create(self->_pipelineDepth);
    v24 = self->_queryReplyThrottleSemaphores;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:id];
    [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:v25];

    objc_sync_exit(v14);
    v49 = 0;
    *&v56 = 0;
    *(&v56 + 1) = &v56;
    v57 = 0x2020000000;
    v58 = 0;
    v41 = *MEMORY[0x277CCA5B8];
    v42 = *MEMORY[0x277CCA470];
    while (1)
    {
      if (v49)
      {
LABEL_23:
        [(PPXPCServerPipelinedBatchQueryManager *)self _unblockQueryReplyThrottleSemaphore:v23];
        v37 = self->_queryReplyThrottleSemaphores;
        objc_sync_enter(v37);
        v38 = self->_queryReplyThrottleSemaphores;
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:id];
        [(NSMutableDictionary *)v38 setObject:0 forKeyedSubscript:v39];

        objc_sync_exit(v37);
        _Block_object_dispose(&v56, 8);
        v14 = v23;
        goto LABEL_24;
      }

      v26 = objc_autoreleasePoolPush();
      v48 = 0;
      v27 = atomic_load((*(&v56 + 1) + 24));
      if (v27)
      {
        v49 = 1;
        v28 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v28 = generatorCopy[2](generatorCopy, &v49, &v48);
        if (!v28)
        {
          errorCopy[2](errorCopy, v48);
          v35 = 0;
          goto LABEL_20;
        }
      }

      if ([MEMORY[0x277D425A0] waitForSemaphore:v23 timeoutSeconds:self->_pipelinedCallTimeoutNsec / 1000000000.0] == 1)
      {
        v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout while handling pipelined results for query %@ with queryId %llu", nameCopy, id];
        v30 = pp_xpc_server_log_handle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v29;
          _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v31 = objc_alloc(MEMORY[0x277CCA9B8]);
        v54 = v42;
        v55 = v29;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v33 = [v31 initWithDomain:v41 code:5 userInfo:v32];

        errorCopy[2](errorCopy, v33);
      }

      else
      {
        v34 = atomic_load(&self->_isInterrupted);
        if ((v34 & 1) == 0)
        {
          v36 = v49;
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __118__PPXPCServerPipelinedBatchQueryManager_sendBatchedResultForQueryWithName_queryId_batchGenerator_sendError_sendBatch___block_invoke;
          v45[3] = &unk_2789755F0;
          v47 = &v56;
          v46 = v23;
          batchCopy[2](batchCopy, v28, v36, v45);
          v35 = 1;
          v29 = v46;
          goto LABEL_19;
        }

        v29 = pp_xpc_server_log_handle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v51 = nameCopy;
          v52 = 2048;
          idCopy = id;
          _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "Prematurely terminating pending query %@ with queryId %llu due to connection failure.", buf, 0x16u);
        }
      }

      v35 = 0;
LABEL_19:

LABEL_20:
      objc_autoreleasePoolPop(v26);
      if ((v35 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"query %@ can't be started because queryId %llu is already in use", nameCopy, id];
  v19 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v56) = 138412290;
    *(&v56 + 4) = v18;
    _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "%@", &v56, 0xCu);
  }

  v20 = objc_alloc(MEMORY[0x277CCA9B8]);
  v59 = *MEMORY[0x277CCA470];
  v60[0] = v18;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
  v22 = [v20 initWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v21];

  errorCopy[2](errorCopy, v22);
  objc_sync_exit(v14);
LABEL_24:

  v40 = *MEMORY[0x277D85DE8];
}

intptr_t __118__PPXPCServerPipelinedBatchQueryManager_sendBatchedResultForQueryWithName_queryId_batchGenerator_sendError_sendBatch___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)unblockPendingQueries
{
  atomic_store(1u, &self->_isInterrupted);
  v3 = self->_queryReplyThrottleSemaphores;
  objc_sync_enter(v3);
  queryReplyThrottleSemaphores = self->_queryReplyThrottleSemaphores;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__PPXPCServerPipelinedBatchQueryManager_unblockPendingQueries__block_invoke;
  v5[3] = &unk_2789755C8;
  v5[4] = self;
  [(NSMutableDictionary *)queryReplyThrottleSemaphores enumerateKeysAndObjectsUsingBlock:v5];
  objc_sync_exit(v3);
}

- (void)waitForBlockWithRequestThrottle:(id)throttle
{
  throttleCopy = throttle;
  v5 = os_transaction_create();
  v6 = blockNotifyQueue();
  dispatch_sync(v6, &__block_literal_global_35_14993);

  dispatch_semaphore_wait(self->_concurrentRequestSem, 0xFFFFFFFFFFFFFFFFLL);
  v7 = blockNotifyQueue();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__PPXPCServerPipelinedBatchQueryManager_waitForBlockWithRequestThrottle___block_invoke_2;
  v9[3] = &unk_2789797E0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_block_notify(throttleCopy, v7, v9);
}

id __73__PPXPCServerPipelinedBatchQueryManager_waitForBlockWithRequestThrottle___block_invoke_2(uint64_t a1)
{
  dispatch_semaphore_signal(*(*(a1 + 32) + 24));
  v2 = *(a1 + 40);
  return objc_opt_self();
}

- (void)runConcurrentlyWithRequestThrottle:(id)throttle
{
  throttleCopy = throttle;
  v5 = os_transaction_create();
  v6 = blockNotifyQueue();
  dispatch_sync(v6, &__block_literal_global_32);

  dispatch_semaphore_wait(self->_concurrentRequestSem, 0xFFFFFFFFFFFFFFFFLL);
  v7 = qos_class_self();
  v8 = dispatch_get_global_queue(v7, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__PPXPCServerPipelinedBatchQueryManager_runConcurrentlyWithRequestThrottle___block_invoke_2;
  block[3] = &unk_278979060;
  v12 = v5;
  v13 = throttleCopy;
  block[4] = self;
  v9 = v5;
  v10 = throttleCopy;
  dispatch_async(v8, block);
}

id __76__PPXPCServerPipelinedBatchQueryManager_runConcurrentlyWithRequestThrottle___block_invoke_2(void *a1)
{
  (*(a1[6] + 16))();
  dispatch_semaphore_signal(*(a1[4] + 24));
  v2 = a1[5];
  return objc_opt_self();
}

- (void)runSynchronouslyWithRequestThrottle:(id)throttle
{
  throttleCopy = throttle;
  v5 = blockNotifyQueue();
  dispatch_sync(v5, &__block_literal_global_14999);

  dispatch_semaphore_wait(self->_concurrentRequestSem, 0xFFFFFFFFFFFFFFFFLL);
  throttleCopy[2](throttleCopy);

  concurrentRequestSem = self->_concurrentRequestSem;

  dispatch_semaphore_signal(concurrentRequestSem);
}

- (void)_unblockQueryReplyThrottleSemaphore:(id)semaphore
{
  if (self->_pipelineDepth)
  {
    v5 = 0;
    do
    {
      dispatch_semaphore_signal(semaphore);
      ++v5;
    }

    while (v5 < self->_pipelineDepth);
  }
}

- (PPXPCServerPipelinedBatchQueryManager)initWithPipelineDepth:(int64_t)depth pipelinedCallTimeoutNsec:(unint64_t)nsec maxConcurrentRequestsPerConnection:(unint64_t)connection
{
  v15.receiver = self;
  v15.super_class = PPXPCServerPipelinedBatchQueryManager;
  v8 = [(PPXPCServerPipelinedBatchQueryManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_pipelineDepth = depth;
    v8->_pipelinedCallTimeoutNsec = nsec;
    v10 = dispatch_semaphore_create(connection);
    concurrentRequestSem = v9->_concurrentRequestSem;
    v9->_concurrentRequestSem = v10;

    v12 = objc_opt_new();
    queryReplyThrottleSemaphores = v9->_queryReplyThrottleSemaphores;
    v9->_queryReplyThrottleSemaphores = v12;

    atomic_store(0, &v9->_isInterrupted);
  }

  return v9;
}

@end