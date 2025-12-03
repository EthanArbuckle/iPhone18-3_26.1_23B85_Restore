@interface SYLinkContextService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_listenerEndpoint;
- (id)initForTesting:(BOOL)testing;
- (void)beginListeningToConnections;
- (void)dealloc;
- (void)fetchLinkContextsDataForUserActivityInfo:(id)info completion:(id)completion;
- (void)userDidRemoveContentItemDatas:(id)datas;
- (void)userEditDidAddContentItemDatas:(id)datas;
- (void)userWillAddLinkWithActivityData:(id)data completion:(id)completion;
@end

@implementation SYLinkContextService

- (void)beginListeningToConnections
{
  _listener = [(SYLinkContextService *)self _listener];

  if (!_listener)
  {
    _forTesting = [(SYLinkContextService *)self _forTesting];
    v5 = os_log_create("com.apple.synapse", "LinkContext");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (_forTesting)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextService: Starting Link Context Service with anonymous listener for testing", buf, 2u);
      }

      anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      if (v6)
      {
        *v13 = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextService: Starting Link Context Service", v13, 2u);
      }

      anonymousListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.link-context-service"];
    }

    v8 = anonymousListener;
    [(SYLinkContextService *)self set_listener:anonymousListener];

    _listener2 = [(SYLinkContextService *)self _listener];
    _serviceQueue = [(SYLinkContextService *)self _serviceQueue];
    [_listener2 _setQueue:_serviceQueue];

    _listener3 = [(SYLinkContextService *)self _listener];
    [_listener3 setDelegate:self];

    _listener4 = [(SYLinkContextService *)self _listener];
    [_listener4 resume];
  }
}

- (id)initForTesting:(BOOL)testing
{
  v9.receiver = self;
  v9.super_class = SYLinkContextService;
  v4 = [(SYLinkContextService *)&v9 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.synapse.LinkContextService", v5);
    serviceQueue = v4->__serviceQueue;
    v4->__serviceQueue = v6;

    v4->__forTesting = testing;
  }

  return v4;
}

- (void)dealloc
{
  _listener = [(SYLinkContextService *)self _listener];
  [_listener setDelegate:0];

  _listener2 = [(SYLinkContextService *)self _listener];
  [_listener2 invalidate];

  [(SYLinkContextService *)self set_listener:0];
  v5.receiver = self;
  v5.super_class = SYLinkContextService;
  [(SYLinkContextService *)&v5 dealloc];
}

- (void)fetchLinkContextsDataForUserActivityInfo:(id)info completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  v8 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = infoCopy;
    _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "LinkContextService: Received request to fetch link context. Activity info: %p", buf, 0xCu);
  }

  _contextsDataForTesting = [(SYLinkContextService *)self _contextsDataForTesting];

  if (_contextsDataForTesting)
  {
    _contextsDataForTesting2 = [(SYLinkContextService *)self _contextsDataForTesting];
    completionCopy[2](completionCopy, _contextsDataForTesting2, 0);
  }

  else if (infoCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__SYLinkContextService_fetchLinkContextsDataForUserActivityInfo_completion___block_invoke;
    v13[3] = &unk_27856B830;
    v14 = infoCopy;
    v15 = completionCopy;
    [SYItemIndexingManager fetchLinkContextsDataForUserActivity:v14 completion:v13];
  }

  else
  {
    v11 = os_log_create("com.apple.synapse", "LinkContext");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = 0;
      _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "LinkContextService: Finished fetch link context request for activity: %p, calling completion with no data.", buf, 0xCu);
    }

    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8], 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __76__SYLinkContextService_fetchLinkContextsDataForUserActivityInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = [v3 count];
    _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "LinkContextService: Finished fetch link context request for activity: %p. Found: %ld", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userWillAddLinkWithActivityData:(id)data completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _activeConnection = [(SYLinkContextService *)self _activeConnection];
    v14 = 138412290;
    v15 = _activeConnection;
    _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "LinkContextService: userWillAddLinkWithActivityData, activeConnection = %@", &v14, 0xCu);
  }

  _activeConnection2 = [(SYLinkContextService *)self _activeConnection];

  if (_activeConnection2)
  {
    _activeConnection3 = [(SYLinkContextService *)self _activeConnection];
    v12 = [_activeConnection3 remoteObjectProxyWithErrorHandler:&__block_literal_global_3];

    if (v12)
    {
      [v12 userWillAddLinkWithActivityData:dataCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __67__SYLinkContextService_userWillAddLinkWithActivityData_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__SYLinkContextService_userWillAddLinkWithActivityData_completion___block_invoke_cold_1();
  }
}

- (void)userDidRemoveContentItemDatas:(id)datas
{
  v13 = *MEMORY[0x277D85DE8];
  datasCopy = datas;
  v5 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _activeConnection = [(SYLinkContextService *)self _activeConnection];
    v11 = 138412290;
    v12 = _activeConnection;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextService: userDidRemoveContentItemDatas, activeConnection = %@", &v11, 0xCu);
  }

  _activeConnection2 = [(SYLinkContextService *)self _activeConnection];

  if (_activeConnection2)
  {
    _activeConnection3 = [(SYLinkContextService *)self _activeConnection];
    v9 = [_activeConnection3 remoteObjectProxyWithErrorHandler:&__block_literal_global_14];

    if (v9)
    {
      [v9 userDidRemoveContentItemDatas:datasCopy];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__SYLinkContextService_userDidRemoveContentItemDatas___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__SYLinkContextService_userWillAddLinkWithActivityData_completion___block_invoke_cold_1();
  }
}

- (void)userEditDidAddContentItemDatas:(id)datas
{
  v13 = *MEMORY[0x277D85DE8];
  datasCopy = datas;
  v5 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _activeConnection = [(SYLinkContextService *)self _activeConnection];
    v11 = 138412290;
    v12 = _activeConnection;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextService: userEditDidAddContentItemDatas, activeConnection = %@", &v11, 0xCu);
  }

  _activeConnection2 = [(SYLinkContextService *)self _activeConnection];

  if (_activeConnection2)
  {
    _activeConnection3 = [(SYLinkContextService *)self _activeConnection];
    v9 = [_activeConnection3 remoteObjectProxyWithErrorHandler:&__block_literal_global_16_0];

    if (v9)
    {
      [v9 userEditDidAddContentItemDatas:datasCopy];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__SYLinkContextService_userEditDidAddContentItemDatas___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__SYLinkContextService_userWillAddLinkWithActivityData_completion___block_invoke_cold_1();
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v31 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [SYLinkContextService listener:a2 shouldAcceptNewConnection:self];
  }

  _listener = [(SYLinkContextService *)self _listener];

  if (_listener != listenerCopy)
  {
    goto LABEL_4;
  }

  if (![(SYLinkContextService *)self _forTesting])
  {
    v19 = [connectionCopy valueForEntitlement:@"com.apple.synapse.allowLinkContextRequests"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v19 BOOLValue])
    {
      v20 = os_log_create("com.apple.synapse", "LinkContext");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SYLinkContextService listener:shouldAcceptNewConnection:];
      }

LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  _serviceQueue = [(SYLinkContextService *)self _serviceQueue];
  [connectionCopy _setQueue:_serviceQueue];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F1508];
  [connectionCopy setExportedInterface:v12];

  [connectionCopy setExportedObject:self];
  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F39F8];
  [connectionCopy setRemoteObjectInterface:v13];

  objc_initWeak(location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__SYLinkContextService_listener_shouldAcceptNewConnection___block_invoke;
  v26[3] = &unk_27856B5A0;
  objc_copyWeak(&v27, location);
  [connectionCopy setInvalidationHandler:v26];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __59__SYLinkContextService_listener_shouldAcceptNewConnection___block_invoke_2;
  v24 = &unk_27856B5A0;
  objc_copyWeak(&v25, location);
  [connectionCopy setInterruptionHandler:&v21];
  [connectionCopy resume];
  [(SYLinkContextService *)self set_activeConnection:connectionCopy];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(location);
  v10 = 1;
LABEL_7:
  v14 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    processIdentifier = [connectionCopy processIdentifier];
    v16 = @"No";
    if (v10)
    {
      v16 = @"Yes";
    }

    *location = 134218242;
    *&location[4] = processIdentifier;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_INFO, "LinkContextService: Listener should accept connection from pid %ld: %@", location, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

void __59__SYLinkContextService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained set_activeConnection:0];
}

void __59__SYLinkContextService_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained set_activeConnection:0];
}

- (id)_listenerEndpoint
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  _serviceQueue = [(SYLinkContextService *)self _serviceQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SYLinkContextService__listenerEndpoint__block_invoke;
  v6[3] = &unk_27856B858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_serviceQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __41__SYLinkContextService__listenerEndpoint__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _listener];
  v2 = [v5 endpoint];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __67__SYLinkContextService_userWillAddLinkWithActivityData_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_225901000, v0, v1, "LinkContextService: Error creating client service proxy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYLinkContextService.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"newConnection"}];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_225901000, v0, v1, "LinkContextService: Refusing connection from non-entitled client with connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end