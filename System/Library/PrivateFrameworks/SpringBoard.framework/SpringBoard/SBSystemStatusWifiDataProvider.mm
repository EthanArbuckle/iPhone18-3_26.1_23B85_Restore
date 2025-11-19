@interface SBSystemStatusWifiDataProvider
- (SBSystemStatusWifiDataProvider)init;
- (void)_queue_updateData;
- (void)_queue_updateWifiActive;
- (void)_registerForNotifications;
- (void)_updateData;
- (void)_updateWifiActive;
- (void)dealloc;
- (void)invalidate;
- (void)setFallingBackToCellular:(BOOL)a3;
- (void)setWifiActive:(BOOL)a3;
@end

@implementation SBSystemStatusWifiDataProvider

- (SBSystemStatusWifiDataProvider)init
{
  v17.receiver = self;
  v17.super_class = SBSystemStatusWifiDataProvider;
  v2 = [(SBSystemStatusWifiDataProvider *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D6BBB8]);
    v4 = [SBApp systemStatusServer];
    v5 = [v3 initWithServerHandle:v4];
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    Serial = BSDispatchQueueCreateSerial();
    v8 = *(v2 + 2);
    *(v2 + 2) = Serial;

    [v2 _registerForNotifications];
    objc_initWeak(&location, v2);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __38__SBSystemStatusWifiDataProvider_init__block_invoke;
    v14 = &unk_2783A8C68;
    objc_copyWeak(&v15, &location);
    v9 = MEMORY[0x223D6F7F0](&v11);
    *(v2 + 4) = tcp_connection_fallback_watcher_create();
    [v2 _updateWifiActive];
    dispatch_async(*(v2 + 2), v9);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__SBSystemStatusWifiDataProvider_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cellularFallbackWatcher];
  v2 = tcp_fallback_watcher_fallback_inuse();
  if (v2 != [WeakRetained isFallingBackToCellular])
  {
    [WeakRetained setFallingBackToCellular:v2];
    v3 = SBLogStatusBarish();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"off";
      if (v2)
      {
        v4 = @"on";
      }

      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "cellular fallback is %{public}@", &v5, 0xCu);
    }

    [WeakRetained _updateData];
  }
}

- (void)dealloc
{
  [(SBSystemStatusWifiDataProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemStatusWifiDataProvider;
  [(SBSystemStatusWifiDataProvider *)&v3 dealloc];
}

- (void)invalidate
{
  [(STWifiStatusDomainPublisher *)self->_wifiDataPublisher invalidate];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if ([(SBSystemStatusWifiDataProvider *)self cellularFallbackWatcher])
  {
    tcp_connection_fallback_watcher_destroy();

    [(SBSystemStatusWifiDataProvider *)self setCellularFallbackWatcher:0];
  }
}

- (void)_registerForNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__updateData name:@"SBWifiSignalStrengthChangedNotification" object:0];
  [v3 addObserver:self selector:sel__updateData name:@"SBWifiManagerLinkHotSpotnessDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__updateWifiActive name:@"SBWifiManagerPrimaryInterfaceMayHaveChangedNotification" object:0];
}

- (void)_updateData
{
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SBSystemStatusWifiDataProvider__updateData__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

- (void)_updateWifiActive
{
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SBSystemStatusWifiDataProvider__updateWifiActive__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

- (void)setWifiActive:(BOOL)a3
{
  v3 = a3;
  BSDispatchQueueAssert();
  if (self->_queue_wifiActive != v3)
  {
    self->_queue_wifiActive = v3;
  }
}

- (void)setFallingBackToCellular:(BOOL)a3
{
  v3 = a3;
  BSDispatchQueueAssert();
  if (self->_queue_fallingBackToCellular != v3)
  {
    self->_queue_fallingBackToCellular = v3;
  }
}

- (void)_queue_updateData
{
  BSDispatchQueueAssert();
  v6 = objc_alloc_init(MEMORY[0x277D6BA30]);
  v3 = +[SBWiFiManager sharedInstance];
  if ([(SBSystemStatusWifiDataProvider *)self isWifiActive])
  {
    v4 = [(SBSystemStatusWifiDataProvider *)self isFallingBackToCellular]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [v6 setWifiActive:v4];
  [v6 setSignalStrengthBars:{objc_msgSend(v3, "signalStrengthBars")}];
  [v6 setAssociatedToIOSHotspot:{objc_msgSend(v3, "isAssociatedToIOSHotspot")}];
  v5 = [(SBSystemStatusWifiDataProvider *)self wifiDataPublisher];
  [v5 setData:v6];
}

- (void)_queue_updateWifiActive
{
  BSDispatchQueueAssert();
  v4 = +[SBWiFiManager sharedInstance];
  if ([v4 isPowered] && objc_msgSend(v4, "isPrimaryInterface"))
  {
    v3 = [v4 isAssociated];
  }

  else
  {
    v3 = 0;
  }

  [(SBSystemStatusWifiDataProvider *)self setWifiActive:v3];
  [(SBSystemStatusWifiDataProvider *)self _queue_updateData];
}

@end