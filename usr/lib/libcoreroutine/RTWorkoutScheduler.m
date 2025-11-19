@interface RTWorkoutScheduler
+ (id)taskStateToString:(unint64_t)a3;
+ (id)taskTypeToString:(unint64_t)a3;
- (BOOL)_deviceEligible;
- (BOOL)_didClusterAndSyncOccurInLastInterval;
- (BOOL)_isEligibibleForRelevanceScoreUpdateRetry;
- (BOOL)_isEligibleForClusterAndSync;
- (BOOL)_isEligibleForInitialClusterAndSync;
- (BOOL)_isEligibleForPruneDistanceMatrix;
- (BOOL)_isPasscodeDisabled;
- (BOOL)_isSchedulingWorkDone;
- (BOOL)_isVersionChangeDetected;
- (RTWorkoutScheduler)initWithBatteryManager:(id)a3 dataProtectionManager:(id)a4 workoutRouteManager:(id)a5 healthKitManager:(id)a6 locationManager:(id)a7 defaultsManager:(id)a8 platform:(id)a9 xpcActivityManager:(id)a10;
- (RTWorkoutScheduler)initWithBatteryManager:(id)a3 dataProtectionManager:(id)a4 workoutRouteManager:(id)a5 healthKitManager:(id)a6 locationManager:(id)a7 defaultsManager:(id)a8 timerManager:(id)a9 platform:(id)a10 xpcActivityManager:(id)a11;
- (int64_t)_chargerConnectionState;
- (unint64_t)topNWorkoutsWithIncrement:(unint64_t)a3;
- (void)_clearOutSchedulerState;
- (void)_evaluateSchedulingTaskPriority;
- (void)_evaluateVersionChange;
- (void)_getCurrentLocationAndMonitorForRegion;
- (void)_handleVersionChange;
- (void)_onClusteringTimerExpiry;
- (void)_onCurrentLocationUpdate:(id)a3;
- (void)_onDailyXPCActivity;
- (void)_onDataProtectionNotification:(id)a3;
- (void)_onHealthKitNotification;
- (void)_onLayoutMonitorUpdateDisplayBacklightLevelNotification:(int64_t)a3;
- (void)_registerForCircularRegionEvents;
- (void)_scheduleClusteringTask:(unint64_t)a3;
- (void)_schedulePruneDistanceMatrix;
- (void)_scheduleSingleWorkoutClustering;
- (void)_scheduleUpdateRelevanceScore;
- (void)_scheduleWorkoutComparisonIfCharging;
- (void)_setup;
- (void)_setupDisplayLayoutMonitor;
- (void)_shutdownWithHandler:(id)a3;
- (void)_startClusteringDeferralTimerWithLatency:(double)a3;
- (void)clearTaskStatesWithHandler:(id)a3;
- (void)handleCircularRegionCallback:(int64_t)a3 region:(id)a4 clientIdentifier:(id)a5;
- (void)layoutMonitorDidUpdateDisplayLayout:(id)a3 withContext:(id)a4;
- (void)logTaskStates;
- (void)onCurrentLocationUpdate:(id)a3;
- (void)onDataProtectionNotification:(id)a3;
- (void)onHealthKitNotification;
- (void)readTaskStates;
- (void)saveTaskStates;
- (void)setCurrentNWorkouts:(unint64_t)a3;
- (void)setLastClusterAndSyncDate:(id)a3;
- (void)setLastPruneDistanceMatrixDate:(id)a3;
- (void)setLastRelevanceScoreUpdateDate:(id)a3;
- (void)setLastSingleWorkoutClusteringDate:(id)a3;
- (void)setLastWorkoutComparisonDate:(id)a3;
- (void)setSingleWorkoutClusteringTaskState:(unint64_t)a3;
- (void)setUpdateRelevanceScoreTaskState:(unint64_t)a3;
@end

@implementation RTWorkoutScheduler

+ (id)taskStateToString:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"RTWorkoutSchedulerTaskStateUnknown";
  }

  else
  {
    return off_2788D36E0[a3 - 1];
  }
}

+ (id)taskTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D36F8[a3 - 1];
  }
}

- (RTWorkoutScheduler)initWithBatteryManager:(id)a3 dataProtectionManager:(id)a4 workoutRouteManager:(id)a5 healthKitManager:(id)a6 locationManager:(id)a7 defaultsManager:(id)a8 platform:(id)a9 xpcActivityManager:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = objc_alloc_init(RTTimerManager);
  v26 = [(RTWorkoutScheduler *)self initWithBatteryManager:v24 dataProtectionManager:v23 workoutRouteManager:v22 healthKitManager:v21 locationManager:v20 defaultsManager:v19 timerManager:v25 platform:v18 xpcActivityManager:v17];

  return v26;
}

- (RTWorkoutScheduler)initWithBatteryManager:(id)a3 dataProtectionManager:(id)a4 workoutRouteManager:(id)a5 healthKitManager:(id)a6 locationManager:(id)a7 defaultsManager:(id)a8 timerManager:(id)a9 platform:(id)a10 xpcActivityManager:(id)a11
{
  v17 = a3;
  obj = a4;
  v18 = a4;
  v35 = a5;
  v19 = a5;
  v36 = a6;
  v20 = a6;
  v37 = a7;
  v21 = a7;
  v38 = a8;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v40 = v17;
  if (!v17)
  {
    v26 = v25;
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: batteryManager";
LABEL_31:
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    goto LABEL_32;
  }

  if (!v18)
  {
    v26 = v25;
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: dataProtectionManager";
    goto LABEL_31;
  }

  if (!v19)
  {
    v26 = v25;
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: workoutRouteManager";
    goto LABEL_31;
  }

  if (!v20)
  {
    v26 = v25;
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: healthKitManager";
    goto LABEL_31;
  }

  if (!v21)
  {
    v26 = v25;
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_31;
  }

  if (!v22)
  {
    v26 = v25;
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_31;
  }

  if (!v23)
  {
    v26 = v25;
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_31;
  }

  if (!v24)
  {
    v26 = v25;
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: platform";
    goto LABEL_31;
  }

  v26 = v25;
  if (!v25)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v32 = "Invalid parameter not satisfying: xpcActivityManager";
      goto LABEL_31;
    }

LABEL_32:

    v30 = 0;
    v29 = self;
    goto LABEL_33;
  }

  v41.receiver = self;
  v41.super_class = RTWorkoutScheduler;
  v27 = [(RTNotifier *)&v41 init];
  p_isa = &v27->super.super.super.isa;
  if (v27)
  {
    objc_storeStrong(&v27->_batteryManager, a3);
    objc_storeStrong(p_isa + 6, obj);
    objc_storeStrong(p_isa + 7, v35);
    objc_storeStrong(p_isa + 8, v36);
    objc_storeStrong(p_isa + 9, v37);
    objc_storeStrong(p_isa + 11, v38);
    objc_storeStrong(p_isa + 10, a9);
    objc_storeStrong(p_isa + 12, a10);
    objc_storeStrong(p_isa + 5, a11);
    [p_isa setup];
  }

  v29 = p_isa;
  v30 = v29;
LABEL_33:

  return v30;
}

- (void)_setup
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [[RTWorkoutSchedulerMetrics alloc] initWithDefaultsManager:self->_defaultsManager];
  [(RTWorkoutScheduler *)self setMetrics:v4];

  if (_os_feature_enabled_impl())
  {
    if ([(RTWorkoutScheduler *)self _deviceEligible])
    {
      v5 = [(RTWorkoutScheduler *)self defaultsManager];
      [v5 setObject:MEMORY[0x277CBEC38] forKey:@"RTDefaultsWorkoutSchedulerMetricsIsDeviceEligibleKey"];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Starting Workout Scheduler", buf, 2u);
        }
      }

      self->_singleWorkoutClusteringTaskState = 0;
      self->_updateRelevanceScoreTaskState = 0;
      self->_currentNWorkouts = 0;
      [(RTWorkoutScheduler *)self readTaskStates];
      v7 = [(RTWorkoutScheduler *)self lastPruneDistanceMatrixDate];

      if (!v7)
      {
        v8 = [MEMORY[0x277CBEAA8] now];
        [(RTWorkoutScheduler *)self setLastPruneDistanceMatrixDate:v8];
      }

      v9 = [(RTWorkoutScheduler *)self healthKitManager];
      v10 = +[(RTNotification *)RTHealthKitManagerNewWorkoutForRaceRouteNotification];
      [v9 addObserver:self selector:sel_onHealthKitNotification name:v10];

      v11 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:1 networkTransferDirection:1 allowBattery:86400.0 powerNap:60.0];
      v12 = [(RTWorkoutScheduler *)self xpcActivityManager];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __28__RTWorkoutScheduler__setup__block_invoke;
      v22[3] = &unk_2788D3620;
      v22[4] = self;
      [v12 registerActivityWithIdentifier:@"com.apple.routined.workoutScheduler.daily" criteria:v11 handler:v22];

      [(RTWorkoutScheduler *)self _registerForCircularRegionEvents];
      [(RTWorkoutScheduler *)self _getCurrentLocationAndMonitorForRegion];
      if ([(RTWorkoutScheduler *)self _isPasscodeDisabled])
      {
        [(RTWorkoutScheduler *)self _setupDisplayLayoutMonitor];
      }

      else
      {
        dataProtectionManager = self->_dataProtectionManager;
        v18 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
        [(RTNotifier *)dataProtectionManager addObserver:self selector:sel_onDataProtectionNotification_ name:v18];
      }
    }

    else
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        *buf = 138412546;
        v24 = v20;
        v25 = 2112;
        v26 = v21;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@, %@, feature not supported on this device", buf, 0x16u);
      }

      v11 = [(RTWorkoutScheduler *)self defaultsManager];
      [(RTXPCActivityCriteria *)v11 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsWorkoutSchedulerMetricsIsDeviceEligibleKey"];
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_error_impl(&dword_2304B3000, &v11->super, OS_LOG_TYPE_ERROR, "%@, %@, feature not enabled", buf, 0x16u);
    }
  }
}

void __28__RTWorkoutScheduler__setup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__RTWorkoutScheduler__setup__block_invoke_2;
  v6[3] = &unk_2788C4938;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __28__RTWorkoutScheduler__setup__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _onDailyXPCActivity];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)_deviceEligible
{
  v3 = [(RTWorkoutScheduler *)self platform];
  if ([v3 internalInstall])
  {
    v4 = [(RTWorkoutScheduler *)self defaultsManager];
    v5 = [v4 objectForKey:@"RTDefaultsWorkoutSchedulerBypassPlatformCheckKey"];

    if (v5)
    {
      v6 = [(RTWorkoutScheduler *)self defaultsManager];
      v7 = v6;
      v8 = @"RTDefaultsWorkoutSchedulerBypassPlatformCheckKey";
LABEL_8:
      v12 = [v6 objectForKey:v8];
      v13 = [v12 BOOLValue];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [(RTWorkoutScheduler *)self platform];
  if ([v9 internalInstall])
  {
    v10 = [(RTWorkoutScheduler *)self defaultsManager];
    v11 = [v10 objectForKey:@"RTDefaultsWorkoutSchedulerBypassDeviceEligibility"];

    if (v11)
    {
      v6 = [(RTWorkoutScheduler *)self defaultsManager];
      v7 = v6;
      v8 = @"RTDefaultsWorkoutSchedulerBypassDeviceEligibility";
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [(RTWorkoutScheduler *)self platform];
  if (![v7 iPhoneDevice])
  {
    v14 = 0;
    goto LABEL_14;
  }

  v12 = [(RTWorkoutScheduler *)self platform];
  v13 = [v12 isWatchPaired];
LABEL_12:
  v14 = v13;

LABEL_14:
  return v14;
}

- (BOOL)_isPasscodeDisabled
{
  v45 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__203;
  v37 = __Block_byref_object_dispose__203;
  v38 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(RTWorkoutScheduler *)self dataProtectionManager];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __41__RTWorkoutScheduler__isPasscodeDisabled__block_invoke;
  v29 = &unk_2788C6148;
  v31 = &v39;
  v32 = &v33;
  v5 = v3;
  v30 = v5;
  [v4 fetchLockStateDisabledWithHandler:&v26];

  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v9 timeIntervalSinceDate:v7];
    v11 = v10;
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_159];
    v14 = [MEMORY[0x277CCACC8] callStackSymbols];
    v15 = [v14 filteredArrayUsingPredicate:v13];
    v16 = [v15 firstObject];

    [v12 submitToCoreAnalytics:v16 type:1 duration:v11];
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: healthKitManager", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v43 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v19];

    if (v20)
    {
      v21 = v20;

      v22 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = 1;
LABEL_8:

  v23 = v20;
  if ((v22 & 1) == 0)
  {
    objc_storeStrong(v34 + 5, v20);
  }

  v24 = *(v40 + 24);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  return v24 & 1;
}

void __41__RTWorkoutScheduler__isPasscodeDisabled__block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_isVersionChangeDetected
{
  v2 = [(RTWorkoutScheduler *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsWorkoutSchedulerVersionRaceRouteKey"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue] < 9;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_evaluateVersionChange
{
  if ([(RTWorkoutScheduler *)self _isVersionChangeDetected])
  {

    [(RTWorkoutScheduler *)self _handleVersionChange];
  }
}

- (void)_handleVersionChange
{
  v50[1] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__203;
  v43 = __Block_byref_object_dispose__203;
  v44 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = [(RTWorkoutScheduler *)self workoutRouteManager];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __42__RTWorkoutScheduler__handleVersionChange__block_invoke;
  v36[3] = &unk_2788C4618;
  v38 = &v39;
  v6 = v4;
  v37 = v6;
  LOBYTE(v35) = 1;
  [v5 processWorkoutsClearClusters:1 clearExistingDistanceMatrix:1 buildDistanceMatrix:0 syncClustersToHealhtKit:1 syncClustersToWatch:0 filteringDistanceThreshold:0x7FFFFFFFLL topNWorkouts:1.79769313e308 isSchedulerTriggered:v35 handler:v36];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_159];
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: healthKitManager", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v50[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v50 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  if (v40[5])
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      v34 = v40[5];
      *buf = 138412802;
      *&buf[4] = v32;
      v46 = 2112;
      v47 = v33;
      v48 = 2112;
      v49 = v34;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, %@, Failed to clear out Workout related Routine and HealthKit Data, error, %@", buf, 0x20u);
    }
  }

  else
  {
    [(RTWorkoutScheduler *)self _clearOutSchedulerState];
    v25 = [(RTWorkoutScheduler *)self defaultsManager];
    [v25 setObject:&unk_2845A0920 forKey:@"RTDefaultsWorkoutSchedulerVersionRaceRouteKey"];

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v24 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      v29 = [(RTWorkoutScheduler *)self defaultsManager];
      v30 = [v29 objectForKey:@"RTDefaultsWorkoutSchedulerVersionRaceRouteKey"];
      *buf = 138412802;
      *&buf[4] = v27;
      v46 = 2112;
      v47 = v28;
      v48 = 2112;
      v49 = v30;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, Successfully cleared out Routine Workout Data, Scheduler State and HealthKit Cluster data; updated version-key to disk to %@", buf, 0x20u);
    }
  }

LABEL_11:
  _Block_object_dispose(&v39, 8);
}

void __42__RTWorkoutScheduler__handleVersionChange__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_clearOutSchedulerState
{
  [(RTWorkoutScheduler *)self setCurrentNWorkouts:0];
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  [(RTWorkoutScheduler *)self setLastWorkoutComparisonDate:v3];

  v4 = [MEMORY[0x277CBEAA8] distantPast];
  [(RTWorkoutScheduler *)self setLastClusterAndSyncDate:v4];

  v5 = [MEMORY[0x277CBEAA8] distantPast];
  [(RTWorkoutScheduler *)self setLastRelevanceScoreUpdateDate:v5];

  v6 = [MEMORY[0x277CBEAA8] distantPast];
  [(RTWorkoutScheduler *)self setLastSingleWorkoutClusteringDate:v6];

  [(RTWorkoutScheduler *)self setUpdateRelevanceScoreTaskState:0];

  [(RTWorkoutScheduler *)self setSingleWorkoutClusteringTaskState:0];
}

- (void)_startClusteringDeferralTimerWithLatency:(double)a3
{
  v23 = *MEMORY[0x277D85DE8];
  clusteringDeferralTimer = self->_clusteringDeferralTimer;
  if (clusteringDeferralTimer)
  {
    [(RTTimer *)clusteringDeferralTimer invalidate];
    v7 = self->_clusteringDeferralTimer;
    self->_clusteringDeferralTimer = 0;
  }

  timerManager = self->_timerManager;
  v9 = [(RTNotifier *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__RTWorkoutScheduler__startClusteringDeferralTimerWithLatency___block_invoke;
  v16[3] = &unk_2788C4EA0;
  v16[4] = self;
  v10 = [(RTTimerManager *)timerManager timerWithIdentifier:@"RTWorkoutSchedulerClusteringTimer" queue:v9 handler:v16];
  v11 = self->_clusteringDeferralTimer;
  self->_clusteringDeferralTimer = v10;

  [(RTTimer *)self->_clusteringDeferralTimer fireWithInterval:a3];
  [(RTTimer *)self->_clusteringDeferralTimer resume];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, interval, %.2f", buf, 0x20u);
    }
  }
}

- (void)_onClusteringTimerExpiry
{
  [(RTTimer *)self->_clusteringDeferralTimer invalidate];
  clusteringDeferralTimer = self->_clusteringDeferralTimer;
  self->_clusteringDeferralTimer = 0;
}

- (void)_shutdownWithHandler:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Shutdown Workout Scheduler", buf, 2u);
    }
  }

  v6 = [(RTWorkoutScheduler *)self dataProtectionManager];
  [v6 removeObserver:self];

  v7 = [(RTWorkoutScheduler *)self displayLayoutMonitor];
  [v7 invalidate];

  v8 = [(RTWorkoutScheduler *)self locationManager];
  v10 = 0;
  [v8 stopMonitoringAllRegionsForClientIdentifier:@"RTWorkoutSchedulerRegionChange" error:&v10];

  v9 = [(RTWorkoutScheduler *)self healthKitManager];
  [v9 removeObserver:self];

  [(RTWorkoutScheduler *)self saveTaskStates];
  v4[2](v4, 0);
}

- (void)clearTaskStatesWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTWorkoutScheduler_clearTaskStatesWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __49__RTWorkoutScheduler_clearTaskStatesWithHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 48));
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@", &v14, 0x16u);
    }
  }

  v6 = [*(a1 + 32) platform];
  v7 = [v6 internalInstall];

  if (v7)
  {
    [*(a1 + 32) setSingleWorkoutClusteringTaskState:0];
    [*(a1 + 32) setUpdateRelevanceScoreTaskState:0];
    [*(a1 + 32) setCurrentNWorkouts:0];
    v8 = [MEMORY[0x277CBEAA8] distantPast];
    [*(a1 + 32) setLastWorkoutComparisonDate:v8];

    v9 = [MEMORY[0x277CBEAA8] distantPast];
    [*(a1 + 32) setLastClusterAndSyncDate:v9];

    v10 = [MEMORY[0x277CBEAA8] distantPast];
    [*(a1 + 32) setLastSingleWorkoutClusteringDate:v10];

    v11 = [MEMORY[0x277CBEAA8] distantPast];
    [*(a1 + 32) setLastRelevanceScoreUpdateDate:v11];

    v12 = [MEMORY[0x277CBEAA8] distantPast];
    [*(a1 + 32) setLastPruneDistanceMatrixDate:v12];

    [*(a1 + 32) saveTaskStates];
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }
}

- (void)saveTaskStates
{
  defaultsManager = self->_defaultsManager;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_singleWorkoutClusteringTaskState];
  [(RTDefaultsManager *)defaultsManager setObject:v4 forKey:@"RTDefaultsWorkoutSchedulerSingleWorkoutClusteringKey"];

  v5 = self->_defaultsManager;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_updateRelevanceScoreTaskState];
  [(RTDefaultsManager *)v5 setObject:v6 forKey:@"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreKey"];

  v7 = self->_defaultsManager;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentNWorkouts];
  [(RTDefaultsManager *)v7 setObject:v8 forKey:@"RTDefaultsWorkoutSchedulerTopNWorkoutsKey"];

  [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastWorkoutComparisonDate forKey:@"RTDefaultsWorkoutSchedulerIncrementalWorkoutComparisonDateKey"];
  [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastClusterAndSyncDate forKey:@"RTDefaultsWorkoutSchedulerClusterAndSyncDateKey"];
  [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastSingleWorkoutClusteringDate forKey:@"RTDefaultsWorkoutSchedulerSingleWorkoutClusteringDateKey"];
  [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastRelevanceScoreUpdateDate forKey:@"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreDateKey"];
  v9 = self->_defaultsManager;
  lastPruneDistanceMatrixDate = self->_lastPruneDistanceMatrixDate;

  [(RTDefaultsManager *)v9 setObject:lastPruneDistanceMatrixDate forKey:@"RTDefaultsWorkoutSchedulerPruneDistanceMatrixDateKey"];
}

- (void)readTaskStates
{
  v3 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerSingleWorkoutClusteringKey"];
  self->_singleWorkoutClusteringTaskState = [v3 unsignedIntegerValue];

  v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreKey"];
  self->_updateRelevanceScoreTaskState = [v4 unsignedIntegerValue];

  v5 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerTopNWorkoutsKey"];
  self->_currentNWorkouts = [v5 unsignedIntegerValue];

  v6 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerIncrementalWorkoutComparisonDateKey"];
  lastWorkoutComparisonDate = self->_lastWorkoutComparisonDate;
  self->_lastWorkoutComparisonDate = v6;

  v8 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerClusterAndSyncDateKey"];
  lastClusterAndSyncDate = self->_lastClusterAndSyncDate;
  self->_lastClusterAndSyncDate = v8;

  v10 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerSingleWorkoutClusteringDateKey"];
  lastSingleWorkoutClusteringDate = self->_lastSingleWorkoutClusteringDate;
  self->_lastSingleWorkoutClusteringDate = v10;

  v12 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreDateKey"];
  lastRelevanceScoreUpdateDate = self->_lastRelevanceScoreUpdateDate;
  self->_lastRelevanceScoreUpdateDate = v12;

  self->_lastPruneDistanceMatrixDate = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerPruneDistanceMatrixDateKey"];

  MEMORY[0x2821F96F8]();
}

- (void)logTaskStates
{
  v33 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      v8 = [(NSDate *)self->_lastClusterAndSyncDate stringFromDate];
      v9 = [(NSDate *)self->_lastWorkoutComparisonDate stringFromDate];
      currentNWorkouts = self->_currentNWorkouts;
      v10 = [RTWorkoutScheduler taskStateToString:self->_singleWorkoutClusteringTaskState];
      v11 = [(NSDate *)self->_lastSingleWorkoutClusteringDate stringFromDate];
      v12 = [RTWorkoutScheduler taskStateToString:self->_updateRelevanceScoreTaskState];
      v13 = [(NSDate *)self->_lastRelevanceScoreUpdateDate stringFromDate];
      *buf = 138414338;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2048;
      v24 = currentNWorkouts;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, lastClusterAndSyncDate, %@, lastWorkoutComparisonDate, %@, processed workouts, %lu, singleWorkoutClustering, %@, date, %@, relevanceScoreUpdate, %@, date, %@", buf, 0x5Cu);
    }
  }
}

- (BOOL)_isSchedulingWorkDone
{
  v3 = [(RTWorkoutScheduler *)self lastWorkoutComparisonDate];
  if (v3)
  {
    v4 = v3;
    v5 = [(RTWorkoutScheduler *)self lastClusterAndSyncDate];

    if (!v5 || -[RTWorkoutScheduler _isEligibleForPruneDistanceMatrix](self, "_isEligibleForPruneDistanceMatrix") || -[RTWorkoutScheduler totalWorkouts](self, "totalWorkouts") && ((v6 = -[RTWorkoutScheduler currentNWorkouts](self, "currentNWorkouts"), v6 != -[RTWorkoutScheduler totalWorkouts](self, "totalWorkouts")) || (-[RTWorkoutScheduler lastClusterAndSyncDate](self, "lastClusterAndSyncDate"), v7 = objc_claimAutoreleasedReturnValue(), -[RTWorkoutScheduler lastWorkoutComparisonDate](self, "lastWorkoutComparisonDate"), v8 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceDate:v8], v10 = v9, v8, v7, v10 <= 0.0)))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v11 = [(RTWorkoutScheduler *)self defaultsManager];
      v12 = [MEMORY[0x277CBEAA8] now];
      [v11 setObject:v12 forKey:@"RTDefaultsWorkoutSchedulerWorldBuildFinishTimeKey"];

      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)_isEligibleForInitialClusterAndSync
{
  v3 = [(RTWorkoutScheduler *)self currentNWorkouts];
  if (!v3)
  {
    v4 = [(RTWorkoutScheduler *)self defaultsManager];
    v5 = [MEMORY[0x277CBEAA8] now];
    [v4 setObject:v5 forKey:@"RTDefaultsWorkoutSchedulerWorldBuildStartTimeKey"];

    v6 = [(RTWorkoutScheduler *)self defaultsManager];
    v7 = [MEMORY[0x277CBEAA8] distantFuture];
    [v6 setObject:v7 forKey:@"RTDefaultsWorkoutSchedulerWorldBuildFinishTimeKey"];
  }

  return v3 == 0;
}

- (BOOL)_didClusterAndSyncOccurInLastInterval
{
  v3 = [(RTWorkoutScheduler *)self platform];
  if ([v3 internalInstall])
  {
    v4 = [(RTWorkoutScheduler *)self defaultsManager];
    v5 = [v4 objectForKey:@"RTWorkoutSchedulerClusterAndSyncIntervalOverrideKey"];

    if (!v5)
    {
      v8 = 86400.0;
      goto LABEL_6;
    }

    v3 = [(RTWorkoutScheduler *)self defaultsManager];
    v6 = [v3 objectForKey:@"RTWorkoutSchedulerClusterAndSyncIntervalOverrideKey"];
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 86400.0;
  }

LABEL_6:
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [(RTWorkoutScheduler *)self lastClusterAndSyncDate];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11 < v8;

  return v12;
}

- (BOOL)_isEligibleForClusterAndSync
{
  v3 = [(RTWorkoutScheduler *)self lastClusterAndSyncDate];
  if (v3)
  {
    if ([(RTWorkoutScheduler *)self _didClusterAndSyncOccurInLastInterval])
    {
      v4 = 0;
    }

    else
    {
      v5 = [(RTWorkoutScheduler *)self lastWorkoutComparisonDate];
      v6 = [(RTWorkoutScheduler *)self lastClusterAndSyncDate];
      [v5 timeIntervalSinceDate:v6];
      v4 = v7 > 0.0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_isEligibibleForRelevanceScoreUpdateRetry
{
  v3 = [(RTWorkoutScheduler *)self lastRelevanceScoreUpdateDate];
  if (v3)
  {
    v4 = v3;
    v5 = [(RTWorkoutScheduler *)self lastRelevanceScoreUpdateDate];
    v6 = [MEMORY[0x277CBEAA8] distantPast];
    v7 = [v5 isEqualToDate:v6];
    LOBYTE(v3) = (v7 & 1) == 0 && ([MEMORY[0x277CBEAA8] date], v8 = ;
  }

  return v3;
}

- (BOOL)_isEligibleForPruneDistanceMatrix
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [(RTWorkoutScheduler *)self lastPruneDistanceMatrixDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5 > 604800.0;

  return v6;
}

- (void)onDataProtectionNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__RTWorkoutScheduler_onDataProtectionNotification___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v5, v10);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 name];
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 name];
      *buf = 138412802;
      v13 = v9;
      v14 = 2080;
      v15 = "[RTWorkoutScheduler onDataProtectionNotification:]";
      v16 = 1024;
      v17 = 588;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onDataProtectionNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138412802;
      v11 = v9;
      v12 = 2080;
      v13 = "[RTWorkoutScheduler _onDataProtectionNotification:]";
      v14 = 1024;
      v15 = 595;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unknown notification class, %@ (in %s:%d)", &v10, 0x1Cu);
    }
  }

  -[RTWorkoutScheduler setEncryptedDataAvailability:](self, "setEncryptedDataAvailability:", [v4 availability]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [RTDataProtectionManager encryptedDataAvailabilityToString:[(RTWorkoutScheduler *)self encryptedDataAvailability]];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Received keybag notification, %@", &v10, 0xCu);
    }
  }

  if ([(RTWorkoutScheduler *)self encryptedDataAvailability]== 3)
  {
    [(RTWorkoutScheduler *)self _evaluateVersionChange];
    [(RTWorkoutScheduler *)self _evaluateSchedulingTaskPriority];
  }
}

- (void)_evaluateSchedulingTaskPriority
{
  v57 = *MEMORY[0x277D85DE8];
  [(RTWorkoutScheduler *)self logTaskStates];
  if (self->_clusteringDeferralTimer)
  {
    v4 = [(RTWorkoutScheduler *)self defaultsManager];
    v5 = [v4 objectForKey:@"RTDefaultsWorkoutSchedulerBypassBackoffTimerKey"];
    v6 = [v5 BOOLValue];

    if ((v6 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = NSStringFromSelector(a2);
          *buf = 138412802;
          v48 = v28;
          v49 = 2112;
          v50 = v29;
          v51 = 2048;
          v52 = 0x40AC200000000000;
          _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, defering attempt to perform tasks; pending backoff timer:  main entry point happens only once per %.2f sec", buf, 0x20u);
        }
      }

      v12 = [(RTWorkoutScheduler *)self metrics];
      v13 = v12;
      v14 = @"RTDefaultsWorkoutSchedulerMetricsBackoffTimerDeferralDailyCount";
      goto LABEL_22;
    }
  }

  [(RTWorkoutScheduler *)self _startClusteringDeferralTimerWithLatency:3600.0];
  if ([(RTWorkoutScheduler *)self checkRoutinedFootprint])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        +[RTRuntime footprint];
        *buf = 138413058;
        v48 = v9;
        v49 = 2112;
        v50 = v10;
        v51 = 2048;
        v52 = v11;
        v53 = 2048;
        v54 = 18;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, defering attempt to cluster; exceeding memory threshold, current footprint, %.4f MB, footprint threshold, %lu MB", buf, 0x2Au);
      }
    }

    v12 = [(RTWorkoutScheduler *)self metrics];
    v13 = v12;
    v14 = @"RTDefaultsWorkoutSchedulerMetricsMemoryFootprintDeferralDailyCount";
LABEL_22:
    [v12 incrementMetricDefaultForKey:v14];
    goto LABEL_23;
  }

  v15 = [(RTWorkoutScheduler *)self healthKitManager];
  [v15 createNewWorkoutClusterStore];

  v16 = [(RTWorkoutScheduler *)self healthKitManager];
  v17 = [(RTWorkoutScheduler *)self healthKitManager];
  v18 = [v17 _getWorkoutDefaultStartDateForRaceRoute];
  v46 = 0;
  v19 = [v16 getWorkoutsCountWithStartDate:v18 nearLocation:0 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:&v46 error:1.79769313e308];
  v13 = v46;
  [(RTWorkoutScheduler *)self setTotalWorkouts:v19];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      v24 = [(RTWorkoutScheduler *)self currentNWorkouts];
      v25 = [(RTWorkoutScheduler *)self totalWorkouts];
      *buf = 138413314;
      v48 = v22;
      v49 = 2112;
      v50 = v23;
      v51 = 2048;
      v52 = v24;
      v53 = 2048;
      v54 = v25;
      v55 = 2112;
      v56 = v13;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, remaining work, current, %lu, total, %lu, error, %@", buf, 0x34u);
    }
  }

  if (!v13)
  {
    if ([(RTWorkoutScheduler *)self _isEligibibleForRelevanceScoreUpdateRetry])
    {
      [(RTWorkoutScheduler *)self setUpdateRelevanceScoreTaskState:2];
LABEL_16:
      [(RTWorkoutScheduler *)self _scheduleUpdateRelevanceScore];
LABEL_28:
      v13 = 0;
      goto LABEL_23;
    }

    v30 = [(RTWorkoutScheduler *)self currentNWorkouts];
    if (v30 > [(RTWorkoutScheduler *)self totalWorkouts])
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        v43 = [(RTWorkoutScheduler *)self currentNWorkouts];
        v44 = [(RTWorkoutScheduler *)self totalWorkouts];
        *buf = 138413314;
        v48 = v41;
        v49 = 2112;
        v50 = v42;
        v51 = 2048;
        v52 = v43;
        v53 = 2048;
        v54 = v44;
        v55 = 2112;
        v56 = 0;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, Failed Scheduler State; currentNWorkouts(topN) shouldn't be more than totalWorkouts, current %lu, total, %lu, error, %@", buf, 0x34u);
      }

      goto LABEL_27;
    }

    if ([(RTWorkoutScheduler *)self _isSchedulingWorkDone])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412546;
      v48 = v33;
      v49 = 2112;
      v50 = v34;
      v35 = "%@, %@, scheduling work is done";
    }

    else
    {
      if ([(RTWorkoutScheduler *)self _isEligibleForInitialClusterAndSync])
      {
        [(RTWorkoutScheduler *)self _scheduleClusteringTask:1];
        goto LABEL_16;
      }

      if ([(RTWorkoutScheduler *)self _isEligibleForClusterAndSync])
      {
        [(RTWorkoutScheduler *)self _scheduleClusteringTask:3];
        v36 = [MEMORY[0x277CBEAA8] date];
        v37 = [(RTWorkoutScheduler *)self lastRelevanceScoreUpdateDate];
        [v36 timeIntervalSinceDate:v37];
        v39 = v38;

        if (v39 <= 86400.0 || [(RTWorkoutScheduler *)self updateRelevanceScoreTaskState]== 1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      if ([(RTWorkoutScheduler *)self _isEligibleForWorkoutComparison])
      {
        [(RTWorkoutScheduler *)self _scheduleClusteringTask:2];
        goto LABEL_28;
      }

      if ([(RTWorkoutScheduler *)self _isEligibleForPruneDistanceMatrix])
      {
        [(RTWorkoutScheduler *)self _schedulePruneDistanceMatrix];
        goto LABEL_28;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
LABEL_27:

        goto LABEL_28;
      }

      v45 = objc_opt_class();
      v33 = NSStringFromClass(v45);
      v34 = NSStringFromSelector(a2);
      *buf = 138412546;
      v48 = v33;
      v49 = 2112;
      v50 = v34;
      v35 = "%@, %@, no eligble tasks at this time";
    }

    _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, v35, buf, 0x16u);

    goto LABEL_27;
  }

LABEL_23:
}

- (void)onHealthKitNotification
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__RTWorkoutScheduler_onHealthKitNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_onHealthKitNotification
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "Received new workout from HK", v4, 2u);
    }
  }

  if ([(RTWorkoutScheduler *)self encryptedDataAvailability]== 2)
  {
    [(RTWorkoutScheduler *)self _scheduleSingleWorkoutClustering];
  }

  else
  {
    [(RTWorkoutScheduler *)self setSingleWorkoutClusteringTaskState:2];
    if (self->_clusteringDeferralTimer)
    {
      [(RTWorkoutScheduler *)self _startClusteringDeferralTimerWithLatency:600.0];
    }
  }
}

- (void)_scheduleSingleWorkoutClustering
{
  [(RTWorkoutScheduler *)self setSingleWorkoutClusteringTaskState:3];
  v4 = [(RTWorkoutScheduler *)self metrics];
  [v4 startCollectMetricsTaskType:6 totalNAtStart:{-[RTWorkoutScheduler totalWorkouts](self, "totalWorkouts")}];

  v5 = [(RTWorkoutScheduler *)self healthKitManager];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v7 = [(RTWorkoutScheduler *)self healthKitManager];
  v8 = [v7 _getRTWorkoutDefaultTypesForRaceRoute];
  v14 = 0;
  v9 = [v5 getLatestWorkoutWithStartDate:v6 nearLocation:0 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:v8 workoutTypes:&v14 error:1.79769313e308];
  v10 = v14;

  if (v9)
  {
    v11 = [(RTWorkoutScheduler *)self workoutRouteManager];
    v12 = [v9 UUID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__RTWorkoutScheduler__scheduleSingleWorkoutClustering__block_invoke;
    v13[3] = &unk_2788C4D10;
    v13[4] = self;
    v13[5] = a2;
    [v11 processNewlyAddedWorkout:v12 handler:v13];
  }
}

void __54__RTWorkoutScheduler__scheduleSingleWorkoutClustering__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTWorkoutScheduler__scheduleSingleWorkoutClustering__block_invoke_2;
  block[3] = &unk_2788C5020;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  block[4] = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

void __54__RTWorkoutScheduler__scheduleSingleWorkoutClustering__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, finished, error, %@", &v9, 0x20u);
    }
  }

  v7 = [*(a1 + 32) metrics];
  [v7 stopCollectMetricsTaskType:6];

  if (!*(a1 + 40))
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setLastSingleWorkoutClusteringDate:v8];

    [*(a1 + 32) setSingleWorkoutClusteringTaskState:1];
  }
}

- (void)_scheduleClusteringTask:(unint64_t)a3
{
  v6 = 1;
  switch(a3)
  {
    case 1uLL:
      v7 = 30;
      goto LABEL_7;
    case 3uLL:
      v8 = 0;
      v9 = 0;
      v10 = 1;
LABEL_8:
      v11 = [(RTWorkoutScheduler *)self metrics];
      [v11 startCollectMetricsTaskType:v10 totalNAtStart:{-[RTWorkoutScheduler totalWorkouts](self, "totalWorkouts")}];

      v12 = [(RTWorkoutScheduler *)self workoutRouteManager];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __46__RTWorkoutScheduler__scheduleClusteringTask___block_invoke;
      v15[3] = &unk_2788D3670;
      v15[4] = self;
      v15[5] = a2;
      v15[6] = a3;
      v15[7] = v9;
      v15[8] = v10;
      LOBYTE(v14) = 1;
      [v12 processWorkoutsClearClusters:0 clearExistingDistanceMatrix:0 buildDistanceMatrix:v8 syncClustersToHealhtKit:v6 syncClustersToWatch:v6 filteringDistanceThreshold:v9 topNWorkouts:1.79769313e308 isSchedulerTriggered:v14 handler:v15];

      return;
    case 2uLL:
      v6 = 0;
      v7 = 10;
LABEL_7:
      v9 = [(RTWorkoutScheduler *)self topNWorkoutsWithIncrement:v7];
      v8 = 1;
      v10 = a3;
      goto LABEL_8;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "RTWorkoutSchedulerTaskTypeUnknown Error", buf, 2u);
  }
}

void __46__RTWorkoutScheduler__scheduleClusteringTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__RTWorkoutScheduler__scheduleClusteringTask___block_invoke_2;
  v8[3] = &unk_2788D3648;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v11 = *(a1 + 48);
  v8[4] = v5;
  v12 = *(a1 + 64);
  v7 = v3;
  dispatch_async(v4, v8);
}

void __46__RTWorkoutScheduler__scheduleClusteringTask___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = [objc_opt_class() taskTypeToString:*(a1 + 56)];
      v7 = *(a1 + 64);
      v8 = *(a1 + 40);
      v19 = 138413314;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      v25 = 2048;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, taskType, %@, processed %lu workouts, error, %@", &v19, 0x34u);
    }
  }

  v9 = [*(a1 + 32) metrics];
  [v9 stopCollectMetricsTaskType:*(a1 + 72)];

  if (!*(a1 + 40))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = *(a1 + 56);
    if (v11 != 3)
    {
      if (v11 == 2)
      {
        [*(a1 + 32) setCurrentNWorkouts:*(a1 + 64)];
        [*(a1 + 32) setLastWorkoutComparisonDate:v10];
LABEL_12:
        [*(a1 + 32) logTaskStates];
        [*(a1 + 32) saveTaskStates];
        if (*(a1 + 56) != 1)
        {
          v12 = [*(a1 + 32) currentNWorkouts];
          if (v12 < [*(a1 + 32) totalWorkouts])
          {
            v13 = *(a1 + 56);
            if (v13 != 3)
            {
              if (v13 == 2)
              {
                [*(a1 + 32) _scheduleWorkoutComparisonIfCharging];
              }

              else
              {
                v14 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v15 = objc_opt_class();
                  v16 = NSStringFromClass(v15);
                  v17 = NSStringFromSelector(*(a1 + 48));
                  v18 = *(a1 + 56);
                  v19 = 138412802;
                  v20 = v16;
                  v21 = 2112;
                  v22 = v17;
                  v23 = 2048;
                  v24 = v18;
                  _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, %@, Unhandled task state transition, taskType, %lu", &v19, 0x20u);
                }
              }
            }
          }
        }

        return;
      }

      if (v11 != 1)
      {
        goto LABEL_12;
      }

      [*(a1 + 32) setCurrentNWorkouts:*(a1 + 64)];
      [*(a1 + 32) setLastWorkoutComparisonDate:v10];
    }

    [*(a1 + 32) setLastClusterAndSyncDate:v10];
    goto LABEL_12;
  }
}

- (int64_t)_chargerConnectionState
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v3 = dispatch_semaphore_create(0);
  batteryManager = self->_batteryManager;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__RTWorkoutScheduler__chargerConnectionState__block_invoke;
  v24[3] = &unk_2788D3698;
  v26 = &v27;
  v5 = v3;
  v25 = v5;
  [(RTBatteryManager *)batteryManager fetchCurrentChargerConnectionState:v24];
  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v9 timeIntervalSinceDate:v7];
    v11 = v10;
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_159];
    v14 = [MEMORY[0x277CCACC8] callStackSymbols];
    v15 = [v14 filteredArrayUsingPredicate:v13];
    v16 = [v15 firstObject];

    [v12 submitToCoreAnalytics:v16 type:1 duration:v11];
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: healthKitManager", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v31 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v19];

    if (v20)
    {
      v21 = v20;
    }
  }

  v22 = v28[3];
  _Block_object_dispose(&v27, 8);
  return v22;
}

void __45__RTWorkoutScheduler__chargerConnectionState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Error fetching battery state, error ,%@", &v7, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_scheduleWorkoutComparisonIfCharging
{
  v81[1] = *MEMORY[0x277D85DE8];
  v3 = [(RTWorkoutScheduler *)self metrics];
  [v3 startCollectMetricsTaskType:3 totalNAtStart:{-[RTWorkoutScheduler totalWorkouts](self, "totalWorkouts")}];

  v66 = [MEMORY[0x277CBEAA8] date];
  v63 = *MEMORY[0x277D01448];
  v64 = *MEMORY[0x277CCA450];
  v67 = 1;
  while (1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        *&buf[22] = 2048;
        v79 = v67;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, iteration, %lu", buf, 0x20u);
      }
    }

    if ([(RTWorkoutScheduler *)self encryptedDataAvailability]== 2)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      v61 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v56 = NSStringFromSelector(a2);
        v57 = [RTDataProtectionManager encryptedDataAvailabilityToString:[(RTWorkoutScheduler *)self encryptedDataAvailability]];
        *buf = 138412802;
        *&buf[4] = v55;
        *&buf[12] = 2112;
        *&buf[14] = v56;
        *&buf[22] = 2112;
        v79 = v57;
        _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%@, %@, no retry, reason, lock state, %@", buf, 0x20u);
      }

      goto LABEL_37;
    }

    v8 = [(RTWorkoutScheduler *)self _chargerConnectionState];
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v8 != 1)
    {
      break;
    }

    if (v9)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v14 = [(RTWorkoutScheduler *)self currentNWorkouts];
        v15 = [(RTWorkoutScheduler *)self totalWorkouts];
        *buf = 138413058;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        *&buf[22] = 2048;
        v79 = v14;
        LOWORD(v80) = 2048;
        *(&v80 + 2) = v15;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, Battery State Connected and processing additional workout, current, %lu, total, %lu", buf, 0x2Au);
      }
    }

    v16 = [(RTWorkoutScheduler *)self topNWorkoutsWithIncrement:5];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v79 = __Block_byref_object_copy__203;
    *&v80 = __Block_byref_object_dispose__203;
    *(&v80 + 1) = 0;
    v17 = dispatch_semaphore_create(0);
    v18 = [(RTWorkoutScheduler *)self workoutRouteManager];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __58__RTWorkoutScheduler__scheduleWorkoutComparisonIfCharging__block_invoke;
    v68[3] = &unk_2788C4618;
    v70 = buf;
    v19 = v17;
    v69 = v19;
    LOBYTE(v62) = 1;
    [v18 processWorkoutsClearClusters:0 clearExistingDistanceMatrix:0 buildDistanceMatrix:1 syncClustersToHealhtKit:0 syncClustersToWatch:0 filteringDistanceThreshold:v16 topNWorkouts:1.79769313e308 isSchedulerTriggered:v62 handler:v68];

    v20 = v19;
    v21 = [MEMORY[0x277CBEAA8] now];
    v22 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v20, v22))
    {
      v23 = [MEMORY[0x277CBEAA8] now];
      [v23 timeIntervalSinceDate:v21];
      v25 = v24;
      v26 = objc_opt_new();
      v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_159];
      v28 = [MEMORY[0x277CCACC8] callStackSymbols];
      v29 = [v28 filteredArrayUsingPredicate:v27];
      v30 = [v29 firstObject];

      [v26 submitToCoreAnalytics:v30 type:1 duration:v25];
      v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *v71 = 0;
        _os_log_fault_impl(&dword_2304B3000, v31, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: healthKitManager", v71, 2u);
      }

      v32 = MEMORY[0x277CCA9B8];
      v81[0] = v64;
      *v71 = @"semaphore wait timeout";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v81 count:1];
      v34 = [v32 errorWithDomain:v63 code:15 userInfo:v33];

      if (v34)
      {
        v35 = v34;
      }
    }

    else
    {
      v34 = 0;
    }

    v36 = v34;
    v37 = *(*&buf[8] + 40);
    if (v37)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = NSStringFromSelector(a2);
          v42 = *(*&buf[8] + 40);
          *v71 = 138412802;
          *&v71[4] = v40;
          v72 = 2112;
          v73 = v41;
          v74 = 2112;
          v75 = v42;
          _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, incremental workout comparison failed, error, %@", v71, 0x20u);
        }

LABEL_25:
      }
    }

    else
    {
      [(RTWorkoutScheduler *)self setCurrentNWorkouts:v16];
      v43 = [MEMORY[0x277CBEAA8] now];
      [(RTWorkoutScheduler *)self setLastWorkoutComparisonDate:v43];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = NSStringFromSelector(a2);
          v47 = [(RTWorkoutScheduler *)self currentNWorkouts];
          v48 = [(RTWorkoutScheduler *)self totalWorkouts];
          *v71 = 138413058;
          *&v71[4] = v45;
          v72 = 2112;
          v73 = v46;
          v74 = 2048;
          v75 = v47;
          v76 = 2048;
          v77 = v48;
          _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, completed incremental workout comparison, current %lu, total, %lu", v71, 0x2Au);
        }

        goto LABEL_25;
      }
    }

    v49 = [(RTWorkoutScheduler *)self _isEligibleForWorkoutComparison];
    if (v37)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49;
    }

    v51 = [MEMORY[0x277CBEAA8] date];
    [v51 timeIntervalSinceDate:v66];
    v53 = v52;

    _Block_object_dispose(buf, 8);
    ++v67;
    if (v53 > 600.0 || !v50)
    {
      v61 = [(RTWorkoutScheduler *)self metrics];
      [v61 stopCollectMetricsTaskType:3];
      goto LABEL_37;
    }
  }

  if (!v9)
  {
    goto LABEL_38;
  }

  v61 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    v58 = objc_opt_class();
    v59 = NSStringFromClass(v58);
    v60 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v59;
    *&buf[12] = 2112;
    *&buf[14] = v60;
    _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%@, %@, no retry, reason, battery sate, disconnected", buf, 0x16u);
  }

LABEL_37:

LABEL_38:
}

void __58__RTWorkoutScheduler__scheduleWorkoutComparisonIfCharging__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_scheduleUpdateRelevanceScore
{
  v4 = [(RTWorkoutScheduler *)self metrics];
  [v4 startCollectMetricsTaskType:5 totalNAtStart:{-[RTWorkoutScheduler totalWorkouts](self, "totalWorkouts")}];

  [(RTWorkoutScheduler *)self setUpdateRelevanceScoreTaskState:3];
  v5 = [(RTWorkoutScheduler *)self workoutRouteManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__RTWorkoutScheduler__scheduleUpdateRelevanceScore__block_invoke;
  v6[3] = &unk_2788C4D10;
  v6[4] = self;
  v6[5] = a2;
  [v5 updateRelevanceScoresWithHandler:v6];
}

void __51__RTWorkoutScheduler__scheduleUpdateRelevanceScore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTWorkoutScheduler__scheduleUpdateRelevanceScore__block_invoke_2;
  block[3] = &unk_2788C5020;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  block[4] = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

void __51__RTWorkoutScheduler__scheduleUpdateRelevanceScore__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, finished, error, %@", &v9, 0x20u);
    }
  }

  v7 = [*(a1 + 32) metrics];
  [v7 stopCollectMetricsTaskType:5];

  if (!*(a1 + 40))
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setLastRelevanceScoreUpdateDate:v8];

    [*(a1 + 32) setUpdateRelevanceScoreTaskState:1];
  }
}

- (void)_onDailyXPCActivity
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(RTWorkoutScheduler *)self updateRelevanceScoreTaskState]== 2 || [(RTWorkoutScheduler *)self updateRelevanceScoreTaskState]== 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = NSStringFromSelector(a2);
        v8 = [RTWorkoutScheduler taskStateToString:[(RTWorkoutScheduler *)self updateRelevanceScoreTaskState]];
        v9 = [RTWorkoutScheduler taskStateToString:2];
        v14 = 138413314;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = @"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreKey";
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, not changing task state, %@, from %@ to %@", &v14, 0x34u);
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [(RTWorkoutScheduler *)self lastRelevanceScoreUpdateDate];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;

    if (v13 > 86400.0)
    {
      [(RTWorkoutScheduler *)self setUpdateRelevanceScoreTaskState:2];

      [(RTWorkoutScheduler *)self _scheduleUpdateRelevanceScore];
    }
  }
}

- (void)_getCurrentLocationAndMonitorForRegion
{
  v11 = *MEMORY[0x277D85DE8];
  locationManager = self->_locationManager;
  v8 = 0;
  [(RTLocationManager *)locationManager stopMonitoringAllRegionsForClientIdentifier:@"RTWorkoutSchedulerRegionChange" error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Error stopping monitoring for regions, %@", buf, 0xCu);
    }
  }

  v6 = self->_locationManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTWorkoutScheduler__getCurrentLocationAndMonitorForRegion__block_invoke;
  v7[3] = &unk_2788CC0D0;
  v7[4] = self;
  [(RTLocationManager *)v6 fetchCurrentLocationWithHandler:v7];
}

void __60__RTWorkoutScheduler__getCurrentLocationAndMonitorForRegion__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138739971;
      v8 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Error fetching current location, %{sensitive}@", &v7, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) onCurrentLocationUpdate:a2];
  }
}

- (void)onCurrentLocationUpdate:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__RTWorkoutScheduler_onCurrentLocationUpdate___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onCurrentLocationUpdate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [v5 horizontalAccuracy];
  if (v6 <= 200.0)
  {
    v15 = objc_alloc(MEMORY[0x277CBFBC8]);
    [v5 coordinate];
    v7 = [v15 initForLowPowerWithCenter:@"RTWorkoutSchedulerBoundingRegion" radius:? identifier:?];
    locationManager = self->_locationManager;
    v18 = 0;
    [(RTLocationManager *)locationManager startMonitoringForRegion:v7 clientIdentifier:@"RTWorkoutSchedulerRegionChange" error:&v18];
    v9 = v18;
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v17)
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = v9;
          v12 = "error setting up fence, %@";
          v13 = v10;
          v14 = 12;
LABEL_12:
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else if (v17)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138740227;
        v20 = v5;
        v21 = 2117;
        v22 = v7;
        v12 = "Start Low Power Fence Monitoring for workouts, location, %{sensitive}@, region, %{sensitive}@";
        v13 = v10;
        v14 = 22;
        goto LABEL_12;
      }

LABEL_13:
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      goto LABEL_16;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [v5 horizontalAccuracy];
    *buf = 138412802;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2048;
    v24 = v11;
    v12 = "%@, %@, Not monitoring for fence due to high location uncertainty, %f";
    v13 = v7;
    v14 = 32;
    goto LABEL_12;
  }

LABEL_16:
}

- (void)handleCircularRegionCallback:(int64_t)a3 region:(id)a4 clientIdentifier:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[RTWorkoutScheduler handleCircularRegionCallback:region:clientIdentifier:]";
    v22 = 1024;
    v23 = 1105;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: region (in %s:%d)", buf, 0x12u);
  }

  if (!v11)
  {
LABEL_7:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTWorkoutScheduler handleCircularRegionCallback:region:clientIdentifier:]";
      v22 = 1024;
      v23 = 1106;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientIdentifier (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (a3 == 2)
  {
    v14 = [(RTNotifier *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__RTWorkoutScheduler_handleCircularRegionCallback_region_clientIdentifier___block_invoke;
    v15[3] = &unk_2788CCF58;
    v18 = 2;
    v16 = v9;
    v17 = self;
    v19 = a2;
    dispatch_async(v14, v15);
  }
}

uint64_t __75__RTWorkoutScheduler_handleCircularRegionCallback_region_clientIdentifier___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [RTLocationManager stringForRegionCallbackType:*(a1 + 48)];
      v4 = *(a1 + 32);
      v12 = 138412547;
      v13 = v3;
      v14 = 2117;
      v15 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Received event, %@, region, %{sensitive}@", &v12, 0x16u);
    }
  }

  if ([*(a1 + 40) updateRelevanceScoreTaskState] == 2 || objc_msgSend(*(a1 + 40), "updateRelevanceScoreTaskState") == 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(*(a1 + 56));
        v9 = +[RTWorkoutScheduler taskStateToString:](RTWorkoutScheduler, "taskStateToString:", [*(a1 + 40) updateRelevanceScoreTaskState]);
        v10 = [RTWorkoutScheduler taskStateToString:2];
        v12 = 138413314;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = @"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreKey";
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, not changing task state, %@, from %@ to %@", &v12, 0x34u);
      }
    }
  }

  else
  {
    [*(a1 + 40) setUpdateRelevanceScoreTaskState:2];
  }

  return [*(a1 + 40) _getCurrentLocationAndMonitorForRegion];
}

- (void)_registerForCircularRegionEvents
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Registering for Circular Region Events", buf, 2u);
    }
  }

  v5 = [(RTWorkoutScheduler *)self locationManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RTWorkoutScheduler__registerForCircularRegionEvents__block_invoke;
  v6[3] = &unk_2788C5298;
  v6[4] = self;
  v6[5] = a2;
  [v5 registerForRegionEventsWithClientIdentifier:@"RTWorkoutSchedulerRegionChange" handler:v6];
}

void __54__RTWorkoutScheduler__registerForCircularRegionEvents__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3 == 4)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = [RTLocationManager stringForRegionCallbackType:4];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      v13 = "%@, regionMonitoring failure, %@, error, %@";
      goto LABEL_10;
    }
  }

  else if (a3 == 3)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = [RTLocationManager stringForRegionCallbackType:3];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      v13 = "%@, regionMonitoring client registration failure, %@, error, %@";
LABEL_10:
      _os_log_fault_impl(&dword_2304B3000, v10, OS_LOG_TYPE_FAULT, v13, &v14, 0x20u);
    }
  }

  else
  {
    if (!v8)
    {
      [*(a1 + 32) handleCircularRegionCallback:a3 region:v7 clientIdentifier:@"RTWorkoutSchedulerRegionChange"];
      goto LABEL_12;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = [RTLocationManager stringForRegionCallbackType:a3];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      v13 = "%@, regionMonitoring %@, error, %@";
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)_schedulePruneDistanceMatrix
{
  v4 = [(RTWorkoutScheduler *)self workoutRouteManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__RTWorkoutScheduler__schedulePruneDistanceMatrix__block_invoke;
  v5[3] = &unk_2788C4D10;
  v5[4] = self;
  v5[5] = a2;
  [v4 pruneDistanceMatrixWithHandler:v5];
}

void __50__RTWorkoutScheduler__schedulePruneDistanceMatrix__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTWorkoutScheduler__schedulePruneDistanceMatrix__block_invoke_2;
  block[3] = &unk_2788C5020;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  block[4] = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

void __50__RTWorkoutScheduler__schedulePruneDistanceMatrix__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      v8 = 138412802;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, finished, error, %@", &v8, 0x20u);
    }
  }

  if (!*(a1 + 40))
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setLastPruneDistanceMatrixDate:v7];
  }
}

- (unint64_t)topNWorkoutsWithIncrement:(unint64_t)a3
{
  v4 = [(RTWorkoutScheduler *)self currentNWorkouts]+ a3;
  result = [(RTWorkoutScheduler *)self totalWorkouts];
  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (void)setSingleWorkoutClusteringTaskState:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_singleWorkoutClusteringTaskState != a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [RTWorkoutScheduler taskStateToString:self->_singleWorkoutClusteringTaskState];
        v7 = [RTWorkoutScheduler taskStateToString:a3];
        v8 = 138412802;
        v9 = @"RTDefaultsWorkoutSchedulerSingleWorkoutClusteringKey";
        v10 = 2112;
        v11 = v6;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, changed from %@ to %@", &v8, 0x20u);
      }
    }

    self->_singleWorkoutClusteringTaskState = a3;
    [(RTWorkoutScheduler *)self saveTaskStates];
  }
}

- (void)setUpdateRelevanceScoreTaskState:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_updateRelevanceScoreTaskState != a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [RTWorkoutScheduler taskStateToString:self->_updateRelevanceScoreTaskState];
        v7 = [RTWorkoutScheduler taskStateToString:a3];
        v8 = 138412802;
        v9 = @"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreKey";
        v10 = 2112;
        v11 = v6;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, changed from %@ to %@", &v8, 0x20u);
      }
    }

    self->_updateRelevanceScoreTaskState = a3;
    [(RTWorkoutScheduler *)self saveTaskStates];
  }
}

- (void)setCurrentNWorkouts:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_currentNWorkouts != a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        currentNWorkouts = self->_currentNWorkouts;
        v7 = 138412802;
        v8 = @"RTDefaultsWorkoutSchedulerTopNWorkoutsKey";
        v9 = 2048;
        v10 = currentNWorkouts;
        v11 = 2048;
        v12 = a3;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, changed from %lu to %lu", &v7, 0x20u);
      }
    }

    self->_currentNWorkouts = a3;
    [(RTWorkoutScheduler *)self saveTaskStates];
  }
}

- (void)setLastWorkoutComparisonDate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_lastWorkoutComparisonDate != v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_lastWorkoutComparisonDate stringFromDate];
        v8 = [(NSDate *)v5 stringFromDate];
        v9 = 138412802;
        v10 = @"RTDefaultsWorkoutSchedulerIncrementalWorkoutComparisonDateKey";
        v11 = 2112;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, changed from %@ to %@", &v9, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastWorkoutComparisonDate, a3);
    [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastWorkoutComparisonDate forKey:@"RTDefaultsWorkoutSchedulerIncrementalWorkoutComparisonDateKey"];
  }
}

- (void)setLastClusterAndSyncDate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_lastClusterAndSyncDate != v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_lastClusterAndSyncDate stringFromDate];
        v8 = [(NSDate *)v5 stringFromDate];
        v9 = 138412802;
        v10 = @"RTDefaultsWorkoutSchedulerClusterAndSyncDateKey";
        v11 = 2112;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, changed from %@ to %@", &v9, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastClusterAndSyncDate, a3);
    [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastClusterAndSyncDate forKey:@"RTDefaultsWorkoutSchedulerClusterAndSyncDateKey"];
  }
}

- (void)setLastSingleWorkoutClusteringDate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_lastSingleWorkoutClusteringDate != v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_lastSingleWorkoutClusteringDate stringFromDate];
        v8 = [(NSDate *)v5 stringFromDate];
        v9 = 138412802;
        v10 = @"RTDefaultsWorkoutSchedulerSingleWorkoutClusteringDateKey";
        v11 = 2112;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, changed from %@ to %@", &v9, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastSingleWorkoutClusteringDate, a3);
    [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastSingleWorkoutClusteringDate forKey:@"RTDefaultsWorkoutSchedulerSingleWorkoutClusteringDateKey"];
  }
}

- (void)setLastRelevanceScoreUpdateDate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_lastRelevanceScoreUpdateDate != v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_lastRelevanceScoreUpdateDate stringFromDate];
        v8 = [(NSDate *)v5 stringFromDate];
        v9 = 138412802;
        v10 = @"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreDateKey";
        v11 = 2112;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, changed from %@ to %@", &v9, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastRelevanceScoreUpdateDate, a3);
    [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastRelevanceScoreUpdateDate forKey:@"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreDateKey"];
  }
}

- (void)setLastPruneDistanceMatrixDate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_lastPruneDistanceMatrixDate != v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSDate *)self->_lastPruneDistanceMatrixDate stringFromDate];
        v8 = [(NSDate *)v5 stringFromDate];
        v9 = 138412802;
        v10 = @"RTDefaultsWorkoutSchedulerUpdateRelevanceScoreDateKey";
        v11 = 2112;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, changed from %@ to %@", &v9, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastPruneDistanceMatrixDate, a3);
    [(RTDefaultsManager *)self->_defaultsManager setObject:self->_lastPruneDistanceMatrixDate forKey:@"RTDefaultsWorkoutSchedulerPruneDistanceMatrixDateKey"];
  }
}

- (void)_setupDisplayLayoutMonitor
{
  v3 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __48__RTWorkoutScheduler__setupDisplayLayoutMonitor__block_invoke;
  v8 = &unk_2788D36C0;
  objc_copyWeak(&v9, &location);
  [v3 setTransitionHandler:&v5];
  v4 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{v3, v5, v6, v7, v8}];
  [(RTWorkoutScheduler *)self setDisplayLayoutMonitor:v4];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__RTWorkoutScheduler__setupDisplayLayoutMonitor__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutMonitorDidUpdateDisplayLayout:v7 withContext:v6];
}

- (void)layoutMonitorDidUpdateDisplayLayout:(id)a3 withContext:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 elements];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277D0ABA0];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) identifier];
        v13 = [v12 isEqualToString:v10];

        if (v13)
        {
          v14 = [(RTNotifier *)self queue];
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __70__RTWorkoutScheduler_layoutMonitorDidUpdateDisplayLayout_withContext___block_invoke;
          v15[3] = &unk_2788C4A70;
          v15[4] = self;
          v16 = v5;
          dispatch_async(v14, v15);

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t __70__RTWorkoutScheduler_layoutMonitorDidUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) displayBacklightLevel];

  return [v1 _onLayoutMonitorUpdateDisplayBacklightLevelNotification:v2];
}

- (void)_onLayoutMonitorUpdateDisplayBacklightLevelNotification:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "Received display backlight level notification, %lu", &v6, 0xCu);
    }
  }

  if (!a3)
  {
    [(RTWorkoutScheduler *)self _evaluateVersionChange];
    [(RTWorkoutScheduler *)self _evaluateSchedulingTaskPriority];
  }
}

@end