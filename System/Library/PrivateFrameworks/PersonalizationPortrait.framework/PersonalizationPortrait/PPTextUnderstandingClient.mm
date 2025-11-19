@interface PPTextUnderstandingClient
+ (id)sharedInstance;
- (PPTextUnderstandingClient)init;
- (id)spotlightAttributesForBundleId:(id)a3 spotlightIdentifier:(id)a4 extractions:(id)a5 error:(id *)a6;
@end

@implementation PPTextUnderstandingClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PPTextUnderstandingClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken4 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken4, block);
  }

  v2 = sharedInstance__pasExprOnceResult;

  return v2;
}

- (id)spotlightAttributesForBundleId:(id)a3 spotlightIdentifier:(id)a4 extractions:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__PPTextUnderstandingClient_spotlightAttributesForBundleId_spotlightIdentifier_extractions_error___block_invoke;
  v18[3] = &unk_1E77F7B20;
  v18[4] = &v19;
  v13 = [(PPTextUnderstandingClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __98__PPTextUnderstandingClient_spotlightAttributesForBundleId_spotlightIdentifier_extractions_error___block_invoke_2;
  v17[3] = &unk_1E77F5EF0;
  v17[4] = &v25;
  v17[5] = &v19;
  [v13 spotlightAttributesForBundleId:v10 spotlightIdentifier:v11 extractions:v12 completion:v17];

  v14 = v26;
  if (a6 && !v26[5])
  {
    *a6 = v20[5];
    v14 = v26;
  }

  v15 = v14[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v15;
}

void __98__PPTextUnderstandingClient_spotlightAttributesForBundleId_spotlightIdentifier_extractions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (PPTextUnderstandingClient)init
{
  v7.receiver = self;
  v7.super_class = PPTextUnderstandingClient;
  v2 = [(PPTextUnderstandingClient *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55C98];
    v4 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.TextUnderstanding" allowedServerInterface:v3 allowedClientInterface:0 clientExportedObject:v2 interruptionHandler:&__block_literal_global invalidationHandler:&__block_literal_global_69];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v4;
  }

  return v2;
}

void __33__PPTextUnderstandingClient_init__block_invoke_67()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 138412290;
    v3 = @"com.apple.proactive.PersonalizationPortrait.TextUnderstanding";
    _os_log_impl(&dword_1A7FD3000, v0, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __33__PPTextUnderstandingClient_init__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = pp_xpc_client_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 138412290;
    v3 = @"com.apple.proactive.PersonalizationPortrait.TextUnderstanding";
    _os_log_error_impl(&dword_1A7FD3000, v0, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __43__PPTextUnderstandingClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

@end