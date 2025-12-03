@interface SBSCaptureButtonAppConfigurationServer
- (NSSet)eligibleApps;
- (NSString)associatedAppBundleIdentifier;
- (SBSCaptureButtonAppConfigurationServer)initWithAssociatedAppBundleIdentifier:(id)identifier eligibleApps:(id)apps delegate:(id)delegate;
- (SBSCaptureButtonAppConfigurationServerDelegate)delegate;
- (id)_currentConnections;
- (void)_notifyExistingConnectionsDidUpdateAssociatedAppBundleIdentifier:(id)identifier;
- (void)_notifyExistingConnectionsDidUpdateEligibleApps:(id)apps;
- (void)_sendInitialStateForNewConnection:(id)connection associatedAppsBundleIdentifier:(id)identifier eligibleApps:(id)apps;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setCurrentAssociatedAppUsingBundleIdentifier:(id)identifier;
- (void)setEligibleApps:(id)apps;
- (void)startServer;
@end

@implementation SBSCaptureButtonAppConfigurationServer

- (SBSCaptureButtonAppConfigurationServer)initWithAssociatedAppBundleIdentifier:(id)identifier eligibleApps:(id)apps delegate:(id)delegate
{
  identifierCopy = identifier;
  appsCopy = apps;
  delegateCopy = delegate;
  v11 = [(SBSCaptureButtonAppConfigurationServer *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x1E695DF70] array];
    lock_connections = v12->_lock_connections;
    v12->_lock_connections = array;

    v15 = [identifierCopy copy];
    lock_associatedAppBundleIdentifier = v12->_lock_associatedAppBundleIdentifier;
    v12->_lock_associatedAppBundleIdentifier = v15;

    v17 = [appsCopy copy];
    lock_eligibleApps = v12->_lock_eligibleApps;
    v12->_lock_eligibleApps = v17;

    objc_storeWeak(&v12->_delegate, delegateCopy);
  }

  return v12;
}

- (void)startServer
{
  BSDispatchQueueAssertMain();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SBSCaptureButtonAppConfigurationServer_startServer__block_invoke;
  v5[3] = &unk_1E7360A28;
  v5[4] = self;
  v3 = [MEMORY[0x1E698F4B8] listenerWithConfigurator:v5];
  connectionListener = self->_connectionListener;
  self->_connectionListener = v3;

  [(BSServiceConnectionListener *)self->_connectionListener activate];
}

void __53__SBSCaptureButtonAppConfigurationServer_startServer__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = +[SBSCaptureButtonAppConfigurationServiceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  v3.receiver = self;
  v3.super_class = SBSCaptureButtonAppConfigurationServer;
  [(SBSCaptureButtonAppConfigurationServer *)&v3 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  objc_initWeak(&location, self);
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  if ([auditToken hasEntitlement:@"com.apple.springboard.private.capture-button-app-configuration-service"])
  {

LABEL_4:
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__SBSCaptureButtonAppConfigurationServer_listener_didReceiveConnection_withContext___block_invoke;
    v17[3] = &unk_1E735F0A8;
    v17[4] = self;
    objc_copyWeak(&v18, &location);
    [connectionCopy configureConnection:v17];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_lock_connections addObject:connectionCopy];
    os_unfair_lock_unlock(&self->_lock);
    [connectionCopy activate];
    objc_destroyWeak(&v18);
    goto LABEL_8;
  }

  remoteProcess2 = [connectionCopy remoteProcess];
  auditToken2 = [remoteProcess2 auditToken];
  v15 = [auditToken2 hasEntitlement:@"com.apple.springboard.private.EA0E3FBF-D56E-4897-B807-A3CA8090EE38"];

  if (v15)
  {
    goto LABEL_4;
  }

  v16 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = connectionCopy;
    _os_log_impl(&dword_19169D000, v16, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer invalidating connection because client process is missing required entitlement %@.", buf, 0xCu);
  }

  [connectionCopy invalidate];
LABEL_8:
  objc_destroyWeak(&location);
}

void __84__SBSCaptureButtonAppConfigurationServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSCaptureButtonAppConfigurationServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SBSCaptureButtonAppConfigurationServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setInterruptionHandler:&__block_literal_global_54];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__SBSCaptureButtonAppConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_11;
  v8[3] = &unk_1E735F080;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInvalidationHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__SBSCaptureButtonAppConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_12;
  v6[3] = &unk_1E735F080;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setActivationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __84__SBSCaptureButtonAppConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer interrupted connection %@", &v4, 0xCu);
  }
}

void __84__SBSCaptureButtonAppConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_11(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer invalidated connection %@", &v6, 0xCu);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [*(WeakRetained + 3) removeObject:v3];
    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

void __84__SBSCaptureButtonAppConfigurationServer_listener_didReceiveConnection_withContext___block_invoke_12(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer activated connection %@", &v8, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained associatedAppBundleIdentifier];
    v7 = [WeakRetained eligibleApps];
    [WeakRetained _sendInitialStateForNewConnection:v3 associatedAppsBundleIdentifier:v6 eligibleApps:v7];
  }
}

- (NSString)associatedAppBundleIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_associatedAppBundleIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAssociatedAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  associatedAppBundleIdentifier = [(SBSCaptureButtonAppConfigurationServer *)self associatedAppBundleIdentifier];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    v6 = [identifierCopy copy];
    os_unfair_lock_lock(&self->_lock);
    lock_associatedAppBundleIdentifier = self->_lock_associatedAppBundleIdentifier;
    self->_lock_associatedAppBundleIdentifier = v6;
    v8 = v6;

    os_unfair_lock_unlock(&self->_lock);
    [(SBSCaptureButtonAppConfigurationServer *)self _notifyExistingConnectionsDidUpdateAssociatedAppBundleIdentifier:v8];
  }
}

- (NSSet)eligibleApps
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_eligibleApps;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEligibleApps:(id)apps
{
  appsCopy = apps;
  eligibleApps = [(SBSCaptureButtonAppConfigurationServer *)self eligibleApps];
  v5 = BSEqualSets();

  if ((v5 & 1) == 0)
  {
    v6 = [appsCopy copy];
    os_unfair_lock_lock(&self->_lock);
    lock_eligibleApps = self->_lock_eligibleApps;
    self->_lock_eligibleApps = v6;
    v8 = v6;

    os_unfair_lock_unlock(&self->_lock);
    [(SBSCaptureButtonAppConfigurationServer *)self _notifyExistingConnectionsDidUpdateEligibleApps:v8];
  }
}

- (void)_sendInitialStateForNewConnection:(id)connection associatedAppsBundleIdentifier:(id)identifier eligibleApps:(id)apps
{
  appsCopy = apps;
  identifierCopy = identifier;
  connectionCopy = connection;
  remoteTarget = [connectionCopy remoteTarget];
  [remoteTarget receiveInitialOrUpdatedAssociatedAppBundleIdentifier:identifierCopy];

  remoteTarget2 = [connectionCopy remoteTarget];

  [remoteTarget2 receiveInitialOrUpdatedEligibleApps:appsCopy];
}

- (id)_currentConnections
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_connections;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_notifyExistingConnectionsDidUpdateAssociatedAppBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _currentConnections = [(SBSCaptureButtonAppConfigurationServer *)self _currentConnections];
  v6 = [_currentConnections copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        remoteTarget = [*(*(&v13 + 1) + 8 * v11) remoteTarget];
        [remoteTarget receiveInitialOrUpdatedAssociatedAppBundleIdentifier:identifierCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_notifyExistingConnectionsDidUpdateEligibleApps:(id)apps
{
  v18 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  _currentConnections = [(SBSCaptureButtonAppConfigurationServer *)self _currentConnections];
  v6 = [_currentConnections copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        remoteTarget = [*(*(&v13 + 1) + 8 * v11) remoteTarget];
        [remoteTarget receiveInitialOrUpdatedEligibleApps:appsCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setCurrentAssociatedAppUsingBundleIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  bundleIdentifier = [remoteProcess bundleIdentifier];

  v7 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = identifierCopy;
    v11 = 2114;
    v12 = bundleIdentifier;
    _os_log_impl(&dword_19169D000, v7, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer received request to set current active app bundle identifier to %{public}@ from %{public}@", buf, 0x16u);
  }

  v8 = identifierCopy;
  BSDispatchMain();
}

void __87__SBSCaptureButtonAppConfigurationServer_setCurrentAssociatedAppUsingBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 captureButtonAppConfigurationServer:*(a1 + 32) setCurrentAssociatedAppUsingBundleIdentifier:*(a1 + 40)];
}

- (SBSCaptureButtonAppConfigurationServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end