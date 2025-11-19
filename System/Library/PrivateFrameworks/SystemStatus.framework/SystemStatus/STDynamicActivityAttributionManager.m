@interface STDynamicActivityAttributionManager
- (STDynamicActivityAttributionManager)init;
- (id)currentAttributedAppForClient:(id)a3;
- (id)currentAttributionForAttribution:(id)a3;
- (id)currentAttributionForClient:(id *)a3;
- (id)currentAttributionKeyForClient:(id)a3;
- (id)initWithLocalManager:(id *)a1;
- (void)dealloc;
- (void)setAttributionLocalizableKey:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5;
- (void)setAttributionStringWithFormat:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5;
- (void)setAttributionWebsiteString:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5;
- (void)setLocalizableAttributionKey:(id)a3 andApplication:(id)a4 forClient:(id)a5;
- (void)subscribeToUpdates:(id)a3;
- (void)unsubscribeFromUpdates:(id)a3;
@end

@implementation STDynamicActivityAttributionManager

- (STDynamicActivityAttributionManager)init
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(STDynamicActivityAttributionManager *)&self->super.isa initWithLocalManager:?];
  }

  else
  {
    v4 = objc_alloc_init(STLocalDynamicActivityAttributionManager);
    v3 = [(STDynamicActivityAttributionManager *)&self->super.isa initWithLocalManager:v4];
  }

  return v3;
}

- (id)initWithLocalManager:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = STDynamicActivityAttributionManager;
    v5 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v5;
    if (v5)
    {
      *(v5 + 2) = 0;
      v6 = [MEMORY[0x1E695DFA8] set];
      v7 = a1[4];
      a1[4] = v6;

      objc_storeStrong(a1 + 2, a2);
      if (!v4)
      {
        v8 = objc_alloc_init(STDynamicActivityAttributionMonitor);
        v9 = a1[3];
        a1[3] = v8;

        [a1[3] activate];
      }
    }
  }

  return a1;
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_monitor;
  }

  [(STDynamicActivityAttributionManager *)self invalidate];
  v3.receiver = v2;
  v3.super_class = STDynamicActivityAttributionManager;
  [(STDynamicActivityAttributionManager *)&v3 dealloc];
}

- (id)currentAttributionKeyForClient:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = self->_localManager;
    if (v5)
    {
      v6 = v5;
      v7 = [(STLocalDynamicActivityAttributionManager *)v5 currentAttributionKeyForClient:v4];
      goto LABEL_6;
    }

    monitor = self->_monitor;
  }

  else
  {
    monitor = 0;
  }

  v9 = monitor;
  v10 = [(STDynamicActivityAttributionMonitor *)v9 currentAttributions];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__STDynamicActivityAttributionManager_currentAttributionKeyForClient___block_invoke;
  v14[3] = &unk_1E85DDDA0;
  v11 = v4;

  v15 = v11;
  v12 = [v10 bs_firstObjectPassingTest:v14];

  v7 = [v12 localizationKey];

  v6 = v15;
LABEL_6:

  return v7;
}

uint64_t __70__STDynamicActivityAttributionManager_currentAttributionKeyForClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientExecutablePath];
  v4 = [v3 lastPathComponent];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)currentAttributedAppForClient:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = self->_localManager;
    if (v5)
    {
      v6 = v5;
      v7 = [(STLocalDynamicActivityAttributionManager *)v5 currentAttributedAppForClient:v4];
      goto LABEL_6;
    }

    monitor = self->_monitor;
  }

  else
  {
    monitor = 0;
  }

  v9 = monitor;
  v10 = [(STDynamicActivityAttributionMonitor *)v9 currentAttributions];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__STDynamicActivityAttributionManager_currentAttributedAppForClient___block_invoke;
  v14[3] = &unk_1E85DDDA0;
  v11 = v4;

  v15 = v11;
  v12 = [v10 bs_firstObjectPassingTest:v14];

  v7 = [v12 bundleIdentifier];

  v6 = v15;
LABEL_6:

  return v7;
}

uint64_t __69__STDynamicActivityAttributionManager_currentAttributedAppForClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientExecutablePath];
  v4 = [v3 lastPathComponent];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)currentAttributionForClient:(id *)a3
{
  if (self)
  {
    v4 = self;
    v5 = self->_localManager;
    if (v5)
    {
      v6 = v5;
      v7 = *&a3->var0[4];
      v11 = *a3->var0;
      v12 = v7;
      v8 = [(STLocalDynamicActivityAttributionManager *)v5 currentAttributionForClient:&v11];

      goto LABEL_6;
    }

    self = v4->_monitor;
  }

  v9 = *&a3->var0[4];
  v11 = *a3->var0;
  v12 = v9;
  v8 = [(STDynamicActivityAttributionManager *)self attributionForClient:&v11];
LABEL_6:

  return v8;
}

- (id)currentAttributionForAttribution:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = self->_localManager;
    if (v5)
    {
      v6 = v5;
      v7 = [(STLocalDynamicActivityAttributionManager *)v5 currentAttributionForAttribution:v4];

      goto LABEL_6;
    }

    monitor = self->_monitor;
  }

  else
  {
    monitor = 0;
  }

  v7 = [(STDynamicActivityAttributionMonitor *)monitor attributionForAttribution:v4];
LABEL_6:

  return v7;
}

- (void)setLocalizableAttributionKey:(id)a3 andApplication:(id)a4 forClient:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (self)
  {
    v10 = self->_localManager;
    if (v10)
    {
      v11 = v10;
      [(STLocalDynamicActivityAttributionManager *)v10 setLocalizableAttributionKey:v12 andApplication:v8 forClient:v9];
    }
  }
}

- (void)setAttributionLocalizableKey:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self)
  {
    v10 = self->_localManager;
    if (v10)
    {
      v11 = v10;
      v12 = *&a4->var0[4];
      v13[0] = *a4->var0;
      v13[1] = v12;
      [(STLocalDynamicActivityAttributionManager *)v10 setAttributionLocalizableKey:v8 maskingClientAuditToken:v13 forClient:v9];
    }
  }
}

- (void)setAttributionStringWithFormat:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self)
  {
    v10 = self->_localManager;
    if (v10)
    {
      v11 = v10;
      v12 = *&a4->var0[4];
      v13[0] = *a4->var0;
      v13[1] = v12;
      [(STLocalDynamicActivityAttributionManager *)v10 setAttributionStringWithFormat:v8 maskingClientAuditToken:v13 forClient:v9];
    }
  }
}

- (void)setAttributionWebsiteString:(id)a3 maskingClientAuditToken:(id *)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self)
  {
    v10 = self->_localManager;
    if (v10)
    {
      v11 = v10;
      v12 = *&a4->var0[4];
      v13[0] = *a4->var0;
      v13[1] = v12;
      [(STLocalDynamicActivityAttributionManager *)v10 setAttributionWebsiteString:v8 maskingClientAuditToken:v13 forClient:v9];
    }
  }
}

- (void)subscribeToUpdates:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = self->_localManager;
    if (v5)
    {
      v6 = v5;
      [(STLocalDynamicActivityAttributionManager *)v5 subscribeToUpdates:v4];
      goto LABEL_10;
    }

    p_clientLock = &self->_clientLock;
    os_unfair_lock_lock(&self->_clientLock);
    lock_registeredClients = self->_lock_registeredClients;
  }

  else
  {
    p_clientLock = 8;
    os_unfair_lock_lock(8);
    lock_registeredClients = 0;
  }

  v6 = lock_registeredClients;
  v9 = [(NSMutableSet *)v6 count];
  [(NSMutableSet *)v6 addObject:v4];
  os_unfair_lock_unlock(p_clientLock);
  if (self)
  {
    monitor = self->_monitor;
  }

  else
  {
    monitor = 0;
  }

  v11 = monitor;
  objc_initWeak(&location, self);
  if (!v9)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__STDynamicActivityAttributionManager_subscribeToUpdates___block_invoke;
    v18[3] = &unk_1E85DDDC8;
    objc_copyWeak(&v19, &location);
    v18[4] = self;
    [(STDynamicActivityAttributionMonitor *)v11 setHandler:v18];
    objc_destroyWeak(&v19);
  }

  v12 = [(STDynamicActivityAttributionMonitor *)v11 currentAttributions];
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__STDynamicActivityAttributionManager_subscribeToUpdates___block_invoke_2;
  block[3] = &unk_1E85DDD00;
  v16 = v4;
  v17 = v12;
  v14 = v12;
  dispatch_async(v13, block);

  objc_destroyWeak(&location);
LABEL_10:
}

void __58__STDynamicActivityAttributionManager_subscribeToUpdates___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  os_unfair_lock_lock(WeakRetained + 2);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 copy];
  os_unfair_lock_unlock(WeakRetained + 2);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) currentAttributionsDidChange:{v3, v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromUpdates:(id)a3
{
  v10 = a3;
  if (self)
  {
    v4 = self->_localManager;
    if (v4)
    {
      v5 = v4;
      [(STLocalDynamicActivityAttributionManager *)v4 unsubscribeFromUpdates:v10];
      goto LABEL_9;
    }

    p_clientLock = &self->_clientLock;
    os_unfair_lock_lock(&self->_clientLock);
    lock_registeredClients = self->_lock_registeredClients;
  }

  else
  {
    p_clientLock = 8;
    os_unfair_lock_lock(8);
    lock_registeredClients = 0;
  }

  v5 = lock_registeredClients;
  [(NSMutableSet *)v5 removeObject:v10];
  v8 = [(NSMutableSet *)v5 count];
  os_unfair_lock_unlock(p_clientLock);
  if (!v8)
  {
    if (self)
    {
      monitor = self->_monitor;
    }

    else
    {
      monitor = 0;
    }

    [(STDynamicActivityAttributionMonitor *)monitor setHandler:0];
  }

LABEL_9:
}

@end