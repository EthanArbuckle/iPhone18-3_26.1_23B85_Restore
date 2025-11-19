@interface TPSSearchQueryClient
- (TPSSearchQueryClient)init;
- (id)_objectCompletionOnClientQueue:(id)a3;
- (void)_performWithProxyHandler:(id)a3 errorHandler:(id)a4;
- (void)cancelQueryWithIdentifier:(id)a3;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)a3;
- (void)performQuery:(id)a3 completion:(id)a4;
- (void)reindexAllSearchableItemsWithCompletionHandler:(id)a3;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3 completionHandler:(id)a4;
@end

@implementation TPSSearchQueryClient

- (TPSSearchQueryClient)init
{
  v10.receiver = self;
  v10.super_class = TPSSearchQueryClient;
  v2 = [(TPSSearchQueryClient *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.tips.SearchQueryManager", v3);
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

- (void)performQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(TPSSearchQueryClient *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__TPSSearchQueryClient_performQuery_completion___block_invoke;
  v12[3] = &unk_1E8101CF0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__TPSSearchQueryClient_performQuery_completion___block_invoke_2;
  v10[3] = &unk_1E8101CC8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(TPSSearchQueryClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)cancelQueryWithIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__TPSSearchQueryClient_cancelQueryWithIdentifier___block_invoke;
  v8[3] = &unk_1E8101D18;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__TPSSearchQueryClient_cancelQueryWithIdentifier___block_invoke_2;
  v6[3] = &unk_1E8102280;
  v7 = v9;
  v5 = v9;
  [(TPSSearchQueryClient *)self _performWithProxyHandler:v8 errorHandler:v6];
}

void __50__TPSSearchQueryClient_cancelQueryWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[TPSLogger search];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C00A7000, v4, OS_LOG_TYPE_DEFAULT, "cancelQueryWithIdentifier(%@) xpc connection failed: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reindexAllSearchableItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__TPSSearchQueryClient_reindexAllSearchableItemsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8101CA0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__TPSSearchQueryClient_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E8101CC8;
  v7 = v9;
  v5 = v9;
  [(TPSSearchQueryClient *)self _performWithProxyHandler:v8 errorHandler:v6];
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__TPSSearchQueryClient_reindexSearchableItemsWithIdentifiers_completionHandler___block_invoke;
  v12[3] = &unk_1E8101CF0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__TPSSearchQueryClient_reindexSearchableItemsWithIdentifiers_completionHandler___block_invoke_2;
  v10[3] = &unk_1E8101CC8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(TPSSearchQueryClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__TPSSearchQueryClient_deleteAllSearchableItemsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8101CA0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__TPSSearchQueryClient_deleteAllSearchableItemsWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E8101CC8;
  v7 = v9;
  v5 = v9;
  [(TPSSearchQueryClient *)self _performWithProxyHandler:v8 errorHandler:v6];
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
  v8[2] = __55__TPSSearchQueryClient__objectCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_1E8101D80;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [v8 copy];

  return v6;
}

void __55__TPSSearchQueryClient__objectCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__TPSSearchQueryClient__objectCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_1E8101798;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __55__TPSSearchQueryClient__objectCompletionOnClientQueue___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

@end