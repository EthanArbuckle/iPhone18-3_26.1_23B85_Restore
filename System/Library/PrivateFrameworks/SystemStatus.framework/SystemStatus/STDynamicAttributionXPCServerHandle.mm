@interface STDynamicAttributionXPCServerHandle
+ (id)sharedMachServiceServerHandle;
- (STDynamicAttributionXPCServerHandle)initWithXPCConnectionProvider:(id)a3;
- (void)_lock_remoteProxy;
- (void)currentAttributionsDidChange:(id)a3;
- (void)dealloc;
- (void)didObserveServerLaunch:(id)a3;
- (void)setAttributionLocalizableKey:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5;
- (void)setAttributionStringWithFormat:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5;
- (void)setAttributionWebsiteString:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5;
- (void)setLocalizableAttributionKey:(id)a3 andApplication:(id)a4 forClient:(id)a5;
- (void)subscribeToUpdates:(id)a3;
- (void)unsubscribeFromUpdates:(id)a3;
@end

@implementation STDynamicAttributionXPCServerHandle

+ (id)sharedMachServiceServerHandle
{
  if (qword_1ED7F5D58 != -1)
  {
    dispatch_once(&qword_1ED7F5D58, &__block_literal_global_16);
  }

  v3 = _MergedGlobals_15;

  return v3;
}

uint64_t __68__STDynamicAttributionXPCServerHandle_sharedMachServiceServerHandle__block_invoke()
{
  v0 = objc_alloc_init(STDynamicAttributionXPCServerHandle);
  v1 = _MergedGlobals_15;
  _MergedGlobals_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __43__STDynamicAttributionXPCServerHandle_init__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.systemstatus.activityattribution" options:0];

  return v0;
}

- (STDynamicAttributionXPCServerHandle)initWithXPCConnectionProvider:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = STDynamicAttributionXPCServerHandle;
  v5 = [(STDynamicAttributionXPCServerHandle *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_clients = v6->_lock_clients;
    v6->_lock_clients = v7;

    v9 = [v4 copy];
    lock_connectionProvider = v6->_lock_connectionProvider;
    v6->_lock_connectionProvider = v9;

    v11 = +[STServerLaunchMonitor sharedInstance];
    serverLaunchObservable = v6->_serverLaunchObservable;
    v6->_serverLaunchObservable = v11;

    [(STServerLaunchObservable *)v6->_serverLaunchObservable addObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  [(STServerLaunchObservable *)self->_serverLaunchObservable removeObserver:self];
  v3.receiver = self;
  v3.super_class = STDynamicAttributionXPCServerHandle;
  [(STDynamicAttributionXPCServerHandle *)&v3 dealloc];
}

- (void)_lock_remoteProxy
{
  if (a1)
  {
    v1 = a1;
    v2 = a1[2];
    if (!v2)
    {
      v3 = (*(v1[3] + 16))();
      v4 = v1[2];
      v1[2] = v3;

      v5 = v1[2];
      v6 = STDynamicAttributionXPCServerInterface();
      [v5 setRemoteObjectInterface:v6];

      v7 = v1[2];
      v8 = STDynamicAttributionXPCClientInterface();
      [v7 setExportedInterface:v8];

      [v1[2] setExportedObject:v1];
      objc_initWeak(&location, v1);
      v9 = v1[2];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__STDynamicAttributionXPCServerHandle__lock_remoteProxy__block_invoke;
      v14[3] = &unk_1E85DDD78;
      objc_copyWeak(&v15, &location);
      [v9 setInterruptionHandler:v14];
      v10 = v1[2];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56__STDynamicAttributionXPCServerHandle__lock_remoteProxy__block_invoke_9;
      v12[3] = &unk_1E85DDD78;
      objc_copyWeak(&v13, &location);
      [v10 setInvalidationHandler:v12];
      [v1[2] resume];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      v2 = v1[2];
    }

    a1 = [v2 remoteObjectProxy];
  }

  return a1;
}

void __56__STDynamicAttributionXPCServerHandle__lock_remoteProxy__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1DA9C2000, v2, OS_LOG_TYPE_DEFAULT, "%@: Connection interrupted", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __56__STDynamicAttributionXPCServerHandle__lock_remoteProxy__block_invoke_9(uint64_t a1)
{
  v2 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1DA9C2000, v2, OS_LOG_TYPE_ERROR, "STDynamicAttributionXPCServerHandle connection was invalidated", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v5 = *&v4[4]._os_unfair_lock_opaque;
    *&v4[4]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v4 + 2);
  }
}

- (void)setLocalizableAttributionKey:(id)a3 andApplication:(id)a4 forClient:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = 138413314;
    v16 = v12;
    v17 = 2112;
    v18 = v14;
    v19 = 2048;
    v20 = self;
    v21 = 2112;
    v22 = @"STDynamicAttributionXPCServerHandle.m";
    v23 = 1024;
    v24 = 114;
    _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v15, 0x30u);
  }

  __break(0);
}

- (void)setAttributionLocalizableKey:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138413314;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = @"STDynamicAttributionXPCServerHandle.m";
    v21 = 1024;
    v22 = 118;
    _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v13, 0x30u);
  }

  __break(0);
}

- (void)setAttributionStringWithFormat:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138413314;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = @"STDynamicAttributionXPCServerHandle.m";
    v21 = 1024;
    v22 = 122;
    _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v13, 0x30u);
  }

  __break(0);
}

- (void)setAttributionWebsiteString:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138413314;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = @"STDynamicAttributionXPCServerHandle.m";
    v21 = 1024;
    v22 = 126;
    _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v13, 0x30u);
  }

  __break(0);
}

- (void)subscribeToUpdates:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"client != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = @"STDynamicAttributionXPCServerHandle.m";
      v23 = 1024;
      v24 = 130;
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1DA9FF5D0);
  }

  v6 = v5;
  v7 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1DA9C2000, v7, OS_LOG_TYPE_DEFAULT, "%@: Activating", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableSet *)self->_lock_clients count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(STDynamicAttributionXPCServerHandle *)self _lock_remoteProxy];
    v9 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_DEFAULT, "Initiating XPC connection for initial client", buf, 2u);
    }
  }

  [(NSMutableSet *)self->_lock_clients addObject:v6];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    [v8 subscribeToUpdates];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromUpdates:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"client != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = @"STDynamicAttributionXPCServerHandle.m";
      v23 = 1024;
      v24 = 148;
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1DA9FF808);
  }

  v6 = v5;
  v7 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1DA9C2000, v7, OS_LOG_TYPE_DEFAULT, "%@: Deactivating", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_clients removeObject:v6];
  if (![(NSMutableSet *)self->_lock_clients count])
  {
    v8 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA9C2000, v8, OS_LOG_TYPE_DEFAULT, "Tearing down XPC connection after last client", buf, 2u);
    }

    [(NSXPCConnection *)self->_lock_connection invalidate];
    lock_connection = self->_lock_connection;
    self->_lock_connection = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)currentAttributionsDidChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_lock_clients copy];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) currentAttributionsDidChange:{v4, v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didObserveServerLaunch:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = self;
    _os_log_impl(&dword_1DA9C2000, v4, OS_LOG_TYPE_DEFAULT, "%@: Observed server launch, resubscribing to updates if necessary", buf, 0xCu);
  }

  if (self)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_connection)
    {
      v5 = [(NSMutableSet *)self->_lock_clients copy];
      v6 = [(STDynamicAttributionXPCServerHandle *)self _lock_remoteProxy];
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    if ([v5 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:buf count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        v11 = MEMORY[0x1E695E0F0];
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v14 + 1) + 8 * v12++) currentAttributionsDidChange:{v11, v14}];
          }

          while (v9 != v12);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:buf count:16];
        }

        while (v9);
      }

      [v6 subscribeToUpdates];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end