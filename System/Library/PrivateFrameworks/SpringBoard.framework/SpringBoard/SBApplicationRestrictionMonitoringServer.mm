@interface SBApplicationRestrictionMonitoringServer
- (SBApplicationRestrictionMonitoringServer)init;
- (void)_didFinishProcessingAppRestrictionUpdateWithUUID:(uint64_t)a1;
- (void)_postAppRestrictionChangeWithState:(uint64_t)a1;
- (void)applicationRestrictionControllerDidPostAppVisibilityUpdate:(id)a3;
- (void)applicationRestrictionControllerWillPostAppVisibilityUpdate:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)removeConnection:(uint64_t)a1;
@end

@implementation SBApplicationRestrictionMonitoringServer

- (SBApplicationRestrictionMonitoringServer)init
{
  v17.receiver = self;
  v17.super_class = SBApplicationRestrictionMonitoringServer;
  v2 = [(SBApplicationRestrictionMonitoringServer *)&v17 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.application-restriction-monitoring"];
    authenticator = v2->_authenticator;
    v2->_authenticator = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.springboard.SBApplicationRestrictionMonitoringServer.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v8;

    v10 = MEMORY[0x277CF32A0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__SBApplicationRestrictionMonitoringServer_init__block_invoke;
    v15[3] = &unk_2783A9A18;
    v11 = v2;
    v16 = v11;
    v12 = [v10 listenerWithConfigurator:v15];
    v13 = v11[1];
    v11[1] = v12;

    [v11[1] activate];
  }

  return v2;
}

void __48__SBApplicationRestrictionMonitoringServer_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D669A0];
  v6 = a2;
  v4 = [v3 domain];
  [v6 setDomain:v4];

  v5 = [MEMORY[0x277D669A0] identifier];
  [v6 setService:v5];

  [v6 setDelegate:*(a1 + 32)];
}

- (void)applicationRestrictionControllerWillPostAppVisibilityUpdate:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 allAllowedAppBundleIdentifiers];
  v6 = [v4 allRestrictedAppBundleIdentifiers];
  v7 = [objc_alloc(MEMORY[0x277D669A8]) initWithAllowedIdentifiers:v5 restrictedIdentifiers:v6];
  v8 = [MEMORY[0x277CCAD78] UUID];
  objc_storeStrong(&self->_pendingRestrictionUpdateUUID, v8);
  [(BSCompoundAssertion *)self->_pendingRestrictionUpdateAssertion invalidate];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277CF0BD0];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBApplicationRestrictionMonitoringServer.pendingRestrictionUpdate.%@", v8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __104__SBApplicationRestrictionMonitoringServer_applicationRestrictionControllerWillPostAppVisibilityUpdate___block_invoke;
  v18[3] = &unk_2783B46A0;
  objc_copyWeak(&v22, &location);
  v11 = v8;
  v19 = v11;
  v20 = self;
  v12 = v7;
  v21 = v12;
  v13 = [v9 assertionWithIdentifier:v10 stateDidChangeHandler:v18];
  pendingRestrictionUpdateAssertion = self->_pendingRestrictionUpdateAssertion;
  self->_pendingRestrictionUpdateAssertion = v13;

  v15 = [(BSCompoundAssertion *)self->_pendingRestrictionUpdateAssertion acquireForReason:@"Pending application restriction controller app visibility update broadcast"];
  restrictionControllerDidFinishNotifyingObserversAssertion = self->_restrictionControllerDidFinishNotifyingObserversAssertion;
  self->_restrictionControllerDidFinishNotifyingObserversAssertion = v15;

  v17 = SBLogApplicationRestrictionMonitoring();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_INFO, "App restriction update will occur. Tracking with ID=%@", buf, 0xCu);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __104__SBApplicationRestrictionMonitoringServer_applicationRestrictionControllerWillPostAppVisibilityUpdate___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isActive] & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__SBApplicationRestrictionMonitoringServer_applicationRestrictionControllerWillPostAppVisibilityUpdate___block_invoke_2;
    block[3] = &unk_2783A9CE8;
    objc_copyWeak(&v9, (a1 + 56));
    v8 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v3 = *(*(a1 + 40) + 24);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __104__SBApplicationRestrictionMonitoringServer_applicationRestrictionControllerWillPostAppVisibilityUpdate___block_invoke_3;
    v4[3] = &unk_2783A9CE8;
    objc_copyWeak(&v6, (a1 + 56));
    v5 = *(a1 + 48);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&v9);
  }
}

void __104__SBApplicationRestrictionMonitoringServer_applicationRestrictionControllerWillPostAppVisibilityUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SBApplicationRestrictionMonitoringServer *)WeakRetained _didFinishProcessingAppRestrictionUpdateWithUUID:?];
}

void __104__SBApplicationRestrictionMonitoringServer_applicationRestrictionControllerWillPostAppVisibilityUpdate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SBApplicationRestrictionMonitoringServer *)WeakRetained _postAppRestrictionChangeWithState:?];
}

- (void)applicationRestrictionControllerDidPostAppVisibilityUpdate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  [(BSInvalidatable *)self->_restrictionControllerDidFinishNotifyingObserversAssertion invalidate];
  restrictionControllerDidFinishNotifyingObserversAssertion = self->_restrictionControllerDidFinishNotifyingObserversAssertion;
  self->_restrictionControllerDidFinishNotifyingObserversAssertion = 0;

  v5 = SBLogApplicationRestrictionMonitoring();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    pendingRestrictionUpdateUUID = self->_pendingRestrictionUpdateUUID;
    v7 = [(BSCompoundAssertion *)self->_pendingRestrictionUpdateAssertion reasons];
    v8 = 138412546;
    v9 = pendingRestrictionUpdateUUID;
    v10 = 2048;
    v11 = [v7 count];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "App restriction update with ID=%@ was ingested by restriction observers. Now waiting for %lu outstanding assertions…", &v8, 0x16u);
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 remoteProcess];
  v12 = [v11 auditToken];

  v13 = self->_queue;
  objc_initWeak(&location, self);
  if (([(FBServiceClientAuthenticator *)self->_authenticator authenticateAuditToken:v12]& 1) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__SBApplicationRestrictionMonitoringServer_listener_didReceiveConnection_withContext___block_invoke;
    block[3] = &unk_2783A9A90;
    v14 = v9;
    v17 = v14;
    v18 = self;
    objc_copyWeak(&v20, &location);
    v19 = v13;
    dispatch_sync(v19, block);
    [v14 activate];

    objc_destroyWeak(&v20);
  }

  else
  {
    v15 = SBLogApplicationRestrictionMonitoring();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenConfigurationServer listener:v9 didReceiveConnection:v15 withContext:?];
    }

    [v9 invalidate];
  }

  objc_destroyWeak(&location);
}

void __86__SBApplicationRestrictionMonitoringServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __86__SBApplicationRestrictionMonitoringServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v9 = &unk_2783A9A68;
  v2 = *(a1 + 32);
  v3 = (a1 + 32);
  v10 = *(a1 + 40);
  objc_copyWeak(&v13, (a1 + 56));
  v11 = *v3;
  v12 = *(a1 + 48);
  [v2 configureConnection:&v6];
  [*(*(a1 + 40) + 32) addObject:{*(a1 + 32), v6, v7, v8, v9, v10}];
  v4 = SBLogApplicationRestrictionMonitoring();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Configured new connection: %{public}@", buf, 0xCu);
  }

  objc_destroyWeak(&v13);
}

void __86__SBApplicationRestrictionMonitoringServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D669A0] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D669A0] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __86__SBApplicationRestrictionMonitoringServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v9 = &unk_2783A9A40;
  objc_copyWeak(&v11, (a1 + 56));
  v10 = *(a1 + 40);
  [v3 setInvalidationHandler:&v6];
  [v3 setTargetQueue:{*(a1 + 48), v6, v7, v8, v9}];

  objc_destroyWeak(&v11);
}

void __86__SBApplicationRestrictionMonitoringServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogApplicationRestrictionMonitoring();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Received connection invalidation: %{public}@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SBApplicationRestrictionMonitoringServer *)WeakRetained removeConnection:?];
}

- (void)_didFinishProcessingAppRestrictionUpdateWithUUID:(uint64_t)a1
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    if ([*(a1 + 40) isEqual:v3])
    {
      v4 = *(a1 + 40);
      *(a1 + 40) = 0;

      [*(a1 + 48) invalidate];
      v5 = *(a1 + 48);
      *(a1 + 48) = 0;

      v6 = SBLogApplicationRestrictionMonitoring();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Pending restriction update compound assertion with ID=%@ was finally invalidated", &v7, 0xCu);
      }
    }
  }
}

- (void)_postAppRestrictionChangeWithState:(uint64_t)a1
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    v4 = [*(a1 + 32) copy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) remoteTarget];
          [v10 observeUpdateWithApplicationRestrictState:v3];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = SBLogApplicationRestrictionMonitoring();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 count];
      *buf = 134349056;
      v18 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Notified %{public}ld active connection(s) of restrictions update", buf, 0xCu);
    }
  }
}

- (void)removeConnection:(uint64_t)a1
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    v4 = SBLogApplicationRestrictionMonitoring();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Removing connection: %{public}@", &v5, 0xCu);
    }

    [*(a1 + 32) removeObject:v3];
  }
}

@end