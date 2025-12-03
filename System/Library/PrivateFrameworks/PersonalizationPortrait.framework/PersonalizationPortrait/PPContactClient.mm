@interface PPContactClient
+ (id)sharedInstance;
- (BOOL)contactHandlesForSource:(id)source error:(id *)error handleBatch:(id)batch;
- (BOOL)contactHandlesForTopics:(id)topics error:(id *)error handleBatch:(id)batch;
- (BOOL)contactNameRecordChangesForClient:(id)client error:(id *)error handleBatch:(id)batch;
- (BOOL)contactNameRecordsForClient:(id)client error:(id *)error handleBatch:(id)batch;
- (BOOL)rankedContactsWithQuery:(id)query error:(id *)error handleBatch:(id)batch;
- (BOOL)upcomingRelevantContactsForQuery:(id)query error:(id *)error handleBatch:(id)batch;
- (PPContactClient)init;
- (void)_unblockPendingQueries;
- (void)contactNameRecordChangesForClient:(id)client completion:(id)completion;
- (void)feedbackDisambiguationResultWithChoicesIdentifiers:(id)identifiers chosenContactIdentifier:(id)identifier completion:(id)completion;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPContactClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PPContactClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken12_5123 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken12_5123, block);
  }

  v2 = sharedInstance__pasExprOnceResult_5124;

  return v2;
}

- (BOOL)contactNameRecordChangesForClient:(id)client error:(id *)error handleBatch:(id)batch
{
  v26 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  batchCopy = batch;
  v10 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = clientCopy;
    _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "contactNameRecordChangesForClient:%@ called", buf, 0xCu);
  }

  v11 = objc_opt_class();
  queryManager = self->_queryManager;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __71__PPContactClient_contactNameRecordChangesForClient_error_handleBatch___block_invoke;
  v22[3] = &unk_1E77F7998;
  v22[4] = self;
  v23 = clientCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__PPContactClient_contactNameRecordChangesForClient_error_handleBatch___block_invoke_2;
  v18[3] = &unk_1E77F79C0;
  v20 = batchCopy;
  v21 = v11;
  v19 = @"contactNameRecordChangesForClient";
  v13 = batchCopy;
  v14 = clientCopy;
  v15 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"contactNameRecordChangesForClient" error:error queryInitializer:v22 handleBatch:v18];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __71__PPContactClient_contactNameRecordChangesForClient_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 contactNameRecordChangesForClient:*(a1 + 40) queryId:a2];
}

void __71__PPContactClient_contactNameRecordChangesForClient_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (void)contactNameRecordChangesForClient:(id)client completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  completionCopy = completion;
  v8 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = clientCopy;
    _os_log_debug_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEBUG, "contactNameRecordChangesForClient:%@ called", &v11, 0xCu);
  }

  _remoteObjectProxy = [(PPContactClient *)self _remoteObjectProxy];
  [_remoteObjectProxy contactNameRecordChangesForClient:clientCopy completion:completionCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)contactNameRecordsForClient:(id)client error:(id *)error handleBatch:(id)batch
{
  v26 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  batchCopy = batch;
  v10 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = clientCopy;
    _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "contactNameRecordsForClient:%@ called", buf, 0xCu);
  }

  v11 = objc_opt_class();
  queryManager = self->_queryManager;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__PPContactClient_contactNameRecordsForClient_error_handleBatch___block_invoke;
  v22[3] = &unk_1E77F7998;
  v22[4] = self;
  v23 = clientCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__PPContactClient_contactNameRecordsForClient_error_handleBatch___block_invoke_2;
  v18[3] = &unk_1E77F79C0;
  v20 = batchCopy;
  v21 = v11;
  v19 = @"contactNameRecordsWithError";
  v13 = batchCopy;
  v14 = clientCopy;
  v15 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"contactNameRecordsWithError" error:error queryInitializer:v22 handleBatch:v18];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __65__PPContactClient_contactNameRecordsForClient_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 contactNameRecordsForClient:*(a1 + 40) queryId:a2];
}

void __65__PPContactClient_contactNameRecordsForClient_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)upcomingRelevantContactsForQuery:(id)query error:(id *)error handleBatch:(id)batch
{
  queryCopy = query;
  batchCopy = batch;
  v10 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "upcomingRelevantContactsForQuery called", buf, 2u);
  }

  v11 = objc_opt_class();
  queryManager = self->_queryManager;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__PPContactClient_upcomingRelevantContactsForQuery_error_handleBatch___block_invoke;
  v21[3] = &unk_1E77F7998;
  v21[4] = self;
  v22 = queryCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__PPContactClient_upcomingRelevantContactsForQuery_error_handleBatch___block_invoke_2;
  v17[3] = &unk_1E77F79C0;
  v19 = batchCopy;
  v20 = v11;
  v18 = @"upcomingRelevantContactsForQuery";
  v13 = batchCopy;
  v14 = queryCopy;
  v15 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"upcomingRelevantContactsForQuery" error:error queryInitializer:v21 handleBatch:v17];

  return v15;
}

void __70__PPContactClient_upcomingRelevantContactsForQuery_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 upcomingRelevantContactsForQuery:*(a1 + 40) queryId:a2];
}

void __70__PPContactClient_upcomingRelevantContactsForQuery_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (void)feedbackDisambiguationResultWithChoicesIdentifiers:(id)identifiers chosenContactIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v11 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v11, OS_LOG_TYPE_DEBUG, "feedbackDisambiguationResultWithContactChoices called", v13, 2u);
  }

  _remoteObjectProxy = [(PPContactClient *)self _remoteObjectProxy];
  [_remoteObjectProxy feedbackDisambiguationResultWithChoicesIdentifiers:identifiersCopy chosenContactIdentifier:identifierCopy completion:completionCopy];
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  feedbackCopy = feedback;
  v9 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromSelector(a2);
    v13 = 138412290;
    v14 = v12;
    _os_log_debug_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_DEBUG, "%@ called", &v13, 0xCu);
  }

  _remoteObjectProxy = [(PPContactClient *)self _remoteObjectProxy];
  [_remoteObjectProxy registerFeedback:feedbackCopy completion:completionCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)contactHandlesForSource:(id)source error:(id *)error handleBatch:(id)batch
{
  sourceCopy = source;
  batchCopy = batch;
  v10 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "contactHandlesForSource called", buf, 2u);
  }

  v11 = objc_opt_class();
  queryManager = self->_queryManager;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__PPContactClient_contactHandlesForSource_error_handleBatch___block_invoke;
  v21[3] = &unk_1E77F7998;
  v21[4] = self;
  v22 = sourceCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__PPContactClient_contactHandlesForSource_error_handleBatch___block_invoke_2;
  v17[3] = &unk_1E77F79C0;
  v19 = batchCopy;
  v20 = v11;
  v18 = @"contactHandlesForSource";
  v13 = batchCopy;
  v14 = sourceCopy;
  v15 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"contactHandlesForSource" error:error queryInitializer:v21 handleBatch:v17];

  return v15;
}

void __61__PPContactClient_contactHandlesForSource_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 contactHandlesForSource:*(a1 + 40) queryId:a2];
}

void __61__PPContactClient_contactHandlesForSource_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)contactHandlesForTopics:(id)topics error:(id *)error handleBatch:(id)batch
{
  topicsCopy = topics;
  batchCopy = batch;
  v10 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "contactHandlesForTopics called", buf, 2u);
  }

  v11 = objc_opt_class();
  queryManager = self->_queryManager;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__PPContactClient_contactHandlesForTopics_error_handleBatch___block_invoke;
  v21[3] = &unk_1E77F7998;
  v21[4] = self;
  v22 = topicsCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__PPContactClient_contactHandlesForTopics_error_handleBatch___block_invoke_2;
  v17[3] = &unk_1E77F79C0;
  v19 = batchCopy;
  v20 = v11;
  v18 = @"contactHandlesForTopics";
  v13 = batchCopy;
  v14 = topicsCopy;
  v15 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"contactHandlesForTopics" error:error queryInitializer:v21 handleBatch:v17];

  return v15;
}

void __61__PPContactClient_contactHandlesForTopics_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 contactHandlesForTopics:*(a1 + 40) queryId:a2];
}

void __61__PPContactClient_contactHandlesForTopics_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)rankedContactsWithQuery:(id)query error:(id *)error handleBatch:(id)batch
{
  queryCopy = query;
  batchCopy = batch;
  v10 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "rankedContactsWithQuery called", buf, 2u);
  }

  v11 = objc_opt_class();
  queryManager = self->_queryManager;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__PPContactClient_rankedContactsWithQuery_error_handleBatch___block_invoke;
  v21[3] = &unk_1E77F7998;
  v21[4] = self;
  v22 = queryCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__PPContactClient_rankedContactsWithQuery_error_handleBatch___block_invoke_2;
  v17[3] = &unk_1E77F79C0;
  v19 = batchCopy;
  v20 = v11;
  v18 = @"rankedContactsWithQuery";
  v13 = batchCopy;
  v14 = queryCopy;
  v15 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"rankedContactsWithQuery" error:error queryInitializer:v21 handleBatch:v17];

  return v15;
}

void __61__PPContactClient_rankedContactsWithQuery_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 rankedContactsWithQuery:*(a1 + 40) queryId:a2];
}

void __61__PPContactClient_rankedContactsWithQuery_error_handleBatch___block_invoke_2(void *a1, void *a2)
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
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"connection to %@ was unexpectedly terminated", @"com.apple.proactive.PersonalizationPortrait.Contact"];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = *MEMORY[0x1E696A798];
  v9 = *MEMORY[0x1E696A588];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:v5 code:5 userInfo:v6];

  [(PPXPCClientPipelinedBatchQueryManager *)self->_queryManager cancelPendingQueriesWithError:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (PPContactClient)init
{
  v36.receiver = self;
  v36.super_class = PPContactClient;
  v2 = [(PPContactClient *)&v36 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55F98];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B4F198];
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    [v4 setClasses:v8 forSelector:sel_rankedContactsBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v9);
    [v4 setClasses:v12 forSelector:sel_upcomingRelevantContactsBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v15 = objc_opt_class();
    v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v13);
    [v4 setClasses:v16 forSelector:sel_contactNameRecordBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v17 = objc_autoreleasePoolPush();
    v18 = objc_alloc(MEMORY[0x1E695DFD8]);
    v19 = objc_opt_class();
    v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v17);
    [v4 setClasses:v20 forSelector:sel_contactNameRecordChangesBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    objc_initWeak(&location, v2);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __23__PPContactClient_init__block_invoke;
    v33[3] = &unk_1E77F7970;
    objc_copyWeak(&v34, &location);
    v21 = MEMORY[0x1AC568040](v33);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __23__PPContactClient_init__block_invoke_103;
    v31[3] = &unk_1E77F7970;
    objc_copyWeak(&v32, &location);
    v22 = MEMORY[0x1AC568040](v31);
    v23 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Contact" allowedServerInterface:v3 allowedClientInterface:v4 clientExportedObject:v2 interruptionHandler:v21 invalidationHandler:v22];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v23;

    v25 = [PPXPCClientPipelinedBatchQueryManager alloc];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [(PPXPCClientPipelinedBatchQueryManager *)v25 initWithName:v27];
    queryManager = v2->_queryManager;
    v2->_queryManager = v28;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __23__PPContactClient_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Contact";
    _os_log_error_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __23__PPContactClient_init__block_invoke_103(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Contact";
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __33__PPContactClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_5124;
  sharedInstance__pasExprOnceResult_5124 = v4;

  objc_autoreleasePoolPop(v2);
}

@end