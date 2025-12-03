@interface SMReceiverService
+ (void)_submitSentinelZoneMaintenanceMetricForSuccess:(BOOL)success error:(id)error;
- (SMReceiverService)initWithDefaultsManager:(id)manager platform:(id)platform messagingService:(id)service safetyCacheStore:(id)store xpcActivityManager:(id)activityManager;
- (id)createReceiverCacheManagerForSessionID:(id)d initiatorHandle:(id)handle;
- (id)getReceiverCacheManagerForSessionID:(id)d;
- (id)invocationError;
- (void)_fetchAllReceiverSessionStatusWithCompletion:(id)completion;
- (void)_fetchReceiverSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)_fetchReceiverSessionStatusForSessionID:(id)d completion:(id)completion;
- (void)_initializeSentinelZoneWithCompletion:(id)completion;
- (void)_onCKAccountChangedNotification;
- (void)_onMessageReceived:(id)received;
- (void)_onSafetyCacheStoreNotification:(id)notification;
- (void)_receivedLowPowerModeWarningStateUpdateMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)_registerForCKAccountChangedNotification;
- (void)_registerInitializeSentinelZoneActivity;
- (void)_setup;
- (void)_setupCacheManagers:(id)managers;
- (void)_setupOnceDiskAvailable;
- (void)_userRequestedCacheDownloadForSessionID:(id)d completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)detailsViewOpenedForSessionID:(id)d;
- (void)fetchAllReceiverSessionStatusWithCompletion:(id)completion;
- (void)fetchReceiverSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)fetchReceiverSessionStatusForSessionID:(id)d completion:(id)completion;
- (void)notifyObserversOfReceiverSafetyCacheChangeWithSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache;
- (void)notifyObserversOfReceiverSessionStatusChangeWithSessionID:(id)d sessionStatus:(id)status;
- (void)onMessageReceived:(id)received;
- (void)onSafetyCacheStoreNotification:(id)notification;
- (void)receivedCacheUpdatedMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedEstimatedEndTimeUpdateMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedKeyReleaseInfoMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedKeyReleaseMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionEndMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionStartInfoMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionStartMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)removeObserver:(id)observer;
- (void)removeReceiverCacheManagerForSessionID:(id)d;
- (void)userRequestedCacheDownloadForSessionID:(id)d completion:(id)completion;
@end

@implementation SMReceiverService

- (SMReceiverService)initWithDefaultsManager:(id)manager platform:(id)platform messagingService:(id)service safetyCacheStore:(id)store xpcActivityManager:(id)activityManager
{
  managerCopy = manager;
  platformCopy = platform;
  serviceCopy = service;
  storeCopy = store;
  activityManagerCopy = activityManager;
  if (!managerCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v29 = "Invalid parameter not satisfying: defaultsManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, v29, buf, 2u);
    goto LABEL_17;
  }

  if (!platformCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v29 = "Invalid parameter not satisfying: platform";
    goto LABEL_16;
  }

  if (!serviceCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v29 = "Invalid parameter not satisfying: messagingService";
    goto LABEL_16;
  }

  if (!storeCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v29 = "Invalid parameter not satisfying: safetyCacheStore";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v32.receiver = self;
  v32.super_class = SMReceiverService;
  v17 = [(RTNotifier *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_defaultsManager, manager);
    objc_storeStrong(&v18->_platform, platform);
    objc_storeStrong(&v18->_messagingService, service);
    objc_storeStrong(&v18->_safetyCacheStore, store);
    objc_storeStrong(&v18->_xpcActivityManager, activityManager);
    v19 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v18->_observers;
    v18->_observers = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cacheManagerArray = v18->_cacheManagerArray;
    v18->_cacheManagerArray = v21;

    v18->_attemptedToLoadFromDisk = 0;
    v23 = [RTInvocationDispatcher alloc];
    queue = [(RTNotifier *)v18 queue];
    v25 = [(RTInvocationDispatcher *)v23 initWithQueue:queue];
    dispatcher = v18->_dispatcher;
    v18->_dispatcher = v25;

    v18->_prevCKAccountStatus = 3;
    [(RTService *)v18 setup];
  }

  self = v18;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (void)dealloc
{
  messagingService = [(SMReceiverService *)self messagingService];
  [messagingService removeObserver:self];

  v4.receiver = self;
  v4.super_class = SMReceiverService;
  [(SMReceiverService *)&v4 dealloc];
}

- (void)_setup
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = _os_feature_enabled_impl();
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,%@,%@", &v17, 0x16u);
    }

    safetyCacheStore = [(SMReceiverService *)self safetyCacheStore];
    v11 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
    [safetyCacheStore addObserver:self selector:sel_onSafetyCacheStoreNotification_ name:v11];

    messagingService = [(SMReceiverService *)self messagingService];
    v13 = +[(RTNotification *)SMMessageReceivedNotification];
    [messagingService addObserver:self selector:sel_onMessageReceived_ name:v13];

    [(SMReceiverService *)self _registerForCKAccountChangedNotification];
    [(SMReceiverService *)self _registerInitializeSentinelZoneActivity];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,feature not enabled", &v17, 0x16u);
    }
  }
}

- (void)_setupCacheManagers:(id)managers
{
  managersCopy = managers;
  objc_initWeak(&location, self);
  safetyCacheStore = [(SMReceiverService *)self safetyCacheStore];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SMReceiverService__setupCacheManagers___block_invoke;
  v8[3] = &unk_2788C4CE8;
  objc_copyWeak(v10, &location);
  v8[4] = self;
  v10[1] = a2;
  v7 = managersCopy;
  v9 = v7;
  [safetyCacheStore fetchReceiverContactsWithHandler:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __41__SMReceiverService__setupCacheManagers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SMReceiverService__setupCacheManagers___block_invoke_21;
    block[3] = &unk_2788C4CC0;
    v10 = v6;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v29 = v10;
    v30 = v11;
    v34 = *(a1 + 56);
    v33 = v12;
    v31 = v5;
    v32 = v8;
    dispatch_async(v9, block);

    v13 = v29;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        v38 = v16;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,%@,%@,receiver service released before receiver contacts fetch returned", buf, 0x16u);
      }
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromSelector(*(a1 + 56));
    v13 = [v18 stringWithFormat:@"%@, %@, was not able to acquire strongSelf", v20, v21];

    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v13;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D01448];
      v35 = *MEMORY[0x277CCA450];
      v36 = v13;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v27 = [v24 errorWithDomain:v25 code:5 userInfo:v26];
      (*(v23 + 16))(v23, v27);
    }
  }
}

uint64_t __41__SMReceiverService__setupCacheManagers___block_invoke_21(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(*(a1 + 72));
      v25 = *(a1 + 32);
      *buf = 138412802;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,failed to fetch receiver contacts with error %@", buf, 0x20u);
    }

    result = *(a1 + 64);
    if (result)
    {
      v4 = *(result + 16);
      return v4();
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *(a1 + 48);
    v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v11 = [v9 sessionUUID];
              v12 = objc_opt_class();
              v13 = NSStringFromClass(v12);
              v14 = NSStringFromSelector(*(a1 + 72));
              *buf = 138412802;
              v33 = v11;
              v34 = 2112;
              v35 = v13;
              v36 = 2112;
              v37 = v14;
              _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,loaded receiver contact from disk", buf, 0x20u);
            }
          }

          v15 = [SMReceiverCacheManager alloc];
          v16 = [*(a1 + 56) safetyCacheStore];
          v17 = [*(a1 + 56) defaultsManager];
          v18 = [*(a1 + 56) queue];
          v19 = [*(a1 + 56) messagingService];
          v20 = [(SMReceiverCacheManager *)v15 initWithReceiverContact:v9 safetyCacheStore:v16 defaultsManager:v17 queue:v18 messagingService:v19];

          [(SMReceiverCacheManager *)v20 setDelegate:*(a1 + 56)];
          v21 = [*(a1 + 56) cacheManagerArray];
          [v21 addObject:v20];

          [(SMReceiverCacheManager *)v20 onSessionStatusLoadedFromDisk];
        }

        v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }

    result = *(a1 + 64);
    if (result)
    {
      v4 = *(result + 16);
      return v4();
    }
  }

  return result;
}

- (void)_setupOnceDiskAvailable
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(SMReceiverService *)self attemptedToLoadFromDisk])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v8 = [(NSMutableArray *)self->_cacheManagerArray count];
    *buf = 138412802;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,%@,%@,has already run. cacheManagerArray Count, %lu", buf, 0x20u);
LABEL_12:

LABEL_13:
    return;
  }

  if ([(SMReceiverService *)self safetyCacheStoreAvailability]!= 2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v13 = objc_opt_class();
    v6 = NSStringFromClass(v13);
    v7 = NSStringFromSelector(a2);
    v14 = [RTStore availabilityToString:[(SMReceiverService *)self safetyCacheStoreAvailability]];
    *buf = 138412802;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,%@,%@,Deferring - Store is not available. Safety Cache Store, %@", buf, 0x20u);

    goto LABEL_12;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,%@,%@,Setting up cache managers", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__SMReceiverService__setupOnceDiskAvailable__block_invoke;
  v15[3] = &unk_2788C4D10;
  v15[4] = self;
  v15[5] = a2;
  [(SMReceiverService *)self _setupCacheManagers:v15];
}

void __44__SMReceiverService__setupOnceDiskAvailable__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,%@,%@,attempted to load cacheManagers from disk, %@", &v11, 0x20u);
  }

  [*(a1 + 32) setAttemptedToLoadFromDisk:1];
  v8 = [*(a1 + 32) dispatcher];
  v9 = [v8 invocationsPending];

  if (v9)
  {
    v10 = [*(a1 + 32) dispatcher];
    [v10 dispatchPendingInvocations];
  }
}

- (void)onSafetyCacheStoreNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SMReceiverService_onSafetyCacheStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onSafetyCacheStoreNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    availability = [notificationCopy availability];
    if ([(SMReceiverService *)self safetyCacheStoreAvailability]!= availability)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v14 = [RTStore availabilityToString:self->_safetyCacheStoreAvailability];
        v15 = [RTStore availabilityToString:availability];
        v16 = 138413058;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,%@,%@,safetyCacheStoreAvailability availability change from,%@,to,%@", &v16, 0x2Au);
      }

      [(SMReceiverService *)self setSafetyCacheStoreAvailability:availability];
      if ([(SMReceiverService *)self safetyCacheStoreAvailability]== 2)
      {
        [(SMReceiverService *)self _setupOnceDiskAvailable];
      }
    }
  }
}

- (id)invocationError
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@, %@, failed invoking pending invocation - store did not become available", v5, v6];

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v14 = *MEMORY[0x277CCA450];
  v15 = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];

  return v12;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SMReceiverService_addObserver___block_invoke;
    v7[3] = &unk_2788C4A70;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: observer", buf, 2u);
    }
  }
}

void __33__SMReceiverService_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SMReceiverService_removeObserver___block_invoke;
    v7[3] = &unk_2788C4A70;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: observer", buf, 2u);
    }
  }
}

void __36__SMReceiverService_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)notifyObserversOfReceiverSessionStatusChangeWithSessionID:(id)d sessionStatus:(id)status
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  statusCopy = status;
  v9 = statusCopy;
  if (!dCopy)
  {
    observers = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(observers, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: sessionID";
LABEL_22:
    _os_log_error_impl(&dword_2304B3000, observers, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_20;
  }

  if (!statusCopy)
  {
    observers = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(observers, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: sessionStatus";
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v27 = dCopy;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,sending session status update to observers", buf, 0x20u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  observers = [(SMReceiverService *)self observers];
  v15 = [observers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(observers);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v19 onReceiverSessionStatusChangeForSessionID:dCopy sessionStatus:v9];
        }
      }

      v16 = [observers countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

LABEL_20:
}

- (void)notifyObserversOfReceiverSafetyCacheChangeWithSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  cacheCopy = cache;
  watchCacheCopy = watchCache;
  if (dCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        *buf = 138412802;
        v28 = dCopy;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,sending safety cache update to observers", buf, 0x20u);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    observers = [(SMReceiverService *)self observers];
    v17 = [observers countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(observers);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v21 onReceiverSafetyCacheChangeForSessionID:dCopy phoneCache:cacheCopy watchCache:watchCacheCopy];
          }
        }

        v18 = [observers countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }
  }

  else
  {
    observers = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(observers, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, observers, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }
  }
}

- (void)fetchAllReceiverSessionStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SMReceiverService_fetchAllReceiverSessionStatusWithCompletion___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchAllReceiverSessionStatusWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(SMReceiverService *)self attemptedToLoadFromDisk])
    {
      *v18 = 0;
      v19 = v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__4;
      v22 = __Block_byref_object_dispose__4;
      array = [MEMORY[0x277CBEB18] array];
      cacheManagerArray = [(SMReceiverService *)self cacheManagerArray];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__SMReceiverService__fetchAllReceiverSessionStatusWithCompletion___block_invoke_35;
      v17[3] = &unk_2788C4D60;
      v17[4] = v18;
      [cacheManagerArray enumerateObjectsUsingBlock:v17];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = NSStringFromSelector(a2);
          v11 = [*(v19 + 5) count];
          *buf = 138412802;
          v29 = v9;
          v30 = 2112;
          v31 = v10;
          v32 = 1024;
          v33 = v11;
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,%@,%@,returning array of %d session status", buf, 0x1Cu);
        }
      }

      (*(completionCopy + 2))(completionCopy, *(v19 + 5), 0);
      _Block_object_dispose(v18, 8);
    }

    else
    {
      dispatcher = [(SMReceiverService *)self dispatcher];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __66__SMReceiverService__fetchAllReceiverSessionStatusWithCompletion___block_invoke;
      v26[3] = &unk_2788C4938;
      v26[4] = self;
      v27 = completionCopy;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __66__SMReceiverService__fetchAllReceiverSessionStatusWithCompletion___block_invoke_2;
      v24[3] = &unk_2788C4D38;
      v24[4] = self;
      v25 = v27;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      [dispatcher enqueueBlock:v26 failureBlock:v24 description:{@"%@-%@", v15, v16}];
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", v18, 2u);
    }
  }
}

void __66__SMReceiverService__fetchAllReceiverSessionStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, 0, v2);
}

void __66__SMReceiverService__fetchAllReceiverSessionStatusWithCompletion___block_invoke_35(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 sessionStatus];
  [v2 addObject:v3];
}

- (void)fetchReceiverSessionStatusForSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SMReceiverService_fetchReceiverSessionStatusForSessionID_completion___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_fetchReceiverSessionStatusForSessionID:(id)d completion:(id)completion
{
  v43[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v9 = completionCopy;
  if (!dCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Invalid parameter not satisfying: sessionID";
LABEL_14:
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!completionCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Invalid parameter not satisfying: completion";
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if ([(SMReceiverService *)self attemptedToLoadFromDisk])
  {
    v10 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:dCopy];
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v11)
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v15 = NSStringFromSelector(a2);
          sessionStatus = [v10 sessionStatus];
          *buf = 138413058;
          v35 = dCopy;
          v36 = 2112;
          v37 = v14;
          v38 = 2112;
          v39 = v15;
          v40 = 2112;
          v41 = sessionStatus;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,returning session status %@", buf, 0x2Au);
        }
      }

      sessionStatus2 = [v10 sessionStatus];
      (v9)[2](v9, sessionStatus2, 0);
    }

    else
    {
      if (v11)
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = NSStringFromSelector(a2);
          *buf = 138412802;
          v35 = dCopy;
          v36 = 2112;
          v37 = v25;
          v38 = 2112;
          v39 = v26;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no cache manager found", buf, 0x20u);
        }
      }

      v42 = *MEMORY[0x277CCA450];
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"no cache manager found for sessionID %@", dCopy];
      v43[0] = dCopy;
      sessionStatus2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];

      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:sessionStatus2];
      (v9)[2](v9, 0, v28);
    }

    goto LABEL_22;
  }

  dispatcher = [(SMReceiverService *)self dispatcher];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __72__SMReceiverService__fetchReceiverSessionStatusForSessionID_completion___block_invoke;
  v31[3] = &unk_2788C4500;
  v31[4] = self;
  v32 = dCopy;
  v33 = v9;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__SMReceiverService__fetchReceiverSessionStatusForSessionID_completion___block_invoke_2;
  v29[3] = &unk_2788C4D38;
  v29[4] = self;
  v30 = v33;
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v31 failureBlock:v29 description:{@"%@-%@", v21, v22}];

LABEL_23:
}

void __72__SMReceiverService__fetchReceiverSessionStatusForSessionID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)userRequestedCacheDownloadForSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SMReceiverService_userRequestedCacheDownloadForSessionID_completion___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_userRequestedCacheDownloadForSessionID:(id)d completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v9 = completionCopy;
  if (!dCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Invalid parameter not satisfying: sessionID";
LABEL_12:
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!completionCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Invalid parameter not satisfying: completion";
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if ([(SMReceiverService *)self attemptedToLoadFromDisk])
  {
    v10 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:dCopy];
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        *buf = 138412802;
        v35 = dCopy;
        v36 = 2112;
        v37 = v14;
        v38 = 2112;
        v39 = v15;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,notifying cache manager of user intent to download cache", buf, 0x20u);
      }

      [v10 onUserCacheDownloadRequest];
      v9[2](v9, 0);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        *buf = 138412802;
        v35 = dCopy;
        v36 = 2112;
        v37 = v25;
        v38 = 2112;
        v39 = v26;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no cache manager found", buf, 0x20u);
      }

      v32 = *MEMORY[0x277CCA450];
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"no cache manager found for sessionID %@", dCopy];
      v33 = dCopy;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v22];
      (v9)[2](v9, v23);
    }

    goto LABEL_17;
  }

  dispatcher = [(SMReceiverService *)self dispatcher];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__SMReceiverService__userRequestedCacheDownloadForSessionID_completion___block_invoke;
  v29[3] = &unk_2788C4500;
  v29[4] = self;
  v30 = dCopy;
  v31 = v9;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__SMReceiverService__userRequestedCacheDownloadForSessionID_completion___block_invoke_2;
  v27[3] = &unk_2788C4D38;
  v27[4] = self;
  v28 = v31;
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v29 failureBlock:v27 description:{@"%@-%@", v19, v20}];

LABEL_18:
}

void __72__SMReceiverService__userRequestedCacheDownloadForSessionID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)fetchReceiverSafetyCacheForSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SMReceiverService_fetchReceiverSafetyCacheForSessionID_completion___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_fetchReceiverSafetyCacheForSessionID:(id)d completion:(id)completion
{
  v66[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v9 = completionCopy;
  if (!dCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: sessionID";
LABEL_13:
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!completionCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: completion";
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if ([(SMReceiverService *)self attemptedToLoadFromDisk])
  {
    v10 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:dCopy];
    v11 = v10;
    if (v10)
    {
      sessionStatus = [v10 sessionStatus];
      sessionState = [sessionStatus sessionState];

      if (sessionState != 6)
      {
        phoneCache = [v11 phoneCache];
        watchCache = [v11 watchCache];
        v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if (phoneCache | watchCache)
        {
          if (v34)
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            v43 = NSStringFromSelector(a2);
            identifier = [phoneCache identifier];
            identifier2 = [watchCache identifier];
            *buf = 138413314;
            v52 = dCopy;
            v53 = 2112;
            v54 = v42;
            v55 = 2112;
            v56 = v43;
            v57 = 2112;
            v58 = identifier;
            v59 = 2112;
            v60 = identifier2;
            _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully fetched safety cache info,phoneCacheIdentifier,%@,watchCacheIdentifier,%@", buf, 0x34u);
          }

          v9[2](v9, phoneCache, watchCache, 0);
        }

        else
        {
          if (v34)
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            v37 = NSStringFromSelector(a2);
            *buf = 138412802;
            v52 = dCopy;
            v53 = 2112;
            v54 = v36;
            v55 = 2112;
            v56 = v37;
            _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cache info not available", buf, 0x20u);
          }

          v61 = *MEMORY[0x277CCA450];
          dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"cache info not available for sessionID %@", dCopy];
          v62 = dCopy;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];

          v40 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v39];
          (v9)[2](v9, 0, 0, v40);

          watchCache = 0;
          phoneCache = 0;
        }

        goto LABEL_19;
      }

      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        *buf = 138412802;
        v52 = dCopy;
        v53 = 2112;
        v54 = v16;
        v55 = 2112;
        v56 = v17;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,session is being cleaned up", buf, 0x20u);
      }

      v63 = *MEMORY[0x277CCA450];
      dCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"session is being cleaned up"];
      v64 = dCopy2;
      v19 = MEMORY[0x277CBEAC0];
      v20 = &v64;
      v21 = &v63;
    }

    else
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        *buf = 138412802;
        v52 = dCopy;
        v53 = 2112;
        v54 = v29;
        v55 = 2112;
        v56 = v30;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no cache manager found", buf, 0x20u);
      }

      v65 = *MEMORY[0x277CCA450];
      dCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"no cache manager found for sessionID %@", dCopy];
      v66[0] = dCopy2;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v66;
      v21 = &v65;
    }

    phoneCache = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];

    watchCache = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:phoneCache];
    v9[2](v9, 0, 0, watchCache);
LABEL_19:

    goto LABEL_20;
  }

  dispatcher = [(SMReceiverService *)self dispatcher];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __70__SMReceiverService__fetchReceiverSafetyCacheForSessionID_completion___block_invoke;
  v48[3] = &unk_2788C4500;
  v48[4] = self;
  v49 = dCopy;
  v50 = v9;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __70__SMReceiverService__fetchReceiverSafetyCacheForSessionID_completion___block_invoke_2;
  v46[3] = &unk_2788C4D38;
  v46[4] = self;
  v47 = v50;
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v48 failureBlock:v46 description:{@"%@-%@", v25, v26}];

LABEL_21:
}

void __70__SMReceiverService__fetchReceiverSafetyCacheForSessionID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)detailsViewOpenedForSessionID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }

    goto LABEL_13;
  }

  if ([(SMReceiverService *)self attemptedToLoadFromDisk])
  {
    v6 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:dCopy];
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = dCopy;
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@, notifying cache manager of user viewing session details", buf, 0x20u);
      }

      [v6 onViewingSessionDetails];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = dCopy;
        v23 = 2112;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@, no cache manager to remove", buf, 0x20u);
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  dispatcher = [(SMReceiverService *)self dispatcher];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__SMReceiverService_detailsViewOpenedForSessionID___block_invoke;
  v19[3] = &unk_2788C4A70;
  v19[4] = self;
  v20 = dCopy;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v19 description:{@"%@-%@", v14, v15}];

LABEL_14:
}

- (id)getReceiverCacheManagerForSessionID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    cacheManagerArray = [(SMReceiverService *)self cacheManagerArray];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__SMReceiverService_getReceiverCacheManagerForSessionID___block_invoke;
    v9[3] = &unk_2788C4D88;
    v10 = dCopy;
    v11 = buf;
    [cacheManagerArray enumerateObjectsUsingBlock:v9];

    v6 = *(v13 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

void __57__SMReceiverService_getReceiverCacheManagerForSessionID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 sessionID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)createReceiverCacheManagerForSessionID:(id)d initiatorHandle:(id)handle
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handleCopy = handle;
  if (dCopy)
  {
    v9 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:dCopy];
    if (v9)
    {
      v10 = v9;
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        v25 = 138412802;
        v26 = dCopy;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,already have a cache manager", &v25, 0x20u);
LABEL_10:
      }
    }

    else
    {
      v17 = [SMReceiverCacheManager alloc];
      safetyCacheStore = [(SMReceiverService *)self safetyCacheStore];
      defaultsManager = [(SMReceiverService *)self defaultsManager];
      queue = [(RTNotifier *)self queue];
      messagingService = [(SMReceiverService *)self messagingService];
      v10 = [(SMReceiverCacheManager *)v17 initWithSessionID:dCopy initiatorHandle:handleCopy safetyCacheStore:safetyCacheStore defaultsManager:defaultsManager queue:queue messagingService:messagingService];

      [(SMReceiverCacheManager *)v10 setDelegate:self];
      cacheManagerArray = [(SMReceiverService *)self cacheManagerArray];
      [cacheManagerArray addObject:v10];

      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v13 = NSStringFromClass(v23);
        v14 = NSStringFromSelector(a2);
        v25 = 138412802;
        v26 = dCopy;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,created cache manager", &v25, 0x20u);
        goto LABEL_10;
      }
    }

    v15 = v10;
    v16 = v15;
    goto LABEL_12;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", &v25, 2u);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)removeReceiverCacheManagerForSessionID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v6 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:dCopy];
    if (v6)
    {
      cacheManagerArray = [(SMReceiverService *)self cacheManagerArray];
      [cacheManagerArray removeObject:v6];

      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [v6 sessionID];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        v14 = 138412802;
        v15 = sessionID;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,removed cache manager", &v14, 0x20u);

LABEL_9:
      }
    }

    else
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v11 = NSStringFromClass(v13);
        v12 = NSStringFromSelector(a2);
        v14 = 138412802;
        v15 = dCopy;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no cache manager to remove", &v14, 0x20u);
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14) = 0;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", &v14, 2u);
  }

LABEL_11:
}

- (void)onMessageReceived:(id)received
{
  v22 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (!receivedCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notification", buf, 2u);
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      name = [receivedCopy name];
      *buf = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = name;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,unrecognized notification,%@", buf, 0x20u);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      name2 = [receivedCopy name];
      *buf = 138412802;
      v17 = name2;
      v18 = 2080;
      v19 = "[SMReceiverService onMessageReceived:]";
      v20 = 1024;
      LODWORD(v21) = 608;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }

LABEL_10:

    goto LABEL_11;
  }

  queue = [(RTNotifier *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__SMReceiverService_onMessageReceived___block_invoke;
  v14[3] = &unk_2788C4A70;
  v14[4] = self;
  v15 = receivedCopy;
  dispatch_async(queue, v14);

LABEL_11:
}

- (void)_onMessageReceived:(id)received
{
  v29 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (receivedCopy)
  {
    if ([(SMReceiverService *)self attemptedToLoadFromDisk])
    {
      message = [receivedCopy message];
      messageType = [objc_opt_class() messageType];

      if (messageType > 12)
      {
        if (messageType <= 15)
        {
          if (messageType == 13)
          {
            message2 = [receivedCopy message];
            from = [receivedCopy from];
            -[SMReceiverService receivedSessionStartInfoMessage:fromHandle:fromMe:](self, "receivedSessionStartInfoMessage:fromHandle:fromMe:", message2, from, [receivedCopy fromMe]);
            goto LABEL_34;
          }

          if (messageType != 14)
          {
            message2 = [receivedCopy message];
            from = [receivedCopy from];
            -[SMReceiverService receivedKeyReleaseInfoMessage:fromHandle:fromMe:](self, "receivedKeyReleaseInfoMessage:fromHandle:fromMe:", message2, from, [receivedCopy fromMe]);
            goto LABEL_34;
          }
        }

        else if ((messageType - 16) >= 4)
        {
          if (messageType == 20)
          {
            message2 = [receivedCopy message];
            from = [receivedCopy from];
            -[SMReceiverService _receivedLowPowerModeWarningStateUpdateMessage:fromHandle:fromMe:](self, "_receivedLowPowerModeWarningStateUpdateMessage:fromHandle:fromMe:", message2, from, [receivedCopy fromMe]);
            goto LABEL_34;
          }

LABEL_35:
          v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }

          v20 = objc_opt_class();
          v17 = NSStringFromClass(v20);
          v18 = NSStringFromSelector(a2);
          message3 = [receivedCopy message];
          *buf = 138412802;
          v24 = v17;
          v25 = 2112;
          v26 = v18;
          v27 = 1024;
          messageType2 = [objc_opt_class() messageType];
          _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,unrecognized message type,%d", buf, 0x1Cu);
          goto LABEL_18;
        }
      }

      else
      {
        if (messageType <= 6)
        {
          if (messageType > 2)
          {
            if (messageType == 3)
            {
              message2 = [receivedCopy message];
              from = [receivedCopy from];
              -[SMReceiverService receivedKeyReleaseMessage:fromHandle:fromMe:](self, "receivedKeyReleaseMessage:fromHandle:fromMe:", message2, from, [receivedCopy fromMe]);
              goto LABEL_34;
            }

            if (messageType == 6)
            {
              message2 = [receivedCopy message];
              from = [receivedCopy from];
              -[SMReceiverService receivedCacheUpdatedMessage:fromHandle:fromMe:](self, "receivedCacheUpdatedMessage:fromHandle:fromMe:", message2, from, [receivedCopy fromMe]);
              goto LABEL_34;
            }
          }

          else
          {
            if (messageType == 1)
            {
              message2 = [receivedCopy message];
              from = [receivedCopy from];
              -[SMReceiverService receivedSessionStartMessage:fromHandle:fromMe:](self, "receivedSessionStartMessage:fromHandle:fromMe:", message2, from, [receivedCopy fromMe]);
              goto LABEL_34;
            }

            if (messageType == 2)
            {
              message2 = [receivedCopy message];
              from = [receivedCopy from];
              -[SMReceiverService receivedSessionEndMessage:fromHandle:fromMe:](self, "receivedSessionEndMessage:fromHandle:fromMe:", message2, from, [receivedCopy fromMe]);
              goto LABEL_34;
            }
          }

          goto LABEL_35;
        }

        if ((messageType - 7) >= 3 && (messageType - 11) >= 2)
        {
          if (messageType == 10)
          {
            message2 = [receivedCopy message];
            from = [receivedCopy from];
            -[SMReceiverService receivedEstimatedEndTimeUpdateMessage:fromHandle:fromMe:](self, "receivedEstimatedEndTimeUpdateMessage:fromHandle:fromMe:", message2, from, [receivedCopy fromMe]);
LABEL_34:

            goto LABEL_37;
          }

          goto LABEL_35;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
LABEL_36:

          goto LABEL_37;
        }

        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        message3 = [receivedCopy message];
        *buf = 138412802;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        v27 = 1024;
        messageType2 = [objc_opt_class() messageType];
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,%@,%@,ignore message type,%d", buf, 0x1Cu);
LABEL_18:

        goto LABEL_36;
      }
    }

    else
    {
      dispatcher = [(SMReceiverService *)self dispatcher];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __40__SMReceiverService__onMessageReceived___block_invoke;
      v21[3] = &unk_2788C4A70;
      v21[4] = self;
      v22 = receivedCopy;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      [dispatcher enqueueBlock:v21 description:{@"%@-%@", v13, v14}];
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notification", buf, 2u);
    }
  }

LABEL_37:
}

- (void)receivedSessionStartMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v17 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v17, &v28, 2u);
    goto LABEL_18;
  }

  if (!handleCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v17 = "Invalid parameter not satisfying: from";
    goto LABEL_10;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v13 = v12;
  if (meCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v28 = 138412546;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,message from my own device", &v28, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [messageCopy sessionID];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v28 = 138413571;
      v29 = sessionID;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v11;
      v36 = 1024;
      v37 = 0;
      v38 = 2117;
      v39 = messageCopy;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v28, 0x3Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        lowPowerModeWarningState = [messageCopy lowPowerModeWarningState];
        v28 = 138412802;
        v29 = v25;
        v30 = 2112;
        v31 = v26;
        v32 = 2048;
        v33 = lowPowerModeWarningState;
        _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, "%@,%@ message.lowPowerModeWarningState %ld", &v28, 0x20u);
      }
    }

    sessionID2 = [messageCopy sessionID];
    v13 = [(SMReceiverService *)self createReceiverCacheManagerForSessionID:sessionID2 initiatorHandle:v11];

    [v13 onSessionStartMessageReceived:messageCopy];
  }

LABEL_18:
}

- (void)receivedSessionStartInfoMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v16, &v28, 2u);
    goto LABEL_18;
  }

  if (!handleCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: from";
    goto LABEL_10;
  }

  if (meCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v28 = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,message from my own device", &v28, 0x16u);
    }
  }

  else
  {
    sessionID = [messageCopy sessionID];
    v12 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:sessionID];

    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v19 = v18;
    if (v12)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sessionID2 = [messageCopy sessionID];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v28 = 138413571;
        v29 = sessionID2;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v11;
        v36 = 1024;
        v37 = 0;
        v38 = 2117;
        v39 = messageCopy;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v28, 0x3Au);
      }

      [v12 onSessionStartInfoMessageReceived:messageCopy];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [messageCopy sessionID];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v28 = 138412802;
        v29 = sessionID3;
        v30 = 2112;
        v31 = v26;
        v32 = 2112;
        v33 = v27;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing cache manager", &v28, 0x20u);
      }

      v12 = 0;
    }
  }

LABEL_18:
}

- (void)receivedEstimatedEndTimeUpdateMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v16, &v28, 2u);
    goto LABEL_18;
  }

  if (!handleCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: from";
    goto LABEL_10;
  }

  if (meCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v28 = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,message from my own device", &v28, 0x16u);
    }
  }

  else
  {
    sessionID = [messageCopy sessionID];
    v12 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:sessionID];

    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v19 = v18;
    if (v12)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sessionID2 = [messageCopy sessionID];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v28 = 138413571;
        v29 = sessionID2;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v11;
        v36 = 1024;
        v37 = 0;
        v38 = 2117;
        v39 = messageCopy;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v28, 0x3Au);
      }

      [v12 onEstimatedEndTimeUpdateMessageReceived:messageCopy];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [messageCopy sessionID];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v28 = 138412802;
        v29 = sessionID3;
        v30 = 2112;
        v31 = v26;
        v32 = 2112;
        v33 = v27;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing cache manager", &v28, 0x20u);
      }

      v12 = 0;
    }
  }

LABEL_18:
}

- (void)_receivedLowPowerModeWarningStateUpdateMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v16, &v28, 2u);
    goto LABEL_18;
  }

  if (!handleCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: from";
    goto LABEL_10;
  }

  if (meCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v28 = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,message from my own device", &v28, 0x16u);
    }
  }

  else
  {
    sessionID = [messageCopy sessionID];
    v12 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:sessionID];

    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v19 = v18;
    if (v12)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sessionID2 = [messageCopy sessionID];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v28 = 138413571;
        v29 = sessionID2;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v11;
        v36 = 1024;
        v37 = 0;
        v38 = 2117;
        v39 = messageCopy;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v28, 0x3Au);
      }

      [v12 onLowPowerModeWarningStateUpdateMessageReceived:messageCopy];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [messageCopy sessionID];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v28 = 138412802;
        v29 = sessionID3;
        v30 = 2112;
        v31 = v26;
        v32 = 2112;
        v33 = v27;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing cache manager", &v28, 0x20u);
      }

      v12 = 0;
    }
  }

LABEL_18:
}

- (void)receivedSessionEndMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v23) = 0;
    v17 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v17, &v23, 2u);
    goto LABEL_15;
  }

  if (!handleCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v23) = 0;
    v17 = "Invalid parameter not satisfying: from";
    goto LABEL_10;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v13 = v12;
  if (meCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v23 = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,message from my own device", &v23, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [messageCopy sessionID];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v23 = 138413571;
      v24 = sessionID;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v11;
      v31 = 1024;
      v32 = 0;
      v33 = 2117;
      v34 = messageCopy;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v23, 0x3Au);
    }

    sessionID2 = [messageCopy sessionID];
    v13 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:sessionID2];

    if (v13)
    {
      [v13 onSessionEndMessageReceived:messageCopy];
    }
  }

LABEL_15:
}

- (void)receivedKeyReleaseMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v29) = 0;
    v17 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v17, &v29, 2u);
    goto LABEL_18;
  }

  if (!handleCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v29) = 0;
    v17 = "Invalid parameter not satisfying: from";
    goto LABEL_10;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v13 = v12;
  if (meCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v29 = 138412546;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,message from my own device", &v29, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [messageCopy sessionID];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v29 = 138413571;
      v30 = sessionID;
      v31 = 2112;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2112;
      v36 = v11;
      v37 = 1024;
      v38 = 0;
      v39 = 2117;
      v40 = messageCopy;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v29, 0x3Au);
    }

    sessionID2 = [messageCopy sessionID];
    v13 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:sessionID2];

    if (!v13)
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [messageCopy sessionID];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v29 = 138412802;
        v30 = sessionID3;
        v31 = 2112;
        v32 = v26;
        v33 = 2112;
        v34 = v27;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing cache manager", &v29, 0x20u);
      }

      sessionID4 = [messageCopy sessionID];
      v13 = [(SMReceiverService *)self createReceiverCacheManagerForSessionID:sessionID4 initiatorHandle:v11];
    }

    [v13 onKeyReleaseMessageReceived:messageCopy];
  }

LABEL_18:
}

- (void)receivedKeyReleaseInfoMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v16, &v28, 2u);
    goto LABEL_18;
  }

  if (!handleCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: from";
    goto LABEL_10;
  }

  if (meCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v28 = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,message from my own device", &v28, 0x16u);
    }
  }

  else
  {
    sessionID = [messageCopy sessionID];
    v12 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:sessionID];

    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v19 = v18;
    if (v12)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sessionID2 = [messageCopy sessionID];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v28 = 138413571;
        v29 = sessionID2;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v11;
        v36 = 1024;
        v37 = 0;
        v38 = 2117;
        v39 = messageCopy;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v28, 0x3Au);
      }

      [v12 onKeyReleaseInfoMessageReceived:messageCopy];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [messageCopy sessionID];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v28 = 138412802;
        v29 = sessionID3;
        v30 = 2112;
        v31 = v26;
        v32 = 2112;
        v33 = v27;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing cache manager", &v28, 0x20u);
      }

      v12 = 0;
    }
  }

LABEL_18:
}

- (void)receivedCacheUpdatedMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = handleCopy;
  if (!messageCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v16, &v28, 2u);
    goto LABEL_18;
  }

  if (!handleCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v28) = 0;
    v16 = "Invalid parameter not satisfying: from";
    goto LABEL_10;
  }

  if (meCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v28 = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,message from my own device", &v28, 0x16u);
    }
  }

  else
  {
    sessionID = [messageCopy sessionID];
    v12 = [(SMReceiverService *)self getReceiverCacheManagerForSessionID:sessionID];

    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v19 = v18;
    if (v12)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sessionID2 = [messageCopy sessionID];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v28 = 138413571;
        v29 = sessionID2;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v11;
        v36 = 1024;
        v37 = 0;
        v38 = 2117;
        v39 = messageCopy;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v28, 0x3Au);
      }

      [v12 onCacheUpdatedMessageReceived:messageCopy];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [messageCopy sessionID];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v28 = 138412802;
        v29 = sessionID3;
        v30 = 2112;
        v31 = v26;
        v32 = 2112;
        v33 = v27;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing cache manager", &v28, 0x20u);
      }

      v12 = 0;
    }
  }

LABEL_18:
}

- (void)_registerForCKAccountChangedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__onCKAccountChangedNotification name:*MEMORY[0x277CBBF00] object:0];
}

- (void)_onCKAccountChangedNotification
{
  v4 = +[(SMCloudKitZone *)SMSentinelZone];
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__SMReceiverService__onCKAccountChangedNotification__block_invoke;
    v5[3] = &unk_2788C4DD8;
    v5[4] = self;
    v6[1] = a2;
    objc_copyWeak(v6, &location);
    [v4 accountStatusWithCompletionHandler:v5];
    objc_destroyWeak(v6);
    objc_destroyWeak(&location);
  }
}

void __52__SMReceiverService__onCKAccountChangedNotification__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2048;
      v32 = a2;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "#SafetyCache,Receiver,%@,%@,new CKAccountStatus,%lu", buf, 0x20u);
    }
  }

  v7 = *(a1 + 32);
  if (*(v7 + 40) != a2)
  {
    *(v7 + 40) = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    switch(a2)
    {
      case 4:
        goto LABEL_9;
      case 3:
LABEL_17:

        goto LABEL_18;
      case 0:
LABEL_9:
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromSelector(*(a1 + 48));
          *buf = 138413058;
          v28 = v19;
          v29 = 2112;
          v30 = v20;
          v31 = 2048;
          v32 = a2;
          v33 = 2112;
          v34 = v5;
          _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,CKAccountStatus,%lu,error,%@", buf, 0x2Au);
        }

        break;
    }

    if (WeakRetained)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __52__SMReceiverService__onCKAccountChangedNotification__block_invoke_54;
      v24[3] = &unk_2788C4DB0;
      v10 = *(a1 + 48);
      v24[4] = *(a1 + 32);
      v24[5] = v10;
      v24[6] = a2;
      [WeakRetained _initializeSentinelZoneWithCompletion:v24];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = *MEMORY[0x277D01448];
      v25 = *MEMORY[0x277CCA450];
      v26 = @"Receiver service released before sentinel zone setup";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      WeakRetained = [v11 initWithDomain:v12 code:5 userInfo:v13];

      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,receiver service released before account change could be processed", buf, 0x16u);
      }

      [SMReceiverService _submitSentinelZoneMaintenanceMetricForSuccess:0 error:WeakRetained];
    }

    goto LABEL_17;
  }

LABEL_18:
}

void __52__SMReceiverService__onCKAccountChangedNotification__block_invoke_54(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 40));
    v10 = *(a1 + 48);
    v11 = 138413314;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 1024;
    v16 = a2;
    v17 = 2048;
    v18 = v10;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,%@,%@,sentinel zone init success,%d,accountStatus,%lu,error,%@", &v11, 0x30u);
  }

  [SMReceiverService _submitSentinelZoneMaintenanceMetricForSuccess:a2 error:v5];
}

- (void)_initializeSentinelZoneWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = [SMSentinelZone alloc];
    queue = [(RTNotifier *)self queue];
    v8 = [(SMSentinelZone *)v6 initWithQueue:queue];

    xpcActivityManager = [(SMReceiverService *)self xpcActivityManager];
    runningTask = [xpcActivityManager runningTask];
    identifier = [runningTask identifier];
    v12 = [identifier isEqualToString:@"com.apple.routined.cloudkit.initializeSentinelZone"];

    if (v12)
    {
      xpcActivityManager2 = [(SMReceiverService *)self xpcActivityManager];
      runningTask2 = [xpcActivityManager2 runningTask];
      activity = [runningTask2 activity];
    }

    else
    {
      activity = 0;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__SMReceiverService__initializeSentinelZoneWithCompletion___block_invoke;
    v16[3] = &unk_2788C4E00;
    v16[4] = self;
    v18 = a2;
    v17 = completionCopy;
    [v8 saveZoneWithXPCActivity:activity completion:v16];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __59__SMReceiverService__initializeSentinelZoneWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 48));
    v10 = 138413058;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,%@,%@,sentinel zone init success,%d,error,%@", &v10, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_registerInitializeSentinelZoneActivity
{
  defaultsManager = [(SMReceiverService *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"RTDefaultsInitializeSentinelZoneInterval" value:&unk_2845A18D8];
  [v5 doubleValue];
  v7 = v6;

  defaultsManager2 = [(SMReceiverService *)self defaultsManager];
  v9 = [defaultsManager2 objectForKey:@"RTDefaultsInitializeSentinelZoneGracePeriod" value:&unk_2845A18E8];
  [v9 doubleValue];
  v11 = v10;

  defaultsManager3 = [(SMReceiverService *)self defaultsManager];
  v13 = [defaultsManager3 objectForKey:@"RTDefaultsInitializeSentinelZoneIgnoreNetworkConnectivity" value:&unk_28459C690];
  bOOLValue = [v13 BOOLValue];

  LOBYTE(v17) = 1;
  v15 = [[RTXPCActivityCriteria alloc] initWithInterval:2 gracePeriod:bOOLValue ^ 1u priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:0 networkTransferUploadSize:1 networkTransferDownloadSize:v7 allowBattery:v11 powerNap:0.0 delay:v17 requireBatteryLevel:0];
  objc_initWeak(&location, self);
  xpcActivityManager = [(SMReceiverService *)self xpcActivityManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__SMReceiverService__registerInitializeSentinelZoneActivity__block_invoke;
  v18[3] = &unk_2788C4E78;
  v18[4] = self;
  objc_copyWeak(v19, &location);
  v19[1] = a2;
  [xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.cloudkit.initializeSentinelZone" criteria:v15 handler:v18];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __60__SMReceiverService__registerInitializeSentinelZoneActivity__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SMReceiverService__registerInitializeSentinelZoneActivity__block_invoke_2;
  v10[3] = &unk_2788C4E50;
  objc_copyWeak(v13, a1 + 5);
  v13[1] = a1[6];
  v11 = v6;
  v12 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);

  objc_destroyWeak(v13);
}

void __60__SMReceiverService__registerInitializeSentinelZoneActivity__block_invoke_2(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(*(a1 + 56));
        v17 = *(a1 + 32);
        *buf = 138412802;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        v30 = 2112;
        v31 = v17;
        _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,RTXPCActivity error,%@", buf, 0x20u);
      }

      [SMReceiverService _submitSentinelZoneMaintenanceMetricForSuccess:0 error:*(a1 + 32)];
      v5 = *(a1 + 40);
      if (v5)
      {
        (*(v5 + 16))(v5, *(a1 + 32), 0);
      }
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __60__SMReceiverService__registerInitializeSentinelZoneActivity__block_invoke_70;
      v21[3] = &unk_2788C4E28;
      v12 = WeakRetained;
      v13 = *(a1 + 56);
      v22 = v12;
      v25 = v13;
      v24 = *(a1 + 40);
      v23 = *(a1 + 32);
      [v12 _initializeSentinelZoneWithCompletion:v21];
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v7 = *MEMORY[0x277D01448];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"Receiver service released before sentinel zone setup";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v9 = [v6 initWithDomain:v7 code:5 userInfo:v8];

    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v9;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,error,%@", buf, 0x20u);
    }

    [SMReceiverService _submitSentinelZoneMaintenanceMetricForSuccess:0 error:v9];
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v9, 0);
    }
  }
}

void __60__SMReceiverService__registerInitializeSentinelZoneActivity__block_invoke_70(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,%@,%@,sentinel zone error,%@", &v11, 0x20u);
    }
  }

  [SMReceiverService _submitSentinelZoneMaintenanceMetricForSuccess:a2 error:v5];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 40), 0);
  }
}

+ (void)_submitSentinelZoneMaintenanceMetricForSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
  [v5 setObject:v6 forKeyedSubscript:@"success"];

  [v5 setObject:&unk_28459C6A8 forKeyedSubscript:@"attempt"];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    [v5 setObject:domain forKeyedSubscript:@"errorDomain"];

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v5 setObject:v8 forKeyedSubscript:@"errorCode"];
  }

  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = [v9 initWithCString:RTAnalyticsEventSafetyMonitorReceiverSentinelZoneMaintenance encoding:1];
  log_analytics_submission(v10, v5);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v10];
  AnalyticsSendEvent();
}

@end