@interface SUCoreConnectClient
+ (id)_sharedClientLogger;
- (BOOL)_connectMessageMatchesClient:(id)client errorPtr:(id *)ptr;
- (SUCoreConnectClient)initWithClientPolicy:(id)policy;
- (id)_internalConnectToServer;
- (id)connectClientSendSynchronousServerMessage:(id)message proxyObject:(id)object errorPtr:(id *)ptr;
- (void)_droppedConnection:(id)connection;
- (void)_invalidateConnectionIfNonPersistent:(id)persistent;
- (void)connectClientSendServerMessage:(id)message proxyObject:(id)object withReply:(id)reply;
- (void)connectProtocolFromServerRequestClientID:(id)d;
- (void)connectProtocolFromServerSendClientMessage:(id)message reply:(id)reply;
- (void)connectToServerWithCompletion:(id)completion;
- (void)connectToServerWithSynchronousCompletion:(id)completion;
- (void)dealloc;
- (void)forceCloseConnection;
@end

@implementation SUCoreConnectClient

- (id)_internalConnectToServer
{
  v47 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_stateLock);
  policy = [(SUCoreConnectClient *)self policy];
  if ([policy usesPersistentXPCConnections])
  {
    serverConnection = [(SUCoreConnectClient *)self serverConnection];

    if (serverConnection)
    {
      serverConnection2 = [(SUCoreConnectClient *)self serverConnection];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v6 = objc_alloc(MEMORY[0x277CCAE80]);
  policy2 = [(SUCoreConnectClient *)self policy];
  serviceName = [policy2 serviceName];
  v9 = [v6 initWithMachServiceName:serviceName options:0];

  uTF8String = [@"com.apple.SUCoreConnect.ServerConnectionQueue" UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(uTF8String, v11);

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

  policy3 = [(SUCoreConnectClient *)self policy];
  proxyObjectClasses = [policy3 proxyObjectClasses];

  if (proxyObjectClasses)
  {
    policy4 = [(SUCoreConnectClient *)self policy];
    proxyObjectClasses2 = [policy4 proxyObjectClasses];
    [v15 setClasses:proxyObjectClasses2 forSelector:sel_executeGenericBlock_ argumentIndex:0 ofReply:0];

    policy5 = [(SUCoreConnectClient *)self policy];
    proxyObjectClasses3 = [policy5 proxyObjectClasses];
    [v15 setClasses:proxyObjectClasses3 forSelector:sel_executeGenericBlock_disableVerboseLogging_ argumentIndex:0 ofReply:0];
  }

  [v14 setInterface:v15 forSelector:sel_connectProtocolFromClientSendServerMessage_proxyObject_withReply_ argumentIndex:1 ofReply:0];
  [v17 setExportedInterface:v13];
  [v17 setRemoteObjectInterface:v14];
  [v17 setExportedObject:self];
  [v17 resume];
  policy6 = [(SUCoreConnectClient *)self policy];
  usesPersistentXPCConnections = [policy6 usesPersistentXPCConnections];

  if (usesPersistentXPCConnections)
  {
    logger = [(SUCoreConnectClient *)self logger];
    oslog = [logger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      policy7 = [(SUCoreConnectClient *)self policy];
      serviceName2 = [policy7 serviceName];
      *buf = 138543362;
      v46 = serviceName2;
      _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[ConnectToServer](%{public}@) Client usesPersistentXPCConnections, assigning serverConnection", buf, 0xCu);
    }

    [(SUCoreConnectClient *)self setServerConnection:v17];
  }

  serverConnection2 = v17;

  _Block_object_dispose(v43, 8);
  objc_destroyWeak(&v44);

LABEL_12:
  os_unfair_lock_unlock(&self->_stateLock);
  v34 = *MEMORY[0x277D85DE8];

  return serverConnection2;
}

- (SUCoreConnectClient)initWithClientPolicy:(id)policy
{
  policyCopy = policy;
  v27.receiver = self;
  v27.super_class = SUCoreConnectClient;
  v6 = [(SUCoreConnectClient *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policy, policy);
    v8 = +[SUCoreConnectClient _sharedClientLogger];
    logger = v7->_logger;
    v7->_logger = v8;

    v7->_stateLock._os_unfair_lock_opaque = 0;
    uTF8String = [@"com.apple.SUCoreConnect.ClientDelegateCallbackQueue" UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    clientDelegateCallbackQueue = v7->_clientDelegateCallbackQueue;
    v7->_clientDelegateCallbackQueue = v12;

    uTF8String2 = [@"com.apple.SUCoreConnect.ClientCompletionQueue" UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String2, v15);
    clientCompletionQueue = v7->_clientCompletionQueue;
    v7->_clientCompletionQueue = v16;

    uTF8String3 = [@"com.apple.SUCoreConnect.ClientMessageQueue" UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String3, v19);
    clientMessageQueue = v7->_clientMessageQueue;
    v7->_clientMessageQueue = v20;

    uTF8String4 = [@"com.apple.SUCoreConnect.ClientReplyCompletionQueue" UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(uTF8String4, v23);
    clientReplyCompletionQueue = v7->_clientReplyCompletionQueue;
    v7->_clientReplyCompletionQueue = v24;
  }

  return v7;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  serverConnection = [(SUCoreConnectClient *)self serverConnection];

  if (serverConnection)
  {
    logger = [(SUCoreConnectClient *)self logger];
    oslog = [logger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      policy = [(SUCoreConnectClient *)self policy];
      serviceName = [policy serviceName];
      serverConnection2 = [(SUCoreConnectClient *)self serverConnection];
      *buf = 138543618;
      v15 = serviceName;
      v16 = 2114;
      v17 = serverConnection2;
      _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[InvalidateConnection](%{public}@) Invalidating the persistent server connection %{public}@", buf, 0x16u);
    }

    serverConnection3 = [(SUCoreConnectClient *)self serverConnection];
    [serverConnection3 setInvalidationHandler:0];

    serverConnection4 = [(SUCoreConnectClient *)self serverConnection];
    [serverConnection4 setInterruptionHandler:0];

    serverConnection5 = [(SUCoreConnectClient *)self serverConnection];
    [serverConnection5 invalidate];

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

- (void)_invalidateConnectionIfNonPersistent:(id)persistent
{
  v20 = *MEMORY[0x277D85DE8];
  persistentCopy = persistent;
  os_unfair_lock_lock(&self->_stateLock);
  policy = [(SUCoreConnectClient *)self policy];
  if ([policy usesPersistentXPCConnections])
  {
    serverConnection = [(SUCoreConnectClient *)self serverConnection];

    if (serverConnection)
    {
      logger = [(SUCoreConnectClient *)self logger];
      oslog = [logger oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        policy2 = [(SUCoreConnectClient *)self policy];
        serviceName = [policy2 serviceName];
        v16 = 138543618;
        v17 = serviceName;
        v18 = 2114;
        v19 = persistentCopy;
        _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[InvalidateConnection](%{public}@) Not invalidating server connection %{public}@ as client usesPersistentXPCConnections", &v16, 0x16u);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  logger2 = [(SUCoreConnectClient *)self logger];
  oslog2 = [logger2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    policy3 = [(SUCoreConnectClient *)self policy];
    serviceName2 = [policy3 serviceName];
    v16 = 138543618;
    v17 = serviceName2;
    v18 = 2114;
    v19 = persistentCopy;
    _os_log_impl(&dword_22E2D6000, oslog2, OS_LOG_TYPE_DEFAULT, "[InvalidateConnection](%{public}@) Invalidating the server connection %{public}@", &v16, 0x16u);
  }

  [persistentCopy setInvalidationHandler:0];
  [persistentCopy setInterruptionHandler:0];
  [persistentCopy invalidate];
LABEL_10:
  os_unfair_lock_unlock(&self->_stateLock);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_droppedConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  selfCopy = self;
  v6 = selfCopy;
  if (selfCopy)
  {
    os_unfair_lock_lock(&selfCopy->_stateLock);
    policy = [(os_unfair_lock_s *)v6 policy];
    clientDelegate = [policy clientDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      clientDelegateCallbackQueue = [(os_unfair_lock_s *)v6 clientDelegateCallbackQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __42__SUCoreConnectClient__droppedConnection___block_invoke;
      v18[3] = &unk_2787BC990;
      v19 = v6;
      v20 = connectionCopy;
      dispatch_async(clientDelegateCallbackQueue, v18);

      oslog = v19;
    }

    else
    {
      logger = [(os_unfair_lock_s *)v6 logger];
      oslog = [logger oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        policy2 = [(os_unfair_lock_s *)v6 policy];
        serviceName = [policy2 serviceName];
        *buf = 138543618;
        v22 = serviceName;
        v23 = 2114;
        v24 = connectionCopy;
        _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[ConnectionDropped](%{public}@) Client connection dropped from XPC server, no delegate callback provided for connection %{public}@", buf, 0x16u);
      }
    }

    [(os_unfair_lock_s *)v6 setServerConnection:0];
    [connectionCopy invalidate];
    os_unfair_lock_unlock(v6 + 2);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient _droppedConnection:oslog2];
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

- (void)connectToServerWithSynchronousCompletion:(id)completion
{
  completionCopy = completion;
  _internalConnectToServer = [(SUCoreConnectClient *)self _internalConnectToServer];
  if (completionCopy)
  {
    completionCopy[2]();
  }

  [(SUCoreConnectClient *)self _invalidateConnectionIfNonPersistent:_internalConnectToServer];
}

- (void)connectToServerWithCompletion:(id)completion
{
  completionCopy = completion;
  _internalConnectToServer = [(SUCoreConnectClient *)self _internalConnectToServer];
  clientCompletionQueue = [(SUCoreConnectClient *)self clientCompletionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUCoreConnectClient_connectToServerWithCompletion___block_invoke;
  block[3] = &unk_2787BCAD0;
  v10 = _internalConnectToServer;
  v11 = completionCopy;
  block[4] = self;
  v7 = _internalConnectToServer;
  v8 = completionCopy;
  dispatch_async(clientCompletionQueue, block);
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

- (BOOL)_connectMessageMatchesClient:(id)client errorPtr:(id *)ptr
{
  clientCopy = client;
  v7 = MEMORY[0x277D643F8];
  clientID = [clientCopy clientID];
  policy = [(SUCoreConnectClient *)self policy];
  clientID2 = [policy clientID];
  v11 = [v7 stringIsEqual:clientID to:clientID2];

  if (ptr && (v11 & 1) == 0)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v13 = MEMORY[0x277CCACA8];
    clientID3 = [clientCopy clientID];
    policy2 = [(SUCoreConnectClient *)self policy];
    clientID4 = [policy2 clientID];
    v17 = [v13 stringWithFormat:@"ClientID of message (%@) does not align with policy clientID (%@)", clientID3, clientID4];
    v18 = [mEMORY[0x277D643F8] buildError:8907 underlying:0 description:v17];

    v19 = v18;
    *ptr = v18;
  }

  return v11;
}

- (void)connectClientSendServerMessage:(id)message proxyObject:(id)object withReply:(id)reply
{
  v52 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  objectCopy = object;
  replyCopy = reply;
  v45 = 0;
  v11 = [(SUCoreConnectClient *)self _connectMessageMatchesClient:messageCopy errorPtr:&v45];
  v12 = v45;
  if (v11)
  {
    _internalConnectToServer = [(SUCoreConnectClient *)self _internalConnectToServer];
    logger = [(SUCoreConnectClient *)self logger];
    oslog = [logger oslog];

    if (_internalConnectToServer)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        policy = [(SUCoreConnectClient *)self policy];
        serviceName = [policy serviceName];
        *buf = 138543874;
        v47 = serviceName;
        v48 = 2114;
        v49 = messageCopy;
        v50 = 2114;
        v51 = _internalConnectToServer;
        _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) Connected to server and calling sendMessage %{public}@ for connection %{public}@", buf, 0x20u);
      }

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_108;
      v37[3] = &unk_2787BCB48;
      v37[4] = self;
      v18 = _internalConnectToServer;
      v38 = v18;
      v19 = replyCopy;
      v39 = v19;
      v20 = [v18 remoteObjectProxyWithErrorHandler:v37];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_111;
      v34[3] = &unk_2787BCB70;
      v34[4] = self;
      _internalConnectToServer = v18;
      v35 = _internalConnectToServer;
      v36 = v19;
      [v20 connectProtocolFromClientSendServerMessage:messageCopy proxyObject:objectCopy withReply:v34];

      v21 = v38;
      goto LABEL_14;
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient connectClientSendServerMessage:? proxyObject:? withReply:?];
    }

    if (replyCopy)
    {
      clientCompletionQueue = [(SUCoreConnectClient *)self clientCompletionQueue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke_104;
      v40[3] = &unk_2787BCB20;
      v41 = replyCopy;
      dispatch_async(clientCompletionQueue, v40);

      v21 = v41;
LABEL_14:

      goto LABEL_15;
    }

    logger2 = [(SUCoreConnectClient *)self logger];
    oslog2 = [logger2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient connectClientSendServerMessage:? proxyObject:? withReply:?];
    }
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v23 = [v12 description];
    [mEMORY[0x277D64428] trackAnomaly:@"connectClientSendServerMessage" forReason:v23 withResult:objc_msgSend(v12 withError:{"code"), v12}];

    logger3 = [(SUCoreConnectClient *)self logger];
    oslog3 = [logger3 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient connectClientSendServerMessage:? proxyObject:? withReply:?];
    }

    if (replyCopy)
    {
      clientCompletionQueue2 = [(SUCoreConnectClient *)self clientCompletionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__SUCoreConnectClient_connectClientSendServerMessage_proxyObject_withReply___block_invoke;
      block[3] = &unk_2787BCAF8;
      v44 = replyCopy;
      v43 = v12;
      dispatch_async(clientCompletionQueue2, block);

      _internalConnectToServer = v44;
    }

    else
    {
      logger4 = [(SUCoreConnectClient *)self logger];
      _internalConnectToServer = [logger4 oslog];

      if (os_log_type_enabled(_internalConnectToServer, OS_LOG_TYPE_DEFAULT))
      {
        policy2 = [(SUCoreConnectClient *)self policy];
        serviceName2 = [policy2 serviceName];
        *buf = 138543362;
        v47 = serviceName2;
        _os_log_impl(&dword_22E2D6000, _internalConnectToServer, OS_LOG_TYPE_DEFAULT, "[SendServerMessage](%{public}@) Validation Error: No reply completion was provided", buf, 0xCu);
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

- (id)connectClientSendSynchronousServerMessage:(id)message proxyObject:(id)object errorPtr:(id *)ptr
{
  v51 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  objectCopy = object;
  v46 = 0;
  v10 = [(SUCoreConnectClient *)self _connectMessageMatchesClient:messageCopy errorPtr:&v46];
  v11 = v46;
  if (v10)
  {
    _internalConnectToServer = [(SUCoreConnectClient *)self _internalConnectToServer];
    logger = [(SUCoreConnectClient *)self logger];
    oslog = [logger oslog];

    if (_internalConnectToServer)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        policy = [(SUCoreConnectClient *)self policy];
        serviceName = [policy serviceName];
        *buf = 138543874;
        *&buf[4] = serviceName;
        *&buf[12] = 2114;
        *&buf[14] = messageCopy;
        *&buf[22] = 2114;
        v48 = _internalConnectToServer;
        _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[SendServerMessageSync](%{public}@) Connected to server and calling synchronous sendMessage %{public}@ for connection %{public}@", buf, 0x20u);
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
      v17 = _internalConnectToServer;
      v38 = v17;
      v39 = &v40;
      v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v37];
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __86__SUCoreConnectClient_connectClientSendSynchronousServerMessage_proxyObject_errorPtr___block_invoke_122;
      v32 = &unk_2787BCBC0;
      selfCopy = self;
      v19 = v17;
      v34 = v19;
      v35 = buf;
      v36 = &v40;
      [v18 connectProtocolFromClientSendServerMessage:messageCopy proxyObject:objectCopy withReply:&v29];

      [(SUCoreConnectClient *)self _invalidateConnectionIfNonPersistent:v19, v29, v30, v31, v32, selfCopy];
      if (ptr)
      {
        *ptr = v41[5];
      }

      v20 = *(*&buf[8] + 40);

      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUCoreConnectClient connectClientSendSynchronousServerMessage:oslog proxyObject:? errorPtr:?];
      }

      if (ptr)
      {
        mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
        *ptr = [mEMORY[0x277D643F8] buildError:8909 underlying:0 description:@"No server connection present to send client->server message"];
      }

      v20 = 0;
    }
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v22 = [v11 description];
    [mEMORY[0x277D64428] trackAnomaly:@"connectClientSendSynchronousServerMessage" forReason:v22 withResult:objc_msgSend(v11 withError:{"code"), v11}];

    logger2 = [(SUCoreConnectClient *)self logger];
    oslog2 = [logger2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClient connectClientSendSynchronousServerMessage:v11 proxyObject:oslog2 errorPtr:?];
    }

    if (ptr)
    {
      v25 = v11;
      v20 = 0;
      *ptr = v11;
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
  logger = [(SUCoreConnectClient *)self logger];
  oslog = [logger oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    policy = [(SUCoreConnectClient *)self policy];
    serviceName = [policy serviceName];
    v8 = 138543362;
    v9 = serviceName;
    _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[ForceCloseConnection](%{public}@) Incoming client request to force close connection", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectProtocolFromServerRequestClientID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    clientReplyCompletionQueue = [(SUCoreConnectClient *)self clientReplyCompletionQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__SUCoreConnectClient_connectProtocolFromServerRequestClientID___block_invoke;
    v6[3] = &unk_2787BCAF8;
    v6[4] = self;
    v7 = dCopy;
    dispatch_async(clientReplyCompletionQueue, v6);
  }
}

void __64__SUCoreConnectClient_connectProtocolFromServerRequestClientID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) policy];
  v2 = [v3 clientID];
  (*(v1 + 16))(v1, v2);
}

- (void)connectProtocolFromServerSendClientMessage:(id)message reply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  replyCopy = reply;
  policy = [(SUCoreConnectClient *)self policy];
  clientDelegate = [policy clientDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    clientMessageQueue = [(SUCoreConnectClient *)self clientMessageQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SUCoreConnectClient_connectProtocolFromServerSendClientMessage_reply___block_invoke;
    block[3] = &unk_2787BCC10;
    v27 = messageCopy;
    selfCopy = self;
    v29 = replyCopy;
    dispatch_async(clientMessageQueue, block);

    v12 = v27;
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v12 = [mEMORY[0x277D643F8] buildError:8900 underlying:0 description:@"Client does not respond to messages"];

    logger = [(SUCoreConnectClient *)self logger];
    oslog = [logger oslog];

    v16 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
    if (replyCopy)
    {
      if (v16)
      {
        policy2 = [(SUCoreConnectClient *)self policy];
        serviceName = [policy2 serviceName];
        *buf = 138543874;
        v31 = serviceName;
        v32 = 2114;
        v33 = messageCopy;
        v34 = 2114;
        v35 = v12;
        _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[SendClientMessage](%{public}@) Client does not respond to handleMessage:%{public}@, error:%{public}@, calling reply block", buf, 0x20u);
      }

      clientReplyCompletionQueue = [(SUCoreConnectClient *)self clientReplyCompletionQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __72__SUCoreConnectClient_connectProtocolFromServerSendClientMessage_reply___block_invoke_128;
      v23[3] = &unk_2787BCAF8;
      v25 = replyCopy;
      v24 = v12;
      dispatch_async(clientReplyCompletionQueue, v23);

      oslog = v25;
    }

    else if (v16)
    {
      policy3 = [(SUCoreConnectClient *)self policy];
      serviceName2 = [policy3 serviceName];
      *buf = 138543874;
      v31 = serviceName2;
      v32 = 2114;
      v33 = messageCopy;
      v34 = 2114;
      v35 = v12;
      _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[SendClientMessage](%{public}@) Client does not respond to handleMessage:%{public}@, error: %{public}@, and no reply block provided", buf, 0x20u);
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