@interface SLDServiceProxy
+ (id)proxyForServiceClass:(Class)class targetSerialQueue:(id)queue delegate:(id)delegate;
- (BOOL)connectionActive;
- (BOOL)shouldAutoReconnect;
- (BOOL)waitingForConnection;
- (NSXPCConnection)conn;
- (SLDActiveCallService)activeCallService;
- (SLDCollaborationAttributionViewService)collaborationAttributionViewService;
- (SLDServiceProxy)initWithServiceClass:(Class)class targetSerialQueue:(id)queue delegate:(id)delegate;
- (SLDServiceProxyDelegate)delegate;
- (id)remoteService;
- (id)synchronousRemoteService;
- (id)synchronousRemoteServiceWithErrorHandler:(id)handler;
- (int)remoteProcessID;
- (unint64_t)connectionRetryCount;
- (void)_atomicConfigureWithNewConnection:(id)connection;
- (void)_connectionInvalidated;
- (void)_establishNewConnection;
- (void)_invalidateAndDestroyConnection;
- (void)_notifyDelegateProxyDidConnect;
- (void)_notifyDelegateProxyDidDisconnect;
- (void)_receivedServiceConnection:(id)connection;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)setConn:(id)conn;
- (void)setConnectionActive:(BOOL)active;
- (void)setConnectionRetryCount:(unint64_t)count;
- (void)setDelegate:(id)delegate;
- (void)setShouldAutoReconnect:(BOOL)reconnect;
- (void)setWaitingForConnection:(BOOL)connection;
@end

@implementation SLDServiceProxy

- (void)connect
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_231772000, v0, v1, "[%@] Client requested service connection.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)connectionActive
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SLDServiceProxy_connectionActive__block_invoke;
  v5[3] = &unk_278925D18;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(propertyConcurrentQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_establishNewConnection
{
  clientQueue = [(SLDServiceProxy *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SLDServiceProxy__establishNewConnection__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __42__SLDServiceProxy__establishNewConnection__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  if (([*(a1 + 32) waitingForConnection] & 1) != 0 || (SLDAllowedServiceClasses(), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "containsObject:", objc_msgSend(*v1, "serviceClass")), v2, !v3))
  {
    v6 = SLDaemonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__SLDServiceProxy__establishNewConnection__block_invoke_cold_3(v1);
    }
  }

  else
  {
    v4 = SLDaemonLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __42__SLDServiceProxy__establishNewConnection__block_invoke_cold_1(v1);
    }

    [*v1 setWaitingForConnection:1];
    v5 = +[SLDServiceCenter sharedCenter];
    v6 = [v5 connectionForServiceClass:{objc_msgSend(*v1, "serviceClass")}];

    if (v6)
    {
LABEL_6:
      [*v1 _receivedServiceConnection:v6];
    }

    else
    {
      v9 = 0;
      *&v7 = 138413058;
      v16 = v7;
      while (1)
      {
        v10 = [*v1 connectionRetryCount];
        v6 = SLDaemonLogHandle();
        v11 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
        if (v9 > 0x13 || v9 >= v10)
        {
          break;
        }

        if (v11)
        {
          v13 = *v1;
          v14 = [*v1 serviceClass];
          v15 = [*v1 connectionRetryCount];
          *buf = v16;
          v18 = v13;
          v19 = 2112;
          v20 = v14;
          v21 = 2048;
          v22 = v9;
          v23 = 2048;
          v24 = v15;
          _os_log_error_impl(&dword_231772000, v6, OS_LOG_TYPE_ERROR, "[%@] Didn't get a connection for service class '%@'. Attempting to recover with retry number: %lu with max retries: %lu", buf, 0x2Au);
        }

        v12 = +[SLDServiceCenter sharedCenter];
        v6 = [v12 connectionForServiceClass:{objc_msgSend(*v1, "serviceClass")}];

        ++v9;
        if (v6)
        {
          goto LABEL_6;
        }
      }

      if (v11)
      {
        __42__SLDServiceProxy__establishNewConnection__block_invoke_cold_2(v1);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitingForConnection
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SLDServiceProxy_waitingForConnection__block_invoke;
  v5[3] = &unk_278925D18;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(propertyConcurrentQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)synchronousRemoteService
{
  conn = [(SLDServiceProxy *)self conn];

  if (conn)
  {
    conn2 = [(SLDServiceProxy *)self conn];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__SLDServiceProxy_synchronousRemoteService__block_invoke;
    v8[3] = &unk_278925CC8;
    v8[4] = self;
    v5 = [conn2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = SLDaemonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceProxy synchronousRemoteServiceWithErrorHandler:];
    }

    v5 = 0;
  }

  return v5;
}

- (NSXPCConnection)conn
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__SLDServiceProxy_conn__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(propertyConcurrentQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_notifyDelegateProxyDidConnect
{
  clientQueue = [(SLDServiceProxy *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SLDServiceProxy__notifyDelegateProxyDidConnect__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __49__SLDServiceProxy__notifyDelegateProxyDidConnect__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceProxyDidConnect:*(a1 + 32)];
}

- (SLDServiceProxyDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__SLDServiceProxy_delegate__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(propertyConcurrentQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __27__SLDServiceProxy_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

+ (id)proxyForServiceClass:(Class)class targetSerialQueue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  queueCopy = queue;
  v9 = [[SLDServiceProxy alloc] initWithServiceClass:class targetSerialQueue:queueCopy delegate:delegateCopy];

  return v9;
}

- (SLDServiceProxy)initWithServiceClass:(Class)class targetSerialQueue:(id)queue delegate:(id)delegate
{
  v29 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = SLDServiceProxy;
  v10 = [(SLDServiceProxy *)&v22 init];
  v11 = v10;
  if (v10)
  {
    v10->_serviceClass = class;
    if (queueCopy)
    {
      v12 = queueCopy;
      clientQueue = v11->_clientQueue;
      v11->_clientQueue = v12;
    }

    else
    {
      v14 = MEMORY[0x277D85CD0];
      v15 = MEMORY[0x277D85CD0];
      clientQueue = v11->_clientQueue;
      v11->_clientQueue = v14;
    }

    objc_storeWeak(&v11->_delegate, delegateCopy);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.SocialLayer.SLDServiceCenter.Properties", v16);
    propertyConcurrentQueue = v11->_propertyConcurrentQueue;
    v11->_propertyConcurrentQueue = v17;

    v11->_connectionRetryCount = 3;
    v19 = SLDaemonLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v24 = v11;
      v25 = 2112;
      classCopy = class;
      v27 = 2112;
      v28 = delegateCopy;
      _os_log_debug_impl(&dword_231772000, v19, OS_LOG_TYPE_DEBUG, "[%@] Initialized SLDServiceProxy with serviceClass: %@, delegate:%@", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)disconnect
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_231772000, v0, v1, "[%@] Client requested disconnection.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)synchronousRemoteServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  conn = [(SLDServiceProxy *)self conn];

  if (conn)
  {
    conn2 = [(SLDServiceProxy *)self conn];
    v7 = [conn2 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceProxy synchronousRemoteServiceWithErrorHandler:];
    }

    v7 = 0;
  }

  return v7;
}

void __43__SLDServiceProxy_synchronousRemoteService__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__SLDServiceProxy_synchronousRemoteService__block_invoke_cold_1(a1);
  }
}

- (id)remoteService
{
  conn = [(SLDServiceProxy *)self conn];

  if (conn)
  {
    conn2 = [(SLDServiceProxy *)self conn];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__SLDServiceProxy_remoteService__block_invoke;
    v8[3] = &unk_278925CC8;
    v8[4] = self;
    v5 = [conn2 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = SLDaemonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceProxy synchronousRemoteServiceWithErrorHandler:];
    }

    v5 = 0;
  }

  return v5;
}

void __32__SLDServiceProxy_remoteService__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __32__SLDServiceProxy_remoteService__block_invoke_cold_1(a1);
  }
}

- (int)remoteProcessID
{
  if (![(SLDServiceProxy *)self connectionActive])
  {
    return 0;
  }

  conn = [(SLDServiceProxy *)self conn];

  if (!conn)
  {
    return 0;
  }

  conn2 = [(SLDServiceProxy *)self conn];
  processIdentifier = [conn2 processIdentifier];

  return processIdentifier;
}

- (void)_atomicConfigureWithNewConnection:(id)connection
{
  connectionCopy = connection;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SLDServiceProxy__atomicConfigureWithNewConnection___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_barrier_async(propertyConcurrentQueue, v7);
}

void __53__SLDServiceProxy__atomicConfigureWithNewConnection___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  *(*(a1 + 32) + 10) = 1;
  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 9) = 0;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SLDServiceProxy_setDelegate___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_barrier_async(propertyConcurrentQueue, v7);
}

- (void)setConnectionActive:(BOOL)active
{
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SLDServiceProxy_setConnectionActive___block_invoke;
  v6[3] = &unk_278925D40;
  v6[4] = self;
  activeCopy = active;
  dispatch_barrier_async(propertyConcurrentQueue, v6);
}

- (unint64_t)connectionRetryCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SLDServiceProxy_connectionRetryCount__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(propertyConcurrentQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setConnectionRetryCount:(unint64_t)count
{
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SLDServiceProxy_setConnectionRetryCount___block_invoke;
  v6[3] = &unk_278925D68;
  v6[4] = self;
  v6[5] = count;
  dispatch_barrier_async(propertyConcurrentQueue, v6);
}

void __43__SLDServiceProxy_setConnectionRetryCount___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (*(v1 + 24) != v3)
  {
    if (v3 >= 0x14)
    {
      v3 = 20;
    }

    *(v1 + 24) = v3;
    v5 = SLDaemonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __43__SLDServiceProxy_setConnectionRetryCount___block_invoke_cold_1(v2, v4);
    }
  }
}

- (void)setConn:(id)conn
{
  connCopy = conn;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__SLDServiceProxy_setConn___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = connCopy;
  v6 = connCopy;
  dispatch_barrier_async(propertyConcurrentQueue, v7);
}

- (void)setWaitingForConnection:(BOOL)connection
{
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SLDServiceProxy_setWaitingForConnection___block_invoke;
  v6[3] = &unk_278925D40;
  v6[4] = self;
  connectionCopy = connection;
  dispatch_barrier_async(propertyConcurrentQueue, v6);
}

- (BOOL)shouldAutoReconnect
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SLDServiceProxy_shouldAutoReconnect__block_invoke;
  v5[3] = &unk_278925D18;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(propertyConcurrentQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setShouldAutoReconnect:(BOOL)reconnect
{
  propertyConcurrentQueue = [(SLDServiceProxy *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SLDServiceProxy_setShouldAutoReconnect___block_invoke;
  v6[3] = &unk_278925D40;
  v6[4] = self;
  reconnectCopy = reconnect;
  dispatch_barrier_async(propertyConcurrentQueue, v6);
}

- (void)_notifyDelegateProxyDidDisconnect
{
  clientQueue = [(SLDServiceProxy *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SLDServiceProxy__notifyDelegateProxyDidDisconnect__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __52__SLDServiceProxy__notifyDelegateProxyDidDisconnect__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceProxyDidDisconnect:*(a1 + 32)];
}

- (void)_receivedServiceConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (connectionCopy)
  {
    v5 = SLDaemonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SLDServiceProxy _receivedServiceConnection:?];
    }

    [(SLDServiceProxy *)self _atomicConfigureWithNewConnection:connectionCopy];
    objc_initWeak(&location, self);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __46__SLDServiceProxy__receivedServiceConnection___block_invoke;
    v15 = &unk_278925C50;
    objc_copyWeak(&v16, &location);
    [connectionCopy setInvalidationHandler:&v12];
    [connectionCopy resume];
    synchronousRemoteService = [(SLDServiceProxy *)self synchronousRemoteService];
    remoteObjectProtocol = [(objc_class *)[(SLDServiceProxy *)self serviceClass] remoteObjectProtocol];
    v8 = [synchronousRemoteService conformsToProtocol:remoteObjectProtocol];

    if (v8)
    {
      [(SLDServiceProxy *)self _notifyDelegateProxyDidConnect];
    }

    else
    {
      v9 = SLDaemonLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        remoteObjectProtocol2 = [(objc_class *)[(SLDServiceProxy *)self serviceClass] remoteObjectProtocol];
        *buf = 138412802;
        selfCopy = self;
        v20 = 2112;
        v21 = connectionCopy;
        v22 = 2112;
        v23 = remoteObjectProtocol2;
        _os_log_error_impl(&dword_231772000, v9, OS_LOG_TYPE_ERROR, "[%@] The new connection (%@) either didn't yield a remote service, or it didn't conform to the expected remote object protocol:%@. Closing connection.", buf, 0x20u);
      }

      [(SLDServiceProxy *)self _invalidateAndDestroyConnection];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __46__SLDServiceProxy__receivedServiceConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)_connectionInvalidated
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_231772000, v0, v1, "[%@] Attempting to reconnect.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAndDestroyConnection
{
  v8 = *MEMORY[0x277D85DE8];
  conn = [self conn];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  conn = [self conn];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __26__SLDServiceProxy_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    *(v2 + 10) = 0;
    [*(*(a1 + 32) + 32) setInvalidationHandler:0];
    *(*(a1 + 32) + 8) = 0;
    [*(*(a1 + 32) + 32) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }
}

- (SLDActiveCallService)activeCallService
{
  synchronousRemoteService = [(SLDServiceProxy *)self synchronousRemoteService];
  if ([synchronousRemoteService conformsToProtocol:&unk_2846C00E0])
  {
    v3 = synchronousRemoteService;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SLDCollaborationAttributionViewService)collaborationAttributionViewService
{
  synchronousRemoteService = [(SLDServiceProxy *)self synchronousRemoteService];
  if ([synchronousRemoteService conformsToProtocol:&unk_2846C2F20])
  {
    v3 = synchronousRemoteService;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)synchronousRemoteServiceWithErrorHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[%@] There is no current XPC connection, so no remote object proxy can be returned.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__SLDServiceProxy_synchronousRemoteService__block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) serviceClass];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__SLDServiceProxy_remoteService__block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) serviceClass];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__SLDServiceProxy_setConnectionRetryCount___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(*a1 + 24);
  OUTLINED_FUNCTION_5();
  v9 = v4;
  v10 = v5;
  _os_log_debug_impl(&dword_231772000, v6, OS_LOG_TYPE_DEBUG, "[%@] Client requested to set connectionRetryCount=%lu. Sanitized value we set: %lu", v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __42__SLDServiceProxy__establishNewConnection__block_invoke_cold_1(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 serviceClass];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__SLDServiceProxy__establishNewConnection__block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_231772000, v2, OS_LOG_TYPE_ERROR, "[%@] We could not retrieve a connection after attempting %lu times.", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __42__SLDServiceProxy__establishNewConnection__block_invoke_cold_3(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 serviceClass];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_receivedServiceConnection:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 serviceClass];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

@end