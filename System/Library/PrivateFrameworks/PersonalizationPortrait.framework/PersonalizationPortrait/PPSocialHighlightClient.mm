@interface PPSocialHighlightClient
+ (id)sharedInstance;
- (BOOL)rankedCollaborationsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant error:(id *)error handleBatch:(id)batch;
- (BOOL)rankedHighlightsForSyncedItems:(id)items client:(id)client variant:(id)variant error:(id *)error handleBatch:(id)batch;
- (BOOL)rankedHighlightsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant error:(id *)error handleBatch:(id)batch;
- (PPSocialHighlightClient)init;
- (double)decayInterval;
- (id)attributionForIdentifier:(id)identifier error:(id *)error;
- (void)_unblockPendingQueries;
- (void)feedbackForAttribution:(id)attribution type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion;
- (void)feedbackForHighlight:(id)highlight type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion;
@end

@implementation PPSocialHighlightClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PPSocialHighlightClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken6 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken6, block);
  }

  v2 = sharedInstance__pasExprOnceResult_2922;

  return v2;
}

void __41__PPSocialHighlightClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_2922;
  sharedInstance__pasExprOnceResult_2922 = v4;

  objc_autoreleasePoolPop(v2);
}

- (PPSocialHighlightClient)init
{
  v24.receiver = self;
  v24.super_class = PPSocialHighlightClient;
  v2 = [(PPSocialHighlightClient *)&v24 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55E78];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B4C6C0];
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    [v4 setClasses:v8 forSelector:sel_rankedHighlightsBatch_isLast_error_queryId_completion_ argumentIndex:0 ofReply:0];

    objc_initWeak(&location, v2);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __31__PPSocialHighlightClient_init__block_invoke;
    v21[3] = &unk_1E77F7970;
    objc_copyWeak(&v22, &location);
    v9 = MEMORY[0x1AC568040](v21);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __31__PPSocialHighlightClient_init__block_invoke_90;
    v19[3] = &unk_1E77F7970;
    objc_copyWeak(&v20, &location);
    v10 = MEMORY[0x1AC568040](v19);
    v11 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.SocialHighlight" allowedServerInterface:v3 allowedClientInterface:v4 clientExportedObject:v2 interruptionHandler:v9 invalidationHandler:v10];
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

- (void)feedbackForAttribution:(id)attribution type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  clientCopy = client;
  variantCopy = variant;
  completionCopy = completion;
  v16 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138413058;
    v22 = attributionCopy;
    v23 = 2048;
    typeCopy = type;
    v25 = 2112;
    v26 = clientCopy;
    v27 = 2112;
    v28 = variantCopy;
    _os_log_impl(&dword_1A7FD3000, v16, OS_LOG_TYPE_DEFAULT, "Received feedback for attribution: %@ with type: %lu from client: '%@' variant: '%@'", &v21, 0x2Au);
  }

  if (completionCopy)
  {
    v17 = completionCopy;
  }

  else
  {
    v17 = &__block_literal_global_121;
  }

  v18 = MEMORY[0x1AC568040](v17);

  _remoteObjectProxy = [(PPSocialHighlightClient *)self _remoteObjectProxy];
  [_remoteObjectProxy feedbackForAttribution:attributionCopy type:type client:clientCopy variant:variantCopy completion:v18];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)feedbackForHighlight:(id)highlight type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  clientCopy = client;
  variantCopy = variant;
  completionCopy = completion;
  v16 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138413058;
    v22 = highlightCopy;
    v23 = 2048;
    typeCopy = type;
    v25 = 2112;
    v26 = clientCopy;
    v27 = 2112;
    v28 = variantCopy;
    _os_log_impl(&dword_1A7FD3000, v16, OS_LOG_TYPE_DEFAULT, "Received feedback for highlight: %@ with type: %lu from client: '%@' variant: '%@'", &v21, 0x2Au);
  }

  if (completionCopy)
  {
    v17 = completionCopy;
  }

  else
  {
    v17 = &__block_literal_global_2860;
  }

  v18 = MEMORY[0x1AC568040](v17);

  _remoteObjectProxy = [(PPSocialHighlightClient *)self _remoteObjectProxy];
  [_remoteObjectProxy feedbackForHighlight:highlightCopy type:type client:clientCopy variant:variantCopy completion:v18];

  v20 = *MEMORY[0x1E69E9840];
}

- (id)attributionForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2862;
  v24 = __Block_byref_object_dispose__2863;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2862;
  v18 = __Block_byref_object_dispose__2863;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PPSocialHighlightClient_attributionForIdentifier_error___block_invoke;
  v13[3] = &unk_1E77F6AE0;
  v13[4] = &v20;
  v13[5] = &v14;
  v7 = MEMORY[0x1AC568040](v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PPSocialHighlightClient_attributionForIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E77F6970;
  v12[4] = &v20;
  v12[5] = &v14;
  v8 = MEMORY[0x1AC568040](v12);
  v9 = [(PPSocialHighlightClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v9 attributionForIdentifier:identifierCopy completion:v8];

  if (error)
  {
    *error = v15[5];
  }

  v10 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __58__PPSocialHighlightClient_attributionForIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __58__PPSocialHighlightClient_attributionForIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)rankedHighlightsForSyncedItems:(id)items client:(id)client variant:(id)variant error:(id *)error handleBatch:(id)batch
{
  itemsCopy = items;
  clientCopy = client;
  variantCopy = variant;
  batchCopy = batch;
  v16 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v16, OS_LOG_TYPE_DEBUG, "rankedHighlightsForSyncedItems called", buf, 2u);
  }

  v17 = objc_opt_class();
  queryManager = self->_queryManager;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __91__PPSocialHighlightClient_rankedHighlightsForSyncedItems_client_variant_error_handleBatch___block_invoke;
  v29[3] = &unk_1E77F6948;
  v29[4] = self;
  v30 = itemsCopy;
  v31 = clientCopy;
  v32 = variantCopy;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __91__PPSocialHighlightClient_rankedHighlightsForSyncedItems_client_variant_error_handleBatch___block_invoke_2;
  v25[3] = &unk_1E77F79C0;
  v27 = batchCopy;
  v28 = v17;
  v26 = @"rankedHighlightsForSyncedItems";
  v19 = batchCopy;
  v20 = variantCopy;
  v21 = clientCopy;
  v22 = itemsCopy;
  v23 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"rankedHighlightsForSyncedItems" error:error queryInitializer:v29 handleBatch:v25];

  return v23;
}

void __91__PPSocialHighlightClient_rankedHighlightsForSyncedItems_client_variant_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 rankedHighlightsForSyncedItems:*(a1 + 40) client:*(a1 + 48) variant:*(a1 + 56) queryId:a2];
}

void __91__PPSocialHighlightClient_rankedHighlightsForSyncedItems_client_variant_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)rankedCollaborationsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant error:(id *)error handleBatch:(id)batch
{
  clientCopy = client;
  variantCopy = variant;
  batchCopy = batch;
  v15 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEBUG, "rankedCollaborationsWithLimit called", buf, 2u);
  }

  v16 = objc_opt_class();
  queryManager = self->_queryManager;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __90__PPSocialHighlightClient_rankedCollaborationsWithLimit_client_variant_error_handleBatch___block_invoke;
  v27[3] = &unk_1E77F6920;
  v27[4] = self;
  v28 = clientCopy;
  v29 = variantCopy;
  limitCopy = limit;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __90__PPSocialHighlightClient_rankedCollaborationsWithLimit_client_variant_error_handleBatch___block_invoke_2;
  v23[3] = &unk_1E77F79C0;
  v25 = batchCopy;
  v26 = v16;
  v24 = @"rankedCollaborationsWithLimit";
  v18 = batchCopy;
  v19 = variantCopy;
  v20 = clientCopy;
  v21 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"rankedCollaborationsWithLimit" error:error queryInitializer:v27 handleBatch:v23];

  return v21;
}

void __90__PPSocialHighlightClient_rankedCollaborationsWithLimit_client_variant_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _internalRemoteObjectProxy];
  [v4 rankedCollaborationsWithLimit:*(a1 + 56) client:*(a1 + 40) variant:*(a1 + 48) queryId:a2];
}

void __90__PPSocialHighlightClient_rankedCollaborationsWithLimit_client_variant_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (BOOL)rankedHighlightsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant error:(id *)error handleBatch:(id)batch
{
  clientCopy = client;
  variantCopy = variant;
  batchCopy = batch;
  v15 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEBUG, "rankedHighlightsWithLimit called", buf, 2u);
  }

  v16 = objc_opt_class();
  queryManager = self->_queryManager;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __86__PPSocialHighlightClient_rankedHighlightsWithLimit_client_variant_error_handleBatch___block_invoke;
  v27[3] = &unk_1E77F6920;
  v27[4] = self;
  v28 = clientCopy;
  v29 = variantCopy;
  limitCopy = limit;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__PPSocialHighlightClient_rankedHighlightsWithLimit_client_variant_error_handleBatch___block_invoke_2;
  v23[3] = &unk_1E77F79C0;
  v25 = batchCopy;
  v26 = v16;
  v24 = @"rankedHighlightsWithLimit";
  v18 = batchCopy;
  v19 = variantCopy;
  v20 = clientCopy;
  v21 = [(PPXPCClientPipelinedBatchQueryManager *)queryManager syncExecuteQueryWithName:@"rankedHighlightsWithLimit" error:error queryInitializer:v27 handleBatch:v23];

  return v21;
}

void __86__PPSocialHighlightClient_rankedHighlightsWithLimit_client_variant_error_handleBatch___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _remoteObjectProxy];
  [v4 rankedHighlightsWithLimit:*(a1 + 56) client:*(a1 + 40) variant:*(a1 + 48) queryId:a2];
}

void __86__PPSocialHighlightClient_rankedHighlightsWithLimit_client_variant_error_handleBatch___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [PPXPCClientPipelinedBatchQueryManager assertBatch:v5 forQueryName:v3 hasExpectedContainedType:v4];
  (*(a1[5] + 16))();
}

- (double)decayInterval
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1A7FD3000, v3, OS_LOG_TYPE_DEBUG, "decayInterval called", buf, 2u);
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2862;
  v26 = __Block_byref_object_dispose__2863;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2862;
  v20 = __Block_byref_object_dispose__2863;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__PPSocialHighlightClient_decayInterval__block_invoke;
  v15[3] = &unk_1E77F7B20;
  v15[4] = &v16;
  v4 = MEMORY[0x1AC568040](v15);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__PPSocialHighlightClient_decayInterval__block_invoke_2;
  v14[3] = &unk_1E77F68F8;
  v14[4] = buf;
  v14[5] = &v16;
  v5 = MEMORY[0x1AC568040](v14);
  v6 = [(PPSocialHighlightClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v4];
  [v6 decayIntervalWithCompletion:v5];

  v7 = *(v23 + 5);
  if (v7)
  {
    goto LABEL_7;
  }

  v8 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v13 = v17[5];
    *v28 = 138412290;
    v29 = v13;
    _os_log_error_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_ERROR, "PPSocialHighlightClient: failed to fetch decay interval: %@", v28, 0xCu);
  }

  v7 = *(v23 + 5);
  if (v7)
  {
LABEL_7:
    [v7 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 31536000.0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __40__PPSocialHighlightClient_decayInterval__block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)_unblockPendingQueries
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"connection to %@ was unexpectedly terminated", @"com.apple.proactive.PersonalizationPortrait.SocialHighlight"];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = *MEMORY[0x1E696A798];
  v9 = *MEMORY[0x1E696A588];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:v5 code:5 userInfo:v6];

  [(PPXPCClientPipelinedBatchQueryManager *)self->_queryManager cancelPendingQueriesWithError:v7];
  v8 = *MEMORY[0x1E69E9840];
}

void __31__PPSocialHighlightClient_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.SocialHighlight";
    _os_log_error_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

void __31__PPSocialHighlightClient_init__block_invoke_90(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = @"com.apple.proactive.PersonalizationPortrait.SocialHighlight";
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unblockPendingQueries];

  v4 = *MEMORY[0x1E69E9840];
}

@end