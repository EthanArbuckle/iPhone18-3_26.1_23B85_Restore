@interface SUCoreConnectClient
+ (id)_sharedClientLogger;
- (BOOL)_connectMessageMatchesClient:(id)a3 errorPtr:(id *)a4;
- (SUCoreConnectClient)initWithClientPolicy:(id)a3;
- (id)_internalConnectToServer;
- (id)connectClientSendSynchronousServerMessage:(id)a3 proxyObject:(id)a4 errorPtr:(id *)a5;
- (void)_droppedConnection:(id)a3;
- (void)_invalidateConnectionIfNonPersistent:(id)a3;
- (void)connectClientSendServerMessage:(id)a3 proxyObject:(id)a4 withReply:(id)a5;
- (void)connectProtocolFromServerRequestClientID:(id)a3;
- (void)connectProtocolFromServerSendClientMessage:(id)a3 reply:(id)a4;
- (void)connectToServerWithCompletion:(id)a3;
- (void)connectToServerWithSynchronousCompletion:(id)a3;
- (void)dealloc;
- (void)forceCloseConnection;
@end

@implementation SUCoreConnectClient

- (id)_internalConnectToServer
{
  v47 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(SUCoreConnectClient *)self policy];
  if ([v3 usesPersistentXPCConnections])
  {
    v4 = [(SUCoreConnectClient *)self serverConnection];

    if (v4)
    {
      v5 = [(SUCoreConnectClient *)self serverConnection];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v6 = objc_alloc(MEMORY[0x277CCAE80]);
  v7 = [(SUCoreConnectClient *)self policy];
  v8 = [v7 serviceName];
  v9 = [v6 initWithMachServiceName:v8 options:0];

  v10 = [@"com.apple.SUCoreConnect.ServerConnectionQueue" UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(v10, v11);

  [v9 _setQueue:v12];
  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284218650];
  v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284217B08];
  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284218160];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3042000000;
  v43[3] = __Block_byref_object_copy__2;
  v43[4] = __Block_byref_object_dispose__2;
  objc_initWeak(&v44, self);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __47__SUCoreConnectClient__internalConnectToServer__block_invoke;
  v40[3] = &unk_2787BC968;
  v42 = v43;
  v16 = v9;
  v41 = v16;
  v36 = MEMORY[0x2318E52D0](v40);
  [v16 setInvalidationHandler:v36];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __47__SUCoreConnectClient__internalConnectToServer__block_invoke_87;
  v37[3] = &unk_2787BC968;
  v39 = v43;
  v17 = v16;
  v38 = v17;
  v18 = MEMORY[0x2318E52D0](v37);
  [v17 setInterruptionHandler:v18];
  v19 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v13 setClasses:v19 forSelector:sel_connectProtocolFromServerSendClientMessage_reply_ argumentIndex:0 ofReply:0];

  v20 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v13 setClasses:v20 forSelector:sel_connectProtocolFromServerSendClientMessage_reply_ argumentIndex:0 ofReply:1];

  v21 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v13 setClasses:v21 forSelector:sel_connectProtocolFromServerSendClientMessage_reply_ argumentIndex:1 ofReply:1];

  v22 = [(SUCoreConnectClient *)self policy];
  v23 = [v22 proxyObjectClasses];

  if (v23)
  {
    v24 = [(SUCoreConnectClient *)self policy];
    v25 = [v24 proxyObjectClasses];
    [v15 setClasses:v25 forSelector:sel_executeGenericBlock_ argumentIndex:0 ofReply:0];

    v26 = [(SUCoreConnectClient *)self policy];
    v27 = [v26 proxyObjectClasses];
    [v15 setClasses:v27 forSelector:sel_executeGenericBlock_disableVerboseLogging_ argumentIndex:0 ofReply:0];
  }

  [v14 setInterface:v15 forSelector:sel_connectProtocolFromClientSendServerMessage_proxyObject_withReply_ argumentIndex:1 ofReply:0];
  [v17 setExportedInterface:v13];
  [v17 setRemoteObjectInterface:v14];
  [v17 setExportedObject:self];
  [v17 resume];
  v28 = [(SUCoreConnectClient *)self policy];
  v29 = [v28 usesPersistentXPCConnections];

  if (v29)
  {
    v30 = [(SUCoreConnectClient *)self logger];
    v31 = [v30 oslog];

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(SUCoreConnectClient *)self policy];
      v33 = [v32 serviceName];
      *buf = 138543362;
      v46 = v33;
      _os_log_impl(&dword_22E2D6000, v31, OS_LOG_TYPE_DEFAULT, "[ConnectToServer](%{public}@) Client usesPersistentXPCConnections, assigning serverConnection", buf, 0xCu);
    }

    [(SUCoreConnectClient *)self setServerConnection:v17];
  }

  v5 = v17;

  _Block_object_dispose(v43, 8);
  objc_destroyWeak(&v44);

LABEL_12:
  os_unfair_lock_unlock(&self->_stateLock);
  v34 = *MEMORY[0x277D85DE8];

  return v5;
}

- (SUCoreConnectClient)initWithClientPolicy:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = SUCoreConnectClient;
  v6 = [(SUCoreConnectClient *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policy, a3);
    v8 = +[SUCoreConnectClient _sharedClientLogger];
    logger = v7->_logger;
    v7->_logger = v8;

    v7->_stateLock._os_unfair_lock_opaque = 0;
    v10 = [@"com.apple.SUCoreConnect.ClientDelegateCallbackQueue" UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    clientDelegateCallbackQueue = v7->_clientDelegateCallbackQueue;
    v7->_clientDelegateCallbackQueue = v12;

    v14 = [@"com.apple.SUCoreConnect.ClientCompletionQueue" UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
    clientCompletionQueue = v7->_clientCompletionQueue;
    v7->_clientCompletionQueue = v16;

    v18 = [@"com.apple.SUCoreConnect.ClientMessageQueue" UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    clientMessageQueue = v7->_clientMessageQueue;
    v7->_clientMessageQueue = v20;

    v22 = [@"com.apple.SUCoreConnect.ClientReplyCompletionQueue" UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(v22, v23);
    clientReplyCompletionQueue = v7->_clientReplyCompletionQueue;
    v7->_clientReplyCompletionQueue = v24;
  }

  return v7;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SUCoreConnectClient *)self serverConnection];

  if (v3)
  {
    v4 = [(SUCoreConnectClient *)self logger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SUCoreConnectClient *)self policy];
      v7 = [v6 serviceName];
      v8 = [(SUCoreConnectClient *)self serverConnection];
      *buf = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_22E2D6000, v5, OS_LOG_TYPE_DEFAULT, "[InvalidateConnection](%{public}@) Invalidating the persistent server connection %{public}@", buf, 0x16u);
    }

    v9 = [(SUCoreConnectClient *)self serverConnection];
    [v9 setInvalidationHandler:0];

    v10 = [(SUCoreConnectClient *)self serverConnection];
    [v10 setInterruptionHandler:0];

    v11 = [(SUCoreConnectClient *)self serverConnection];
    [v11 invalidate];

    [(SUCoreConnectClient *)self setServerConnection:0];
  }

  v13.receiver = self;
  v13.super_class = SUCoreConnectClient;
  [(SUCoreConnectClient *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_sharedClientLogger
{
  if (_sharedClientLogger_oneClientLoggerToken != -1)
  {
    +[SUCoreConnectClient _sharedClientLogger];
  }

  v3 = _sharedClientLogger___sharedLogger;

  return v3;
}

uint64_t __42__SUCoreConnectClient__sharedClientLogger__block_invoke()
{
  _sharedClientLogger___sharedLogger = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"CLIENT"];

  return MEMORY[0x2821F96F8]();
}

- (void)_invalidateConnectionIfNonPersistent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [(SUCoreConnectClient *)self policy];
  if ([v5 usesPersistentXPCConnections])
  {
    v6 = [(SUCoreConnectClient *)self serverConnection];

    if (v6)
    {
      v7 = [(SUCoreConnectClient *)self logger];
      v8 = [v7 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(SUCoreConnectClient *)self policy];
        v10 = [v9 serviceName];
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = v4;
        _os_log_impl(&dword_22E2D6000, v8, OS_LOG_TYPE_DEFAULT, "[InvalidateConnection](%{public}@) Not invalidating server connection %{public}@ as client usesPersistentXPCConnections", &v16, 0x16u);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v11 = [(SUCoreConnectClient *)self logger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(SUCoreConnectClient *)self policy];
    v14 = [v13 serviceName];
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_22E2D6000, v12, OS_LOG_TYPE_DEFAULT, "[InvalidateConnection](%{public}@) Invalidating the server connection %{public}@", &v16, 0x16u);
  }

  [v4 setInvalidationHandler:0];
  [v4 setInterruptionHandler:0];
  [v4 invalidate];
LABEL_10:
  os_unfair_lock_unlock(&self->_stateLock);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_droppedConnection:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  v6 = v5;
  if (v5)
  {
    os_unfair_lock_lock(&v5->_stateLock);
    v7 = [(os_unfair_lock_s *)v6 policy];
    v8 = [v7 clientDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(os_unfair_lock_s *)v6 clientDelegateCallbackQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __42__SUCoreConnectClient__droppedConnection___block_invoke;
      v18[3] = &unk_2787BC990;
      v19 = v6;
      v20 = v4;
      dispatch_async(v10, v18);

      v11 = v19;
    }

    else
    {
      v14 = [(os_unfair_lock_s *)v6 logger];
      v11 = [v14 oslog];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(os_unfair_lock_s *)v6 policy];
        v16 = [v15 serviceName];
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v4;
        _os_log_impl(&dword_22E2D6000, v11, OS_LOG_TYPE_DEFAULT, "[ConnectionDropped](%{public}@) Client connection dropped from XPC server, no delegate callback provided for connection %{public}@", buf, 0x16u);
      }
    }

    [(os_unfair_lock_s *)v6 setServerConnection:0];
    [v4 invalidate];
    os_unfair_lock_unlock(v6 + 2);
  }

  else
  {
    v12 = [MEMORY[0x277D64460] sharedLogger];
    v13 = [v12 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient _droppedConnection:v13];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __42__SUCoreConnectClient__droppedConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) policy];
    v5 = [v4 serviceName];
    v6 = *(a1 + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22E2D6000, v3, OS_LOG_TYPE_DEFAULT, "[ConnectionDropped](%{public}@) Client connection dropped to XPC server, calling connectionClosed delegate callback for connection %{public}@", &v10, 0x16u);
  }

  v7 = [*(a1 + 32) policy];
  v8 = [v7 clientDelegate];
  [v8 connectionClosed];

  v9 = *MEMORY[0x277D85DE8];
}

void __47__SUCoreConnectClient__internalConnectToServer__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    v5 = [WeakRetained policy];
    v6 = [v5 clientID];
    v7 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    v8 = [v7 policy];
    v9 = [v8 serviceName];
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_22E2D6000, v3, OS_LOG_TYPE_DEFAULT, "[CLIENT-%{public}@][InvalidatedHandler](%{public}@) Connection invalidated", &v12, 0x16u);
  }

  v10 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [v10 _droppedConnection:*(a1 + 32)];

  v11 = *MEMORY[0x277D85DE8];
}

void __47__SUCoreConnectClient__internalConnectToServer__block_invoke_87(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    v5 = [WeakRetained policy];
    v6 = [v5 clientID];
    v7 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    v8 = [v7 policy];
    v9 = [v8 serviceName];
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_22E2D6000, v3, OS_LOG_TYPE_DEFAULT, "[CLIENT-%{public}@][InterruptedHandler](%{public}@) Connection interrupted", &v12, 0x16u);
  }

  v10 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [v10 _droppedConnection:*(a1 + 32)];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)connectToServerWithSynchronousCompletion:(id)a3
{
  v5 = a3;
  v4 = [(SUCoreConnectClient *)self _internalConnectToServer];
  if (v5)
  {
    v5[2]();
  }

  [(SUCoreConnectClient *)self _invalidateConnectionIfNonPersistent:v4];
}

- (void)connectToServerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreConnectClient *)self _internalConnectToServer];
  v6 = [(SUCoreConnectClient *)self clientCompletionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUCoreConnectClient_connectToServerWithCompletion___block_invoke;
  block[3] = &unk_2787BCAD0;
  v10 = v5;
  v11 = v4;
  block[4] = self;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

uint64_t __53__SUCoreConnectClient_connectToServerWithCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v4 = a1[5];

  return [v3 _invalidateConnectionIfNonPersistent:v4];
}

- (BOOL)_connectMessageMatchesClient:(id)a3 errorPtr:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D643F8];
  v8 = [v6 clientID];
  v9 = [(SUCoreConnectClient *)self policy];
  v10 = [v9 clientID];
  v11 = [v7 stringIsEqual:v8 to:v10];

  if (a4 && (v11 & 1) == 0)
  {
    v12 = [MEMORY[0x277D643F8] sharedCore];
    v13 = MEMORY[0x277CCACA8];
    v14 = [v6 clientID];
    v15 = [(SUCoreConnectClient *)self policy];
    v16 = [v15 clientID];
    v17 = [v13 stringWithFormat:@"ClientID of message (%@) does not align with policy clientID (%@)", v14, v16];
    v18 = [v12 buildError:8907 underlying:0 description:v17];

    v19 = v18;
    *a4 = v18;
  }

  return v11;
}

- (void)connectClientSendServerMessage:(id)a3 proxyObject:(id)a4 withReply:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v45 = 0;
  v11 = [(SUCoreConnectClient *)self _connectMessageMatchesClient:v8 errorPtr:&v45];
  v12 = v45;
  if (v11)
  {
    v13 = [(SUCoreConnectClient *)self _internalConnectToServer];
    v14 = [(SUCoreConnectClient *)self logger];
    v15 = [v14 oslog];

    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(SUCoreConnectClient *)self policy];
        v17 = [v16 serviceName];
        *buf = 138543874;
        v47 = v17;
        v48 = 2114;
        v49 = v8;
        v50 = 2114;
        v51 = v13;
        _os_log_impl(&dword_22E2D6000, v15, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) Connected to server and calling sendMessage %{public}@ for connection %{public}@", buf, 0x20u);
      }

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_108;
      v37[3] = &unk_2787BCB48;
      v37[4] = self;
      v18 = v13;
      v38 = v18;
      v19 = v10;
      v39 = v19;
      v20 = [v18 remoteObjectProxyWithErrorHandler:v37];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_111;
      v34[3] = &unk_2787BCB70;
      v34[4] = self;
      v13 = v18;
      v35 = v13;
      v36 = v19;
      [v20 connectProtocolFromClientSendServerMessage:v8 proxyObject:v9 withReply:v34];

      v21 = v38;
      goto LABEL_14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient connectClientSendServerMessage:? proxyObject:? withReply:?];
    }

    if (v10)
    {
      v27 = [(SUCoreConnectClient *)self clientCompletionQueue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_104;
      v40[3] = &unk_2787BCB20;
      v41 = v10;
      dispatch_async(v27, v40);

      v21 = v41;
LABEL_14:

      goto LABEL_15;
    }

    v32 = [(SUCoreConnectClient *)self logger];
    v33 = [v32 oslog];

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient connectClientSendServerMessage:? proxyObject:? withReply:?];
    }
  }

  else
  {
    v22 = [MEMORY[0x277D64428] sharedDiag];
    v23 = [v12 description];
    [v22 trackAnomaly:@"connectClientSendServerMessage" forReason:v23 withResult:objc_msgSend(v12 withError:{"code"), v12}];

    v24 = [(SUCoreConnectClient *)self logger];
    v25 = [v24 oslog];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient connectClientSendServerMessage:? proxyObject:? withReply:?];
    }

    if (v10)
    {
      v26 = [(SUCoreConnectClient *)self clientCompletionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke;
      block[3] = &unk_2787BCAF8;
      v44 = v10;
      v43 = v12;
      dispatch_async(v26, block);

      v13 = v44;
    }

    else
    {
      v29 = [(SUCoreConnectClient *)self logger];
      v13 = [v29 oslog];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(SUCoreConnectClient *)self policy];
        v31 = [v30 serviceName];
        *buf = 138543362;
        v47 = v31;
        _os_log_impl(&dword_22E2D6000, v13, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) Validation Error: No reply completion was provided", buf, 0xCu);
      }
    }
  }

LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

void __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277D643F8] sharedCore];
  v2 = [v3 buildError:8909 underlying:0 description:@"No server connection present to send client->server message"];
  (*(v1 + 16))(v1, 0, v2);
}

void __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_108(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v14 = [*(a1 + 32) policy];
    v15 = [v14 serviceName];
    v16 = *(a1 + 40);
    *buf = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v3;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_22E2D6000, v5, OS_LOG_TYPE_ERROR, "[SendServerMessage](%{public}@) ErrorHandler: Calling provided reply completion on connection error %{public}@ for connection %{public}@", buf, 0x20u);
  }

  v6 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v7 = [v6 clientCompletionQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_109;
    v17[3] = &unk_2787BCAF8;
    v19 = *(a1 + 48);
    v18 = v3;
    dispatch_async(v7, v17);

    v8 = v19;
  }

  else
  {
    v9 = [v6 logger];
    v8 = [v9 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) policy];
      v11 = [v10 serviceName];
      v12 = *(a1 + 40);
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_22E2D6000, v8, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) ErrorHandler: No reply completion was provided for connection %{public}@", buf, 0x16u);
    }
  }

  [*(a1 + 32) _invalidateConnectionIfNonPersistent:*(a1 + 40)];
  v13 = *MEMORY[0x277D85DE8];
}

void __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) logger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) policy];
    v10 = [v9 serviceName];
    v11 = *(a1 + 40);
    *buf = 138544130;
    v41 = v10;
    v42 = 2114;
    v43 = v5;
    v44 = 2114;
    v45 = v6;
    v46 = 2114;
    v47 = v11;
    _os_log_impl(&dword_22E2D6000, v8, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) sendMessage response received from server with response %{public}@ error %{public}@ for connection %{public}@", buf, 0x2Au);
  }

  v12 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v13 = [v12 clientCompletionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_112;
    block[3] = &unk_2787BCAD0;
    v39 = *(a1 + 48);
    v37 = v5;
    v38 = v6;
    dispatch_async(v13, block);

    v14 = v39;
LABEL_9:

    goto LABEL_10;
  }

  v15 = [v12 policy];
  v16 = [v15 clientDelegate];
  v17 = objc_opt_respondsToSelector();

  v18 = [*(a1 + 32) logger];
  v19 = [v18 oslog];

  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v20)
    {
      v21 = [*(a1 + 32) policy];
      v22 = [v21 serviceName];
      v23 = *(a1 + 40);
      *buf = 138543618;
      v41 = v22;
      v42 = 2114;
      v43 = v23;
      _os_log_impl(&dword_22E2D6000, v19, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) Calling reply delegate callback 'handleResponse:error:' for connection %{public}@", buf, 0x16u);
    }

    v24 = [*(a1 + 32) clientDelegateCallbackQueue];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_115;
    v32 = &unk_2787BCA08;
    v33 = *(a1 + 32);
    v34 = v5;
    v35 = v6;
    dispatch_async(v24, &v29);

    v14 = v34;
    goto LABEL_9;
  }

  if (v20)
  {
    v26 = [*(a1 + 32) policy];
    v27 = [v26 serviceName];
    v28 = *(a1 + 40);
    *buf = 138543618;
    v41 = v27;
    v42 = 2114;
    v43 = v28;
    _os_log_impl(&dword_22E2D6000, v19, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) Client does not respond to the handleMessage:reply: delegate callback and no reply completion was provided for connection %{public}@", buf, 0x16u);
  }

LABEL_10:
  [*(a1 + 32) _invalidateConnectionIfNonPersistent:{*(a1 + 40), v29, v30, v31, v32, v33}];

  v25 = *MEMORY[0x277D85DE8];
}

void __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_115(uint64_t a1)
{
  v3 = [*(a1 + 32) policy];
  v2 = [v3 clientDelegate];
  [v2 handleResponse:*(a1 + 40) error:*(a1 + 48)];
}

- (id)connectClientSendSynchronousServerMessage:(id)a3 proxyObject:(id)a4 errorPtr:(id *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v46 = 0;
  v10 = [(SUCoreConnectClient *)self _connectMessageMatchesClient:v8 errorPtr:&v46];
  v11 = v46;
  if (v10)
  {
    v12 = [(SUCoreConnectClient *)self _internalConnectToServer];
    v13 = [(SUCoreConnectClient *)self logger];
    v14 = [v13 oslog];

    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(SUCoreConnectClient *)self policy];
        v16 = [v15 serviceName];
        *buf = 138543874;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v8;
        *&buf[22] = 2114;
        v48 = v12;
        _os_log_impl(&dword_22E2D6000, v14, OS_LOG_TYPE_DEFAULT, "[SendServerMessageSync](%{public}@) Connected to server and calling synchronous sendMessage %{public}@ for connection %{public}@", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v48 = __Block_byref_object_copy__120;
      v49 = __Block_byref_object_dispose__121;
      v50 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__120;
      v44 = __Block_byref_object_dispose__121;
      v45 = 0;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __86__SUCoreConnectClient_connectClientSendSynchronousServerMessage_proxyObject_errorPtr___block_invoke;
      v37[3] = &unk_2787BCB98;
      v37[4] = self;
      v17 = v12;
      v38 = v17;
      v39 = &v40;
      v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v37];
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __86__SUCoreConnectClient_connectClientSendSynchronousServerMessage_proxyObject_errorPtr___block_invoke_122;
      v32 = &unk_2787BCBC0;
      v33 = self;
      v19 = v17;
      v34 = v19;
      v35 = buf;
      v36 = &v40;
      [v18 connectProtocolFromClientSendServerMessage:v8 proxyObject:v9 withReply:&v29];

      [(SUCoreConnectClient *)self _invalidateConnectionIfNonPersistent:v19, v29, v30, v31, v32, v33];
      if (a5)
      {
        *a5 = v41[5];
      }

      v20 = *(*&buf[8] + 40);

      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SUCoreConnectClient connectClientSendSynchronousServerMessage:v14 proxyObject:? errorPtr:?];
      }

      if (a5)
      {
        v26 = [MEMORY[0x277D643F8] sharedCore];
        *a5 = [v26 buildError:8909 underlying:0 description:@"No server connection present to send client->server message"];
      }

      v20 = 0;
    }
  }

  else
  {
    v21 = [MEMORY[0x277D64428] sharedDiag];
    v22 = [v11 description];
    [v21 trackAnomaly:@"connectClientSendSynchronousServerMessage" forReason:v22 withResult:objc_msgSend(v11 withError:{"code"), v11}];

    v23 = [(SUCoreConnectClient *)self logger];
    v24 = [v23 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient connectClientSendSynchronousServerMessage:v11 proxyObject:v24 errorPtr:?];
    }

    if (a5)
    {
      v25 = v11;
      v20 = 0;
      *a5 = v11;
    }

    else
    {
      v20 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

void __86__SUCoreConnectClient_connectClientSendSynchronousServerMessage_proxyObject_errorPtr___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) policy];
    v10 = [v9 serviceName];
    v11 = *(a1 + 40);
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v3;
    v16 = 2114;
    v17 = v11;
    _os_log_error_impl(&dword_22E2D6000, v5, OS_LOG_TYPE_ERROR, "[SendServerMessageSync](%{public}@) ErrorHandler: synchronous object proxy returned an error %{public}@ for connection %{public}@", &v12, 0x20u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

void __86__SUCoreConnectClient_connectClientSendSynchronousServerMessage_proxyObject_errorPtr___block_invoke_122(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) logger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) policy];
    v10 = [v9 serviceName];
    v11 = *(a1 + 40);
    v18 = 138544130;
    v19 = v10;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_22E2D6000, v8, OS_LOG_TYPE_DEFAULT, "[SendServerMessageSync](%{public}@) sendMessage response received from server with response %{public}@ error %{public}@ for connection %{public}@", &v18, 0x2Au);
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v6;

  v17 = *MEMORY[0x277D85DE8];
}

- (void)forceCloseConnection
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(SUCoreConnectClient *)self logger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SUCoreConnectClient *)self policy];
    v6 = [v5 serviceName];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22E2D6000, v4, OS_LOG_TYPE_DEFAULT, "[ForceCloseConnection](%{public}@) Incoming client request to force close connection", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectProtocolFromServerRequestClientID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUCoreConnectClient *)self clientReplyCompletionQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__SUCoreConnectClient_connectProtocolFromServerRequestClientID___block_invoke;
    v6[3] = &unk_2787BCAF8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __64__SUCoreConnectClient_connectProtocolFromServerRequestClientID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) policy];
  v2 = [v3 clientID];
  (*(v1 + 16))(v1, v2);
}

- (void)connectProtocolFromServerSendClientMessage:(id)a3 reply:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreConnectClient *)self policy];
  v9 = [v8 clientDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SUCoreConnectClient *)self clientMessageQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SUCoreConnectClient_connectProtocolFromServerSendClientMessage_reply___block_invoke;
    block[3] = &unk_2787BCC10;
    v27 = v6;
    v28 = self;
    v29 = v7;
    dispatch_async(v11, block);

    v12 = v27;
  }

  else
  {
    v13 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v13 buildError:8900 underlying:0 description:@"Client does not respond to messages"];

    v14 = [(SUCoreConnectClient *)self logger];
    v15 = [v14 oslog];

    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v16)
      {
        v17 = [(SUCoreConnectClient *)self policy];
        v18 = [v17 serviceName];
        *buf = 138543874;
        v31 = v18;
        v32 = 2114;
        v33 = v6;
        v34 = 2114;
        v35 = v12;
        _os_log_impl(&dword_22E2D6000, v15, OS_LOG_TYPE_DEFAULT, "[SendClientMessage](%{public}@) Client does not respond to handleMessage:%{public}@, error:%{public}@, calling reply block", buf, 0x20u);
      }

      v19 = [(SUCoreConnectClient *)self clientReplyCompletionQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __72__SUCoreConnectClient_connectProtocolFromServerSendClientMessage_reply___block_invoke_128;
      v23[3] = &unk_2787BCAF8;
      v25 = v7;
      v24 = v12;
      dispatch_async(v19, v23);

      v15 = v25;
    }

    else if (v16)
    {
      v20 = [(SUCoreConnectClient *)self policy];
      v21 = [v20 serviceName];
      *buf = 138543874;
      v31 = v21;
      v32 = 2114;
      v33 = v6;
      v34 = 2114;
      v35 = v12;
      _os_log_impl(&dword_22E2D6000, v15, OS_LOG_TYPE_DEFAULT, "[SendClientMessage](%{public}@) Client does not respond to handleMessage:%{public}@, error: %{public}@, and no reply block provided", buf, 0x20u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __72__SUCoreConnectClient_connectProtocolFromServerSendClientMessage_reply___block_invoke(id *a1)
{
  [a1[4] setBoostable:1];
  v2 = [a1[5] policy];
  v3 = [v2 clientDelegate];
  v4 = a1[4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SUCoreConnectClient_connectProtocolFromServerSendClientMessage_reply___block_invoke_2;
  v5[3] = &unk_2787BCBE8;
  v6 = v4;
  v7 = a1[6];
  [v3 handleMessage:v6 reply:v5];
}

void __72__SUCoreConnectClient_connectProtocolFromServerSendClientMessage_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) setBoostable:0];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)connectClientSendServerMessage:(void *)a1 proxyObject:withReply:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 policy];
  v2 = [v1 serviceName];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectClientSendServerMessage:(void *)a1 proxyObject:withReply:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 policy];
  v2 = [v1 serviceName];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectClientSendServerMessage:(void *)a1 proxyObject:withReply:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 policy];
  v2 = [v1 serviceName];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectClientSendSynchronousServerMessage:(void *)a1 proxyObject:(uint64_t)a2 errorPtr:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 policy];
  v6 = [v5 serviceName];
  OUTLINED_FUNCTION_6();
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_22E2D6000, a3, OS_LOG_TYPE_ERROR, "[SendServerMessageSync](%{public}@) Validation Error: Returning synchronous reply with error %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectClientSendSynchronousServerMessage:(void *)a1 proxyObject:(NSObject *)a2 errorPtr:.cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 policy];
  v4 = [v3 serviceName];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_22E2D6000, a2, OS_LOG_TYPE_ERROR, "[SendServerMessageSync](%{public}@) No server connection present to send client->server message", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end