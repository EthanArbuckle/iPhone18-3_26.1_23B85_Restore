@interface PPXPCClientPipelinedBatchQueryManager
+ (void)assertBatch:(id)batch forQueryName:(id)name hasExpectedContainedType:(Class)type;
- (BOOL)syncExecuteQueryWithName:(id)name error:(id *)error queryInitializer:(id)initializer handleBatch:(id)batch;
- (PPXPCClientPipelinedBatchQueryManager)initWithName:(id)name;
- (void)cancelPendingQueriesWithError:(id)error;
- (void)handleReplyWithName:(id)name batch:(id)batch isLast:(BOOL)last error:(id)error queryId:(unint64_t)id completion:(id)completion;
@end

@implementation PPXPCClientPipelinedBatchQueryManager

- (void)cancelPendingQueriesWithError:(id)error
{
  errorCopy = error;
  v5 = self->_queryContexts;
  objc_sync_enter(v5);
  queryContexts = self->_queryContexts;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PPXPCClientPipelinedBatchQueryManager_cancelPendingQueriesWithError___block_invoke;
  v8[3] = &unk_1E77F6ED8;
  v7 = errorCopy;
  v9 = v7;
  [(NSMutableDictionary *)queryContexts enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

void __71__PPXPCClientPipelinedBatchQueryManager_cancelPendingQueriesWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PPXPCClientPipelinedBatchQueryManager_cancelPendingQueriesWithError___block_invoke_2;
  v7[3] = &unk_1E77F6EB0;
  v8 = v4;
  v9 = *(a1 + 32);
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleReplyWithName:(id)name batch:(id)batch isLast:(BOOL)last error:(id)error queryId:(unint64_t)id completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  batchCopy = batch;
  errorCopy = error;
  completionCopy = completion;
  v18 = self->_queryContexts;
  objc_sync_enter(v18);
  queryContexts = self->_queryContexts;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
  v21 = [(NSMutableDictionary *)queryContexts objectForKeyedSubscript:v20];

  objc_sync_exit(v18);
  if (v21)
  {
    queue = [v21 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__PPXPCClientPipelinedBatchQueryManager_handleReplyWithName_batch_isLast_error_queryId_completion___block_invoke;
    block[3] = &unk_1E77F6E88;
    v28 = batchCopy;
    v29 = v21;
    lastCopy = last;
    v30 = errorCopy;
    v31 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v23 = atomic_load(&self->_queryId);
    v24 = pp_xpc_client_log_handle();
    v25 = v24;
    if (v23 <= id)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = nameCopy;
        v35 = 2048;
        idCopy2 = id;
        _os_log_error_impl(&dword_1A7FD3000, v25, OS_LOG_TYPE_ERROR, "Received batch reply of type %@ for unknown queryId %llu.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = nameCopy;
      v35 = 2048;
      idCopy2 = id;
      _os_log_debug_impl(&dword_1A7FD3000, v25, OS_LOG_TYPE_DEBUG, "Received batch reply of type %@ for old queryId %llu.", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __99__PPXPCClientPipelinedBatchQueryManager_handleReplyWithName_batch_isLast_error_queryId_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 handleBatch];
    v4[2](v4, *(a1 + 32), *(a1 + 40) + 8);

    if (*(a1 + 64) != 1)
    {
      goto LABEL_6;
    }

    v2 = *(a1 + 40);
    v5 = 1;
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 48);
    v5 = 0;
  }

  [v2 finalizeCallWithSuccess:v5 error:v6];
LABEL_6:
  v7 = *(*(a1 + 40) + 8);
  v8 = *(*(a1 + 56) + 16);

  return v8();
}

- (BOOL)syncExecuteQueryWithName:(id)name error:(id *)error queryInitializer:(id)initializer handleBatch:(id)batch
{
  nameCopy = name;
  initializerCopy = initializer;
  batchCopy = batch;
  add = atomic_fetch_add(&self->_queryId, 1uLL);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4757;
  v33 = __Block_byref_object_dispose__4758;
  v34 = 0;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_4759);
  v13 = objc_opt_new();
  [v13 setQueue:self->_queue];
  [v13 setHandleBatch:batchCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __101__PPXPCClientPipelinedBatchQueryManager_syncExecuteQueryWithName_error_queryInitializer_handleBatch___block_invoke_2;
  v25[3] = &unk_1E77F6E60;
  v27 = &v35;
  v28 = &v29;
  v25[4] = self;
  v14 = v12;
  v26 = v14;
  [v13 setFinalizeCall:v25];
  v15 = self->_queryContexts;
  objc_sync_enter(v15);
  queryContexts = self->_queryContexts;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:add];
  [(NSMutableDictionary *)queryContexts setObject:v13 forKeyedSubscript:v17];

  objc_sync_exit(v15);
  initializerCopy[2](initializerCopy, add);
  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v18 = self->_queryContexts;
  objc_sync_enter(v18);
  v19 = self->_queryContexts;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:add];
  [(NSMutableDictionary *)v19 setObject:0 forKeyedSubscript:v20];

  objc_sync_exit(v18);
  if (error)
  {
    *error = v30[5];
  }

  v21 = *(v36 + 24);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v21;
}

void __101__PPXPCClientPipelinedBatchQueryManager_syncExecuteQueryWithName_error_queryInitializer_handleBatch___block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v5 = obj;
  dispatch_async(*(*(a1 + 32) + 24), *(a1 + 40));
}

- (PPXPCClientPipelinedBatchQueryManager)initWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPXPCClientSupport.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v18.receiver = self;
  v18.super_class = PPXPCClientPipelinedBatchQueryManager;
  v6 = [(PPXPCClientPipelinedBatchQueryManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    atomic_store(0, &v6->_queryId);
    v8 = objc_opt_new();
    queryContexts = v7->_queryContexts;
    v7->_queryContexts = v8;

    nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-completion", nameCopy];
    uTF8String = [nameCopy UTF8String];
    if (!uTF8String)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v7 file:@"PPXPCClientSupport.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"utf8Name"}];
    }

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    queue = v7->_queue;
    v7->_queue = v13;
  }

  return v7;
}

+ (void)assertBatch:(id)batch forQueryName:(id)name hasExpectedContainedType:(Class)type
{
  batchCopy = batch;
  nameCopy = name;
  if ([batchCopy count])
  {
    v9 = [batchCopy objectAtIndexedSubscript:0];
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PPXPCClientSupport.m" lineNumber:272 description:{@"Received incorrect batch type for query named %@", nameCopy}];
    }
  }
}

@end