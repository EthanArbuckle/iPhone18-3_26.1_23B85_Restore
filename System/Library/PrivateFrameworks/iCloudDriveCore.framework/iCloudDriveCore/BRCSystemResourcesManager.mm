@interface BRCSystemResourcesManager
+ (id)_fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent:(id)event;
+ (id)manager;
- (BOOL)isCellularNetwork;
- (BOOL)isNetworkAvailableForDriveWithError:(id *)error;
- (BOOL)isNetworkReachable;
- (BOOL)isPowerOK;
- (BRCSystemResourcesManager)init;
- (id)_init;
- (void)__resetReachability;
- (void)_didReceiveMemoryWarning;
- (void)_handleAppsMonitorXPCEvent:(id)event;
- (void)_initAppListObservers;
- (void)_initLowDiskManager;
- (void)_initLowMemory;
- (void)_initPowerManager;
- (void)_initProcessObservers;
- (void)_initReachability;
- (void)_initScreenLockManager;
- (void)_invalidateAppListObservers;
- (void)_invalidateLowDiskManager;
- (void)_invalidateLowMemory;
- (void)_invalidatePowerManager;
- (void)_invalidateProcessObservers;
- (void)_invalidateReachability;
- (void)_invalidateScreenLockManager;
- (void)_processLowDiskNotification:(BOOL)notification;
- (void)_resetLowDiskManager;
- (void)_resetPowerManager;
- (void)_resetReachability;
- (void)_setPowerLevelWithCoalescing:(BOOL)coalescing;
- (void)addAppListObserver:(id)observer;
- (void)addLowDiskObserver:(id)observer forDevice:(int)device;
- (void)addLowMemoryObserver:(id)observer;
- (void)addPowerObserver:(id)observer;
- (void)addProcessMonitor:(id)monitor forProcessID:(int)d;
- (void)addReachabilityObserver:(id)observer;
- (void)addScreenLockObserver:(id)observer;
- (void)close;
- (void)dealloc;
- (void)reachabilityMonitor:(id)monitor didChangeCellularNetworkTo:(BOOL)to;
- (void)reachabilityMonitor:(id)monitor didChangeReachabilityStatusTo:(BOOL)to;
- (void)removeAppListObserver:(id)observer;
- (void)removeLowDiskObserver:(id)observer forDevice:(int)device;
- (void)removeLowMemoryObserver:(id)observer;
- (void)removePowerObserver:(id)observer;
- (void)removeProcessMonitor:(id)monitor;
- (void)removeReachabilityObserver:(id)observer;
- (void)removeScreenLockObserver:(id)observer;
- (void)reset;
@end

@implementation BRCSystemResourcesManager

+ (id)manager
{
  if (manager_once != -1)
  {
    +[BRCSystemResourcesManager manager];
  }

  v3 = manager_gSystemResourcesManager;

  return v3;
}

uint64_t __36__BRCSystemResourcesManager_manager__block_invoke()
{
  manager_gSystemResourcesManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = BRCSystemResourcesManager;
  v2 = [(BRCSystemResourcesManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.brc.system-resources", v4);

    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;
  }

  return v2;
}

- (BRCSystemResourcesManager)init
{
  _init = [(BRCSystemResourcesManager *)self _init];
  v3 = _init;
  if (_init)
  {
    [(BRCSystemResourcesManager *)_init _initScreenLockManager];
    [(BRCSystemResourcesManager *)v3 _initReachability];
    [(BRCSystemResourcesManager *)v3 _initPowerManager];
    [(BRCSystemResourcesManager *)v3 _initLowDiskManager];
    [(BRCSystemResourcesManager *)v3 _initLowMemory];
    [(BRCSystemResourcesManager *)v3 _initProcessObservers];
    [(BRCSystemResourcesManager *)v3 _initAppListObservers];
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [BRCSystemResourcesManager init];
    }
  }

  return v3;
}

- (void)close
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__BRCSystemResourcesManager_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(notificationQueue, block);
}

void __34__BRCSystemResourcesManager_close__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if ((v1[16] & 1) == 0)
  {
    [v1 _invalidateScreenLockManager];
    [*v2 _invalidateReachability];
    [*v2 _invalidatePowerManager];
    [*v2 _invalidateLowDiskManager];
    [*v2 _invalidateLowMemory];
    [*v2 _invalidateProcessObservers];
    [*v2 _invalidateAppListObservers];
    *(*v2 + 16) = 1;
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __34__BRCSystemResourcesManager_close__block_invoke_cold_1(v2);
    }
  }
}

- (void)dealloc
{
  [(BRCSystemResourcesManager *)self close];
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = 0;

  v4.receiver = self;
  v4.super_class = BRCSystemResourcesManager;
  [(BRCSystemResourcesManager *)&v4 dealloc];
}

- (void)reset
{
  [(BRCSystemResourcesManager *)self _resetReachability];
  [(BRCSystemResourcesManager *)self _resetPowerManager];
  [(BRCSystemResourcesManager *)self _resetLowDiskManager];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCSystemResourcesManager reset];
  }
}

- (void)_initScreenLockManager
{
  mEMORY[0x277CFAEB8] = [MEMORY[0x277CFAEB8] sharedScreenLockMonitor];
  [mEMORY[0x277CFAEB8] addObserver:self];

  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  screenLockObservers = self->_screenLockObservers;
  self->_screenLockObservers = weakObjectsHashTable;

  MEMORY[0x2821F96F8]();
}

- (void)_invalidateScreenLockManager
{
  mEMORY[0x277CFAEB8] = [MEMORY[0x277CFAEB8] sharedScreenLockMonitor];
  [mEMORY[0x277CFAEB8] removeObserver:self];

  screenLockObservers = self->_screenLockObservers;
  self->_screenLockObservers = 0;
}

- (void)addScreenLockObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_screenLockObservers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_screenLockObservers addObject:observerCopy];
  objc_sync_exit(v4);

  [observerCopy screenLockChanged:self->_screenLocked];
}

- (void)removeScreenLockObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_screenLockObservers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_screenLockObservers removeObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)reachabilityMonitor:(id)monitor didChangeReachabilityStatusTo:(BOOL)to
{
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__BRCSystemResourcesManager_reachabilityMonitor_didChangeReachabilityStatusTo___block_invoke;
  v5[3] = &unk_278500EE0;
  v5[4] = self;
  toCopy = to;
  dispatch_async(notificationQueue, v5);
}

- (void)reachabilityMonitor:(id)monitor didChangeCellularNetworkTo:(BOOL)to
{
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__BRCSystemResourcesManager_reachabilityMonitor_didChangeCellularNetworkTo___block_invoke;
  v5[3] = &unk_278500EE0;
  v5[4] = self;
  toCopy = to;
  dispatch_async(notificationQueue, v5);
}

- (void)_initReachability
{
  self->_isNetworkReachable = 1;
  self->_isCellularNetwork = 0;
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  reachabilityObservers = self->_reachabilityObservers;
  self->_reachabilityObservers = weakObjectsHashTable;

  v25 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [BRCStateUpdateCoalescer alloc];
  notificationQueue = self->_notificationQueue;
  [v25 systemReachabilityMinDelay];
  v8 = v7;
  [v25 systemReachabilityMaxDelay];
  v10 = v9;
  [v25 systemReachabilityStableStateMinThreshold];
  v12 = [(BRCStateUpdateCoalescer *)v5 initWithCallbackQueue:notificationQueue timerMinDelay:v8 timerMaxDelay:v10 stableStateMinThreshold:v11];
  reachabilityStateUpdateCoalescer = self->_reachabilityStateUpdateCoalescer;
  self->_reachabilityStateUpdateCoalescer = v12;

  v14 = [BRCStateUpdateCoalescer alloc];
  v15 = self->_notificationQueue;
  [v25 systemReachabilityMinDelay];
  v17 = v16;
  [v25 systemReachabilityMaxDelay];
  v19 = v18;
  [v25 systemReachabilityStableStateMinThreshold];
  v21 = [(BRCStateUpdateCoalescer *)v14 initWithCallbackQueue:v15 timerMinDelay:v17 timerMaxDelay:v19 stableStateMinThreshold:v20];
  cellularStateUpdateCoalescer = self->_cellularStateUpdateCoalescer;
  self->_cellularStateUpdateCoalescer = v21;

  mEMORY[0x277CFAEA0] = [MEMORY[0x277CFAEA0] sharedReachabilityMonitor];
  [mEMORY[0x277CFAEA0] addObserver:self];

  v24 = +[BRCUploadConstraintChecker defaultChecker];
  [v24 sendCellularConstraintNotification];
}

- (void)__resetReachability
{
  [(BRCStateUpdateCoalescer *)self->_reachabilityStateUpdateCoalescer reset];
  [(BRCStateUpdateCoalescer *)self->_cellularStateUpdateCoalescer reset];
  [(BRCSystemResourcesManager *)self _setNetworkReachable:self->_isNetworkReachable];
  isCellularNetwork = self->_isCellularNetwork;

  [(BRCSystemResourcesManager *)self _setCellularNetwork:isCellularNetwork];
}

- (void)_resetReachability
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BRCSystemResourcesManager__resetReachability__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)_invalidateReachability
{
  reachabilityObservers = self->_reachabilityObservers;
  self->_reachabilityObservers = 0;

  mEMORY[0x277CFAEA0] = [MEMORY[0x277CFAEA0] sharedReachabilityMonitor];
  [mEMORY[0x277CFAEA0] removeObserver:self];

  [(BRCSystemResourcesManager *)self __resetReachability];
  reachabilityStateUpdateCoalescer = self->_reachabilityStateUpdateCoalescer;
  self->_reachabilityStateUpdateCoalescer = 0;

  cellularStateUpdateCoalescer = self->_cellularStateUpdateCoalescer;
  self->_cellularStateUpdateCoalescer = 0;
}

- (BOOL)isNetworkReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__BRCSystemResourcesManager_isNetworkReachable__block_invoke;
  v5[3] = &unk_278502000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isCellularNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__BRCSystemResourcesManager_isCellularNetwork__block_invoke;
  v5[3] = &unk_278502000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isNetworkAvailableForDriveWithError:(id *)error
{
  if ([(BRCSystemResourcesManager *)self isNetworkReachable])
  {
    if (![(BRCSystemResourcesManager *)self isCellularNetwork])
    {
      return 1;
    }

    v5 = +[BRCContainerCellularSettings containerCellularSettings];
    isCellularEnabled = [v5 isCellularEnabled];

    if (isCellularEnabled)
    {
      return 1;
    }

    if (error)
    {
      brc_errorNetworkUnreachableDueToCellularOverICDDisabled = [MEMORY[0x277CCA9B8] brc_errorNetworkUnreachableDueToCellularOverICDDisabled];
      goto LABEL_7;
    }
  }

  else if (error)
  {
    brc_errorNetworkUnreachableDueToCellularOverICDDisabled = [MEMORY[0x277CCA9B8] brc_errorNetworkUnreachable];
LABEL_7:
    v9 = brc_errorNetworkUnreachableDueToCellularOverICDDisabled;
    v10 = brc_errorNetworkUnreachableDueToCellularOverICDDisabled;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (void)addReachabilityObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BRCSystemResourcesManager_addReachabilityObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

uint64_t __53__BRCSystemResourcesManager_addReachabilityObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  [*(a1 + 40) networkReachabilityChanged:*(*(a1 + 32) + 48)];
  v2 = *(a1 + 40);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 64);

    return [v4 networkCellularChanged:v5];
  }

  return result;
}

- (void)removeReachabilityObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__BRCSystemResourcesManager_removeReachabilityObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

- (void)_initPowerManager
{
  self->_powerLevelOK = 1;
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  powerObservers = self->_powerObservers;
  self->_powerObservers = weakObjectsHashTable;

  notificationQueue = self->_notificationQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__BRCSystemResourcesManager__initPowerManager__block_invoke;
  v12[3] = &unk_2784FF7B0;
  v12[4] = self;
  v6 = v12;
  v7 = MEMORY[0x277D77BF8];
  v8 = notificationQueue;
  sharedManager = [v7 sharedManager];
  br_currentPersonaID = [sharedManager br_currentPersonaID];

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __br_notify_register_dispatch_block_invoke_1;
  handler[3] = &unk_2784FF800;
  v15 = v6;
  v16 = "com.apple.system.powermanagement.SystemLoadAdvisory";
  v14 = br_currentPersonaID;
  v11 = br_currentPersonaID;
  notify_register_dispatch("com.apple.system.powermanagement.SystemLoadAdvisory", &self->_powerNotifyToken, v8, handler);

  [(BRCSystemResourcesManager *)self _resetPowerManager];
}

uint64_t __46__BRCSystemResourcesManager__initPowerManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  is_ok = brc_power_is_ok();

  return [v1 _setPowerLevelWithCoalescing:is_ok];
}

- (void)_invalidatePowerManager
{
  notify_cancel(self->_powerNotifyToken);
  self->_powerNotifyToken = 0;
  powerObservers = self->_powerObservers;
  self->_powerObservers = 0;
}

- (void)_resetPowerManager
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BRCSystemResourcesManager__resetPowerManager__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

uint64_t __47__BRCSystemResourcesManager__resetPowerManager__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 88);
  is_ok = brc_power_is_ok();

  return [v2 _setPowerLevel:is_ok];
}

- (BOOL)isPowerOK
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__BRCSystemResourcesManager_isPowerOK__block_invoke;
  v5[3] = &unk_278502000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setPowerLevelWithCoalescing:(BOOL)coalescing
{
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  [v5 systemPowerLatency];
  v7 = v6;
  dispatch_assert_queue_V2(self->_notificationQueue);
  if (coalescing)
  {
    powerLevelOKTimer = self->_powerLevelOKTimer;
    if (self->_powerLevelOK)
    {
      if (powerLevelOKTimer)
      {
        dispatch_source_cancel(powerLevelOKTimer);
        v9 = self->_powerLevelOKTimer;
        self->_powerLevelOKTimer = 0;
      }
    }

    else
    {
      if (powerLevelOKTimer)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __58__BRCSystemResourcesManager__setPowerLevelWithCoalescing___block_invoke_2;
        v25[3] = &unk_278500EE0;
        v25[4] = self;
        coalescingCopy = coalescing;
        v12 = powerLevelOKTimer;
        v13 = v25;
        v14 = v13;
        v15 = v13;
        if (*MEMORY[0x277CFB010])
        {
          v15 = (*MEMORY[0x277CFB010])(v13);
        }

        v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v15);
        dispatch_source_set_event_handler(v12, v16);
      }

      else
      {
        v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_notificationQueue);
        v18 = dispatch_time(0, (v7 * 1000000000.0));
        dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, (v7 * 1000000000.0) / 10);

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __58__BRCSystemResourcesManager__setPowerLevelWithCoalescing___block_invoke;
        v27[3] = &unk_278500EE0;
        v27[4] = self;
        coalescingCopy2 = coalescing;
        v19 = v17;
        v20 = v27;
        v21 = v20;
        v22 = v20;
        if (*MEMORY[0x277CFB010])
        {
          v22 = (*MEMORY[0x277CFB010])(v20);
        }

        v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v22);
        dispatch_source_set_event_handler(v19, v23);

        v24 = self->_powerLevelOKTimer;
        self->_powerLevelOKTimer = v19;
        v12 = v19;

        dispatch_resume(v12);
      }
    }
  }

  else
  {
    v10 = self->_powerLevelOKTimer;
    if (v10)
    {
      dispatch_source_cancel(v10);
      v11 = self->_powerLevelOKTimer;
      self->_powerLevelOKTimer = 0;
    }

    if (self->_powerLevelOK)
    {
      [(BRCSystemResourcesManager *)self _setPowerLevel:0];
    }
  }
}

- (void)addPowerObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__BRCSystemResourcesManager_addPowerObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

uint64_t __46__BRCSystemResourcesManager_addPowerObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) addObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 92);

  return [v2 powerLevelChanged:v3];
}

- (void)removePowerObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BRCSystemResourcesManager_removePowerObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

- (void)_initLowDiskManager
{
  v3 = objc_opt_new();
  lowDiskSet = self->_lowDiskSet;
  self->_lowDiskSet = v3;

  v5 = objc_opt_new();
  lowDiskDict = self->_lowDiskDict;
  self->_lowDiskDict = v5;

  v7 = dispatch_source_create(MEMORY[0x277D85D40], 0, 0x1304uLL, self->_notificationQueue);
  lowDiskSource = self->_lowDiskSource;
  self->_lowDiskSource = v7;

  v9 = self->_lowDiskSource;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__BRCSystemResourcesManager__initLowDiskManager__block_invoke;
  v15[3] = &unk_2784FF450;
  v15[4] = self;
  v10 = v9;
  v11 = v15;
  v12 = v11;
  v13 = v11;
  if (*MEMORY[0x277CFB010])
  {
    v13 = (*MEMORY[0x277CFB010])(v11);
  }

  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v13);
  dispatch_source_set_event_handler(v10, v14);

  dispatch_resume(self->_lowDiskSource);
}

void __48__BRCSystemResourcesManager__initLowDiskManager__block_invoke(uint64_t a1)
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  v3 = *(a1 + 32);
  if (!*(v3 + 144))
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 8));
    [v2 systemLowDiskLatency];
    v6 = (v5 * 1000000000.0);
    v7 = v4;
    v8 = dispatch_time(0, v6);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, v6 / 10);

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__BRCSystemResourcesManager__initLowDiskManager__block_invoke_2;
    v19[3] = &unk_2784FF478;
    v9 = v7;
    v10 = *(a1 + 32);
    v20 = v9;
    v21 = v10;
    v11 = v9;
    v12 = v19;
    v13 = v12;
    v14 = v12;
    if (*MEMORY[0x277CFB010])
    {
      v14 = (*MEMORY[0x277CFB010])(v12);
    }

    v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v14);
    dispatch_source_set_event_handler(v11, v15);

    v16 = *(a1 + 32);
    v17 = *(v16 + 144);
    *(v16 + 144) = v11;
    v18 = v11;

    dispatch_resume(v18);
  }
}

uint64_t __48__BRCSystemResourcesManager__initLowDiskManager__block_invoke_2(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = *(a1 + 40);

  return [v4 _processLowDiskNotification:0];
}

- (void)_invalidateLowDiskManager
{
  lowDiskTimer = self->_lowDiskTimer;
  if (lowDiskTimer)
  {
    dispatch_source_cancel(lowDiskTimer);
    v4 = self->_lowDiskTimer;
    self->_lowDiskTimer = 0;
  }

  lowDiskSource = self->_lowDiskSource;
  if (lowDiskSource)
  {
    dispatch_source_cancel(lowDiskSource);
    v6 = self->_lowDiskSource;
    self->_lowDiskSource = 0;
  }

  lowDiskDict = self->_lowDiskDict;
  self->_lowDiskDict = 0;

  lowDiskSet = self->_lowDiskSet;
  self->_lowDiskSet = 0;
}

- (void)_resetLowDiskManager
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BRCSystemResourcesManager__resetLowDiskManager__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)_processLowDiskNotification:(BOOL)notification
{
  dispatch_assert_queue_V2(self->_notificationQueue);
  lowDiskDict = self->_lowDiskDict;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__BRCSystemResourcesManager__processLowDiskNotification___block_invoke;
  v6[3] = &unk_278508358;
  v6[4] = self;
  notificationCopy = notification;
  [(NSMutableDictionary *)lowDiskDict enumerateKeysAndObjectsUsingBlock:v6];
}

void __57__BRCSystemResourcesManager__processLowDiskNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  has_enough_space = brc_device_has_enough_space([v5 intValue]);
  v8 = [*(*(a1 + 32) + 120) containsObject:v5];
  if ((*(a1 + 40) & 1) != 0 || has_enough_space == v8)
  {
    v9 = *(*(a1 + 32) + 120);
    if (has_enough_space)
    {
      [v9 removeObject:v5];
    }

    else
    {
      [v9 addObject:v5];
    }

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = "NOT ";
      *buf = 138412802;
      v25 = v5;
      if (has_enough_space)
      {
        v18 = "";
      }

      v26 = 2080;
      v27 = v18;
      v28 = 2112;
      v29 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] disk %@ has %senough space now%@", buf, 0x20u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v19 + 1) + 8 * i) lowDiskStatusChangedForDevice:objc_msgSend(v5 hasEnoughSpace:{"intValue", v19), has_enough_space}];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addLowDiskObserver:(id)observer forDevice:(int)device
{
  observerCopy = observer;
  if (!device)
  {
    [BRCSystemResourcesManager addLowDiskObserver:forDevice:];
  }

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BRCSystemResourcesManager_addLowDiskObserver_forDevice___block_invoke;
  block[3] = &unk_278504488;
  deviceCopy = device;
  block[4] = self;
  v10 = observerCopy;
  v8 = observerCopy;
  dispatch_sync(notificationQueue, block);
}

void __58__BRCSystemResourcesManager_addLowDiskObserver_forDevice___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v2 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:v6];
  v3 = [*(*(a1 + 32) + 120) containsObject:v6];
  if (v2)
  {
    v4 = v3 ^ 1u;
  }

  else
  {
    v5 = *(*(a1 + 32) + 128);
    v2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [v5 setObject:v2 forKeyedSubscript:v6];
    if (brc_device_has_enough_space(*(a1 + 48)))
    {
      v4 = 1;
    }

    else
    {
      [*(*(a1 + 32) + 120) addObject:v6];
      v4 = 0;
    }
  }

  [v2 addObject:*(a1 + 40)];
  [*(a1 + 40) lowDiskStatusChangedForDevice:*(a1 + 48) hasEnoughSpace:v4];
}

- (void)removeLowDiskObserver:(id)observer forDevice:(int)device
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BRCSystemResourcesManager_removeLowDiskObserver_forDevice___block_invoke;
  block[3] = &unk_278504488;
  deviceCopy = device;
  block[4] = self;
  v10 = observerCopy;
  v8 = observerCopy;
  dispatch_sync(notificationQueue, block);
}

void __61__BRCSystemResourcesManager_removeLowDiskObserver_forDevice___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v2 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:?];
  v3 = v2;
  if (v2)
  {
    [v2 removeObject:*(a1 + 40)];
    if (![v3 count])
    {
      [*(*(a1 + 32) + 128) removeObjectForKey:v4];
      [*(*(a1 + 32) + 120) removeObject:v4];
    }
  }
}

- (void)_initLowMemory
{
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  lowMemoryObservers = self->_lowMemoryObservers;
  self->_lowMemoryObservers = weakObjectsHashTable;

  if (self->_memoryNotificationEventSource)
  {
    [BRCSystemResourcesManager _initLowMemory];
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D18], 0, 6uLL, self->_notificationQueue);
  memoryNotificationEventSource = self->_memoryNotificationEventSource;
  self->_memoryNotificationEventSource = v5;

  notificationQueue = self->_notificationQueue;
  v8 = br_pacer_create();
  memoryNotificationCoalescePacer = self->_memoryNotificationCoalescePacer;
  self->_memoryNotificationCoalescePacer = v8;

  v10 = self->_memoryNotificationCoalescePacer;
  v17[5] = MEMORY[0x277D85DD0];
  v17[6] = 3221225472;
  v17[7] = __43__BRCSystemResourcesManager__initLowMemory__block_invoke;
  v17[8] = &unk_2784FF450;
  v17[9] = self;
  br_pacer_set_event_handler();
  v11 = self->_memoryNotificationEventSource;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__BRCSystemResourcesManager__initLowMemory__block_invoke_2;
  v17[3] = &unk_2784FF450;
  v17[4] = self;
  v12 = v11;
  v13 = v17;
  v14 = v13;
  v15 = v13;
  if (*MEMORY[0x277CFB010])
  {
    v15 = (*MEMORY[0x277CFB010])(v13);
  }

  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v15);
  dispatch_source_set_event_handler(v12, v16);

  dispatch_resume(self->_memoryNotificationEventSource);
}

- (void)_invalidateLowMemory
{
  lowMemoryObservers = self->_lowMemoryObservers;
  self->_lowMemoryObservers = 0;

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BRCSystemResourcesManager__invalidateLowMemory__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(notificationQueue, block);
}

void __49__BRCSystemResourcesManager__invalidateLowMemory__block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 160));
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  *(v2 + 160) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  *(v4 + 168) = 0;
}

- (void)_didReceiveMemoryWarning
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_notificationQueue);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCSystemResourcesManager _didReceiveMemoryWarning];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_lowMemoryObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) didReceiveMemoryWarning];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addLowMemoryObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BRCSystemResourcesManager_addLowMemoryObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

- (void)removeLowMemoryObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BRCSystemResourcesManager_removeLowMemoryObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

- (void)_initProcessObservers
{
  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  processObservers = self->_processObservers;
  self->_processObservers = weakToStrongObjectsMapTable;

  MEMORY[0x2821F96F8]();
}

- (void)_invalidateProcessObservers
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BRCSystemResourcesManager__invalidateProcessObservers__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(notificationQueue, block);
}

void __56__BRCSystemResourcesManager__invalidateProcessObservers__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 176) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 176);
  *(v7 + 176) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addProcessMonitor:(id)monitor forProcessID:(int)d
{
  monitorCopy = monitor;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BRCSystemResourcesManager_addProcessMonitor_forProcessID___block_invoke;
  block[3] = &unk_278504488;
  block[4] = self;
  v10 = monitorCopy;
  dCopy = d;
  v8 = monitorCopy;
  dispatch_sync(notificationQueue, block);
}

void __60__BRCSystemResourcesManager_addProcessMonitor_forProcessID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CFAE90]) initForProcessID:*(a1 + 48) observer:*(a1 + 40)];
    if (v3)
    {
      [*(*(a1 + 32) + 176) setObject:v3 forKey:*(a1 + 40)];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)removeProcessMonitor:(id)monitor
{
  monitorCopy = monitor;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BRCSystemResourcesManager_removeProcessMonitor___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = monitorCopy;
  v6 = monitorCopy;
  dispatch_sync(notificationQueue, v7);
}

void __50__BRCSystemResourcesManager_removeProcessMonitor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 invalidate];
    [*(*(a1 + 32) + 176) removeObjectForKey:*(a1 + 40)];
    v2 = v3;
  }
}

+ (id)_fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent:(id)event
{
  v3 = xpc_dictionary_get_value(event, "UserInfo");
  v4 = v3;
  if (!v3)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      +[BRCSystemResourcesManager _fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent:];
    }

    goto LABEL_14;
  }

  if (MEMORY[0x22AA4AB30](v3) != MEMORY[0x277D86468])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      +[BRCSystemResourcesManager _fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent:];
    }

    goto LABEL_14;
  }

  v7 = xpc_dictionary_get_value(v4, "bundleIDs");
  v5 = v7;
  if (!v7)
  {
    v6 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      +[BRCSystemResourcesManager _fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent:];
    }

    goto LABEL_13;
  }

  if (MEMORY[0x22AA4AB30](v7) != MEMORY[0x277D86440])
  {
    v6 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      +[BRCSystemResourcesManager _fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent:];
    }

LABEL_13:

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  array = [MEMORY[0x277CBEB18] array];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __86__BRCSystemResourcesManager__fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent___block_invoke;
  applier[3] = &unk_278508380;
  v9 = array;
  v13 = v9;
  xpc_array_apply(v5, applier);
  v6 = v13;
LABEL_15:

  return v9;
}

uint64_t __86__BRCSystemResourcesManager__fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x22AA4AB30]() == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    if (string_ptr)
    {
      v6 = *(a1 + 32);
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:string_ptr encoding:4];
      [v6 addObject:v7];
    }
  }

  return 1;
}

- (void)_handleAppsMonitorXPCEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCSystemResourcesManager _handleAppsMonitorXPCEvent:];
  }

  v7 = [BRCUserDefaults defaultsForMangledID:0];
  supportsIncrementalAppsMonitoring = [v7 supportsIncrementalAppsMonitoring];

  v9 = 0;
  if (supportsIncrementalAppsMonitoring)
  {
    v9 = [objc_opt_class() _fetchBundleIDsFromAppRegisteredNotificationWithXPCEvent:eventCopy];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_appListObservers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if ([v9 count])
        {
          [v15 appListDidUpdateForBundleIDs:v9];
        }

        else
        {
          [v15 forceRefetchAppList];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_initAppListObservers
{
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  appListObservers = self->_appListObservers;
  self->_appListObservers = weakObjectsHashTable;

  notificationQueue = self->_notificationQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__BRCSystemResourcesManager__initAppListObservers__block_invoke;
  handler[3] = &unk_2785083A8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", notificationQueue, handler);
}

- (void)_invalidateAppListObservers
{
  appListObservers = self->_appListObservers;
  self->_appListObservers = 0;
  MEMORY[0x2821F96F8]();
}

- (void)addAppListObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__BRCSystemResourcesManager_addAppListObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

- (void)removeAppListObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__BRCSystemResourcesManager_removeAppListObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

@end