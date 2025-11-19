@interface PPConnectionsClient
+ (id)sharedInstance;
- (BOOL)recentLocationDonationsSinceDate:(id)a3 client:(id)a4 error:(id *)a5 handleBatch:(id)a6;
- (BOOL)recentLocationsForConsumer:(unint64_t)a3 criteria:(id)a4 limit:(unint64_t)a5 explanationSet:(id)a6 client:(id)a7 error:(id *)a8 handleBatch:(id)a9;
- (PPConnectionsClient)init;
- (void)_unblockPendingQueries;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPConnectionsClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PPConnectionsClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken6_5193 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken6_5193, block);
  }

  v2 = sharedInstance__pasExprOnceResult_5194;

  return v2;
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PPConnectionsClient *)self _remoteObjectProxy];
  [v8 registerFeedback:v7 completion:v6];
}

- (BOOL)recentLocationsForConsumer:(unint64_t)a3 criteria:(id)a4 limit:(unint64_t)a5 explanationSet:(id)a6 client:(id)a7 error:(id *)a8 handleBatch:(id)a9
{
  v45 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v40 = a3;
    v41 = 2112;
    v42 = v15;
    v43 = 2048;
    v44 = a5;
    _os_log_debug_impl(&dword_1A7FD3000, v19, OS_LOG_TYPE_DEBUG, "recentLocationsForConsumer: %lu criteria: %@ limit: %lu called", buf, 0x20u);
  }

  v20 = objc_opt_class();
  queryManager = self->_queryManager;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __105__PPConnectionsClient_recentLocationsForConsumer_criteria_limit_explanationSet_client_error_handleBatch___block_invoke;
  v33[3] = &unk_1E77F6F00;
  v33[4] = self;
  v34 = v15;
  v37 = a3;
  v38 = a5;
  v35 = v16;
  v36 = v17;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __105__PPConnectionsClient_recentLocationsForConsumer_criteria_limit_explanationSet_client_error_handleBatch___block_invoke_2;
  v29[3] = &unk_1E77F79C0;
  v31 = v18;
  v32 = v20;
  v30 = @"recentLocationsForConsumer";
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"recentLocationsForConsumer" error:a8 queryInitializer:v33 handleBatch:v29];

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

void __105__PPConnectionsClient_recentLocationsForConsumer_criteria_limit_explanationSet_client_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 recentLocationsForConsumer:*(a1 + 64) criteria:*(a1 + 40) limit:*(a1 + 72) explanationSet:*(a1 + 48) client:*(a1 + 56) queryId:a2];
}

void __105__PPConnectionsClient_recentLocationsForConsumer_criteria_limit_explanationSet_client_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)recentLocationDonationsSinceDate:(id)a3 client:(id)a4 error:(id *)a5 handleBatch:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    _os_log_debug_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_DEBUG, "recentLocationDonationsSinceDate: %@ client: %@ called", buf, 0x16u);
  }

  v14 = objc_opt_class();
  queryManager = self->_queryManager;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__PPConnectionsClient_recentLocationDonationsSinceDate_client_error_handleBatch___block_invoke;
  v26[3] = &unk_1E77F7948;
  v26[4] = self;
  v27 = v10;
  v28 = v11;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __81__PPConnectionsClient_recentLocationDonationsSinceDate_client_error_handleBatch___block_invoke_2;
  v22[3] = &unk_1E77F79C0;
  v24 = v12;
  v25 = v14;
  v23 = @"recentLocationDonationsSinceDate";
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"recentLocationDonationsSinceDate" error:a5 queryInitializer:v26 handleBatch:v22];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __81__PPConnectionsClient_recentLocationDonationsSinceDate_client_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 recentLocationDonationsSinceDate:*(a1 + 40) client:*(a1 + 48) queryId:a2];
}

void __81__PPConnectionsClient_recentLocationDonationsSinceDate_client_error_handleBatch___block_invoke_2(void *a1, void *a2)
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
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"connection to %@ was unexpectedly terminated", @"com.apple.proactive.PersonalizationPortrait.Connections"];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = *MEMORY[0x1E696A798];
  v9 = *MEMORY[0x1E696A588];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:v5 code:5 userInfo:v6];

  [(PPXPCClientPipelinedBatchQueryManager *)self->_queryManager cancelPendingQueriesWithError:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (PPConnectionsClient)init
{
  v24.receiver = self;
  v24.super_class = PPConnectionsClient;
  v2 = [(PPConnectionsClient *)&v24 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55FF8];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B4F3D0];
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    [v4 setClasses:v8 forSelector:sel_recentLocationsBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    objc_initWeak(&location, v2);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __27__PPConnectionsClient_init__block_invoke;
    v21[3] = &unk_1E77F7970;
    objc_copyWeak(&v22, &location);
    v9 = MEMORY[0x1AC568040](v21);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __27__PPConnectionsClient_init__block_invoke_82;
    v19[3] = &unk_1E77F7970;
    objc_copyWeak(&v20, &location);
    v10 = MEMORY[0x1AC568040](v19);
    v11 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Connections" allowedServerInterface:v3 allowedClientInterface:v4 clientExportedObject:v2 interruptionHandler:v9 invalidationHandler:v10];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v11;

    v13 = [PPXPCClientPipelinedBatchQueryManager alloc];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [(PPXPCClientPipelinedBatchQueryManager *)v13 initWithName:v15];
    queryManager = v2->_queryManager;
    v2->_queryManager = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__PPConnectionsClient_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Connections";
    _os_log_error_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __27__PPConnectionsClient_init__block_invoke_82(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Connections";
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __37__PPConnectionsClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_5194;
  sharedInstance__pasExprOnceResult_5194 = v4;

  objc_autoreleasePoolPop(v2);
}

@end