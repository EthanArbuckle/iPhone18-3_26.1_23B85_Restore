@interface RTPurgeManager
+ (id)purgeTypeToString:(int64_t)string;
- (RTLifeCycleManager)lifeCycleManager;
- (RTPurgeManager)initWithDefaultsManager:(id)manager learnedLocationStore:(id)store lifeCycleManager:(id)cycleManager platform:(id)platform purgers:(id)purgers visitStore:(id)visitStore xpcActivityManager:(id)activityManager;
- (id)_cacheDateDependencyForVisitWithDateInterval:(id)interval;
- (id)_cacheDateDependencyLabeledLearnedVisitWithDateInterval:(id)interval;
- (id)_cacheDateDependencyMomentsWithDateInterval:(id)interval;
- (id)_cacheDateDependencyUnlabeledLearnedVisitWithDateInterval:(id)interval;
- (id)_determinePruneDate:(id)date boundaryInterval:(id)interval;
- (id)_firstUnlabeledLearnedVisitWithError:(id *)error;
- (id)_generatePeriodicPurgeReferenceDateDict;
- (id)_lastLabeledLearnedVisitWithError:(id *)error;
- (id)_lastVisitWithError:(id *)error;
- (id)_selectPruneDateFromReferenceDateDict:(id)dict purger:(id)purger type:(int64_t)type;
- (id)_shortTermReferenceDate:(id)date;
- (void)_handleLanguageChangeNotification;
- (void)_purge:(id)_purge;
- (void)_purgeWithType:(int64_t)type referenceDate:(id)date handler:(id)handler;
- (void)_registerForMemoryPressureWarnings;
- (void)_shutdownWithHandler:(id)handler;
- (void)_unregisterForMemoryPressureWarnings;
- (void)clearRoutineWithHandler:(id)handler;
- (void)dealloc;
- (void)handleLanguageChangeNotification;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)onCoreLocationPrivacyReset;
- (void)purge:(id)purge;
- (void)setPressureState:(int64_t)state;
@end

@implementation RTPurgeManager

+ (id)purgeTypeToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788C6A98[string];
  }
}

- (RTPurgeManager)initWithDefaultsManager:(id)manager learnedLocationStore:(id)store lifeCycleManager:(id)cycleManager platform:(id)platform purgers:(id)purgers visitStore:(id)visitStore xpcActivityManager:(id)activityManager
{
  v61 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  storeCopy = store;
  cycleManagerCopy = cycleManager;
  platformCopy = platform;
  purgersCopy = purgers;
  visitStoreCopy = visitStore;
  activityManagerCopy = activityManager;
  v40 = storeCopy;
  obj = cycleManagerCopy;
  v42 = platformCopy;
  if (!managerCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", location, 2u);
    }

    goto LABEL_39;
  }

  if (!storeCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationStore", location, 2u);
    }

    goto LABEL_39;
  }

  if (!cycleManagerCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lifecycleManager", location, 2u);
    }

    goto LABEL_39;
  }

  if (!platformCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: platform", location, 2u);
    }

    goto LABEL_39;
  }

  if (!visitStoreCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitStore", location, 2u);
    }

    goto LABEL_39;
  }

  if (!activityManagerCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: xpcActivityManager", location, 2u);
    }

LABEL_39:

    selfCopy = 0;
    goto LABEL_40;
  }

  v59.receiver = self;
  v59.super_class = RTPurgeManager;
  v19 = [(RTNotifier *)&v59 init];
  val = v19;
  v20 = v19;
  if (v19)
  {
    v19->_pressureState = 0;
    v21 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v22 = purgersCopy;
    v23 = [v22 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v23)
    {
      v24 = *v56;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v55 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 insertObject:v26 atIndex:0];
          }

          else
          {
            [v21 addObject:v26];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v23);
    }

    objc_storeStrong(&val->_learnedLocationStore, store);
    objc_storeWeak(&val->_lifeCycleManager, obj);
    objc_storeStrong(&val->_platform, platform);
    objc_storeStrong(&val->_purgers, v21);
    objc_storeStrong(&val->_visitStore, visitStore);
    objc_storeStrong(&val->_xpcActivityManager, activityManager);
    v27 = objc_opt_new();
    notificationHelper = val->_notificationHelper;
    val->_notificationHelper = v27;

    objc_initWeak(location, val);
    v29 = val->_notificationHelper;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke;
    v52[3] = &unk_2788C5908;
    objc_copyWeak(&v53, location);
    [(RTDarwinNotificationHelper *)v29 addObserverForNotificationName:@"com.apple.language.changed" handler:v52];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:val selector:sel_onCoreLocationPrivacyReset name:*MEMORY[0x277CC1BB8] object:0];

    if ([v42 internalInstall])
    {
      out_token = -1;
      uTF8String = [@"PurgeNow" UTF8String];
      queue = [(RTNotifier *)val queue];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke_2;
      handler[3] = &unk_2788C5F98;
      objc_copyWeak(&v50, location);
      v49 = managerCopy;
      notify_register_dispatch(uTF8String, &out_token, queue, handler);

      objc_destroyWeak(&v50);
    }

    v33 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:0 allowBattery:86400.0 powerNap:43200.0];
    [(RTXPCActivityCriteria *)v33 setCpuIntensive:1];
    xpcActivityManager = [(RTPurgeManager *)val xpcActivityManager];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke_56;
    v46[3] = &unk_2788C6A18;
    v47[1] = a2;
    objc_copyWeak(v47, location);
    [xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.purge" criteria:v33 handler:v46];

    objc_destroyWeak(v47);
    objc_destroyWeak(&v53);
    objc_destroyWeak(location);

    v20 = val;
  }

  self = v20;
  selfCopy = self;
LABEL_40:

  return selfCopy;
}

void __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleLanguageChangeNotification];
    WeakRetained = v2;
  }
}

void __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) objectForKey:@"PurgeNow"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = 138412546;
        v6 = @"PurgeNow";
        v7 = 2112;
        v8 = v3;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "default, %@, value, %@", &v5, 0x16u);
      }
    }

    if ([v3 BOOLValue])
    {
      [WeakRetained _purge:0];
    }
  }
}

void __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke_57;
      v10[3] = &unk_2788C4780;
      v12 = *(a1 + 40);
      v11 = v5;
      [WeakRetained purge:v10];
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

void __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke_57(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to purge, error, %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 0);
  }
}

- (void)dealloc
{
  memoryWarningDispatchSource = self->_memoryWarningDispatchSource;
  if (memoryWarningDispatchSource)
  {
    dispatch_source_cancel(memoryWarningDispatchSource);
    v4 = self->_memoryWarningDispatchSource;
    self->_memoryWarningDispatchSource = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.language.changed"];
  purgers = self->_purgers;
  self->_purgers = 0;

  v7.receiver = self;
  v7.super_class = RTPurgeManager;
  [(RTPurgeManager *)&v7 dealloc];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  xpcActivityManager = [(RTPurgeManager *)self xpcActivityManager];
  [xpcActivityManager unregisterActivityWithIdentifier:@"com.apple.routined.purge" handler:0];

  [(RTPurgeManager *)self _unregisterForMemoryPressureWarnings];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.language.changed"];
  purgers = self->_purgers;
  self->_purgers = 0;

  v7 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v7 = handlerCopy;
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTPurgeManagerNotificationMemoryWarning];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    if ([(RTNotifier *)self getNumberOfObservers:nameCopy]== 1)
    {
      [(RTPurgeManager *)self _registerForMemoryPressureWarnings];
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Unsupported notification %@", &v9, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTPurgeManagerNotificationMemoryWarning];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    if (![(RTNotifier *)self getNumberOfObservers:nameCopy])
    {
      [(RTPurgeManager *)self _unregisterForMemoryPressureWarnings];
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Unsupported notification %@", &v9, 0xCu);
    }
  }
}

- (void)_registerForMemoryPressureWarnings
{
  if (!self->_memoryWarningDispatchSource)
  {
    queue = [(RTNotifier *)self queue];
    v4 = dispatch_source_create(MEMORY[0x277D85D18], 0, 7uLL, queue);

    objc_storeStrong(&self->_memoryWarningDispatchSource, v4);
    objc_initWeak(&location, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __52__RTPurgeManager__registerForMemoryPressureWarnings__block_invoke;
    handler[3] = &unk_2788C57F8;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    v5 = v4;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_resume(v5);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __52__RTPurgeManager__registerForMemoryPressureWarnings__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    data = dispatch_source_get_data(*(a1 + 32));
    if (data == 1)
    {
      v5 = 0;
    }

    else if (data == 4)
    {
      v5 = 2;
    }

    else
    {
      v4 = data == 2;
      WeakRetained = v6;
      if (!v4)
      {
        goto LABEL_10;
      }

      v5 = 1;
    }

    [v6 setPressureState:v5];
    WeakRetained = v6;
  }

LABEL_10:
}

- (void)_unregisterForMemoryPressureWarnings
{
  memoryWarningDispatchSource = self->_memoryWarningDispatchSource;
  if (memoryWarningDispatchSource)
  {
    dispatch_source_cancel(memoryWarningDispatchSource);
    v4 = self->_memoryWarningDispatchSource;
    self->_memoryWarningDispatchSource = 0;
  }
}

- (void)purge:(id)purge
{
  purgeCopy = purge;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__RTPurgeManager_purge___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = purgeCopy;
  v6 = purgeCopy;
  dispatch_async(queue, v7);
}

- (void)_purge:(id)_purge
{
  _purgeCopy = _purge;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "request to do periodic purge received.", buf, 2u);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__RTPurgeManager__purge___block_invoke;
  v8[3] = &unk_2788C48C0;
  v9 = _purgeCopy;
  v7 = _purgeCopy;
  [(RTPurgeManager *)self _purgeWithType:0 referenceDate:date handler:v8];
}

void __25__RTPurgeManager__purge___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "error occurred during old data purge, %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)clearRoutineWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RTPurgeManager_clearRoutineWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __42__RTPurgeManager_clearRoutineWithHandler___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "request to do clear routine received.", buf, 2u);
    }
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__RTPurgeManager_clearRoutineWithHandler___block_invoke_64;
  v5[3] = &unk_2788C48C0;
  v6 = *(a1 + 40);
  [v3 _purgeWithType:1 referenceDate:v4 handler:v5];
}

void __42__RTPurgeManager_clearRoutineWithHandler___block_invoke_64(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "error occurred during clear routine, %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)onCoreLocationPrivacyReset
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTPurgeManager_onCoreLocationPrivacyReset__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__RTPurgeManager_onCoreLocationPrivacyReset__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "request to purge from reset location and privacy received.", v5, 2u);
    }
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] date];
  [v3 _purgeWithType:2 referenceDate:v4 handler:&__block_literal_global_18];
}

void __44__RTPurgeManager_onCoreLocationPrivacyReset__block_invoke_65(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "error occurred during reset location and privacy, %@", &v4, 0xCu);
    }
  }
}

- (id)_generatePeriodicPurgeReferenceDateDict
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(RTPurgeManager *)self _dailyReferenceDate:date];
  v5 = [(RTPurgeManager *)self _shortTermReferenceDate:date];
  v6 = [(RTPurgeManager *)self _longTermReferenceDate:date];
  v7 = MEMORY[0x277CBEAC0];
  v8 = date;
  v9 = [[v7 alloc] initWithObjectsAndKeys:{v4, &unk_28459C798, v5, &unk_28459C7B0, v6, &unk_28459C7C8, v8, &unk_28459C7E0, 0}];

  return v9;
}

- (id)_selectPruneDateFromReferenceDateDict:(id)dict purger:(id)purger type:(int64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  purgerCopy = purger;
  if (type)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    if (!dictCopy)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_opt_class() purgeTypeToString:0];
        v14 = 138412802;
        v15 = v13;
        v16 = 2080;
        v17 = "[RTPurgeManager _selectPruneDateFromReferenceDateDict:purger:type:]";
        v18 = 1024;
        v19 = 408;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "pruneReferenceDict must not be nil for type, %@ (in %s:%d)", &v14, 0x1Cu);
      }
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objc_opt_class(), "periodicPurgePolicy")}];
    distantFuture = [dictCopy objectForKeyedSubscript:v11];
  }

  return distantFuture;
}

- (void)_purgeWithType:(int64_t)type referenceDate:(id)date handler:(id)handler
{
  v83[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  handlerCopy = handler;
  v60 = dispatch_semaphore_create(0);
  v9 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(NSArray *)self->_purgers count];
      v12 = [objc_opt_class() purgeTypeToString:type];
      *buf = 134218242;
      *&buf[4] = v11;
      v81 = 2112;
      v82 = v12;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "starting purge with %lu purgers, type, %@", buf, 0x16u);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  if (type)
  {
    _generatePeriodicPurgeReferenceDateDict = 0;
  }

  else
  {
    _generatePeriodicPurgeReferenceDateDict = [(RTPurgeManager *)self _generatePeriodicPurgeReferenceDateDict];
  }

  v53 = date;
  v54 = handlerCopy;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = self->_purgers;
  v67 = [(NSArray *)obj countByEnumeratingWithState:&v73 objects:v79 count:16];
  v14 = 0;
  if (v67)
  {
    v66 = *v74;
    v55 = *MEMORY[0x277CCA450];
    v56 = *MEMORY[0x277D01448];
    v15 = 0x277CBE000uLL;
    v57 = v9;
    selfCopy = self;
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v74 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v73 + 1) + 8 * i);
        date2 = [*(v15 + 2728) date];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            [objc_opt_class() purgeTypeToString:type];
            v23 = v22 = v14;
            *buf = 138412546;
            *&buf[4] = v21;
            v81 = 2112;
            v82 = v23;
            _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "purger of class %@ started, type, %@", buf, 0x16u);

            v14 = v22;
            v15 = 0x277CBE000uLL;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v24 = [(RTPurgeManager *)self _selectPruneDateFromReferenceDateDict:_generatePeriodicPurgeReferenceDateDict purger:v17 type:type];

          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __55__RTPurgeManager__purgeWithType_referenceDate_handler___block_invoke;
          v68[3] = &unk_2788C5F28;
          v68[4] = v17;
          v68[5] = self;
          typeCopy = type;
          v69 = date2;
          v70 = v9;
          v25 = v60;
          v71 = v25;
          [v17 performPurgeOfType:type referenceDate:v24 completion:v68];
          v26 = v25;
          v27 = [*(v15 + 2728) now];
          v28 = dispatch_time(0, 3600000000000);
          v29 = v14;
          if (dispatch_semaphore_wait(v26, v28))
          {
            v63 = v24;
            v64 = v14;
            v62 = [*(v15 + 2728) now];
            [v62 timeIntervalSinceDate:v27];
            v31 = v30;
            v32 = objc_opt_new();
            v33 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_188];
            callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
            v35 = [callStackSymbols filteredArrayUsingPredicate:v33];
            firstObject = [v35 firstObject];

            [v32 submitToCoreAnalytics:firstObject type:1 duration:v31];
            v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v37, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v38 = MEMORY[0x277CCA9B8];
            v83[0] = v55;
            *buf = @"semaphore wait timeout";
            v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v83 count:1];
            v40 = [v38 errorWithDomain:v56 code:15 userInfo:v39];

            v24 = v63;
            v14 = v64;
            v29 = v64;
            v9 = v57;
            v15 = 0x277CBE000;
            if (v40)
            {
              v41 = v40;

              v29 = v40;
            }
          }

          v42 = v29;
          v14 = v42;
          dateCopy = v24;
          self = selfCopy;
        }
      }

      v67 = [(NSArray *)obj countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v67);
  }

  else
  {
    v15 = 0x277CBE000uLL;
  }

  v43 = v14;

  if (![v9 count])
  {
    firstObject2 = 0;
    v45 = v53;
    v44 = v54;
    if (!v54)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v45 = v53;
  v44 = v54;
  if ([v9 count] >= 2)
  {
    v46 = *MEMORY[0x277D01440];
    v77[0] = *MEMORY[0x277CCA450];
    v77[1] = v46;
    v78[0] = @"Multiple errors occurred.";
    v78[1] = v9;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
    firstObject2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:9 userInfo:v47];

    if (!v54)
    {
      goto LABEL_34;
    }

LABEL_33:
    (v44)[2](v44, firstObject2);
    goto LABEL_34;
  }

  firstObject2 = [v9 firstObject];
  if (v54)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = [objc_opt_class() purgeTypeToString:type];
      date3 = [*(v15 + 2728) date];
      [date3 timeIntervalSinceDate:v45];
      *buf = 138412546;
      *&buf[4] = v50;
      v81 = 2048;
      v82 = v52;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "finished purge, type, %@, latency, %.2f", buf, 0x16u);
    }
  }
}

void __55__RTPurgeManager__purgeWithType_referenceDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [objc_opt_class() purgeTypeToString:*(a1 + 72)];
      v8 = [MEMORY[0x277CBEAA8] date];
      [v8 timeIntervalSinceDate:*(a1 + 48)];
      v13 = 138412802;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = v9;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "purger of class %@ finished, type, %@, latency, %.2f", &v13, 0x20u);
    }
  }

  if (v3)
  {
    v10 = [v3 domain];
    if ([v10 isEqualToString:@"RTPersistenceMirroringManagerErrorDomain"])
    {
      v11 = [v3 domain];
      if (![v11 isEqualToString:@"RTPersistenceMirroringManagerErrorDomain"] || objc_msgSend(v3, "code") == 5)
      {

        goto LABEL_12;
      }

      v12 = [v3 code];

      if (v12 == 3)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    [*(a1 + 56) addObject:v3];
  }

LABEL_12:
  dispatch_semaphore_signal(*(a1 + 64));
}

- (void)setPressureState:(int64_t)state
{
  if (self->_pressureState != state)
  {
    self->_pressureState = state;
    v4 = [[RTPurgeManagerNotificationMemoryWarning alloc] initWithMemoryPressureState:self->_pressureState];
    if (v4)
    {
      [(RTNotifier *)self postNotification:v4];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)handleLanguageChangeNotification
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTPurgeManager_handleLanguageChangeNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleLanguageChangeNotification
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "receive language change notification", buf, 2u);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__RTPurgeManager__handleLanguageChangeNotification__block_invoke;
  v5[3] = &unk_2788C4730;
  v5[4] = self;
  [(RTPurgeManager *)self _purgeWithType:3 referenceDate:date handler:v5];
}

void __51__RTPurgeManager__handleLanguageChangeNotification__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "error occurred during purge localized data, %@", &v7, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "exiting after processing the language change notification", &v7, 2u);
    }
  }

  v6 = [*(a1 + 32) lifeCycleManager];
  [v6 exit];
}

- (id)_shortTermReferenceDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    date = [dateCopy dateByAddingTimeInterval:-604800.0];
    v7 = [v5 dateByAddingTimeInterval:-259200.0];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:date endDate:v7];
    v10 = [(RTPurgeManager *)self _cacheDateDependencyForVisitWithDateInterval:v9];
    [v8 addObject:v10];

    v11 = [(RTPurgeManager *)self _cacheDateDependencyUnlabeledLearnedVisitWithDateInterval:v9];
    [v8 addObject:v11];

    v12 = [(RTPurgeManager *)self _cacheDateDependencyLabeledLearnedVisitWithDateInterval:v9];
    [v8 addObject:v12];

    v13 = [(RTPurgeManager *)self _cacheDateDependencyMomentsWithDateInterval:v9];
    [v8 addObject:v13];

    v14 = [v8 valueForKeyPath:@"@min.self"];
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceDate", v17, 2u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    v14 = [date dateByAddingTimeInterval:-604800.0];
  }

  return v14;
}

- (id)_determinePruneDate:(id)date boundaryInterval:(id)interval
{
  intervalCopy = interval;
  dateCopy = date;
  startDate = [intervalCopy startDate];
  v8 = [startDate laterDate:dateCopy];

  endDate = [intervalCopy endDate];

  v10 = [v8 earlierDate:endDate];

  return v10;
}

- (id)_cacheDateDependencyForVisitWithDateInterval:(id)interval
{
  v19 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v16 = 0;
  v5 = [(RTPurgeManager *)self _lastVisitWithError:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "_cacheDateDependencyForVisitWithDateInterval, when trying to retrieve lastVisit, got error %@", buf, 0xCu);
    }

LABEL_5:
    startDate = [intervalCopy startDate];
    goto LABEL_22;
  }

  if (v5)
  {
    exit = [v5 exit];
    v10 = exit;
    if (exit)
    {
      entry = exit;
    }

    else
    {
      entry = [v5 entry];
    }

    v12 = entry;
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (v12)
      {
        stringFromDate = [v12 stringFromDate];
      }

      else
      {
        stringFromDate = @"nil";
      }

      *buf = 138412290;
      v18 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "_cacheDateDependencyForVisitWithDateInterval: lastVisitDate is %@", buf, 0xCu);
      if (v12)
      {
      }
    }
  }

  if (!v12)
  {
    goto LABEL_5;
  }

  startDate = [(RTPurgeManager *)self _determinePruneDate:v12 boundaryInterval:intervalCopy];

LABEL_22:

  return startDate;
}

- (id)_lastVisitWithError:(id *)error
{
  v58[1] = *MEMORY[0x277D85DE8];
  visitStore = [(RTPurgeManager *)self visitStore];

  if (!visitStore)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v54 = 136315394;
      *&v54[4] = "[RTPurgeManager _lastVisitWithError:]";
      *&v54[12] = 1024;
      *&v54[14] = 611;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "_lastVisitWithError, visitStore is nil (in %s:%d)", v54, 0x12u);
    }
  }

  *v54 = 0;
  *&v54[8] = v54;
  *&v54[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__22;
  v56 = __Block_byref_object_dispose__22;
  v57 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__22;
  v47 = __Block_byref_object_dispose__22;
  v48 = 0;
  v6 = objc_alloc(MEMORY[0x277D01340]);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v8 = [v6 initWithAscending:0 confidence:v7 dateInterval:0 labelVisit:0 limit:&unk_28459C7F8];

  v9 = dispatch_semaphore_create(0);
  visitStore2 = [(RTPurgeManager *)self visitStore];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __38__RTPurgeManager__lastVisitWithError___block_invoke;
  v39[3] = &unk_2788C4490;
  v41 = v54;
  v42 = &v43;
  v11 = v9;
  v40 = v11;
  [visitStore2 fetchVisitsWithOptions:v8 handler:v39];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_188];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v58[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v58 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;

      v28 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = 1;
LABEL_12:

  v29 = v26;
  if ((v28 & 1) == 0)
  {
    objc_storeStrong(v44 + 5, v26);
  }

  if (error && v44[5])
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      v36 = v44[5];
      *buf = 138412802;
      *&buf[4] = v34;
      v50 = 2112;
      v51 = v35;
      v52 = 2112;
      v53 = v36;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v31 = 0;
    *error = v44[5];
  }

  else
  {
    v31 = *(*&v54[8] + 40);
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v54, 8);

  return v31;
}

void __38__RTPurgeManager__lastVisitWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_cacheDateDependencyUnlabeledLearnedVisitWithDateInterval:(id)interval
{
  v16 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v13 = 0;
  v5 = [(RTPurgeManager *)self _firstUnlabeledLearnedVisitWithError:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "_cacheDateDependencyUnlabeledLearnedVisit, when trying to retrieve unlabeled firstVisit, got error %@", buf, 0xCu);
    }

LABEL_5:
    startDate = [intervalCopy startDate];
    goto LABEL_19;
  }

  if (v5)
  {
    entryDate = [v5 entryDate];
  }

  else
  {
    entryDate = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (entryDate)
      {
        stringFromDate = [entryDate stringFromDate];
      }

      else
      {
        stringFromDate = @"nil";
      }

      *buf = 138412290;
      v15 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "_cacheDateDependencyUnlabeledLearnedVisitWithDateInterval unlabeled firstVisit.entryDate is %@", buf, 0xCu);
      if (entryDate)
      {
      }
    }
  }

  if (!entryDate)
  {
    goto LABEL_5;
  }

  startDate = [(RTPurgeManager *)self _determinePruneDate:entryDate boundaryInterval:intervalCopy];

LABEL_19:

  return startDate;
}

- (id)_firstUnlabeledLearnedVisitWithError:(id *)error
{
  v55[1] = *MEMORY[0x277D85DE8];
  learnedLocationStore = [(RTPurgeManager *)self learnedLocationStore];

  if (!learnedLocationStore)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v51 = 136315394;
      *&v51[4] = "[RTPurgeManager _firstUnlabeledLearnedVisitWithError:]";
      *&v51[12] = 1024;
      *&v51[14] = 668;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "_firstUnlabeledLearnedVisitWithError, learnedLocationStore is nil (in %s:%d)", v51, 0x12u);
    }
  }

  *v51 = 0;
  *&v51[8] = v51;
  *&v51[16] = 0x3032000000;
  v52 = __Block_byref_object_copy__22;
  v53 = __Block_byref_object_dispose__22;
  v54 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__22;
  v44 = __Block_byref_object_dispose__22;
  v45 = 0;
  v7 = dispatch_semaphore_create(0);
  learnedLocationStore2 = [(RTPurgeManager *)self learnedLocationStore];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __55__RTPurgeManager__firstUnlabeledLearnedVisitWithError___block_invoke;
  v36[3] = &unk_2788C4490;
  v38 = v51;
  v39 = &v40;
  v9 = v7;
  v37 = v9;
  [learnedLocationStore2 fetchVisitsWithoutPlacesForCurrentDeviceWithHandler:v36 limit:&unk_28459C7F8];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_188];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v55[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;

      v26 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_12:

  v27 = v24;
  if ((v26 & 1) == 0)
  {
    objc_storeStrong(v41 + 5, v24);
  }

  if (error && v41[5])
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      v34 = v41[5];
      *buf = 138412802;
      *&buf[4] = v32;
      v47 = 2112;
      v48 = v33;
      v49 = 2112;
      v50 = v34;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v29 = 0;
    *error = v41[5];
  }

  else
  {
    v29 = *(*&v51[8] + 40);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v51, 8);

  return v29;
}

void __55__RTPurgeManager__firstUnlabeledLearnedVisitWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 firstObject];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_cacheDateDependencyLabeledLearnedVisitWithDateInterval:(id)interval
{
  v16 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v13 = 0;
  v5 = [(RTPurgeManager *)self _lastLabeledLearnedVisitWithError:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "_cacheDateDependencyLabeledLearnedVisitWithDateInterval, when trying to retrieve labeled lastVisit.exitDate, got error %@", buf, 0xCu);
    }

LABEL_5:
    startDate = [intervalCopy startDate];
    goto LABEL_19;
  }

  if (v5)
  {
    exitDate = [v5 exitDate];
  }

  else
  {
    exitDate = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (exitDate)
      {
        stringFromDate = [exitDate stringFromDate];
      }

      else
      {
        stringFromDate = @"nil";
      }

      *buf = 138412290;
      v15 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "_cacheDateDependencyLabeledLearnedVisitWithDateInterval, labeled lastVisit.exitDate is %@", buf, 0xCu);
      if (exitDate)
      {
      }
    }
  }

  if (!exitDate)
  {
    goto LABEL_5;
  }

  startDate = [(RTPurgeManager *)self _determinePruneDate:exitDate boundaryInterval:intervalCopy];

LABEL_19:

  return startDate;
}

- (id)_cacheDateDependencyMomentsWithDateInterval:(id)interval
{
  v25 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  date = [MEMORY[0x277CBEAA8] date];
  platform = [(RTPurgeManager *)self platform];
  iPhoneDevice = [platform iPhoneDevice];

  if (iPhoneDevice)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v9 = _MergedGlobals_1;
    v21 = _MergedGlobals_1;
    if (!_MergedGlobals_1)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMOOnboardingManagerClass_block_invoke;
      v23 = &unk_2788C6A40;
      v24 = &v18;
      __getMOOnboardingManagerClass_block_invoke(buf);
      v9 = v19[3];
    }

    v10 = v9;
    _Block_object_dispose(&v18, 8);
    sharedInstance = [v9 sharedInstance];
    onboardingFlowCompletionStatus = [sharedInstance onboardingFlowCompletionStatus];

    if ((onboardingFlowCompletionStatus & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      startDate = [intervalCopy startDate];

      date = startDate;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = NSStringFromSelector(a2);
        stringFromDate = [date stringFromDate];
        *buf = 138412802;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = onboardingFlowCompletionStatus;
        *&buf[22] = 2112;
        v23 = stringFromDate;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, onboarding flow completion status, %lu, earliest date required by moments, %@", buf, 0x20u);
      }
    }
  }

  return date;
}

- (id)_lastLabeledLearnedVisitWithError:(id *)error
{
  v55[1] = *MEMORY[0x277D85DE8];
  learnedLocationStore = [(RTPurgeManager *)self learnedLocationStore];

  if (!learnedLocationStore)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v51 = 136315394;
      *&v51[4] = "[RTPurgeManager _lastLabeledLearnedVisitWithError:]";
      *&v51[12] = 1024;
      *&v51[14] = 746;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "_lastLabeledLearnedVisitWithError, learnedLocationStore is nil (in %s:%d)", v51, 0x12u);
    }
  }

  *v51 = 0;
  *&v51[8] = v51;
  *&v51[16] = 0x3032000000;
  v52 = __Block_byref_object_copy__22;
  v53 = __Block_byref_object_dispose__22;
  v54 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__22;
  v44 = __Block_byref_object_dispose__22;
  v45 = 0;
  v7 = dispatch_semaphore_create(0);
  learnedLocationStore2 = [(RTPurgeManager *)self learnedLocationStore];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __52__RTPurgeManager__lastLabeledLearnedVisitWithError___block_invoke;
  v36[3] = &unk_2788C61C0;
  v38 = v51;
  v39 = &v40;
  v9 = v7;
  v37 = v9;
  [learnedLocationStore2 fetchLastVisitWithHandler:v36];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_188];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v55[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;

      v26 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_12:

  v27 = v24;
  if ((v26 & 1) == 0)
  {
    objc_storeStrong(v41 + 5, v24);
  }

  if (error && v41[5])
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      v34 = v41[5];
      *buf = 138412802;
      *&buf[4] = v32;
      v47 = 2112;
      v48 = v33;
      v49 = 2112;
      v50 = v34;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v29 = 0;
    *error = v41[5];
  }

  else
  {
    v29 = *(*&v51[8] + 40);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v51, 8);

  return v29;
}

void __52__RTPurgeManager__lastLabeledLearnedVisitWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (RTLifeCycleManager)lifeCycleManager
{
  WeakRetained = objc_loadWeakRetained(&self->_lifeCycleManager);

  return WeakRetained;
}

@end