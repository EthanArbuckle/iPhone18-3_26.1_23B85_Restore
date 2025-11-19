@interface SYLinkContextService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_listenerEndpoint;
- (id)initForTesting:(BOOL)a3;
- (void)beginListeningToConnections;
- (void)dealloc;
- (void)fetchLinkContextsDataForUserActivityInfo:(id)a3 completion:(id)a4;
- (void)userDidRemoveContentItemDatas:(id)a3;
- (void)userEditDidAddContentItemDatas:(id)a3;
- (void)userWillAddLinkWithActivityData:(id)a3 completion:(id)a4;
@end

@implementation SYLinkContextService

- (void)beginListeningToConnections
{
  v3 = [(SYLinkContextService *)self _listener];

  if (!v3)
  {
    v4 = [(SYLinkContextService *)self _forTesting];
    v5 = os_log_create("com.apple.synapse", "LinkContext");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextService: Starting Link Context Service with anonymous listener for testing", buf, 2u);
      }

      v7 = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      if (v6)
      {
        *v13 = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextService: Starting Link Context Service", v13, 2u);
      }

      v7 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.link-context-service"];
    }

    v8 = v7;
    [(SYLinkContextService *)self set_listener:v7];

    v9 = [(SYLinkContextService *)self _listener];
    v10 = [(SYLinkContextService *)self _serviceQueue];
    [v9 _setQueue:v10];

    v11 = [(SYLinkContextService *)self _listener];
    [v11 setDelegate:self];

    v12 = [(SYLinkContextService *)self _listener];
    [v12 resume];
  }
}

- (id)initForTesting:(BOOL)a3
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

    v4->__forTesting = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(SYLinkContextService *)self _listener];
  [v3 setDelegate:0];

  v4 = [(SYLinkContextService *)self _listener];
  [v4 invalidate];

  [(SYLinkContextService *)self set_listener:0];
  v5.receiver = self;
  v5.super_class = SYLinkContextService;
  [(SYLinkContextService *)&v5 dealloc];
}

- (void)fetchLinkContextsDataForUserActivityInfo:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v6;
    _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "LinkContextService: Received request to fetch link context. Activity info: %p", buf, 0xCu);
  }

  v9 = [(SYLinkContextService *)self _contextsDataForTesting];

  if (v9)
  {
    v10 = [(SYLinkContextService *)self _contextsDataForTesting];
    v7[2](v7, v10, 0);
  }

  else if (v6)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__SYLinkContextService_fetchLinkContextsDataForUserActivityInfo_completion___block_invoke;
    v13[3] = &unk_27856B830;
    v14 = v6;
    v15 = v7;
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

    v7[2](v7, MEMORY[0x277CBEBF8], 0);
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

- (void)userWillAddLinkWithActivityData:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SYLinkContextService *)self _activeConnection];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "LinkContextService: userWillAddLinkWithActivityData, activeConnection = %@", &v14, 0xCu);
  }

  v10 = [(SYLinkContextService *)self _activeConnection];

  if (v10)
  {
    v11 = [(SYLinkContextService *)self _activeConnection];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_3];

    if (v12)
    {
      [v12 userWillAddLinkWithActivityData:v6 completion:v7];
    }

    else if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else if (v7)
  {
    v7[2](v7, 0);
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

- (void)userDidRemoveContentItemDatas:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SYLinkContextService *)self _activeConnection];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextService: userDidRemoveContentItemDatas, activeConnection = %@", &v11, 0xCu);
  }

  v7 = [(SYLinkContextService *)self _activeConnection];

  if (v7)
  {
    v8 = [(SYLinkContextService *)self _activeConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_14];

    if (v9)
    {
      [v9 userDidRemoveContentItemDatas:v4];
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

- (void)userEditDidAddContentItemDatas:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SYLinkContextService *)self _activeConnection];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextService: userEditDidAddContentItemDatas, activeConnection = %@", &v11, 0xCu);
  }

  v7 = [(SYLinkContextService *)self _activeConnection];

  if (v7)
  {
    v8 = [(SYLinkContextService *)self _activeConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_16_0];

    if (v9)
    {
      [v9 userEditDidAddContentItemDatas:v4];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SYLinkContextService listener:a2 shouldAcceptNewConnection:self];
  }

  v9 = [(SYLinkContextService *)self _listener];

  if (v9 != v7)
  {
    goto LABEL_4;
  }

  if (![(SYLinkContextService *)self _forTesting])
  {
    v19 = [v8 valueForEntitlement:@"com.apple.synapse.allowLinkContextRequests"];
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

  v11 = [(SYLinkContextService *)self _serviceQueue];
  [v8 _setQueue:v11];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F1508];
  [v8 setExportedInterface:v12];

  [v8 setExportedObject:self];
  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F39F8];
  [v8 setRemoteObjectInterface:v13];

  objc_initWeak(location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__SYLinkContextService_listener_shouldAcceptNewConnection___block_invoke;
  v26[3] = &unk_27856B5A0;
  objc_copyWeak(&v27, location);
  [v8 setInvalidationHandler:v26];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __59__SYLinkContextService_listener_shouldAcceptNewConnection___block_invoke_2;
  v24 = &unk_27856B5A0;
  objc_copyWeak(&v25, location);
  [v8 setInterruptionHandler:&v21];
  [v8 resume];
  [(SYLinkContextService *)self set_activeConnection:v8];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(location);
  v10 = 1;
LABEL_7:
  v14 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v8 processIdentifier];
    v16 = @"No";
    if (v10)
    {
      v16 = @"Yes";
    }

    *location = 134218242;
    *&location[4] = v15;
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
  v3 = [(SYLinkContextService *)self _serviceQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SYLinkContextService__listenerEndpoint__block_invoke;
  v6[3] = &unk_27856B858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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