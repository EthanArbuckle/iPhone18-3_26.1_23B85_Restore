@interface SKAStatusSubscriptionServiceClientConnection
+ (BOOL)_connection:(id)_connection isEntitledForSubscriptionWithStatusTypeIdentifier:(id)identifier;
+ (BOOL)clientIsEntitledForAtLeastOneSubscriptionServiceType:(id)type;
+ (id)logger;
- (SKAStatusSubscriptionServiceClientConnection)initWithXPCConnection:(id)connection queue:(id)queue daemonProtocolDelegate:(id)delegate connectionLifecycleDelegate:(id)lifecycleDelegate;
- (SKAStatusSubscriptionServiceClientConnectionLifecycleDelegate)connectionLifecycleDelegate;
- (id)asynchronousRemoteDaemonDelegateWithErrorHandler:(id)handler;
- (id)description;
- (id)synchronousRemoteDaemonDelegateWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation SKAStatusSubscriptionServiceClientConnection

- (SKAStatusSubscriptionServiceClientConnection)initWithXPCConnection:(id)connection queue:(id)queue daemonProtocolDelegate:(id)delegate connectionLifecycleDelegate:(id)lifecycleDelegate
{
  connectionCopy = connection;
  queueCopy = queue;
  delegateCopy = delegate;
  lifecycleDelegateCopy = lifecycleDelegate;
  dispatch_assert_queue_V2(queueCopy);
  v32.receiver = self;
  v32.super_class = SKAStatusSubscriptionServiceClientConnection;
  v15 = [(SKAStatusSubscriptionServiceClientConnection *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_connectionLifecycleDelegate, lifecycleDelegateCopy);
    objc_storeStrong(&v16->_xpcConnection, connection);
    daemonXPCInterface = [MEMORY[0x277D68150] daemonXPCInterface];
    [connectionCopy setExportedInterface:daemonXPCInterface];

    v18 = [objc_alloc(MEMORY[0x277D68168]) initWithForwardingTarget:delegateCopy];
    [connectionCopy setExportedObject:v18];

    daemonDelegateXPCInterface = [MEMORY[0x277D68150] daemonDelegateXPCInterface];
    [connectionCopy setRemoteObjectInterface:daemonDelegateXPCInterface];

    [connectionCopy _setQueue:queueCopy];
    objc_initWeak(&location, connectionCopy);
    objc_initWeak(&from, v16);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __127__SKAStatusSubscriptionServiceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke;
    v27[3] = &unk_27843F068;
    objc_copyWeak(&v28, &from);
    objc_copyWeak(&v29, &location);
    [connectionCopy setInterruptionHandler:v27];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __127__SKAStatusSubscriptionServiceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke_4;
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

void __127__SKAStatusSubscriptionServiceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[SKAStatusSubscriptionServiceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v7 = 134217984;
    v8 = [v4 processIdentifier];
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld interrupted", &v7, 0xCu);
  }

  v5 = [WeakRetained connectionLifecycleDelegate];
  [v5 subscriptionServiceClientConnectionWasInterrupted:WeakRetained];

  v6 = *MEMORY[0x277D85DE8];
}

void __127__SKAStatusSubscriptionServiceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[SKAStatusSubscriptionServiceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v7 = 134217984;
    v8 = [v4 processIdentifier];
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld invalidated", &v7, 0xCu);
  }

  v5 = [WeakRetained connectionLifecycleDelegate];
  [v5 subscriptionServiceClientConnectionWasInvalidated:WeakRetained];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)asynchronousRemoteDaemonDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKAStatusSubscriptionServiceClientConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__SKAStatusSubscriptionServiceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke;
  v9[3] = &unk_27843F090;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __97__SKAStatusSubscriptionServiceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionServiceClientConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __95__SKAStatusPublishingServiceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)synchronousRemoteDaemonDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKAStatusSubscriptionServiceClientConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__SKAStatusSubscriptionServiceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke;
  v9[3] = &unk_27843F090;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __96__SKAStatusSubscriptionServiceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionServiceClientConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94__SKAStatusPublishingServiceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[SKAStatusSubscriptionServiceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing {pointer: %p}", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v5.receiver = self;
  v5.super_class = SKAStatusSubscriptionServiceClientConnection;
  [(SKAStatusSubscriptionServiceClientConnection *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)clientIsEntitledForAtLeastOneSubscriptionServiceType:(id)type
{
  v27 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = [typeCopy sk_stringArrayValueForEntitlement:@"com.apple.StatusKit.subscribe.types"];
  v17 = [v4 count];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        if ((ValidateClientIsInAllowlistForServiceName() & 1) == 0)
        {
          v11 = +[SKAStatusSubscriptionServiceClientConnection logger];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            processIdentifier = [typeCopy processIdentifier];
            *buf = 134218242;
            v23 = processIdentifier;
            v24 = 2112;
            v25 = v10;
            _os_log_fault_impl(&dword_220099000, v11, OS_LOG_TYPE_FAULT, "XPC connection from PID %ld is attempting to use StatusKit for an unknown status type identifier: %@. This will result in a connection rejection in the future.", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  if (v17 || ([typeCopy sk_BOOLeanValueForEntitlement:@"com.apple.StatusKit.subscribe.allTypes"] & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v16 = +[SKAStatusSubscriptionServiceClientConnection logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClientConnection clientIsEntitledForAtLeastOnePublishingServiceType:v16];
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)_connection:(id)_connection isEntitledForSubscriptionWithStatusTypeIdentifier:(id)identifier
{
  _connectionCopy = _connection;
  identifierCopy = identifier;
  if ([identifierCopy length] && (objc_msgSend(_connectionCopy, "sk_stringArrayValueForEntitlement:", @"com.apple.StatusKit.subscribe.types"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", identifierCopy), v7, (v8 & 1) != 0) || objc_msgSend(identifierCopy, "length") && (objc_msgSend(_connectionCopy, "sk_BOOLeanValueForEntitlement:", @"com.apple.StatusKit.subscribe.allTypes") & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = +[SKAStatusSubscriptionServiceClientConnection logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SKAStatusSubscriptionServiceClientConnection *)identifierCopy _connection:v10 isEntitledForSubscriptionWithStatusTypeIdentifier:v11, v12, v13, v14, v15, v16];
    }

    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ PID=%ld>", v5, -[NSXPCConnection processIdentifier](self->_xpcConnection, "processIdentifier")];

  return v6;
}

+ (id)logger
{
  if (logger_onceToken_27 != -1)
  {
    +[SKAStatusSubscriptionServiceClientConnection logger];
  }

  v3 = logger__logger_27;

  return v3;
}

uint64_t __54__SKAStatusSubscriptionServiceClientConnection_logger__block_invoke()
{
  logger__logger_27 = os_log_create("com.apple.StatusKit", "SKAStatusSubscriptionServiceClientConnection");

  return MEMORY[0x2821F96F8]();
}

- (SKAStatusSubscriptionServiceClientConnectionLifecycleDelegate)connectionLifecycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionLifecycleDelegate);

  return WeakRetained;
}

+ (void)_connection:(uint64_t)a3 isEntitledForSubscriptionWithStatusTypeIdentifier:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_220099000, a2, a3, "Client is not entitled to subscription information for status of type %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end