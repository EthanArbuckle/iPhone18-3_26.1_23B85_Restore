@interface PLForegroundMonitor
+ (NSArray)bundleIdentifiersToMonitorForSystemLibrary;
+ (PLForegroundMonitor)sharedInstance;
- (PLForegroundMonitor)init;
- (id)startMonitoringBundleIdentifiers:(id)identifiers block:(id)block;
- (void)_handleApplicationStateMonitorNotificationWithUserInfo:(id)info applicationStateMonitorUUID:(id)d;
- (void)_locked_applicationDidMoveToBackground:(id)background;
- (void)_locked_applicationDidMoveToForeground:(id)foreground;
- (void)_startMonitoringBundleIdentifiers:(id)identifiers;
- (void)_stopMonitoring;
- (void)_updateMonitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation PLForegroundMonitor

- (void)_handleApplicationStateMonitorNotificationWithUserInfo:(id)info applicationStateMonitorUUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = dCopy;
  v9 = infoCopy;
  pl_dispatch_async();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __106__PLForegroundMonitor__handleApplicationStateMonitorNotificationWithUserInfo_applicationStateMonitorUUID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && *(*(a1 + 32) + 48) && [*(a1 + 40) isEqual:?])
  {
    v3 = [*(a1 + 48) objectForKey:*MEMORY[0x1E698CFF8]];
    if (v3)
    {
      v4 = [*(a1 + 48) objectForKey:*MEMORY[0x1E698D010]];
      v5 = [v4 intValue];

      if (v5 == 8)
      {
        [WeakRetained _locked_applicationDidMoveToForeground:v3];
      }

      else
      {
        [WeakRetained _locked_applicationDidMoveToBackground:v3];
      }
    }

    else
    {
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Monitor sent a notification with a nil bundle identifier", v7, 2u);
      }
    }
  }
}

- (void)_locked_applicationDidMoveToBackground:(id)background
{
  v26 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableSet *)self->_foregroundBundleIDs containsObject:backgroundCopy])
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = backgroundCopy;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ moved to background", buf, 0xCu);
    }

    [(NSMutableSet *)self->_foregroundBundleIDs removeObject:backgroundCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_clients;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          bundleIdentifiers = [v12 bundleIdentifiers];
          v14 = [bundleIdentifiers containsObject:backgroundCopy];

          if (v14)
          {
            ++v9;
            block = [v12 block];
            (block)[2](block, backgroundCopy, 0);
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v22 = v9;
      v23 = 2112;
      v24 = backgroundCopy;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Notified %lu clients that %@ is in background", buf, 0x16u);
    }
  }
}

- (void)_locked_applicationDidMoveToForeground:(id)foreground
{
  v26 = *MEMORY[0x1E69E9840];
  foregroundCopy = foreground;
  dispatch_assert_queue_V2(self->_queue);
  if (([(NSMutableSet *)self->_foregroundBundleIDs containsObject:foregroundCopy]& 1) == 0)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = foregroundCopy;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ moved to foreground", buf, 0xCu);
    }

    [(NSMutableSet *)self->_foregroundBundleIDs addObject:foregroundCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_clients;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          bundleIdentifiers = [v12 bundleIdentifiers];
          v14 = [bundleIdentifiers containsObject:foregroundCopy];

          if (v14)
          {
            ++v9;
            block = [v12 block];
            (block)[2](block, foregroundCopy, 1);
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v22 = v9;
      v23 = 2112;
      v24 = foregroundCopy;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Notified %lu clients that %@ is in foreground", buf, 0x16u);
    }
  }
}

- (void)stopMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  v3 = monitoringCopy;
  pl_dispatch_async();
}

uint64_t __38__PLForegroundMonitor_stopMonitoring___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _updateMonitoring];
}

- (id)startMonitoringBundleIdentifiers:(id)identifiers block:(id)block
{
  blockCopy = block;
  identifiersCopy = identifiers;
  v7 = [_PLForegroundMonitorClient alloc];
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:identifiersCopy];

  v9 = [(_PLForegroundMonitorClient *)v7 initWithBundleIdentifiers:v8 block:blockCopy];
  v12 = v9;
  pl_dispatch_async();
  v10 = v12;

  return v12;
}

void __62__PLForegroundMonitor_startMonitoringBundleIdentifiers_block___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  [*(a1 + 32) _updateMonitoring];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) bundleIdentifiers];
        v9 = [v8 containsObject:v7];

        if (v9)
        {
          v10 = [*(a1 + 40) block];
          v10[2](v10, v7, 1);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_updateMonitoring
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_clients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleIdentifiers = [*(*(&v10 + 1) + 8 * v8) bundleIdentifiers];
        [v3 unionSet:bundleIdentifiers];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if (!self->_monitoredBundleIdentifiers || ([v3 isEqual:?] & 1) == 0)
  {
    if ([v3 count])
    {
      [(PLForegroundMonitor *)self _startMonitoringBundleIdentifiers:v3];
    }

    else
    {
      [(PLForegroundMonitor *)self _stopMonitoring];
    }
  }
}

- (void)_startMonitoringBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(PLForegroundMonitor *)self _stopMonitoring];
  v5 = objc_alloc(MEMORY[0x1E698D028]);
  allObjects = [identifiersCopy allObjects];
  v7 = [v5 initWithBundleIDs:allObjects states:*MEMORY[0x1E698CFE8]];
  applicationStateMonitor = self->_applicationStateMonitor;
  self->_applicationStateMonitor = v7;

  uUID = [MEMORY[0x1E696AFB0] UUID];
  objc_storeStrong(&self->_applicationStateMonitorUUID, uUID);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PLForegroundMonitor__startMonitoringBundleIdentifiers___block_invoke;
  v13[3] = &unk_1E75686C0;
  objc_copyWeak(&v15, &location);
  v10 = uUID;
  v14 = v10;
  [(BKSApplicationStateMonitor *)self->_applicationStateMonitor setHandler:v13];
  v11 = [identifiersCopy copy];
  monitoredBundleIdentifiers = self->_monitoredBundleIdentifiers;
  self->_monitoredBundleIdentifiers = v11;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __57__PLForegroundMonitor__startMonitoringBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleApplicationStateMonitorNotificationWithUserInfo:v3 applicationStateMonitorUUID:*(a1 + 32)];
}

- (void)_stopMonitoring
{
  applicationStateMonitor = self->_applicationStateMonitor;
  if (applicationStateMonitor)
  {
    [(BKSApplicationStateMonitor *)applicationStateMonitor invalidate];
    v4 = self->_applicationStateMonitor;
    self->_applicationStateMonitor = 0;

    applicationStateMonitorUUID = self->_applicationStateMonitorUUID;
    self->_applicationStateMonitorUUID = 0;
  }

  monitoredBundleIdentifiers = self->_monitoredBundleIdentifiers;
  self->_monitoredBundleIdentifiers = 0;
}

- (PLForegroundMonitor)init
{
  v10.receiver = self;
  v10.super_class = PLForegroundMonitor;
  v2 = [(PLForegroundMonitor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    foregroundBundleIDs = v2->_foregroundBundleIDs;
    v2->_foregroundBundleIDs = v3;

    v5 = pl_dispatch_queue_create_with_fallback_qos();
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    clients = v2->_clients;
    v2->_clients = v7;
  }

  return v2;
}

+ (NSArray)bundleIdentifiersToMonitorForSystemLibrary
{
  v6[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69BF420];
  v6[0] = *MEMORY[0x1E69BFF18];
  v6[1] = v2;
  v3 = *MEMORY[0x1E69BFF00];
  v6[2] = @"com.apple.camera.lockscreen";
  v6[3] = v3;
  v6[4] = @"com.apple.mobileslideshow.photospicker";
  v6[5] = @"com.apple.mobileslideshow.photo-picker";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];

  return v4;
}

+ (PLForegroundMonitor)sharedInstance
{
  if (sharedInstance_onceToken_18644 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_18644, &__block_literal_global_18645);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __37__PLForegroundMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PLForegroundMonitor);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

@end