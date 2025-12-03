@interface SBSmartCoverService
- (SBSmartCoverService)initWithInitialState:(int64_t)state;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setWantsSmartCoverStateChanges:(id)changes;
- (void)smartCoverStateDidChange:(int64_t)change;
@end

@implementation SBSmartCoverService

- (SBSmartCoverService)initWithInitialState:(int64_t)state
{
  v17.receiver = self;
  v17.super_class = SBSmartCoverService;
  v4 = [(SBSmartCoverService *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_lastSmartCoverState = state;
    v6 = [MEMORY[0x277CBEB58] set];
    connections = v5->_connections;
    v5->_connections = v6;

    v8 = [MEMORY[0x277CBEB58] set];
    observingConnections = v5->_observingConnections;
    v5->_observingConnections = v8;

    v10 = MEMORY[0x277CF32A0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__SBSmartCoverService_initWithInitialState___block_invoke;
    v15[3] = &unk_2783A9A18;
    v11 = v5;
    v16 = v11;
    v12 = [v10 listenerWithConfigurator:v15];
    v13 = v11[1];
    v11[1] = v12;

    [v11[1] activate];
  }

  return v5;
}

void __44__SBSmartCoverService_initWithInitialState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.frontboard"];
  [v3 setService:@"com.apple.springboard.smart-cover"];
  [v3 setDelegate:*(a1 + 32)];
}

- (void)smartCoverStateDidChange:(int64_t)change
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_lastSmartCoverState != change)
  {
    self->_lastSmartCoverState = change;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_observingConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          remoteTarget = [*(*(&v11 + 1) + 8 * v8) remoteTarget];
          v10 = [MEMORY[0x277CCABB0] numberWithInteger:change];
          [remoteTarget observeSmartCoverStateDidChange:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.springboard.smartCoverObserving"];

  if (v8)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __65__SBSmartCoverService_listener_didReceiveConnection_withContext___block_invoke;
    v14 = &unk_2783B2168;
    selfCopy = self;
    v9 = connectionCopy;
    v16 = v9;
    [v9 configureConnection:&v11];
    [(NSMutableSet *)self->_connections addObject:v9, v11, v12, v13, v14, selfCopy];
    [v9 activate];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBSmartCoverService listener:v10 didReceiveConnection:? withContext:?];
    }

    [connectionCopy invalidate];
  }
}

void __65__SBSmartCoverService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66C20];
  v4 = a2;
  v5 = [v3 interface];
  [v4 setInterface:v5];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v6 = [MEMORY[0x277CF32C8] userInitiated];
  [v4 setServiceQuality:v6];

  [v4 setTargetQueue:MEMORY[0x277D85CD0]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBSmartCoverService_listener_didReceiveConnection_withContext___block_invoke_2;
  v9[3] = &unk_2783B2140;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v4 setInvalidationHandler:v9];
}

void __65__SBSmartCoverService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) remoteProcess];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBSmartCoverService: connection invalidated: %{public}@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 24) removeObject:v3];
  [*(*(a1 + 40) + 16) removeObject:v3];
}

- (void)setWantsSmartCoverStateChanges:(id)changes
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CF3280];
  changesCopy = changes;
  currentContext = [v4 currentContext];
  bOOLValue = [changesCopy BOOLValue];

  v8 = [(NSMutableSet *)self->_observingConnections containsObject:currentContext];
  if (bOOLValue)
  {
    if ((v8 & 1) == 0)
    {
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        remoteProcess = [currentContext remoteProcess];
        v15 = 138543362;
        v16 = remoteProcess;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBSmartCoverService: observer added: %{public}@", &v15, 0xCu);
      }

      [(NSMutableSet *)self->_observingConnections addObject:currentContext];
      remoteTarget = [currentContext remoteTarget];
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lastSmartCoverState];
      [remoteTarget observeSmartCoverStateDidChange:v12];
    }
  }

  else if (v8)
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      remoteProcess2 = [currentContext remoteProcess];
      v15 = 138543362;
      v16 = remoteProcess2;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "SBSmartCoverService: observer removed: %{public}@", &v15, 0xCu);
    }

    [(NSMutableSet *)self->_observingConnections removeObject:currentContext];
  }
}

- (void)listener:(os_log_t)log didReceiveConnection:withContext:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = @"com.apple.springboard.smartCoverObserving";
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "SBSmartCoverService: requires entitlement %{public}@", &v1, 0xCu);
}

@end