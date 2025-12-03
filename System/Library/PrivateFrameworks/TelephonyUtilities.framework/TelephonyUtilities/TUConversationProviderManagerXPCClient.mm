@interface TUConversationProviderManagerXPCClient
+ (NSSet)conversationProviderManagerAllowedClasses;
+ (NSXPCInterface)conversationProviderManagerClientXPCInterface;
+ (NSXPCInterface)conversationProviderManagerServerXPCInterface;
+ (TUConversationProviderManagerXPCServer)asynchronousServer;
+ (TUConversationProviderManagerXPCServer)synchronousServer;
- (NSXPCConnection)xpcConnection;
- (TUConversationProviderManagerXPCClient)init;
- (id)asynchronousServerWithErrorHandler:(id)handler;
- (id)synchronousServerWithErrorHandler:(id)handler;
- (void)_invokeCompletionHandler:(id)handler;
- (void)_requestInitialStateIfNecessary;
- (void)_requestInitialStateWithCompletionHandler:(id)handler;
- (void)conversationProviderForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler;
- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler;
- (void)init;
- (void)invalidate;
- (void)registerConversationProvider:(id)provider completionHandler:(id)handler;
- (void)registerForCallbacksForProvider:(id)provider completionHandler:(id)handler;
- (void)registerWithCompletionHandler:(id)handler;
- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler;
- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler;
@end

@implementation TUConversationProviderManagerXPCClient

+ (TUConversationProviderManagerXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_3);

  return WeakRetained;
}

+ (TUConversationProviderManagerXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_3);

  return WeakRetained;
}

- (TUConversationProviderManagerXPCClient)init
{
  v13.receiver = self;
  v13.super_class = TUConversationProviderManagerXPCClient;
  v2 = [(TUConversationProviderManagerXPCClient *)&v13 init];
  if (v2)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Initializing TUConversationProviderManagerXPCClient", buf, 2u);
    }

    v4 = dispatch_queue_create("com.apple.telephonyutilities.conversationprovidermanagerxpcclient", 0);
    queue = v2->_queue;
    v2->_queue = v4;

    objc_initWeak(buf, v2);
    v6 = v2->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __46__TUConversationProviderManagerXPCClient_init__block_invoke;
    handler[3] = &unk_1E7424C60;
    objc_copyWeak(&v11, buf);
    notify_register_dispatch("CSDConversationProviderManagerClientsShouldConnectNotification", &v2->_shouldConnectToken, v6, handler);
    WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_3);
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(TUConversationProviderManagerXPCClient *)v2 init];
    }

    [WeakRetained registerClient:v2];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __46__TUConversationProviderManagerXPCClient_init__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "CSDConversationProviderManagerClientsShouldConnectNotification";
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection for ProviderManager1", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__TUConversationProviderManagerXPCClient_init__block_invoke_2;
    block[3] = &unk_1E7424950;
    v6 = WeakRetained;
    dispatch_async(v3, block);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __46__TUConversationProviderManagerXPCClient_init__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "CSDConversationProviderManagerClientsShouldConnectNotification";
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection for ProviderManager2", &v5, 0xCu);
  }

  *(*(a1 + 32) + 10) = 1;
  result = [*(a1 + 32) _requestInitialStateWithCompletionHandler:0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  notify_cancel(self->_shouldConnectToken);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUConversationProviderManagerXPCClient;
  [(TUConversationProviderManagerXPCClient *)&v3 dealloc];
}

- (void)registerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(TUConversationProviderManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__TUConversationProviderManagerXPCClient_registerWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __72__TUConversationProviderManagerXPCClient_registerWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasRequestedInitialState];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {

    return [v3 _invokeCompletionHandler:v4];
  }

  else
  {

    return [v3 _requestInitialStateWithCompletionHandler:v4];
  }
}

- (void)conversationProviderForIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __94__TUConversationProviderManagerXPCClient_conversationProviderForIdentifier_completionHandler___block_invoke;
  v14 = &unk_1E74264D0;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v8 = handlerCopy;
  v9 = identifierCopy;
  v10 = [(TUConversationProviderManagerXPCClient *)self asynchronousServerWithErrorHandler:&v11];
  [v10 conversationProviderForIdentifier:v9 completionHandler:{v8, v11, v12, v13, v14}];
}

void __94__TUConversationProviderManagerXPCClient_conversationProviderForIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error getting conversation provider with identifier: %@ error: %@", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerForCallbacksForProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __92__TUConversationProviderManagerXPCClient_registerForCallbacksForProvider_completionHandler___block_invoke;
  v14 = &unk_1E74264D0;
  v15 = providerCopy;
  v16 = handlerCopy;
  v8 = handlerCopy;
  v9 = providerCopy;
  v10 = [(TUConversationProviderManagerXPCClient *)self asynchronousServerWithErrorHandler:&v11];
  [v10 registerForCallbacksForProvider:v9 completionHandler:{v8, v11, v12, v13, v14}];
}

void __92__TUConversationProviderManagerXPCClient_registerForCallbacksForProvider_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error registering callbacks for conversation provider: %@ error: %@", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerConversationProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __89__TUConversationProviderManagerXPCClient_registerConversationProvider_completionHandler___block_invoke;
  v14 = &unk_1E74264D0;
  v15 = providerCopy;
  v16 = handlerCopy;
  v8 = handlerCopy;
  v9 = providerCopy;
  v10 = [(TUConversationProviderManagerXPCClient *)self asynchronousServerWithErrorHandler:&v11];
  [v10 registerConversationProvider:v9 completionHandler:{v8, v11, v12, v13, v14}];
}

void __89__TUConversationProviderManagerXPCClient_registerConversationProvider_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error registering conversation provider: %@ error: %@", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __126__TUConversationProviderManagerXPCClient_generatePseudonymHandleForConversationProvider_expiryDuration_URI_completionHandler___block_invoke;
  v19 = &unk_1E74264D0;
  v20 = providerCopy;
  v21 = handlerCopy;
  v12 = handlerCopy;
  v13 = providerCopy;
  iCopy = i;
  v15 = [(TUConversationProviderManagerXPCClient *)self asynchronousServerWithErrorHandler:&v16];
  [v15 generatePseudonymHandleForConversationProvider:v13 expiryDuration:iCopy URI:v12 completionHandler:{duration, v16, v17, v18, v19}];
}

void __126__TUConversationProviderManagerXPCClient_generatePseudonymHandleForConversationProvider_expiryDuration_URI_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error generating pseudonym handle for conversation provider: %@ error: %@", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __120__TUConversationProviderManagerXPCClient_renewPseudonymHandle_forConversationProvider_expirationDate_completionHandler___block_invoke;
  v18[3] = &unk_1E74256A8;
  v19 = handleCopy;
  v20 = providerCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = providerCopy;
  v15 = handleCopy;
  dateCopy = date;
  v17 = [(TUConversationProviderManagerXPCClient *)self asynchronousServerWithErrorHandler:v18];
  [v17 renewPseudonymHandle:v15 forConversationProvider:v14 expirationDate:dateCopy completionHandler:v13];
}

void __120__TUConversationProviderManagerXPCClient_renewPseudonymHandle_forConversationProvider_expirationDate_completionHandler___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error renewing pseudonym handle: %@ for conversation provider: %@ error: %@", &v9, 0x20u);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, 0, 0, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__TUConversationProviderManagerXPCClient_revokePseudonymHandle_forConversationProvider_completionHandler___block_invoke;
  v15[3] = &unk_1E74256A8;
  v16 = handleCopy;
  v17 = providerCopy;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = providerCopy;
  v13 = handleCopy;
  v14 = [(TUConversationProviderManagerXPCClient *)self asynchronousServerWithErrorHandler:v15];
  [v14 revokePseudonymHandle:v13 forConversationProvider:v12 completionHandler:v11];
}

void __106__TUConversationProviderManagerXPCClient_revokePseudonymHandle_forConversationProvider_completionHandler___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error revoking pseudonym handle: %@ for conversation provider: %@ error: %@", &v9, 0x20u);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__TUConversationProviderManagerXPCClient_doesHandle_correspondToConversationProvider_completionHandler___block_invoke;
  v15[3] = &unk_1E74256A8;
  v16 = handleCopy;
  v17 = providerCopy;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = providerCopy;
  v13 = handleCopy;
  v14 = [(TUConversationProviderManagerXPCClient *)self asynchronousServerWithErrorHandler:v15];
  [v14 doesHandle:v13 correspondToConversationProvider:v12 completionHandler:v11];
}

void __104__TUConversationProviderManagerXPCClient_doesHandle_correspondToConversationProvider_completionHandler___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error when checking if pseudonym handle: %@ corresponds to conversation provider: %@ error: %@", &v9, 0x20u);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  queue = [(TUConversationProviderManagerXPCClient *)self queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__TUConversationProviderManagerXPCClient_invalidate__block_invoke;
  v4[3] = &unk_1E7424998;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __52__TUConversationProviderManagerXPCClient_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[2] invalidate];
    v2 = objc_loadWeakRetained(&sAsynchronousServer_3);
    [v2 unregisterClient:v6];

    v3 = objc_loadWeakRetained(&sSynchronousServer_3);
    [v3 unregisterClient:v6];

    v4 = v6[2];
    v6[2] = 0;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_requestInitialStateIfNecessary
{
  queue = [(TUConversationProviderManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(TUConversationProviderManagerXPCClient *)self hasRequestedInitialState])
  {

    [(TUConversationProviderManagerXPCClient *)self _requestInitialStateWithCompletionHandler:0];
  }
}

- (void)_requestInitialStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(TUConversationProviderManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(TUConversationProviderManagerXPCClient *)self setHasRequestedInitialState:1];
  [(TUConversationProviderManagerXPCClient *)self _invokeCompletionHandler:handlerCopy];
}

- (void)_invokeCompletionHandler:(id)handler
{
  if (handler)
  {
    v4 = dispatch_get_global_queue(21, 0);
    dispatch_async(v4, handler);
  }
}

- (NSXPCConnection)xpcConnection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  queue = [(TUConversationProviderManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke;
  v6[3] = &unk_1E7425C58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Starting XPC Connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.conversationprovidermanager" options:0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(a1 + 32);
    v8 = [objc_opt_class() conversationProviderManagerServerXPCInterface];
    [*(*(a1 + 32) + 16) setRemoteObjectInterface:v8];

    v9 = *(a1 + 32);
    v10 = [objc_opt_class() conversationProviderManagerClientXPCInterface];
    [*(*(a1 + 32) + 16) setExportedInterface:v10];

    [*(*(a1 + 32) + 16) setExportedObject:?];
    objc_initWeak(buf, *(a1 + 32));
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke_9;
    v16[3] = &unk_1E7424998;
    objc_copyWeak(&v17, buf);
    [*(*(a1 + 32) + 16) setInvalidationHandler:v16];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke_10;
    v14 = &unk_1E7424998;
    objc_copyWeak(&v15, buf);
    [*(*(a1 + 32) + 16) setInterruptionHandler:&v11];
    [*(*(a1 + 32) + 16) resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
    v2 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;
}

void __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke_2_11;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __55__TUConversationProviderManagerXPCClient_xpcConnection__block_invoke_2_11(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) invalidate];
}

- (id)asynchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_3);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUConversationProviderManagerXPCClient *)self xpcConnection];
    v7 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

- (id)synchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_3);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUConversationProviderManagerXPCClient *)self xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

+ (NSSet)conversationProviderManagerAllowedClasses
{
  v17 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v17 setWithObjects:{v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (NSXPCInterface)conversationProviderManagerClientXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__TUConversationProviderManagerXPCClient_conversationProviderManagerClientXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (conversationProviderManagerClientXPCInterface_onceToken != -1)
  {
    dispatch_once(&conversationProviderManagerClientXPCInterface_onceToken, block);
  }

  v2 = conversationProviderManagerClientXPCInterface_conversationProviderManagerClientXPCInterface;

  return v2;
}

void __87__TUConversationProviderManagerXPCClient_conversationProviderManagerClientXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09F0E68];
  v3 = conversationProviderManagerClientXPCInterface_conversationProviderManagerClientXPCInterface;
  conversationProviderManagerClientXPCInterface_conversationProviderManagerClientXPCInterface = v2;

  v4 = conversationProviderManagerClientXPCInterface_conversationProviderManagerClientXPCInterface;
  v5 = [*(a1 + 32) conversationProviderManagerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_updateConversationProviders_ argumentIndex:0 ofReply:0];
}

+ (NSXPCInterface)conversationProviderManagerServerXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__TUConversationProviderManagerXPCClient_conversationProviderManagerServerXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (conversationProviderManagerServerXPCInterface_onceToken != -1)
  {
    dispatch_once(&conversationProviderManagerServerXPCInterface_onceToken, block);
  }

  v2 = conversationProviderManagerServerXPCInterface_conversationProviderManagerXPCInterface;

  return v2;
}

void __87__TUConversationProviderManagerXPCClient_conversationProviderManagerServerXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A0A160];
  v3 = conversationProviderManagerServerXPCInterface_conversationProviderManagerXPCInterface;
  conversationProviderManagerServerXPCInterface_conversationProviderManagerXPCInterface = v2;

  v4 = conversationProviderManagerServerXPCInterface_conversationProviderManagerXPCInterface;
  v5 = [*(a1 + 32) conversationProviderManagerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_conversationProviders_ argumentIndex:0 ofReply:0];

  v6 = conversationProviderManagerServerXPCInterface_conversationProviderManagerXPCInterface;
  v7 = [*(a1 + 32) conversationProviderManagerAllowedClasses];
  [v6 setClasses:v7 forSelector:sel_registerConversationProvider_completionHandler_ argumentIndex:0 ofReply:0];
}

- (void)init
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  selfCopy = self;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_1956FD000, log, OS_LOG_TYPE_DEBUG, "Registering TUConversationProviderManagerXPCClient %p with async server %p", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end