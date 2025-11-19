@interface SKStatusSubscriptionDaemonConnection
+ (NSXPCInterface)daemonDelegateXPCInterface;
+ (NSXPCInterface)daemonXPCInterface;
+ (id)logger;
- (NSXPCConnection)xpcConnection;
- (SKStatusSubscriptionConnectionDelegateProtocol)connectionDelegate;
- (SKStatusSubscriptionDaemonConnection)initWithSubscriptionDaemonDelegate:(id)a3 connectionDelegate:(id)a4;
- (SKStatusSubscriptionDaemonDelegateProtocol)subscriptionDaemonDelegate;
- (id)asynchronousRemoteDaemonWithErrorHandler:(id)a3;
- (id)synchronousRemoteDaemonWithErrorHandler:(id)a3;
- (void)_resetConnectionHandlers;
- (void)invalidate;
- (void)setXPCConnection:(id)a3;
@end

@implementation SKStatusSubscriptionDaemonConnection

- (SKStatusSubscriptionDaemonConnection)initWithSubscriptionDaemonDelegate:(id)a3 connectionDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SKStatusSubscriptionDaemonConnection;
  v8 = [(SKStatusSubscriptionDaemonConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_subscriptionDaemonDelegate, v6);
    objc_storeWeak(&v9->_connectionDelegate, v7);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)asynchronousRemoteDaemonWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKStatusSubscriptionDaemonConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SKStatusSubscriptionDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_279D128F8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

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

- (id)synchronousRemoteDaemonWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKStatusSubscriptionDaemonConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__SKStatusSubscriptionDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_279D128F8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

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
  v2 = self;
  objc_sync_enter(v2);
  os_unfair_lock_lock(&v2->_lock);
  xpcConnection = v2->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [(SKStatusSubscriptionDaemonConnection *)v2 _xpcConnectionOptions];
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.StatusKit.subscribe" options:v4];
    v6 = v2->_xpcConnection;
    v2->_xpcConnection = v5;

    v7 = +[SKStatusSubscriptionDaemonConnection daemonXPCInterface];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v7];

    v8 = +[SKStatusSubscriptionDaemonConnection daemonDelegateXPCInterface];
    [(NSXPCConnection *)v2->_xpcConnection setExportedInterface:v8];

    v9 = [SKWeakObjectProxy alloc];
    WeakRetained = objc_loadWeakRetained(&v2->_subscriptionDaemonDelegate);
    v11 = [(SKWeakObjectProxy *)v9 initWithForwardingTarget:WeakRetained];
    [(NSXPCConnection *)v2->_xpcConnection setExportedObject:v11];

    objc_initWeak(&location, v2);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__SKStatusSubscriptionDaemonConnection_xpcConnection__block_invoke;
    v16[3] = &unk_279D12CD8;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__SKStatusSubscriptionDaemonConnection_xpcConnection__block_invoke_7;
    v14[3] = &unk_279D12CD8;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:v14];
    [(NSXPCConnection *)v2->_xpcConnection resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    xpcConnection = v2->_xpcConnection;
  }

  v12 = xpcConnection;
  os_unfair_lock_unlock(&v2->_lock);
  objc_sync_exit(v2);

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

- (void)setXPCConnection:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  os_unfair_lock_lock(&obj->_lock);
  xpcConnection = obj->_xpcConnection;
  obj->_xpcConnection = v4;

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