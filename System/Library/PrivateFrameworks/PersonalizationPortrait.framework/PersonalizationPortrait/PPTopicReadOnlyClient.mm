@interface PPTopicReadOnlyClient
+ (id)sharedInstance;
- (BOOL)rankedTopicsWithQuery:(id)query error:(id *)error handleBatch:(id)batch;
- (BOOL)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error handleBatch:(id)batch;
- (BOOL)topicExtractionsFromText:(id)text error:(id *)error handleBatch:(id)batch;
- (BOOL)topicRecordsWithQuery:(id)query error:(id *)error handleBatch:(id)batch;
- (PPTopicReadOnlyClient)init;
- (id)cachePath:(id *)path;
- (id)topicCacheSandboxExtensionToken:(id *)token;
- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error;
- (void)_unblockPendingQueries;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPTopicReadOnlyClient

- (id)topicCacheSandboxExtensionToken:(id *)token
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4321;
  v29 = __Block_byref_object_dispose__4322;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__PPTopicReadOnlyClient_topicCacheSandboxExtensionToken___block_invoke;
  v24[3] = &unk_1E77F7B20;
  v24[4] = &v25;
  v5 = MEMORY[0x1AC568040](v24, a2);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4321;
  v22 = __Block_byref_object_dispose__4322;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4321;
  v16 = __Block_byref_object_dispose__4322;
  v17 = 0;
  v6 = [(PPTopicReadOnlyClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PPTopicReadOnlyClient_topicCacheSandboxExtensionToken___block_invoke_2;
  v11[3] = &unk_1E77F6D38;
  v11[4] = &v18;
  v11[5] = &v12;
  [v6 topicCacheSandboxExtensionToken:v11];

  if (token)
  {
    v7 = v13[5];
    if (v7)
    {
      *token = v7;
    }
  }

  if (token && (v8 = v26[5]) != 0)
  {
    v9 = 0;
    *token = v8;
  }

  else
  {
    v9 = v19[5];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

void __57__PPTopicReadOnlyClient_topicCacheSandboxExtensionToken___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)cachePath:(id *)path
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4321;
  v29 = __Block_byref_object_dispose__4322;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __35__PPTopicReadOnlyClient_cachePath___block_invoke;
  v24[3] = &unk_1E77F7B20;
  v24[4] = &v25;
  v5 = MEMORY[0x1AC568040](v24, a2);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4321;
  v22 = __Block_byref_object_dispose__4322;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4321;
  v16 = __Block_byref_object_dispose__4322;
  v17 = 0;
  v6 = [(PPTopicReadOnlyClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__PPTopicReadOnlyClient_cachePath___block_invoke_2;
  v11[3] = &unk_1E77F6D38;
  v11[4] = &v18;
  v11[5] = &v12;
  [v6 cachePath:v11];

  if (path)
  {
    v7 = v13[5];
    if (v7)
    {
      *path = v7;
    }
  }

  if (path && (v8 = v26[5]) != 0)
  {
    v9 = 0;
    *path = v8;
  }

  else
  {
    v9 = v19[5];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

void __35__PPTopicReadOnlyClient_cachePath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  _remoteObjectProxy = [(PPTopicReadOnlyClient *)self _remoteObjectProxy];
  [_remoteObjectProxy registerUniversalSearchSpotlightFeedback:feedbackCopy completion:completionCopy];
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  _remoteObjectProxy = [(PPTopicReadOnlyClient *)self _remoteObjectProxy];
  [_remoteObjectProxy registerFeedback:feedbackCopy completion:completionCopy];
}

- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error
{
  identifierCopy = identifier;
  mappingIdentifierCopy = mappingIdentifier;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4321;
  v34 = __Block_byref_object_dispose__4322;
  v35 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __76__PPTopicReadOnlyClient_unmapMappedTopicIdentifier_mappingIdentifier_error___block_invoke;
  v29[3] = &unk_1E77F7B20;
  v29[4] = &v30;
  v10 = MEMORY[0x1AC568040](v29);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4321;
  v27 = __Block_byref_object_dispose__4322;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4321;
  v21 = __Block_byref_object_dispose__4322;
  v22 = 0;
  v11 = [(PPTopicReadOnlyClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v10];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__PPTopicReadOnlyClient_unmapMappedTopicIdentifier_mappingIdentifier_error___block_invoke_2;
  v16[3] = &unk_1E77F6D10;
  v16[4] = &v23;
  v16[5] = &v17;
  [v11 unmapMappedTopicIdentifier:identifierCopy mappingIdentifier:mappingIdentifierCopy completion:v16];

  if (error)
  {
    v12 = v18[5];
    if (v12)
    {
      *error = v12;
    }
  }

  if (error && (v13 = v31[5]) != 0)
  {
    v14 = 0;
    *error = v13;
  }

  else
  {
    v14 = v24[5];
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void __76__PPTopicReadOnlyClient_unmapMappedTopicIdentifier_mappingIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error handleBatch:(id)batch
{
  mappingCopy = mapping;
  queryCopy = query;
  batchCopy = batch;
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  queryManager = self->_queryManager;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__PPTopicReadOnlyClient_scoresForTopicMapping_query_error_handleBatch___block_invoke;
  v26[3] = &unk_1E77F7948;
  v26[4] = self;
  v27 = mappingCopy;
  v28 = queryCopy;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__PPTopicReadOnlyClient_scoresForTopicMapping_query_error_handleBatch___block_invoke_2;
  v21[3] = &unk_1E77F6CE8;
  v23 = a2;
  v24 = v14;
  v25 = v15;
  v21[4] = self;
  v22 = batchCopy;
  v17 = batchCopy;
  v18 = queryCopy;
  v19 = mappingCopy;
  LOBYTE(error) = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"scoresForTopicMapping" error:error queryInitializer:v26 handleBatch:v21];

  return error;
}

void __71__PPTopicReadOnlyClient_scoresForTopicMapping_query_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 scoresForTopicMapping:*(a1 + 40) query:*(a1 + 48) queryId:a2];
}

void __71__PPTopicReadOnlyClient_scoresForTopicMapping_query_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v16 = a2;
  if ([v16 count])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a1[6] object:a1[4] file:@"PPTopicReadOnlyClient.m" lineNumber:213 description:@"scoresForTopicMapping unexpectedly received batch size with odd length"];
  }

  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count") >> 1}];
  if ([v16 count] >= 2)
  {
    v4 = 0;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [v16 objectAtIndexedSubscript:v4];
      v7 = v4 + 1;
      v8 = [v16 objectAtIndexedSubscript:v7];
      v9 = a1[7];
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = a1[8], (objc_opt_isKindOfClass() & 1) == 0))
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a1[6] object:a1[4] file:@"PPTopicReadOnlyClient.m" lineNumber:220 description:@"scoresForTopicMapping unexpectedly received incorrectly typed batch content"];
      }

      v11 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v6 second:v8];
      [v3 addObject:v11];

      objc_autoreleasePoolPop(v5);
      v12 = [v16 count];
      v13 = v7 + 2;
      v4 = v7 + 1;
    }

    while (v13 < v12);
  }

  (*(a1[5] + 16))();
}

- (BOOL)topicExtractionsFromText:(id)text error:(id *)error handleBatch:(id)batch
{
  textCopy = text;
  batchCopy = batch;
  v10 = objc_opt_class();
  queryManager = self->_queryManager;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__PPTopicReadOnlyClient_topicExtractionsFromText_error_handleBatch___block_invoke;
  v19[3] = &unk_1E77F7998;
  v19[4] = self;
  v20 = textCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PPTopicReadOnlyClient_topicExtractionsFromText_error_handleBatch___block_invoke_2;
  v15[3] = &unk_1E77F79C0;
  v17 = batchCopy;
  v18 = v10;
  v16 = @"topicExtractionsForText";
  v12 = batchCopy;
  v13 = textCopy;
  LOBYTE(error) = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"topicExtractionsForText" error:error queryInitializer:v19 handleBatch:v15];

  return error;
}

void __68__PPTopicReadOnlyClient_topicExtractionsFromText_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 topicExtractionsFromText:*(a1 + 40) queryId:a2];
}

void __68__PPTopicReadOnlyClient_topicExtractionsFromText_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)topicRecordsWithQuery:(id)query error:(id *)error handleBatch:(id)batch
{
  queryCopy = query;
  batchCopy = batch;
  v10 = objc_opt_class();
  queryManager = self->_queryManager;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PPTopicReadOnlyClient_topicRecordsWithQuery_error_handleBatch___block_invoke;
  v19[3] = &unk_1E77F7998;
  v19[4] = self;
  v20 = queryCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__PPTopicReadOnlyClient_topicRecordsWithQuery_error_handleBatch___block_invoke_2;
  v15[3] = &unk_1E77F79C0;
  v17 = batchCopy;
  v18 = v10;
  v16 = @"topicRecordsWithQuery";
  v12 = batchCopy;
  v13 = queryCopy;
  LOBYTE(error) = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"topicRecordsWithQuery" error:error queryInitializer:v19 handleBatch:v15];

  return error;
}

void __65__PPTopicReadOnlyClient_topicRecordsWithQuery_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 topicRecordsWithQuery:*(a1 + 40) queryId:a2];
}

void __65__PPTopicReadOnlyClient_topicRecordsWithQuery_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)rankedTopicsWithQuery:(id)query error:(id *)error handleBatch:(id)batch
{
  queryCopy = query;
  batchCopy = batch;
  v10 = objc_opt_class();
  queryManager = self->_queryManager;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PPTopicReadOnlyClient_rankedTopicsWithQuery_error_handleBatch___block_invoke;
  v19[3] = &unk_1E77F7998;
  v19[4] = self;
  v20 = queryCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__PPTopicReadOnlyClient_rankedTopicsWithQuery_error_handleBatch___block_invoke_2;
  v15[3] = &unk_1E77F79C0;
  v17 = batchCopy;
  v18 = v10;
  v16 = @"rankedTopicsWithQuery";
  v12 = batchCopy;
  v13 = queryCopy;
  LOBYTE(error) = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"rankedTopicsWithQuery" error:error queryInitializer:v19 handleBatch:v15];

  return error;
}

void __65__PPTopicReadOnlyClient_rankedTopicsWithQuery_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 rankedTopicsWithQuery:*(a1 + 40) queryId:a2];
}

void __65__PPTopicReadOnlyClient_rankedTopicsWithQuery_error_handleBatch___block_invoke_2(void *a1, void *a2)
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
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"connection to %@ was unexpectedly terminated", @"com.apple.proactive.PersonalizationPortrait.Topic.readOnly"];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = *MEMORY[0x1E696A798];
  v9 = *MEMORY[0x1E696A588];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:v5 code:5 userInfo:v6];

  [(PPXPCClientPipelinedBatchQueryManager *)self->_queryManager cancelPendingQueriesWithError:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (PPTopicReadOnlyClient)init
{
  v37.receiver = self;
  v37.super_class = PPTopicReadOnlyClient;
  v2 = [(PPTopicReadOnlyClient *)&v37 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55F38];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B4E530];
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    [v4 setClasses:v8 forSelector:sel_topicBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v9);
    [v4 setClasses:v12 forSelector:sel_topicRecordBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v15 = objc_opt_class();
    v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v13);
    [v4 setClasses:v16 forSelector:sel_topicExtractionsFromTextBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    v17 = objc_autoreleasePoolPush();
    v18 = objc_alloc(MEMORY[0x1E695DFD8]);
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 initWithObjects:{v19, v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v17);
    [v4 setClasses:v21 forSelector:sel_scoredMappedTopicBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    objc_initWeak(&location, v2);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __29__PPTopicReadOnlyClient_init__block_invoke;
    v34[3] = &unk_1E77F7970;
    objc_copyWeak(&v35, &location);
    v22 = MEMORY[0x1AC568040](v34);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __29__PPTopicReadOnlyClient_init__block_invoke_105;
    v32[3] = &unk_1E77F7970;
    objc_copyWeak(&v33, &location);
    v23 = MEMORY[0x1AC568040](v32);
    v24 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Topic.readOnly" allowedServerInterface:v3 allowedClientInterface:v4 clientExportedObject:v2 interruptionHandler:v22 invalidationHandler:v23];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v24;

    v26 = [PPXPCClientPipelinedBatchQueryManager alloc];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [(PPXPCClientPipelinedBatchQueryManager *)v26 initWithName:v28];
    queryManager = v2->_queryManager;
    v2->_queryManager = v29;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__PPTopicReadOnlyClient_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Topic.readOnly";
    _os_log_error_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __29__PPTopicReadOnlyClient_init__block_invoke_105(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.Topic.readOnly";
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
  block[2] = __39__PPTopicReadOnlyClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken12_4399 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken12_4399, block);
  }

  v2 = sharedInstance__pasExprOnceResult_4400;

  return v2;
}

void __39__PPTopicReadOnlyClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_4400;
  sharedInstance__pasExprOnceResult_4400 = v4;

  objc_autoreleasePoolPop(v2);
}

@end