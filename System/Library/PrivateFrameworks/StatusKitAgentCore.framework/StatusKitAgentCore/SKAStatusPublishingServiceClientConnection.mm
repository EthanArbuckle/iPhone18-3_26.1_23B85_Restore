@interface SKAStatusPublishingServiceClientConnection
+ (BOOL)_connection:(id)a3 isEntitledForPublishingWithStatusTypeIdentifier:(id)a4;
+ (BOOL)clientIsEntitledForAtLeastOnePublishingServiceType:(id)a3;
+ (id)logger;
- (SKAStatusPublishingServiceClientConnection)initWithXPCConnection:(id)a3 queue:(id)a4 daemonProtocolDelegate:(id)a5 connectionLifecycleDelegate:(id)a6;
- (SKAStatusPublishingServiceClientConnectionLifecycleDelegate)connectionLifecycleDelegate;
- (id)asynchronousRemoteDaemonDelegateWithErrorHandler:(id)a3;
- (id)description;
- (id)synchronousRemoteDaemonDelegateWithErrorHandler:(id)a3;
- (void)dealloc;
@end

@implementation SKAStatusPublishingServiceClientConnection

- (SKAStatusPublishingServiceClientConnection)initWithXPCConnection:(id)a3 queue:(id)a4 daemonProtocolDelegate:(id)a5 connectionLifecycleDelegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  dispatch_assert_queue_V2(v12);
  v32.receiver = self;
  v32.super_class = SKAStatusPublishingServiceClientConnection;
  v15 = [(SKAStatusPublishingServiceClientConnection *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_connectionLifecycleDelegate, v14);
    objc_storeStrong(&v16->_xpcConnection, a3);
    v17 = [MEMORY[0x277D68140] daemonXPCInterface];
    [v11 setExportedInterface:v17];

    v18 = [objc_alloc(MEMORY[0x277D68168]) initWithForwardingTarget:v13];
    [v11 setExportedObject:v18];

    v19 = [MEMORY[0x277D68140] daemonDelegateXPCInterface];
    [v11 setRemoteObjectInterface:v19];

    [v11 _setQueue:v12];
    objc_initWeak(&location, v11);
    objc_initWeak(&from, v16);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __125__SKAStatusPublishingServiceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke;
    v27[3] = &unk_27843F068;
    objc_copyWeak(&v28, &from);
    objc_copyWeak(&v29, &location);
    [v11 setInterruptionHandler:v27];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __125__SKAStatusPublishingServiceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke_4;
    v24 = &unk_27843F068;
    objc_copyWeak(&v25, &from);
    objc_copyWeak(&v26, &location);
    [v11 setInvalidationHandler:&v21];
    [v11 resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __125__SKAStatusPublishingServiceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[SKAStatusPublishingServiceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v7 = 134217984;
    v8 = [v4 processIdentifier];
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld interrupted", &v7, 0xCu);
  }

  v5 = [WeakRetained connectionLifecycleDelegate];
  [v5 publishingServiceClientConnectionWasInterrupted:WeakRetained];

  v6 = *MEMORY[0x277D85DE8];
}

void __125__SKAStatusPublishingServiceClientConnection_initWithXPCConnection_queue_daemonProtocolDelegate_connectionLifecycleDelegate___block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[SKAStatusPublishingServiceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v7 = 134217984;
    v8 = [v4 processIdentifier];
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld invalidated", &v7, 0xCu);
  }

  v5 = [WeakRetained connectionLifecycleDelegate];
  [v5 publishingServiceClientConnectionWasInvalidated:WeakRetained];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)asynchronousRemoteDaemonDelegateWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKAStatusPublishingServiceClientConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__SKAStatusPublishingServiceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke;
  v9[3] = &unk_27843F090;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __95__SKAStatusPublishingServiceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusPublishingServiceClientConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __95__SKAStatusPublishingServiceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)synchronousRemoteDaemonDelegateWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKAStatusPublishingServiceClientConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__SKAStatusPublishingServiceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke;
  v9[3] = &unk_27843F090;
  v10 = v4;
  v6 = v4;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __94__SKAStatusPublishingServiceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusPublishingServiceClientConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94__SKAStatusPublishingServiceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[SKAStatusPublishingServiceClientConnection logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing {pointer: %p}", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v5.receiver = self;
  v5.super_class = SKAStatusPublishingServiceClientConnection;
  [(SKAStatusPublishingServiceClientConnection *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)clientIsEntitledForAtLeastOnePublishingServiceType:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 sk_stringArrayValueForEntitlement:@"com.apple.StatusKit.publish.types"];
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
          v11 = +[SKAStatusPublishingServiceClientConnection logger];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v12 = [v3 processIdentifier];
            *buf = 134218242;
            v23 = v12;
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

  if (v17 || ([v3 sk_BOOLeanValueForEntitlement:@"com.apple.StatusKit.publish.allTypes"] & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v16 = +[SKAStatusPublishingServiceClientConnection logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusPublishingServiceClientConnection clientIsEntitledForAtLeastOnePublishingServiceType:v16];
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)_connection:(id)a3 isEntitledForPublishingWithStatusTypeIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length] && (objc_msgSend(v5, "sk_stringArrayValueForEntitlement:", @"com.apple.StatusKit.publish.types"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v6), v7, (v8 & 1) != 0) || objc_msgSend(v6, "length") && (objc_msgSend(v5, "sk_BOOLeanValueForEntitlement:", @"com.apple.StatusKit.publish.allTypes") & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = +[SKAStatusPublishingServiceClientConnection logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SKAStatusPublishingServiceClientConnection *)v6 _connection:v10 isEntitledForPublishingWithStatusTypeIdentifier:v11, v12, v13, v14, v15, v16];
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
  if (logger_onceToken_21 != -1)
  {
    +[SKAStatusPublishingServiceClientConnection logger];
  }

  v3 = logger__logger_21;

  return v3;
}

uint64_t __52__SKAStatusPublishingServiceClientConnection_logger__block_invoke()
{
  logger__logger_21 = os_log_create("com.apple.StatusKit", "SKAStatusPublishingServiceClientConnection");

  return MEMORY[0x2821F96F8]();
}

- (SKAStatusPublishingServiceClientConnectionLifecycleDelegate)connectionLifecycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionLifecycleDelegate);

  return WeakRetained;
}

void __95__SKAStatusPublishingServiceClientConnection_asynchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_220099000, a2, a3, "XPC Error (async): %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __94__SKAStatusPublishingServiceClientConnection_synchronousRemoteDaemonDelegateWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_220099000, a2, a3, "XPC Error (synchronous): %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_connection:(uint64_t)a3 isEntitledForPublishingWithStatusTypeIdentifier:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_220099000, a2, a3, "Client is not entitled to publish status of type %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end