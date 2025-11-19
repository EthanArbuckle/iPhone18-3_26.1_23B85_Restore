@interface PPTemporalClusterClient
+ (id)sharedInstance;
- (BOOL)rankedTemporalClustersForStartDate:(id)a3 endDate:(id)a4 error:(id *)a5 handleBatch:(id)a6;
- (PPTemporalClusterClient)init;
- (void)_unblockPendingQueries;
@end

@implementation PPTemporalClusterClient

- (BOOL)rankedTemporalClustersForStartDate:(id)a3 endDate:(id)a4 error:(id *)a5 handleBatch:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = pp_temporal_clusters_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_DEBUG, "rankedTemporalClustersForStartDate called", buf, 2u);
  }

  v14 = objc_opt_class();
  queryManager = self->_queryManager;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __88__PPTemporalClusterClient_rankedTemporalClustersForStartDate_endDate_error_handleBatch___block_invoke;
  v25[3] = &unk_1E77F7948;
  v25[4] = self;
  v26 = v10;
  v27 = v11;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __88__PPTemporalClusterClient_rankedTemporalClustersForStartDate_endDate_error_handleBatch___block_invoke_2;
  v21[3] = &unk_1E77F79C0;
  v23 = v12;
  v24 = v14;
  v22 = @"rankedTemporalClustersForStartDate";
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"rankedTemporalClustersForStartDate" error:a5 queryInitializer:v25 handleBatch:v21];

  return v19;
}

void __88__PPTemporalClusterClient_rankedTemporalClustersForStartDate_endDate_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 rankedTemporalClustersForStartDate:*(a1 + 40) endDate:*(a1 + 48) queryId:a2];
}

void __88__PPTemporalClusterClient_rankedTemporalClustersForStartDate_endDate_error_handleBatch___block_invoke_2(void *a1, void *a2)
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
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"connection to %@ was unexpectedly terminated", @"com.apple.proactive.PersonalizationPortrait.TemporalCluster"];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = *MEMORY[0x1E696A798];
  v9 = *MEMORY[0x1E696A588];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:v5 code:5 userInfo:v6];

  [(PPXPCClientPipelinedBatchQueryManager *)self->_queryManager cancelPendingQueriesWithError:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (PPTemporalClusterClient)init
{
  v32.receiver = self;
  v32.super_class = PPTemporalClusterClient;
  v2 = [(PPTemporalClusterClient *)&v32 init];
  if (v2)
  {
    v26 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B56118];
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B50700];
    context = objc_autoreleasePoolPush();
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v24 = v8;
    v12 = v3;
    v13 = [v4 initWithObjects:{v5, v6, v7, v24, v9, v10, v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(context);
    [v3 setClasses:v13 forSelector:sel_rankedTemporalClusterBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    objc_initWeak(&location, v2);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __31__PPTemporalClusterClient_init__block_invoke;
    v29[3] = &unk_1E77F7970;
    objc_copyWeak(&v30, &location);
    v14 = MEMORY[0x1AC568040](v29);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __31__PPTemporalClusterClient_init__block_invoke_80;
    v27[3] = &unk_1E77F7970;
    objc_copyWeak(&v28, &location);
    v15 = MEMORY[0x1AC568040](v27);
    v16 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.TemporalCluster" allowedServerInterface:v26 allowedClientInterface:v12 clientExportedObject:v2 interruptionHandler:v14 invalidationHandler:v15];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v16;

    v18 = [PPXPCClientPipelinedBatchQueryManager alloc];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [(PPXPCClientPipelinedBatchQueryManager *)v18 initWithName:v20];
    queryManager = v2->_queryManager;
    v2->_queryManager = v21;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__PPTemporalClusterClient_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_temporal_clusters_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.TemporalCluster";
    _os_log_error_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __31__PPTemporalClusterClient_init__block_invoke_80(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_temporal_clusters_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.TemporalCluster";
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
  block[2] = __41__PPTemporalClusterClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken6_6508 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken6_6508, block);
  }

  v2 = sharedInstance__pasExprOnceResult_6509;

  return v2;
}

void __41__PPTemporalClusterClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_6509;
  sharedInstance__pasExprOnceResult_6509 = v4;

  objc_autoreleasePoolPop(v2);
}

@end