@interface RTPurgeManager
+ (id)purgeTypeToString:(int64_t)a3;
- (RTLifeCycleManager)lifeCycleManager;
- (RTPurgeManager)initWithDefaultsManager:(id)a3 learnedLocationStore:(id)a4 lifeCycleManager:(id)a5 platform:(id)a6 purgers:(id)a7 visitStore:(id)a8 xpcActivityManager:(id)a9;
- (id)_cacheDateDependencyForVisitWithDateInterval:(id)a3;
- (id)_cacheDateDependencyLabeledLearnedVisitWithDateInterval:(id)a3;
- (id)_cacheDateDependencyMomentsWithDateInterval:(id)a3;
- (id)_cacheDateDependencyUnlabeledLearnedVisitWithDateInterval:(id)a3;
- (id)_determinePruneDate:(id)a3 boundaryInterval:(id)a4;
- (id)_firstUnlabeledLearnedVisitWithError:(id *)a3;
- (id)_generatePeriodicPurgeReferenceDateDict;
- (id)_lastLabeledLearnedVisitWithError:(id *)a3;
- (id)_lastVisitWithError:(id *)a3;
- (id)_selectPruneDateFromReferenceDateDict:(id)a3 purger:(id)a4 type:(int64_t)a5;
- (id)_shortTermReferenceDate:(id)a3;
- (void)_handleLanguageChangeNotification;
- (void)_purge:(id)a3;
- (void)_purgeWithType:(int64_t)a3 referenceDate:(id)a4 handler:(id)a5;
- (void)_registerForMemoryPressureWarnings;
- (void)_shutdownWithHandler:(id)a3;
- (void)_unregisterForMemoryPressureWarnings;
- (void)clearRoutineWithHandler:(id)a3;
- (void)dealloc;
- (void)handleLanguageChangeNotification;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onCoreLocationPrivacyReset;
- (void)purge:(id)a3;
- (void)setPressureState:(int64_t)a3;
@end

@implementation RTPurgeManager

+ (id)purgeTypeToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788C6A98[a3];
  }
}

- (RTPurgeManager)initWithDefaultsManager:(id)a3 learnedLocationStore:(id)a4 lifeCycleManager:(id)a5 platform:(id)a6 purgers:(id)a7 visitStore:(id)a8 xpcActivityManager:(id)a9
{
  v61 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v43 = a7;
  v45 = a8;
  v44 = a9;
  v40 = v16;
  obj = v17;
  v42 = v18;
  if (!v15)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", location, 2u);
    }

    goto LABEL_39;
  }

  if (!v16)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationStore", location, 2u);
    }

    goto LABEL_39;
  }

  if (!v17)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lifecycleManager", location, 2u);
    }

    goto LABEL_39;
  }

  if (!v18)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: platform", location, 2u);
    }

    goto LABEL_39;
  }

  if (!v45)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitStore", location, 2u);
    }

    goto LABEL_39;
  }

  if (!v44)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: xpcActivityManager", location, 2u);
    }

LABEL_39:

    v35 = 0;
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
    v22 = v43;
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

    objc_storeStrong(&val->_learnedLocationStore, a4);
    objc_storeWeak(&val->_lifeCycleManager, obj);
    objc_storeStrong(&val->_platform, a6);
    objc_storeStrong(&val->_purgers, v21);
    objc_storeStrong(&val->_visitStore, a8);
    objc_storeStrong(&val->_xpcActivityManager, a9);
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
    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:val selector:sel_onCoreLocationPrivacyReset name:*MEMORY[0x277CC1BB8] object:0];

    if ([v42 internalInstall])
    {
      out_token = -1;
      v31 = [@"PurgeNow" UTF8String];
      v32 = [(RTNotifier *)val queue];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke_2;
      handler[3] = &unk_2788C5F98;
      objc_copyWeak(&v50, location);
      v49 = v15;
      notify_register_dispatch(v31, &out_token, v32, handler);

      objc_destroyWeak(&v50);
    }

    v33 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:0 allowBattery:86400.0 powerNap:43200.0];
    [(RTXPCActivityCriteria *)v33 setCpuIntensive:1];
    v34 = [(RTPurgeManager *)val xpcActivityManager];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __127__RTPurgeManager_initWithDefaultsManager_learnedLocationStore_lifeCycleManager_platform_purgers_visitStore_xpcActivityManager___block_invoke_56;
    v46[3] = &unk_2788C6A18;
    v47[1] = a2;
    objc_copyWeak(v47, location);
    [v34 registerActivityWithIdentifier:@"com.apple.routined.purge" criteria:v33 handler:v46];

    objc_destroyWeak(v47);
    objc_destroyWeak(&v53);
    objc_destroyWeak(location);

    v20 = val;
  }

  self = v20;
  v35 = self;
LABEL_40:

  return v35;
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

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.language.changed"];
  purgers = self->_purgers;
  self->_purgers = 0;

  v7.receiver = self;
  v7.super_class = RTPurgeManager;
  [(RTPurgeManager *)&v7 dealloc];
}

- (void)_shutdownWithHandler:(id)a3
{
  v8 = a3;
  v4 = [(RTPurgeManager *)self xpcActivityManager];
  [v4 unregisterActivityWithIdentifier:@"com.apple.routined.purge" handler:0];

  [(RTPurgeManager *)self _unregisterForMemoryPressureWarnings];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.language.changed"];
  purgers = self->_purgers;
  self->_purgers = 0;

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
    v7 = v8;
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)RTPurgeManagerNotificationMemoryWarning];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if ([(RTNotifier *)self getNumberOfObservers:v5]== 1)
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
      v10 = v5;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Unsupported notification %@", &v9, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)RTPurgeManagerNotificationMemoryWarning];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (![(RTNotifier *)self getNumberOfObservers:v5])
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
      v10 = v5;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Unsupported notification %@", &v9, 0xCu);
    }
  }
}

- (void)_registerForMemoryPressureWarnings
{
  if (!self->_memoryWarningDispatchSource)
  {
    v3 = [(RTNotifier *)self queue];
    v4 = dispatch_source_create(MEMORY[0x277D85D18], 0, 7uLL, v3);

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

- (void)purge:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__RTPurgeManager_purge___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_purge:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "request to do periodic purge received.", buf, 2u);
    }
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__RTPurgeManager__purge___block_invoke;
  v8[3] = &unk_2788C48C0;
  v9 = v4;
  v7 = v4;
  [(RTPurgeManager *)self _purgeWithType:0 referenceDate:v6 handler:v8];
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

- (void)clearRoutineWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RTPurgeManager_clearRoutineWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTPurgeManager_onCoreLocationPrivacyReset__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(RTPurgeManager *)self _dailyReferenceDate:v3];
  v5 = [(RTPurgeManager *)self _shortTermReferenceDate:v3];
  v6 = [(RTPurgeManager *)self _longTermReferenceDate:v3];
  v7 = MEMORY[0x277CBEAC0];
  v8 = v3;
  v9 = [[v7 alloc] initWithObjectsAndKeys:{v4, &unk_28459C798, v5, &unk_28459C7B0, v6, &unk_28459C7C8, v8, &unk_28459C7E0, 0}];

  return v9;
}

- (id)_selectPruneDateFromReferenceDateDict:(id)a3 purger:(id)a4 type:(int64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    if (!v7)
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
    v9 = [v7 objectForKeyedSubscript:v11];
  }

  return v9;
}

- (void)_purgeWithType:(int64_t)a3 referenceDate:(id)a4 handler:(id)a5
{
  v83[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v60 = dispatch_semaphore_create(0);
  v9 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(NSArray *)self->_purgers count];
      v12 = [objc_opt_class() purgeTypeToString:a3];
      *buf = 134218242;
      *&buf[4] = v11;
      v81 = 2112;
      v82 = v12;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "starting purge with %lu purgers, type, %@", buf, 0x16u);
    }
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  if (a3)
  {
    v59 = 0;
  }

  else
  {
    v59 = [(RTPurgeManager *)self _generatePeriodicPurgeReferenceDateDict];
  }

  v53 = v13;
  v54 = v8;
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
    v58 = self;
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v74 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v73 + 1) + 8 * i);
        v18 = [*(v15 + 2728) date];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            [objc_opt_class() purgeTypeToString:a3];
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
          v24 = [(RTPurgeManager *)self _selectPruneDateFromReferenceDateDict:v59 purger:v17 type:a3];

          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __55__RTPurgeManager__purgeWithType_referenceDate_handler___block_invoke;
          v68[3] = &unk_2788C5F28;
          v68[4] = v17;
          v68[5] = self;
          v72 = a3;
          v69 = v18;
          v70 = v9;
          v25 = v60;
          v71 = v25;
          [v17 performPurgeOfType:a3 referenceDate:v24 completion:v68];
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
            v34 = [MEMORY[0x277CCACC8] callStackSymbols];
            v35 = [v34 filteredArrayUsingPredicate:v33];
            v36 = [v35 firstObject];

            [v32 submitToCoreAnalytics:v36 type:1 duration:v31];
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
          v7 = v24;
          self = v58;
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
    v48 = 0;
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
    v48 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:9 userInfo:v47];

    if (!v54)
    {
      goto LABEL_34;
    }

LABEL_33:
    (v44)[2](v44, v48);
    goto LABEL_34;
  }

  v48 = [v9 firstObject];
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
      v50 = [objc_opt_class() purgeTypeToString:a3];
      v51 = [*(v15 + 2728) date];
      [v51 timeIntervalSinceDate:v45];
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

- (void)setPressureState:(int64_t)a3
{
  if (self->_pressureState != a3)
  {
    self->_pressureState = a3;
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
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTPurgeManager_handleLanguageChangeNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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

  v4 = [MEMORY[0x277CBEAA8] date];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__RTPurgeManager__handleLanguageChangeNotification__block_invoke;
  v5[3] = &unk_2788C4730;
  v5[4] = self;
  [(RTPurgeManager *)self _purgeWithType:3 referenceDate:v4 handler:v5];
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

- (id)_shortTermReferenceDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 dateByAddingTimeInterval:-604800.0];
    v7 = [v5 dateByAddingTimeInterval:-259200.0];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v7];
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

    v6 = [MEMORY[0x277CBEAA8] date];
    v14 = [v6 dateByAddingTimeInterval:-604800.0];
  }

  return v14;
}

- (id)_determinePruneDate:(id)a3 boundaryInterval:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 startDate];
  v8 = [v7 laterDate:v6];

  v9 = [v5 endDate];

  v10 = [v8 earlierDate:v9];

  return v10;
}

- (id)_cacheDateDependencyForVisitWithDateInterval:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v8 = [v4 startDate];
    goto LABEL_22;
  }

  if (v5)
  {
    v9 = [v5 exit];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v5 entry];
    }

    v12 = v11;
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
        v14 = [v12 stringFromDate];
      }

      else
      {
        v14 = @"nil";
      }

      *buf = 138412290;
      v18 = v14;
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

  v8 = [(RTPurgeManager *)self _determinePruneDate:v12 boundaryInterval:v4];

LABEL_22:

  return v8;
}

- (id)_lastVisitWithError:(id *)a3
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = [(RTPurgeManager *)self visitStore];

  if (!v4)
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
  v10 = [(RTPurgeManager *)self visitStore];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __38__RTPurgeManager__lastVisitWithError___block_invoke;
  v39[3] = &unk_2788C4490;
  v41 = v54;
  v42 = &v43;
  v11 = v9;
  v40 = v11;
  [v10 fetchVisitsWithOptions:v8 handler:v39];

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
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [v20 filteredArrayUsingPredicate:v19];
    v22 = [v21 firstObject];

    [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
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

  if (a3 && v44[5])
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
    *a3 = v44[5];
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

- (id)_cacheDateDependencyUnlabeledLearnedVisitWithDateInterval:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v8 = [v4 startDate];
    goto LABEL_19;
  }

  if (v5)
  {
    v9 = [v5 entryDate];
  }

  else
  {
    v9 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v9)
      {
        v11 = [v9 stringFromDate];
      }

      else
      {
        v11 = @"nil";
      }

      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "_cacheDateDependencyUnlabeledLearnedVisitWithDateInterval unlabeled firstVisit.entryDate is %@", buf, 0xCu);
      if (v9)
      {
      }
    }
  }

  if (!v9)
  {
    goto LABEL_5;
  }

  v8 = [(RTPurgeManager *)self _determinePruneDate:v9 boundaryInterval:v4];

LABEL_19:

  return v8;
}

- (id)_firstUnlabeledLearnedVisitWithError:(id *)a3
{
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = [(RTPurgeManager *)self learnedLocationStore];

  if (!v5)
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
  v8 = [(RTPurgeManager *)self learnedLocationStore];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __55__RTPurgeManager__firstUnlabeledLearnedVisitWithError___block_invoke;
  v36[3] = &unk_2788C4490;
  v38 = v51;
  v39 = &v40;
  v9 = v7;
  v37 = v9;
  [v8 fetchVisitsWithoutPlacesForCurrentDeviceWithHandler:v36 limit:&unk_28459C7F8];

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
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
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

  if (a3 && v41[5])
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
    *a3 = v41[5];
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

- (id)_cacheDateDependencyLabeledLearnedVisitWithDateInterval:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v8 = [v4 startDate];
    goto LABEL_19;
  }

  if (v5)
  {
    v9 = [v5 exitDate];
  }

  else
  {
    v9 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v9)
      {
        v11 = [v9 stringFromDate];
      }

      else
      {
        v11 = @"nil";
      }

      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "_cacheDateDependencyLabeledLearnedVisitWithDateInterval, labeled lastVisit.exitDate is %@", buf, 0xCu);
      if (v9)
      {
      }
    }
  }

  if (!v9)
  {
    goto LABEL_5;
  }

  v8 = [(RTPurgeManager *)self _determinePruneDate:v9 boundaryInterval:v4];

LABEL_19:

  return v8;
}

- (id)_cacheDateDependencyMomentsWithDateInterval:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [(RTPurgeManager *)self platform];
  v8 = [v7 iPhoneDevice];

  if (v8)
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
    v11 = [v9 sharedInstance];
    v12 = [v11 onboardingFlowCompletionStatus];

    if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v13 = [v5 startDate];

      v6 = v13;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = NSStringFromSelector(a2);
        v16 = [v6 stringFromDate];
        *buf = 138412802;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        v23 = v16;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, onboarding flow completion status, %lu, earliest date required by moments, %@", buf, 0x20u);
      }
    }
  }

  return v6;
}

- (id)_lastLabeledLearnedVisitWithError:(id *)a3
{
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = [(RTPurgeManager *)self learnedLocationStore];

  if (!v5)
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
  v8 = [(RTPurgeManager *)self learnedLocationStore];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __52__RTPurgeManager__lastLabeledLearnedVisitWithError___block_invoke;
  v36[3] = &unk_2788C61C0;
  v38 = v51;
  v39 = &v40;
  v9 = v7;
  v37 = v9;
  [v8 fetchLastVisitWithHandler:v36];

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
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
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

  if (a3 && v41[5])
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
    *a3 = v41[5];
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