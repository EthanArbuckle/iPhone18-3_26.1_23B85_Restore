@interface SMSessionMonitor
+ (id)riskStateToString:(unint64_t)a3;
- (SMSessionManagerMonitorProtocol)sessionManagerDelegate;
- (SMSessionMonitor)initWithDefaultsManager:(id)a3 dataProtectionManager:(id)a4 healthKitManager:(id)a5 locationManager:(id)a6 motionActivityManager:(id)a7 platform:(id)a8 sessionMetricManager:(id)a9 sessionStore:(id)a10 wristStateManager:(id)a11 noMovementMonitor:(id)a12;
- (SMSessionMonitor)initWithDefaultsManager:(id)a3 dataProtectionManager:(id)a4 healthKitManager:(id)a5 locationManager:(id)a6 motionActivityManager:(id)a7 platform:(id)a8 sessionMetricManager:(id)a9 sessionStore:(id)a10 wristStateManager:(id)a11 timerManager:(id)a12 noMovementMonitor:(id)a13;
- (id)_createTriggersWithConfiguration:(id)a3;
- (void)_addObservers;
- (void)_bootstrap;
- (void)_handleCircularRegionCallback:(int64_t)a3 region:(id)a4 clientIdentifier:(id)a5;
- (void)_initializeSessionWithConfiguration:(id)a3;
- (void)_initializeTriggersForRemoteSessionIfNecessary;
- (void)_onBecomingActiveDevice:(id)a3;
- (void)_onBecomingNonActiveDevice:(id)a3;
- (void)_onRegionExit;
- (void)_onRegionInsidePendingTimerExpiry;
- (void)_persistState;
- (void)_processSessionEnd;
- (void)_processSessionResumeWithState:(id)a3;
- (void)_processTriggerEstimatedEndDateUpdateNotification:(id)a3;
- (void)_processTriggerNotification:(id)a3;
- (void)_processUserTriggerResponse:(int64_t)a3;
- (void)_promptDestinationAnomalyVerificationWithContext:(id)a3;
- (void)_promptDirectTriggerWithContext:(id)a3;
- (void)_promptEstimatedEndDateUpdateWithContext:(id)a3;
- (void)_promptRoundTripAnomalyVerificationWithContext:(id)a3;
- (void)_promptSafeArrivalWithContext:(id)a3;
- (void)_promptTimerEndedVerificationWithContext:(id)a3;
- (void)_promptWorkoutAnomalyVerificationWithContext:(id)a3;
- (void)_registerForCircularRegionEventsForIdentifier:(id)a3;
- (void)_registerForTriggersWithConfiguration:(id)a3;
- (void)_removeObservers;
- (void)_reset;
- (void)_setup;
- (void)_setupGeofenceWithLocation:(id)a3 regionIdentifier:(id)a4 radius:(double)a5 destinationType:(unint64_t)a6;
- (void)_unregisterForCircularRegionEventsForIdentifier:(id)a3;
- (void)_unregisterForTriggers;
- (void)_updateDestinationBoundRegionStateWithCircularRegionCallback:(int64_t)a3;
- (void)_updateGeofenceWithConfiguration:(id)a3;
- (void)_updateRegionStateWithCircularRegionCallback:(int64_t)a3;
- (void)_updateRoundTripRegionStateWithCircularRegionCallback:(int64_t)a3;
- (void)_updateTriggersWithConfiguration:(id)a3;
- (void)_updateTriggersWithUserResponse:(int64_t)a3;
- (void)_updateUserWithTriggerContext:(id)a3;
- (void)handleCircularRegionCallback:(int64_t)a3 region:(id)a4 clientIdentifier:(id)a5;
- (void)onBecomingActiveDevice:(id)a3;
- (void)onBecomingNonActiveDevice:(id)a3;
- (void)onLocationNotification:(id)a3;
- (void)onRemoteEmergencyContactsNotified:(unint64_t)a3;
- (void)onSessionChangedWithConfiguration:(id)a3;
- (void)onSessionEndedForActiveDevice:(BOOL)a3;
- (void)onSessionResumedWithState:(id)a3 forActiveDevice:(BOOL)a4;
- (void)onSessionStartedWithConfiguration:(id)a3;
- (void)onTriggerNotification:(id)a3;
- (void)onUserTriggerResponse:(int64_t)a3;
- (void)onWorkoutPause;
- (void)onWorkoutResume;
- (void)setRiskState:(unint64_t)a3;
- (void)setSessionManagerDelegate:(id)a3;
@end

@implementation SMSessionMonitor

- (SMSessionMonitor)initWithDefaultsManager:(id)a3 dataProtectionManager:(id)a4 healthKitManager:(id)a5 locationManager:(id)a6 motionActivityManager:(id)a7 platform:(id)a8 sessionMetricManager:(id)a9 sessionStore:(id)a10 wristStateManager:(id)a11 noMovementMonitor:(id)a12
{
  v28 = a12;
  v27 = a11;
  v26 = a10;
  v17 = a9;
  v25 = a8;
  v18 = a7;
  v19 = a6;
  v24 = a5;
  v20 = a4;
  v21 = a3;
  v22 = objc_opt_new();
  v31 = [(SMSessionMonitor *)self initWithDefaultsManager:v21 dataProtectionManager:v20 healthKitManager:v24 locationManager:v19 motionActivityManager:v18 platform:v25 sessionMetricManager:v17 sessionStore:v26 wristStateManager:v27 timerManager:v22 noMovementMonitor:v28];

  return v31;
}

- (SMSessionMonitor)initWithDefaultsManager:(id)a3 dataProtectionManager:(id)a4 healthKitManager:(id)a5 locationManager:(id)a6 motionActivityManager:(id)a7 platform:(id)a8 sessionMetricManager:(id)a9 sessionStore:(id)a10 wristStateManager:(id)a11 timerManager:(id)a12 noMovementMonitor:(id)a13
{
  v18 = a3;
  v47 = a4;
  v19 = a4;
  v48 = a5;
  v51 = a5;
  v49 = a6;
  v20 = a6;
  v50 = a7;
  v21 = a7;
  v56 = a8;
  v58 = a9;
  v59 = a10;
  v54 = a11;
  v57 = a12;
  v22 = a13;
  v55 = v18;
  v53 = v22;
  if (!v18)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v36 = 0;
    v23 = v19;
    v24 = v51;
    v25 = v21;
    goto LABEL_20;
  }

  v23 = v19;
  if (!v19)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v24 = v51;
    v25 = v21;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dataProtectionManager", buf, 2u);
    }

    v36 = 0;
LABEL_20:
    v26 = v56;
LABEL_39:
    v40 = self;
    goto LABEL_40;
  }

  v24 = v51;
  v25 = v21;
  if (!v51)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v26 = v56;
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v39 = "Invalid parameter not satisfying: healthKitManager";
LABEL_37:
    _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, v39, buf, 2u);
    goto LABEL_38;
  }

  v26 = v56;
  if (!v20)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v39 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_37;
  }

  if (!v25)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v39 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_37;
  }

  if (!v56)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v39 = "Invalid parameter not satisfying: platform";
    goto LABEL_37;
  }

  if (!v59)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v39 = "Invalid parameter not satisfying: sessionStore";
    goto LABEL_37;
  }

  if (!v58)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v39 = "Invalid parameter not satisfying: sessionMetricManager";
    goto LABEL_37;
  }

  if (!v57)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v39 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_37;
  }

  if (!v22)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v39 = "Invalid parameter not satisfying: noMovementMonitor";
      goto LABEL_37;
    }

LABEL_38:

    v36 = 0;
    goto LABEL_39;
  }

  v62.receiver = self;
  v62.super_class = SMSessionMonitor;
  v27 = [(SMSessionMonitor *)&v62 init];
  if (v27)
  {
    v28 = v27;
    objc_storeStrong(&v27->_defaultsManager, a3);
    objc_storeStrong(&v28->_dataProtectionManager, v47);
    v29 = objc_opt_new();
    distanceCalculator = v28->_distanceCalculator;
    v28->_distanceCalculator = v29;

    objc_storeStrong(&v28->_healthKitManager, v48);
    objc_storeStrong(&v28->_locationManager, v49);
    objc_storeStrong(&v28->_motionActivityManager, v50);
    objc_storeStrong(&v28->_platform, a8);
    objc_storeStrong(&v28->_sessionMetricManager, a9);
    objc_storeStrong(&v28->_sessionStore, a10);
    objc_storeStrong(&v28->_wristStateManager, a11);
    objc_storeStrong(&v28->_timerManager, a12);
    objc_storeStrong(&v28->_noMovementMonitor, a13);
    v31 = v28;
    v32 = v28;
    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [(SMSessionMonitor *)v32 UTF8String];
    }

    else
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v32];
      v34 = [v42 UTF8String];
    }

    v43 = dispatch_queue_create(v34, v33);

    queue = v32->_queue;
    v32->_queue = v43;

    v45 = [(SMSessionMonitor *)v32 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __213__SMSessionMonitor_initWithDefaultsManager_dataProtectionManager_healthKitManager_locationManager_motionActivityManager_platform_sessionMetricManager_sessionStore_wristStateManager_timerManager_noMovementMonitor___block_invoke;
    block[3] = &unk_2788C4EA0;
    v61 = v32;
    dispatch_async(v45, block);

    v26 = v56;
    v27 = v31;
  }

  v40 = v27;
  v36 = v40;
LABEL_40:

  return v36;
}

- (void)_setup
{
  v17 = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[SMSessionMonitor _setup]";
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%s, feature not enabled", &v7, 0xCu);
    }

    goto LABEL_8;
  }

  v3 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsSessionMonitorRegionInsidePendingTimerDelay" value:&unk_2845A1948];
  [v3 doubleValue];
  self->_sessionMonitorRegionInsidePendingTimerDelay = v4;

  if (self->_sessionMonitorRegionInsidePendingTimerDelay != 30.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      sessionMonitorRegionInsidePendingTimerDelay = self->_sessionMonitorRegionInsidePendingTimerDelay;
      v7 = 136316162;
      v8 = "[SMSessionMonitor _setup]";
      v9 = 2080;
      v10 = "overriding session monitor region inside pending timer delay";
      v11 = 2048;
      v12 = 0x403E000000000000;
      v13 = 2048;
      v14 = sessionMonitorRegionInsidePendingTimerDelay;
      v15 = 2112;
      v16 = @"RTDefaultsSessionMonitorRegionInsidePendingTimerDelay";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v7, 0x34u);
    }

LABEL_8:
  }
}

- (void)_bootstrap
{
  v57[1] = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__29;
  v52 = __Block_byref_object_dispose__29;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__29;
  v46 = __Block_byref_object_dispose__29;
  v47 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(SMSessionMonitor *)self sessionStore];
  v5 = [(SMSessionMonitor *)self configuration];
  v6 = [v5 sessionID];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __30__SMSessionMonitor__bootstrap__block_invoke;
  v38[3] = &unk_2788C75E8;
  v40 = &v48;
  v41 = &v42;
  v7 = v3;
  v39 = v7;
  [v4 fetchMostRecentSessionMonitorStateWithSessionID:v6 handler:v38];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_398];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v57[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v57 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;

      v24 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
LABEL_8:

  v25 = v22;
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v43 + 5, v22);
  }

  v26 = v43[5];
  v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v26)
  {
    if (v27)
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = v43[5];
        *buf = 136315394;
        *&buf[4] = "[SMSessionMonitor _bootstrap]";
        v55 = 2112;
        v56 = v29;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%s, Error while fetching sessionMonitor state, error, %@", buf, 0x16u);
      }

LABEL_24:
    }
  }

  else
  {
    if (v27)
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = v49[5];
        *buf = 136315394;
        *&buf[4] = "[SMSessionMonitor _bootstrap]";
        v55 = 2112;
        v56 = v31;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%s, most recent sessionMonitor state, %@", buf, 0x16u);
      }
    }

    if (v49[5])
    {
      [(SMSessionMonitor *)self setSessionMonitorState:?];
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277D4ABD0]);
      v33 = [(SMSessionMonitor *)self configuration];
      v34 = [v33 sessionID];
      v35 = [MEMORY[0x277CBEAA8] date];
      v36 = [v32 initWithSessionIdentifier:v34 currentRegionState:0 triggerPending:0 triggerConfirmed:0 date:v35];
      [(SMSessionMonitor *)self setSessionMonitorState:v36];

      [(SMSessionMonitor *)self _persistState];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v37 = [(SMSessionMonitor *)self sessionMonitorState];
        *buf = 136315394;
        *&buf[4] = "[SMSessionMonitor _bootstrap]";
        v55 = 2112;
        v56 = v37;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%s     , %@", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
}

void __30__SMSessionMonitor__bootstrap__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_reset
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[SMSessionMonitor _reset]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
    }
  }

  v4 = [(SMSessionMonitor *)self sessionMonitorState];
  [v4 setTriggerPending:0];

  v5 = [(SMSessionMonitor *)self sessionMonitorState];
  [v5 setTriggerConfirmed:0];

  [(SMSessionMonitor *)self setConfiguration:0];
  v6 = [(SMSessionMonitor *)self sessionMonitorState];
  [v6 setCurrentRegionState:0];

  [(SMSessionMonitor *)self setRiskState:0];
  v7 = [(SMSessionMonitor *)self regionInsidePendingTimer];
  [v7 invalidate];

  [(SMSessionMonitor *)self setRegionInsidePendingTimer:0];
  [(SMSessionMonitor *)self _persistState];
}

- (void)setSessionManagerDelegate:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_284619CA8] && (objc_msgSend(v4, "conformsToProtocol:", &unk_284619EB0) & 1) != 0)
  {
    objc_storeWeak(&self->_sessionManagerDelegate, v4);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [sessionManagerDelegate conformsToProtocol:@protocol(SMSessionManagerMonitorProtocol)] && [sessionManagerDelegate conformsToProtocol:@protocol(SMSessionManagerRegistrationProtocol)]", v6, 2u);
    }
  }
}

- (void)setRiskState:(unint64_t)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D4ABC8];
  v6 = [(SMSessionMonitor *)self mostRecentTriggerContext];
  v7 = [v5 isSOSTriggerCategory:{objc_msgSend(v6, "triggerCategory")}];

  if (self->_riskState != a3 || (v7 & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [SMSessionMonitor riskStateToString:self->_riskState];
        v12 = [SMSessionMonitor riskStateToString:a3];
        v27 = 136315650;
        v28 = "[SMSessionMonitor setRiskState:]";
        v29 = 2112;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, riskState change detected, from, %@, to, %@", &v27, 0x20u);
      }
    }

    switch(a3)
    {
      case 4uLL:
        v15 = [(SMSessionMonitor *)self mostRecentTriggerContext];
        [(SMSessionMonitor *)self _promptSafeArrivalWithContext:v15];
        break;
      case 3uLL:
        v16 = [(SMSessionMonitor *)self sessionMonitorState];
        v17 = v7 | ~[v16 triggerConfirmed];

        v15 = [(SMSessionMonitor *)self mostRecentTriggerContext];
        if ((v17 & 1) == 0)
        {
LABEL_22:
          [(SMSessionMonitor *)self _updateUserWithTriggerContext:v15];
          break;
        }

        [(SMSessionMonitor *)self _promptDirectTriggerWithContext:v15];
        break;
      case 2uLL:
        if (self->_riskState == 3)
        {
LABEL_8:
          v9 = [(SMSessionMonitor *)self mostRecentTriggerContext];
          [(SMSessionMonitor *)self _updateUserWithTriggerContext:v9];

          return;
        }

        v13 = [(SMSessionMonitor *)self sessionMonitorState];
        v14 = [v13 triggerPending];

        if (!v14)
        {
          v18 = MEMORY[0x277D4ABC8];
          v19 = [(SMSessionMonitor *)self mostRecentTriggerContext];
          LODWORD(v18) = [v18 isRoundTripTriggerCategory:{objc_msgSend(v19, "triggerCategory")}];

          if (v18)
          {
            v15 = [(SMSessionMonitor *)self mostRecentTriggerContext];
            [(SMSessionMonitor *)self _promptRoundTripAnomalyVerificationWithContext:v15];
          }

          else
          {
            v20 = MEMORY[0x277D4ABC8];
            v21 = [(SMSessionMonitor *)self mostRecentTriggerContext];
            LODWORD(v20) = [v20 isDestinationTriggerCategory:{objc_msgSend(v21, "triggerCategory")}];

            if (v20)
            {
              v15 = [(SMSessionMonitor *)self mostRecentTriggerContext];
              [(SMSessionMonitor *)self _promptDestinationAnomalyVerificationWithContext:v15];
            }

            else
            {
              v23 = MEMORY[0x277D4ABC8];
              v24 = [(SMSessionMonitor *)self mostRecentTriggerContext];
              LODWORD(v23) = [v23 isDurationTriggerCategory:{objc_msgSend(v24, "triggerCategory")}];

              if (v23)
              {
                v15 = [(SMSessionMonitor *)self mostRecentTriggerContext];
                [(SMSessionMonitor *)self _promptTimerEndedVerificationWithContext:v15];
              }

              else
              {
                v25 = MEMORY[0x277D4ABC8];
                v26 = [(SMSessionMonitor *)self mostRecentTriggerContext];
                LODWORD(v25) = [v25 isWorkoutTriggerCategory:{objc_msgSend(v26, "triggerCategory")}];

                if (!v25)
                {
                  goto LABEL_24;
                }

                v15 = [(SMSessionMonitor *)self mostRecentTriggerContext];
                [(SMSessionMonitor *)self _promptWorkoutAnomalyVerificationWithContext:v15];
              }
            }
          }

          break;
        }

        v15 = [(SMSessionMonitor *)self mostRecentTriggerContext];
        goto LABEL_22;
      default:
LABEL_24:
        self->_riskState = a3;
        return;
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v22 = [SMSessionMonitor riskStateToString:self->_riskState];
      v27 = 136315394;
      v28 = "[SMSessionMonitor setRiskState:]";
      v29 = 2112;
      v30 = v22;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%s, no change to current session monitor riskState, %@, proceeding to update user with context", &v27, 0x16u);
    }
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    goto LABEL_8;
  }
}

+ (id)riskStateToString:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"SMSessionMonitorRiskStateUnknown";
  }

  else
  {
    return off_2788C7658[a3 - 1];
  }
}

- (id)_createTriggersWithConfiguration:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [SMTriggerSOS alloc];
  v7 = [(SMSessionMonitor *)self queue];
  v8 = [(SMSessionMonitor *)self sessionStore];
  v9 = [(SMTriggerSOS *)v6 initWithQueue:v7 sessionStore:v8];

  if (!v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "[SMSessionMonitor _createTriggersWithConfiguration:]";
      v50 = 1024;
      LODWORD(v51) = 338;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sosTrigger (in %s:%d)", buf, 0x12u);
    }
  }

  [v5 addObject:v9];
  v11 = [v4 sessionType];
  if ((v11 - 2) < 2)
  {
    v45 = v9;
    v46 = v4;
    v47 = v5;
    v41 = [SMTriggerDestination alloc];
    v43 = [(SMSessionMonitor *)self queue];
    v18 = [(SMSessionMonitor *)self defaultsManager];
    v19 = [(SMSessionMonitor *)self dataProtectionManager];
    v20 = [(SMSessionMonitor *)self locationManager];
    v21 = [(SMSessionMonitor *)self motionActivityManager];
    v22 = [(SMSessionMonitor *)self distanceCalculator];
    v23 = [(SMSessionMonitor *)self platform];
    v24 = [(SMSessionMonitor *)self sessionStore];
    v25 = [(SMSessionMonitor *)self timerManager];
    v26 = [(SMSessionMonitor *)self sessionMetricManager];
    v16 = [(SMTriggerDestination *)v41 initWithQueue:v43 defaultsManager:v18 dataProtectionManager:v19 locationManager:v20 motionActivityManager:v21 distanceCalculator:v22 platform:v23 sessionStore:v24 timerManager:v25 sessionMetricManager:v26];

    if (v16)
    {
LABEL_15:
      v4 = v46;
      v5 = v47;
      v9 = v45;
      goto LABEL_19;
    }

    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v4 = v46;
      v5 = v47;
      v9 = v45;
LABEL_18:

      v16 = 0;
      goto LABEL_19;
    }

    *buf = 136315394;
    v49 = "[SMSessionMonitor _createTriggersWithConfiguration:]";
    v50 = 1024;
    LODWORD(v51) = 364;
    v27 = "Invalid parameter not satisfying: destinationTrigger (in %s:%d)";
LABEL_28:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v27, buf, 0x12u);
    goto LABEL_17;
  }

  if (v11 == 4)
  {
    v45 = v9;
    v46 = v4;
    v47 = v5;
    v40 = [SMSessionWorkoutMonitor alloc];
    v44 = [(SMSessionMonitor *)self queue];
    v42 = [(SMSessionMonitor *)self defaultsManager];
    v28 = [(SMSessionMonitor *)self distanceCalculator];
    v29 = [(SMSessionMonitor *)self locationManager];
    v30 = [(SMSessionMonitor *)self healthKitManager];
    v39 = [(SMSessionMonitor *)self platform];
    v31 = [(SMSessionMonitor *)self sessionMetricManager];
    v32 = [(SMSessionMonitor *)self sessionStore];
    v33 = [(SMSessionMonitor *)self timerManager];
    v34 = [(SMSessionMonitor *)self noMovementMonitor];
    v35 = [(SMSessionMonitor *)self motionActivityManager];
    v16 = [(SMSessionWorkoutMonitor *)v40 initWithQueue:v44 defaultsManager:v42 distanceCalculator:v28 locationManager:v29 healthKitManager:v30 platform:v39 sessionMetricManager:v31 sessionStore:v32 timerManager:v33 noMovementMonitor:v34 motionActivityManager:v35];

    if (v16)
    {
      goto LABEL_15;
    }

    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315394;
    v49 = "[SMSessionMonitor _createTriggersWithConfiguration:]";
    v50 = 1024;
    LODWORD(v51) = 381;
    v27 = "Invalid parameter not satisfying: workoutMonitor (in %s:%d)";
    goto LABEL_28;
  }

  if (v11 != 1)
  {
    goto LABEL_20;
  }

  v12 = [SMTriggerDuration alloc];
  v13 = [(SMSessionMonitor *)self queue];
  v14 = [(SMSessionMonitor *)self defaultsManager];
  v15 = [(SMSessionMonitor *)self sessionStore];
  v16 = [(SMTriggerDuration *)v12 initWithQueue:v13 defaultsManager:v14 sessionStore:v15];

  if (!v16)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "[SMSessionMonitor _createTriggersWithConfiguration:]";
      v50 = 1024;
      LODWORD(v51) = 347;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: durationTrigger (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_18;
  }

LABEL_19:
  [v5 addObject:v16];

LABEL_20:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [MEMORY[0x277D4AB78] sessionTypeToString:{objc_msgSend(v4, "sessionType")}];
      *buf = 136315650;
      v49 = "[SMSessionMonitor _createTriggersWithConfiguration:]";
      v50 = 2112;
      v51 = v37;
      v52 = 2112;
      v53 = v5;
      _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%s, type, %@, triggers, %@", buf, 0x20u);
    }
  }

  return v5;
}

- (void)_processTriggerNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[SMSessionMonitor _processTriggerNotification:]";
      v17 = 1024;
      LODWORD(v18) = 410;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notification (in %s:%d)", &v15, 0x12u);
    }
  }

  v6 = objc_alloc(MEMORY[0x277D4ABC8]);
  v7 = [v4 triggerCategory];
  v8 = [(SMSessionMonitor *)self configuration];
  v9 = [v8 sessionID];
  v10 = [v6 initWithUpdateReason:1 triggerCategory:v7 sessionID:v9];

  [(SMSessionMonitor *)self setMostRecentTriggerContext:v10];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[SMSessionMonitor _processTriggerNotification:]";
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, processing trigger notification, %@", &v15, 0x16u);
    }
  }

  if ([v4 SOSState] == 2)
  {
    v12 = self;
    v13 = 3;
  }

  else
  {
    if ([v4 SOSState] != 1)
    {
      v14 = [(SMSessionMonitor *)self mostRecentTriggerContext];
      [(SMSessionMonitor *)self _updateUserWithTriggerContext:v14];

      goto LABEL_15;
    }

    v12 = self;
    v13 = 2;
  }

  [(SMSessionMonitor *)v12 setRiskState:v13];
LABEL_15:
}

- (void)_processTriggerEstimatedEndDateUpdateNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[SMSessionMonitor _processTriggerEstimatedEndDateUpdateNotification:]";
      v17 = 1024;
      LODWORD(v18) = 433;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: triggerEndDateUpdateNotification (in %s:%d)", &v15, 0x12u);
    }
  }

  v6 = objc_alloc(MEMORY[0x277D4ABC8]);
  v7 = [v4 triggerCategory];
  v8 = [v4 estimatedEndDate];
  v9 = [v4 coarseEstimatedEndDate];
  v10 = [(SMSessionMonitor *)self configuration];
  v11 = [v10 sessionID];
  v12 = [v6 initWithUpdateReason:5 triggerCategory:v7 estimatedEndDate:v8 coarseEstimatedEndDate:v9 sessionID:v11];

  [(SMSessionMonitor *)self setMostRecentTriggerContext:v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[SMSessionMonitor _processTriggerEstimatedEndDateUpdateNotification:]";
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, processing trigger notification, %@", &v15, 0x16u);
    }
  }

  v14 = [(SMSessionMonitor *)self mostRecentTriggerContext];
  [(SMSessionMonitor *)self _promptEstimatedEndDateUpdateWithContext:v14];
}

- (void)_processUserTriggerResponse:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v5 = 1;
  }

  else
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      goto LABEL_6;
    }

    v5 = 3;
  }

  v6 = [(SMSessionMonitor *)self sessionMonitorState];
  [v6 setTriggerConfirmed:a3 != 2];

  v7 = [(SMSessionMonitor *)self sessionMonitorState];
  [v7 setTriggerPending:0];

  [(SMSessionMonitor *)self setRiskState:v5];
LABEL_6:
  [(SMSessionMonitor *)self _persistState];
  [(SMSessionMonitor *)self _updateTriggersWithUserResponse:a3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277D4ABC8] userTriggerResponseToString:a3];
      v10 = 136315394;
      v11 = "[SMSessionMonitor _processUserTriggerResponse:]";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, passing response, %@", &v10, 0x16u);
    }
  }
}

- (void)_processSessionEnd
{
  [(SMSessionMonitor *)self _reset];
  v3 = [(SMSessionMonitor *)self locationManager];
  v4 = 0;
  [v3 stopMonitoringAllRegionsForClientIdentifier:@"SMDestinationRegionClientIdentifier" error:&v4];

  [(SMSessionMonitor *)self _unregisterForTriggers];
  [(SMSessionMonitor *)self _shutdownWithHandler:&__block_literal_global_24];
}

void __38__SMSessionMonitor__processSessionEnd__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionMonitor _processSessionEnd]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, session ended, shutting down safety monitor, error, %@", &v4, 0x16u);
    }
  }
}

- (void)_processSessionResumeWithState:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136315394;
      *&v17[4] = "[SMSessionMonitor _processSessionResumeWithState:]";
      *&v17[12] = 1024;
      *&v17[14] = 488;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state (in %s:%d)", v17, 0x12u);
    }
  }

  v6 = [v4 configuration];
  [(SMSessionMonitor *)self _initializeSessionWithConfiguration:v6];

  v7 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(v4, "sessionState")}];
  v8 = [v4 sessionState];
  if (v8 <= 8)
  {
    if (v8 <= 3)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          if (v8 == 2)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                *v17 = 136315394;
                *&v17[4] = "[SMSessionMonitor _processSessionResumeWithState:]";
                *&v17[12] = 2112;
                *&v17[14] = v7;
                _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, session resumed to, %@", v17, 0x16u);
              }
            }

            v10 = self;
            v11 = 1;
            goto LABEL_44;
          }

LABEL_45:
          [(SMSessionMonitor *)self _persistState:*v17];
          goto LABEL_46;
        }

LABEL_31:
        [(SMSessionMonitor *)self setRiskState:0];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
LABEL_33:
            *v17 = 136315394;
            *&v17[4] = "[SMSessionMonitor _processSessionResumeWithState:]";
            *&v17[12] = 2112;
            *&v17[14] = v7;
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, session resumed to, %@", v17, 0x16u);
          }

LABEL_34:

          goto LABEL_46;
        }

        goto LABEL_46;
      }

      [(SMSessionMonitor *)self setRiskState:0];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    switch(v8)
    {
      case 4:
        v16 = [(SMSessionMonitor *)self sessionMonitorState];
        [v16 setTriggerConfirmed:1];

        [(SMSessionMonitor *)self setRiskState:3];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_45;
        }

        v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
LABEL_52:
          *v17 = 136315394;
          *&v17[4] = "[SMSessionMonitor _processSessionResumeWithState:]";
          *&v17[12] = 2112;
          *&v17[14] = v7;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, session resumed to, %@", v17, 0x16u);
        }

LABEL_53:

        goto LABEL_45;
      case 7:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
LABEL_41:
            *v17 = 136315394;
            *&v17[4] = "[SMSessionMonitor _processSessionResumeWithState:]";
            *&v17[12] = 2112;
            *&v17[14] = v7;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, session resumed to, %@", v17, 0x16u);
          }

LABEL_42:
        }

        break;
      case 8:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }

        break;
      default:
        goto LABEL_45;
    }

LABEL_43:
    v14 = [(SMSessionMonitor *)self sessionMonitorState:*v17];
    [v14 setTriggerPending:1];

    v10 = self;
    v11 = 2;
LABEL_44:
    [(SMSessionMonitor *)v10 setRiskState:v11];
    goto LABEL_45;
  }

  if (v8 > 11)
  {
    if (v8 == 12)
    {
      goto LABEL_31;
    }

    if (v8 != 14)
    {
      goto LABEL_45;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if ((v8 - 10) >= 2)
  {
    if (v8 != 9)
    {
      goto LABEL_45;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  [(SMSessionMonitor *)self setRiskState:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

LABEL_46:
}

- (void)_registerForTriggersWithConfiguration:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SMSessionMonitor *)self _unregisterForTriggers];
  v5 = [(SMSessionMonitor *)self _createTriggersWithConfiguration:v4];
  [(SMSessionMonitor *)self setTriggers:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(SMSessionMonitor *)self triggers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 setSessionMonitorDelegate:self];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __58__SMSessionMonitor__registerForTriggersWithConfiguration___block_invoke;
          v12[3] = &unk_2788C4730;
          v12[4] = v11;
          [v11 startMonitoringWithConfiguration:v4 handler:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void __58__SMSessionMonitor__registerForTriggersWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[SMSessionMonitor _registerForTriggersWithConfiguration:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%s, register for trigger, %@, error, %@", &v6, 0x20u);
    }
  }
}

- (void)_unregisterForTriggers
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SMSessionMonitor *)self triggers];
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

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 setSessionMonitorDelegate:0];
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __42__SMSessionMonitor__unregisterForTriggers__block_invoke;
          v9[3] = &unk_2788C4730;
          v9[4] = v7;
          [v7 stopMonitoringWithHandler:v9];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [(SMSessionMonitor *)self setTriggers:0];
}

void __42__SMSessionMonitor__unregisterForTriggers__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[SMSessionMonitor _unregisterForTriggers]_block_invoke";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%s, unregister for trigger, %@, error, %@", &v6, 0x20u);
    }
  }
}

- (void)_updateGeofenceWithConfiguration:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SMSessionMonitor _updateGeofenceWithConfiguration:]";
      v24 = 1024;
      LODWORD(v25) = 599;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = [v4 destination];
  v7 = [v6 clLocation];

  if (v7)
  {
    v8 = [(SMSessionMonitor *)self configuration];
    v9 = [v8 destination];
    v10 = [v9 clLocation];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315651;
        v23 = "[SMSessionMonitor _updateGeofenceWithConfiguration:]";
        v24 = 2117;
        v25 = v10;
        v26 = 2117;
        v27 = v7;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, current configuration destination, %{sensitive}@, updated configuration destination, %{sensitive}@", buf, 0x20u);
      }
    }

    if (v10 && ([v10 distanceFromLocation:v7], v12 < 10.0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_29:

        goto LABEL_30;
      }

      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "[SMSessionMonitor _updateGeofenceWithConfiguration:]";
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, current configuration destination matches updated configuration destination, exiting geofence update", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v23 = "[SMSessionMonitor _updateGeofenceWithConfiguration:]";
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, proceed to update destination geofence", buf, 0xCu);
        }
      }

      v15 = [(SMSessionMonitor *)self locationManager];
      v21 = 0;
      [v15 stopMonitoringAllRegionsForClientIdentifier:@"SMDestinationRegionClientIdentifier" error:&v21];
      v13 = v21;

      if (v13)
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "[SMSessionMonitor _updateGeofenceWithConfiguration:]";
          v24 = 2112;
          v25 = v13;
          _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%s, Error stopping monitoring for regions, %@", buf, 0x16u);
        }
      }

      v17 = [v4 destination];
      [v17 radius];
      v19 = v18;

      if (v19 <= 0.0)
      {
        v19 = *MEMORY[0x277D4ADB0];
      }

      else if (v19 < *MEMORY[0x277D4ADC0])
      {
        v19 = *MEMORY[0x277D4ADC0];
      }

      v20 = [v4 destination];
      -[SMSessionMonitor _setupGeofenceWithLocation:regionIdentifier:radius:destinationType:](self, "_setupGeofenceWithLocation:regionIdentifier:radius:destinationType:", v7, @"SMDestinationRegionIdentifier", [v20 destinationType], v19);
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)_initializeSessionWithConfiguration:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "[SMSessionMonitor _initializeSessionWithConfiguration:]";
      *&v10[12] = 1024;
      *&v10[14] = 643;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration (in %s:%d)", v10, 0x12u);
    }
  }

  [(SMSessionMonitor *)self _addObservers];
  [(SMSessionMonitor *)self _registerForCircularRegionEventsForIdentifier:@"SMDestinationRegionClientIdentifier"];
  [(SMSessionMonitor *)self _registerForTriggersWithConfiguration:v4];
  v6 = [(SMSessionMonitor *)self locationManager];
  v7 = [v6 isMonitoringForRegionWithClientIdentifier:@"SMDestinationRegionClientIdentifier" regionIdentifier:@"SMDestinationRegionIdentifier"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      *&v10[4] = "[SMSessionMonitor _initializeSessionWithConfiguration:]";
      *v10 = 136315651;
      if (v7)
      {
        v9 = @"YES";
      }

      *&v10[12] = 2117;
      *&v10[14] = v4;
      v11 = 2112;
      v12 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@, monitoringForConfiguration, %@", v10, 0x20u);
    }
  }

  if ((v7 & 1) == 0)
  {
    [(SMSessionMonitor *)self _updateGeofenceWithConfiguration:v4];
  }

  [(SMSessionMonitor *)self setConfiguration:v4, *v10];
  [(SMSessionMonitor *)self _bootstrap];
}

- (void)_initializeTriggersForRemoteSessionIfNecessary
{
  v3 = [(SMSessionMonitor *)self triggers];
  v4 = [v3 count];

  if (!v4)
  {

    [(SMSessionMonitor *)self _registerForTriggersWithConfiguration:0];
  }
}

- (void)_addObservers
{
  v4 = [(SMSessionMonitor *)self locationManager];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [v4 addObserver:self selector:sel_onLocationNotification_ name:v3];
}

- (void)_removeObservers
{
  v3 = [(SMSessionMonitor *)self locationManager];
  [v3 removeObserver:self];
}

- (void)_persistState
{
  v47[1] = *MEMORY[0x277D85DE8];
  v3 = [(SMSessionMonitor *)self sessionMonitorState];
  v4 = [v3 dirty];

  if (v4)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__29;
    v39 = __Block_byref_object_dispose__29;
    v40 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = [(SMSessionMonitor *)self sessionStore];
    v7 = [(SMSessionMonitor *)self sessionMonitorState];
    v46 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __33__SMSessionMonitor__persistState__block_invoke;
    v32[3] = &unk_2788C4618;
    v34 = &v35;
    v9 = v5;
    v33 = v9;
    [v6 storeSessionMonitorStates:v8 handler:v32];

    v10 = (v36 + 5);
    obj = v36[5];
    v11 = v9;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v11, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_398];
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v47[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v47 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;

        obj = v25;
      }
    }

    objc_storeStrong(v10, obj);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [(SMSessionMonitor *)self sessionMonitorState];
        v29 = v36[5];
        *buf = 136315650;
        *&buf[4] = "[SMSessionMonitor _persistState]";
        v42 = 2112;
        v43 = v28;
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%s, persisted state, %@, error, %@", buf, 0x20u);
      }
    }

    v30 = [(SMSessionMonitor *)self sessionMonitorState];
    [v30 setDirty:0];

    _Block_object_dispose(&v35, 8);
  }
}

void __33__SMSessionMonitor__persistState__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)onBecomingActiveDevice:(id)a3
{
  v4 = a3;
  v5 = [(SMSessionMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SMSessionMonitor_onBecomingActiveDevice___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onBecomingActiveDevice:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315395;
      v7 = "[SMSessionMonitor _onBecomingActiveDevice:]";
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@, initiating actions to become an active device", &v6, 0x16u);
    }
  }

  [(SMSessionMonitor *)self onSessionResumedWithState:v4 forActiveDevice:1];
}

- (void)onBecomingNonActiveDevice:(id)a3
{
  v4 = a3;
  v5 = [(SMSessionMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SMSessionMonitor_onBecomingNonActiveDevice___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onBecomingNonActiveDevice:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v9 = "[SMSessionMonitor _onBecomingNonActiveDevice:]";
      v10 = 2117;
      v11 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@, initiating actions to become a non active device", buf, 0x16u);
    }
  }

  v6 = [(SMSessionMonitor *)self locationManager];
  v7 = 0;
  [v6 stopMonitoringAllRegionsForClientIdentifier:@"SMDestinationRegionClientIdentifier" error:&v7];

  [(SMSessionMonitor *)self _unregisterForTriggers];
  [(SMSessionMonitor *)self _reset];
  [(SMSessionMonitor *)self _initializeTriggersForRemoteSessionIfNecessary];
}

- (void)onSessionStartedWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SMSessionMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SMSessionMonitor_onSessionStartedWithConfiguration___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __54__SMSessionMonitor_onSessionStartedWithConfiguration___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = 136315395;
      v6 = "[SMSessionMonitor onSessionStartedWithConfiguration:]_block_invoke";
      v7 = 2117;
      v8 = v4;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%s, configuration, %{sensitive}@", &v5, 0x16u);
    }
  }

  return [*(a1 + 40) _initializeSessionWithConfiguration:*(a1 + 32)];
}

- (void)onSessionChangedWithConfiguration:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__SMSessionMonitor_onSessionChangedWithConfiguration___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = v4;
  v13 = self;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(SMSessionMonitor *)self queue:v8];
  dispatch_async(v7, v6);
}

uint64_t __54__SMSessionMonitor_onSessionChangedWithConfiguration___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v5 = 136315395;
      v6 = "[SMSessionMonitor onSessionChangedWithConfiguration:]_block_invoke";
      v7 = 2117;
      v8 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@", &v5, 0x16u);
    }
  }

  [*(a1 + 40) _reset];
  [*(a1 + 40) _updateTriggersWithConfiguration:*(a1 + 32)];
  [*(a1 + 40) _updateGeofenceWithConfiguration:*(a1 + 32)];
  return [*(a1 + 40) setConfiguration:*(a1 + 32)];
}

- (void)onSessionResumedWithState:(id)a3 forActiveDevice:(BOOL)a4
{
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__SMSessionMonitor_onSessionResumedWithState_forActiveDevice___block_invoke;
  aBlock[3] = &unk_2788C53C8;
  v13 = a4;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [(SMSessionMonitor *)self queue];
  dispatch_async(v9, v8);
}

void __62__SMSessionMonitor_onSessionResumedWithState_forActiveDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isActiveState])
  {
    v2 = *(a1 + 48);
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v2)
    {
      if (v3)
      {
        v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = *(a1 + 32);
          v12 = 136315395;
          v13 = "[SMSessionMonitor onSessionResumedWithState:forActiveDevice:]_block_invoke";
          v14 = 2117;
          v15 = v5;
          _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@", &v12, 0x16u);
        }
      }

      [*(a1 + 40) _processSessionResumeWithState:*(a1 + 32)];
    }

    else
    {
      if (v3)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 48);
          v12 = 136315651;
          v13 = "[SMSessionMonitor onSessionResumedWithState:forActiveDevice:]_block_invoke";
          v14 = 2117;
          v15 = v10;
          v16 = 1024;
          v17 = v11;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@ only initialize triggers for remote session since active device %d", &v12, 0x1Cu);
        }
      }

      [*(a1 + 40) _initializeTriggersForRemoteSessionIfNecessary];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 48);
      v12 = 136315651;
      v13 = "[SMSessionMonitor onSessionResumedWithState:forActiveDevice:]_block_invoke";
      v14 = 2117;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, not initializing monitor for inactive state, %{sensitive}@, activeDevice, %d", &v12, 0x1Cu);
    }
  }
}

- (void)onSessionEndedForActiveDevice:(BOOL)a3
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__SMSessionMonitor_onSessionEndedForActiveDevice___block_invoke;
  aBlock[3] = &unk_2788C4EA0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [(SMSessionMonitor *)self queue];
  dispatch_async(v5, v4);
}

uint64_t __50__SMSessionMonitor_onSessionEndedForActiveDevice___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[SMSessionMonitor onSessionEndedForActiveDevice:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
    }
  }

  [*(a1 + 32) _removeObservers];
  return [*(a1 + 32) _processSessionEnd];
}

- (void)onUserTriggerResponse:(int64_t)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SMSessionMonitor_onUserTriggerResponse___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = a3;
  v4 = _Block_copy(v6);
  v5 = [(SMSessionMonitor *)self queue];
  dispatch_async(v5, v4);
}

uint64_t __42__SMSessionMonitor_onUserTriggerResponse___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[SMSessionMonitor onUserTriggerResponse:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
    }
  }

  return [*(a1 + 32) _processUserTriggerResponse:*(a1 + 40)];
}

- (void)onRemoteEmergencyContactsNotified:(unint64_t)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SMSessionMonitor_onRemoteEmergencyContactsNotified___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = a3;
  v4 = _Block_copy(v6);
  v5 = [(SMSessionMonitor *)self queue];
  dispatch_async(v5, v4);
}

void __54__SMSessionMonitor_onRemoteEmergencyContactsNotified___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[SMSessionMonitor onRemoteEmergencyContactsNotified:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) triggers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 onRemoteEmergencyContactsNotified:*(a1 + 40)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)onWorkoutPause
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__SMSessionMonitor_onWorkoutPause__block_invoke;
  aBlock[3] = &unk_2788C4EA0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(SMSessionMonitor *)self queue];
  dispatch_async(v4, v3);
}

void __34__SMSessionMonitor_onWorkoutPause__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[SMSessionMonitor onWorkoutPause]_block_invoke";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) triggers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 onWorkoutTriggerControlUpdate:1];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)onWorkoutResume
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__SMSessionMonitor_onWorkoutResume__block_invoke;
  aBlock[3] = &unk_2788C4EA0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(SMSessionMonitor *)self queue];
  dispatch_async(v4, v3);
}

void __35__SMSessionMonitor_onWorkoutResume__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[SMSessionMonitor onWorkoutResume]_block_invoke";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) triggers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 onWorkoutTriggerControlUpdate:2];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_promptEstimatedEndDateUpdateWithContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _promptEstimatedEndDateUpdateWithContext:]";
      v9 = 2112;
      v10 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v7, 0x16u);
    }
  }

  v6 = [(SMSessionMonitor *)self sessionManagerDelegate];
  [v6 promptEstimatedEndDateUpdateWithContext:v4];
}

- (void)_promptTimerEndedVerificationWithContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SMSessionMonitor *)self sessionMonitorState];
  [v5 setTriggerPending:1];

  [(SMSessionMonitor *)self _persistState];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[SMSessionMonitor _promptTimerEndedVerificationWithContext:]";
      v10 = 2112;
      v11 = v4;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v8, 0x16u);
    }
  }

  v7 = [(SMSessionMonitor *)self sessionManagerDelegate];
  [v7 promptTimerEndedVerificationWithContext:v4];
}

- (void)_promptDestinationAnomalyVerificationWithContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SMSessionMonitor *)self sessionMonitorState];
  [v5 setTriggerPending:1];

  [(SMSessionMonitor *)self _persistState];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[SMSessionMonitor _promptDestinationAnomalyVerificationWithContext:]";
      v10 = 2112;
      v11 = v4;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v8, 0x16u);
    }
  }

  v7 = [(SMSessionMonitor *)self sessionManagerDelegate];
  [v7 promptDestinationAnomalyVerificationWithContext:v4];
}

- (void)_promptRoundTripAnomalyVerificationWithContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SMSessionMonitor *)self sessionMonitorState];
  [v5 setTriggerPending:1];

  [(SMSessionMonitor *)self _persistState];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[SMSessionMonitor _promptRoundTripAnomalyVerificationWithContext:]";
      v10 = 2112;
      v11 = v4;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v8, 0x16u);
    }
  }

  v7 = [(SMSessionMonitor *)self sessionManagerDelegate];
  [v7 promptRoundTripAnomalyVerificationWithContext:v4];
}

- (void)_promptWorkoutAnomalyVerificationWithContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _promptWorkoutAnomalyVerificationWithContext:]";
      v9 = 2112;
      v10 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v7, 0x16u);
    }
  }

  v6 = [(SMSessionMonitor *)self sessionManagerDelegate];
  [v6 promptWorkoutAnomalyVerificationWithContext:v4];
}

- (void)_promptDirectTriggerWithContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _promptDirectTriggerWithContext:]";
      v9 = 2112;
      v10 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v7, 0x16u);
    }
  }

  v6 = [(SMSessionMonitor *)self sessionManagerDelegate];
  [v6 promptDirectTriggerWithContext:v4];
}

- (void)_promptSafeArrivalWithContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _promptSafeArrivalWithContext:]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, context, %@", &v7, 0x16u);
    }
  }

  [(SMSessionMonitor *)self _processSessionEnd];
  v6 = [(SMSessionMonitor *)self sessionManagerDelegate];
  [v6 promptSafeArrivalWithContext:v4];
}

- (void)_updateUserWithTriggerContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _updateUserWithTriggerContext:]";
      v9 = 2112;
      v10 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v7, 0x16u);
    }
  }

  v6 = [(SMSessionMonitor *)self sessionManagerDelegate];
  [v6 updateUserWithTriggerContext:v4];
}

- (void)onTriggerNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[SMSessionMonitor onTriggerNotification:]";
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, notification, %@", buf, 0x16u);
    }
  }

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __42__SMSessionMonitor_onTriggerNotification___block_invoke;
  v12 = &unk_2788C4A70;
  v13 = v4;
  v14 = self;
  v6 = v4;
  v7 = _Block_copy(&v9);
  v8 = [(SMSessionMonitor *)self queue:v9];
  dispatch_async(v8, v7);
}

void __42__SMSessionMonitor_onTriggerNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)SMTriggerNotification];
  v4 = [v2 isEqualToString:v3];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = *(a1 + 40);

    [v6 _processTriggerNotification:v5];
  }

  else
  {
    v7 = [*(a1 + 32) name];
    v8 = +[(RTNotification *)SMTriggerEstimatedEndDateUpdateNotification];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);

      [v10 _processTriggerEstimatedEndDateUpdateNotification:v11];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) name];
        v14 = 136315394;
        v15 = "[SMSessionMonitor onTriggerNotification:]_block_invoke";
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, notification not supported, %@", &v14, 0x16u);
      }
    }
  }
}

- (void)_updateTriggersWithConfiguration:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(SMSessionMonitor *)self triggers];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    v10 = MEMORY[0x277D86220];
    *&v7 = 136315394;
    v14 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v14;
              v20 = "[SMSessionMonitor _updateTriggersWithConfiguration:]";
              v21 = 2112;
              v22 = v12;
              _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, registering trigger, %@", buf, 0x16u);
            }
          }

          [v12 modifyMonitoringWithConfiguration:v4 handler:{&__block_literal_global_156, v14}];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v8);
  }
}

void __53__SMSessionMonitor__updateTriggersWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315394;
      v5 = "[SMSessionMonitor _updateTriggersWithConfiguration:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%s, error, %@", &v4, 0x16u);
    }
  }
}

- (void)_updateTriggersWithUserResponse:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(SMSessionMonitor *)self triggers];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 onUserTriggerResponse:a3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setupGeofenceWithLocation:(id)a3 regionIdentifier:(id)a4 radius:(double)a5 destinationType:(unint64_t)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "[SMSessionMonitor _setupGeofenceWithLocation:regionIdentifier:radius:destinationType:]";
    v29 = 1024;
    LODWORD(v30) = 1013;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", buf, 0x12u);
  }

  if (!v12)
  {
LABEL_7:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[SMSessionMonitor _setupGeofenceWithLocation:regionIdentifier:radius:destinationType:]";
      v29 = 1024;
      LODWORD(v30) = 1014;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: regionIdentifier (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277D4AB88] destinationTypeToString:a6];
      *buf = 136316163;
      v28 = "[SMSessionMonitor _setupGeofenceWithLocation:regionIdentifier:radius:destinationType:]";
      v29 = 2117;
      v30 = v10;
      v31 = 2112;
      v32 = v12;
      v33 = 2048;
      v34 = a5;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, regionLocation, %{sensitive}@, regionIdentifier, %@, radius, %.3f, destinationType, %@", buf, 0x34u);
    }
  }

  [v10 coordinate];
  v18 = v17;
  [v10 coordinate];
  v20 = 0x277CBFCD8;
  if (a6 != 1)
  {
    v20 = 0x277CBFBC8;
  }

  v21 = [objc_alloc(*v20) initWithCenter:v12 radius:v18 identifier:{v19, a5}];
  [v21 setGeoReferenceFrame:{objc_msgSend(v10, "referenceFrame")}];
  v22 = [(SMSessionMonitor *)self locationManager];
  v26 = 0;
  [v22 startMonitoringForRegion:v21 clientIdentifier:@"SMDestinationRegionClientIdentifier" error:&v26];
  v23 = v26;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v28 = "[SMSessionMonitor _setupGeofenceWithLocation:regionIdentifier:radius:destinationType:]";
      v29 = 2117;
      v30 = v21;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%s, registered geofence for region, %{sensitive}@", buf, 0x16u);
    }
  }

  if (v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v28 = "[SMSessionMonitor _setupGeofenceWithLocation:regionIdentifier:radius:destinationType:]";
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%s, error setting up fence for safety buddy trip notifier, %@", buf, 0x16u);
    }
  }
}

- (void)_registerForCircularRegionEventsForIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[SMSessionMonitor _registerForCircularRegionEventsForIdentifier:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Registering for circular region events with identifier, %@", buf, 0x16u);
    }
  }

  v6 = [(SMSessionMonitor *)self locationManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SMSessionMonitor__registerForCircularRegionEventsForIdentifier___block_invoke;
  v8[3] = &unk_2788C7610;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 registerForRegionEventsWithClientIdentifier:v7 handler:v8];
}

void __66__SMSessionMonitor__registerForCircularRegionEventsForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = [v7 identifier];
  v10 = [v9 isEqualToString:@"SMDestinationRegionIdentifier"];

  if (!v10)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 identifier];
      v15 = [RTLocationManager stringForRegionCallbackType:a3];
      v19 = 136315906;
      v20 = "[SMSessionMonitor _registerForCircularRegionEventsForIdentifier:]_block_invoke";
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v8;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%s, received region monitoring event for unsupported region identifier, %@, regionCallbackType, %@, error, %@", &v19, 0x2Au);

      goto LABEL_20;
    }

LABEL_7:

    goto LABEL_10;
  }

  if (a3 == 4)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [RTLocationManager stringForRegionCallbackType:4];
      v19 = 136315650;
      v20 = "[SMSessionMonitor _registerForCircularRegionEventsForIdentifier:]_block_invoke";
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v8;
      v13 = "%s, regionMonitoring failure, %@, error, %@";
      goto LABEL_22;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (a3 == 3)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [RTLocationManager stringForRegionCallbackType:3];
      v19 = 136315650;
      v20 = "[SMSessionMonitor _registerForCircularRegionEventsForIdentifier:]_block_invoke";
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v8;
      v13 = "%s, regionMonitoring client registration failure, %@, error, %@";
LABEL_22:
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v13, &v19, 0x20u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v8)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [RTLocationManager stringForRegionCallbackType:a3];
      v19 = 136315650;
      v20 = "[SMSessionMonitor _registerForCircularRegionEventsForIdentifier:]_block_invoke";
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v8;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%s, regionMonitoring %@, error, %@", &v19, 0x20u);
LABEL_20:

      goto LABEL_7;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = [RTLocationManager stringForRegionCallbackType:a3];
      v19 = 136315650;
      v20 = "[SMSessionMonitor _registerForCircularRegionEventsForIdentifier:]_block_invoke";
      v21 = 2112;
      v22 = v18;
      v23 = 2112;
      v24 = 0;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%s, regionMonitoring success %@, error, %@", &v19, 0x20u);
    }
  }

  [*(a1 + 32) handleCircularRegionCallback:a3 region:v7 clientIdentifier:*(a1 + 40)];
LABEL_10:
}

- (void)_unregisterForCircularRegionEventsForIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[SMSessionMonitor _unregisterForCircularRegionEventsForIdentifier:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Unregistering for circular region events with identifier, %@", buf, 0x16u);
    }
  }

  v6 = [(SMSessionMonitor *)self locationManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SMSessionMonitor__unregisterForCircularRegionEventsForIdentifier___block_invoke;
  v8[3] = &unk_2788C4730;
  v9 = v4;
  v7 = v4;
  [v6 unregisterForRegionEventsWithClientIdentifier:v7 handler:v8];
}

void __68__SMSessionMonitor__unregisterForCircularRegionEventsForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[SMSessionMonitor _unregisterForCircularRegionEventsForIdentifier:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%s, regionMonitoring client unregistration failed with error, %@", &v6, 0x16u);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[SMSessionMonitor _unregisterForCircularRegionEventsForIdentifier:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, unregistered for region event with client identifier, %@, error, %@", &v6, 0x20u);
    }
  }

LABEL_5:
}

- (void)handleCircularRegionCallback:(int64_t)a3 region:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SMSessionMonitor *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__SMSessionMonitor_handleCircularRegionCallback_region_clientIdentifier___block_invoke;
  v13[3] = &unk_2788C4C70;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_handleCircularRegionCallback:(int64_t)a3 region:(id)a4 clientIdentifier:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[SMSessionMonitor _handleCircularRegionCallback:region:clientIdentifier:]";
    v18 = 1024;
    LODWORD(v19) = 1151;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: region (in %s:%d)", &v16, 0x12u);
  }

  if (!v10)
  {
LABEL_7:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[SMSessionMonitor _handleCircularRegionCallback:region:clientIdentifier:]";
      v18 = 1024;
      LODWORD(v19) = 1152;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientIdentifier (in %s:%d)", &v16, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [RTLocationManager stringForRegionCallbackType:a3];
      v16 = 136315907;
      v17 = "[SMSessionMonitor _handleCircularRegionCallback:region:clientIdentifier:]";
      v18 = 2112;
      v19 = v14;
      v20 = 2117;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, Received event, %@, region, %{sensitive}@, clientIdentifier, %@", &v16, 0x2Au);
    }
  }

  if (v10 == @"SMDestinationRegionClientIdentifier")
  {
    if ((a3 - 1) <= 1)
    {
      [(SMSessionMonitor *)self _updateRegionStateWithCircularRegionCallback:a3];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315394;
      v17 = "[SMSessionMonitor _handleCircularRegionCallback:region:clientIdentifier:]";
      v18 = 2112;
      v19 = @"SMDestinationRegionClientIdentifier";
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%s, unrecognized clientIdentifier, %@", &v16, 0x16u);
    }
  }
}

- (void)_updateRegionStateWithCircularRegionCallback:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [RTLocationManager stringForRegionCallbackType:a3];
      v7 = [(SMSessionMonitor *)self currentLocation];
      v8 = [(SMSessionMonitor *)self configuration];
      v9 = [v8 destination];
      v10 = [v9 clLocation];
      [v7 distanceFromLocation:v10];
      v16 = 136315650;
      v17 = "[SMSessionMonitor _updateRegionStateWithCircularRegionCallback:]";
      v18 = 2112;
      v19 = v6;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Received event, %@, distance to destination, %.3f", &v16, 0x20u);
    }
  }

  v12 = [(SMSessionMonitor *)self configuration];
  v13 = [v12 sessionType];

  if (v13 == 2)
  {
    [(SMSessionMonitor *)self _updateDestinationBoundRegionStateWithCircularRegionCallback:a3];
  }

  else
  {
    v14 = [(SMSessionMonitor *)self configuration];
    v15 = [v14 sessionType];

    if (v15 == 3)
    {
      [(SMSessionMonitor *)self _updateRoundTripRegionStateWithCircularRegionCallback:a3];
    }
  }
}

- (void)_updateDestinationBoundRegionStateWithCircularRegionCallback:(int64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [RTLocationManager stringForRegionCallbackType:a3];
      v7 = MEMORY[0x277D4ABD0];
      v8 = [(SMSessionMonitor *)self sessionMonitorState];
      v9 = [v7 regionStateToString:{objc_msgSend(v8, "currentRegionState")}];
      *buf = 136315650;
      v29 = "[SMSessionMonitor _updateDestinationBoundRegionStateWithCircularRegionCallback:]";
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Received event, %@, currentRegionState, %@", buf, 0x20u);
    }
  }

  if (a3 == 1)
  {
    v10 = [(SMSessionMonitor *)self sessionMonitorState];
    v11 = [v10 currentRegionState];

    if (v11 <= 2)
    {
      v12 = [(SMSessionMonitor *)self sessionMonitorState];
      [v12 setCurrentRegionState:2];

      [(SMSessionMonitor *)self _persistState];
      v13 = [(SMSessionMonitor *)self regionInsidePendingTimer];
      [v13 invalidate];

      [(SMSessionMonitor *)self setRegionInsidePendingTimer:0];
      objc_initWeak(&location, self);
      v14 = [MEMORY[0x277CBEAA8] date];
      v15 = [RTXPCTimerAlarm alloc];
      v16 = [(SMSessionMonitor *)self queue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __81__SMSessionMonitor__updateDestinationBoundRegionStateWithCircularRegionCallback___block_invoke;
      v24[3] = &unk_2788C7638;
      v17 = v14;
      v25 = v17;
      objc_copyWeak(&v26, &location);
      v18 = [(RTXPCTimerAlarm *)v15 initWithIdentifier:@"com.apple.routined.SMSessionMonitor.insidePendingTimer" queue:v16 handler:v24];
      [(SMSessionMonitor *)self setRegionInsidePendingTimer:v18];

      v19 = [(SMSessionMonitor *)self regionInsidePendingTimer];
      [(SMSessionMonitor *)self sessionMonitorRegionInsidePendingTimerDelay];
      v20 = [v17 dateByAddingTimeInterval:?];
      v23 = 0;
      [v19 fireWithDate:v20 error:&v23];
      v21 = v23;

      if (v21)
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v29 = "[SMSessionMonitor _updateDestinationBoundRegionStateWithCircularRegionCallback:]";
          v30 = 2112;
          v31 = v21;
          _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%s, error in fire timer, %@", buf, 0x16u);
        }
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }

  else if (a3 == 2)
  {
    [(SMSessionMonitor *)self _onRegionExit];
  }
}

void __81__SMSessionMonitor__updateDestinationBoundRegionStateWithCircularRegionCallback___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      [v2 timeIntervalSinceDate:*(a1 + 32)];
      v6 = 136315650;
      v7 = "[SMSessionMonitor _updateDestinationBoundRegionStateWithCircularRegionCallback:]_block_invoke";
      v8 = 2112;
      v9 = @"com.apple.routined.SMSessionMonitor.insidePendingTimer";
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, timer fired, timerIdentifier, %@, %.2f since created", &v6, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onRegionInsidePendingTimerExpiry];
}

- (void)_updateRoundTripRegionStateWithCircularRegionCallback:(int64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [RTLocationManager stringForRegionCallbackType:a3];
      v7 = MEMORY[0x277D4ABD0];
      v8 = [(SMSessionMonitor *)self sessionMonitorState];
      v9 = [v7 regionStateToString:{objc_msgSend(v8, "currentRegionState")}];
      *buf = 136315650;
      v29 = "[SMSessionMonitor _updateRoundTripRegionStateWithCircularRegionCallback:]";
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Received event, %@, currentRegionState, %@", buf, 0x20u);
    }
  }

  if (a3 == 2)
  {
    [(SMSessionMonitor *)self _onRegionExit];
  }

  else
  {
    v10 = [(SMSessionMonitor *)self sessionMonitorState];
    v11 = [v10 currentRegionState];

    if ((v11 - 2) >= 2 && v11)
    {
      if (v11 == 1)
      {
        if (a3 == 1)
        {
          v12 = [(SMSessionMonitor *)self sessionMonitorState];
          [v12 setCurrentRegionState:2];

          [(SMSessionMonitor *)self _persistState];
          objc_initWeak(&location, self);
          v13 = [MEMORY[0x277CBEAA8] date];
          v14 = [RTXPCTimerAlarm alloc];
          v15 = [(SMSessionMonitor *)self queue];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __74__SMSessionMonitor__updateRoundTripRegionStateWithCircularRegionCallback___block_invoke;
          v24[3] = &unk_2788C7638;
          v16 = v13;
          v25 = v16;
          objc_copyWeak(&v26, &location);
          v17 = [(RTXPCTimerAlarm *)v14 initWithIdentifier:@"com.apple.routined.SMSessionMonitor.insidePendingTimer" queue:v15 handler:v24];
          [(SMSessionMonitor *)self setRegionInsidePendingTimer:v17];

          v18 = [(SMSessionMonitor *)self regionInsidePendingTimer];
          [(SMSessionMonitor *)self sessionMonitorRegionInsidePendingTimerDelay];
          v19 = [v16 dateByAddingTimeInterval:?];
          v23 = 0;
          [v18 fireWithDate:v19 error:&v23];
          v20 = v23;

          if (v20)
          {
            v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v29 = "[SMSessionMonitor _updateRoundTripRegionStateWithCircularRegionCallback:]";
              v30 = 2112;
              v31 = v20;
              _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%s, error in fire timer, %@", buf, 0x16u);
            }
          }

          objc_destroyWeak(&v26);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v29 = "[SMSessionMonitor _updateRoundTripRegionStateWithCircularRegionCallback:]";
          _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%s, Invalid region state", buf, 0xCu);
        }
      }
    }
  }
}

void __74__SMSessionMonitor__updateRoundTripRegionStateWithCircularRegionCallback___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      [v2 timeIntervalSinceDate:*(a1 + 32)];
      v6 = 136315650;
      v7 = "[SMSessionMonitor _updateRoundTripRegionStateWithCircularRegionCallback:]_block_invoke";
      v8 = 2112;
      v9 = @"com.apple.routined.SMSessionMonitor.insidePendingTimer";
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, timer fired, timerIdentifier, %@, %.2f since created", &v6, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onRegionInsidePendingTimerExpiry];
}

- (void)_onRegionInsidePendingTimerExpiry
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = MEMORY[0x277D4ABD0];
      v5 = [(SMSessionMonitor *)self sessionMonitorState];
      v6 = [v4 regionStateToString:{objc_msgSend(v5, "currentRegionState")}];
      v17 = 136315394;
      v18 = "[SMSessionMonitor _onRegionInsidePendingTimerExpiry]";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, currentRegionState, %@", &v17, 0x16u);
    }
  }

  v7 = [(SMSessionMonitor *)self sessionMonitorState];
  v8 = [v7 currentRegionState];

  if (v8 == 2)
  {
    v9 = [(SMSessionMonitor *)self sessionMonitorState];
    [v9 setCurrentRegionState:3];

    [(SMSessionMonitor *)self _persistState];
    v10 = objc_alloc(MEMORY[0x277D4ABC8]);
    v11 = [(SMSessionMonitor *)self mostRecentTriggerContext];
    if (v11)
    {
      v8 = [(SMSessionMonitor *)self mostRecentTriggerContext];
      v12 = [v8 triggerCategory];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(SMSessionMonitor *)self configuration];
    v14 = [v13 sessionID];
    v15 = [v10 initWithUpdateReason:4 triggerCategory:v12 sessionID:v14];

    if (v11)
    {
    }

    [(SMSessionMonitor *)self setMostRecentTriggerContext:v15];
    [(SMSessionMonitor *)self setRiskState:4];
  }

  v16 = [(SMSessionMonitor *)self regionInsidePendingTimer];
  [v16 invalidate];

  [(SMSessionMonitor *)self setRegionInsidePendingTimer:0];
}

- (void)_onRegionExit
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SMSessionMonitor _onRegionExit]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, Received region exit event", &v6, 0xCu);
    }
  }

  v4 = [(SMSessionMonitor *)self sessionMonitorState];
  [v4 setCurrentRegionState:1];

  [(SMSessionMonitor *)self _persistState];
  v5 = [(SMSessionMonitor *)self regionInsidePendingTimer];
  [v5 invalidate];

  [(SMSessionMonitor *)self setRegionInsidePendingTimer:0];
}

- (void)onLocationNotification:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __43__SMSessionMonitor_onLocationNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = v4;
  v13 = self;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(SMSessionMonitor *)self queue:v8];
  dispatch_async(v7, v6);
}

void __43__SMSessionMonitor_onLocationNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) leechedLocations];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v2 reverseObjectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([SMTriggerDestination validLocation:*(*(&v9 + 1) + 8 * i)])
          {
            v8 = [v2 lastObject];
            [*(a1 + 40) setCurrentLocation:v8];

            goto LABEL_14;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [notification isKindOfClass:[RTLocationManagerNotificationLocationsLeeched class]]", buf, 2u);
    }
  }
}

- (SMSessionManagerMonitorProtocol)sessionManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionManagerDelegate);

  return WeakRetained;
}

@end