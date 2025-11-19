@interface MFAppStateMonitor
+ (id)sharedInstance;
- (BOOL)isForeground;
- (MFAppStateMonitor)init;
- (VFObservable)appStateObservable;
- (void)_updateApplicationState:(id)a3 observer:(id)a4;
- (void)dealloc;
@end

@implementation MFAppStateMonitor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MFAppStateMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

uint64_t __35__MFAppStateMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_appStateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = MFAppStateMonitor;
  [(MFAppStateMonitor *)&v3 dealloc];
}

- (MFAppStateMonitor)init
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = MFAppStateMonitor;
  v2 = [(MFAppStateMonitor *)&v19 init];
  if (v2)
  {
    v3 = +[VFObservable observableObserver];
    v4 = dispatch_queue_create("com.apple.message.applicationStateMonitor", MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v4;

    objc_storeStrong(&v2->_observable, v3);
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CEEE90]);
      v20[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      v10 = [v8 initWithBundleIDs:v9 states:*MEMORY[0x277CEEE58]];
      appStateMonitor = v2->_appStateMonitor;
      v2->_appStateMonitor = v10;

      v2->_appState = [(BKSApplicationStateMonitor *)v2->_appStateMonitor applicationStateForApplication:v7];
      objc_initWeak(&location, v2);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __25__MFAppStateMonitor_init__block_invoke;
      v14[3] = &unk_279E35B50;
      objc_copyWeak(&v17, &location);
      v15 = v7;
      v16 = v3;
      [(BKSApplicationStateMonitor *)v2->_appStateMonitor setHandler:v14];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

void __25__MFAppStateMonitor_init__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v5 = [v7 objectForKeyedSubscript:*MEMORY[0x277CEEE68]];
  LODWORD(v4) = [v4 isEqualToString:v5];

  if (v4)
  {
    v6 = [v7 objectForKeyedSubscript:*MEMORY[0x277CEEE70]];
    [WeakRetained _updateApplicationState:v6 observer:*(a1 + 40)];
  }
}

- (VFObservable)appStateObservable
{
  v3 = [(VFObserver *)self->_observable distinctUntilChanged];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__MFAppStateMonitor_appStateObservable__block_invoke;
  v6[3] = &unk_279E35B78;
  v6[4] = self;
  v4 = [v3 map:v6];

  return v4;
}

- (BOOL)isForeground
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__MFAppStateMonitor_isForeground__block_invoke;
  v5[3] = &unk_279E34D78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateApplicationState:(id)a3 observer:(id)a4
{
  v6 = a3;
  queue = self->_queue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54__MFAppStateMonitor__updateApplicationState_observer___block_invoke;
  v13 = &unk_279E346E0;
  v14 = v6;
  v15 = self;
  v8 = v6;
  v9 = a4;
  dispatch_barrier_sync(queue, &v10);
  [v9 observerDidReceiveResult:{v8, v10, v11, v12, v13}];
}

void __54__MFAppStateMonitor__updateApplicationState_observer___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) unsignedIntValue];
  v3 = vm_imap_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = _BKSApplicationStateGetDescription(*(*(a1 + 40) + 8));
    v5 = _BKSApplicationStateGetDescription(v2);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "transitioning from %@ to %@", &v7, 0x16u);
  }

  *(*(a1 + 40) + 8) = v2;
  v6 = *MEMORY[0x277D85DE8];
}

@end