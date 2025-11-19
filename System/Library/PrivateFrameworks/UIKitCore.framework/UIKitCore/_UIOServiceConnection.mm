@interface _UIOServiceConnection
+ (id)connectionWithBSServiceConnection:(id)a3 toServer:(id)a4;
- (BOOL)clientHasEntitlement:(id)a3;
- (BSServiceConnectionHost)connection;
- (NSString)bundleIdentifier;
- (UIOServer)server;
- (int64_t)pid;
- (unint64_t)hash;
- (void)addObserver:(id)a3;
- (void)performOverlayServerAction:(id)a3;
- (void)sendAction:(id)a3;
- (void)serviceConnectionDidInvalidate;
@end

@implementation _UIOServiceConnection

+ (id)connectionWithBSServiceConnection:(id)a3 toServer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  objc_storeWeak(v7 + 2, v6);

  objc_storeWeak(v7 + 3, v5);

  return v7;
}

- (int64_t)pid
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v3 = [WeakRetained remoteProcess];
  v4 = [v3 auditToken];
  v5 = [v4 versionedPID];

  return v5;
}

- (NSString)bundleIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v3 = [WeakRetained remoteProcess];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (void)performOverlayServerAction:(id)a3
{
  v4 = a3;
  if ([v4 isPermitted])
  {
    [v4 performActionFromConnection:self];
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

- (void)sendAction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v5 = [WeakRetained remoteTarget];
  [v5 performOverlayClientAction:v4];
}

- (BOOL)clientHasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(_UIOServiceConnection *)self connection];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];
  v8 = [v7 hasEntitlement:v4];

  return v8;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
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