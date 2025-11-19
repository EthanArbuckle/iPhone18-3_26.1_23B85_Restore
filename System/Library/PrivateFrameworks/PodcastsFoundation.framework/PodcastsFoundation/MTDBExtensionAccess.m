@interface MTDBExtensionAccess
+ (id)sharedInstance;
+ (void)postDatabaseCreatedNotification;
- (MTDBExtensionAccess)init;
- (void)_handleChange;
- (void)_startObserving;
- (void)_stopObserving;
- (void)addObserver:(id)a3;
- (void)attemptToFix;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObserver:(id)a3;
@end

@implementation MTDBExtensionAccess

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MTDBExtensionAccess sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __37__MTDBExtensionAccess_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(MTDBExtensionAccess);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)postDatabaseCreatedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.podcasts.DatabaseCreatedNotification", 0, 0, 1u);
}

- (MTDBExtensionAccess)init
{
  v6.receiver = self;
  v6.super_class = MTDBExtensionAccess;
  v2 = [(MTDBExtensionAccess *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    [(MTDBExtensionAccess *)v2 _startObserving];
  }

  return v2;
}

- (void)dealloc
{
  [(MTDBExtensionAccess *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = MTDBExtensionAccess;
  [(MTDBExtensionAccess *)&v3 dealloc];
}

- (void)attemptToFix
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_hasAttemptedToFix)
  {
    obj->_hasAttemptedToFix = 1;
  }

  objc_sync_exit(obj);
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (MTDBExtensionAccessContext == a6)
  {
    v11 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_DEFAULT, "MTDBExtensionAccess did get update for keyPath - %@", buf, 0xCu);
    }

    [(MTDBExtensionAccess *)self _handleChange];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MTDBExtensionAccess;
    [(MTDBExtensionAccess *)&v13 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_startObserving
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "MTDBExtensionAccess will start observing", v8, 2u);
  }

  v4 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v4 addObserver:self forKeyPath:@"MTDetectedCorruptDB" options:0 context:MTDBExtensionAccessContext];

  v5 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v5 addObserver:self forKeyPath:@"MTCoreDataMigrationVersion" options:0 context:MTDBExtensionAccessContext];

  v6 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v6 addObserver:self forKeyPath:@"MTLibraryMigrationVersion" options:0 context:MTDBExtensionAccessContext];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _MTDatabaseCreatedNotification, @"com.apple.podcasts.DatabaseCreatedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopObserving
{
  v3 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v3 removeObserver:self forKeyPath:@"MTDetectedCorruptDB" context:MTDBExtensionAccessContext];

  v4 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v4 removeObserver:self forKeyPath:@"MTCoreDataMigrationVersion" context:MTDBExtensionAccessContext];

  v5 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [v5 removeObserver:self forKeyPath:@"MTLibraryMigrationVersion" context:MTDBExtensionAccessContext];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.podcasts.DatabaseCreatedNotification", 0);
  v7 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "MTDBExtensionAccess did stop observing", v8, 2u);
  }
}

- (void)_handleChange
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = +[MTDB canExtensionOpenDatabase];
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "MTDBExtensionAccess extension access did change %x will notify observers", buf, 8u);
  }

  v4 = self->_observers;
  objc_sync_enter(v4);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 extensionAccessDidChange];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v10 = *MEMORY[0x1E69E9840];
}

@end