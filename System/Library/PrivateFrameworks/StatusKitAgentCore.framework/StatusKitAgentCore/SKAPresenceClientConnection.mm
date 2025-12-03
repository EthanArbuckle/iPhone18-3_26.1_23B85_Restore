@interface SKAPresenceClientConnection
+ (BOOL)clientIsEntitledForPresence:(id)presence;
+ (id)clientIDForConnection:(id)connection;
+ (id)logger;
- (SKAPresenceClientConnection)initWithXPCConnection:(id)connection queue:(id)queue daemonProtocolDelegate:(id)delegate connectionLifecycleDelegate:(id)lifecycleDelegate;
- (SKAPresenceClientConnectionLifecycleDelegate)connectionLifecycleDelegate;
- (id)asynchronousRemoteDaemonDelegateWithErrorHandler:(id)handler;
- (id)description;
- (id)synchronousRemoteDaemonDelegateWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation SKAPresenceClientConnection

- (SKAPresenceClientConnection)initWithXPCConnection:(id)connection queue:(id)queue daemonProtocolDelegate:(id)delegate connectionLifecycleDelegate:(id)lifecycleDelegate
{
  connectionCopy = connection;
  queueCopy = queue;
  delegateCopy = delegate;
  lifecycleDelegateCopy = lifecycleDelegate;
  dispatch_assert_queue_V2(queueCopy);
  v32.receiver = self;
  v32.super_class = SKAPresenceClientConnection;
  v15 = [(SKAPresenceClientConnection *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_connectionLifecycleDelegate, lifecycleDelegateCopy);
    objc_storeStrong(&v16->_xpcConnection, connection);
    daemonXPCInterface = [MEMORY[0x277D680F0] daemonXPCInterface];
    [connectionCopy setExportedInterface:daemonXPCInterface];

    v18 = [objc_alloc(MEMORY[0x277D68168]) initWithForwardingTarget:delegateCopy];
    [connectionCopy setExportedObject:v18];

    daemonDelegateXPCInterface = [MEMORY[0x277D680F0] daemonDelegateXPCInterface];
    [connectionCopy setRemoteObjectInterface:daemonDelegateXPCInterface];

    [connectionCopy _setQueue:queueCopy];
    objc_initWeak(&location, connectionCopy);
    objc_initWeak(&from, v16);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __110__SKAPresenceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke;
    v27[3] = &unk_27843F068;
    objc_copyWeak(&v28, &from);
    objc_copyWeak(&v29, &location);
    [connectionCopy setInterruptionHandler:v27];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __110__SKAPresenceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke_3;
    v24 = &unk_27843F068;
    objc_copyWeak(&v25, &from);
    objc_copyWeak(&v26, &location);
    [connectionCopy setInvalidationHandler:&v21];
    [connectionCopy resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __110__SKAPresenceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[SKAPresenceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v7 = 134217984;
    v8 = [v4 processIdentifier];
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld interrupted", &v7, 0xCu);
  }

  v5 = [WeakRetained connectionLifecycleDelegate];
  [v5 presenceClientConnectionWasInterrupted:WeakRetained];

  v6 = *MEMORY[0x277D85DE8];
}

void __110__SKAPresenceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[SKAPresenceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v7 = 134217984;
    v8 = [v4 processIdentifier];
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld invalidated", &v7, 0xCu);
  }

  v5 = [WeakRetained connectionLifecycleDelegate];
  [v5 presenceClientConnectionWasInvalidated:WeakRetained];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)asynchronousRemoteDaemonDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKAPresenceClientConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__SKAPresenceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke;
  v9[3] = &unk_27843F090;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __80__SKAPresenceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAPresenceClientConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__SKAPresenceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)synchronousRemoteDaemonDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKAPresenceClientConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__SKAPresenceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke;
  v9[3] = &unk_27843F090;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __79__SKAPresenceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAPresenceClientConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__SKAPresenceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[SKAPresenceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing {pointer: %p}", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v5.receiver = self;
  v5.super_class = SKAPresenceClientConnection;
  [(SKAPresenceClientConnection *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)clientIsEntitledForPresence:(id)presence
{
  presenceCopy = presence;
  v4 = [SKAPresenceClientConnection clientIDForConnection:presenceCopy];
  v5 = [v4 length];
  if ((ValidateClientIsInAllowlistForServiceName() & 1) == 0)
  {
    v6 = +[SKAPresenceClientConnection logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SKAPresenceClientConnection *)presenceCopy clientIsEntitledForPresence:v4, v6];
    }
  }

  return v5 != 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ PID=%ld>", v5, -[NSXPCConnection processIdentifier](self->_xpcConnection, "processIdentifier")];

  return v6;
}

+ (id)clientIDForConnection:(id)connection
{
  v3 = [connection sk_stringValueForEntitlement:@"com.apple.StatusKit.presence.clientID"];
  if (!v3)
  {
    v4 = +[SKAPresenceClientConnection logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClientConnection clientIDForConnection:v4];
    }
  }

  return v3;
}

+ (id)logger
{
  if (logger_onceToken_18 != -1)
  {
    +[SKAPresenceClientConnection logger];
  }

  v3 = logger__logger_18;

  return v3;
}

uint64_t __37__SKAPresenceClientConnection_logger__block_invoke()
{
  logger__logger_18 = os_log_create("com.apple.StatusKit", "SKAPresenceClientConnection");

  return MEMORY[0x2821F96F8]();
}

- (SKAPresenceClientConnectionLifecycleDelegate)connectionLifecycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionLifecycleDelegate);

  return WeakRetained;
}

void __80__SKAPresenceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "XPC Error (async): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __79__SKAPresenceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "XPC Error (synchronous): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)clientIsEntitledForPresence:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218242;
  v7 = [a1 processIdentifier];
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_220099000, a3, OS_LOG_TYPE_FAULT, "XPC connection from PID %ld is attempting to use StatusKit with an unknown client ID: %@. This will result in a connection rejection in the future.", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end