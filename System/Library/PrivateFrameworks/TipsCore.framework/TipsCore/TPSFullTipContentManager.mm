@interface TPSFullTipContentManager
- (TPSFullTipContentManager)init;
- (id)_objectCompletionOnClientQueue:(id)a3;
- (id)_objectsCompletionOnClientQueue:(id)a3;
- (void)_performWithProxyHandler:(id)a3 errorHandler:(id)a4;
- (void)contentForVariant:(id)a3 completionHandler:(id)a4;
- (void)contentWithCompletionHandler:(id)a3;
- (void)fetchAssetsWithAssetsConfiguration:(id)a3 completionHandler:(id)a4;
- (void)markTipViewed:(id)a3;
- (void)removeNotificationForIdentifier:(id)a3;
- (void)supportFlowContentWithCompletionHandler:(id)a3;
- (void)userGuideMapWithCompletionHandler:(id)a3;
@end

@implementation TPSFullTipContentManager

- (TPSFullTipContentManager)init
{
  v10.receiver = self;
  v10.super_class = TPSFullTipContentManager;
  v2 = [(TPSFullTipContentManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.tips.TPSFullTipContentManager", v3);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v4;

    v6 = objc_alloc_init(TPSServiceConnection);
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v6;

    v8 = TPSXPCServerInterface();
    [(TPSServiceConnection *)v2->_serviceProxy setRemoteInterfaceInstance:v8];
  }

  return v2;
}

- (void)contentWithCompletionHandler:(id)a3
{
  v4 = [(TPSFullTipContentManager *)self _objectsCompletionOnClientQueue:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__TPSFullTipContentManager_contentWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8101CA0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__TPSFullTipContentManager_contentWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E8101CC8;
  v7 = v9;
  v5 = v9;
  [(TPSFullTipContentManager *)self _performWithProxyHandler:v8 errorHandler:v6];
}

- (void)contentForVariant:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = [(TPSFullTipContentManager *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__TPSFullTipContentManager_contentForVariant_completionHandler___block_invoke;
  v12[3] = &unk_1E8101CF0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__TPSFullTipContentManager_contentForVariant_completionHandler___block_invoke_2;
  v10[3] = &unk_1E8101CC8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(TPSFullTipContentManager *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)supportFlowContentWithCompletionHandler:(id)a3
{
  v4 = [(TPSFullTipContentManager *)self _objectCompletionOnClientQueue:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__TPSFullTipContentManager_supportFlowContentWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8101CA0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__TPSFullTipContentManager_supportFlowContentWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E8101CC8;
  v7 = v9;
  v5 = v9;
  [(TPSFullTipContentManager *)self _performWithProxyHandler:v8 errorHandler:v6];
}

- (void)fetchAssetsWithAssetsConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = [(TPSFullTipContentManager *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__TPSFullTipContentManager_fetchAssetsWithAssetsConfiguration_completionHandler___block_invoke;
  v12[3] = &unk_1E8101CF0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__TPSFullTipContentManager_fetchAssetsWithAssetsConfiguration_completionHandler___block_invoke_2;
  v10[3] = &unk_1E8101CC8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(TPSFullTipContentManager *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)markTipViewed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__TPSFullTipContentManager_markTipViewed___block_invoke;
    v6[3] = &unk_1E8101D18;
    v7 = v4;
    [(TPSFullTipContentManager *)self _performWithProxyHandler:v6 errorHandler:&__block_literal_global_8];
  }
}

void __42__TPSFullTipContentManager_markTipViewed___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "markTipViewed xpc connection failed: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeNotificationForIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__TPSFullTipContentManager_removeNotificationForIdentifier___block_invoke;
    v6[3] = &unk_1E8101D18;
    v7 = v4;
    [(TPSFullTipContentManager *)self _performWithProxyHandler:v6 errorHandler:&__block_literal_global_5];
  }
}

void __60__TPSFullTipContentManager_removeNotificationForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "markTipViewed xpc connection failed: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __41__TPSFullTipContentManager_tipsAppActive__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "tipsAppActive xpc connection failed: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)userGuideMapWithCompletionHandler:(id)a3
{
  v4 = [(TPSFullTipContentManager *)self _objectCompletionOnClientQueue:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__TPSFullTipContentManager_userGuideMapWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8101CA0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__TPSFullTipContentManager_userGuideMapWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E8101CC8;
  v7 = v9;
  v5 = v9;
  [(TPSFullTipContentManager *)self _performWithProxyHandler:v8 errorHandler:v6];
}

- (void)_performWithProxyHandler:(id)a3 errorHandler:(id)a4
{
  v10 = a3;
  serviceProxy = self->_serviceProxy;
  v7 = a4;
  v8 = [(TPSServiceConnection *)serviceProxy connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  if (v9)
  {
    v10[2](v10, v9);
  }
}

- (id)_objectCompletionOnClientQueue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__TPSFullTipContentManager__objectCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_1E8101D80;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [v8 copy];

  return v6;
}

void __59__TPSFullTipContentManager__objectCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__TPSFullTipContentManager__objectCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_1E8101798;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __59__TPSFullTipContentManager__objectCompletionOnClientQueue___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)_objectsCompletionOnClientQueue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__TPSFullTipContentManager__objectsCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_1E8101DD0;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [v8 copy];

  return v6;
}

void __60__TPSFullTipContentManager__objectsCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) clientQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__TPSFullTipContentManager__objectsCompletionOnClientQueue___block_invoke_2;
  v15[3] = &unk_1E8101DA8;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

uint64_t __60__TPSFullTipContentManager__objectsCompletionOnClientQueue___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

@end