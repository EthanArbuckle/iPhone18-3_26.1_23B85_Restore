@interface WFUIPresenterLaunchAngelConnection
- (BOOL)connectionInterrupted;
- (BOOL)isConnected;
- (BSServiceConnectionClient)connection;
- (WFUIPresenterHostInterface)host;
- (WFUIPresenterLaunchAngelConnection)init;
- (id)presenterWithErrorHandler:(id)handler;
- (void)cleanUpWithReason:(id)reason;
- (void)dealloc;
- (void)prepareConnectionIfNecessary;
- (void)setConnection:(id)connection;
- (void)setConnectionInterrupted:(BOOL)interrupted;
- (void)setHost:(id)host;
@end

@implementation WFUIPresenterLaunchAngelConnection

- (WFUIPresenterHostInterface)host
{
  os_unfair_lock_lock(&self->_hostLock);
  v3 = self->_host;
  os_unfair_lock_unlock(&self->_hostLock);

  return v3;
}

- (void)setHost:(id)host
{
  hostCopy = host;
  os_unfair_lock_lock(&self->_hostLock);
  host = self->_host;

  if (host != hostCopy)
  {
    [(WFUIPresenterLaunchAngelConnection *)self cleanUpWithReason:@"got a new host object, have to set up a bidirectional connection"];
  }

  self->_host = hostCopy;

  os_unfair_lock_unlock(&self->_hostLock);
}

- (BOOL)connectionInterrupted
{
  os_unfair_lock_lock(&self->_stateLock);
  connectionInterrupted = self->_connectionInterrupted;
  os_unfair_lock_unlock(&self->_stateLock);
  return connectionInterrupted;
}

- (void)setConnectionInterrupted:(BOOL)interrupted
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_connectionInterrupted = interrupted;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BSServiceConnectionClient)connection
{
  os_unfair_lock_lock(&self->_connectionLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_connectionLock);

  return v3;
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_connectionLock);
  connection = self->_connection;
  if (connection)
  {
    [(BSServiceConnectionClient *)connection invalidate];
    v6 = self->_connection;
  }

  else
  {
    v6 = 0;
  }

  self->_connection = connectionCopy;

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (BOOL)isConnected
{
  connection = [(WFUIPresenterLaunchAngelConnection *)self connection];
  v3 = connection != 0;

  return v3;
}

- (id)presenterWithErrorHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "[WFUIPresenterLaunchAngelConnection presenterWithErrorHandler:]";
    v15 = 2048;
    v16 = CACurrentMediaTime();
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Opening connection to the UI presenter, %f", buf, 0x16u);
  }

  [(WFUIPresenterLaunchAngelConnection *)self prepareConnectionIfNecessary];
  [(WFUIPresenterLaunchAngelConnection *)self setErrorHandler:handlerCopy];

  connection = [(WFUIPresenterLaunchAngelConnection *)self connection];
  v7 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v12 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v9 = [connection remoteTargetWithLaunchingAssertionAttributes:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)prepareConnectionIfNecessary
{
  v18 = *MEMORY[0x1E69E9840];
  connection = [(WFUIPresenterLaunchAngelConnection *)self connection];
  if (connection && (v5 = connection, v6 = [(WFUIPresenterLaunchAngelConnection *)self connectionInterrupted], v5, v6))
  {
    connection2 = [(WFUIPresenterLaunchAngelConnection *)self connection];
    [connection2 activate];

    v8 = *MEMORY[0x1E69E9840];

    [(WFUIPresenterLaunchAngelConnection *)self setConnectionInterrupted:0];
  }

  else
  {
    connection3 = [(WFUIPresenterLaunchAngelConnection *)self connection];

    if (!connection3)
    {
      v10 = [MEMORY[0x1E698F498] endpointForMachName:@"com.apple.shortcuts.view-service" service:@"com.apple.shortcuts.ui-presenter" instance:0];
      if (!v10)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"WFUIPresenterConnection.m" lineNumber:202 description:@"This process cannot connect to the view service endpoint."];
      }

      v11 = [MEMORY[0x1E698F490] connectionWithEndpoint:v10];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __66__WFUIPresenterLaunchAngelConnection_prepareConnectionIfNecessary__block_invoke;
      v15[3] = &unk_1E8376D90;
      v15[4] = self;
      [v11 configureConnection:v15];
      v12 = getWFLaunchAngelLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "[WFUIPresenterLaunchAngelConnection prepareConnectionIfNecessary]";
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s [Host-side] Launch angel activating", buf, 0xCu);
      }

      [v11 activate];
      [(WFUIPresenterLaunchAngelConnection *)self setConnection:v11];
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

void __66__WFUIPresenterLaunchAngelConnection_prepareConnectionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = WFUIPresenterServiceInterface();
  [v3 setInterface:v5];

  v6 = [*(a1 + 32) host];
  if (v6)
  {
    [v3 setInterfaceTarget:v6];
  }

  [v3 setActivationHandler:&__block_literal_global_311];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__WFUIPresenterLaunchAngelConnection_prepareConnectionIfNecessary__block_invoke_312;
  v8[3] = &unk_1E8376D68;
  v8[4] = *(a1 + 32);
  [v3 setInterruptionHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__WFUIPresenterLaunchAngelConnection_prepareConnectionIfNecessary__block_invoke_313;
  v7[3] = &unk_1E8376D68;
  v7[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v7];
}

void __66__WFUIPresenterLaunchAngelConnection_prepareConnectionIfNecessary__block_invoke_312(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = getWFLaunchAngelLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[WFUIPresenterLaunchAngelConnection prepareConnectionIfNecessary]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEFAULT, "%s [Host-side] Launch angel connection interruption", &v10, 0xCu);
  }

  [*(a1 + 32) setConnectionInterrupted:1];
  v3 = [*(a1 + 32) errorHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) errorHandler];
    v5 = WFRunnerFailureErrorMessage(0);
    (v4)[2](v4, v5);

    [*(a1 + 32) setErrorHandler:0];
  }

  v6 = [*(a1 + 32) interruptionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) interruptionHandler];
    v8 = WFRunnerFailureErrorMessage(0);
    (v7)[2](v7, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __66__WFUIPresenterLaunchAngelConnection_prepareConnectionIfNecessary__block_invoke_313(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getWFLaunchAngelLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[WFUIPresenterLaunchAngelConnection prepareConnectionIfNecessary]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEFAULT, "%s [Host-side] Launch angel connection invalidated", &v5, 0xCu);
  }

  result = [*(a1 + 32) setConnection:0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __66__WFUIPresenterLaunchAngelConnection_prepareConnectionIfNecessary__block_invoke_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = getWFLaunchAngelLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[WFUIPresenterLaunchAngelConnection prepareConnectionIfNecessary]_block_invoke_2";
    _os_log_impl(&dword_1CA256000, v0, OS_LOG_TYPE_DEFAULT, "%s [Host-side] Launch angel connection activated", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpWithReason:(id)reason
{
  v14 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  connection = [(WFUIPresenterLaunchAngelConnection *)self connection];

  v6 = getWFLaunchAngelLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (connection)
  {
    if (v7)
    {
      v10 = 136315394;
      v11 = "[WFUIPresenterLaunchAngelConnection cleanUpWithReason:]";
      v12 = 2112;
      v13 = reasonCopy;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Invalidating launch angel connection because '%@'", &v10, 0x16u);
    }

    connection2 = [(WFUIPresenterLaunchAngelConnection *)self connection];
    [connection2 invalidate];

    [(WFUIPresenterLaunchAngelConnection *)self setConnection:0];
  }

  else
  {
    if (v7)
    {
      v10 = 136315394;
      v11 = "[WFUIPresenterLaunchAngelConnection cleanUpWithReason:]";
      v12 = 2112;
      v13 = reasonCopy;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Tried to invalidate any existing launch angel connections because '%@', but there aren't any. Moving on.", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(WFUIPresenterLaunchAngelConnection *)self cleanUpWithReason:@"the connection class is deallocating"];
  v3.receiver = self;
  v3.super_class = WFUIPresenterLaunchAngelConnection;
  [(WFUIPresenterLaunchAngelConnection *)&v3 dealloc];
}

- (WFUIPresenterLaunchAngelConnection)init
{
  v6.receiver = self;
  v6.super_class = WFUIPresenterLaunchAngelConnection;
  v2 = [(WFUIPresenterLaunchAngelConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_stateLock._os_unfair_lock_opaque = 0;
    v2->_connectionLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end