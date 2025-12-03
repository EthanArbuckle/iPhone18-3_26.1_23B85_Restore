@interface SBSSpotlightActivationRequestServer
+ (BSServiceInterface)interface;
- (SBSSpotlightActivationRequestServer)initWithDelegate:(id)delegate;
- (SBSSpotlightActivationRequestServerDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)dealloc;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)startServer;
@end

@implementation SBSSpotlightActivationRequestServer

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SBSSpotlightActivationRequestServer_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (interface_onceToken_20 != -1)
  {
    dispatch_once(&interface_onceToken_20, block);
  }

  v2 = interface___interface_19;

  return v2;
}

void __48__SBSSpotlightActivationRequestServer_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698F470];
  v2 = [*(a1 + 32) identifier];
  v6 = [v1 interfaceWithIdentifier:v2];

  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F05C32D8];
  [v6 setServer:v3];
  v4 = [v6 copy];
  v5 = interface___interface_19;
  interface___interface_19 = v4;
}

- (SBSSpotlightActivationRequestServer)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SBSSpotlightActivationRequestServer;
  v5 = [(SBSSpotlightActivationRequestServer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_connectionsLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)startServer
{
  if (!self->_connectionListener)
  {
    v7[7] = v2;
    v7[8] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__SBSSpotlightActivationRequestServer_startServer__block_invoke;
    v7[3] = &unk_1E7360A28;
    v7[4] = self;
    v5 = [MEMORY[0x1E698F4B8] listenerWithConfigurator:v7];
    connectionListener = self->_connectionListener;
    self->_connectionListener = v5;

    [(BSServiceConnectionListener *)self->_connectionListener activate];
  }
}

void __50__SBSSpotlightActivationRequestServer_startServer__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [objc_opt_class() identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)invalidate
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  connectionListener = self->_connectionListener;
  self->_connectionListener = 0;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSSpotlightActivationRequestServer.m" lineNumber:70 description:@"Released without invalidation."];
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v8 = connectionCopy;
    os_unfair_lock_lock(&self->_connectionsLock);
    connectionsLock_connections = self->_connectionsLock_connections;
    if (connectionsLock_connections)
    {
      [(NSMutableSet *)connectionsLock_connections addObject:v8];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFA8] setWithObject:v8];
      v7 = self->_connectionsLock_connections;
      self->_connectionsLock_connections = v6;
    }

    os_unfair_lock_unlock(&self->_connectionsLock);
    connectionCopy = v8;
  }
}

- (void)_removeConnection:(id)connection
{
  if (connection)
  {
    connectionCopy = connection;
    os_unfair_lock_lock(&self->_connectionsLock);
    [(NSMutableSet *)self->_connectionsLock_connections removeObject:connectionCopy];

    if (![(NSMutableSet *)self->_connectionsLock_connections count])
    {
      connectionsLock_connections = self->_connectionsLock_connections;
      self->_connectionsLock_connections = 0;
    }

    os_unfair_lock_unlock(&self->_connectionsLock);
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  remoteProcess = [connectionCopy remoteProcess];
  v12 = [remoteProcess hasEntitlement:@"com.apple.springboard.SBSRequestSpotlightActivationEntitlement"];

  if (v12)
  {
    objc_initWeak(&location, self);
    v13 = SBLogSpotlight();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = connectionCopy;
      _os_log_impl(&dword_19169D000, v13, OS_LOG_TYPE_DEFAULT, "SBSSpotlightActivationRequestServer received connection %@", buf, 0xCu);
    }

    [(SBSSpotlightActivationRequestServer *)self _addConnection:connectionCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__SBSSpotlightActivationRequestServer_listener_didReceiveConnection_withContext___block_invoke;
    v15[3] = &unk_1E735F0A8;
    v15[4] = self;
    objc_copyWeak(&v16, &location);
    [connectionCopy configureConnection:v15];
    [connectionCopy activate];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = SBLogSpotlight();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBSSpotlightActivationRequestServer listener:connectionCopy didReceiveConnection:v14 withContext:?];
    }

    [connectionCopy invalidate];
  }
}

void __81__SBSSpotlightActivationRequestServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [objc_opt_class() interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__SBSSpotlightActivationRequestServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_1E73616C8;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
}

void __81__SBSSpotlightActivationRequestServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogSpotlight();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "SBSSpotlightActivationRequestServer invalidated connection %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeConnection:v3];
}

void __65__SBSSpotlightActivationRequestServer_requestSpotlightActivation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 spotlightActivationRequestServerDidRequestSpotlightActivation:*(a1 + 32)];
}

- (SBSSpotlightActivationRequestServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(void *)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 remoteProcess];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "Unauthorized process %{public}@ attempted to request spotlight activation.", &v4, 0xCu);
}

@end