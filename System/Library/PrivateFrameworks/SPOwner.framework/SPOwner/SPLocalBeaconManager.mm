@interface SPLocalBeaconManager
+ (id)scheduleDateInterval:(id)a3;
- (SPLocalBeaconManager)init;
- (SPLocalBeaconManagerXPCProtocol)findMyBeaconDaemonProxy;
- (SPLocalBeaconManagerXPCProtocol)searchPartyDaemonProxy;
- (double)timeIntervalToNextFireDateFromDate:(id)a3;
- (id)dateIntervalForIndex:(unint64_t)a3 baseDate:(id)a4;
- (id)generateOfflineAdvertisingKeysForReason:(int64_t)a3 now:(id)a4;
- (id)rawNVRAMData;
- (id)remoteInterface;
- (id)xpcActivityCriteria:(id)a3;
- (unint64_t)bucketWithBaseTime:(id)a3 date:(id)a4;
- (void)_invalidate;
- (void)beaconingStateChanged:(int64_t)a3;
- (void)beaconingStateChangedNotification:(id)a3;
- (void)beaconsChanged:(id)a3;
- (void)bleMonitor:(id)a3 didChangeState:(unint64_t)a4;
- (void)dealloc;
- (void)generateBeaconingKeysOfType:(int64_t)a3 now:(id)a4 withCompletion:(id)a5;
- (void)handlerForActivity:(id)a3 state:(int64_t)a4;
- (void)invalidate;
- (void)localActivationLockInfoChanged;
- (void)notifyBeaconingKeysChangedBlockWithCompletion:(id)a3;
- (void)notifyStateChange:(BOOL)a3;
- (void)notifyStatusChange:(unsigned __int8)a3;
- (void)periodicActionWithCompletion:(id)a3;
- (void)refreshBeaconingState;
- (void)setPeriodicActionDispatchTimerWithInterval:(double)a3;
- (void)start;
- (void)stateDidChange:(BOOL)a3 powerState:(unint64_t)a4;
- (void)timerFired;
- (void)updateStateFromNVRAM;
@end

@implementation SPLocalBeaconManager

- (SPLocalBeaconManager)init
{
  v37 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = SPLocalBeaconManager;
  v2 = [(SPLocalBeaconManager *)&v34 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SPLocalBeaconManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    if (os_variant_has_internal_content())
    {
      v6 = [MEMORY[0x277CCAC38] processInfo];
      v7 = [v6 environment];
      v8 = [v7 objectForKeyedSubscript:@"UNDER_TEST"];
      v9 = v8 == 0;

      if (!v9)
      {
        goto LABEL_18;
      }
    }

    v10 = objc_alloc(MEMORY[0x277D07BA0]);
    v11 = [(SPLocalBeaconManager *)v2 remoteInterface];
    v12 = [v10 initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconmanager" options:0 remoteObjectInterface:v11 interruptionHandler:0 invalidationHandler:0];
    spdServiceDescription = v2->_spdServiceDescription;
    v2->_spdServiceDescription = v12;

    if (_os_feature_enabled_impl())
    {
      v14 = @"com.apple.findmy.LocalBeaconing";
    }

    else
    {
      v14 = @"com.apple.icloud.searchpartyd.beaconmanager";
    }

    v15 = objc_alloc(MEMORY[0x277D07BA0]);
    v16 = [(SPLocalBeaconManager *)v2 remoteInterface];
    v17 = [v15 initWithMachServiceName:v14 options:0 remoteObjectInterface:v16 interruptionHandler:0 invalidationHandler:0];
    findMyBeaconingDaemonServiceDescription = v2->_findMyBeaconingDaemonServiceDescription;
    v2->_findMyBeaconingDaemonServiceDescription = v17;

    v19 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v2;
      _os_log_impl(&dword_2643D0000, v19, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: Created %{public}@", buf, 0xCu);
    }
  }

  if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()) && runningInBluetoothd())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__SPLocalBeaconManager_init__block_invoke;
    block[3] = &unk_279B58AE8;
    v33 = v2;
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, block);
    }
  }

  if (runningInBluetoothd())
  {
    objc_initWeak(buf, v2);
    v20 = [MEMORY[0x277CCAC38] processInfo];
    v21 = [v20 processName];

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.icloud.searchpartyd.SPBeaconManager.%@", v21];
    v23 = objc_alloc(MEMORY[0x277D07B90]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __28__SPLocalBeaconManager_init__block_invoke_2;
    v30[3] = &unk_279B58F40;
    objc_copyWeak(&v31, buf);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __28__SPLocalBeaconManager_init__block_invoke_3;
    v28[3] = &unk_279B58F68;
    objc_copyWeak(&v29, buf);
    v24 = [v23 initWithName:v22 qos:17 criteriaBlock:v30 handler:v28];
    WeakRetained = objc_loadWeakRetained(buf);
    [WeakRetained setPeriodicActionXpcActivity:v24];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);

    objc_destroyWeak(buf);
  }

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)remoteInterface
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287604E58];
  v3 = MEMORY[0x277CBEB98];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_beaconingKeysOfType_withCompletion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

void __28__SPLocalBeaconManager_init__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager periodic action xpc timer fired", v8, 2u);
  }

  [WeakRetained handlerForActivity:v5 state:a3];
}

id __28__SPLocalBeaconManager_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained xpcActivityCriteria:v3];

  return v5;
}

void *__28__SPLocalBeaconManager_init__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return bluetoothContextStartup(result);
  }

  return result;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: Dealloc %{public}@", buf, 0xCu);
  }

  [(SPLocalBeaconManager *)self _invalidate];
  v5.receiver = self;
  v5.super_class = SPLocalBeaconManager;
  [(SPLocalBeaconManager *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (SPLocalBeaconManagerXPCProtocol)searchPartyDaemonProxy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SPLocalBeaconManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPLocalBeaconManager *)self spdSession];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPLocalBeaconManager *)self spdServiceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPLocalBeaconManager *)self setSpdSession:v7];

    v8 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPLocalBeaconManager *)self spdServiceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPLocalBeaconManager *)self spdSession];
    [v11 resume];
  }

  v12 = [(SPLocalBeaconManager *)self spdSession];
  v13 = [v12 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (SPLocalBeaconManagerXPCProtocol)findMyBeaconDaemonProxy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SPLocalBeaconManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPLocalBeaconManager *)self findMyBeaconDaemonSession];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPLocalBeaconManager *)self findMyBeaconingDaemonServiceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPLocalBeaconManager *)self setFindMyBeaconDaemonSession:v7];

    v8 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPLocalBeaconManager *)self findMyBeaconingDaemonServiceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPLocalBeaconManager *)self findMyBeaconDaemonSession];
    [v11 resume];
  }

  v12 = [(SPLocalBeaconManager *)self findMyBeaconDaemonSession];
  v13 = [v12 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)rawNVRAMData
{
  v2 = +[SPNVRAM read];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC58] propertyListWithData:v2 options:0 format:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)localActivationLockInfoChanged
{
  v3 = [(SPLocalBeaconManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SPLocalBeaconManager_localActivationLockInfoChanged__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateStateFromNVRAM
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_cold_1();
    }
  }

  else
  {
    if (v5)
    {
      v8 = LogCategory_OfflineAdvertising();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "Read FMDActivationLockInfo: %@", buf, 0xCu);
      }

      v9 = [v5 isOfflineFindingEnabled];
      v10 = *(a1 + 32);
    }

    else
    {
      v10 = *(a1 + 32);
      v9 = 0;
    }

    [v10 setIsOfflineFindingEnabled:v9];
    v11 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_cold_2(a1, v11);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_130;
    v13[3] = &unk_279B58F90;
    v13[4] = *(a1 + 32);
    objc_copyWeak(&v14, (a1 + 40));
    _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: Calling beaconingStateChanged (post-erase)", OS_ACTIVITY_FLAG_DEFAULT, v13);
    objc_destroyWeak(&v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_130(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_2;
  block[3] = &unk_279B58D88;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedLocalBeaconManagerState:1];
  [WeakRetained beaconingStateChanged:1];
}

void __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_OfflineAdvertising();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "poisonBeaconIdentifier %@ success.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v3 = [(SPLocalBeaconManager *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SPLocalBeaconManager_start__block_invoke;
  v5[3] = &unk_279B58C78;
  v6 = v3;
  v7 = self;
  v4 = v3;
  _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: start", OS_ACTIVITY_FLAG_DEFAULT, v5);
}

uint64_t __29__SPLocalBeaconManager_start__block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager start called.", buf, 2u);
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v3 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "BA_LPEM || BA_Power_Off is ENABLED", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__SPLocalBeaconManager_start__block_invoke_132;
    block[3] = &unk_279B58AE8;
    v4 = *(a1 + 32);
    block[4] = *(a1 + 40);
    dispatch_sync(v4, block);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __29__SPLocalBeaconManager_start__block_invoke_2;
  v13[3] = &unk_279B58AE8;
  v5 = *(a1 + 32);
  v13[4] = *(a1 + 40);
  dispatch_async(v5, v13);
  v6 = [[SPMonitorsWrapper alloc] initWithBeaconManager:*(a1 + 40) delegateQueue:*(a1 + 32)];
  [*(a1 + 40) setMonitorWrapper:v6];

  v7 = [*(a1 + 40) monitorWrapper];
  [v7 start];

  v8 = objc_opt_new();
  [*(a1 + 40) setBleMonitor:v8];

  v9 = *(a1 + 40);
  v10 = [v9 bleMonitor];
  [v10 setDelegate:v9];

  v11 = [*(a1 + 40) bleMonitor];
  [v11 startMonitoring];

  return [*(a1 + 40) refreshBeaconingState];
}

void __29__SPLocalBeaconManager_start__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SPLocalBeaconManager_start__block_invoke_3;
  block[3] = &unk_279B58AE8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel_beaconsChanged_ name:@"SPBeaconsChanged" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel_beaconingStateChangedNotification_ name:@"SPBeaconingStateChanged" object:0];

  objc_autoreleasePoolPop(v2);
}

void __29__SPLocalBeaconManager_start__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), beaconsChangedTrampoline, @"SPBeaconsChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, *(a1 + 32), beaconingStateChangedTrampoline, @"SPBeaconingStateChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, *(a1 + 32), localActivationLockInfoChangedTrampoline, *MEMORY[0x277D08FA0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  objc_autoreleasePoolPop(v2);
}

- (void)beaconingStateChangedNotification:(id)a3
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __58__SPLocalBeaconManager_beaconingStateChangedNotification___block_invoke;
  activity_block[3] = &unk_279B58AE8;
  activity_block[4] = self;
  _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: beaconingStateChangedNotification:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __58__SPLocalBeaconManager_beaconingStateChangedNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SPLocalBeaconManager beaconingStateChangedNotification:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: SPI: %s", buf, 0xCu);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SPLocalBeaconManager_beaconingStateChangedNotification___block_invoke_140;
  block[3] = &unk_279B58AE8;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)beaconsChanged:(id)a3
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __39__SPLocalBeaconManager_beaconsChanged___block_invoke;
  activity_block[3] = &unk_279B58AE8;
  activity_block[4] = self;
  _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: beaconsChanged:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __39__SPLocalBeaconManager_beaconsChanged___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: beaconsChanged", buf, 2u);
  }

  if (([*(a1 + 32) beaconFromNVRAM] & 1) == 0)
  {
    v3 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SPLocalBeaconManager_beaconsChanged___block_invoke_141;
    block[3] = &unk_279B58AE8;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }
}

- (void)beaconingStateChanged:(int64_t)a3
{
  if ([(SPLocalBeaconManager *)self beaconFromNVRAM])
  {
    a3 = [(SPLocalBeaconManager *)self isOfflineFindingEnabled];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SPLocalBeaconManager_beaconingStateChanged___block_invoke;
  v5[3] = &unk_279B59000;
  v5[4] = self;
  v5[5] = a3;
  _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: beaconsChanged:", OS_ACTIVITY_FLAG_DEFAULT, v5);
}

uint64_t __46__SPLocalBeaconManager_beaconingStateChanged___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v22 = "[SPLocalBeaconManager beaconingStateChanged:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: SPI: %s", buf, 0xCu);
  }

  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v4 = [*(a1 + 32) monitorWrapper];
  v5 = [v4 isNetworkUp];

  v6 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 134218240;
    *v22 = v7;
    *&v22[8] = 1024;
    *v23 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: beaconingStateChanged: %ld networkState: %d", buf, 0x12u);
  }

  v8 = [*(a1 + 32) currentBeaconingState];
  v9 = 0;
  v10 = *(a1 + 40);
  if (v10 > 0)
  {
    if (v10 != 2)
    {
      if (v10 != 1)
      {
        goto LABEL_15;
      }

      v9 = 1;
      [*(a1 + 32) setCurrentBeaconingState:1];
      v11 = [*(a1 + 32) monitorWrapper];
      [v11 resume];
      goto LABEL_14;
    }

    [*(a1 + 32) setCurrentBeaconingState:v5 ^ 1u];
    v11 = [*(a1 + 32) monitorWrapper];
    [v11 resume];
LABEL_13:
    v9 = 0;
LABEL_14:

    goto LABEL_15;
  }

  if (v10 == -1 || !v10)
  {
    [*(a1 + 32) setCurrentBeaconingState:0];
    v11 = [*(a1 + 32) monitorWrapper];
    [v11 pause];
    goto LABEL_13;
  }

LABEL_15:
  v12 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) initialStateChangeSent];
    v14 = [*(a1 + 32) currentBeaconingState];
    *buf = 67109888;
    *v22 = v13;
    *&v22[4] = 1024;
    *&v22[6] = v8;
    *v23 = 1024;
    *&v23[2] = v14;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&dword_2643D0000, v12, OS_LOG_TYPE_DEFAULT, "Initial state changed? [%i], Old beaconing state [%i], current state [%i] requestNewKeys [%i]", buf, 0x1Au);
  }

  if (((v9 | [*(a1 + 32) initialStateChangeSent] ^ 1) & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "currentBeaconingState"), v8 != result))
  {
    if (v8 != [*(a1 + 32) currentBeaconingState])
    {
      v16 = LogCategory_SystemHealth();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) currentBeaconingState];
        *buf = 67109120;
        *v22 = v17;
        _os_log_impl(&dword_2643D0000, v16, OS_LOG_TYPE_DEFAULT, "Beaconing state changed to %i", buf, 8u);
      }
    }

    if ((v9 & [*(a1 + 32) initialStateChangeSent]) == 1)
    {
      [*(a1 + 32) notifyBeaconingKeysChangedBlockWithCompletion:&__block_literal_global_8];
    }

    if ((v8 & 1) != 0 || ![*(a1 + 32) currentBeaconingState])
    {
      [*(a1 + 32) notifyStateChange:{objc_msgSend(*(a1 + 32), "currentBeaconingState")}];
    }

    else
    {
      v18 = *(a1 + 32);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__SPLocalBeaconManager_beaconingStateChanged___block_invoke_144;
      v20[3] = &unk_279B58AE8;
      v20[4] = v18;
      [v18 periodicActionWithCompletion:v20];
    }

    result = [*(a1 + 32) setInitialStateChangeSent:1];
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void __46__SPLocalBeaconManager_beaconingStateChanged___block_invoke_142(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: notifyBeaconingKeysChangedBlockWithCompletion completion: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __46__SPLocalBeaconManager_beaconingStateChanged___block_invoke_144(uint64_t a1)
{
  if ([*(a1 + 32) currentBeaconingState])
  {
    [*(a1 + 32) notifyStatusChange:{objc_msgSend(*(a1 + 32), "currentStatus")}];
  }

  v2 = *(a1 + 32);
  v3 = [v2 currentBeaconingState];

  return [v2 notifyStateChange:v3];
}

- (void)notifyStateChange:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = [[SPPowerAssertion alloc] initWithReason:@"SPBeaconManager.stateChanged" type:1 timeout:5.0];
  [(SPPowerAssertion *)v5 hold];
  v6 = [(SPLocalBeaconManager *)self stateChangedBlockWithCompletion];
  v7 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v3;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: notifyStateChange: %ld ", buf, 0xCu);
  }

  if (v6)
  {
    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __42__SPLocalBeaconManager_notifyStateChange___block_invoke;
    activity_block[3] = &unk_279B59050;
    v11 = v6;
    v12 = v3;
    v10 = v5;
    _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: Calling stateChangedBlock", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __42__SPLocalBeaconManager_notifyStateChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SPLocalBeaconManager_notifyStateChange___block_invoke_2;
  v3[3] = &unk_279B59028;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v1, v3);
}

uint64_t __42__SPLocalBeaconManager_notifyStateChange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "stateChangedBlockWithCompletion completed with status - %li", &v7, 0xCu);
  }

  result = [*(a1 + 32) drop];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)notifyStatusChange:(unsigned __int8)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = [[SPPowerAssertion alloc] initWithReason:@"SPBeaconManager.statusChanged" type:1 timeout:5.0];
  [(SPPowerAssertion *)v5 hold];
  v6 = [(SPLocalBeaconManager *)self statusChangedBlockWithCompletion];
  v7 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v3;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: notifyStatusChange: %ld ", buf, 0xCu);
  }

  if (v6)
  {
    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __43__SPLocalBeaconManager_notifyStatusChange___block_invoke;
    activity_block[3] = &unk_279B59050;
    v11 = v6;
    v12 = v3;
    v10 = v5;
    _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: Calling statusChangedBlockWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __43__SPLocalBeaconManager_notifyStatusChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__SPLocalBeaconManager_notifyStatusChange___block_invoke_2;
  v3[3] = &unk_279B59028;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v1, v3);
}

uint64_t __43__SPLocalBeaconManager_notifyStatusChange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "statusChangedBlockWithCompletion completed with status - %li", &v7, 0xCu);
  }

  result = [*(a1 + 32) drop];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_invalidate
{
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconMangager invalidate called.", v14, 2u);
  }

  v4 = [(SPLocalBeaconManager *)self monitorWrapper];
  [v4 stop];

  [(SPLocalBeaconManager *)self setMonitorWrapper:0];
  v5 = [(SPLocalBeaconManager *)self periodicActionXpcActivity];

  if (v5)
  {
    [(SPLocalBeaconManager *)self setSchedulePeriodicActionXpcActivity:0];
    v6 = [(SPLocalBeaconManager *)self periodicActionXpcActivity];
    [v6 updateCriteria];

    [(SPLocalBeaconManager *)self setPeriodicActionXpcActivity:0];
  }

  v7 = [(SPLocalBeaconManager *)self periodicActionDispatchTimer];

  if (v7)
  {
    v8 = [(SPLocalBeaconManager *)self periodicActionDispatchTimer];
    dispatch_source_cancel(v8);
  }

  [(SPLocalBeaconManager *)self setPeriodicActionDispatchTimer:0];
  v9 = [(SPLocalBeaconManager *)self spdSession];
  [v9 invalidate];

  [(SPLocalBeaconManager *)self setSpdSession:0];
  v10 = [(SPLocalBeaconManager *)self findMyBeaconDaemonSession];
  [v10 invalidate];

  [(SPLocalBeaconManager *)self setFindMyBeaconDaemonSession:0];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SPBeaconsChangedNotification", 0);
  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v13, self, @"SPBeaconingStateChangedNotification", 0);
}

- (void)invalidate
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __34__SPLocalBeaconManager_invalidate__block_invoke;
  activity_block[3] = &unk_279B58AE8;
  activity_block[4] = self;
  _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: invalidate", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __34__SPLocalBeaconManager_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SPLocalBeaconManager_invalidate__block_invoke_2;
  block[3] = &unk_279B58AE8;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

- (void)handlerForActivity:(id)a3 state:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = v6;
    [(SPLocalBeaconManager *)self timerFired];
    [v7 done];
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [v6 defer];
  }

  v6 = v7;
LABEL_6:
}

- (id)xpcActivityCriteria:(id)a3
{
  v4 = a3;
  if ([(SPLocalBeaconManager *)self schedulePeriodicActionXpcActivity])
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [(SPLocalBeaconManager *)self timeIntervalToNextFireDateFromDate:v5];
    v7 = v6;
    [(SPLocalBeaconManager *)self periodicActionXpcActivityInterval];
    v9 = [objc_alloc(MEMORY[0x277D07B98]) initWithPriority:0 repeating:1 delay:v7 gracePeriod:(v8 * 0.5) interval:v8 options:515];
    v10 = v9;
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = v9;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)timeIntervalToNextFireDateFromDate:(id)a3
{
  v3 = a3;
  [v3 timeIntervalSinceReferenceDate];
  v5 = ceil(v4 / 900.0);
  [v3 timeIntervalSinceReferenceDate];
  v7 = v6;

  return -(v7 - v5 * 900.0);
}

- (void)setPeriodicActionDispatchTimerWithInterval:(double)a3
{
  v5 = [(SPLocalBeaconManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SPLocalBeaconManager *)self periodicActionDispatchTimer];

  if (v6)
  {
    v7 = [(SPLocalBeaconManager *)self periodicActionDispatchTimer];
    dispatch_source_cancel(v7);

    [(SPLocalBeaconManager *)self setPeriodicActionDispatchTimer:0];
  }

  if ((a3 < 0.0 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&a3 - 1) > 0xFFFFFFFFFFFFELL)
  {
    v10 = -1;
    v11 = -1;
  }

  else
  {
    v10 = ((a3 * 1000000000.0) * 0.02);
    v11 = dispatch_walltime(0, (a3 * 1000000000.0) - 1);
  }

  v12 = [(SPLocalBeaconManager *)self queue];
  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v12);
  [(SPLocalBeaconManager *)self setPeriodicActionDispatchTimer:v13];

  v14 = [(SPLocalBeaconManager *)self periodicActionDispatchTimer];
  dispatch_source_set_timer(v14, v11, 0xFFFFFFFFFFFFFFFFLL, v10);

  objc_initWeak(&location, self);
  v15 = [(SPLocalBeaconManager *)self periodicActionDispatchTimer];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __67__SPLocalBeaconManager_setPeriodicActionDispatchTimerWithInterval___block_invoke;
  v20 = &unk_279B58D88;
  objc_copyWeak(&v21, &location);
  dispatch_source_set_event_handler(v15, &v17);

  v16 = [(SPLocalBeaconManager *)self periodicActionDispatchTimer:v17];
  dispatch_resume(v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __67__SPLocalBeaconManager_setPeriodicActionDispatchTimerWithInterval___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager periodic action dispatch timer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timerFired];
}

- (void)timerFired
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __34__SPLocalBeaconManager_timerFired__block_invoke;
  activity_block[3] = &unk_279B58AE8;
  activity_block[4] = self;
  _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: timerFired", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __34__SPLocalBeaconManager_timerFired__block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager periodic action timer fired", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SPLocalBeaconManager_timerFired__block_invoke_155;
  block[3] = &unk_279B58D88;
  objc_copyWeak(&v5, buf);
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __34__SPLocalBeaconManager_timerFired__block_invoke_155(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained periodicActionWithCompletion:0];
}

- (void)periodicActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPLocalBeaconManager *)self queue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v6 = [(SPLocalBeaconManager *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SPLocalBeaconManager_periodicActionWithCompletion___block_invoke;
  v9[3] = &unk_279B590F0;
  v7 = v6;
  v10 = v7;
  v11 = self;
  objc_copyWeak(&v13, &location);
  v8 = v4;
  v12 = v8;
  [(SPLocalBeaconManager *)self notifyNearbyTokensChangedBlockWithCompletion:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __53__SPLocalBeaconManager_periodicActionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SPLocalBeaconManager_periodicActionWithCompletion___block_invoke_2;
  block[3] = &unk_279B590C8;
  v6 = *(a1 + 32);
  v4 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  objc_copyWeak(&v11, (a1 + 56));
  v9 = v3;
  v10 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v11);
}

void __53__SPLocalBeaconManager_periodicActionWithCompletion___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SPLocalBeaconManager_periodicActionWithCompletion___block_invoke_3;
  v5[3] = &unk_279B590A0;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_copyWeak(&v10, (a1 + 64));
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 56);
  [v2 notifyBeaconingKeysChangedBlockWithCompletion:v5];

  objc_destroyWeak(&v10);
}

void __53__SPLocalBeaconManager_periodicActionWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SPLocalBeaconManager_periodicActionWithCompletion___block_invoke_4;
  block[3] = &unk_279B59078;
  objc_copyWeak(&v14, (a1 + 64));
  v10 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v14);
}

void __53__SPLocalBeaconManager_periodicActionWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = v2;
    if (!v3)
    {
      goto LABEL_8;
    }

    v5 = [v2 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = [*(a1 + 40) startDate];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    if (v7 > v10)
    {
      v11 = objc_alloc(MEMORY[0x277CCA970]);
      v12 = [*(a1 + 40) startDate];
      v13 = [v4 endDate];
      v14 = [v11 initWithStartDate:v12 endDate:v13];

      v4 = v14;
    }

    v15 = [v4 endDate];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;
    v18 = [*(a1 + 40) endDate];
    [v18 timeIntervalSinceReferenceDate];
    v20 = v19;

    if (v17 > v20)
    {
      v21 = objc_alloc(MEMORY[0x277CCA970]);
      v22 = [v4 startDate];
      v23 = [*(a1 + 40) endDate];
      v24 = [v21 initWithStartDate:v22 endDate:v23];

      v4 = v24;
    }

    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = v3;
    if (v4)
    {
LABEL_8:
      v25 = [v4 startDate];
      [v25 timeIntervalSinceNow];
      [WeakRetained setPeriodicActionDispatchTimerWithInterval:?];

      [*(a1 + 48) setSchedulePeriodicActionXpcActivity:1];
      v26 = [v4 endDate];
      v27 = [v4 startDate];
      [v26 timeIntervalSinceDate:v27];
      [*(a1 + 48) setPeriodicActionXpcActivityInterval:?];

      goto LABEL_11;
    }
  }

  [*(a1 + 48) setSchedulePeriodicActionXpcActivity:0];
LABEL_11:
  v28 = [*(a1 + 48) periodicActionXpcActivity];
  [v28 updateCriteria];

  v29 = *(a1 + 56);
  if (v29)
  {
    (*(v29 + 16))();
  }
}

- (void)notifyBeaconingKeysChangedBlockWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPLocalBeaconManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SPLocalBeaconManager_notifyBeaconingKeysChangedBlockWithCompletion___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: notifyBeaconingKeysChangedBlockWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v7);
}

void __70__SPLocalBeaconManager_notifyBeaconingKeysChangedBlockWithCompletion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SPLocalBeaconManager notifyBeaconingKeysChangedBlockWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: SPI: %s", buf, 0xCu);
  }

  v3 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  v4 = [[SPPowerAssertion alloc] initWithReason:@"SPBeaconManager.notifyBeaconingKeysChanged" type:1 timeout:5.0];
  [(SPPowerAssertion *)v4 hold];
  v5 = [*(a1 + 32) beaconingKeyChangedBlockWithCompletion];
  if ([*(a1 + 32) currentBeaconingState] && v5)
  {
    if (([*(a1 + 32) beaconFromNVRAM] & 1) != 0 || (objc_msgSend(*(a1 + 32), "monitorWrapper"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isNetworkUp"), v6, (v7 & 1) == 0))
    {
      v9 = 0;
      v8 = @".wild";
    }

    else
    {
      v8 = @".nearOwner";
      v9 = 1;
    }

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __70__SPLocalBeaconManager_notifyBeaconingKeysChangedBlockWithCompletion___block_invoke_170;
    v18 = &unk_279B59160;
    v19 = v8;
    v20 = v3;
    v24 = 1907;
    v22 = v5;
    v21 = v4;
    v23 = *(a1 + 40);
    v10 = _Block_copy(&v15);
    v11 = [*(a1 + 32) beaconFromNVRAM];
    v12 = *(a1 + 32);
    if (v11)
    {
      v13 = [MEMORY[0x277CBEAA8] date];
      [v12 generateBeaconingKeysOfType:v9 now:v13 withCompletion:v10];
    }

    else
    {
      v13 = [*(a1 + 32) findMyBeaconDaemonProxy];
      [v13 beaconingKeysOfType:v9 withCompletion:v10];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __70__SPLocalBeaconManager_notifyBeaconingKeysChangedBlockWithCompletion___block_invoke_170(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = *(a1 + 32);
    *buf = 134218242;
    v41 = v5;
    v42 = 2114;
    v43 = v6;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "Calling beaconingKeyChangedBlock with %lu %{public}@ keys.", buf, 0x16u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v37;
    *&v9 = 138412802;
    v30 = v9;
    obj = v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = MEMORY[0x277CCAA68];
        v15 = [v13 dateInterval];
        v16 = [v15 startDate];
        v17 = [v14 stringFromDate:v16 timeZone:*(a1 + 40) formatOptions:*(a1 + 72)];

        v18 = MEMORY[0x277CCAA68];
        v19 = [v13 dateInterval];
        v20 = [v19 endDate];
        v21 = [v18 stringFromDate:v20 timeZone:*(a1 + 40) formatOptions:*(a1 + 72)];

        v22 = LogCategory_BeaconManager();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v13 key];
          v24 = [v23 fm_hexString];
          *buf = v30;
          v41 = v24;
          v42 = 2114;
          v43 = v17;
          v44 = 2114;
          v45 = v21;
          _os_log_impl(&dword_2643D0000, v22, OS_LOG_TYPE_DEFAULT, "  key: %@ (%{public}@ - %{public}@)", buf, 0x20u);
        }
      }

      v7 = obj;
      v10 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v10);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __70__SPLocalBeaconManager_notifyBeaconingKeysChangedBlockWithCompletion___block_invoke_172;
    activity_block[3] = &unk_279B59118;
    v35 = v25;
    v33 = v7;
    v34 = *(a1 + 48);
    _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: Calling beaconingKeyChangedBlockWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    v26 = *(a1 + 48);
    if (v26)
    {
      [v26 drop];
    }
  }

  if ([v7 count])
  {
    v27 = [v7 fm_map:&__block_literal_global_176];
    v28 = [SPLocalBeaconManager scheduleDateInterval:v27];
  }

  else
  {
    v28 = 0;
  }

  (*(*(a1 + 64) + 16))();

  v29 = *MEMORY[0x277D85DE8];
}

void __70__SPLocalBeaconManager_notifyBeaconingKeysChangedBlockWithCompletion___block_invoke_172(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__SPLocalBeaconManager_notifyBeaconingKeysChangedBlockWithCompletion___block_invoke_2;
  v3[3] = &unk_279B59028;
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  (*(v2 + 16))(v2, v1, v3);
}

uint64_t __70__SPLocalBeaconManager_notifyBeaconingKeysChangedBlockWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "beaconingKeyChangedBlockWithCompletion completed with status - %li", &v7, 0xCu);
  }

  result = [*(a1 + 32) drop];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)scheduleDateInterval:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 mutableCopy];
    v5 = [v4 firstObject];
    [v4 removeObjectAtIndex:0];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = [v5 endDate];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = [v5 endDate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__SPLocalBeaconManager_scheduleDateInterval___block_invoke;
    v9[3] = &unk_279B59188;
    v9[4] = &v16;
    v9[5] = &v10;
    [v4 enumerateObjectsUsingBlock:v9];
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    v7 = [v6 initWithStartDate:v17[5] endDate:v11[5]];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __45__SPLocalBeaconManager_scheduleDateInterval___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 endDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = a1 + 32;
  [*(*(*(a1 + 32) + 8) + 40) timeIntervalSinceReferenceDate];
  if (v5 >= v7)
  {
    v10 = *(a1 + 40);
    v9 = a1 + 40;
    [*(*(v10 + 8) + 40) timeIntervalSinceReferenceDate];
    v8 = v15;
    if (v5 <= v11)
    {
      goto LABEL_6;
    }

    v6 = v9;
  }

  else
  {
    v8 = v15;
  }

  v12 = [v8 endDate];
  v13 = *(*v6 + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v8 = v15;
LABEL_6:
}

- (void)refreshBeaconingState
{
  objc_initWeak(&location, self);
  v3 = [(SPLocalBeaconManager *)self queue];
  if (![(SPLocalBeaconManager *)self beaconFromNVRAM])
  {
    v4 = [(SPLocalBeaconManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SPLocalBeaconManager_refreshBeaconingState__block_invoke;
    block[3] = &unk_279B59228;
    objc_copyWeak(&v7, &location);
    v6 = v3;
    dispatch_async(v4, block);

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

void __45__SPLocalBeaconManager_refreshBeaconingState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained findMyBeaconDaemonProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SPLocalBeaconManager_refreshBeaconingState__block_invoke_2;
  v4[3] = &unk_279B59200;
  v5 = *(a1 + 32);
  objc_copyWeak(&v6, (a1 + 40));
  [v3 beaconingStateWithCompletion:v4];

  objc_destroyWeak(&v6);
}

void __45__SPLocalBeaconManager_refreshBeaconingState__block_invoke_2(uint64_t a1, void *a2)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __45__SPLocalBeaconManager_refreshBeaconingState__block_invoke_3;
  activity_block[3] = &unk_279B591D8;
  v5 = *(a1 + 32);
  objc_copyWeak(v6, (a1 + 40));
  v6[1] = a2;
  _os_activity_initiate(&dword_2643D0000, "SPLocalBeaconManager: Calling beaconingStateChanged", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  objc_destroyWeak(v6);
}

void __45__SPLocalBeaconManager_refreshBeaconingState__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__SPLocalBeaconManager_refreshBeaconingState__block_invoke_4;
  v3[3] = &unk_279B591B0;
  objc_copyWeak(v4, (a1 + 40));
  v4[1] = *(a1 + 48);
  dispatch_async(v2, v3);
  objc_destroyWeak(v4);
}

void __45__SPLocalBeaconManager_refreshBeaconingState__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedLocalBeaconManagerState:*(a1 + 40)];
  [WeakRetained beaconingStateChanged:*(a1 + 40)];
}

- (void)stateDidChange:(BOOL)a3 powerState:(unint64_t)a4
{
  v5 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v7 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = v5;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: Monitor Delegate: networkUp [%i], powerState [%lu]", v9, 0x12u);
  }

  [(SPLocalBeaconManager *)self refreshBeaconingState];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)bleMonitor:(id)a3 didChangeState:(unint64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = a4;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: SPBLEStateMonitor Delegate: didChangeState [%lu]", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [(SPLocalBeaconManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SPLocalBeaconManager_bleMonitor_didChangeState___block_invoke;
  block[3] = &unk_279B58D88;
  objc_copyWeak(&v11, buf);
  dispatch_async(v8, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __50__SPLocalBeaconManager_bleMonitor_didChangeState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained periodicActionWithCompletion:&__block_literal_global_181];
}

void __50__SPLocalBeaconManager_bleMonitor_didChangeState___block_invoke_2()
{
  v0 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2643D0000, v0, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: SPBLEStateMonitor finished periodicActionWithCompletion.", v1, 2u);
  }
}

- (unint64_t)bucketWithBaseTime:(id)a3 date:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  [v5 timeIntervalSinceReferenceDate];
  if (v8 >= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;
  v12 = MEMORY[0x277CBEAA8];
  [v5 timeIntervalSinceReferenceDate];
  v14 = [v12 dateWithTimeIntervalSinceReferenceDate:floor(v13 / 900.0) * 900.0];
  [v11 timeIntervalSinceDate:v14];
  v16 = (v15 / 900.0);
  v17 = v16 + 1;
  if (v16 == -1)
  {
    [SPLocalBeaconManager(KeyGeneration) bucketWithBaseTime:date:];
  }

  return v17;
}

- (id)dateIntervalForIndex:(unint64_t)a3 baseDate:(id)a4
{
  if (a3)
  {
    v5 = (a3 - 1) * 900.0;
    v6 = MEMORY[0x277CBEAA8];
    v7 = a4;
    [v7 timeIntervalSinceReferenceDate];
    v9 = [v6 dateWithTimeIntervalSinceReferenceDate:floor(v8 / 900.0) * 900.0];
    v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v7 sinceDate:v5];

    v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v9 sinceDate:v5];
    v12 = v11;
    if (a3 == 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v11 sinceDate:900.0];
    [v14 timeIntervalSince1970];
    v16 = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{nextafter(v16, 0.0)}];
    v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v17];
  }

  else
  {
    v9 = a4;
    v19 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SPLocalBeaconManager(KeyGeneration) dateIntervalForIndex:baseDate:];
    }

    v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 duration:0.0];
  }

  return v18;
}

- (void)generateBeaconingKeysOfType:(int64_t)a3 now:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SPLocalBeaconManager *)self selfBeaconingPairDate];
  v10 = MEMORY[0x277CBEAA8];
  [v9 timeIntervalSinceReferenceDate];
  v12 = [v10 dateWithTimeIntervalSinceReferenceDate:floor(v11 / 900.0) * 900.0];
  v13 = [(SPLocalBeaconManager *)self selfBeaconingIndex];
  v14 = [(SPLocalBeaconManager *)self bucketWithBaseTime:v9 date:v7];
  v15 = [(SPLocalBeaconManager *)self selfBeaconingDerivedSharedSecretKey];
  v16 = [(SPLocalBeaconManager *)self selfBeaconingPublicKey];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v14 >= v13)
  {
    if (v13 == 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v14 - v13;
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__SPLocalBeaconManager_KeyGeneration__generateBeaconingKeysOfType_now_withCompletion___block_invoke;
    v20[3] = &unk_279B59250;
    v25 = v14;
    v23 = v32;
    v20[4] = self;
    v21 = v12;
    v22 = v9;
    v24 = &v26;
    [SPCrypto generateTokensWithPublicKey:v16 sharedSecretKey:v15 initialRatchetsToSkip:v18 ratchetStep:v20];
    v19 = [v27[5] copy];
    v8[2](v8, v19);
  }

  else
  {
    v17 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SPLocalBeaconManager(KeyGeneration) generateBeaconingKeysOfType:now:withCompletion:];
    }

    v8[2](v8, MEMORY[0x277CBEBF8]);
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(v32, 8);
}

void __86__SPLocalBeaconManager_KeyGeneration__generateBeaconingKeysOfType_now_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = *(*(*(a1 + 56) + 8) + 24) + *(a1 + 72);
  v8 = a3;
  v9 = [SPCrypto compactKey:v8];

  v10 = [*(a1 + 32) dateIntervalForIndex:v7 baseDate:*(a1 + 40)];
  if (v7 == 1)
  {
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v12 = *(a1 + 48);
    v13 = [v10 endDate];
    v14 = [v11 initWithStartDate:v12 endDate:v13];

    v10 = v14;
  }

  v15 = [[SPBeaconingKey alloc] initWithDateInterval:v10 key:v9 secondaryKey:0 primaryIndex:v7 secondaryIndex:0];
  [*(*(*(a1 + 64) + 8) + 40) addObject:v15];
  if (++*(*(*(a1 + 56) + 8) + 24) >= 5)
  {
    *a4 = 1;
  }
}

- (id)generateOfflineAdvertisingKeysForReason:(int64_t)a3 now:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__1;
  v52 = __Block_byref_object_dispose__1;
  v53 = 0;
  v8 = [(SPLocalBeaconManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SPLocalBeaconManager_KeyGeneration__generateOfflineAdvertisingKeysForReason_now___block_invoke;
  block[3] = &unk_279B59278;
  block[4] = self;
  block[5] = &v48;
  block[6] = a3;
  dispatch_sync(v8, block);

  v9 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v49[5])
    {
      v10 = @"(not-nil)";
    }

    else
    {
      v10 = @"(nil)";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "Done reading selfBeaconing config %@", &buf, 0xCu);
  }

  if (!v49[5])
  {
    v16 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SPLocalBeaconManager(KeyGeneration) generateOfflineAdvertisingKeysForReason:now:];
    }

    goto LABEL_28;
  }

  v11 = _os_feature_enabled_impl();
  if (a3 == 1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v16 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SPLocalBeaconManager(KeyGeneration) generateOfflineAdvertisingKeysForReason:now:];
    }

    goto LABEL_28;
  }

  v13 = _os_feature_enabled_impl();
  if (a3 == 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    v16 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SPLocalBeaconManager(KeyGeneration) generateOfflineAdvertisingKeysForReason:now:];
    }

LABEL_28:
    v24 = MEMORY[0x277CBEBF8];
    goto LABEL_29;
  }

  v15 = [v49[5] shortIntervalCount];
  v36 = [v49[5] longIntervalCount];
  v16 = [(SPLocalBeaconManager *)self selfBeaconingPairDate];
  v17 = MEMORY[0x277CBEAA8];
  [v16 timeIntervalSinceReferenceDate];
  v19 = [v17 dateWithTimeIntervalSinceReferenceDate:floor(v18 / 900.0) * 900.0];
  v20 = [(SPLocalBeaconManager *)self selfBeaconingIndex];
  v21 = [(SPLocalBeaconManager *)self bucketWithBaseTime:v16 date:v7];
  v38 = [(SPLocalBeaconManager *)self selfBeaconingPublicKey];
  v37 = [(SPLocalBeaconManager *)self selfBeaconingDerivedSharedSecretKey];
  if (v20 == 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 - v20;
  }

  if (v20 <= v21)
  {
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v46[3] = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__1;
    v62 = __Block_byref_object_dispose__1;
    v35 = v15;
    v27 = v36 + v15;
    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __83__SPLocalBeaconManager_KeyGeneration__generateOfflineAdvertisingKeysForReason_now___block_invoke_412;
    v39[3] = &unk_279B592A0;
    v44 = v21;
    v42 = v46;
    v39[4] = self;
    v40 = v19;
    v41 = v16;
    p_buf = &buf;
    v45 = v27;
    [SPCrypto generateTokensWithPublicKey:v38 sharedSecretKey:v37 initialRatchetsToSkip:v22 ratchetStep:v39];
    if ([*(*(&buf + 1) + 40) count] != v27)
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"SPLocalBeaconManager.m" lineNumber:1084 description:{@"Generated %lu keys -- expected %lu!", objc_msgSend(*(*(&buf + 1) + 40), "count"), v27}];
    }

    v28 = [*(*(&buf + 1) + 40) fm_map:&__block_literal_global_421];
    v29 = [v28 subarrayWithRange:{0, v35}];
    v30 = [v28 subarrayWithRange:{v35, v36}];
    v31 = [[SPOfflineAdvertisingKeys alloc] initWithInterval:15 keys:v29];
    v32 = [[SPOfflineAdvertisingKeys alloc] initWithInterval:1440 keys:v30];
    v33 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v55 = 134218240;
      v56 = v35;
      v57 = 2048;
      v58 = v36;
      _os_log_impl(&dword_2643D0000, v33, OS_LOG_TYPE_DEFAULT, "Returning: %lu shortInterval keys and %lu longInterval keys", v55, 0x16u);
    }

    v54[0] = v31;
    v54[1] = v32;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v46, 8);
  }

  else
  {
    v23 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SPLocalBeaconManager(KeyGeneration) generateBeaconingKeysOfType:now:withCompletion:];
    }

    v24 = MEMORY[0x277CBEBF8];
  }

LABEL_29:
  _Block_object_dispose(&v48, 8);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __83__SPLocalBeaconManager_KeyGeneration__generateOfflineAdvertisingKeysForReason_now___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selfBeaconingConfigurations];

  if (!v2)
  {
    v3 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "no selfBeaconingConfigurations. Reloading state from NVRAM", v9, 2u);
    }

    [*(a1 + 32) updateStateFromNVRAM];
  }

  v4 = [*(a1 + 32) selfBeaconingConfigurations];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __83__SPLocalBeaconManager_KeyGeneration__generateOfflineAdvertisingKeysForReason_now___block_invoke_412(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = *(*(*(a1 + 56) + 8) + 24) + *(a1 + 72);
  v8 = a3;
  v9 = [SPCrypto compactKey:v8];

  v10 = [*(a1 + 32) dateIntervalForIndex:v7 baseDate:*(a1 + 40)];
  if (v7 == 1)
  {
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v12 = *(a1 + 48);
    v13 = [v10 endDate];
    v14 = [v11 initWithStartDate:v12 endDate:v13];

    v10 = v14;
  }

  v15 = [[SPBeaconingKey alloc] initWithDateInterval:v10 key:v9 secondaryKey:0 primaryIndex:v7 secondaryIndex:0];
  [*(*(*(a1 + 64) + 8) + 40) addObject:v15];
  if (++*(*(*(a1 + 56) + 8) + 24) >= *(a1 + 80))
  {
    *a4 = 1;
  }
}

void __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__SPLocalBeaconManager_updateStateFromNVRAM__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) isOfflineFindingEnabled];
  v5[0] = 67109120;
  v5[1] = v3;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "Setting isOfflineFindingEnabled to %d", v5, 8u);
  v4 = *MEMORY[0x277D85DE8];
}

@end