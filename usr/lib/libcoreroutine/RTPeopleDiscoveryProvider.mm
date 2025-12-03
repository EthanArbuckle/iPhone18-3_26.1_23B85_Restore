@interface RTPeopleDiscoveryProvider
+ (double)_convertObservationIntervalToDouble:(unint64_t)double;
+ (id)computeAdvMetrics:(int64_t)metrics identities:(id)identities numOfResolvedAdvs:(int64_t)advs;
+ (id)getStoreURL;
+ (int)_scanLevelFromServiceLevel:(unint64_t)level observationInterval:(unint64_t)interval;
- (BOOL)isPeopleDensityEventsEnabled;
- (BOOL)isProximityEventsEnabled;
- (RTPeopleDiscoveryProvider)initWithDefaultManager:(id)manager proximityEventStore:(id)store peopleDensityStore:(id)densityStore advertisementManager:(id)advertisementManager dataProtectionManager:(id)protectionManager timerManager:(id)timerManager;
- (id)_fetchAllIdentities;
- (id)_logClientConfigurations;
- (id)loadShortTermRecord;
- (void)_addClientConfiguration:(id)configuration withIdentifier:(id)identifier;
- (void)_addPeopleDensityBundle:(id)bundle handler:(id)handler;
- (void)_addProximityEvent:(id)event handler:(id)handler;
- (void)_aggregateAndApplyConfiguration;
- (void)_armNewInteractionsTimer;
- (void)_clearPeopleDensityBundles:(id)bundles;
- (void)_clearProximityEvents:(id)events;
- (void)_computeDailyContactScores;
- (void)_didCloseProximityEvent:(id)event;
- (void)_fetchAndReconcileAdvertisements;
- (void)_fetchContactScoresFromContactIDs:(id)ds completionHandler:(id)handler;
- (void)_fetchPeopleDensityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)_fetchProximityHistoryFromEventIDs:(id)ds completionHandler:(id)handler;
- (void)_fetchProximityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)_loadAndMergeShortTermRecord;
- (void)_monitorEvents;
- (void)_onDataProtectionNotification:(id)notification;
- (void)_onPeopleDensityStoreNotification:(id)notification;
- (void)_onProximityStoreNotification:(id)notification;
- (void)_purgeEvents;
- (void)_removeClientConfiguration:(id)configuration;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)addClient:(id)client withIdentifier:(id)identifier withConfiguration:(id)configuration;
- (void)addPeopleDensityBundle:(id)bundle handler:(id)handler;
- (void)addProximityEvent:(id)event handler:(id)handler;
- (void)clearPeopleDensityBundles:(id)bundles;
- (void)clearProximityEvents:(id)events;
- (void)computeContactScores:(id)scores;
- (void)didCloseProximityEvent:(id)event;
- (void)fetchContactScoresFromContactIDs:(id)ds completionHandler:(id)handler;
- (void)fetchMostRecentPeopleDensity:(id)density;
- (void)fetchPeopleDensityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)fetchProximityHistoryFromEventIDs:(id)ds completionHandler:(id)handler;
- (void)fetchProximityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)injectAdv:(id)adv handler:(id)handler;
- (void)injectPeopleDensityStats:(unint64_t)stats duration:(double)duration date:(id)date advertisements:(id)advertisements handler:(id)handler;
- (void)onBufferedDevicesReceivedNotification;
- (void)onCoreLocationProviderCameUpNotification;
- (void)onDataProtectionNotification:(id)notification;
- (void)onPeopleDensityStoreNotification:(id)notification;
- (void)onProximityStoreNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)removeClient:(id)client;
- (void)saveShortTermRecord;
@end

@implementation RTPeopleDiscoveryProvider

- (RTPeopleDiscoveryProvider)initWithDefaultManager:(id)manager proximityEventStore:(id)store peopleDensityStore:(id)densityStore advertisementManager:(id)advertisementManager dataProtectionManager:(id)protectionManager timerManager:(id)timerManager
{
  managerCopy = manager;
  storeCopy = store;
  densityStoreCopy = densityStore;
  advertisementManagerCopy = advertisementManager;
  protectionManagerCopy = protectionManager;
  timerManagerCopy = timerManager;
  if (!managerCopy)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v42 = "Invalid parameter not satisfying: defaultsManager";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, v42, buf, 2u);
    goto LABEL_22;
  }

  if (!storeCopy)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v42 = "Invalid parameter not satisfying: proximityEventStore";
    goto LABEL_21;
  }

  if (!densityStoreCopy)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v42 = "Invalid parameter not satisfying: peopleDensityStore";
    goto LABEL_21;
  }

  if (!advertisementManagerCopy)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v42 = "Invalid parameter not satisfying: advertisementManager";
    goto LABEL_21;
  }

  if (!protectionManagerCopy)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v42 = "Invalid parameter not satisfying: dataProtectionManager";
      goto LABEL_21;
    }

LABEL_22:

    selfCopy = 0;
    goto LABEL_23;
  }

  v54.receiver = self;
  v54.super_class = RTPeopleDiscoveryProvider;
  v20 = [(RTNotifier *)&v54 init];
  v21 = v20;
  if (v20)
  {
    [(RTPeopleDiscoveryProvider *)v20 setDefaultsManager:managerCopy];
    [(RTPeopleDiscoveryProvider *)v21 setProximityEventStore:storeCopy];
    [(RTPeopleDiscoveryProvider *)v21 setPeopleDensityStore:densityStoreCopy];
    [(RTPeopleDiscoveryProvider *)v21 setAdvertisementManager:advertisementManagerCopy];
    [(RTPeopleDiscoveryProvider *)v21 setProximityStoreAvailable:0];
    [(RTPeopleDiscoveryProvider *)v21 setPeopleDensityStoreAvailable:0];
    [(RTPeopleDiscoveryProvider *)v21 setContactScoreDataAvailable:0];
    [(RTPeopleDiscoveryProvider *)v21 setHasLoadedPersistedRecords:0];
    v21->_broughtUp = 0;
    [(RTPeopleDiscoveryProvider *)v21 setTimerManager:timerManagerCopy];
    [(RTPeopleDiscoveryProvider *)v21 setDataProtectionManager:protectionManagerCopy];
    v22 = [RTPeopleDiscoveryContactRecord alloc];
    queue = [(RTNotifier *)v21 queue];
    defaultsManager = [(RTPeopleDiscoveryProvider *)v21 defaultsManager];
    v25 = [(RTPeopleDiscoveryContactRecord *)v22 initWithQueue:queue defaultsManager:defaultsManager];
    [(RTPeopleDiscoveryProvider *)v21 setContactRecord:v25];

    contactRecord = [(RTPeopleDiscoveryProvider *)v21 contactRecord];
    [contactRecord addObserver:v21];

    v51 = [RTPeopleDensityRecord alloc];
    queue2 = [(RTNotifier *)v21 queue];
    peopleDensityStore = [(RTPeopleDiscoveryProvider *)v21 peopleDensityStore];
    defaultsManager2 = [(RTPeopleDiscoveryProvider *)v21 defaultsManager];
    v29 = [(RTPeopleDensityRecord *)v51 initWithQueue:queue2 peopleDensityStore:peopleDensityStore defaultsManager:defaultsManager2];
    [(RTPeopleDiscoveryProvider *)v21 setPeopleDensityRecord:v29];

    v30 = [RTPeopleDiscoveryPersistenceStore alloc];
    contactRecord2 = [(RTPeopleDiscoveryProvider *)v21 contactRecord];
    peopleDensityRecord = [(RTPeopleDiscoveryProvider *)v21 peopleDensityRecord];
    v33 = [(RTPeopleDiscoveryPersistenceStore *)v30 initWithContactRecord:contactRecord2 densityRecord:peopleDensityRecord];
    [(RTPeopleDiscoveryProvider *)v21 setShortTermStore:v33];

    defaultsManager3 = [(RTPeopleDiscoveryProvider *)v21 defaultsManager];
    v35 = [defaultsManager3 objectForKey:@"RTDefaultsPeopleDiscoveryProviderExpirationInterval"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v37 = 0.0;
    if (isKindOfClass)
    {
      [v35 doubleValue];
    }

    [(RTPeopleDiscoveryProvider *)v21 setExpirationInterval:v37];
    defaultsManager4 = [(RTPeopleDiscoveryProvider *)v21 defaultsManager];
    v39 = [defaultsManager4 objectForKey:@"RTDefaultsPeopleDiscoveryProviderMinimumIdentities"];

    objc_opt_class();
    v53 = v35;
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v39 integerValue];
    }

    else
    {
      integerValue = 10;
    }

    [(RTPeopleDiscoveryProvider *)v21 setMinimumIdentities:integerValue];
    defaultsManager5 = [(RTPeopleDiscoveryProvider *)v21 defaultsManager];
    v46 = [defaultsManager5 objectForKey:@"RTDefaultsPeopleDiscoveryProviderBackupTimerInterval"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue2 = [v46 integerValue];
    }

    else
    {
      integerValue2 = 1500.0;
    }

    [(RTPeopleDiscoveryProvider *)v21 setBackupTimerInterval:integerValue2];
    v48 = objc_opt_new();
    [(RTPeopleDiscoveryProvider *)v21 setClientConfigurations:v48];

    v49 = objc_opt_new();
    notificationHelper = v21->_notificationHelper;
    v21->_notificationHelper = v49;

    [(RTService *)v21 setup];
  }

  self = v21;
  selfCopy = self;
LABEL_23:

  return selfCopy;
}

- (void)_setup
{
  if (self->_broughtUp)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    LOWORD(location[0]) = 0;
    v3 = "#RTPeopleDiscoveryProvider is already up";
LABEL_12:
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, v3, location, 2u);
LABEL_13:

    return;
  }

  v5 = +[RTPlatform currentPlatform];
  iPhoneDevice = [v5 iPhoneDevice];

  if ((iPhoneDevice & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    LOWORD(location[0]) = 0;
    v3 = "#RTPeopleDiscoveryProvider disabled on platforms other than iPhone";
    goto LABEL_12;
  }

  proximityEventStore = [(RTPeopleDiscoveryProvider *)self proximityEventStore];
  v8 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  [proximityEventStore addObserver:self selector:sel_onProximityStoreNotification_ name:v8];

  peopleDensityStore = [(RTPeopleDiscoveryProvider *)self peopleDensityStore];
  v10 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  [peopleDensityStore addObserver:self selector:sel_onPeopleDensityStoreNotification_ name:v10];

  dataProtectionManager = [(RTPeopleDiscoveryProvider *)self dataProtectionManager];
  v12 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
  [dataProtectionManager addObserver:self selector:sel_onDataProtectionNotification_ name:v12];

  objc_initWeak(location, self);
  notificationHelper = [(RTPeopleDiscoveryProvider *)self notificationHelper];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __35__RTPeopleDiscoveryProvider__setup__block_invoke;
  v30[3] = &unk_2788C5908;
  objc_copyWeak(&v31, location);
  [notificationHelper addObserverForNotificationName:@"com.apple.locationd.gathering.bufferedDevicesReceived" handler:v30];

  notificationHelper2 = [(RTPeopleDiscoveryProvider *)self notificationHelper];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __35__RTPeopleDiscoveryProvider__setup__block_invoke_3;
  v28[3] = &unk_2788C5908;
  objc_copyWeak(&v29, location);
  [notificationHelper2 addObserverForNotificationName:@"com.apple.locationd.gathering.came_up" handler:v28];

  if (![(RTPeopleDiscoveryProvider *)self hasLoadedPersistedRecords])
  {
    [(RTPeopleDiscoveryProvider *)self _loadAndMergeShortTermRecord];
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RTPeopleDiscoveryProvider__setup__block_invoke_5;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);

  self->_broughtUp = 1;
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = [v16 initWithCString:RTAnalyticsEventPeopleDiscoveryEvents encoding:1];
  aBlock = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __35__RTPeopleDiscoveryProvider__setup__block_invoke_95;
  v24 = &unk_2788C8D18;
  v26 = &__block_literal_global_93;
  v18 = v17;
  v25 = v18;
  v19 = _Block_copy(&aBlock);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v18, aBlock, v22, v23, v24];
  AnalyticsSendEventLazy();

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

void __35__RTPeopleDiscoveryProvider__setup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__RTPeopleDiscoveryProvider__setup__block_invoke_2;
    block[3] = &unk_2788C4EA0;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __35__RTPeopleDiscoveryProvider__setup__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__RTPeopleDiscoveryProvider__setup__block_invoke_4;
    block[3] = &unk_2788C4EA0;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __35__RTPeopleDiscoveryProvider__setup__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _fetchAndReconcileAdvertisements];
  [*(a1 + 32) _monitorEvents];
  v2 = *(a1 + 32);

  return [v2 _armNewInteractionsTimer];
}

id __35__RTPeopleDiscoveryProvider__setup__block_invoke_95(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

- (void)_shutdownWithHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_broughtUp)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "shutdown people discovery", v17, 2u);
      }
    }

    notificationHelper = [(RTPeopleDiscoveryProvider *)self notificationHelper];
    [notificationHelper removeObserverForNotificationName:@"com.apple.locationd.gathering.bufferedDevicesReceived"];

    notificationHelper2 = [(RTPeopleDiscoveryProvider *)self notificationHelper];
    [notificationHelper2 removeObserverForNotificationName:@"com.apple.locationd.gathering.came_up"];

    dataProtectionManager = [(RTPeopleDiscoveryProvider *)self dataProtectionManager];
    [dataProtectionManager removeObserver:self];

    backupTimer = [(RTPeopleDiscoveryProvider *)self backupTimer];

    if (backupTimer)
    {
      backupTimer2 = [(RTPeopleDiscoveryProvider *)self backupTimer];
      [backupTimer2 invalidate];

      [(RTPeopleDiscoveryProvider *)self setBackupTimer:0];
    }

    scoringTimer = [(RTPeopleDiscoveryProvider *)self scoringTimer];

    if (scoringTimer)
    {
      scoringTimer2 = [(RTPeopleDiscoveryProvider *)self scoringTimer];
      [scoringTimer2 invalidate];

      [(RTPeopleDiscoveryProvider *)self setScoringTimer:0];
    }

    self->_broughtUp = 0;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"#RTPeopleDiscoveryProvider is already down";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v16 = [v13 errorWithDomain:v14 code:2 userInfo:v15];

    (handlerCopy)[2](handlerCopy, v16);
  }
}

- (BOOL)isProximityEventsEnabled
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(NSMutableDictionary *)self->_clientConfigurations count];
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "isProximityEventsEnabled: _clientConfigurations %d", v6, 8u);
    }
  }

  return [(NSMutableDictionary *)self->_clientConfigurations count]!= 0;
}

- (BOOL)isPeopleDensityEventsEnabled
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(NSMutableDictionary *)self->_clientConfigurations count];
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "isPeopleDensityEventsEnabled: _clientConfigurations %d", v6, 8u);
    }
  }

  return [(NSMutableDictionary *)self->_clientConfigurations count]!= 0;
}

- (void)_armNewInteractionsTimer
{
  v23 = *MEMORY[0x277D85DE8];
  backupTimer = self->_backupTimer;
  if (backupTimer)
  {
    [(RTTimer *)backupTimer invalidate];
    v4 = self->_backupTimer;
    self->_backupTimer = 0;
  }

  objc_initWeak(&location, self);
  timerManager = self->_timerManager;
  queue = [(RTNotifier *)self queue];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __53__RTPeopleDiscoveryProvider__armNewInteractionsTimer__block_invoke;
  v18 = &unk_2788C5908;
  objc_copyWeak(&v19, &location);
  v7 = [(RTTimerManager *)timerManager timerWithIdentifier:@"RTPeopleDiscoveryProviderBackupTimer" queue:queue handler:&v15];
  v8 = self->_backupTimer;
  self->_backupTimer = v7;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(RTPeopleDiscoveryProvider *)self backupTimerInterval:v15];
      *buf = 134217984;
      v22 = v14;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "Backup timer schedule after, %lu seconds", buf, 0xCu);
    }
  }

  v10 = self->_backupTimer;
  [(RTPeopleDiscoveryProvider *)self backupTimerInterval:v15];
  v12 = v11;
  [(RTPeopleDiscoveryProvider *)self backupTimerInterval];
  [(RTTimer *)v10 fireAfterDelay:v12 interval:v13];
  [(RTTimer *)self->_backupTimer resume];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __53__RTPeopleDiscoveryProvider__armNewInteractionsTimer__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "Backup timer fires", v4, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchAndReconcileAdvertisements];
  [WeakRetained _monitorEvents];
}

- (void)_computeDailyContactScores
{
  contactRecord = [(RTPeopleDiscoveryProvider *)self contactRecord];
  [contactRecord updateDailyContactScores];

  [(RTPeopleDiscoveryProvider *)self saveShortTermRecord];
}

- (void)_monitorEvents
{
  contactRecord = [(RTPeopleDiscoveryProvider *)self contactRecord];
  v4 = [MEMORY[0x277CBEAA8] now];
  [contactRecord checkAndCloseProximityEventsIfNeeded:v4];

  if (-[RTPeopleDiscoveryProvider hasLoadedPersistedRecords](self, "hasLoadedPersistedRecords") || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(objc_opt_class(), "getStoreURL"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "path"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "fileExistsAtPath:", v7), v7, v6, v5, (v8 & 1) == 0))
  {

    [(RTPeopleDiscoveryProvider *)self saveShortTermRecord];
  }
}

- (void)_purgeEvents
{
  v16 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(RTPeopleDiscoveryProvider *)self expirationInterval];
  v5 = [date dateByAddingTimeInterval:-v4];

  v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [(RTPeopleDiscoveryProvider *)self expirationInterval];
    v8 = v7;
    getFormattedDateString = [v5 getFormattedDateString];
    v12 = 134218242;
    v13 = v8;
    v14 = 2112;
    v15 = getFormattedDateString;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "_purgeEvents purging with expirationInterval: %f before date: %@", &v12, 0x16u);
  }

  proximityEventStore = [(RTPeopleDiscoveryProvider *)self proximityEventStore];
  [proximityEventStore purgeProximityEventsPredating:v5 handler:&__block_literal_global_108];

  peopleDensityStore = [(RTPeopleDiscoveryProvider *)self peopleDensityStore];
  [peopleDensityStore purgePeopleDensityPredating:v5 handler:&__block_literal_global_111_0];
}

void __41__RTPeopleDiscoveryProvider__purgeEvents__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 description];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fail to purge proximity events, error %@", &v5, 0xCu);
    }
  }
}

void __41__RTPeopleDiscoveryProvider__purgeEvents__block_invoke_109(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 description];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fail to purge density bundles, error %@", &v5, 0xCu);
    }
  }
}

- (void)_loadAndMergeShortTermRecord
{
  loadShortTermRecord = [(RTPeopleDiscoveryProvider *)self loadShortTermRecord];
  if (loadShortTermRecord)
  {
    v8 = loadShortTermRecord;
    contactRecord = [(RTPeopleDiscoveryProvider *)self contactRecord];
    contactRecord2 = [v8 contactRecord];
    [contactRecord mergeWithAnotherContactRecord:contactRecord2];

    peopleDensityRecord = [(RTPeopleDiscoveryProvider *)self peopleDensityRecord];
    densityRecord = [v8 densityRecord];
    [peopleDensityRecord mergeWithAnotherDensityRecord:densityRecord];

    [(RTPeopleDiscoveryProvider *)self setHasLoadedPersistedRecords:1];
    loadShortTermRecord = v8;
  }
}

- (void)onBufferedDevicesReceivedNotification
{
  v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "onBufferedDevicesReceivedNotification", v8, 2u);
  }

  [(RTPeopleDiscoveryProvider *)self _fetchAndReconcileAdvertisements];
  [(RTPeopleDiscoveryProvider *)self _monitorEvents];
  backupTimer = self->_backupTimer;
  [(RTPeopleDiscoveryProvider *)self backupTimerInterval];
  v6 = v5;
  [(RTPeopleDiscoveryProvider *)self backupTimerInterval];
  [(RTTimer *)backupTimer fireAfterDelay:v6 interval:v7];
}

- (void)onCoreLocationProviderCameUpNotification
{
  v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "onCoreLocationProviderCameUpNotification", buf, 2u);
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTPeopleDiscoveryProvider_onCoreLocationProviderCameUpNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __69__RTPeopleDiscoveryProvider_onCoreLocationProviderCameUpNotification__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAggregatedConfiguration:0];
  v2 = *(a1 + 32);

  return [v2 _aggregateAndApplyConfiguration];
}

- (void)onProximityStoreNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTPeopleDiscoveryProvider_onProximityStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onProximityStoreNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    -[RTPeopleDiscoveryProvider setProximityStoreAvailable:](self, "setProximityStoreAvailable:", [notificationCopy availability] == 2);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      proximityStoreAvailable = [(RTPeopleDiscoveryProvider *)self proximityStoreAvailable];
      v10 = @"NO";
      if (proximityStoreAvailable)
      {
        v10 = @"YES";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Proximity Store availability change to , %@", &v11, 0xCu);
    }
  }
}

- (void)onPeopleDensityStoreNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTPeopleDiscoveryProvider_onPeopleDensityStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onPeopleDensityStoreNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    -[RTPeopleDiscoveryProvider setPeopleDensityStoreAvailable:](self, "setPeopleDensityStoreAvailable:", [notificationCopy availability] == 2);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      peopleDensityStoreAvailable = [(RTPeopleDiscoveryProvider *)self peopleDensityStoreAvailable];
      v10 = @"NO";
      if (peopleDensityStoreAvailable)
      {
        v10 = @"YES";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "People Density Store availability change to , %@", &v11, 0xCu);
    }
  }
}

- (void)onDataProtectionNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTPeopleDiscoveryProvider_onDataProtectionNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onDataProtectionNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    availability = [notificationCopy availability];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [RTDataProtectionManager encryptedDataAvailabilityToString:availability];
        v10 = 136315394;
        v11 = "[RTPeopleDiscoveryProvider _onDataProtectionNotification:]";
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, Received keybag notification, %@", &v10, 0x16u);
      }
    }

    if (availability == 2)
    {
      if (![(RTPeopleDiscoveryProvider *)self hasLoadedPersistedRecords])
      {
        [(RTPeopleDiscoveryProvider *)self _loadAndMergeShortTermRecord];
      }

      [(RTPeopleDiscoveryProvider *)self setContactScoreDataAvailable:1];
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name = [notificationCopy name];
      v10 = 136315394;
      v11 = "[RTPeopleDiscoveryProvider _onDataProtectionNotification:]";
      v12 = 2112;
      v13 = name;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%s, unknown notification name, %@", &v10, 0x16u);
    }
  }
}

- (void)_fetchAndReconcileAdvertisements
{
  v116[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v101 = 0;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "#RTPeopleDiscoveryProvider fetching advertisements", v101, 2u);
    }
  }

  *v101 = 0;
  v102 = v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__111;
  v105 = __Block_byref_object_dispose__111;
  v106 = objc_opt_new();
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__111;
  v99 = __Block_byref_object_dispose__111;
  v100 = 0;
  v3 = dispatch_semaphore_create(0);
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  advertisementManager = [(RTPeopleDiscoveryProvider *)self advertisementManager];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __61__RTPeopleDiscoveryProvider__fetchAndReconcileAdvertisements__block_invoke;
  v81[3] = &unk_2788CE528;
  v83 = v101;
  v84 = &v91;
  v85 = &v87;
  v86 = &v95;
  v5 = v3;
  v82 = v5;
  [advertisementManager fetchAdvertisementsDetailedWithHandler:v81];

  dsema = v5;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(dsema, v7))
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSinceDate:v6];
    v10 = v9;
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_423];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v14 = [callStackSymbols filteredArrayUsingPredicate:v12];
    firstObject = [v14 firstObject];

    [v11 submitToCoreAnalytics:firstObject type:1 duration:v10];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v116[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v116 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v18];

    if (v19)
    {
      v20 = v19;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;
  v61 = v21;
  if (v96[5])
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v96[5] description];
      *buf = 138412290;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fail to fetch advertisements, %@", buf, 0xCu);
    }
  }

  else if (v21)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = [v61 description];
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fail to fetch advertisements, %@", buf, 0xCu);
    }
  }

  else
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    v65 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = *(v102 + 5);
    v25 = [obj countByEnumeratingWithState:&v77 objects:v115 count:16];
    if (v25)
    {
      v26 = *v78;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v78 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v77 + 1) + 8 * i);
          v29 = MEMORY[0x277CBEAA8];
          [v28 unixTime];
          v30 = [v29 dateWithTimeIntervalSince1970:?];
          v31 = [RTPeopleDiscoveryAdvertisement alloc];
          address = [v28 address];
          rssi = [v28 rssi];
          contactId = [v28 contactId];
          v35 = [(RTPeopleDiscoveryAdvertisement *)v31 initWithAddress:address rssi:rssi scanDate:v30 contactID:contactId];

          [v65 addObject:v35];
          if ([v22 compare:v30]== 1)
          {
            v36 = v30;

            v22 = v36;
          }
        }

        v25 = [obj countByEnumeratingWithState:&v77 objects:v115 count:16];
      }

      while (v25);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [*(v102 + 5) count];
        v39 = v92[3];
        v40 = *(v88 + 3);
        getFormattedDateString = [v22 getFormattedDateString];
        *buf = 134218754;
        *&buf[4] = v38;
        v109 = 2048;
        v110 = v39;
        v111 = 2048;
        v112 = v40;
        v113 = 2112;
        v114 = getFormattedDateString;
        _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider receive advertisements, incomingAdvs count %lu, countSinceLastFetch %lu, scanDuration %f, earliestAdvertisementDate, %@", buf, 0x2Au);
      }
    }

    peopleDensityRecord = [(RTPeopleDiscoveryProvider *)self peopleDensityRecord];
    [peopleDensityRecord updateRecordOnFetchComplete:v92[3] scanDuration:v22 referenceDate:v65 advertisements:v88[3]];

    _fetchAllIdentities = [(RTPeopleDiscoveryProvider *)self _fetchAllIdentities];
    v44 = [_fetchAllIdentities count];
    if (v44 >= [(RTPeopleDiscoveryProvider *)self minimumIdentities])
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v46 = v65;
      v45 = 0;
      v47 = [v46 countByEnumeratingWithState:&v73 objects:v107 count:16];
      if (v47)
      {
        v48 = *v74;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v74 != v48)
            {
              objc_enumerationMutation(v46);
            }

            v50 = *(*(&v73 + 1) + 8 * j);
            contactID = [v50 contactID];

            if (contactID)
            {
              contactRecord = [(RTPeopleDiscoveryProvider *)self contactRecord];
              [contactRecord updateContactRecordOnAdvertisementReceived:v50];

              ++v45;
            }
          }

          v47 = [v46 countByEnumeratingWithState:&v73 objects:v107 count:16];
        }

        while (v47);
      }
    }

    else
    {
      v45 = 0;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__RTPeopleDiscoveryProvider__fetchAndReconcileAdvertisements__block_invoke_123;
    aBlock[3] = &unk_2788CE550;
    aBlock[4] = self;
    v71 = v101;
    v53 = _fetchAllIdentities;
    v70 = v53;
    v72 = v45;
    v54 = _Block_copy(aBlock);
    v55 = objc_alloc(MEMORY[0x277CCACA8]);
    v56 = [v55 initWithCString:RTAnalyticsEventPeopleDiscoveryAdvertisement encoding:1];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __61__RTPeopleDiscoveryProvider__fetchAndReconcileAdvertisements__block_invoke_2;
    v66[3] = &unk_2788C8D18;
    v57 = v54;
    v68 = v57;
    v58 = v56;
    v67 = v58;
    v59 = _Block_copy(v66);
    v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v58];
    AnalyticsSendEventLazy();
  }

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(v101, 8);
}

void __61__RTPeopleDiscoveryProvider__fetchAndReconcileAdvertisements__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v16 = v9;

  *(*(*(a1 + 48) + 8) + 24) = a3;
  *(*(*(a1 + 56) + 8) + 24) = a5;
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
  v15 = v10;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __61__RTPeopleDiscoveryProvider__fetchAndReconcileAdvertisements__block_invoke_123(void *a1)
{
  v2 = objc_opt_class();
  v3 = [*(*(a1[6] + 8) + 40) count];
  v4 = a1[5];
  v5 = a1[7];

  return [v2 computeAdvMetrics:v3 identities:v4 numOfResolvedAdvs:v5];
}

id __61__RTPeopleDiscoveryProvider__fetchAndReconcileAdvertisements__block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

- (id)_fetchAllIdentities
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D44150]);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__111;
  v44 = __Block_byref_object_dispose__111;
  v45 = objc_opt_new();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__111;
  v38 = __Block_byref_object_dispose__111;
  v39 = 0;
  v3 = dispatch_semaphore_create(0);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __48__RTPeopleDiscoveryProvider__fetchAllIdentities__block_invoke;
  v30[3] = &unk_2788C4490;
  v32 = &v40;
  v33 = &v34;
  v4 = v3;
  v31 = v4;
  [v2 getIdentitiesWithFlags:168 completion:v30];
  v5 = v4;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v5, v7))
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSinceDate:v6];
    v10 = v9;
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_423];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v14 = [callStackSymbols filteredArrayUsingPredicate:v12];
    firstObject = [v14 firstObject];

    [v11 submitToCoreAnalytics:firstObject type:1 duration:v10];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v47[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v47 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v18];

    if (v19)
    {
      v20 = v19;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;
  v22 = v21;
  if (v35[5])
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = [v35[5] description];
      *buf = 138412290;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Fail to get identities, error, %@\n", buf, 0xCu);
    }

LABEL_14:

    v24 = 0;
    goto LABEL_15;
  }

  if (v21)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v29 = [v22 description];
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Fail to get identities, error, %@\n", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v41[5] count];
      *buf = 134217984;
      *&buf[4] = v27;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "Successfully get identities, count, %lu", buf, 0xCu);
    }
  }

  [v2 invalidate];
  v24 = v41[5];
LABEL_15:

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v24;
}

void __48__RTPeopleDiscoveryProvider__fetchAllIdentities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)didCloseProximityEvent:(id)event
{
  eventCopy = event;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTPeopleDiscoveryProvider_didCloseProximityEvent___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

- (void)_didCloseProximityEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (eventCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = [eventCopy description];
        *buf = 138412290;
        v14 = v9;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "storing proximity event to database: %@", buf, 0xCu);
      }
    }

    proximityEventStore = [(RTPeopleDiscoveryProvider *)self proximityEventStore];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__RTPeopleDiscoveryProvider__didCloseProximityEvent___block_invoke;
    v10[3] = &unk_2788C4D10;
    v12 = a2;
    v11 = eventCopy;
    [proximityEventStore storeProximityEvent:v11 handler:v10];

    v8 = v11;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: event", buf, 2u);
    }
  }
}

void __53__RTPeopleDiscoveryProvider__didCloseProximityEvent___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, event, %@, error, %@", &v7, 0x20u);
    }
  }
}

- (void)saveShortTermRecord
{
  v18 = *MEMORY[0x277D85DE8];
  getStoreURL = [objc_opt_class() getStoreURL];
  v4 = objc_autoreleasePoolPush();
  shortTermStore = self->_shortTermStore;
  v13 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:shortTermStore requiringSecureCoding:1 error:&v13];
  v7 = v13;
  if (!v7)
  {
    v12 = 0;
    [v6 writeToURL:getStoreURL options:805306369 error:&v12];
    v8 = v12;
    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      path = [v8 description];
      *buf = 138412290;
      v15 = path;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider error writing short-term store, error, %@", buf, 0xCu);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = 0;
        goto LABEL_7;
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      path = [getStoreURL path];
      v11 = [v6 length];
      *buf = 138740227;
      v15 = path;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider successfully save short-term store to location, %{sensitive}@, bytes, %lu", buf, 0x16u);
    }

    goto LABEL_6;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v7 description];
    *buf = 138412290;
    v15 = v9;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider error archiving short-term store, error, %@", buf, 0xCu);
LABEL_6:
  }

LABEL_7:

  objc_autoreleasePoolPop(v4);
}

- (id)loadShortTermRecord
{
  v23 = *MEMORY[0x277D85DE8];
  getStoreURL = [objc_opt_class() getStoreURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [getStoreURL path];
  v5 = [defaultManager fileExistsAtPath:path];

  if (v5)
  {
    v18 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:getStoreURL options:2 error:&v18];
    v7 = v18;
    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        absoluteString = [getStoreURL absoluteString];
        v14 = [v7 description];
        *buf = 138412546;
        v20 = absoluteString;
        v21 = 2112;
        v22 = v14;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fails to load short-term store, url, %@, error, %@", buf, 0x16u);
      }

      v9 = 0;
    }

    else
    {
      v17 = 0;
      v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v17];
      v8 = v17;
      if (v8)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          absoluteString2 = [getStoreURL absoluteString];
          v16 = [v8 description];
          *buf = 138412546;
          v20 = absoluteString2;
          v21 = 2112;
          v22 = v16;
          _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fails to unarchive short-term store, url, %@, error, %@", buf, 0x16u);
        }

        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider short term record file does not exist", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)getStoreURL
{
  v2 = MEMORY[0x277CBEBC0];
  routineCacheDirectoryPath = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v4 = [v2 fileURLWithPath:routineCacheDirectoryPath isDirectory:1];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"peopleDiscovery_records.bin" relativeToURL:v4];

  return v5;
}

- (void)addClient:(id)client withIdentifier:(id)identifier withConfiguration:(id)configuration
{
  clientCopy = client;
  identifierCopy = identifier;
  configurationCopy = configuration;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__RTPeopleDiscoveryProvider_addClient_withIdentifier_withConfiguration___block_invoke;
  v15[3] = &unk_2788CBEA8;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = identifierCopy;
  v18 = clientCopy;
  v12 = clientCopy;
  v13 = identifierCopy;
  v14 = configurationCopy;
  dispatch_async(queue, v15);
}

void __72__RTPeopleDiscoveryProvider_addClient_withIdentifier_withConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _addClientConfiguration:*(a1 + 40) withIdentifier:*(a1 + 48)];
  [*(a1 + 32) _aggregateAndApplyConfiguration];
  v2 = [*(a1 + 40) densityCallbackConfiguration];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 56);
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider sending initial data to client %@", buf, 0xCu);
      }
    }

    [objc_opt_class() _convertObservationIntervalToDouble:{objc_msgSend(*(a1 + 40), "observationInterval")}];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v5];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CBEAA8] now];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__RTPeopleDiscoveryProvider_addClient_withIdentifier_withConfiguration___block_invoke_130;
    v9[3] = &unk_2788C99C0;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 56);
    [v7 _fetchPeopleDensityHistoryFromStartDate:v6 endDate:v8 completionHandler:v9];
  }
}

void __72__RTPeopleDiscoveryProvider_addClient_withIdentifier_withConfiguration___block_invoke_130(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fail to retrieve initial data upon registration, error %@", &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = [[RTPeopleDensityUpdateNotification alloc] initWithPeopleDensityBundles:v5];
    [*(a1 + 32) postNotification:v8 toObserver:*(a1 + 40)];
  }
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RTPeopleDiscoveryProvider_removeClient___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

uint64_t __42__RTPeopleDiscoveryProvider_removeClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeClientConfiguration:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _aggregateAndApplyConfiguration];
}

- (void)_addClientConfiguration:(id)configuration withIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = configurationCopy;
      v11 = 2112;
      v12 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider _addClientConfiguration configuration %@ identifier %@", &v9, 0x16u);
    }
  }

  if (configurationCopy && identifierCopy)
  {
    [(NSMutableDictionary *)self->_clientConfigurations setObject:configurationCopy forKey:identifierCopy];
  }
}

- (void)_removeClientConfiguration:(id)configuration
{
  v8 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = configurationCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider _removeClientConfiguration identifier %@", &v6, 0xCu);
    }
  }

  if (configurationCopy)
  {
    [(NSMutableDictionary *)self->_clientConfigurations removeObjectForKey:configurationCopy];
  }
}

+ (double)_convertObservationIntervalToDouble:(unint64_t)double
{
  result = 300.0;
  if (double != 2)
  {
    result = 0.0;
  }

  if (double == 1)
  {
    return 900.0;
  }

  return result;
}

+ (int)_scanLevelFromServiceLevel:(unint64_t)level observationInterval:(unint64_t)interval
{
  if (level != 2)
  {
    return -1;
  }

  if (interval != 2)
  {
    if (interval == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v6 = 2;
          goto LABEL_15;
        }

        v10 = 0;
        v5 = "#RTPeopleDiscoveryProvider CL Scan Level: Low";
        v6 = 2;
        v7 = &v10;
        goto LABEL_12;
      }

      return 2;
    }

    return -1;
  }

  v6 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      return v6;
    }

    v9 = 0;
    v5 = "#RTPeopleDiscoveryProvider CL Scan Level: Default";
    v7 = &v9;
LABEL_12:
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, v5, v7, 2u);
    goto LABEL_15;
  }

  return v6;
}

- (void)_aggregateAndApplyConfiguration
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_clientConfigurations count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        _logClientConfigurations = [(RTPeopleDiscoveryProvider *)self _logClientConfigurations];
        *buf = 138412290;
        v21 = _logClientConfigurations;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    v5 = objc_alloc(MEMORY[0x277D011D0]);
    allValues = [(NSMutableDictionary *)self->_clientConfigurations allValues];
    v7 = [v5 initWithAggregation:allValues];

    [MEMORY[0x277D011D0] secondsForStorageDuration:{objc_msgSend(v7, "storageDuration")}];
    [(RTPeopleDiscoveryProvider *)self setExpirationInterval:?];
    shouldAdvertise = [v7 shouldAdvertise];
    v9 = [objc_opt_class() _scanLevelFromServiceLevel:objc_msgSend(v7 observationInterval:{"serviceLevel"), objc_msgSend(v7, "observationInterval")}];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D011D0]) initWithAdvertisingCapability:0 serviceLevel:1 observationInterval:1 storageDuration:1 densityCallbackConfiguration:0];
    [(RTPeopleDiscoveryProvider *)self setExpirationInterval:0.0];
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__RTPeopleDiscoveryProvider__aggregateAndApplyConfiguration__block_invoke;
    block[3] = &unk_2788C4EA0;
    block[4] = self;
    dispatch_async(queue, block);

    shouldAdvertise = 0;
    v9 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v7 description];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "New aggregated Service Configuration: %@", buf, 0xCu);
    }
  }

  if (([(RTPeopleDiscoveryServiceConfiguration *)self->_aggregatedConfiguration isEqual:v7]& 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "Aggregated Service Configuration did not change, skip sending", buf, 2u);
      }
    }
  }

  else
  {
    queue2 = [(RTNotifier *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__RTPeopleDiscoveryProvider__aggregateAndApplyConfiguration__block_invoke_141;
    v15[3] = &unk_2788C5020;
    v15[4] = self;
    v16 = v7;
    v17 = shouldAdvertise;
    v18 = v9;
    dispatch_async(queue2, v15);
  }
}

void __60__RTPeopleDiscoveryProvider__aggregateAndApplyConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if (v2)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@", error %@", v2];
      }

      else
      {
        v4 = @"OK";
      }

      *buf = 138412290;
      v6 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "done shutdown %@", buf, 0xCu);
      if (v2)
      {
      }
    }
  }
}

void __60__RTPeopleDiscoveryProvider__aggregateAndApplyConfiguration__block_invoke_141(uint64_t a1)
{
  [*(a1 + 32) _setup];
  [*(a1 + 32) setAggregatedConfiguration:*(a1 + 40)];
  v2 = [*(a1 + 32) advertisementManager];
  [v2 configure:*(a1 + 48) withCompletionHandler:&__block_literal_global_144_0];
}

void __60__RTPeopleDiscoveryProvider__aggregateAndApplyConfiguration__block_invoke_2_142(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if (v2)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@", error %@", v2];
      }

      else
      {
        v4 = @"OK";
      }

      *buf = 138412290;
      v6 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "CLLocationManagerGathering conf %@", buf, 0xCu);
      if (v2)
      {
      }
    }
  }
}

- (void)fetchProximityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__RTPeopleDiscoveryProvider_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = dateCopy;
  v17 = endDateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

uint64_t __90__RTPeopleDiscoveryProvider_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchProximityHistoryFromStartDate:*(a1 + 40) endDate:*(a1 + 48) completionHandler:*(a1 + 56)];
  v2 = *(a1 + 32);

  return [v2 _monitorEvents];
}

- (void)_fetchProximityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  v73[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if ([dateCopy compare:endDateCopy] == 1)
  {
    v11 = MEMORY[0x277CCA9B8];
    v71 = *MEMORY[0x277CCA450];
    v12 = MEMORY[0x277CCACA8];
    getFormattedDateString = [dateCopy getFormattedDateString];
    getFormattedDateString2 = [endDateCopy getFormattedDateString];
    v15 = [v12 stringWithFormat:@"startDate, %@, endDate, %@", getFormattedDateString, getFormattedDateString2];
    v72 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v17 = [v11 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v16];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v17);
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      getFormattedDateString3 = [dateCopy getFormattedDateString];
      getFormattedDateString4 = [endDateCopy getFormattedDateString];
      *buf = 138412546;
      *&buf[4] = getFormattedDateString3;
      *&buf[12] = 2112;
      *&buf[14] = getFormattedDateString4;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider fetching proximity history by date, start %@, end %@", buf, 0x16u);
    }

    v17 = objc_opt_new();
    v21 = objc_opt_new();
    if ([(RTPeopleDiscoveryProvider *)self proximityStoreAvailable])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v68 = __Block_byref_object_copy__111;
      v69 = __Block_byref_object_dispose__111;
      v70 = objc_opt_new();
      v58 = 0;
      v59 = &v58;
      v60 = 0x3032000000;
      v61 = __Block_byref_object_copy__111;
      v62 = __Block_byref_object_dispose__111;
      v63 = 0;
      v22 = dispatch_semaphore_create(0);
      proximityEventStore = [(RTPeopleDiscoveryProvider *)self proximityEventStore];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __91__RTPeopleDiscoveryProvider__fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke;
      v54[3] = &unk_2788C4490;
      v56 = buf;
      v57 = &v58;
      v24 = v22;
      v55 = v24;
      [proximityEventStore fetchProximityEventsFromDate:dateCopy endDate:endDateCopy handler:v54];

      v25 = v24;
      v53 = [MEMORY[0x277CBEAA8] now];
      v26 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v25, v26))
      {
        v52 = [MEMORY[0x277CBEAA8] now];
        [v52 timeIntervalSinceDate:v53];
        v28 = v27;
        v50 = objc_opt_new();
        v51 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_423];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v30 = [callStackSymbols filteredArrayUsingPredicate:v51];
        firstObject = [v30 firstObject];

        [v50 submitToCoreAnalytics:firstObject type:1 duration:v28];
        v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          *v66 = 0;
          _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v66, 2u);
        }

        v33 = MEMORY[0x277CCA9B8];
        v73[0] = *MEMORY[0x277CCA450];
        *v66 = @"semaphore wait timeout";
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v73 count:1];
        v35 = [v33 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v34];

        if (v35)
        {
          v36 = v35;
        }
      }

      else
      {
        v35 = 0;
      }

      v40 = v35;
      if (v59[5])
      {
        [v21 addObject:?];
      }

      if (v40)
      {
        [v21 addObject:v40];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v41 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [*(*&buf[8] + 40) count];
          *v66 = 134217984;
          *&v66[4] = v42;
          _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider finish loading persisted records, count %lu", v66, 0xCu);
        }
      }

      [v17 addObjectsFromArray:*(*&buf[8] + 40)];

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v37 = MEMORY[0x277CCA9B8];
      v64 = *MEMORY[0x277CCA450];
      v65 = @"historical data temporarily unavailable";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v39 = [v37 errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v38];

      [v21 addObject:v39];
    }

    contactRecord = [(RTPeopleDiscoveryProvider *)self contactRecord];
    v44 = [MEMORY[0x277CBEAA8] now];
    v45 = [contactRecord generateRealtimeProximityEventFromDate:dateCopy endDate:endDateCopy referenceDate:v44];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v49 = [v45 count];
        *buf = 134217984;
        *&buf[4] = v49;
        _os_log_debug_impl(&dword_2304B3000, v46, OS_LOG_TYPE_DEBUG, "#RTPeopleDiscoveryProvider read %ld events from real-time records", buf, 0xCu);
      }
    }

    [v17 addObjectsFromArray:v45];
    if ([v21 count])
    {
      v47 = _RTSafeArray();
      v48 = _RTMultiErrorCreate();
      (handlerCopy)[2](handlerCopy, v17, v48);
    }

    else
    {
      (handlerCopy)[2](handlerCopy, v17, 0);
    }
  }
}

void __91__RTPeopleDiscoveryProvider__fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchProximityHistoryFromEventIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTPeopleDiscoveryProvider_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  dispatch_async(queue, block);
}

uint64_t __81__RTPeopleDiscoveryProvider_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchProximityHistoryFromEventIDs:*(a1 + 40) completionHandler:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 _monitorEvents];
}

- (void)_fetchProximityHistoryFromEventIDs:(id)ds completionHandler:(id)handler
{
  v59[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider fetching proximity history by eventIDs", buf, 2u);
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  *buf = 0;
  v46 = buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__111;
  v49 = __Block_byref_object_dispose__111;
  v50 = objc_opt_new();
  if ([(RTPeopleDiscoveryProvider *)self proximityStoreAvailable])
  {
    *&v54 = 0;
    *(&v54 + 1) = &v54;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__111;
    v57 = __Block_byref_object_dispose__111;
    v58 = 0;
    v9 = dispatch_semaphore_create(0);
    proximityEventStore = [(RTPeopleDiscoveryProvider *)self proximityEventStore];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __82__RTPeopleDiscoveryProvider__fetchProximityHistoryFromEventIDs_completionHandler___block_invoke;
    v41[3] = &unk_2788C4490;
    v43 = buf;
    v44 = &v54;
    v11 = v9;
    v42 = v11;
    [proximityEventStore fetchProximityEventsFromEventIDs:dsCopy handler:v41];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v38 = [MEMORY[0x277CBEAA8] now];
      [v38 timeIntervalSinceDate:v13];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_423];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
      firstObject = [v20 firstObject];

      [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *v53 = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v53, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v59[0] = *MEMORY[0x277CCA450];
      *v53 = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v59 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;
      }
    }

    else
    {
      v25 = 0;
    }

    v29 = v25;
    if (*(*(&v54 + 1) + 40))
    {
      [v8 addObject:?];
    }

    if (v29)
    {
      [v8 addObject:v29];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v7 count];
        *v53 = 134217984;
        *&v53[4] = v31;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider fetch by eventIDs from persisted records complete, count %lu", v53, 0xCu);
      }
    }

    [v7 addObjectsFromArray:*(v46 + 5)];

    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v27 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA450];
    v52 = @"historical data temporarily unavailable";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v28 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v12];

    [v8 addObject:v28];
  }

  v32 = [*(v46 + 5) count];
  if (v32 != [dsCopy count])
  {
    contactRecord = [(RTPeopleDiscoveryProvider *)self contactRecord];
    v34 = [contactRecord queryRealTimeEventsByEventIDs:dsCopy];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v35 = [v34 count];
        LODWORD(v54) = 134217984;
        *(&v54 + 4) = v35;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider query %ld events from real-time records", &v54, 0xCu);
      }
    }

    [v7 addObjectsFromArray:v34];
  }

  v36 = [v8 count];
  if (v36)
  {
    v12 = _RTSafeArray();
    v37 = _RTMultiErrorCreate();
  }

  else
  {
    v37 = 0;
  }

  handlerCopy[2](handlerCopy, v7, v37);
  if (v36)
  {
  }

  _Block_object_dispose(buf, 8);
}

void __82__RTPeopleDiscoveryProvider__fetchProximityHistoryFromEventIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchMostRecentPeopleDensity:(id)density
{
  densityCopy = density;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTPeopleDiscoveryProvider_fetchMostRecentPeopleDensity___block_invoke;
  v7[3] = &unk_2788C4D38;
  v7[4] = self;
  v8 = densityCopy;
  v6 = densityCopy;
  dispatch_async(queue, v7);
}

void __58__RTPeopleDiscoveryProvider_fetchMostRecentPeopleDensity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) peopleDensityRecord];
  v2 = [v3 fetchCurrentObservationBundle];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)fetchPeopleDensityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__RTPeopleDiscoveryProvider_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = dateCopy;
  v17 = endDateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

- (void)_fetchPeopleDensityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  v67[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if ([dateCopy compare:endDateCopy] == 1)
  {
    v11 = MEMORY[0x277CCA9B8];
    v65 = *MEMORY[0x277CCA450];
    v12 = MEMORY[0x277CCACA8];
    getFormattedDateString = [dateCopy getFormattedDateString];
    getFormattedDateString2 = [endDateCopy getFormattedDateString];
    v15 = [v12 stringWithFormat:@"startDate, %@, endDate, %@", getFormattedDateString, getFormattedDateString2];
    v66 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v17 = [v11 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v16];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v17);
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      getFormattedDateString3 = [dateCopy getFormattedDateString];
      getFormattedDateString4 = [endDateCopy getFormattedDateString];
      *buf = 138412546;
      *&buf[4] = getFormattedDateString3;
      *&buf[12] = 2112;
      *&buf[14] = getFormattedDateString4;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider fetching people density history by date, start %@, end %@", buf, 0x16u);
    }

    v17 = objc_opt_new();
    if ([(RTPeopleDiscoveryProvider *)self peopleDensityStoreAvailable])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v62 = __Block_byref_object_copy__111;
      v63 = __Block_byref_object_dispose__111;
      v64 = objc_opt_new();
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__111;
      v56 = __Block_byref_object_dispose__111;
      v57 = 0;
      v21 = dispatch_semaphore_create(0);
      peopleDensityStore = [(RTPeopleDiscoveryProvider *)self peopleDensityStore];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __95__RTPeopleDiscoveryProvider__fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke;
      v48[3] = &unk_2788C4490;
      v50 = buf;
      v51 = &v52;
      v23 = v21;
      v49 = v23;
      [peopleDensityStore fetchPeopleDensityFromDate:dateCopy endDate:endDateCopy handler:v48];

      v24 = v23;
      v47 = [MEMORY[0x277CBEAA8] now];
      v25 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v24, v25))
      {
        v46 = [MEMORY[0x277CBEAA8] now];
        [v46 timeIntervalSinceDate:v47];
        v27 = v26;
        v45 = objc_opt_new();
        v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_423];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v30 = [callStackSymbols filteredArrayUsingPredicate:v28];
        firstObject = [v30 firstObject];

        [v45 submitToCoreAnalytics:firstObject type:1 duration:v27];
        v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          *v60 = 0;
          _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v60, 2u);
        }

        v33 = MEMORY[0x277CCA9B8];
        v67[0] = *MEMORY[0x277CCA450];
        *v60 = @"semaphore wait timeout";
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v67 count:1];
        v35 = [v33 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v34];

        if (v35)
        {
          v36 = v35;
        }
      }

      else
      {
        v35 = 0;
      }

      v40 = v35;
      if (v53[5])
      {
        (handlerCopy[2])(handlerCopy, MEMORY[0x277CBEBF8]);
      }

      if (v40)
      {
        handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v40);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v41 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [*(*&buf[8] + 40) count];
          *v60 = 134217984;
          *&v60[4] = v42;
          _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider finish loading people density records, count %lu", v60, 0xCu);
        }
      }

      [v17 addObjectsFromArray:*(*&buf[8] + 40)];
      peopleDensityRecord = [(RTPeopleDiscoveryProvider *)self peopleDensityRecord];
      v44 = [peopleDensityRecord fetchOngoingPeopleDensityBundle:dateCopy endDate:endDateCopy];

      if (v44)
      {
        [v17 addObject:v44];
      }

      (handlerCopy)[2](handlerCopy, v17, 0);

      _Block_object_dispose(&v52, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v37 = MEMORY[0x277CCA9B8];
      v58 = *MEMORY[0x277CCA450];
      v59 = @"historical data temporarily unavailable";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v39 = [v37 errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v38];

      handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v39);
    }
  }
}

void __95__RTPeopleDiscoveryProvider__fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchContactScoresFromContactIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTPeopleDiscoveryProvider_fetchContactScoresFromContactIDs_completionHandler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchContactScoresFromContactIDs:(id)ds completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider fetching contact scores history by contactIDs", buf, 2u);
  }

  if ([(RTPeopleDiscoveryProvider *)self contactScoreDataAvailable])
  {
    if (dsCopy && [dsCopy count])
    {
      contactRecord = [(RTPeopleDiscoveryProvider *)self contactRecord];
      v10 = [contactRecord queryContactScoresWithContactIDs:dsCopy];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v10 count];
          *buf = 134217984;
          v22 = v12;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "#RTPeopleDiscoveryProvider returns %ld contact scores", buf, 0xCu);
        }
      }

      handlerCopy[2](handlerCopy, v10, 0);
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v23 = *MEMORY[0x277CCA450];
      v24[0] = @"contactIDs requires at least one element to fetch";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v18 = [v16 errorWithDomain:v17 code:7 userInfo:v10];
      (handlerCopy)[2](handlerCopy, MEMORY[0x277CBEBF8], v18);
    }
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"Data temporarily unavailable";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = [v13 errorWithDomain:v14 code:5 userInfo:v15];

    (handlerCopy)[2](handlerCopy, MEMORY[0x277CBEBF8], v10);
  }
}

- (id)_logClientConfigurations
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"#RTPeopleDiscoveryProvider Associated Clients: {\n"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_clientConfigurations;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_clientConfigurations objectForKeyedSubscript:v9];
        [v3 appendFormat:@" <%@>: %@\n", v9, v10, v12];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"}"];

  return v3;
}

- (void)addProximityEvent:(id)event handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  handlerCopy = handler;
  v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [eventCopy description];
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider adding proximity event, %@", buf, 0xCu);
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTPeopleDiscoveryProvider_addProximityEvent_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v14 = eventCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = eventCopy;
  dispatch_async(queue, block);
}

- (void)_addProximityEvent:(id)event handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  if (eventCopy)
  {
    proximityEventStore = [(RTPeopleDiscoveryProvider *)self proximityEventStore];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__RTPeopleDiscoveryProvider__addProximityEvent_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v14 = a2;
    v12 = eventCopy;
    v13 = handlerCopy;
    [proximityEventStore storeProximityEvent:v12 handler:v11];

    v10 = v12;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: event", buf, 2u);
    }
  }
}

void __56__RTPeopleDiscoveryProvider__addProximityEvent_handler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, event, %@, error, %@", &v8, 0x20u);
    }

    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

- (void)injectAdv:(id)adv handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  advCopy = adv;
  handlerCopy = handler;
  v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [advCopy description];
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider inject advertisement, %@", buf, 0xCu);
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTPeopleDiscoveryProvider_injectAdv_handler___block_invoke;
  block[3] = &unk_2788C67D8;
  v14 = advCopy;
  v15 = handlerCopy;
  block[4] = self;
  v11 = advCopy;
  v12 = handlerCopy;
  dispatch_async(queue, block);
}

void __47__RTPeopleDiscoveryProvider_injectAdv_handler___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _fetchAllIdentities];
  v3 = [v2 count];
  if (v3 >= [*(a1 + 32) minimumIdentities])
  {
    v9 = [*(a1 + 40) contactID];

    if (v9)
    {
      v10 = [*(a1 + 32) contactRecord];
      [v10 updateContactRecordOnAdvertisementReceived:*(a1 + 40)];

      [*(a1 + 32) saveShortTermRecord];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D01448];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Not enough identities available on device";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
    (*(v4 + 16))(v4, v8);
  }
}

- (void)clearProximityEvents:(id)events
{
  eventsCopy = events;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RTPeopleDiscoveryProvider_clearProximityEvents___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  dispatch_async(queue, v7);
}

- (void)_clearProximityEvents:(id)events
{
  v53 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider remove all proximity events", &buf, 2u);
  }

  v6 = objc_opt_new();
  contactRecord = [(RTPeopleDiscoveryProvider *)self contactRecord];
  [contactRecord cleanUpOngoingContactRecordsAndScores];

  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v39 = +[RTPeopleDiscoveryProvider getStoreURL];
  path = [v39 path];
  v10 = [v8 fileExistsAtPath:path];

  if (v10)
  {
    getStoreURL = [objc_opt_class() getStoreURL];
    v43 = 0;
    [v8 removeItemAtURL:getStoreURL error:&v43];
    v12 = v43;

    if (v12)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fail to remove cache file, error, %@", &buf, 0xCu);
      }

      [v6 addObject:v12];
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "#RTPeopleDiscoveryProvider Unable to clear proximity events as it has been recently cleared", &buf, 2u);
    }
  }

LABEL_12:
  if ([(RTPeopleDiscoveryProvider *)self proximityStoreAvailable])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__111;
    v49 = __Block_byref_object_dispose__111;
    v50 = 0;
    v14 = dispatch_semaphore_create(0);
    proximityEventStore = [(RTPeopleDiscoveryProvider *)self proximityEventStore];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __51__RTPeopleDiscoveryProvider__clearProximityEvents___block_invoke;
    v40[3] = &unk_2788C4618;
    p_buf = &buf;
    v16 = v14;
    v41 = v16;
    [proximityEventStore clearWithHandler:v40];

    v17 = v16;
    v18 = [MEMORY[0x277CBEAA8] now];
    v19 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v17, v19))
    {
      v38 = [MEMORY[0x277CBEAA8] now];
      [v38 timeIntervalSinceDate:v18];
      v21 = v20;
      v22 = objc_opt_new();
      v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_423];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v25 = [callStackSymbols filteredArrayUsingPredicate:v23];
      firstObject = [v25 firstObject];

      [v22 submitToCoreAnalytics:firstObject type:1 duration:v21];
      v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *v52 = 0;
        _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v52, 2u);
      }

      v28 = MEMORY[0x277CCA9B8];
      v51 = *MEMORY[0x277CCA450];
      *v52 = @"semaphore wait timeout";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

      if (v30)
      {
        v31 = v30;
      }
    }

    else
    {
      v30 = 0;
    }

    v35 = v30;
    if (*(*(&buf + 1) + 40))
    {
      [v6 addObject:?];
    }

    if (v35)
    {
      [v6 addObject:v35];
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v32 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45 = @"historical data temporarily unavailable";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v34 = [v32 errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v33];

    [v6 addObject:v34];
  }

  if ([v6 count])
  {
    v36 = _RTSafeArray();
    v37 = _RTMultiErrorCreate();
    eventsCopy[2](eventsCopy, v37);
  }

  else
  {
    eventsCopy[2](eventsCopy, 0);
  }
}

void __51__RTPeopleDiscoveryProvider__clearProximityEvents___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)addPeopleDensityBundle:(id)bundle handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  handlerCopy = handler;
  v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [bundleCopy description];
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider adding people density bundle, %@", buf, 0xCu);
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTPeopleDiscoveryProvider_addPeopleDensityBundle_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v14 = bundleCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = bundleCopy;
  dispatch_async(queue, block);
}

- (void)_addPeopleDensityBundle:(id)bundle handler:(id)handler
{
  bundleCopy = bundle;
  handlerCopy = handler;
  if (bundleCopy)
  {
    peopleDensityStore = [(RTPeopleDiscoveryProvider *)self peopleDensityStore];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__RTPeopleDiscoveryProvider__addPeopleDensityBundle_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v14 = a2;
    v12 = bundleCopy;
    v13 = handlerCopy;
    [peopleDensityStore storePeopleDensity:v12 handler:v11];

    v10 = v12;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bundle", buf, 2u);
    }
  }
}

void __61__RTPeopleDiscoveryProvider__addPeopleDensityBundle_handler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, event, %@, error, %@", &v8, 0x20u);
    }

    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

- (void)injectPeopleDensityStats:(unint64_t)stats duration:(double)duration date:(id)date advertisements:(id)advertisements handler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  advertisementsCopy = advertisements;
  handlerCopy = handler;
  v15 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    getFormattedDateString = [dateCopy getFormattedDateString];
    *buf = 134218498;
    statsCopy = stats;
    v29 = 2048;
    durationCopy = duration;
    v31 = 2112;
    v32 = getFormattedDateString;
    _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider inject people density stats, numOfAdvs %lu, duration %f, date %@", buf, 0x20u);
  }

  queue = [(RTNotifier *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__RTPeopleDiscoveryProvider_injectPeopleDensityStats_duration_date_advertisements_handler___block_invoke;
  v21[3] = &unk_2788C54B8;
  v24 = handlerCopy;
  statsCopy2 = stats;
  durationCopy2 = duration;
  v21[4] = self;
  v22 = dateCopy;
  v23 = advertisementsCopy;
  v18 = handlerCopy;
  v19 = advertisementsCopy;
  v20 = dateCopy;
  dispatch_async(queue, v21);
}

uint64_t __91__RTPeopleDiscoveryProvider_injectPeopleDensityStats_duration_date_advertisements_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) peopleDensityRecord];
  [v2 updateRecordOnFetchComplete:*(a1 + 64) scanDuration:*(a1 + 40) referenceDate:*(a1 + 48) advertisements:*(a1 + 72)];

  [*(a1 + 32) saveShortTermRecord];
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)clearPeopleDensityBundles:(id)bundles
{
  bundlesCopy = bundles;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTPeopleDiscoveryProvider_clearPeopleDensityBundles___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = bundlesCopy;
  v6 = bundlesCopy;
  dispatch_async(queue, v7);
}

- (void)_clearPeopleDensityBundles:(id)bundles
{
  v53 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryProvider remove all people density bundles", &buf, 2u);
  }

  v6 = objc_opt_new();
  peopleDensityRecord = [(RTPeopleDiscoveryProvider *)self peopleDensityRecord];
  [peopleDensityRecord cleanUpOngoingPeopleDensityBundle];

  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v39 = +[RTPeopleDiscoveryProvider getStoreURL];
  path = [v39 path];
  v10 = [v8 fileExistsAtPath:path];

  if (v10)
  {
    getStoreURL = [objc_opt_class() getStoreURL];
    v43 = 0;
    [v8 removeItemAtURL:getStoreURL error:&v43];
    v12 = v43;

    if (v12)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#RTPeopleDiscoveryProvider fail to remove cache file, error, %@", &buf, 0xCu);
      }

      [v6 addObject:v12];
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "#RTPeopleDiscoveryProvider Unable to clear people density bundles as it has been recently cleared", &buf, 2u);
    }
  }

LABEL_12:
  if ([(RTPeopleDiscoveryProvider *)self peopleDensityStoreAvailable])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__111;
    v49 = __Block_byref_object_dispose__111;
    v50 = 0;
    v14 = dispatch_semaphore_create(0);
    peopleDensityStore = [(RTPeopleDiscoveryProvider *)self peopleDensityStore];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __56__RTPeopleDiscoveryProvider__clearPeopleDensityBundles___block_invoke;
    v40[3] = &unk_2788C4618;
    p_buf = &buf;
    v16 = v14;
    v41 = v16;
    [peopleDensityStore clearWithHandler:v40];

    v17 = v16;
    v18 = [MEMORY[0x277CBEAA8] now];
    v19 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v17, v19))
    {
      v38 = [MEMORY[0x277CBEAA8] now];
      [v38 timeIntervalSinceDate:v18];
      v21 = v20;
      v22 = objc_opt_new();
      v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_423];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v25 = [callStackSymbols filteredArrayUsingPredicate:v23];
      firstObject = [v25 firstObject];

      [v22 submitToCoreAnalytics:firstObject type:1 duration:v21];
      v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *v52 = 0;
        _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v52, 2u);
      }

      v28 = MEMORY[0x277CCA9B8];
      v51 = *MEMORY[0x277CCA450];
      *v52 = @"semaphore wait timeout";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

      if (v30)
      {
        v31 = v30;
      }
    }

    else
    {
      v30 = 0;
    }

    v35 = v30;
    if (*(*(&buf + 1) + 40))
    {
      [v6 addObject:?];
    }

    if (v35)
    {
      [v6 addObject:v35];
    }

    bundlesCopy[2](bundlesCopy, 0);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v32 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45 = @"historical data temporarily unavailable";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v34 = [v32 errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v33];

    [v6 addObject:v34];
  }

  if ([v6 count])
  {
    v36 = _RTSafeArray();
    v37 = _RTMultiErrorCreate();
    (bundlesCopy)[2](bundlesCopy, v37);
  }

  else
  {
    bundlesCopy[2](bundlesCopy, 0);
  }
}

void __56__RTPeopleDiscoveryProvider__clearPeopleDensityBundles___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)computeContactScores:(id)scores
{
  v11[1] = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "per-contact scores feature flag is not enabled", v9, 2u);
  }

  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D01448];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"feature disabled";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 errorWithDomain:v6 code:13 userInfo:v7];

  scoresCopy[2](scoresCopy, v8);
}

+ (id)computeAdvMetrics:(int64_t)metrics identities:(id)identities numOfResolvedAdvs:(int64_t)advs
{
  v32 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = identitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v8);
        }

        type = [*(*(&v27 + 1) + 8 * i) type];
        switch(type)
        {
          case 8:
            ++v12;
            break;
          case 6:
            ++v11;
            break;
          case 4:
            ++v14;
            break;
          default:
            ++v13;
            break;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:metrics];
  [dictionary setObject:v18 forKeyedSubscript:@"numOfAdvs"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  [dictionary setObject:v19 forKeyedSubscript:@"numOfIdentities"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:advs];
  [dictionary setObject:v20 forKeyedSubscript:@"numOfResolvedAdvs"];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  [dictionary setObject:v21 forKeyedSubscript:@"numOfFamilyDevices"];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [dictionary setObject:v22 forKeyedSubscript:@"numOfFriendDevices"];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  [dictionary setObject:v23 forKeyedSubscript:@"numOfPairedDevices"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  [dictionary setObject:v24 forKeyedSubscript:@"numOfUnknownDevices"];

  return dictionary;
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "RTPurgable performPurgeOfType called", buf, 2u);
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__RTPeopleDiscoveryProvider_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C6300;
  v12 = completionCopy;
  typeCopy = type;
  block[4] = self;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

uint64_t __73__RTPeopleDiscoveryProvider_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    [*(a1 + 32) _purgeEvents];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end