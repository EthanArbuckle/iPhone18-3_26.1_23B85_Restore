@interface WGWidgetPersistentStateController
- (BOOL)_setHasContent:(BOOL)content forWidgetWithIdentifier:(id)identifier;
- (BOOL)doesWidgetWithIdentifierHaveContent:(id)content;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)setLargestAvailableDisplayMode:(int64_t)mode forWidgetWithIdentifier:(id)identifier;
- (WGWidgetPersistentStateController)initWithDiscoveryController:(id)controller;
- (id)_persistentStateForWidgetWithIdentifier:(id)identifier containingBundleIdentifier:(id)bundleIdentifier;
- (id)_updateCachedStateForWidgetWithIdentifier:(id)identifier containingBundleID:(id)d;
- (id)_valueForKey:(id)key forWidgetWithIdentifier:(id)identifier;
- (int64_t)largestAvailableDisplayModeForWidgetWithIdentifier:(id)identifier;
- (void)__requestRefreshAfterDate:(id)date forWidgetWithBundleIdentifier:(id)identifier;
- (void)__setHasContent:(BOOL)content forWidgetWithBundleIdentifier:(id)identifier;
- (void)_setValue:(id)value forKey:(id)key forWidgetWithIdentifier:(id)identifier containingBundleID:(id)d;
- (void)_synchronizePersistentStateForWidgetWithIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation WGWidgetPersistentStateController

- (WGWidgetPersistentStateController)initWithDiscoveryController:(id)controller
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = WGWidgetPersistentStateController;
  v5 = [(WGWidgetPersistentStateController *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_discoveryController, controllerCopy);
    v7 = objc_alloc(MEMORY[0x277CCAE98]);
    v8 = [v7 initWithMachServiceName:*MEMORY[0x277CD9360]];
    listener = v6->_listener;
    v6->_listener = v8;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
    if (MKBDeviceUnlockedSinceBoot())
    {
      v6->_canCacheState = 1;
    }

    else
    {
      Serial = BSDispatchQueueCreateSerial();
      keybagQueue = v6->_keybagQueue;
      v6->_keybagQueue = Serial;

      objc_initWeak(&location, v6);
      objc_copyWeak(&v15, &location);
      v6->_keybagEvent = MKBEventsRegister();
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    v12 = BSDispatchQueueCreateSerial();
    diskWriteQueue = v6->_diskWriteQueue;
    v6->_diskWriteQueue = v12;
  }

  return v6;
}

void __65__WGWidgetPersistentStateController_initWithDiscoveryController___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v5[3] = v2;
    v5[4] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__WGWidgetPersistentStateController_initWithDiscoveryController___block_invoke_2;
    block[3] = &unk_279ED0AB8;
    objc_copyWeak(v5, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v5);
  }
}

void __65__WGWidgetPersistentStateController_initWithDiscoveryController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (*(WeakRetained + 5))
  {
    MKBEventsUnregister();
    WeakRetained = v3;
    v3[5] = 0;
  }

  *(WeakRetained + 32) = 1;
  v2 = objc_loadWeakRetained(WeakRetained + 2);
  [v2 invalidateVisibleIdentifiers];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  if (self->_keybagEvent)
  {
    MKBEventsUnregister();
  }

  v3.receiver = self;
  v3.super_class = WGWidgetPersistentStateController;
  [(WGWidgetPersistentStateController *)&v3 dealloc];
}

- (id)_persistentStateForWidgetWithIdentifier:(id)identifier containingBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([identifierCopy length])
  {
    v9 = MEMORY[0x277CBEB38];
    v10 = WGPersistedStateURLForWidgetWithBundleIdentifier(identifierCopy, 0);
    v11 = [v9 dictionaryWithContentsOfURL:v10];

    v8 = v11;
    if (!v11)
    {
      v12 = identifierCopy;
      v13 = bundleIdentifierCopy;
      if ([v12 length])
      {
        v14 = WGContainingBundleCachePathForWidgetWithContainingBundleIdentifier(v13, @"State", 0);
        v15 = [v14 stringByAppendingPathComponent:v12];
        v16 = [v15 stringByAppendingPathExtension:@"plist"];

        if ([v16 length])
        {
          v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v17];
      if (v18)
      {
        v8 = v18;
        uRLByDeletingLastPathComponent = [v17 URLByDeletingLastPathComponent];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        diskWriteQueue = self->_diskWriteQueue;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __104__WGWidgetPersistentStateController__persistentStateForWidgetWithIdentifier_containingBundleIdentifier___block_invoke;
        v25[3] = &unk_279ED0A40;
        v26 = defaultManager;
        v27 = uRLByDeletingLastPathComponent;
        v22 = uRLByDeletingLastPathComponent;
        v23 = defaultManager;
        dispatch_async(diskWriteQueue, v25);
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }
    }
  }

  return v8;
}

- (id)_updateCachedStateForWidgetWithIdentifier:(id)identifier containingBundleID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  if (![identifierCopy length])
  {
    v8 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetPersistentStateController *)v8 _updateCachedStateForWidgetWithIdentifier:v9 containingBundleID:v10, v11, v12, v13, v14, v15];
    }
  }

  if ([identifierCopy length])
  {
    if (!self->_widgetIdentifiersToCachedState && self->_canCacheState)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      widgetIdentifiersToCachedState = self->_widgetIdentifiersToCachedState;
      self->_widgetIdentifiersToCachedState = v16;
    }

    v18 = [(WGWidgetPersistentStateController *)self _persistentStateForWidgetWithIdentifier:identifierCopy containingBundleIdentifier:dCopy];
    if (v18)
    {
      [(NSMutableDictionary *)self->_widgetIdentifiersToCachedState setObject:v18 forKey:identifierCopy];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_synchronizePersistentStateForWidgetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v5 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetPersistentStateController *)v5 _updateCachedStateForWidgetWithIdentifier:v6 containingBundleID:v7, v8, v9, v10, v11, v12];
    }
  }

  if ([identifierCopy length])
  {
    v13 = [(NSMutableDictionary *)self->_widgetIdentifiersToCachedState objectForKey:identifierCopy];
    v14 = v13;
    if (v13)
    {
      diskWriteQueue = self->_diskWriteQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __88__WGWidgetPersistentStateController__synchronizePersistentStateForWidgetWithIdentifier___block_invoke;
      v16[3] = &unk_279ED0A40;
      v17 = v13;
      v18 = identifierCopy;
      dispatch_async(diskWriteQueue, v16);
    }
  }
}

void __88__WGWidgetPersistentStateController__synchronizePersistentStateForWidgetWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = WGPersistedStateURLForWidgetWithBundleIdentifier(*(a1 + 40), 1);
  [v1 writeToURL:v2 atomically:1];
}

- (void)_setValue:(id)value forKey:(id)key forWidgetWithIdentifier:(id)identifier containingBundleID:(id)d
{
  valueCopy = value;
  keyCopy = key;
  identifierCopy = identifier;
  dCopy = d;
  if (!valueCopy || ![keyCopy length] || !objc_msgSend(identifierCopy, "length"))
  {
    v14 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetPersistentStateController *)v14 _setValue:v15 forKey:v16 forWidgetWithIdentifier:v17 containingBundleID:v18, v19, v20, v21];
      if (!valueCopy)
      {
        goto LABEL_11;
      }
    }

    else if (!valueCopy)
    {
      goto LABEL_11;
    }
  }

  if ([keyCopy length])
  {
    if ([identifierCopy length])
    {
      v22 = [(NSMutableDictionary *)self->_widgetIdentifiersToCachedState objectForKey:identifierCopy];
      if (v22 || ([(WGWidgetPersistentStateController *)self _updateCachedStateForWidgetWithIdentifier:identifierCopy containingBundleID:dCopy], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = v22;
        [v22 setObject:valueCopy forKey:keyCopy];
        [(WGWidgetPersistentStateController *)self _synchronizePersistentStateForWidgetWithIdentifier:identifierCopy];
      }
    }
  }

LABEL_11:
}

- (id)_valueForKey:(id)key forWidgetWithIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  if (![keyCopy length] || !objc_msgSend(identifierCopy, "length"))
  {
    v8 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [(WGWidgetPersistentStateController *)v8 _valueForKey:v9 forWidgetWithIdentifier:v10, v11, v12, v13, v14, v15];
    }
  }

  if ([keyCopy length] && objc_msgSend(identifierCopy, "length"))
  {
    v16 = [(NSMutableDictionary *)self->_widgetIdentifiersToCachedState objectForKey:identifierCopy];
    if (!v16)
    {
      v17 = WGContainingBundleIdentifierForWidgetWithBundleIdentifier(identifierCopy);
      v16 = [(WGWidgetPersistentStateController *)self _updateCachedStateForWidgetWithIdentifier:identifierCopy containingBundleID:v17];
    }

    v18 = [v16 objectForKey:keyCopy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)doesWidgetWithIdentifierHaveContent:(id)content
{
  v3 = [(WGWidgetPersistentStateController *)self _valueForKey:@"SBWidgetViewControllerHasContentKey" forWidgetWithIdentifier:content];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_setHasContent:(BOOL)content forWidgetWithIdentifier:(id)identifier
{
  contentCopy = content;
  identifierCopy = identifier;
  if (![identifierCopy length] || -[WGWidgetPersistentStateController doesWidgetWithIdentifierHaveContent:](self, "doesWidgetWithIdentifierHaveContent:", identifierCopy) == contentCopy)
  {
    v10 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:contentCopy];
    v8 = WGContainingBundleIdentifierForWidgetWithBundleIdentifier(identifierCopy);
    [(WGWidgetPersistentStateController *)self _setValue:v7 forKey:@"SBWidgetViewControllerHasContentKey" forWidgetWithIdentifier:identifierCopy containingBundleID:v8];

    WeakRetained = objc_loadWeakRetained(&self->_discoveryController);
    [WeakRetained setHasContent:contentCopy forWidgetWithIdentifier:identifierCopy];

    v10 = 1;
  }

  return v10;
}

- (int64_t)largestAvailableDisplayModeForWidgetWithIdentifier:(id)identifier
{
  v3 = [(WGWidgetPersistentStateController *)self _valueForKey:@"WGWidgetViewControllerLargestAvailableDisplayMode" forWidgetWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)setLargestAvailableDisplayMode:(int64_t)mode forWidgetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length] && -[WGWidgetPersistentStateController largestAvailableDisplayModeForWidgetWithIdentifier:](self, "largestAvailableDisplayModeForWidgetWithIdentifier:", identifierCopy) != mode)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
    v9 = WGContainingBundleIdentifierForWidgetWithBundleIdentifier(identifierCopy);
    [(WGWidgetPersistentStateController *)self _setValue:v8 forKey:@"WGWidgetViewControllerLargestAvailableDisplayMode" forWidgetWithIdentifier:identifierCopy containingBundleID:v9];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_288381CA0];
  [connectionCopy setExportedInterface:v7];

  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28838E130];
  [connectionCopy setRemoteObjectInterface:v8];

  [connectionCopy setInterruptionHandler:&__block_literal_global_7];
  [connectionCopy setInvalidationHandler:&__block_literal_global_51_0];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

void __72__WGWidgetPersistentStateController_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    __72__WGWidgetPersistentStateController_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0);
  }
}

void __72__WGWidgetPersistentStateController_listener_shouldAcceptNewConnection___block_invoke_49()
{
  v0 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    __72__WGWidgetPersistentStateController_listener_shouldAcceptNewConnection___block_invoke_49_cold_1(v0);
  }
}

- (void)__setHasContent:(BOOL)content forWidgetWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__WGWidgetPersistentStateController___setHasContent_forWidgetWithBundleIdentifier___block_invoke;
  v10[3] = &unk_279ED1650;
  v11 = currentConnection;
  v12 = identifierCopy;
  contentCopy = content;
  selfCopy = self;
  v8 = identifierCopy;
  v9 = currentConnection;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __83__WGWidgetPersistentStateController___setHasContent_forWidgetWithBundleIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _xpcConnection];
  if (BSXPCConnectionHasEntitlement())
  {
  }

  else
  {
    v3 = NCXPCConnectionIsFromContainingAppOrWidgetWithIdentifier(*(a1 + 32), *(a1 + 40));

    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v4 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    *buf = 67109378;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_27425E000, v4, OS_LOG_TYPE_DEFAULT, "Will set hasContent: %d for %{public}@", buf, 0x12u);
  }

  [*(a1 + 48) _setHasContent:*(a1 + 56) forWidgetWithIdentifier:*(a1 + 40)];
LABEL_7:
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__WGWidgetPersistentStateController___setHasContent_forWidgetWithBundleIdentifier___block_invoke_53;
  v9[3] = &unk_279ED1628;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = [v7 remoteObjectProxyWithErrorHandler:v9];
  [v8 __didReceiveHasContentRequest];
}

void __83__WGWidgetPersistentStateController___setHasContent_forWidgetWithBundleIdentifier___block_invoke_53(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_27425E000, v4, OS_LOG_TYPE_DEFAULT, "Encountered error attempting to reply to content availability request for widget with bundle ID %{public}@: %{public}@", &v6, 0x16u);
    }
  }
}

- (void)__requestRefreshAfterDate:(id)date forWidgetWithBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([identifierCopy hasPrefix:@"com.apple."])
  {
    _xpcConnection = [currentConnection _xpcConnection];
    if (BSXPCConnectionHasEntitlement())
    {
    }

    else
    {
      v10 = NCXPCConnectionIsFromContainingAppOrWidgetWithIdentifier(currentConnection, identifierCopy);

      if (!v10)
      {
        goto LABEL_11;
      }
    }

    v11 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = dateCopy;
      _os_log_impl(&dword_27425E000, v11, OS_LOG_TYPE_DEFAULT, "Will request refresh for %{public}@ after %{public}@", &v15, 0x16u);
    }

    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v13 = date;
    WeakRetained = objc_loadWeakRetained(&self->_discoveryController);
    [WeakRetained requestRefreshForWidget:identifierCopy afterDate:v13];
  }

LABEL_11:
}

@end