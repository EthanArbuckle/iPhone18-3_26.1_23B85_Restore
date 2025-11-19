@interface SUCoreConnectServer
- (BOOL)isConnectionEntitled:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSString)description;
- (SUCoreConnectServer)initWithServerPolicy:(id)a3;
- (id)_clientIDForConnection:(id)a3;
- (id)_connectionsForClientID:(id)a3;
- (id)_getAllObserverConnections;
- (void)_informObserversOfCompletionReplyWithMessage:(id)a3 error:(id)a4;
- (void)_removeConnection:(id)a3;
- (void)_setConnection:(id)a3 forClientID:(id)a4;
- (void)connectProtocolFromClientSendServerMessage:(id)a3 proxyObject:(id)a4 withReply:(id)a5;
- (void)connectServerSendClientMessage:(id)a3;
- (void)setupListenerAndResumeConnection;
- (void)suspendListenerAndInvalidate;
@end

@implementation SUCoreConnectServer

- (id)_getAllObserverConnections
{
  v3 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  dispatch_assert_queue_V2(v3);

  return [(SUCoreConnectServer *)self observerConnections];
}

- (SUCoreConnectServer)initWithServerPolicy:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = SUCoreConnectServer;
  v6 = [(SUCoreConnectServer *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionPolicy, a3);
    v8 = objc_alloc(MEMORY[0x277D64460]);
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 serviceName];
    v11 = [v9 stringWithFormat:@"SERVER-%@", v10];
    v12 = [v8 initWithCategory:v11];
    logger = v7->_logger;
    v7->_logger = v12;

    v14 = [@"com.apple.SUCoreConnect.ConnectionsAccessQueue" UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
    connectionsAccessQueue = v7->_connectionsAccessQueue;
    v7->_connectionsAccessQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connections = v7->_connections;
    v7->_connections = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observerConnections = v7->_observerConnections;
    v7->_observerConnections = v20;

    v22 = [@"com.apple.SUCoreConnect.ConnectionSendMessageQueue" UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(v22, v23);
    connectionSendMessageQueue = v7->_connectionSendMessageQueue;
    v7->_connectionSendMessageQueue = v24;
  }

  return v7;
}

- (BOOL)isConnectionEntitled:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreConnectServer *)self connectionPolicy];

  if (!v5)
  {
    v24 = [(SUCoreConnectServer *)self logger];
    v13 = [v24 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectServer isConnectionEntitled:];
    }

    goto LABEL_30;
  }

  v6 = [(SUCoreConnectServer *)self connectionPolicy];
  v7 = [v6 entitlements];
  if (!v7)
  {

LABEL_20:
    v25 = [(SUCoreConnectServer *)self logger];
    v13 = [v25 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectServer isConnectionEntitled:];
    }

LABEL_30:
    v23 = 0;
    goto LABEL_31;
  }

  v8 = v7;
  v9 = [(SUCoreConnectServer *)self connectionPolicy];
  v10 = [v9 entitlements];
  v11 = [v10 count];

  if (!v11)
  {
    goto LABEL_20;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [(SUCoreConnectServer *)self connectionPolicy];
  v13 = [v12 entitlements];

  v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v14)
  {
    v23 = 1;
    goto LABEL_31;
  }

  v16 = v14;
  v17 = *v34;
  *&v15 = 138543618;
  v32 = v15;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v34 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v33 + 1) + 8 * i);
      v20 = [(SUCoreConnectServer *)self logger];
      v21 = [v20 oslog];

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v32;
        v38 = v4;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&dword_22E2D6000, v21, OS_LOG_TYPE_DEFAULT, "[EntitlementValidation](%{public}@)(%@) Checking for entitlement", buf, 0x16u);
      }

      v22 = [v4 valueForEntitlement:v19];
      if (!v22)
      {
        v26 = [(SUCoreConnectServer *)self logger];
        v27 = [v26 oslog];

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SUCoreConnectServer isConnectionEntitled:];
        }

        goto LABEL_29;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = [(SUCoreConnectServer *)self logger];
        v27 = [v28 oslog];

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SUCoreConnectServer isConnectionEntitled:];
        }

        goto LABEL_29;
      }

      if (([v22 BOOLValue] & 1) == 0)
      {
        v29 = [(SUCoreConnectServer *)self logger];
        v27 = [v29 oslog];

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SUCoreConnectServer isConnectionEntitled:];
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v16 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
    v23 = 1;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreConnectServer *)self connectionPolicy];
  v9 = [v8 serverDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SUCoreConnectServer *)self connectionPolicy];
    v12 = [v11 serverDelegate];
    v13 = [v12 isConnectionAuthorized:v7];

    if ((v13 & 1) == 0)
    {
      v14 = [(SUCoreConnectServer *)self logger];
      v15 = [v14 oslog];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SUCoreConnectServer listener:shouldAcceptNewConnection:];
      }

LABEL_9:

      [v7 invalidate];
      v28 = 0;
      goto LABEL_10;
    }
  }

  else if (![(SUCoreConnectServer *)self isConnectionEntitled:v7])
  {
    v29 = [(SUCoreConnectServer *)self logger];
    v15 = [v29 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectServer listener:shouldAcceptNewConnection:];
    }

    goto LABEL_9;
  }

  v16 = [(SUCoreConnectServer *)self connectionPolicy];
  v17 = [v16 connectionQueue];
  [v7 _setQueue:v17];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3042000000;
  v40[3] = __Block_byref_object_copy__0;
  v40[4] = __Block_byref_object_dispose__0;
  objc_initWeak(v41, self);
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3042000000;
  v38[3] = __Block_byref_object_copy__0;
  v38[4] = __Block_byref_object_dispose__0;
  objc_initWeak(&v39, v7);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke;
  v37[3] = &unk_2787BC9B8;
  v37[4] = v40;
  v37[5] = v38;
  v18 = MEMORY[0x2318E52D0](v37);
  [v7 setInterruptionHandler:v18];
  v32 = v18;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v36[3] = &unk_2787BC9B8;
  v36[4] = v40;
  v36[5] = v38;
  v19 = MEMORY[0x2318E52D0](v36);
  [v7 setInvalidationHandler:v19];
  v31 = v6;
  v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284217B08];
  v21 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284218160];
  v22 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v20 setClasses:v22 forSelector:sel_connectProtocolFromClientSendServerMessage_proxyObject_withReply_ argumentIndex:0 ofReply:0];

  v23 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v20 setClasses:v23 forSelector:sel_connectProtocolFromClientSendServerMessage_proxyObject_withReply_ argumentIndex:1 ofReply:0];

  v24 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v20 setClasses:v24 forSelector:sel_connectProtocolFromClientSendServerMessage_proxyObject_withReply_ argumentIndex:0 ofReply:1];

  v25 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v20 setClasses:v25 forSelector:sel_connectProtocolFromClientSendServerMessage_proxyObject_withReply_ argumentIndex:1 ofReply:1];

  [v20 setInterface:v21 forSelector:sel_connectProtocolFromClientSendServerMessage_proxyObject_withReply_ argumentIndex:1 ofReply:0];
  [v7 setExportedInterface:v20];
  [v7 setExportedObject:self];
  v26 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284218650];
  [v7 setRemoteObjectInterface:v26];
  [v7 resume];
  v27 = [(SUCoreConnectServer *)self connectionSendMessageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2_85;
  block[3] = &unk_2787BC990;
  v34 = v7;
  v35 = self;
  dispatch_async(v27, block);

  _Block_object_dispose(v38, 8);
  objc_destroyWeak(&v39);
  _Block_object_dispose(v40, 8);
  objc_destroyWeak(v41);
  v28 = 1;
  v6 = v31;
LABEL_10:

  return v28;
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v3 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [WeakRetained logger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v4;
        _os_log_impl(&dword_22E2D6000, v6, OS_LOG_TYPE_DEFAULT, "[InterruptedHandler](%{public}@) Client connection interrupted, removing from connections list", buf, 0xCu);
      }

      v7 = [WeakRetained connectionsAccessQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_13;
      v12[3] = &unk_2787BC990;
      v13 = WeakRetained;
      v14 = v4;
      dispatch_async(v7, v12);

      v8 = v13;
    }

    else
    {
      v10 = [MEMORY[0x277D64460] sharedLogger];
      v8 = [v10 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v9 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_cold_2();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v3 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [WeakRetained logger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v4;
        _os_log_impl(&dword_22E2D6000, v6, OS_LOG_TYPE_DEFAULT, "[InvalidatedHandler](%{public}@) Client connection invalidated, removing from connections list", buf, 0xCu);
      }

      v7 = [WeakRetained connectionsAccessQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_15;
      v12[3] = &unk_2787BC990;
      v13 = WeakRetained;
      v14 = v4;
      dispatch_async(v7, v12);

      v8 = v13;
    }

    else
    {
      v10 = [MEMORY[0x277D64460] sharedLogger];
      v8 = [v10 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2_cold_1();
      }
    }
  }

  else
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v9 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2_cold_2();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2_85(int8x16_t *a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_3;
  v8[3] = &unk_2787BC9E0;
  v4 = a1[2];
  v9 = vextq_s8(v4, v4, 8uLL);
  v2 = [v4.i64[0] remoteObjectProxyWithErrorHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_87;
  v6[3] = &unk_2787BCA30;
  v5 = a1[2];
  v3 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectProtocolFromServerRequestClientID:v6];
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_3_cold_1(a1);
  }

  [*(a1 + 40) invalidate];
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionsAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2_88;
  block[3] = &unk_2787BCA08;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

- (void)setupListenerAndResumeConnection
{
  v3 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  dispatch_assert_queue_not_V2(v3);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUCoreConnectServer_setupListenerAndResumeConnection__block_invoke;
  block[3] = &unk_2787BCA58;
  block[4] = self;
  if (setupListenerAndResumeConnection_onceToken != -1)
  {
    dispatch_once(&setupListenerAndResumeConnection_onceToken, block);
  }
}

void __55__SUCoreConnectServer_setupListenerAndResumeConnection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) connectionPolicy];
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_22E2D6000, v3, OS_LOG_TYPE_DEFAULT, "[ListenerStartup] Setting up listener, enabling transactions, and resuming connection using policy: %{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) connectionsAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUCoreConnectServer_setupListenerAndResumeConnection__block_invoke_90;
  block[3] = &unk_2787BCA58;
  block[4] = *(a1 + 32);
  dispatch_sync(v5, block);

  v6 = *MEMORY[0x277D85DE8];
}

void __55__SUCoreConnectServer_setupListenerAndResumeConnection__block_invoke_90(uint64_t a1)
{
  [MEMORY[0x277CCAE98] enableTransactions];
  v2 = objc_alloc(MEMORY[0x277CCAE98]);
  v3 = [*(a1 + 32) connectionPolicy];
  v4 = [v3 serviceName];
  v5 = [v2 initWithMachServiceName:v4];

  [*(a1 + 32) setListener:v5];
  [v5 setDelegate:*(a1 + 32)];
  v6 = [*(a1 + 32) connectionPolicy];
  v7 = [v6 connectionQueue];
  [v5 _setQueue:v7];

  [v5 resume];
  v8 = [*(a1 + 32) logger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22E2D6000, v9, OS_LOG_TYPE_DEFAULT, "[ListenerStartup] Listener connection resumed, setup completed.", v10, 2u);
  }
}

- (void)suspendListenerAndInvalidate
{
  v3 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  dispatch_assert_queue_not_V2(v3);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUCoreConnectServer_suspendListenerAndInvalidate__block_invoke;
  block[3] = &unk_2787BCA58;
  block[4] = self;
  if (suspendListenerAndInvalidate_onceToken != -1)
  {
    dispatch_once(&suspendListenerAndInvalidate_onceToken, block);
  }
}

void __51__SUCoreConnectServer_suspendListenerAndInvalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionsAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUCoreConnectServer_suspendListenerAndInvalidate__block_invoke_2;
  block[3] = &unk_2787BCA58;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

void __51__SUCoreConnectServer_suspendListenerAndInvalidate__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) listener];
  [v2 suspend];

  v3 = [*(a1 + 32) listener];
  [v3 invalidate];

  [*(a1 + 32) setListener:0];
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22E2D6000, v5, OS_LOG_TYPE_DEFAULT, "[ListenerSuspend] Listener connection suspended and invalidated.", v6, 2u);
  }
}

- (void)connectProtocolFromClientSendServerMessage:(id)a3 proxyObject:(id)a4 withReply:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUCoreConnectServer *)self logger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"YES";
    if (v9)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[14] = v14;
    *&buf[12] = 2114;
    if (!v10)
    {
      v13 = @"NO";
    }

    *&buf[22] = 2114;
    *&buf[24] = v13;
    _os_log_impl(&dword_22E2D6000, v12, OS_LOG_TYPE_DEFAULT, "[SendServerMessage] Received message: %{public}@ (proxyObject:%{public}@, reply:%{public}@)", buf, 0x20u);
  }

  v15 = [MEMORY[0x277CCAE80] currentConnection];
  v16 = [v8 clientID];
  v17 = [v16 isEqualToString:@"*"];

  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[SendServerMessage](%@) Observer clients cannot send messages to server", v15];
    v19 = [MEMORY[0x277D643F8] sharedCore];
    v20 = [v19 buildError:8906 underlying:0 description:v18];

    [(SUCoreConnectServer *)self _informObserversOfCompletionReplyWithMessage:v8 error:v20];
    v21 = [(SUCoreConnectServer *)self logger];
    v22 = [v21 oslog];

    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v23)
      {
        [SUCoreConnectServer connectProtocolFromClientSendServerMessage:proxyObject:withReply:];
      }

LABEL_18:

      v10[2](v10, 0, v20);
LABEL_31:

      goto LABEL_37;
    }

    if (v23)
    {
      [SUCoreConnectServer connectProtocolFromClientSendServerMessage:proxyObject:withReply:];
    }

    goto LABEL_30;
  }

  v24 = [(SUCoreConnectServer *)self connectionPolicy];
  v25 = [v24 serverDelegate];
  v26 = objc_opt_respondsToSelector();

  if ((v26 & 1) == 0)
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[SendServerMessage](%@) handleMessage selector is not implemented by server delegate", v15];
    v27 = [MEMORY[0x277D643F8] sharedCore];
    v20 = [v27 buildError:8113 underlying:0 description:v18];

    [(SUCoreConnectServer *)self _informObserversOfCompletionReplyWithMessage:v8 error:v20];
    v28 = [(SUCoreConnectServer *)self logger];
    v22 = [v28 oslog];

    v29 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v29)
      {
        [SUCoreConnectServer connectProtocolFromClientSendServerMessage:proxyObject:withReply:];
      }

      goto LABEL_18;
    }

    if (v29)
    {
      [SUCoreConnectServer connectProtocolFromClientSendServerMessage:proxyObject:withReply:];
    }

LABEL_30:

    goto LABEL_31;
  }

  if (v15)
  {
    [v15 auditToken];
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  *buf = v49;
  *&buf[16] = v50;
  [v8 setClientConnectionAuditToken:buf];
  v30 = [(SUCoreConnectServer *)self connectionPolicy];
  v31 = [v30 serverDelegate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    v33 = [(SUCoreConnectServer *)self connectionPolicy];
    v34 = [v33 serverDelegate];
    v35 = [v34 isConnection:v15 authorizedForMessage:v8];

    if ((v35 & 1) == 0)
    {
      v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[SendServerMessage](%@) client is not entitled for specific message request", v15];
      v37 = [MEMORY[0x277D643F8] sharedCore];
      v38 = [v37 buildError:8113 underlying:0 description:v36];

      [(SUCoreConnectServer *)self _informObserversOfCompletionReplyWithMessage:v8 error:v38];
      v39 = [(SUCoreConnectServer *)self logger];
      v40 = [v39 oslog];

      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (v41)
        {
          [SUCoreConnectServer connectProtocolFromClientSendServerMessage:proxyObject:withReply:];
        }

        v10[2](v10, 0, v38);
      }

      else
      {
        if (v41)
        {
          [SUCoreConnectServer connectProtocolFromClientSendServerMessage:proxyObject:withReply:];
        }
      }
    }
  }

  [v8 setBoostable:1];
  v42 = [(SUCoreConnectServer *)self connectionPolicy];
  v43 = [v42 serverDelegate];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __88__SUCoreConnectServer_connectProtocolFromClientSendServerMessage_proxyObject_withReply___block_invoke;
  v45[3] = &unk_2787BCA80;
  v45[4] = self;
  v46 = v8;
  v48 = v10;
  v47 = v15;
  [v43 handleMessage:v46 proxyObject:v9 reply:v45];

LABEL_37:
  v44 = *MEMORY[0x277D85DE8];
}

void __88__SUCoreConnectServer_connectProtocolFromClientSendServerMessage_proxyObject_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _informObserversOfCompletionReplyWithMessage:*(a1 + 40) error:v6];
  [*(a1 + 40) setBoostable:0];
  v7 = *(a1 + 56);
  v8 = [*(a1 + 32) logger];
  v9 = [v8 oslog];

  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = [v6 checkedDescription];
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_22E2D6000, v9, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) connectProtocolFromClientSendServerMessage calling completion block, response:%{public}@ error:%{public}@", &v16, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (v10)
    {
      v13 = *(a1 + 48);
      v14 = [v6 checkedDescription];
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_22E2D6000, v9, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) connectProtocolFromClientSendServerMessage was not provided a reply block, response:%{public}@ error:%{public}@", &v16, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_informObserversOfCompletionReplyWithMessage:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SUCoreConnectServer__informObserversOfCompletionReplyWithMessage_error___block_invoke;
  block[3] = &unk_2787BCA08;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __74__SUCoreConnectServer__informObserversOfCompletionReplyWithMessage_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setSafeObject:*(a1 + 32) forKey:@"SUCoreConnectMonitorReplyMessage"];
  [v2 setSafeObject:*(a1 + 40) forKey:@"SUCoreConnectMonitorReplyError"];
  v3 = [SUCoreConnectMessage alloc];
  v4 = [*(a1 + 32) messageType];
  v5 = [*(a1 + 32) messageName];
  v6 = [*(a1 + 32) clientID];
  v7 = [*(a1 + 32) version];
  v8 = [(SUCoreConnectMessage *)v3 initWithType:v4 messageName:v5 clientID:v6 version:v7 message:v2];

  v9 = [*(a1 + 48) _getAllObserverConnections];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v21 = v10;
    v22 = v2;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [*(a1 + 48) logger];
          v17 = [v16 oslog];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v31 = v15;
            _os_log_impl(&dword_22E2D6000, v17, OS_LOG_TYPE_DEFAULT, "[InformObserversOfReplyCompletion] Attempting to send message (no reply expected) to observer client with connection %{public}@", buf, 0xCu);
          }

          v18 = [*(a1 + 48) connectionSendMessageQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __74__SUCoreConnectServer__informObserversOfCompletionReplyWithMessage_error___block_invoke_114;
          block[3] = &unk_2787BCA08;
          v19 = *(a1 + 48);
          block[4] = v15;
          block[5] = v19;
          v25 = v8;
          dispatch_async(v18, block);
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v12);
    }

    v10 = v21;
    v2 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __74__SUCoreConnectServer__informObserversOfCompletionReplyWithMessage_error___block_invoke_114(int8x16_t *a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__SUCoreConnectServer__informObserversOfCompletionReplyWithMessage_error___block_invoke_2;
  v4[3] = &unk_2787BC9E0;
  v2 = a1[2];
  v5 = vextq_s8(v2, v2, 8uLL);
  v3 = [v2.i64[0] remoteObjectProxyWithErrorHandler:v4];
  [v3 connectProtocolFromServerSendClientMessage:a1[3].i64[0]];
}

void __74__SUCoreConnectServer__informObserversOfCompletionReplyWithMessage_error___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [v3 checkedDescription];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_22E2D6000, v5, OS_LOG_TYPE_DEFAULT, "[InformObserversOfReplyCompletion] ErrorHandler: Connection failed (no completion was expected to be called) for observer client connection %{public}@ with error %{public}@", &v9, 0x16u);
  }

  [*(a1 + 40) invalidate];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectServerSendClientMessage:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke;
  v7[3] = &unk_2787BC990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138543362;
    v53 = v4;
    _os_log_impl(&dword_22E2D6000, v3, OS_LOG_TYPE_DEFAULT, "[SendClientMessage] Method called to send message: %{public}@", buf, 0xCu);
  }

  v36 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientID];
  v7 = [v5 _connectionsForClientID:v6];

  if (v7)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v8)
    {
      v9 = v8;
      v34 = v7;
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          v13 = [*(a1 + 32) logger];
          v14 = [v13 oslog];

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [*v36 clientID];
            *buf = 138543618;
            v53 = v15;
            v54 = 2114;
            v55 = v12;
            _os_log_impl(&dword_22E2D6000, v14, OS_LOG_TYPE_DEFAULT, "[SendClientMessage] Attempting to send message (no reply expected) to client %{public}@ with connection %{public}@", buf, 0x16u);
          }

          v16 = [*(a1 + 32) connectionSendMessageQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_115;
          block[3] = &unk_2787BCA08;
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          block[4] = v12;
          block[5] = v17;
          v46 = v18;
          dispatch_async(v16, block);
        }

        v9 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v9);
      v7 = v34;
    }
  }

  else
  {
    v19 = [*(a1 + 32) logger];
    v20 = [v19 oslog];

    obj = v20;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_cold_1(v36);
    }
  }

  v21 = [*(a1 + 32) _getAllObserverConnections];
  v22 = v21;
  if (v21 && [v21 count])
  {
    v35 = v7;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obja = v22;
    v23 = [obja countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v41 + 1) + 8 * j);
          v28 = [*(a1 + 32) logger];
          v29 = [v28 oslog];

          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v53 = v27;
            _os_log_impl(&dword_22E2D6000, v29, OS_LOG_TYPE_DEFAULT, "[SendClientMessage] Attempting to send message (no reply expected) to observer client with connection %{public}@", buf, 0xCu);
          }

          v30 = [*(a1 + 32) connectionSendMessageQueue];
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_116;
          v39[3] = &unk_2787BCA08;
          v31 = *(a1 + 32);
          v32 = *(a1 + 40);
          v39[4] = v27;
          v39[5] = v31;
          v40 = v32;
          dispatch_async(v30, v39);
        }

        v24 = [obja countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v24);
    }

    v7 = v35;
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_115(void *a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_2;
  v7[3] = &unk_2787BCAA8;
  v2 = a1[4];
  v3 = a1[6];
  v7[4] = a1[5];
  v4 = v3;
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  v6 = [v2 remoteObjectProxyWithErrorHandler:v7];
  [v6 connectProtocolFromServerSendClientMessage:a1[6]];
}

void __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_2_cold_1(a1, v3);
  }

  [*(a1 + 48) invalidate];
}

void __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_116(int8x16_t *a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_2_117;
  v4[3] = &unk_2787BC9E0;
  v2 = a1[2];
  v5 = vextq_s8(v2, v2, 8uLL);
  v3 = [v2.i64[0] remoteObjectProxyWithErrorHandler:v4];
  [v3 connectProtocolFromServerSendClientMessage:a1[3].i64[0]];
}

void __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_2_117(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_2_117_cold_1(a1, v3);
  }

  [*(a1 + 40) invalidate];
}

- (void)_setConnection:(id)a3 forClientID:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    if ([v7 isEqualToString:@"*"])
    {
      objc_initWeak(&v25, v6);
      v9 = [(SUCoreConnectServer *)self observerConnections];
      WeakRetained = objc_loadWeakRetained(&v25);
      [v9 addObject:WeakRetained];

      objc_destroyWeak(&v25);
    }

    else
    {
      v13 = [(SUCoreConnectServer *)self connections];
      v14 = [v13 safeObjectForKey:v7 ofClass:objc_opt_class()];

      if (v14)
      {
        v15 = [(SUCoreConnectServer *)self logger];
        v16 = [v15 oslog];

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 134218242;
          v26 = [v14 count];
          v27 = 2114;
          v28 = v7;
          _os_log_impl(&dword_22E2D6000, v16, OS_LOG_TYPE_DEFAULT, "[SetConnection] Found %lu existing connections for clientID: %{public}@", &v25, 0x16u);
        }

        if (([v14 containsObject:v6] & 1) == 0)
        {
          objc_initWeak(&v25, v6);
          v17 = [(SUCoreConnectServer *)self connections];
          v18 = objc_loadWeakRetained(&v25);
          v19 = [v14 setByAddingObject:v18];
          [v17 setSafeObject:v19 forKey:v7];

          objc_destroyWeak(&v25);
        }
      }

      else
      {
        objc_initWeak(&v25, v6);
        v20 = [(SUCoreConnectServer *)self connections];
        v21 = MEMORY[0x277CBEB98];
        v22 = objc_loadWeakRetained(&v25);
        v23 = [v21 setWithObject:v22];
        [v20 setSafeObject:v23 forKey:v7];

        objc_destroyWeak(&v25);
      }
    }
  }

  else
  {
    v11 = [(SUCoreConnectServer *)self logger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectServer _setConnection:forClientID:];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_removeConnection:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(SUCoreConnectServer *)self observerConnections];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = [(SUCoreConnectServer *)self observerConnections];
      [v8 removeObject:v4];

      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v9 = [(SUCoreConnectServer *)self _clientIDForConnection:v4];
  if (v9)
  {
    v10 = [(SUCoreConnectServer *)self connections];
    v11 = [v10 safeObjectForKey:v9 ofClass:objc_opt_class()];
    v12 = [v11 mutableCopy];

    if (v4 && [v12 containsObject:v4])
    {
      [v12 removeObject:v4];
    }

    v13 = [v12 count];
    v14 = [(SUCoreConnectServer *)self connections];
    v15 = v14;
    if (v13)
    {
      [v14 setSafeObject:v12 forKey:v9];
    }

    else
    {
      [v14 removeObjectForKey:v9];
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_17;
    }

    v16 = [(SUCoreConnectServer *)self logger];
    v12 = [v16 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectServer _removeConnection:];
    }
  }

LABEL_17:
  v17 = [(SUCoreConnectServer *)self connectionPolicy];
  v18 = [v17 serverDelegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(SUCoreConnectServer *)self connectionSendMessageQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__SUCoreConnectServer__removeConnection___block_invoke;
    v21[3] = &unk_2787BC990;
    v21[4] = self;
    v22 = v9;
    dispatch_async(v20, v21);
  }
}

void __41__SUCoreConnectServer__removeConnection___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) connectionPolicy];
  v2 = [v3 serverDelegate];
  [v2 connectionClosedForClientID:*(a1 + 40)];
}

- (id)_connectionsForClientID:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreConnectServer *)self connections];
  v7 = [v6 safeObjectForKey:v4 ofClass:objc_opt_class()];

  if (!v7)
  {
    v8 = [(SUCoreConnectServer *)self logger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectServer _connectionsForClientID:?];
    }
  }

  return v7;
}

- (id)_clientIDForConnection:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreConnectServer *)self connectionsAccessQueue];
  dispatch_assert_queue_V2(v5);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = self;
  obj = [(SUCoreConnectServer *)self connections];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [(SUCoreConnectServer *)v23 connections];
        v13 = [v12 safeObjectForKey:v11 ofClass:objc_opt_class()];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v25;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([v4 isEqual:*(*(&v24 + 1) + 8 * j)])
              {
                v19 = v11;

                v8 = v19;
                goto LABEL_16;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUCoreConnectServer *)self connectionPolicy];
  v4 = [v2 stringWithFormat:@"SUCoreConnectServer(connectionPolicy:%@)", v3];

  return v4;
}

- (void)isConnectionEntitled:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_22E2D6000, v0, v1, "[EntitlementValidation](%{public}@)(%@) New connection's entitlement is not a BOOLean");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isConnectionEntitled:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_22E2D6000, v0, v1, "[EntitlementValidation](%{public}@)(%@) New connection's value for entitlement is false");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isConnectionEntitled:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_22E2D6000, v0, v1, "[EntitlementValidation](%{public}@)(%@) Client process does not have the entitlement");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isConnectionEntitled:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isConnectionEntitled:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__SUCoreConnectServer_listener_shouldAcceptNewConnection___block_invoke_3_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  *v5 = v1;
  OUTLINED_FUNCTION_2(&dword_22E2D6000, v1, v2, "[ListenerNewConnection](%{public}@) ErrorHandler: Failed to receive clientID when requested for new connection, error: %{public}@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)connectProtocolFromClientSendServerMessage:proxyObject:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_9(v1 v2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)connectProtocolFromClientSendServerMessage:proxyObject:withReply:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_9(v1 v2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)connectProtocolFromClientSendServerMessage:proxyObject:withReply:.cold.5()
{
  OUTLINED_FUNCTION_7();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_9(v1 v2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)connectProtocolFromClientSendServerMessage:proxyObject:withReply:.cold.6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(&dword_22E2D6000, v0, v1, "[SendServerMessage](%{public}@) Observer clients cannot send messages to server, error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 clientID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 40) clientID];
  v5 = *(a1 + 48);
  v6 = [a2 checkedDescription];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

void __54__SUCoreConnectServer_connectServerSendClientMessage___block_invoke_2_117_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [a2 checkedDescription];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setConnection:forClientID:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connectionsForClientID:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connections];
  [v1 count];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end