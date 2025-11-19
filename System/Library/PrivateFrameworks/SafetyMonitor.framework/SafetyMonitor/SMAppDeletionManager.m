@interface SMAppDeletionManager
- (BOOL)isMessagesAppInstalled;
- (SMAppDeletionManager)init;
- (void)_addObserver:(id)a3;
- (void)_applicationsDidInstall:(id)a3;
- (void)_applicationsDidUninstall:(id)a3;
- (void)_notifyObserversForMessagesAppInstalled;
- (void)_notifyObserversForMessagesAppUninstalled;
- (void)_notifyObserversWithUpdatedMessagesInstallation;
- (void)_removeObserver:(id)a3;
- (void)_setup;
- (void)addObserver:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)databaseWasRebuilt;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setup;
@end

@implementation SMAppDeletionManager

- (BOOL)isMessagesAppInstalled
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [v2 applicationIsInstalled:@"com.apple.MobileSMS"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138412802;
      v10 = v8;
      v11 = 2080;
      v12 = "[SMAppDeletionManager isMessagesAppInstalled]";
      v13 = 1024;
      v14 = v3;
      _os_log_debug_impl(&dword_26455D000, v4, OS_LOG_TYPE_DEBUG, "%@, %s, querying isMessagesAppInstalled:, %{BOOL}d", &v9, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (SMAppDeletionManager)init
{
  v13.receiver = self;
  v13.super_class = SMAppDeletionManager;
  v2 = [(SMAppDeletionManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(SMAppDeletionManager *)v4 UTF8String];
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v4];
      v6 = [v7 UTF8String];
    }

    v8 = dispatch_queue_create(v6, v5);

    queue = v4->_queue;
    v4->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAA50]);
    observers = v4->_observers;
    v4->_observers = v10;

    [(SMAppDeletionManager *)v4 setup];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SMAppDeletionManager;
  [(SMAppDeletionManager *)&v4 dealloc];
}

- (void)setup
{
  v3 = [(SMAppDeletionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SMAppDeletionManager_setup__block_invoke;
  block[3] = &unk_279B655F8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_setup
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 addObserver:self];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SMAppDeletionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SMAppDeletionManager_addObserver___block_invoke;
  v7[3] = &unk_279B65620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SMAppDeletionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SMAppDeletionManager_removeObserver___block_invoke;
  v7[3] = &unk_279B65620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_addObserver:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412802;
      v14 = v10;
      v15 = 2080;
      v16 = "[SMAppDeletionManager _addObserver:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_26455D000, v5, OS_LOG_TYPE_DEBUG, "%@, %s, adding observer, %@", &v13, 0x20u);
    }
  }

  [(NSHashTable *)self->_observers addObject:v4];
  v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v7 = [v6 applicationIsInstalled:@"com.apple.MobileSMS"];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 onMessagesAppInstalled];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v4 onMessagesAppUninstalled];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeObserver:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138412802;
      v12 = v8;
      v13 = 2080;
      v14 = "[SMAppDeletionManager _removeObserver:]";
      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&dword_26455D000, v5, OS_LOG_TYPE_DEBUG, "%@, %s, removing observer, %@", &v11, 0x20u);
    }
  }

  [(NSHashTable *)self->_observers removeObject:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversForMessagesAppInstalled
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SMAppDeletionManager *)self observers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 onMessagesAppInstalled];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversForMessagesAppUninstalled
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SMAppDeletionManager *)self observers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 onMessagesAppUninstalled];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v5 = [(SMAppDeletionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SMAppDeletionManager_applicationsDidInstall___block_invoke;
  v7[3] = &unk_279B65620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_applicationsDidInstall:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [v9 isEqualToString:@"com.apple.MobileSMS"];

        if (v10)
        {
          [(SMAppDeletionManager *)self _notifyObserversForMessagesAppInstalled];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  v5 = [(SMAppDeletionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SMAppDeletionManager_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_279B65620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_applicationsDidUninstall:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [v9 isEqualToString:@"com.apple.MobileSMS"];

        if (v10)
        {
          [(SMAppDeletionManager *)self _notifyObserversForMessagesAppUninstalled];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)databaseWasRebuilt
{
  v3 = [(SMAppDeletionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SMAppDeletionManager_databaseWasRebuilt__block_invoke;
  block[3] = &unk_279B655F8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_notifyObserversWithUpdatedMessagesInstallation
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [v3 applicationIsInstalled:@"com.apple.MobileSMS"];

  if (v4)
  {

    [(SMAppDeletionManager *)self _notifyObserversForMessagesAppInstalled];
  }

  else
  {

    [(SMAppDeletionManager *)self _notifyObserversForMessagesAppUninstalled];
  }
}

@end