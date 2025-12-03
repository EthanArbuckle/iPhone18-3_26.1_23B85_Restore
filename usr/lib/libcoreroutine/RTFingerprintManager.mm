@interface RTFingerprintManager
+ (id)vendedClasses;
- (RTFingerprintManager)initWithDefaultsManager:(id)manager fingerprintStore:(id)store scenarioTriggerManager:(id)triggerManager timerManager:(id)timerManager wifiManager:(id)wifiManager;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)_startScanRequestForUnsettledState;
- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(unint64_t)offset handler:(id)handler;
- (void)fetchFingerprintsBetweenStartDate:(id)date endDate:(id)endDate filteredBySettledState:(unint64_t)state handler:(id)handler;
- (void)fetchFingerprintsInDateInterval:(id)interval filteredBySettledState:(unint64_t)state handler:(id)handler;
- (void)fetchWifiAccessPointsForFingerprint:(id)fingerprint handler:(id)handler;
- (void)injectFingerprints:(id)fingerprints handler:(id)handler;
- (void)injectWifiAccessPointsToLastFingerprint:(id)fingerprint handler:(id)handler;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)onSettledNotification:(id)notification;
- (void)onStoreAvailabilityDidChangeNotification:(id)notification;
- (void)onUnsettledNotification:(id)notification;
- (void)onWiFiScanNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)setAvailable:(BOOL)available;
- (void)setFingerprintMonitoringEnabled:(BOOL)enabled;
- (void)setSettledState:(unint64_t)state;
@end

@implementation RTFingerprintManager

+ (id)vendedClasses
{
  v2 = vendedClasses_vendedClasses_4;
  if (!vendedClasses_vendedClasses_4)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v4 = objc_opt_class();
    v5 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
    v6 = vendedClasses_vendedClasses_4;
    vendedClasses_vendedClasses_4 = v5;

    v2 = vendedClasses_vendedClasses_4;
  }

  return v2;
}

- (void)_setup
{
  defaultsManager = [(RTFingerprintManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsFingerprintManagerAccessPointsFetchLimit"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[RTFingerprintManager setAccessPointsFetchLimit:](self, "setAccessPointsFetchLimit:", [v6 unsignedIntegerValue]);
  }

  fingerprintStore = [(RTFingerprintManager *)self fingerprintStore];
  v5 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  [fingerprintStore addObserver:self selector:sel_onStoreAvailabilityDidChangeNotification_ name:v5];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTFingerprintManager *)self setFingerprintMonitoringEnabled:0];
  fingerprintStore = [(RTFingerprintManager *)self fingerprintStore];
  [fingerprintStore removeObserver:self];

  scanRequestTimer = [(RTFingerprintManager *)self scanRequestTimer];
  [scanRequestTimer invalidate];

  [(RTFingerprintManager *)self setScanRequestTimer:0];
  scanResultTimer = [(RTFingerprintManager *)self scanResultTimer];
  [scanResultTimer invalidate];

  [(RTFingerprintManager *)self setScanResultTimer:0];
  v7 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v7 = handlerCopy;
  }
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__RTFingerprintManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = dateCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = dateCopy;
  dispatch_async(queue, v13);
}

void __68__RTFingerprintManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    v6 = [*(a1 + 32) fingerprintStore];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__RTFingerprintManager_performPurgeOfType_referenceDate_completion___block_invoke_27;
    v8[3] = &unk_2788C48C0;
    v9 = *(a1 + 48);
    [v6 clearWithHandler:v8];

    v5 = v9;
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = [*(a1 + 32) fingerprintStore];
    v4 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__RTFingerprintManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v10[3] = &unk_2788C4F60;
    v11 = v4;
    v12 = *(a1 + 48);
    [v3 purgePredating:v11 handler:v10];

    v5 = v11;
LABEL_5:

    return;
  }

  v7 = *(*(a1 + 48) + 16);

  v7();
}

void __68__RTFingerprintManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "purge entries from the fingerprint store predating, %@, error, %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __68__RTFingerprintManager_performPurgeOfType_referenceDate_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "failed to clear fingerprint store with error, %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v8 = +[(RTNotification *)RTFingerprintManagerNotificationMonitorFingerprints];
  v9 = [nameCopy isEqualToString:v8];

  if (v9)
  {
    [(RTFingerprintManager *)self setFingerprintMonitoringEnabled:[(RTNotifier *)self getNumberOfObservers:nameCopy]!= 0];
  }

  else
  {
    v10 = +[(RTNotification *)RTFingerprintManagerNotificationAvailabilityDidChange];
    v11 = [nameCopy isEqualToString:v10];

    if (v11)
    {
      v12 = [[RTFingerprintManagerNotificationAvailabilityDidChange alloc] initWithAvailability:[(RTFingerprintManager *)self available]];
      [(RTNotifier *)self postNotification:v12 toObserver:observerCopy];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = nameCopy;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v14, 0xCu);
      }
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTFingerprintManagerNotificationMonitorFingerprints];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    [(RTFingerprintManager *)self setFingerprintMonitoringEnabled:[(RTNotifier *)self getNumberOfObservers:nameCopy]!= 0];
  }

  else
  {
    v8 = +[(RTNotification *)RTFingerprintManagerNotificationAvailabilityDidChange];
    v9 = [nameCopy isEqualToString:v8];

    if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = nameCopy;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v11, 0xCu);
      }
    }
  }
}

- (RTFingerprintManager)initWithDefaultsManager:(id)manager fingerprintStore:(id)store scenarioTriggerManager:(id)triggerManager timerManager:(id)timerManager wifiManager:(id)wifiManager
{
  v36 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  storeCopy = store;
  triggerManagerCopy = triggerManager;
  obj = timerManager;
  timerManagerCopy = timerManager;
  wifiManagerCopy = wifiManager;
  wifiManagerCopy2 = wifiManager;
  if (managerCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[RTFingerprintManager initWithDefaultsManager:fingerprintStore:scenarioTriggerManager:timerManager:wifiManager:]";
      v34 = 1024;
      v35 = 170;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
    }

    if (storeCopy)
    {
LABEL_3:
      if (triggerManagerCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v33 = "[RTFingerprintManager initWithDefaultsManager:fingerprintStore:scenarioTriggerManager:timerManager:wifiManager:]";
    v34 = 1024;
    v35 = 171;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprintStore (in %s:%d)", buf, 0x12u);
  }

  if (triggerManagerCopy)
  {
LABEL_4:
    if (timerManagerCopy)
    {
      goto LABEL_5;
    }

LABEL_22:
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[RTFingerprintManager initWithDefaultsManager:fingerprintStore:scenarioTriggerManager:timerManager:wifiManager:]";
      v34 = 1024;
      v35 = 173;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: timerManager (in %s:%d)", buf, 0x12u);
    }

    if (wifiManagerCopy2)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_19:
  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v33 = "[RTFingerprintManager initWithDefaultsManager:fingerprintStore:scenarioTriggerManager:timerManager:wifiManager:]";
    v34 = 1024;
    v35 = 172;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: scenarioTriggerManager (in %s:%d)", buf, 0x12u);
  }

  if (!timerManagerCopy)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (wifiManagerCopy2)
  {
LABEL_6:
    selfCopy = 0;
    if (managerCopy && storeCopy && triggerManagerCopy && timerManagerCopy)
    {
      v31.receiver = self;
      v31.super_class = RTFingerprintManager;
      v19 = [(RTNotifier *)&v31 init];
      v20 = v19;
      if (v19)
      {
        v19->_accessPointsCollectedPerFingerprint = 0;
        v19->_accessPointsFetchLimit = 1500;
        v19->_available = 0;
        objc_storeStrong(&v19->_defaultsManager, manager);
        v20->_fingerprintMonitoringEnabled = 0;
        objc_storeStrong(&v20->_fingerprintStore, store);
        objc_storeStrong(&v20->_scenarioTriggerManager, triggerManager);
        objc_storeStrong(&v20->_timerManager, obj);
        objc_storeStrong(&v20->_wifiManager, wifiManagerCopy);
        scanRequestTimer = v20->_scanRequestTimer;
        v20->_scanRequestTimer = 0;

        scanResultTimer = v20->_scanResultTimer;
        v20->_scanResultTimer = 0;

        [(RTService *)v20 setup];
      }

      self = v20;
      selfCopy = self;
    }

    goto LABEL_28;
  }

LABEL_25:
  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v33 = "[RTFingerprintManager initWithDefaultsManager:fingerprintStore:scenarioTriggerManager:timerManager:wifiManager:]";
    v34 = 1024;
    v35 = 174;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: wifiManager (in %s:%d)", buf, 0x12u);
  }

  selfCopy = 0;
LABEL_28:

  return selfCopy;
}

- (void)fetchFingerprintsInDateInterval:(id)interval filteredBySettledState:(unint64_t)state handler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_10;
  }

  if (!intervalCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"requires a dateInterval.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v26;
    v16 = &v25;
LABEL_9:
    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v11 = [v12 errorWithDomain:v13 code:7 userInfo:v17];

    handlerCopy[2](handlerCopy, 0, v11);
LABEL_10:

    goto LABEL_11;
  }

  if (state >= 3)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"requires a valid settledState.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v24;
    v16 = &v23;
    goto LABEL_9;
  }

  queue = [(RTNotifier *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__RTFingerprintManager_fetchFingerprintsInDateInterval_filteredBySettledState_handler___block_invoke;
  v18[3] = &unk_2788C4C20;
  v18[4] = self;
  v19 = intervalCopy;
  stateCopy = state;
  v20 = handlerCopy;
  dispatch_async(queue, v18);

LABEL_11:
}

void __87__RTFingerprintManager_fetchFingerprintsInDateInterval_filteredBySettledState_handler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) fingerprintStore];
  v2 = [*(a1 + 40) startDate];
  v3 = [*(a1 + 40) endDate];
  [v4 fetchFingerprintsBetweenStartDate:v2 endDate:v3 filteredBySettledState:*(a1 + 56) handler:*(a1 + 48)];
}

- (void)fetchFingerprintsBetweenStartDate:(id)date endDate:(id)endDate filteredBySettledState:(unint64_t)state handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTFingerprintManager_fetchFingerprintsBetweenStartDate_endDate_filteredBySettledState_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = dateCopy;
  v20 = handlerCopy;
  stateCopy = state;
  v19 = endDateCopy;
  v14 = handlerCopy;
  v15 = endDateCopy;
  v16 = dateCopy;
  dispatch_async(queue, block);
}

void __97__RTFingerprintManager_fetchFingerprintsBetweenStartDate_endDate_filteredBySettledState_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fingerprintStore];
  [v2 fetchFingerprintsBetweenStartDate:*(a1 + 40) endDate:*(a1 + 48) filteredBySettledState:*(a1 + 64) handler:*(a1 + 56)];
}

- (void)fetchWifiAccessPointsForFingerprint:(id)fingerprint handler:(id)handler
{
  fingerprintCopy = fingerprint;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTFingerprintManager_fetchWifiAccessPointsForFingerprint_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = fingerprintCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = fingerprintCopy;
  dispatch_async(queue, block);
}

void __68__RTFingerprintManager_fetchWifiAccessPointsForFingerprint_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fingerprintStore];
  [v2 fetchWifiAccessPointsForFingerprint:*(a1 + 40) fetchLimit:objc_msgSend(*(a1 + 32) handler:{"accessPointsFetchLimit"), *(a1 + 48)}];
}

- (void)setAvailable:(BOOL)available
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_available != available)
  {
    self->_available = available;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = v6;
        if (self->_available)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v10 = 138412546;
        v11 = v6;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, available, %@", &v10, 0x16u);
      }
    }

    v9 = [[RTFingerprintManagerNotificationAvailabilityDidChange alloc] initWithAvailability:self->_available];
    [(RTNotifier *)self postNotification:v9];
  }
}

- (void)setFingerprintMonitoringEnabled:(BOOL)enabled
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_fingerprintMonitoringEnabled == enabled)
  {
    return;
  }

  enabledCopy = enabled;
  self->_fingerprintMonitoringEnabled = enabled;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (self->_fingerprintMonitoringEnabled)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "fingerprint monitoring enabled, %@", &v17, 0xCu);
    }

    if (!self->_fingerprintMonitoringEnabled)
    {
      goto LABEL_9;
    }

LABEL_15:
    [(RTFingerprintManager *)self setSettledState:0];
    scenarioTriggerManager = [(RTFingerprintManager *)self scenarioTriggerManager];
    v14 = +[(RTNotification *)RTScenarioTriggerManagerNotificationSettled];
    [scenarioTriggerManager addObserver:self selector:sel_onSettledNotification_ name:v14];

    scenarioTriggerManager2 = [(RTFingerprintManager *)self scenarioTriggerManager];
    v16 = +[(RTNotification *)RTScenarioTriggerManagerNotificationUnsettled];
    [scenarioTriggerManager2 addObserver:self selector:sel_onUnsettledNotification_ name:v16];

    return;
  }

  if (enabledCopy)
  {
    goto LABEL_15;
  }

LABEL_9:
  scenarioTriggerManager3 = [(RTFingerprintManager *)self scenarioTriggerManager];
  [scenarioTriggerManager3 removeObserver:self];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, stop scan snd invalidate scan timers", &v17, 0xCu);
    }
  }

  scanRequestTimer = [(RTFingerprintManager *)self scanRequestTimer];
  [scanRequestTimer invalidate];

  [(RTFingerprintManager *)self setScanRequestTimer:0];
  scanResultTimer = [(RTFingerprintManager *)self scanResultTimer];
  [scanResultTimer invalidate];

  [(RTFingerprintManager *)self setScanResultTimer:0];
}

- (void)onStoreAvailabilityDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__RTFingerprintManager_onStoreAvailabilityDidChangeNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __65__RTFingerprintManager_onStoreAvailabilityDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) availability] == 2;
    v6 = *(a1 + 40);

    [v6 setAvailable:v5];
  }
}

- (void)onSettledNotification:(id)notification
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTFingerprintManager_onSettledNotification___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)onUnsettledNotification:(id)notification
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RTFingerprintManager_onUnsettledNotification___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setSettledState:(unint64_t)state
{
  v46 = *MEMORY[0x277D85DE8];
  settledState = self->_settledState;
  if (settledState != state)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [RTScenarioTriggerManager settledStateName:self->_settledState];
        v9 = [RTScenarioTriggerManager settledStateName:state];
        *buf = 138412546;
        v43 = v8;
        v44 = 2112;
        v45 = v9;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "settled state transitioned from, %@, to, %@", buf, 0x16u);
      }

      settledState = self->_settledState;
    }

    if (settledState == 1)
    {
      if (state != 2)
      {
        goto LABEL_33;
      }
    }

    else if (state != 2 || settledState)
    {
      if (state != 1 || settledState != 2)
      {
        if (state == 1 && !settledState)
        {
          [(RTFingerprintManager *)self _startScanRequestForUnsettledState];
        }

        goto LABEL_33;
      }

      wifiManager = [(RTFingerprintManager *)self wifiManager];
      [wifiManager removeObserver:self];

      timerManager = [(RTFingerprintManager *)self timerManager];
      v24 = MEMORY[0x277CCACA8];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v24 stringWithFormat:@"%@.scanRequestTimer", v26];
      queue = [(RTNotifier *)self queue];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __40__RTFingerprintManager_setSettledState___block_invoke_2;
      v39[3] = &unk_2788C52E8;
      v39[4] = self;
      v39[5] = a2;
      v29 = [timerManager timerWithIdentifier:v27 queue:queue handler:v39];
      [(RTFingerprintManager *)self setScanRequestTimer:v29];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v30 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = NSStringFromSelector(a2);
          *buf = 138412290;
          v43 = v31;
          _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, scanRequestTimer start", buf, 0xCu);
        }
      }

      defaultsManager = [(RTFingerprintManager *)self defaultsManager];
      v33 = [defaultsManager objectForKey:@"RTDefaultsFingerprintManagerScanRequestTimerDuration"];
      if (v33)
      {
        defaultsManager2 = [(RTFingerprintManager *)self defaultsManager];
        v35 = [defaultsManager2 objectForKey:@"RTDefaultsFingerprintManagerScanRequestTimerDuration"];
        [v35 doubleValue];
        v37 = v36;
      }

      else
      {
        v37 = 300.0;
      }

      scanRequestTimer = [(RTFingerprintManager *)self scanRequestTimer];
      [scanRequestTimer fireAfterDelay:v37 interval:INFINITY leeway:1.0];

      scanRequestTimer2 = [(RTFingerprintManager *)self scanRequestTimer];
      [scanRequestTimer2 resume];
      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412290;
        v43 = v11;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, invalidate scan timers for unsettled state", buf, 0xCu);
      }
    }

    scanRequestTimer3 = [(RTFingerprintManager *)self scanRequestTimer];
    [scanRequestTimer3 invalidate];

    [(RTFingerprintManager *)self setScanRequestTimer:0];
    scanResultTimer = [(RTFingerprintManager *)self scanResultTimer];

    if (scanResultTimer)
    {
      wifiManager2 = [(RTFingerprintManager *)self wifiManager];
      [wifiManager2 removeObserver:self];

      scanResultTimer2 = [(RTFingerprintManager *)self scanResultTimer];
      [scanResultTimer2 invalidate];

      [(RTFingerprintManager *)self setScanResultTimer:0];
    }

    if ([(RTFingerprintManager *)self fingerprintMonitoringEnabled])
    {
      v16 = objc_alloc(MEMORY[0x277D01108]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      date = [MEMORY[0x277CBEAA8] date];
      scanRequestTimer2 = [v16 initWithIdentifier:uUID settledState:2 start:date accessPoints:0];

      fingerprintStore = [(RTFingerprintManager *)self fingerprintStore];
      v41 = scanRequestTimer2;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __40__RTFingerprintManager_setSettledState___block_invoke;
      v40[3] = &unk_2788C4730;
      v40[4] = self;
      [fingerprintStore storeFingerprints:v21 handler:v40];

LABEL_32:
LABEL_33:
      self->_settledState = state;
    }
  }
}

void __40__RTFingerprintManager_setSettledState___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "failed to save settled transition with error, %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__RTFingerprintManager_setSettledState___block_invoke_51;
    block[3] = &unk_2788C4EA0;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }
}

void __40__RTFingerprintManager_setSettledState___block_invoke_51(uint64_t a1)
{
  [*(a1 + 32) setStartCollectAccessPoints:0];
  v2 = [*(a1 + 32) wifiManager];
  v3 = *(a1 + 32);
  v4 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  [v2 addObserver:v3 selector:sel_onWiFiScanNotification_ name:v4];

  v5 = [*(a1 + 32) wifiManager];
  [v5 scheduleScan];
}

uint64_t __40__RTFingerprintManager_setSettledState___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, scanRequestTimer expiry", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 32) scanRequestTimer];
  [v4 invalidate];

  [*(a1 + 32) setScanRequestTimer:0];
  return [*(a1 + 32) _startScanRequestForUnsettledState];
}

- (void)_startScanRequestForUnsettledState
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(RTFingerprintManager *)self fingerprintMonitoringEnabled])
  {
    v4 = objc_alloc(MEMORY[0x277D01108]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [v4 initWithIdentifier:uUID settledState:1 start:date accessPoints:0];

    fingerprintStore = [(RTFingerprintManager *)self fingerprintStore];
    v11[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__RTFingerprintManager__startScanRequestForUnsettledState__block_invoke;
    v10[3] = &unk_2788C4D10;
    v10[4] = self;
    v10[5] = a2;
    [fingerprintStore storeFingerprints:v9 handler:v10];
  }
}

void __58__RTFingerprintManager__startScanRequestForUnsettledState__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "failed to save unsettled transition with error, %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [*(a1 + 32) queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__RTFingerprintManager__startScanRequestForUnsettledState__block_invoke_61;
    v6[3] = &unk_2788C52E8;
    v7 = *(a1 + 32);
    dispatch_async(v5, v6);
  }
}

void __58__RTFingerprintManager__startScanRequestForUnsettledState__block_invoke_61(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setStartCollectAccessPoints:0];
  v2 = [*(a1 + 32) wifiManager];
  v3 = *(a1 + 32);
  v4 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  [v2 addObserver:v3 selector:sel_onWiFiScanNotification_ name:v4];

  v5 = [*(a1 + 32) wifiManager];
  [v5 scheduleScan];

  v6 = [*(a1 + 32) timerManager];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@.scanResultTimer", v9];
  v11 = [*(a1 + 32) queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__RTFingerprintManager__startScanRequestForUnsettledState__block_invoke_2;
  v17[3] = &unk_2788C52E8;
  v18 = *(a1 + 32);
  v12 = [v6 timerWithIdentifier:v10 queue:v11 handler:v17];
  [*(a1 + 32) setScanResultTimer:v12];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, scanResultTimer start", buf, 0xCu);
    }
  }

  v15 = [*(a1 + 32) scanResultTimer];
  [v15 fireAfterDelay:10.0 interval:INFINITY leeway:1.0];

  v16 = [*(a1 + 32) scanResultTimer];
  [v16 resume];
}

void __58__RTFingerprintManager__startScanRequestForUnsettledState__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, scanResultTimer expiry", buf, 0xCu);
    }
  }

  v4 = [*(a1 + 32) scanResultTimer];
  [v4 invalidate];

  [*(a1 + 32) setScanResultTimer:0];
  v5 = [*(a1 + 32) wifiManager];
  [v5 removeObserver:*(a1 + 32)];

  v6 = [*(a1 + 32) timerManager];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@.scanRequestTimer", v9];
  v11 = [*(a1 + 32) queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__RTFingerprintManager__startScanRequestForUnsettledState__block_invoke_65;
  v23[3] = &unk_2788C52E8;
  v24 = *(a1 + 32);
  v12 = [v6 timerWithIdentifier:v10 queue:v11 handler:v23];
  [*(a1 + 32) setScanRequestTimer:v12];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, scanRequestTimer start", buf, 0xCu);
    }
  }

  v15 = [*(a1 + 32) defaultsManager];
  v16 = [v15 objectForKey:@"RTDefaultsFingerprintManagerScanRequestTimerDuration"];
  if (v16)
  {
    v17 = [*(a1 + 32) defaultsManager];
    v18 = [v17 objectForKey:@"RTDefaultsFingerprintManagerScanRequestTimerDuration"];
    [v18 doubleValue];
    v20 = v19;
  }

  else
  {
    v20 = 300.0;
  }

  v21 = [*(a1 + 32) scanRequestTimer];
  [v21 fireAfterDelay:v20 interval:INFINITY leeway:1.0];

  v22 = [*(a1 + 32) scanRequestTimer];
  [v22 resume];
}

uint64_t __58__RTFingerprintManager__startScanRequestForUnsettledState__block_invoke_65(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, scanRequestTimer expiry", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 32) scanRequestTimer];
  [v4 invalidate];

  [*(a1 + 32) setScanRequestTimer:0];
  return [*(a1 + 32) _startScanRequestForUnsettledState];
}

- (void)onWiFiScanNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTFingerprintManager_onWiFiScanNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = notificationCopy;
  selfCopy = self;
  v11 = a2;
  v7 = notificationCopy;
  dispatch_async(queue, block);
}

void __47__RTFingerprintManager_onWiFiScanNotification___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v2 = [*(a1 + 40) startCollectAccessPoints];

  if (v2)
  {
    v3 = [*(a1 + 40) startCollectAccessPoints];
    [v3 timeIntervalSinceNow];
    if (v4 < -300.0)
    {

LABEL_11:
      v17 = [*(a1 + 40) wifiManager];
      [v17 removeObserver:*(a1 + 40)];

      return;
    }

    v6 = [*(a1 + 40) accessPointsCollectedPerFingerprint];
    v7 = [*(a1 + 40) accessPointsFetchLimit];

    if (v6 >= v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 40) setStartCollectAccessPoints:v5];

    [*(a1 + 40) setAccessPointsCollectedPerFingerprint:0];
  }

  v8 = [*(a1 + 32) scanResults];
  v9 = [v8 count];
  v10 = [*(a1 + 40) accessPointsCollectedPerFingerprint] + v9;
  if (v10 > [*(a1 + 40) accessPointsFetchLimit])
  {
    v11 = [v8 subarrayWithRange:{0, objc_msgSend(*(a1 + 40), "accessPointsFetchLimit") - objc_msgSend(*(a1 + 40), "accessPointsCollectedPerFingerprint")}];

    v12 = [*(a1 + 40) wifiManager];
    [v12 removeObserver:*(a1 + 40)];

    v8 = v11;
  }

  [*(a1 + 40) setAccessPointsCollectedPerFingerprint:{objc_msgSend(v8, "count") + objc_msgSend(*(a1 + 40), "accessPointsCollectedPerFingerprint")}];
  v13 = [*(a1 + 40) fingerprintStore];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__RTFingerprintManager_onWiFiScanNotification___block_invoke_2;
  v18[3] = &unk_2788C8A48;
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v19 = v8;
  v20 = v14;
  v18[4] = v15;
  v16 = v8;
  [v13 appendWiFiAccessPointsToLastFingerprint:v16 handler:v18];
}

void __47__RTFingerprintManager_onWiFiScanNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFingerprint);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = +[RTScenarioTriggerManager settledStateName:](RTScenarioTriggerManager, "settledStateName:", [*(a1 + 32) settledState]);
      v7 = [*(a1 + 40) count];
      v8 = [*(a1 + 32) accessPointsCollectedPerFingerprint];
      v9 = v8 - [*(a1 + 40) count];
      v10 = [*(a1 + 32) accessPointsCollectedPerFingerprint];
      v11 = 138413570;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, settledState, %@, scan result count, %lu, accessPointsCollectedPerFingerprint before, %lu, after, %lu, error, %@", &v11, 0x3Eu);
    }
  }
}

- (void)injectFingerprints:(id)fingerprints handler:(id)handler
{
  fingerprintsCopy = fingerprints;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTFingerprintManager_injectFingerprints_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = fingerprintsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = fingerprintsCopy;
  dispatch_async(queue, block);
}

void __51__RTFingerprintManager_injectFingerprints_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fingerprintStore];
  [v2 storeFingerprints:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)injectWifiAccessPointsToLastFingerprint:(id)fingerprint handler:(id)handler
{
  fingerprintCopy = fingerprint;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTFingerprintManager_injectWifiAccessPointsToLastFingerprint_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = fingerprintCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = fingerprintCopy;
  dispatch_async(queue, block);
}

void __72__RTFingerprintManager_injectWifiAccessPointsToLastFingerprint_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fingerprintStore];
  [v2 appendWiFiAccessPointsToLastFingerprint:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(unint64_t)offset handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__RTFingerprintManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
    v12[3] = &unk_2788C6940;
    v13 = optionsCopy;
    selfCopy = self;
    v15 = handlerCopy;
    offsetCopy = offset;
    dispatch_async(queue, v12);

    v11 = v13;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __73__RTFingerprintManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"options cannot be nil";
    v8 = MEMORY[0x277CBEAC0];
    v9 = v24;
    v10 = &v23;
LABEL_9:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = v6;
    v13 = v7;
    v14 = 7;
LABEL_11:
    v17 = [v12 errorWithDomain:v13 code:v14 userInfo:v11];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v3 = [v2 enumeratedType];
  v4 = [objc_opt_class() vendedClasses];
  v5 = [v4 member:v3];

  if (!v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v22 = @"the type specified by options is not vended by this manager";
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v22;
    v10 = &v21;
    goto LABEL_9;
  }

  if (([*(a1 + 40) available] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"store is not available";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = v15;
    v13 = v16;
    v14 = 5;
    goto LABEL_11;
  }

  v18 = [*(a1 + 40) fingerprintStore];
  [v18 fetchEnumerableObjectsWithOptions:*(a1 + 32) offset:*(a1 + 56) handler:*(a1 + 48)];
}

@end