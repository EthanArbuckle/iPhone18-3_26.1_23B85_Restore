@interface SKPresenceDaemonConnection
+ (NSXPCInterface)daemonXPCInterface;
+ (id)logger;
- (NSXPCConnection)xpcConnection;
- (SKPresenceConnectionDelegateProtocol)connectionDelegate;
- (SKPresenceDaemonConnection)initWithPresenceDaemonDelegate:(id)delegate connectionDelegate:(id)connectionDelegate;
- (SKPresenceDaemonDelegateProtocol)presenceDaemonDelegate;
- (id)asynchronousRemoteDaemonWithErrorHandler:(id)handler;
- (id)synchronousRemoteDaemonWithErrorHandler:(id)handler;
- (void)_resetConnectionHandlers;
- (void)invalidate;
- (void)setXPCConnection:(id)connection;
@end

@implementation SKPresenceDaemonConnection

- (SKPresenceDaemonConnection)initWithPresenceDaemonDelegate:(id)delegate connectionDelegate:(id)connectionDelegate
{
  delegateCopy = delegate;
  connectionDelegateCopy = connectionDelegate;
  v11.receiver = self;
  v11.super_class = SKPresenceDaemonConnection;
  v8 = [(SKPresenceDaemonConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presenceDaemonDelegate, delegateCopy);
    objc_storeWeak(&v9->_connectionDelegate, connectionDelegateCopy);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)asynchronousRemoteDaemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKPresenceDaemonConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SKPresenceDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_279D128F8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __71__SKPresenceDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresenceDaemonConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__SKPresenceDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)synchronousRemoteDaemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKPresenceDaemonConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SKPresenceDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_279D128F8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __70__SKPresenceDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresenceDaemonConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__SKPresenceDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(SKPresenceDaemonConnection *)self _resetConnectionHandlers];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_resetConnectionHandlers
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_xpcConnection setExportedObject:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

+ (id)logger
{
  if (logger_onceToken != -1)
  {
    +[SKPresenceDaemonConnection logger];
  }

  v3 = logger__logger;

  return v3;
}

uint64_t __36__SKPresenceDaemonConnection_logger__block_invoke()
{
  logger__logger = os_log_create("com.apple.StatusKit", "PresenceDaemonConnection");

  return MEMORY[0x2821F96F8]();
}

- (NSXPCConnection)xpcConnection
{
  os_unfair_lock_lock(&self->_lock);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    _xpcConnectionOptions = [(SKPresenceDaemonConnection *)self _xpcConnectionOptions];
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.StatusKit.presence" options:_xpcConnectionOptions];
    v6 = self->_xpcConnection;
    self->_xpcConnection = v5;

    v7 = +[SKPresenceDaemonConnection daemonXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v7];

    v8 = +[SKPresenceDaemonConnection daemonDelegateXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v8];

    v9 = [SKWeakObjectProxy alloc];
    WeakRetained = objc_loadWeakRetained(&self->_presenceDaemonDelegate);
    v11 = [(SKWeakObjectProxy *)v9 initWithForwardingTarget:WeakRetained];
    [(NSXPCConnection *)self->_xpcConnection setExportedObject:v11];

    objc_initWeak(&location, self);
    from = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__SKPresenceDaemonConnection_xpcConnection__block_invoke;
    v20[3] = &unk_279D12940;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v20];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __43__SKPresenceDaemonConnection_xpcConnection__block_invoke_7;
    v17 = &unk_279D12940;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&v14];
    [(NSXPCConnection *)self->_xpcConnection resume:v14];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  v12 = xpcConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

void __43__SKPresenceDaemonConnection_xpcConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[SKPresenceDaemonConnection logger];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      v7 = 134217984;
      v8 = [v5 processIdentifier];
      _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld invalidated", &v7, 0xCu);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained _resetConnectionHandlers];
    os_unfair_lock_unlock(WeakRetained + 2);
    v3 = [(os_unfair_lock_s *)WeakRetained connectionDelegate];
    [v3 presenceDaemonConnectionDidDisconnect:WeakRetained];
  }

  else if (v4)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "_xpcConnection.invalidationHandler: The SKPresenceDaemonConnection has been deallocated, returning early...", &v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __43__SKPresenceDaemonConnection_xpcConnection__block_invoke_7(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[SKPresenceDaemonConnection logger];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      v7 = 134217984;
      v8 = [v5 processIdentifier];
      _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld interrupted", &v7, 0xCu);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained _resetConnectionHandlers];
    os_unfair_lock_unlock(WeakRetained + 2);
    v3 = [(os_unfair_lock_s *)WeakRetained connectionDelegate];
    [v3 presenceDaemonConnectionDidDisconnect:WeakRetained];
  }

  else if (v4)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "_xpcConnection.interruptionHandler: The SKPresenceDaemonConnection has been deallocated, returning early...", &v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setXPCConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = connectionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

+ (NSXPCInterface)daemonXPCInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C72C58];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_presentDevicesForPresenceIdentifier_completion_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_inviteHandles_fromSenderHandle_presenceIdentifier_completion_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_removeInvitedHandles_presenceIdentifier_completion_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_invitedHandlesForPresenceIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (SKPresenceDaemonDelegateProtocol)presenceDaemonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenceDaemonDelegate);

  return WeakRetained;
}

- (SKPresenceConnectionDelegateProtocol)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

void __71__SKPresenceDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26BA07000, a2, OS_LOG_TYPE_ERROR, "XPC Error (async): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __70__SKPresenceDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26BA07000, a2, OS_LOG_TYPE_ERROR, "XPC Error (synchronous): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end