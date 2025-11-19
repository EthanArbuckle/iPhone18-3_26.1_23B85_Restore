@interface PPLocationReadOnlyClient
+ (id)sharedInstance;
- (BOOL)locationRecordsWithQuery:(id)a3 error:(id *)a4 handleBatch:(id)a5;
- (BOOL)rankedLocationsWithQuery:(id)a3 error:(id *)a4 handleBatch:(id)a5;
- (PPLocationReadOnlyClient)init;
- (void)_unblockPendingQueries;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPLocationReadOnlyClient

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PPLocationReadOnlyClient *)self _remoteObjectProxy];
  [v8 registerFeedback:v7 completion:v6];
}

- (BOOL)locationRecordsWithQuery:(id)a3 error:(id *)a4 handleBatch:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_class();
  queryManager = self->_queryManager;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__PPLocationReadOnlyClient_locationRecordsWithQuery_error_handleBatch___block_invoke;
  v19[3] = &unk_1E77F7998;
  v19[4] = self;
  v20 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__PPLocationReadOnlyClient_locationRecordsWithQuery_error_handleBatch___block_invoke_2;
  v15[3] = &unk_1E77F79C0;
  v17 = v9;
  v18 = v10;
  v16 = @"locationRecordsWithQuery";
  v12 = v9;
  v13 = v8;
  LOBYTE(a4) = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"locationRecordsWithQuery" error:a4 queryInitializer:v19 handleBatch:v15];

  return a4;
}

void __71__PPLocationReadOnlyClient_locationRecordsWithQuery_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 locationRecordsWithQuery:*(a1 + 40) queryId:a2];
}

void __71__PPLocationReadOnlyClient_locationRecordsWithQuery_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)rankedLocationsWithQuery:(id)a3 error:(id *)a4 handleBatch:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_class();
  queryManager = self->_queryManager;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__PPLocationReadOnlyClient_rankedLocationsWithQuery_error_handleBatch___block_invoke;
  v19[3] = &unk_1E77F7998;
  v19[4] = self;
  v20 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__PPLocationReadOnlyClient_rankedLocationsWithQuery_error_handleBatch___block_invoke_2;
  v15[3] = &unk_1E77F79C0;
  v17 = v9;
  v18 = v10;
  v16 = @"rankedLocationsWithQuery";
  v12 = v9;
  v13 = v8;
  LOBYTE(a4) = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"rankedLocationsWithQuery" error:a4 queryInitializer:v19 handleBatch:v15];

  return a4;
}

void __71__PPLocationReadOnlyClient_rankedLocationsWithQuery_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 rankedLocationsWithQuery:*(a1 + 40) queryId:a2];
}

void __71__PPLocationReadOnlyClient_rankedLocationsWithQuery_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (void)_unblockPendingQueries
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"connection to %@ was unexpectedly terminated", @"com.apple.proactive.PersonalizationPortrait.Location.readOnly"];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = *MEMORY[0x1E696A798];
  v9 = *MEMORY[0x1E696A588];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:v5 code:5 userInfo:v6];

  [(PPXPCClientPipelinedBatchQueryManager *)self->_queryManager cancelPendingQueriesWithError:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (PPLocationReadOnlyClient)init
{
  v28.receiver = self;
  v28.super_class = PPLocationReadOnlyClient;
  v2 = [(PPLocationReadOnlyClient *)&v28 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B56178];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B50820];
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    [v4 setClasses:v8 forSelector:sel_locationBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v9);
    [v4 setClasses:v12 forSelector:sel_locationRecordBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    objc_initWeak(&location, v2);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __32__PPLocationReadOnlyClient_init__block_invoke;
    v25[3] = &unk_1E77F7970;
    objc_copyWeak(&v26, &location);
    v13 = MEMORY[0x1AC568040](v25);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __32__PPLocationReadOnlyClient_init__block_invoke_83;
    v23[3] = &unk_1E77F7970;
    objc_copyWeak(&v24, &location);
    v14 = MEMORY[0x1AC568040](v23);
    v15 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Location.readOnly" allowedServerInterface:v3 allowedClientInterface:v4 clientExportedObject:v2 interruptionHandler:v13 invalidationHandler:v14];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v15;

    v17 = [PPXPCClientPipelinedBatchQueryManager alloc];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [(PPXPCClientPipelinedBatchQueryManager *)v17 initWithName:v19];
    queryManager = v2->_queryManager;
    v2->_queryManager = v20;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__PPLocationReadOnlyClient_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Location.readOnly";
    _os_log_error_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __32__PPLocationReadOnlyClient_init__block_invoke_83(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Location.readOnly";
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PPLocationReadOnlyClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken8_6582 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken8_6582, block);
  }

  v2 = sharedInstance__pasExprOnceResult_6583;

  return v2;
}

void __42__PPLocationReadOnlyClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_6583;
  sharedInstance__pasExprOnceResult_6583 = v4;

  objc_autoreleasePoolPop(v2);
}

@end