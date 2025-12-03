@interface SBHomeScreenConfigurationServer
- (SBHomeScreenConfigurationServer)init;
- (id)configurationSessionConnection;
- (id)delegate;
- (id)makeErrorWithCode:(void *)code;
- (id)setConfigurationSessionConnection:(id *)result;
- (id)setDelegate:(id *)result;
- (uint64_t)activate;
- (uint64_t)authenticator;
- (uint64_t)connections;
- (uint64_t)listener;
- (uint64_t)queue;
- (void)applyConfiguration:(id)configuration completion:(id)completion;
- (void)beginConfigurationSessionWithCompletion:(id)completion;
- (void)endConfigurationSessionWithCompletion:(id)completion;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)removeConnection:(uint64_t)connection;
@end

@implementation SBHomeScreenConfigurationServer

- (uint64_t)queue
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)connections
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)listener
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (SBHomeScreenConfigurationServer)init
{
  v17.receiver = self;
  v17.super_class = SBHomeScreenConfigurationServer;
  v2 = [(SBHomeScreenConfigurationServer *)&v17 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.home-screen-configuration"];
    authenticator = v2->_authenticator;
    v2->_authenticator = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.SpringBoard.SBHomeScreenConfigurationServer.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v8;

    v10 = MEMORY[0x277CF32A0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__SBHomeScreenConfigurationServer_init__block_invoke;
    v15[3] = &unk_2783A9A18;
    v11 = v2;
    v16 = v11;
    v12 = [v10 listenerWithConfigurator:v15];
    listener = v11->_listener;
    v11->_listener = v12;
  }

  return v2;
}

void __39__SBHomeScreenConfigurationServer_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66AA8];
  v6 = a2;
  v4 = [v3 domain];
  [v6 setDomain:v4];

  v5 = [MEMORY[0x277D66AA8] identifier];
  [v6 setService:v5];

  [v6 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];

  if (self)
  {
    v13 = self->_queue;
    objc_initWeak(&location, self);
    authenticator = self->_authenticator;
  }

  else
  {
    v13 = 0;
    authenticator = 0;
    location = 0;
  }

  v15 = authenticator;
  v16 = [(FBServiceClientAuthenticator *)v15 authenticateAuditToken:auditToken];

  if (v16)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SBHomeScreenConfigurationServer_listener_didReceiveConnection_withContext___block_invoke;
    block[3] = &unk_2783A9A90;
    v17 = connectionCopy;
    v20 = v17;
    selfCopy = self;
    objc_copyWeak(&v23, &location);
    v22 = v13;
    dispatch_sync(v22, block);
    [v17 activate];

    objc_destroyWeak(&v23);
  }

  else
  {
    v18 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenConfigurationServer listener:connectionCopy didReceiveConnection:v18 withContext:?];
    }

    [connectionCopy invalidate];
  }

  objc_destroyWeak(&location);
}

void __77__SBHomeScreenConfigurationServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __77__SBHomeScreenConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v8 = &unk_2783A9A68;
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  objc_copyWeak(&v12, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  [v2 configureConnection:&v5];
  v3 = *(a1 + 40);
  if (v3)
  {
    v3 = v3[5];
  }

  v4 = v3;
  [v4 addObject:{*(a1 + 32), v5, v6, v7, v8, v9}];

  objc_destroyWeak(&v12);
}

void __77__SBHomeScreenConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66AA8] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66AA8] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __77__SBHomeScreenConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v9 = &unk_2783A9A40;
  objc_copyWeak(&v11, (a1 + 56));
  v10 = *(a1 + 40);
  [v3 setInvalidationHandler:&v6];
  [v3 setTargetQueue:{*(a1 + 48), v6, v7, v8, v9}];

  objc_destroyWeak(&v11);
}

void __77__SBHomeScreenConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Received Connection Invalidation: %{public}@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SBHomeScreenConfigurationServer *)WeakRetained removeConnection:?];
}

- (void)beginConfigurationSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_loadWeakRetained(&self->_configurationSessionConnection);
  }

  else
  {
    [SBHomeScreenConfigurationServer beginConfigurationSessionWithCompletion:];
    WeakRetained = 0;
    v5 = 0;
  }

  currentContext = [MEMORY[0x277CF3280] currentContext];
  v7 = currentContext;
  if (!WeakRetained)
  {
    selfCopy2 = self;
    v9 = 0;
LABEL_12:
    v10 = [(SBHomeScreenConfigurationServer *)selfCopy2 makeErrorWithCode:v9];
    completionCopy[2](completionCopy, v10);

    goto LABEL_13;
  }

  if (currentContext == v5)
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_13;
  }

  if (v5)
  {
    selfCopy2 = self;
    v9 = 2;
    goto LABEL_12;
  }

  if (self)
  {
    objc_storeWeak(&self->_configurationSessionConnection, currentContext);
  }

  [WeakRetained configurationServerDidBeginConfigurationSession:self completion:completionCopy];
LABEL_13:
}

- (void)applyConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_loadWeakRetained(&self->_configurationSessionConnection);
  }

  else
  {
    [SBHomeScreenConfigurationServer beginConfigurationSessionWithCompletion:];
    WeakRetained = 0;
    v8 = 0;
  }

  currentContext = [MEMORY[0x277CF3280] currentContext];
  v10 = currentContext;
  if (WeakRetained)
  {
    if (v8 && v8 == currentContext)
    {
      [WeakRetained configurationServer:self didReceiveConfiguration:configurationCopy completion:completionCopy];
    }

    else
    {
      [SBHomeScreenConfigurationServer applyConfiguration:? completion:?];
    }
  }

  else
  {
    [SBHomeScreenConfigurationServer applyConfiguration:? completion:?];
  }
}

- (void)endConfigurationSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_loadWeakRetained(&self->_configurationSessionConnection);
  }

  else
  {
    [SBHomeScreenConfigurationServer beginConfigurationSessionWithCompletion:];
    WeakRetained = 0;
    v5 = 0;
  }

  currentContext = [MEMORY[0x277CF3280] currentContext];
  v7 = currentContext;
  if (WeakRetained)
  {
    if (v5)
    {
      if (v5 == currentContext)
      {
        if (self)
        {
          objc_storeWeak(&self->_configurationSessionConnection, 0);
        }

        [WeakRetained configurationServerDidEndConfigurationSession:self completion:completionCopy];
      }

      else
      {
        [SBHomeScreenConfigurationServer applyConfiguration:? completion:?];
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [SBHomeScreenConfigurationServer applyConfiguration:? completion:?];
  }
}

- (uint64_t)activate
{
  if (result)
  {
    return [*(result + 16) activate];
  }

  return result;
}

- (uint64_t)authenticator
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)removeConnection:(uint64_t)connection
{
  v3 = a2;
  if (connection)
  {
    v6 = v3;
    dispatch_assert_queue_V2(*(connection + 32));
    WeakRetained = objc_loadWeakRetained((connection + 48));

    [*(connection + 40) removeObject:v6];
    v3 = v6;
    if (WeakRetained == v6)
    {
      v5 = objc_loadWeakRetained((connection + 8));
      [v5 configurationServerDidEndConfigurationSession:connection completion:&__block_literal_global_9];

      v3 = v6;
    }
  }
}

- (id)configurationSessionConnection
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 6);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)makeErrorWithCode:(void *)code
{
  if (code)
  {
    code = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D66FD8] code:a2 userInfo:0];
    v2 = vars8;
  }

  return code;
}

- (id)setConfigurationSessionConnection:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 6, a2);
  }

  return result;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 1, a2);
  }

  return result;
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Connection did not pass entitlement validation: %{public}@", &v2, 0xCu);
}

- (void)applyConfiguration:(void *)a1 completion:.cold.2(void *a1)
{
  [(SBHomeScreenConfigurationServer *)a1 makeErrorWithCode:?];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_0_8();
  v2(v1);
}

- (void)applyConfiguration:(void *)a1 completion:.cold.3(void *a1)
{
  [(SBHomeScreenConfigurationServer *)a1 makeErrorWithCode:?];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_0_8();
  v2(v1);
}

@end