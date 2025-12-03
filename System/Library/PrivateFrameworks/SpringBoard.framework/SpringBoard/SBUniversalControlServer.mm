@interface SBUniversalControlServer
- (NSString)description;
- (SBUniversalControlServer)initWithKeyboardFocusController:(id)controller keyboardSuppressionManager:(id)manager;
- (unint64_t)externalProcessActiveOnScreenEdges;
- (void)_lock_reevaluateKeyboardFocusDisablement;
- (void)_lock_reevaluateScreenEdgeOwnership;
- (void)_queue_addConnection:(id)connection;
- (void)_queue_removeConnection:(id)connection;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setKeyboardFocusDisabled:(id)disabled reason:(id)reason;
- (void)setScreenEdgesOwned:(id)owned reason:(id)reason;
@end

@implementation SBUniversalControlServer

- (SBUniversalControlServer)initWithKeyboardFocusController:(id)controller keyboardSuppressionManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v24.receiver = self;
  v24.super_class = SBUniversalControlServer;
  v9 = [(SBUniversalControlServer *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyboardFocusController, controller);
    objc_storeStrong(&v10->_keyboardSuppressionManager, manager);
    v10->_lock._os_unfair_lock_opaque = 0;
    v11 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.universal-control"];
    clientAuthenticator = v10->_clientAuthenticator;
    v10->_clientAuthenticator = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v10->_connections;
    v10->_connections = v13;

    v15 = BSDispatchQueueCreateWithQualityOfService();
    queue = v10->_queue;
    v10->_queue = v15;

    v17 = MEMORY[0x277CF32A0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __87__SBUniversalControlServer_initWithKeyboardFocusController_keyboardSuppressionManager___block_invoke;
    v22[3] = &unk_2783A9A18;
    v18 = v10;
    v23 = v18;
    v19 = [v17 listenerWithConfigurator:v22];
    v20 = v18[1];
    v18[1] = v19;

    [v18[1] activate];
  }

  return v10;
}

void __87__SBUniversalControlServer_initWithKeyboardFocusController_keyboardSuppressionManager___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66CB8] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __39__SBUniversalControlServer_description__block_invoke;
  v10 = &unk_2783A92D8;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_lock_keyboardDisabledReasonsByPID copy];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [formatterCopy appendObject:v4 withName:@"keyboardDisabledReasonsByPID"];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Received SBUniversalControlServer connection: %{public}@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__SBUniversalControlServer_listener_didReceiveConnection_withContext___block_invoke;
  v15[3] = &unk_2783AB730;
  v15[4] = self;
  [connectionCopy configureConnection:v15];
  clientAuthenticator = self->_clientAuthenticator;
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  LODWORD(clientAuthenticator) = [(FBServiceClientAuthenticator *)clientAuthenticator authenticateAuditToken:auditToken];

  if (clientAuthenticator)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__SBUniversalControlServer_listener_didReceiveConnection_withContext___block_invoke_13;
    block[3] = &unk_2783A92D8;
    block[4] = self;
    v12 = connectionCopy;
    v14 = v12;
    dispatch_async(queue, block);
    [v12 activate];
  }

  else
  {
    [connectionCopy invalidate];
  }
}

void __70__SBUniversalControlServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66CB8];
  v4 = a2;
  v5 = [v3 serviceQuality];
  [v4 setServiceQuality:v5];

  v6 = [MEMORY[0x277D66CB8] interface];
  [v4 setInterface:v6];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SBUniversalControlServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_2783B4EB0;
  v7[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v7];
  [v4 setTargetQueue:*(*(a1 + 32) + 24)];
}

void __70__SBUniversalControlServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Received SBUniversalControlServer connection invalidation: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) _queue_removeConnection:v3];
}

- (void)setKeyboardFocusDisabled:(id)disabled reason:(id)reason
{
  reasonCopy = reason;
  v6 = MEMORY[0x277CF3280];
  disabledCopy = disabled;
  currentContext = [v6 currentContext];
  remoteTarget = [currentContext remoteTarget];

  v10 = [remoteTarget pid];
  os_unfair_lock_lock(&self->_lock);
  bOOLValue = [disabledCopy BOOLValue];

  lock_keyboardDisabledReasonsByPID = self->_lock_keyboardDisabledReasonsByPID;
  if (bOOLValue)
  {
    if (!lock_keyboardDisabledReasonsByPID)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = self->_lock_keyboardDisabledReasonsByPID;
      self->_lock_keyboardDisabledReasonsByPID = v13;

      lock_keyboardDisabledReasonsByPID = self->_lock_keyboardDisabledReasonsByPID;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    [(NSMutableDictionary *)lock_keyboardDisabledReasonsByPID setObject:reasonCopy forKey:v15];
  }

  else
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    [(NSMutableDictionary *)lock_keyboardDisabledReasonsByPID removeObjectForKey:v15];
  }

  [(SBUniversalControlServer *)self _lock_reevaluateKeyboardFocusDisablement];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setScreenEdgesOwned:(id)owned reason:(id)reason
{
  ownedCopy = owned;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteTarget = [currentContext remoteTarget];

  v7 = [remoteTarget pid];
  os_unfair_lock_lock(&self->_lock);
  unsignedIntValue = [ownedCopy unsignedIntValue];
  lock_screenEdgesOwnedByPID = self->_lock_screenEdgesOwnedByPID;
  if (unsignedIntValue)
  {
    if (!lock_screenEdgesOwnedByPID)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_lock_screenEdgesOwnedByPID;
      self->_lock_screenEdgesOwnedByPID = v10;

      lock_screenEdgesOwnedByPID = self->_lock_screenEdgesOwnedByPID;
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [(NSMutableDictionary *)lock_screenEdgesOwnedByPID setObject:ownedCopy forKey:v12];
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [(NSMutableDictionary *)lock_screenEdgesOwnedByPID removeObjectForKey:v12];
  }

  [(SBUniversalControlServer *)self _lock_reevaluateScreenEdgeOwnership];
  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)externalProcessActiveOnScreenEdges
{
  os_unfair_lock_lock(&self->_lock);
  lock_externallyControlledScreenEdgeMask = self->_lock_externallyControlledScreenEdgeMask;
  os_unfair_lock_unlock(&self->_lock);
  return lock_externallyControlledScreenEdgeMask;
}

- (void)_lock_reevaluateScreenEdgeOwnership
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  self->_lock_externallyControlledScreenEdgeMask = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_lock_screenEdgesOwnedByPID allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        self->_lock_externallyControlledScreenEdgeMask |= [*(*(&v10 + 1) + 8 * v7++) unsignedIntValue];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    lock_externallyControlledScreenEdgeMask = self->_lock_externallyControlledScreenEdgeMask;
    *buf = 67109120;
    v15 = lock_externallyControlledScreenEdgeMask;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "externally controlled screen edges now: %X", buf, 8u);
  }
}

- (void)_lock_reevaluateKeyboardFocusDisablement
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_keyboardDisabledReasonsByPID count];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__SBUniversalControlServer__lock_reevaluateKeyboardFocusDisablement__block_invoke;
  v4[3] = &unk_2783A9F58;
  v4[4] = self;
  v5 = v3 != 0;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __68__SBUniversalControlServer__lock_reevaluateKeyboardFocusDisablement__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  if (*(a1 + 40) == 1)
  {
    v2 = [SBApp windowSceneManager];
    v3 = [v2 activeDisplayWindowScene];

    v4 = *(a1 + 32);
    if (!v4[8])
    {
      v5 = v4[12];
      v6 = [SBApp windowSceneManager];
      v7 = [v6 activeDisplayWindowScene];
      v8 = +[SBKeyboardFocusLockReason universalControl];
      v9 = [v5 focusLockSpringBoardWindowScene:v7 forReason:v8];
      v10 = *(a1 + 32);
      v11 = *(v10 + 64);
      *(v10 + 64) = v9;

      v4 = *(a1 + 32);
    }

    v12 = v4[13];
    v13 = [v3 _fbsDisplayIdentity];
    v14 = [v12 acquireKeyboardSuppressionAssertionWithReason:@"SBUniversalControlServer" predicate:0 displayIdentity:v13];
    v15 = *(a1 + 32);
    v16 = *(v15 + 72);
    *(v15 + 72) = v14;
  }

  else
  {
    [*(*(a1 + 32) + 64) invalidate];
    v17 = *(a1 + 32);
    v18 = *(v17 + 64);
    *(v17 + 64) = 0;

    [*(*(a1 + 32) + 72) invalidate];
    v19 = *(a1 + 32);
    v3 = *(v19 + 72);
    *(v19 + 72) = 0;
  }

  v20 = (*(a1 + 32) + 40);

  os_unfair_lock_unlock(v20);
}

- (void)_queue_addConnection:(id)connection
{
  v8 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Adding SBUniversalControlServer connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableSet *)self->_connections addObject:connectionCopy];
}

- (void)_queue_removeConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Removing SBUniversalControlServer connection: %{public}@", &v12, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteTarget = [currentContext remoteTarget];

  [(NSMutableSet *)self->_connections removeObject:connectionCopy];
  os_unfair_lock_lock(&self->_lock);
  lock_keyboardDisabledReasonsByPID = self->_lock_keyboardDisabledReasonsByPID;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(remoteTarget, "pid")}];
  [(NSMutableDictionary *)lock_keyboardDisabledReasonsByPID removeObjectForKey:v9];

  [(SBUniversalControlServer *)self _lock_reevaluateKeyboardFocusDisablement];
  lock_screenEdgesOwnedByPID = self->_lock_screenEdgesOwnedByPID;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(remoteTarget, "pid")}];
  [(NSMutableDictionary *)lock_screenEdgesOwnedByPID removeObjectForKey:v11];

  [(SBUniversalControlServer *)self _lock_reevaluateScreenEdgeOwnership];
  os_unfair_lock_unlock(&self->_lock);
}

@end