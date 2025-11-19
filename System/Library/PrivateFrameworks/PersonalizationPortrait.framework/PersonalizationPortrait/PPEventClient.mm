@interface PPEventClient
+ (id)sharedInstance;
- (BOOL)eventHighlightsFrom:(id)a3 to:(id)a4 options:(int)a5 error:(id *)a6 handleBatch:(id)a7;
- (BOOL)eventNameRecordsForClient:(id)a3 error:(id *)a4 handleBatch:(id)a5;
- (BOOL)interactionSummaryMetricsWithError:(id *)a3 handleBatch:(id)a4;
- (BOOL)resolveEventNameRecordChanges:(id)a3 client:(id)a4 error:(id *)a5 handleBatch:(id)a6;
- (BOOL)scoredEventsWithQuery:(id)a3 error:(id *)a4 handleBatch:(id)a5;
- (BOOL)sendRTCLogsWithError:(id *)a3;
- (PPEventClient)init;
- (void)_unblockPendingQueries;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPEventClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PPEventClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken12 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken12, block);
  }

  v2 = sharedInstance__pasExprOnceResult_442;

  return v2;
}

void __31__PPEventClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_442;
  sharedInstance__pasExprOnceResult_442 = v4;

  objc_autoreleasePoolPop(v2);
}

- (PPEventClient)init
{
  v40.receiver = self;
  v40.super_class = PPEventClient;
  v2 = [(PPEventClient *)&v40 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55DB8];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B48D90];
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    [v4 setClasses:v8 forSelector:sel_eventNameRecordBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v9);
    [v4 setClasses:v12 forSelector:sel_eventNameRecordChangesBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 initWithObjects:{v15, v16, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v13);
    [v4 setClasses:v17 forSelector:sel_eventHighlightsBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v18 = objc_autoreleasePoolPush();
    v19 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v19 initWithObjects:{v20, v21, v22, v23, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    [v4 setClasses:v24 forSelector:sel_scoredEventsBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    objc_initWeak(&location, v2);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __21__PPEventClient_init__block_invoke;
    v37[3] = &unk_1E77F7970;
    objc_copyWeak(&v38, &location);
    v25 = MEMORY[0x1AC568040](v37);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __21__PPEventClient_init__block_invoke_111;
    v35[3] = &unk_1E77F7970;
    objc_copyWeak(&v36, &location);
    v26 = MEMORY[0x1AC568040](v35);
    v27 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Event" allowedServerInterface:v3 allowedClientInterface:v4 clientExportedObject:v2 interruptionHandler:v25 invalidationHandler:v26];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v27;

    v29 = [PPXPCClientPipelinedBatchQueryManager alloc];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [(PPXPCClientPipelinedBatchQueryManager *)v29 initWithName:v31];
    queryManager = v2->_queryManager;
    v2->_queryManager = v32;

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PPEventClient *)self _remoteObjectProxy];
  [v8 registerFeedback:v7 completion:v6];
}

- (BOOL)sendRTCLogsWithError:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__407;
  v26 = __Block_byref_object_dispose__408;
  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __38__PPEventClient_sendRTCLogsWithError___block_invoke;
  v21[3] = &unk_1E77F7B20;
  v21[4] = &v22;
  v5 = MEMORY[0x1AC568040](v21, a2);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__407;
  v15 = __Block_byref_object_dispose__408;
  v16 = 0;
  v6 = [(PPXPCClientHelper *)self->_clientHelper synchronousRemoteObjectProxyWithErrorHandler:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__PPEventClient_sendRTCLogsWithError___block_invoke_2;
  v10[3] = &unk_1E77F7B48;
  v10[4] = &v17;
  v10[5] = &v11;
  [v6 sendRTCLogsWithWithCompletion:v10];

  v7 = v23[5];
  if (v7)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a3)
  {
    v7 = v12[5];
LABEL_6:
    *a3 = v7;
  }

LABEL_7:
  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v22, 8);

  return v8;
}

void __38__PPEventClient_sendRTCLogsWithError___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (BOOL)interactionSummaryMetricsWithError:(id *)a3 handleBatch:(id)a4
{
  v6 = a4;
  v7 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_DEBUG, "interactionSummaryMetricsWithError called", buf, 2u);
  }

  v8 = objc_opt_class();
  queryManager = self->_queryManager;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PPEventClient_interactionSummaryMetricsWithError_handleBatch___block_invoke;
  v17[3] = &unk_1E77F60A0;
  v17[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PPEventClient_interactionSummaryMetricsWithError_handleBatch___block_invoke_2;
  v13[3] = &unk_1E77F79C0;
  v15 = v6;
  v16 = v8;
  v14 = @"interactionSummaryMetrics";
  v10 = v6;
  v11 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"interactionSummaryMetrics" error:a3 queryInitializer:v17 handleBatch:v13];

  return v11;
}

void __64__PPEventClient_interactionSummaryMetricsWithError_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _remoteObjectProxy];
  [v3 interactionSummaryMetricsWithQueryId:a2];
}

void __64__PPEventClient_interactionSummaryMetricsWithError_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)scoredEventsWithQuery:(id)a3 error:(id *)a4 handleBatch:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "scoredEvents called", buf, 2u);
  }

  v11 = objc_opt_class();
  queryManager = self->_queryManager;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __57__PPEventClient_scoredEventsWithQuery_error_handleBatch___block_invoke;
  v21[3] = &unk_1E77F7998;
  v21[4] = self;
  v22 = v8;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__PPEventClient_scoredEventsWithQuery_error_handleBatch___block_invoke_2;
  v17[3] = &unk_1E77F79C0;
  v19 = v9;
  v20 = v11;
  v18 = @"scoredEvents";
  v13 = v9;
  v14 = v8;
  v15 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"scoredEvents" error:a4 queryInitializer:v21 handleBatch:v17];

  return v15;
}

void __57__PPEventClient_scoredEventsWithQuery_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 scoredEventsWithQuery:*(a1 + 40) queryId:a2];
}

void __57__PPEventClient_scoredEventsWithQuery_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)eventHighlightsFrom:(id)a3 to:(id)a4 options:(int)a5 error:(id *)a6 handleBatch:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEBUG, "eventHighlights called", buf, 2u);
  }

  v16 = objc_opt_class();
  queryManager = self->_queryManager;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__PPEventClient_eventHighlightsFrom_to_options_error_handleBatch___block_invoke;
  v27[3] = &unk_1E77F6078;
  v27[4] = self;
  v28 = v12;
  v29 = v13;
  v30 = a5;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__PPEventClient_eventHighlightsFrom_to_options_error_handleBatch___block_invoke_2;
  v23[3] = &unk_1E77F79C0;
  v25 = v14;
  v26 = v16;
  v24 = @"eventHighlights";
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"eventHighlights" error:a6 queryInitializer:v27 handleBatch:v23];

  return v21;
}

void __66__PPEventClient_eventHighlightsFrom_to_options_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 eventHighlightsFrom:*(a1 + 40) to:*(a1 + 48) options:*(a1 + 56) queryId:a2];
}

void __66__PPEventClient_eventHighlightsFrom_to_options_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)resolveEventNameRecordChanges:(id)a3 client:(id)a4 error:(id *)a5 handleBatch:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v11;
    _os_log_debug_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_DEBUG, "eventNameRecordChangesForClient:%@ called", buf, 0xCu);
  }

  v14 = objc_opt_class();
  queryManager = self->_queryManager;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __72__PPEventClient_resolveEventNameRecordChanges_client_error_handleBatch___block_invoke;
  v26[3] = &unk_1E77F7948;
  v26[4] = self;
  v27 = v10;
  v28 = v11;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__PPEventClient_resolveEventNameRecordChanges_client_error_handleBatch___block_invoke_2;
  v22[3] = &unk_1E77F79C0;
  v24 = v12;
  v25 = v14;
  v23 = @"eventNameRecordChangesWithError";
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"eventNameRecordChangesWithError" error:a5 queryInitializer:v26 handleBatch:v22];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __72__PPEventClient_resolveEventNameRecordChanges_client_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 resolveEventNameRecordChanges:*(a1 + 40) client:*(a1 + 48) queryId:a2];
}

void __72__PPEventClient_resolveEventNameRecordChanges_client_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)eventNameRecordsForClient:(id)a3 error:(id *)a4 handleBatch:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "eventNameRecordsForClient:%@ called", buf, 0xCu);
  }

  v11 = objc_opt_class();
  queryManager = self->_queryManager;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__PPEventClient_eventNameRecordsForClient_error_handleBatch___block_invoke;
  v22[3] = &unk_1E77F7998;
  v22[4] = self;
  v23 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__PPEventClient_eventNameRecordsForClient_error_handleBatch___block_invoke_2;
  v18[3] = &unk_1E77F79C0;
  v20 = v9;
  v21 = v11;
  v19 = @"eventNameRecordsWithError";
  v13 = v9;
  v14 = v8;
  v15 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"eventNameRecordsWithError" error:a4 queryInitializer:v22 handleBatch:v18];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __61__PPEventClient_eventNameRecordsForClient_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 eventNameRecordsForClient:*(a1 + 40) queryId:a2];
}

void __61__PPEventClient_eventNameRecordsForClient_error_handleBatch___block_invoke_2(void *a1, void *a2)
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
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"connection to %@ was unexpectedly terminated", @"com.apple.proactive.PersonalizationPortrait.Event"];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = *MEMORY[0x1E696A798];
  v9 = *MEMORY[0x1E696A588];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:v5 code:5 userInfo:v6];

  [(PPXPCClientPipelinedBatchQueryManager *)self->_queryManager cancelPendingQueriesWithError:v7];
  v8 = *MEMORY[0x1E69E9840];
}

void __21__PPEventClient_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Event";
    _os_log_error_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __21__PPEventClient_init__block_invoke_111(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Event";
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

@end