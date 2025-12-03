@interface SKStatusPublishingDaemonConnection
+ (NSXPCInterface)daemonXPCInterface;
+ (id)logger;
- (NSXPCConnection)xpcConnection;
- (SKStatusPublishingConnectionDelegateProtocol)connectionDelegate;
- (SKStatusPublishingDaemonConnection)initWithPublishingDaemonDelegate:(id)delegate connectionDelegate:(id)connectionDelegate;
- (SKStatusPublishingDaemonDelegateProtocol)publishingDaemonDelegate;
- (id)asynchronousRemoteDaemonWithErrorHandler:(id)handler;
- (id)synchronousRemoteDaemonWithErrorHandler:(id)handler;
- (void)_resetConnectionHandlers;
- (void)invalidate;
- (void)setXPCConnection:(id)connection;
@end

@implementation SKStatusPublishingDaemonConnection

- (NSXPCConnection)xpcConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcConnection = selfCopy->_xpcConnection;
  if (!xpcConnection)
  {
    _xpcConnectionOptions = [(SKStatusPublishingDaemonConnection *)selfCopy _xpcConnectionOptions];
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.StatusKit.publish" options:_xpcConnectionOptions];
    v6 = selfCopy->_xpcConnection;
    selfCopy->_xpcConnection = v5;

    v7 = +[SKStatusPublishingDaemonConnection daemonXPCInterface];
    [(NSXPCConnection *)selfCopy->_xpcConnection setRemoteObjectInterface:v7];

    v8 = +[SKStatusPublishingDaemonConnection daemonDelegateXPCInterface];
    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedInterface:v8];

    v9 = [SKWeakObjectProxy alloc];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_publishingDaemonDelegate);
    v11 = [(SKWeakObjectProxy *)v9 initWithForwardingTarget:WeakRetained];
    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedObject:v11];

    objc_initWeak(&location, selfCopy);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__SKStatusPublishingDaemonConnection_xpcConnection__block_invoke;
    v16[3] = &unk_279D12CD8;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInvalidationHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__SKStatusPublishingDaemonConnection_xpcConnection__block_invoke_7;
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
  objc_sync_exit(selfCopy);

  return v12;
}

- (SKStatusPublishingDaemonConnection)initWithPublishingDaemonDelegate:(id)delegate connectionDelegate:(id)connectionDelegate
{
  delegateCopy = delegate;
  connectionDelegateCopy = connectionDelegate;
  v11.receiver = self;
  v11.super_class = SKStatusPublishingDaemonConnection;
  v8 = [(SKStatusPublishingDaemonConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_publishingDaemonDelegate, delegateCopy);
    objc_storeWeak(&v9->_connectionDelegate, connectionDelegateCopy);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)asynchronousRemoteDaemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKStatusPublishingDaemonConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__SKStatusPublishingDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_279D128F8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __79__SKStatusPublishingDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingDaemonConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__SKPresenceDaemonConnection_asynchronousRemoteDaemonWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)synchronousRemoteDaemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(SKStatusPublishingDaemonConnection *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SKStatusPublishingDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_279D128F8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __78__SKStatusPublishingDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingDaemonConnection logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__SKPresenceDaemonConnection_synchronousRemoteDaemonWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(SKStatusPublishingDaemonConnection *)self _resetConnectionHandlers];

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
  if (logger_onceToken_2 != -1)
  {
    +[SKStatusPublishingDaemonConnection logger];
  }

  v3 = logger__logger_2;

  return v3;
}

uint64_t __44__SKStatusPublishingDaemonConnection_logger__block_invoke()
{
  logger__logger_2 = os_log_create("com.apple.StatusKit", "PublishingDaemonConnection");

  return MEMORY[0x2821F96F8]();
}

void __51__SKStatusPublishingDaemonConnection_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[SKStatusPublishingDaemonConnection logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BA07000, v2, OS_LOG_TYPE_DEFAULT, "XPC Connection Invalidation Handled", v4, 2u);
  }

  [WeakRetained setXpcConnection:0];
  v3 = [WeakRetained connectionDelegate];
  [v3 publishingDaemonConnectionDidDisconnect:WeakRetained];
}

void __51__SKStatusPublishingDaemonConnection_xpcConnection__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[SKStatusPublishingDaemonConnection logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BA07000, v2, OS_LOG_TYPE_DEFAULT, "XPC Connection Interruption Handled", v4, 2u);
  }

  [WeakRetained setXpcConnection:0];
  v3 = [WeakRetained connectionDelegate];
  [v3 publishingDaemonConnectionDidDisconnect:WeakRetained];
}

- (void)setXPCConnection:(id)connection
{
  connectionCopy = connection;
  obj = self;
  objc_sync_enter(obj);
  xpcConnection = obj->_xpcConnection;
  obj->_xpcConnection = connectionCopy;

  objc_sync_exit(obj);
}

+ (NSXPCInterface)daemonXPCInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C72D88];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_inviteHandles_fromSenderHandle_withInvitationPayload_statusTypeIdentifier_completion_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_provisionPayloads_statusTypeIdentifier_completion_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
  [v2 setClasses:v17 forSelector:sel_provisionPayloads_statusTypeIdentifier_completion_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v2 setClasses:v20 forSelector:sel_removeInvitedHandles_statusTypeIdentifier_completion_ argumentIndex:0 ofReply:0];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v2 setClasses:v23 forSelector:sel_invitedHandlesForStatusTypeIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (SKStatusPublishingDaemonDelegateProtocol)publishingDaemonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_publishingDaemonDelegate);

  return WeakRetained;
}

- (SKStatusPublishingConnectionDelegateProtocol)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

@end