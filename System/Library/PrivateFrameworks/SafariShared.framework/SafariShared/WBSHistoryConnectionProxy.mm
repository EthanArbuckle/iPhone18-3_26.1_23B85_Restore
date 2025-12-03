@interface WBSHistoryConnectionProxy
- (WBSHistoryConnectionProxy)init;
- (id)_createConnection;
- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)handler;
- (id)queryMemoryFootprintWithError:(id *)error;
- (void)_setupConnectionWithInProcessFallback:(BOOL)fallback;
- (void)beginURLCompletionSession:(id)session;
- (void)connectWithOptions:(id)options delegate:(id)delegate completionHandler:(id)handler;
- (void)copyAndRedactHistoryDatabasesForAllProfiles:(id)profiles completionHandler:(id)handler;
- (void)dealloc;
- (void)ensureConnected:(id)connected;
- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)handler;
- (void)getCompletionListItemsForQuery:(id)query completionHandler:(id)handler;
- (void)getServiceInfo:(id)info;
- (void)initializeCloudHistoryWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)invalidate;
- (void)killService;
- (void)listDatabaseURLsWithCompletionHandler:(id)handler;
- (void)queryMemoryFootprint:(id)footprint;
- (void)releaseCloudHistory:(id)history;
- (void)setCompletionListVendorEndpoint:(id)endpoint completionHandler:(id)handler;
@end

@implementation WBSHistoryConnectionProxy

- (WBSHistoryConnectionProxy)init
{
  v7.receiver = self;
  v7.super_class = WBSHistoryConnectionProxy;
  v2 = [(WBSHistoryConnectionProxy *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryConnectionProxy", MEMORY[0x1E69E96A8]);
    connectionProxyQueue = v2->_connectionProxyQueue;
    v2->_connectionProxyQueue = v3;

    [(WBSHistoryConnectionProxy *)v2 _setupConnectionWithInProcessFallback:0];
    v5 = v2;
  }

  return v2;
}

- (id)_createConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.Safari.History.Service" options:0];

  return v2;
}

- (void)invalidate
{
  connectionProxyQueue = self->_connectionProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WBSHistoryConnectionProxy_invalidate__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_barrier_sync(connectionProxyQueue, block);
}

uint64_t __39__WBSHistoryConnectionProxy_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setInterruptionHandler:0];
  [*(*(a1 + 32) + 8) setInvalidationHandler:0];
  v2 = *(*(a1 + 32) + 8);

  return [v2 invalidate];
}

- (void)_setupConnectionWithInProcessFallback:(BOOL)fallback
{
  objc_initWeak(&location, self);
  connectionProxyQueue = self->_connectionProxyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke;
  v7[3] = &unk_1E7FC6E70;
  v7[4] = self;
  fallbackCopy = fallback;
  objc_copyWeak(&v8, &location);
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_DETACHED, QOS_CLASS_USER_INITIATED, 0, v7);
  dispatch_barrier_async(connectionProxyQueue, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke_cold_1();
  }

  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    [v3 invalidate];
  }

  if (*(a1 + 48) == 1)
  {
    v4 = [MEMORY[0x1E696B0D8] anonymousListener];
    v5 = [[WBSHistoryService alloc] initWithListener:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    [*(*(a1 + 32) + 16) resume];
    v8 = objc_alloc(MEMORY[0x1E696B0B8]);
    v9 = [v4 endpoint];
    v10 = [v8 initWithListenerEndpoint:v9];
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    *(v11 + 8) = v10;
  }

  else
  {
    v13 = [*(a1 + 32) _createConnection];
    v14 = *(a1 + 32);
    v4 = *(v14 + 8);
    *(v14 + 8) = v13;
  }

  v15 = WBSHistoryConnectionInterface();
  [*(*(a1 + 32) + 8) setRemoteObjectInterface:v15];

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke_5;
  v17[3] = &unk_1E7FC6E48;
  objc_copyWeak(&v18, (a1 + 40));
  v17[4] = v19;
  [*(*(a1 + 32) + 8) setInterruptionHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke_7;
  v16[3] = &unk_1E7FB6EC8;
  v16[4] = v19;
  [*(*(a1 + 32) + 8) setInvalidationHandler:v16];
  [*(*(a1 + 32) + 8) resume];
  objc_destroyWeak(&v18);
  _Block_object_dispose(v19, 8);
}

void __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke_5(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke_5_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    [WeakRetained _setupConnectionWithInProcessFallback:0];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"WBSHistoryConnectionWasInterrupted" object:v4 userInfo:0];
  }
}

void __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke_7(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v1 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __67__WBSHistoryConnectionProxy__setupConnectionWithInProcessFallback___block_invoke_7_cold_1();
    }
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = WBSHistoryConnectionProxy;
  [(WBSHistoryConnectionProxy *)&v3 dealloc];
}

- (id)_defaultProxyErrorHandlerWithSimpleReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__WBSHistoryConnectionProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke;
  v7[3] = &unk_1E7FB8300;
  v8 = handlerCopy;
  v4 = handlerCopy;
  v5 = MEMORY[0x1BFB13CE0](v7);

  return v5;
}

void __77__WBSHistoryConnectionProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __77__WBSHistoryConnectionProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke_cold_1(v5, v3);
    }
  }
}

- (void)ensureConnected:(id)connected
{
  connectedCopy = connected;
  connectionProxyQueue = self->_connectionProxyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__WBSHistoryConnectionProxy_ensureConnected___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = connectedCopy;
  v6 = connectedCopy;
  dispatch_async(connectionProxyQueue, v7);
}

void __45__WBSHistoryConnectionProxy_ensureConnected___block_invoke(uint64_t a1)
{
  v2 = +[WBSHistory historyDatabaseURL];

  if (!v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__WBSHistoryConnectionProxy_ensureConnected___block_invoke_cold_1();
    }
  }

  v4 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Calling into [WBSHistoryConnectionProxy ensureConnected:]", v6, 2u);
  }

  v5 = [*(*(a1 + 32) + 8) remoteObjectProxyWithErrorHandler:*(a1 + 40)];
  [v5 ensureConnected:*(a1 + 40)];
}

- (void)getServiceInfo:(id)info
{
  infoCopy = info;
  connectionProxyQueue = self->_connectionProxyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__WBSHistoryConnectionProxy_getServiceInfo___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(connectionProxyQueue, v7);
}

void __44__WBSHistoryConnectionProxy_getServiceInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _defaultProxyErrorHandlerWithSimpleReplyHandler:*(a1 + 40)];
  v5 = [v3 remoteObjectProxyWithErrorHandler:v4];

  [v5 getServiceInfo:*(a1 + 40)];
}

- (void)listDatabaseURLsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connectionProxyQueue = self->_connectionProxyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__WBSHistoryConnectionProxy_listDatabaseURLsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(connectionProxyQueue, v7);
}

void __67__WBSHistoryConnectionProxy_listDatabaseURLsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _defaultProxyErrorHandlerWithSimpleReplyHandler:*(a1 + 40)];
  v5 = [v3 remoteObjectProxyWithErrorHandler:v4];

  [v5 listDatabaseURLsWithCompletionHandler:*(a1 + 40)];
}

- (void)beginURLCompletionSession:(id)session
{
  sessionCopy = session;
  connectionProxyQueue = self->_connectionProxyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__WBSHistoryConnectionProxy_beginURLCompletionSession___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(connectionProxyQueue, v7);
}

void __55__WBSHistoryConnectionProxy_beginURLCompletionSession___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _defaultProxyErrorHandlerWithSimpleReplyHandler:*(a1 + 40)];
  v5 = [v3 remoteObjectProxyWithErrorHandler:v4];

  [v5 beginURLCompletionSession:*(a1 + 40)];
}

- (void)killService
{
  connectionProxyQueue = self->_connectionProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__WBSHistoryConnectionProxy_killService__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_barrier_async(connectionProxyQueue, block);
}

- (void)queryMemoryFootprint:(id)footprint
{
  footprintCopy = footprint;
  connectionProxyQueue = self->_connectionProxyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__WBSHistoryConnectionProxy_queryMemoryFootprint___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = footprintCopy;
  v6 = footprintCopy;
  dispatch_async(connectionProxyQueue, v7);
}

void __50__WBSHistoryConnectionProxy_queryMemoryFootprint___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _defaultProxyErrorHandlerWithSimpleReplyHandler:*(a1 + 40)];
  v5 = [v3 remoteObjectProxyWithErrorHandler:v4];

  [v5 queryMemoryFootprint:*(a1 + 40)];
}

- (id)queryMemoryFootprintWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  connectionProxyQueue = self->_connectionProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WBSHistoryConnectionProxy_queryMemoryFootprintWithError___block_invoke;
  block[3] = &unk_1E7FC6EE8;
  block[4] = self;
  block[5] = &v8;
  block[6] = &v14;
  dispatch_sync(connectionProxyQueue, block);
  if (error)
  {
    *error = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __59__WBSHistoryConnectionProxy_queryMemoryFootprintWithError___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__WBSHistoryConnectionProxy_queryMemoryFootprintWithError___block_invoke_2;
  v6[3] = &unk_1E7FC6E98;
  v6[4] = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__WBSHistoryConnectionProxy_queryMemoryFootprintWithError___block_invoke_3;
  v4[3] = &unk_1E7FC6EC0;
  v5 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v3 queryMemoryFootprint:v4];
}

void __59__WBSHistoryConnectionProxy_queryMemoryFootprintWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

- (void)connectWithOptions:(id)options delegate:(id)delegate completionHandler:(id)handler
{
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  connectionProxyQueue = self->_connectionProxyQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__WBSHistoryConnectionProxy_connectWithOptions_delegate_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC6F38;
  v15[4] = self;
  v16 = optionsCopy;
  v17 = delegateCopy;
  v18 = handlerCopy;
  v12 = delegateCopy;
  v13 = optionsCopy;
  v14 = handlerCopy;
  dispatch_async(connectionProxyQueue, v15);
}

void __75__WBSHistoryConnectionProxy_connectWithOptions_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__WBSHistoryConnectionProxy_connectWithOptions_delegate_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7FB8300;
  v12 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__19;
  v9[4] = __Block_byref_object_dispose__19;
  v10 = [MEMORY[0x1E695DF00] date];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__WBSHistoryConnectionProxy_connectWithOptions_delegate_completionHandler___block_invoke_3;
  v6[3] = &unk_1E7FC6F10;
  v8 = v9;
  v7 = *(a1 + 56);
  [v3 connectWithOptions:v4 delegate:v5 completionHandler:v6];

  _Block_object_dispose(v9, 8);
}

void __75__WBSHistoryConnectionProxy_connectWithOptions_delegate_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  v9 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = v9;
    [v10 timeIntervalSinceNow];
    v14 = 136446466;
    v15 = "connection_connect_with_options";
    v16 = 2048;
    v17 = -v12;
    _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "#perf - %{public}s: %f", &v14, 0x16u);
  }

  if (v7)
  {
    v13 = [[WBSHistoryServiceDatabaseProxy alloc] initWithProxy:v7];
  }

  else
  {
    v13 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connectionProxyQueue = self->_connectionProxyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__WBSHistoryConnectionProxy_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(connectionProxyQueue, v7);
}

void __83__WBSHistoryConnectionProxy_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__WBSHistoryConnectionProxy_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7FB8300;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 finishClearingHistoryIfNecessaryWithCompletionHandler:*(a1 + 40)];
}

- (void)initializeCloudHistoryWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  connectionProxyQueue = self->_connectionProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__WBSHistoryConnectionProxy_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7378;
  v12 = configurationCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = configurationCopy;
  v10 = handlerCopy;
  dispatch_async(connectionProxyQueue, block);
}

void __87__WBSHistoryConnectionProxy_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__WBSHistoryConnectionProxy_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7FB8300;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__WBSHistoryConnectionProxy_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke_3;
  v5[3] = &unk_1E7FC6F60;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 initializeCloudHistoryWithConfiguration:v4 completionHandler:v5];
}

void __87__WBSHistoryConnectionProxy_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke_3(uint64_t a1, WBSCloudHistoryServiceProxy *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [[WBSCloudHistoryServiceProxy alloc] initWithProxy:v5];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)releaseCloudHistory:(id)history
{
  historyCopy = history;
  connectionProxyQueue = self->_connectionProxyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__WBSHistoryConnectionProxy_releaseCloudHistory___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = historyCopy;
  v6 = historyCopy;
  dispatch_async(connectionProxyQueue, v7);
}

void __49__WBSHistoryConnectionProxy_releaseCloudHistory___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxyWithErrorHandler:*(a1 + 40)];
  [v2 releaseCloudHistory:*(a1 + 40)];
}

- (void)setCompletionListVendorEndpoint:(id)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  connectionProxyQueue = self->_connectionProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__WBSHistoryConnectionProxy_setCompletionListVendorEndpoint_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7378;
  v12 = endpointCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = endpointCopy;
  v10 = handlerCopy;
  dispatch_async(connectionProxyQueue, block);
}

void __79__WBSHistoryConnectionProxy_setCompletionListVendorEndpoint_completionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) synchronousRemoteObjectProxyWithErrorHandler:a1[6]];
  [v2 setCompletionListVendorEndpoint:a1[5] completionHandler:a1[6]];
}

- (void)getCompletionListItemsForQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  connectionProxyQueue = self->_connectionProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSHistoryConnectionProxy_getCompletionListItemsForQuery_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7378;
  v12 = queryCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = queryCopy;
  v10 = handlerCopy;
  dispatch_async(connectionProxyQueue, block);
}

void __78__WBSHistoryConnectionProxy_getCompletionListItemsForQuery_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__WBSHistoryConnectionProxy_getCompletionListItemsForQuery_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7FB8300;
  v5 = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v4];
  [v3 getCompletionListItemsForQuery:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void __78__WBSHistoryConnectionProxy_getCompletionListItemsForQuery_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__WBSHistoryConnectionProxy_getCompletionListItemsForQuery_completionHandler___block_invoke_2_cold_1(v4, v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)copyAndRedactHistoryDatabasesForAllProfiles:(id)profiles completionHandler:(id)handler
{
  profilesCopy = profiles;
  handlerCopy = handler;
  connectionProxyQueue = self->_connectionProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WBSHistoryConnectionProxy_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7378;
  v12 = profilesCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = profilesCopy;
  v10 = handlerCopy;
  dispatch_sync(connectionProxyQueue, block);
}

void __91__WBSHistoryConnectionProxy_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91__WBSHistoryConnectionProxy_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7FB8300;
  v5 = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v4];
  [v3 copyAndRedactHistoryDatabasesForAllProfiles:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void __91__WBSHistoryConnectionProxy_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __91__WBSHistoryConnectionProxy_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke_2_cold_1(v4, v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __77__WBSHistoryConnectionProxy__defaultProxyErrorHandlerWithSimpleReplyHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "XPC Proxy reported: %{public}@", v7, v8, v9, v10, 2u);
}

void __78__WBSHistoryConnectionProxy_getCompletionListItemsForQuery_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to connect to history service. Returning empty completion list. (%{public}@)", v7, v8, v9, v10, 2u);
}

void __91__WBSHistoryConnectionProxy_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to connect to history service when trying to copy and redact history databases (%{public}@)", v7, v8, v9, v10, 2u);
}

@end