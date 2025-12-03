@interface _UIOServiceConnection
+ (id)connectionWithBSServiceConnection:(id)connection toServer:(id)server;
- (BOOL)clientHasEntitlement:(id)entitlement;
- (BSServiceConnectionHost)connection;
- (NSString)bundleIdentifier;
- (UIOServer)server;
- (int64_t)pid;
- (unint64_t)hash;
- (void)addObserver:(id)observer;
- (void)performOverlayServerAction:(id)action;
- (void)sendAction:(id)action;
- (void)serviceConnectionDidInvalidate;
@end

@implementation _UIOServiceConnection

+ (id)connectionWithBSServiceConnection:(id)connection toServer:(id)server
{
  serverCopy = server;
  connectionCopy = connection;
  v7 = objc_opt_new();
  objc_storeWeak(v7 + 2, connectionCopy);

  objc_storeWeak(v7 + 3, serverCopy);

  return v7;
}

- (int64_t)pid
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  remoteProcess = [WeakRetained remoteProcess];
  auditToken = [remoteProcess auditToken];
  versionedPID = [auditToken versionedPID];

  return versionedPID;
}

- (NSString)bundleIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  remoteProcess = [WeakRetained remoteProcess];
  bundleIdentifier = [remoteProcess bundleIdentifier];

  return bundleIdentifier;
}

- (void)performOverlayServerAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isPermitted])
  {
    [actionCopy performActionFromConnection:self];
  }

  else
  {
    v5 = UIOLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Action is not permitted. Check implementation of -isPermitted.", v6, 2u);
    }
  }
}

- (void)sendAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  remoteTarget = [WeakRetained remoteTarget];
  [remoteTarget performOverlayClientAction:actionCopy];
}

- (BOOL)clientHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connection = [(_UIOServiceConnection *)self connection];
  remoteProcess = [connection remoteProcess];
  auditToken = [remoteProcess auditToken];
  v8 = [auditToken hasEntitlement:entitlementCopy];

  return v8;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)serviceConnectionDidInvalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) serviceConnectionDidInvalidate:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v4 = [WeakRetained hash];
  v5 = objc_loadWeakRetained(&self->_server);
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BSServiceConnectionHost)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (UIOServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end