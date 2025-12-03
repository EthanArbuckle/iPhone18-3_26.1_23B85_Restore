@interface SKStatusSubscriptionDaemonConnection
+ (NSXPCInterface)daemonDelegateXPCInterface;
+ (NSXPCInterface)daemonXPCInterface;
+ (id)logger;
- (NSXPCConnection)xpcConnection;
- (SKStatusSubscriptionConnectionDelegateProtocol)connectionDelegate;
- (SKStatusSubscriptionDaemonConnection)initWithSubscriptionDaemonDelegate:(id)delegate connectionDelegate:(id)connectionDelegate;
- (SKStatusSubscriptionDaemonDelegateProtocol)subscriptionDaemonDelegate;
- (id)asynchronousRemoteDaemonWithErrorHandler:(id)handler;
- (id)synchronousRemoteDaemonWithErrorHandler:(id)handler;
- (void)_resetConnectionHandlers;
- (void)invalidate;
- (void)setXPCConnection:(id)connection;
@end

@implementation SKStatusSubscriptionDaemonConnection

- (SKStatusSubscriptionDaemonConnection)initWithSubscriptionDaemonDelegate:(id)delegate connectionDelegate:(id)connectionDelegate
{
  delegateCopy = delegate;
  connectionDelegateCopy = connectionDelegate;
  v11.receiver = self;
  v11.super_class = SKStatusSubscriptionDaemonConnection;
  v8 = [(SKStatusSubscriptionDaemonConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_subscriptionDaemonDelegate, delegateCopy);
    objc_storeWeak(&v9->_connectionDelegate, connectionDelegateCopy);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)asynchronousRemoteDaemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKStatusSubscriptionDaemonConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SKStatusSubscriptionDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_279D128F8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __81__SKStatusSubscriptionDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionDaemonConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__SKPresenceDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)synchronousRemoteDaemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKStatusSubscriptionDaemonConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__SKStatusSubscriptionDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_279D128F8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __80__SKStatusSubscriptionDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionDaemonConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__SKPresenceDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(SKStatusSubscriptionDaemonConnection *)self _resetConnectionHandlers];

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
  if (logger_onceToken_8 != -1)
  {
    +[SKStatusSubscriptionDaemonConnection logger];
  }

  v3 = logger__logger_8;

  return v3;
}

uint64_t __46__SKStatusSubscriptionDaemonConnection_logger__block_invoke()
{
  logger__logger_8 = os_log_create("com.apple.StatusKit", "StatusSubscriptionDaemonConnection");

  return MEMORY[0x2821F96F8]();
}

- (NSXPCConnection)xpcConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  os_unfair_lock_lock(&selfCopy->_lock);
  xpcConnection = selfCopy->_xpcConnection;
  if (!xpcConnection)
  {
    _xpcConnectionOptions = [(SKStatusSubscriptionDaemonConnection *)selfCopy _xpcConnectionOptions];
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.StatusKit.subscribe" options:_xpcConnectionOptions];
    v6 = selfCopy->_xpcConnection;
    selfCopy->_xpcConnection = v5;

    v7 = +[SKStatusSubscriptionDaemonConnection daemonXPCInterface];
    [(NSXPCConnection *)selfCopy->_xpcConnection setRemoteObjectInterface:v7];

    v8 = +[SKStatusSubscriptionDaemonConnection daemonDelegateXPCInterface];
    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedInterface:v8];

    v9 = [SKWeakObjectProxy alloc];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_subscriptionDaemonDelegate);
    v11 = [(SKWeakObjectProxy *)v9 initWithForwardingTarget:WeakRetained];
    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedObject:v11];

    objc_initWeak(&location, selfCopy);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__SKStatusSubscriptionDaemonConnection_xpcConnection__block_invoke;
    v16[3] = &unk_279D12CD8;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInvalidationHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__SKStatusSubscriptionDaemonConnection_xpcConnection__block_invoke_7;
    v14[3] = &unk_279D12CD8;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInterruptionHandler:v14];
    [(NSXPCConnection *)selfCopy->_xpcConnection resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    xpcConnection = selfCopy->_xpcConnection;
  }

  v12 = xpcConnection;
  os_unfair_lock_unlock(&selfCopy->_lock);
  objc_sync_exit(selfCopy);

  return v12;
}

void __53__SKStatusSubscriptionDaemonConnection_xpcConnection__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[SKStatusSubscriptionDaemonConnection logger];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [(os_unfair_lock_s *)WeakRetained xpcConnection];
      v6 = 134217984;
      v7 = [v3 processIdentifier];
      _os_log_impl(&dword_26BA07000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld invalidated", &v6, 0xCu);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained setXpcConnection:0];
    os_unfair_lock_unlock(WeakRetained + 2);
    v4 = [(os_unfair_lock_s *)WeakRetained connectionDelegate];
    [v4 subscriptionDaemonConnectionDidDisconnect:WeakRetained];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __53__SKStatusSubscriptionDaemonConnection_xpcConnection__block_invoke_7(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[SKStatusSubscriptionDaemonConnection logger];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [(os_unfair_lock_s *)WeakRetained xpcConnection];
      v6 = 134217984;
      v7 = [v3 processIdentifier];
      _os_log_impl(&dword_26BA07000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection to PID %ld interrupted", &v6, 0xCu);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained setXpcConnection:0];
    os_unfair_lock_unlock(WeakRetained + 2);
    v4 = [(os_unfair_lock_s *)WeakRetained connectionDelegate];
    [v4 subscriptionDaemonConnectionDidDisconnect:WeakRetained];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setXPCConnection:(id)connection
{
  connectionCopy = connection;
  obj = self;
  objc_sync_enter(obj);
  os_unfair_lock_lock(&obj->_lock);
  xpcConnection = obj->_xpcConnection;
  obj->_xpcConnection = connectionCopy;

  os_unfair_lock_unlock(&obj->_lock);
  objc_sync_exit(obj);
}

+ (NSXPCInterface)daemonXPCInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C72EE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_allSubscriptionMetadatasForStatusTypeIdentifier_includingPersonalSubscription_completion_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier_completion_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier_completion_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_statusTypeIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (NSXPCInterface)daemonDelegateXPCInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C70B60];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_subscriptionStateChangedForSubscriptions_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (SKStatusSubscriptionDaemonDelegateProtocol)subscriptionDaemonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_subscriptionDaemonDelegate);

  return WeakRetained;
}

- (SKStatusSubscriptionConnectionDelegateProtocol)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

@end