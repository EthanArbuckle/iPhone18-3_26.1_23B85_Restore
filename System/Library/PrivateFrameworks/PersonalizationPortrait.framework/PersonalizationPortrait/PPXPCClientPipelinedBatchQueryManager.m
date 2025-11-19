@interface PPXPCClientPipelinedBatchQueryManager
+ (void)assertBatch:(id)a3 forQueryName:(id)a4 hasExpectedContainedType:(Class)a5;
- (BOOL)syncExecuteQueryWithName:(id)a3 error:(id *)a4 queryInitializer:(id)a5 handleBatch:(id)a6;
- (PPXPCClientPipelinedBatchQueryManager)initWithName:(id)a3;
- (void)cancelPendingQueriesWithError:(id)a3;
- (void)handleReplyWithName:(id)a3 batch:(id)a4 isLast:(BOOL)a5 error:(id)a6 queryId:(unint64_t)a7 completion:(id)a8;
@end

@implementation PPXPCClientPipelinedBatchQueryManager

- (void)cancelPendingQueriesWithError:(id)a3
{
  v4 = a3;
  v5 = self->_queryContexts;
  objc_sync_enter(v5);
  queryContexts = self->_queryContexts;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PPXPCClientPipelinedBatchQueryManager_cancelPendingQueriesWithError___block_invoke;
  v8[3] = &unk_1E77F6ED8;
  v7 = v4;
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

- (void)handleReplyWithName:(id)a3 batch:(id)a4 isLast:(BOOL)a5 error:(id)a6 queryId:(unint64_t)a7 completion:(id)a8
{
  v37 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = self->_queryContexts;
  objc_sync_enter(v18);
  queryContexts = self->_queryContexts;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a7];
  v21 = [(NSMutableDictionary *)queryContexts objectForKeyedSubscript:v20];

  objc_sync_exit(v18);
  if (v21)
  {
    v22 = [v21 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__PPXPCClientPipelinedBatchQueryManager_handleReplyWithName_batch_isLast_error_queryId_completion___block_invoke;
    block[3] = &unk_1E77F6E88;
    v28 = v15;
    v29 = v21;
    v32 = a5;
    v30 = v16;
    v31 = v17;
    dispatch_async(v22, block);
  }

  else
  {
    v23 = atomic_load(&self->_queryId);
    v24 = pp_xpc_client_log_handle();
    v25 = v24;
    if (v23 <= a7)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = v14;
        v35 = 2048;
        v36 = a7;
        _os_log_error_impl(&dword_1A7FD3000, v25, OS_LOG_TYPE_ERROR, "Received batch reply of type %@ for unknown queryId %llu.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v34 = v14;
      v35 = 2048;
      v36 = a7;
      _os_log_debug_impl(&dword_1A7FD3000, v25, OS_LOG_TYPE_DEBUG, "Received batch reply of type %@ for old queryId %llu.", buf, 0x16u);
    }

    (*(v17 + 2))(v17, 1);
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

- (BOOL)syncExecuteQueryWithName:(id)a3 error:(id *)a4 queryInitializer:(id)a5 handleBatch:(id)a6
{
  v24 = a3;
  v9 = a5;
  v10 = a6;
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
  [v13 setHandleBatch:v10];
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
  v9[2](v9, add);
  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v18 = self->_queryContexts;
  objc_sync_enter(v18);
  v19 = self->_queryContexts;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:add];
  [(NSMutableDictionary *)v19 setObject:0 forKeyedSubscript:v20];

  objc_sync_exit(v18);
  if (a4)
  {
    *a4 = v30[5];
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

- (PPXPCClientPipelinedBatchQueryManager)initWithName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PPXPCClientSupport.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"name"}];
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

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-completion", v5];
    v11 = [v10 UTF8String];
    if (!v11)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:v7 file:@"PPXPCClientSupport.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"utf8Name"}];
    }

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = v7->_queue;
    v7->_queue = v13;
  }

  return v7;
}

+ (void)assertBatch:(id)a3 forQueryName:(id)a4 hasExpectedContainedType:(Class)a5
{
  v12 = a3;
  v8 = a4;
  if ([v12 count])
  {
    v9 = [v12 objectAtIndexedSubscript:0];
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"PPXPCClientSupport.m" lineNumber:272 description:{@"Received incorrect batch type for query named %@", v8}];
    }
  }
}

@end