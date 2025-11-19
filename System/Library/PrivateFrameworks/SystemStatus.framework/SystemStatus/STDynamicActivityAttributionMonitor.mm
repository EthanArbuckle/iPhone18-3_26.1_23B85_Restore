@interface STDynamicActivityAttributionMonitor
- (STDynamicActivityAttributionMonitor)init;
- (STDynamicActivityAttributionMonitor)initWithServerHandle:(id)a3;
- (id)attributionForAttribution:(id)a3;
- (id)attributionForClient:(id *)a3;
- (id)currentAttributions;
- (id)handler;
- (void)activate;
- (void)currentAttributionsDidChange:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setHandler:(id)a3;
@end

@implementation STDynamicActivityAttributionMonitor

- (STDynamicActivityAttributionMonitor)init
{
  v3 = +[STDynamicAttributionXPCServerHandle sharedMachServiceServerHandle];
  v4 = [(STDynamicActivityAttributionMonitor *)self initWithServerHandle:v3];

  return v4;
}

- (STDynamicActivityAttributionMonitor)initWithServerHandle:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = STDynamicActivityAttributionMonitor;
  v6 = [(STDynamicActivityAttributionMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_lock_server, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_attributions = v7->_lock_attributions;
    v7->_lock_attributions = v8;
  }

  return v7;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_lock_invalidated)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidate must be called before this object is released"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"STDynamicActivityAttributionMonitor.m";
      v18 = 1024;
      v19 = 47;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1DA9FFD7CLL);
  }

  v9.receiver = self;
  v9.super_class = STDynamicActivityAttributionMonitor;
  [(STDynamicActivityAttributionMonitor *)&v9 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)activate
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't re-activate an invalidated monitor"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"STDynamicActivityAttributionMonitor.m";
      v18 = 1024;
      v19 = 52;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1DA9FFF10);
  }

  v9 = self->_lock_server;
  os_unfair_lock_unlock(&self->_lock);
  [(STDynamicActivityAttributionServerHandle *)v9 subscribeToUpdates:self];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_lock_server;
    self->_lock_invalidated = 1;
    lock_attributions = self->_lock_attributions;
    self->_lock_attributions = 0;

    lock_handler = self->_lock_handler;
    self->_lock_handler = 0;

    lock_server = self->_lock_server;
    self->_lock_server = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(STDynamicActivityAttributionServerHandle *)v6 unsubscribeFromUpdates:self];
}

- (id)handler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x1E1274600](self->_lock_handler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x1E1274600](v3);

  return v4;
}

- (void)setHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  lock_handler = self->_lock_handler;
  self->_lock_handler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)currentAttributions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_attributions allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)attributionForClient:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  lock_attributions = self->_lock_attributions;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{BSVersionedPIDForAuditToken(), *a3->var0, *&a3->var0[2], *&a3->var0[4], *&a3->var0[6]}];
  v7 = [(NSMutableDictionary *)lock_attributions objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)attributionForAttribution:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v6 = [(STDynamicActivityAttributionMonitor *)self attributionForClient:v21];
  if (!v6)
  {
    v7 = [v5 pid];
    if (v7 < 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = v7;
      os_unfair_lock_lock(&self->_lock);
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [(NSMutableDictionary *)self->_lock_attributions allKeys];
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            if (v8 == [v14 unsignedLongLongValue])
            {
              v6 = [(NSMutableDictionary *)self->_lock_attributions objectForKey:v14];
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_16:

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)currentAttributionsDidChange:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
  {
    v5 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "%@: Attributions did change: %@", buf, 0x16u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_lock_attributions removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        lock_attributions = self->_lock_attributions;
        v13 = MEMORY[0x1E696AD98];
        if (v11)
        {
          [*(*(&v18 + 1) + 8 * i) clientAuditToken];
        }

        else
        {
          memset(buf, 0, 32);
        }

        v14 = [v13 numberWithLongLong:BSVersionedPIDForAuditToken()];
        [(NSMutableDictionary *)lock_attributions setObject:v11 forKey:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = MEMORY[0x1E1274600](self->_lock_handler);
  v16 = [(NSMutableDictionary *)self->_lock_attributions allValues];
  os_unfair_lock_unlock(&self->_lock);
  if (v15)
  {
    (v15)[2](v15, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end