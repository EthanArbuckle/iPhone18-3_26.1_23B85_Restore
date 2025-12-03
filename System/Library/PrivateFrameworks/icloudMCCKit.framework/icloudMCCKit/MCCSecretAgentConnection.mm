@interface MCCSecretAgentConnection
- (MCCSecretAgentConnection)initWithListenerEndpoint:(id)endpoint;
- (id)_connection;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_connectionInterruptionHandler;
- (void)_connectionInvalidationHandler;
- (void)dealloc;
@end

@implementation MCCSecretAgentConnection

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1D3703000, a2, OS_LOG_TYPE_DEBUG, "%@ deallocated", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (MCCSecretAgentConnection)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = MCCSecretAgentConnection;
  v6 = [(MCCSecretAgentConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listenerEndpoint, endpoint);
    v7->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(MCCSecretAgentConnection *)self _connection];
  v6 = [_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(MCCSecretAgentConnection *)self _connection];
  v6 = [_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_connection
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MCCSecretAgentConnection__connection__block_invoke;
  v5[3] = &unk_1E84583D8;
  v5[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = __39__MCCSecretAgentConnection__connection__block_invoke(v5);
  os_unfair_lock_unlock(&self->_unfairLock);

  return v3;
}

id __39__MCCSecretAgentConnection__connection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    objc_initWeak(&location, v2);
    v4 = *(*(a1 + 32) + 24);
    v5 = objc_alloc(MEMORY[0x1E696B0B8]);
    if (v4)
    {
      v6 = [v5 initWithListenerEndpoint:v4];
    }

    else
    {
      v6 = [v5 initWithMachServiceName:@"com.apple.icloudmailagent.secret.xpc" options:0];
    }

    v7 = v6;

    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    v10 = *(*(a1 + 32) + 16);
    v11 = +[MCCSecretAgentInterface XPCInterface];
    [v10 setRemoteObjectInterface:v11];

    v12 = *(*(a1 + 32) + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __39__MCCSecretAgentConnection__connection__block_invoke_2;
    v17[3] = &unk_1E8458168;
    objc_copyWeak(&v18, &location);
    [v12 setInterruptionHandler:v17];
    v13 = *(*(a1 + 32) + 16);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39__MCCSecretAgentConnection__connection__block_invoke_3;
    v15[3] = &unk_1E8458168;
    objc_copyWeak(&v16, &location);
    [v13 setInvalidationHandler:v15];
    [*(*(a1 + 32) + 16) resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v3 = *(*(a1 + 32) + 16);
  }

  return v3;
}

void __39__MCCSecretAgentConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterruptionHandler];
}

void __39__MCCSecretAgentConnection__connection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidationHandler];
}

- (void)_connectionInterruptionHandler
{
  v2 = _MCCLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(MCCSecretAgentConnection *)v2 _connectionInterruptionHandler];
  }
}

- (void)_connectionInvalidationHandler
{
  v2 = _MCCLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(MCCSecretAgentConnection *)v2 _connectionInvalidationHandler];
  }
}

@end