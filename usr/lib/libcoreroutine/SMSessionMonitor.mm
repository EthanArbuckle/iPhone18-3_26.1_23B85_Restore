@interface SMSessionMonitor
+ (id)riskStateToString:(unint64_t)string;
- (SMSessionManagerMonitorProtocol)sessionManagerDelegate;
- (SMSessionMonitor)initWithDefaultsManager:(id)manager dataProtectionManager:(id)protectionManager healthKitManager:(id)kitManager locationManager:(id)locationManager motionActivityManager:(id)activityManager platform:(id)platform sessionMetricManager:(id)metricManager sessionStore:(id)self0 wristStateManager:(id)self1 noMovementMonitor:(id)self2;
- (SMSessionMonitor)initWithDefaultsManager:(id)manager dataProtectionManager:(id)protectionManager healthKitManager:(id)kitManager locationManager:(id)locationManager motionActivityManager:(id)activityManager platform:(id)platform sessionMetricManager:(id)metricManager sessionStore:(id)self0 wristStateManager:(id)self1 timerManager:(id)self2 noMovementMonitor:(id)self3;
- (id)_createTriggersWithConfiguration:(id)configuration;
- (void)_addObservers;
- (void)_bootstrap;
- (void)_handleCircularRegionCallback:(int64_t)callback region:(id)region clientIdentifier:(id)identifier;
- (void)_initializeSessionWithConfiguration:(id)configuration;
- (void)_initializeTriggersForRemoteSessionIfNecessary;
- (void)_onBecomingActiveDevice:(id)device;
- (void)_onBecomingNonActiveDevice:(id)device;
- (void)_onRegionExit;
- (void)_onRegionInsidePendingTimerExpiry;
- (void)_persistState;
- (void)_processSessionEnd;
- (void)_processSessionResumeWithState:(id)state;
- (void)_processTriggerEstimatedEndDateUpdateNotification:(id)notification;
- (void)_processTriggerNotification:(id)notification;
- (void)_processUserTriggerResponse:(int64_t)response;
- (void)_promptDestinationAnomalyVerificationWithContext:(id)context;
- (void)_promptDirectTriggerWithContext:(id)context;
- (void)_promptEstimatedEndDateUpdateWithContext:(id)context;
- (void)_promptRoundTripAnomalyVerificationWithContext:(id)context;
- (void)_promptSafeArrivalWithContext:(id)context;
- (void)_promptTimerEndedVerificationWithContext:(id)context;
- (void)_promptWorkoutAnomalyVerificationWithContext:(id)context;
- (void)_registerForCircularRegionEventsForIdentifier:(id)identifier;
- (void)_registerForTriggersWithConfiguration:(id)configuration;
- (void)_removeObservers;
- (void)_reset;
- (void)_setup;
- (void)_setupGeofenceWithLocation:(id)location regionIdentifier:(id)identifier radius:(double)radius destinationType:(unint64_t)type;
- (void)_unregisterForCircularRegionEventsForIdentifier:(id)identifier;
- (void)_unregisterForTriggers;
- (void)_updateDestinationBoundRegionStateWithCircularRegionCallback:(int64_t)callback;
- (void)_updateGeofenceWithConfiguration:(id)configuration;
- (void)_updateRegionStateWithCircularRegionCallback:(int64_t)callback;
- (void)_updateRoundTripRegionStateWithCircularRegionCallback:(int64_t)callback;
- (void)_updateTriggersWithConfiguration:(id)configuration;
- (void)_updateTriggersWithUserResponse:(int64_t)response;
- (void)_updateUserWithTriggerContext:(id)context;
- (void)handleCircularRegionCallback:(int64_t)callback region:(id)region clientIdentifier:(id)identifier;
- (void)onBecomingActiveDevice:(id)device;
- (void)onBecomingNonActiveDevice:(id)device;
- (void)onLocationNotification:(id)notification;
- (void)onRemoteEmergencyContactsNotified:(unint64_t)notified;
- (void)onSessionChangedWithConfiguration:(id)configuration;
- (void)onSessionEndedForActiveDevice:(BOOL)device;
- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device;
- (void)onSessionStartedWithConfiguration:(id)configuration;
- (void)onTriggerNotification:(id)notification;
- (void)onUserTriggerResponse:(int64_t)response;
- (void)onWorkoutPause;
- (void)onWorkoutResume;
- (void)setRiskState:(unint64_t)state;
- (void)setSessionManagerDelegate:(id)delegate;
@end

@implementation SMSessionMonitor

- (SMSessionMonitor)initWithDefaultsManager:(id)manager dataProtectionManager:(id)protectionManager healthKitManager:(id)kitManager locationManager:(id)locationManager motionActivityManager:(id)activityManager platform:(id)platform sessionMetricManager:(id)metricManager sessionStore:(id)self0 wristStateManager:(id)self1 noMovementMonitor:(id)self2
{
  monitorCopy = monitor;
  stateManagerCopy = stateManager;
  storeCopy = store;
  metricManagerCopy = metricManager;
  platformCopy = platform;
  activityManagerCopy = activityManager;
  locationManagerCopy = locationManager;
  kitManagerCopy = kitManager;
  protectionManagerCopy = protectionManager;
  managerCopy = manager;
  v22 = objc_opt_new();
  v31 = [(SMSessionMonitor *)self initWithDefaultsManager:managerCopy dataProtectionManager:protectionManagerCopy healthKitManager:kitManagerCopy locationManager:locationManagerCopy motionActivityManager:activityManagerCopy platform:platformCopy sessionMetricManager:metricManagerCopy sessionStore:storeCopy wristStateManager:stateManagerCopy timerManager:v22 noMovementMonitor:monitorCopy];

  return v31;
}

- (SMSessionMonitor)initWithDefaultsManager:(id)manager dataProtectionManager:(id)protectionManager healthKitManager:(id)kitManager locationManager:(id)locationManager motionActivityManager:(id)activityManager platform:(id)platform sessionMetricManager:(id)metricManager sessionStore:(id)self0 wristStateManager:(id)self1 timerManager:(id)self2 noMovementMonitor:(id)self3
{
  managerCopy = manager;
  protectionManagerCopy = protectionManager;
  protectionManagerCopy2 = protectionManager;
  kitManagerCopy = kitManager;
  kitManagerCopy2 = kitManager;
  locationManagerCopy = locationManager;
  locationManagerCopy2 = locationManager;
  activityManagerCopy = activityManager;
  activityManagerCopy2 = activityManager;
  platformCopy = platform;
  metricManagerCopy = metricManager;
  storeCopy = store;
  stateManagerCopy = stateManager;
  timerManagerCopy = timerManager;
  monitorCopy = monitor;
  v55 = managerCopy;
  v53 = monitorCopy;
  if (!managerCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v36 = 0;
    v23 = protectionManagerCopy2;
    v24 = kitManagerCopy2;
    v25 = activityManagerCopy2;
    goto LABEL_20;
  }

  v23 = protectionManagerCopy2;
  if (!protectionManagerCopy2)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v24 = kitManagerCopy2;
    v25 = activityManagerCopy2;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dataProtectionManager", buf, 2u);
    }

    v36 = 0;
LABEL_20:
    v26 = platformCopy;
LABEL_39:
    selfCopy = self;
    goto LABEL_40;
  }

  v24 = kitManagerCopy2;
  v25 = activityManagerCopy2;
  if (!kitManagerCopy2)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v26 = platformCopy;
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

  v26 = platformCopy;
  if (!locationManagerCopy2)
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

  if (!platformCopy)
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

  if (!storeCopy)
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

  if (!metricManagerCopy)
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

  if (!timerManagerCopy)
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

  if (!monitorCopy)
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
    objc_storeStrong(&v27->_defaultsManager, manager);
    objc_storeStrong(&v28->_dataProtectionManager, protectionManagerCopy);
    v29 = objc_opt_new();
    distanceCalculator = v28->_distanceCalculator;
    v28->_distanceCalculator = v29;

    objc_storeStrong(&v28->_healthKitManager, kitManagerCopy);
    objc_storeStrong(&v28->_locationManager, locationManagerCopy);
    objc_storeStrong(&v28->_motionActivityManager, activityManagerCopy);
    objc_storeStrong(&v28->_platform, platform);
    objc_storeStrong(&v28->_sessionMetricManager, metricManager);
    objc_storeStrong(&v28->_sessionStore, store);
    objc_storeStrong(&v28->_wristStateManager, stateManager);
    objc_storeStrong(&v28->_timerManager, timerManager);
    objc_storeStrong(&v28->_noMovementMonitor, monitor);
    v31 = v28;
    v32 = v28;
    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(SMSessionMonitor *)v32 UTF8String];
    }

    else
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v32];
      uTF8String = [v42 UTF8String];
    }

    v43 = dispatch_queue_create(uTF8String, v33);

    queue = v32->_queue;
    v32->_queue = v43;

    queue = [(SMSessionMonitor *)v32 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __213__SMSessionMonitor_initWithDefaultsManager_dataProtectionManager_healthKitManager_locationManager_motionActivityManager_platform_sessionMetricManager_sessionStore_wristStateManager_timerManager_noMovementMonitor___block_invoke;
    block[3] = &unk_2788C4EA0;
    v61 = v32;
    dispatch_async(queue, block);

    v26 = platformCopy;
    v27 = v31;
  }

  selfCopy = v27;
  v36 = selfCopy;
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
  sessionStore = [(SMSessionMonitor *)self sessionStore];
  configuration = [(SMSessionMonitor *)self configuration];
  sessionID = [configuration sessionID];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __30__SMSessionMonitor__bootstrap__block_invoke;
  v38[3] = &unk_2788C75E8;
  v40 = &v48;
  v41 = &v42;
  v7 = v3;
  v39 = v7;
  [sessionStore fetchMostRecentSessionMonitorStateWithSessionID:sessionID handler:v38];

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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
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
      configuration2 = [(SMSessionMonitor *)self configuration];
      sessionID2 = [configuration2 sessionID];
      date = [MEMORY[0x277CBEAA8] date];
      v36 = [v32 initWithSessionIdentifier:sessionID2 currentRegionState:0 triggerPending:0 triggerConfirmed:0 date:date];
      [(SMSessionMonitor *)self setSessionMonitorState:v36];

      [(SMSessionMonitor *)self _persistState];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
        *buf = 136315394;
        *&buf[4] = "[SMSessionMonitor _bootstrap]";
        v55 = 2112;
        v56 = sessionMonitorState;
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

  sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState setTriggerPending:0];

  sessionMonitorState2 = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState2 setTriggerConfirmed:0];

  [(SMSessionMonitor *)self setConfiguration:0];
  sessionMonitorState3 = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState3 setCurrentRegionState:0];

  [(SMSessionMonitor *)self setRiskState:0];
  regionInsidePendingTimer = [(SMSessionMonitor *)self regionInsidePendingTimer];
  [regionInsidePendingTimer invalidate];

  [(SMSessionMonitor *)self setRegionInsidePendingTimer:0];
  [(SMSessionMonitor *)self _persistState];
}

- (void)setSessionManagerDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ([delegateCopy conformsToProtocol:&unk_284619CA8] && (objc_msgSend(delegateCopy, "conformsToProtocol:", &unk_284619EB0) & 1) != 0)
  {
    objc_storeWeak(&self->_sessionManagerDelegate, delegateCopy);
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

- (void)setRiskState:(unint64_t)state
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D4ABC8];
  mostRecentTriggerContext = [(SMSessionMonitor *)self mostRecentTriggerContext];
  v7 = [v5 isSOSTriggerCategory:{objc_msgSend(mostRecentTriggerContext, "triggerCategory")}];

  if (self->_riskState != state || (v7 & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [SMSessionMonitor riskStateToString:self->_riskState];
        v12 = [SMSessionMonitor riskStateToString:state];
        v27 = 136315650;
        v28 = "[SMSessionMonitor setRiskState:]";
        v29 = 2112;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, riskState change detected, from, %@, to, %@", &v27, 0x20u);
      }
    }

    switch(state)
    {
      case 4uLL:
        mostRecentTriggerContext2 = [(SMSessionMonitor *)self mostRecentTriggerContext];
        [(SMSessionMonitor *)self _promptSafeArrivalWithContext:mostRecentTriggerContext2];
        break;
      case 3uLL:
        sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
        v17 = v7 | ~[sessionMonitorState triggerConfirmed];

        mostRecentTriggerContext2 = [(SMSessionMonitor *)self mostRecentTriggerContext];
        if ((v17 & 1) == 0)
        {
LABEL_22:
          [(SMSessionMonitor *)self _updateUserWithTriggerContext:mostRecentTriggerContext2];
          break;
        }

        [(SMSessionMonitor *)self _promptDirectTriggerWithContext:mostRecentTriggerContext2];
        break;
      case 2uLL:
        if (self->_riskState == 3)
        {
LABEL_8:
          mostRecentTriggerContext3 = [(SMSessionMonitor *)self mostRecentTriggerContext];
          [(SMSessionMonitor *)self _updateUserWithTriggerContext:mostRecentTriggerContext3];

          return;
        }

        sessionMonitorState2 = [(SMSessionMonitor *)self sessionMonitorState];
        triggerPending = [sessionMonitorState2 triggerPending];

        if (!triggerPending)
        {
          v18 = MEMORY[0x277D4ABC8];
          mostRecentTriggerContext4 = [(SMSessionMonitor *)self mostRecentTriggerContext];
          LODWORD(v18) = [v18 isRoundTripTriggerCategory:{objc_msgSend(mostRecentTriggerContext4, "triggerCategory")}];

          if (v18)
          {
            mostRecentTriggerContext2 = [(SMSessionMonitor *)self mostRecentTriggerContext];
            [(SMSessionMonitor *)self _promptRoundTripAnomalyVerificationWithContext:mostRecentTriggerContext2];
          }

          else
          {
            v20 = MEMORY[0x277D4ABC8];
            mostRecentTriggerContext5 = [(SMSessionMonitor *)self mostRecentTriggerContext];
            LODWORD(v20) = [v20 isDestinationTriggerCategory:{objc_msgSend(mostRecentTriggerContext5, "triggerCategory")}];

            if (v20)
            {
              mostRecentTriggerContext2 = [(SMSessionMonitor *)self mostRecentTriggerContext];
              [(SMSessionMonitor *)self _promptDestinationAnomalyVerificationWithContext:mostRecentTriggerContext2];
            }

            else
            {
              v23 = MEMORY[0x277D4ABC8];
              mostRecentTriggerContext6 = [(SMSessionMonitor *)self mostRecentTriggerContext];
              LODWORD(v23) = [v23 isDurationTriggerCategory:{objc_msgSend(mostRecentTriggerContext6, "triggerCategory")}];

              if (v23)
              {
                mostRecentTriggerContext2 = [(SMSessionMonitor *)self mostRecentTriggerContext];
                [(SMSessionMonitor *)self _promptTimerEndedVerificationWithContext:mostRecentTriggerContext2];
              }

              else
              {
                v25 = MEMORY[0x277D4ABC8];
                mostRecentTriggerContext7 = [(SMSessionMonitor *)self mostRecentTriggerContext];
                LODWORD(v25) = [v25 isWorkoutTriggerCategory:{objc_msgSend(mostRecentTriggerContext7, "triggerCategory")}];

                if (!v25)
                {
                  goto LABEL_24;
                }

                mostRecentTriggerContext2 = [(SMSessionMonitor *)self mostRecentTriggerContext];
                [(SMSessionMonitor *)self _promptWorkoutAnomalyVerificationWithContext:mostRecentTriggerContext2];
              }
            }
          }

          break;
        }

        mostRecentTriggerContext2 = [(SMSessionMonitor *)self mostRecentTriggerContext];
        goto LABEL_22;
      default:
LABEL_24:
        self->_riskState = state;
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

  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    goto LABEL_8;
  }
}

+ (id)riskStateToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"SMSessionMonitorRiskStateUnknown";
  }

  else
  {
    return off_2788C7658[string - 1];
  }
}

- (id)_createTriggersWithConfiguration:(id)configuration
{
  v54 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = objc_opt_new();
  v6 = [SMTriggerSOS alloc];
  queue = [(SMSessionMonitor *)self queue];
  sessionStore = [(SMSessionMonitor *)self sessionStore];
  v9 = [(SMTriggerSOS *)v6 initWithQueue:queue sessionStore:sessionStore];

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
  sessionType = [configurationCopy sessionType];
  if ((sessionType - 2) < 2)
  {
    v45 = v9;
    v46 = configurationCopy;
    v47 = v5;
    v41 = [SMTriggerDestination alloc];
    queue2 = [(SMSessionMonitor *)self queue];
    defaultsManager = [(SMSessionMonitor *)self defaultsManager];
    dataProtectionManager = [(SMSessionMonitor *)self dataProtectionManager];
    locationManager = [(SMSessionMonitor *)self locationManager];
    motionActivityManager = [(SMSessionMonitor *)self motionActivityManager];
    distanceCalculator = [(SMSessionMonitor *)self distanceCalculator];
    platform = [(SMSessionMonitor *)self platform];
    sessionStore2 = [(SMSessionMonitor *)self sessionStore];
    timerManager = [(SMSessionMonitor *)self timerManager];
    sessionMetricManager = [(SMSessionMonitor *)self sessionMetricManager];
    v16 = [(SMTriggerDestination *)v41 initWithQueue:queue2 defaultsManager:defaultsManager dataProtectionManager:dataProtectionManager locationManager:locationManager motionActivityManager:motionActivityManager distanceCalculator:distanceCalculator platform:platform sessionStore:sessionStore2 timerManager:timerManager sessionMetricManager:sessionMetricManager];

    if (v16)
    {
LABEL_15:
      configurationCopy = v46;
      v5 = v47;
      v9 = v45;
      goto LABEL_19;
    }

    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      configurationCopy = v46;
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

  if (sessionType == 4)
  {
    v45 = v9;
    v46 = configurationCopy;
    v47 = v5;
    v40 = [SMSessionWorkoutMonitor alloc];
    queue3 = [(SMSessionMonitor *)self queue];
    defaultsManager2 = [(SMSessionMonitor *)self defaultsManager];
    distanceCalculator2 = [(SMSessionMonitor *)self distanceCalculator];
    locationManager2 = [(SMSessionMonitor *)self locationManager];
    healthKitManager = [(SMSessionMonitor *)self healthKitManager];
    platform2 = [(SMSessionMonitor *)self platform];
    sessionMetricManager2 = [(SMSessionMonitor *)self sessionMetricManager];
    sessionStore3 = [(SMSessionMonitor *)self sessionStore];
    timerManager2 = [(SMSessionMonitor *)self timerManager];
    noMovementMonitor = [(SMSessionMonitor *)self noMovementMonitor];
    motionActivityManager2 = [(SMSessionMonitor *)self motionActivityManager];
    v16 = [(SMSessionWorkoutMonitor *)v40 initWithQueue:queue3 defaultsManager:defaultsManager2 distanceCalculator:distanceCalculator2 locationManager:locationManager2 healthKitManager:healthKitManager platform:platform2 sessionMetricManager:sessionMetricManager2 sessionStore:sessionStore3 timerManager:timerManager2 noMovementMonitor:noMovementMonitor motionActivityManager:motionActivityManager2];

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

  if (sessionType != 1)
  {
    goto LABEL_20;
  }

  v12 = [SMTriggerDuration alloc];
  queue4 = [(SMSessionMonitor *)self queue];
  defaultsManager3 = [(SMSessionMonitor *)self defaultsManager];
  sessionStore4 = [(SMSessionMonitor *)self sessionStore];
  v16 = [(SMTriggerDuration *)v12 initWithQueue:queue4 defaultsManager:defaultsManager3 sessionStore:sessionStore4];

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
      v37 = [MEMORY[0x277D4AB78] sessionTypeToString:{objc_msgSend(configurationCopy, "sessionType")}];
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

- (void)_processTriggerNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (!notificationCopy)
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
  triggerCategory = [notificationCopy triggerCategory];
  configuration = [(SMSessionMonitor *)self configuration];
  sessionID = [configuration sessionID];
  v10 = [v6 initWithUpdateReason:1 triggerCategory:triggerCategory sessionID:sessionID];

  [(SMSessionMonitor *)self setMostRecentTriggerContext:v10];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[SMSessionMonitor _processTriggerNotification:]";
      v17 = 2112;
      v18 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, processing trigger notification, %@", &v15, 0x16u);
    }
  }

  if ([notificationCopy SOSState] == 2)
  {
    selfCopy2 = self;
    v13 = 3;
  }

  else
  {
    if ([notificationCopy SOSState] != 1)
    {
      mostRecentTriggerContext = [(SMSessionMonitor *)self mostRecentTriggerContext];
      [(SMSessionMonitor *)self _updateUserWithTriggerContext:mostRecentTriggerContext];

      goto LABEL_15;
    }

    selfCopy2 = self;
    v13 = 2;
  }

  [(SMSessionMonitor *)selfCopy2 setRiskState:v13];
LABEL_15:
}

- (void)_processTriggerEstimatedEndDateUpdateNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (!notificationCopy)
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
  triggerCategory = [notificationCopy triggerCategory];
  estimatedEndDate = [notificationCopy estimatedEndDate];
  coarseEstimatedEndDate = [notificationCopy coarseEstimatedEndDate];
  configuration = [(SMSessionMonitor *)self configuration];
  sessionID = [configuration sessionID];
  v12 = [v6 initWithUpdateReason:5 triggerCategory:triggerCategory estimatedEndDate:estimatedEndDate coarseEstimatedEndDate:coarseEstimatedEndDate sessionID:sessionID];

  [(SMSessionMonitor *)self setMostRecentTriggerContext:v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[SMSessionMonitor _processTriggerEstimatedEndDateUpdateNotification:]";
      v17 = 2112;
      v18 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, processing trigger notification, %@", &v15, 0x16u);
    }
  }

  mostRecentTriggerContext = [(SMSessionMonitor *)self mostRecentTriggerContext];
  [(SMSessionMonitor *)self _promptEstimatedEndDateUpdateWithContext:mostRecentTriggerContext];
}

- (void)_processUserTriggerResponse:(int64_t)response
{
  v14 = *MEMORY[0x277D85DE8];
  if (response == 2)
  {
    v5 = 1;
  }

  else
  {
    if ((response & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      goto LABEL_6;
    }

    v5 = 3;
  }

  sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState setTriggerConfirmed:response != 2];

  sessionMonitorState2 = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState2 setTriggerPending:0];

  [(SMSessionMonitor *)self setRiskState:v5];
LABEL_6:
  [(SMSessionMonitor *)self _persistState];
  [(SMSessionMonitor *)self _updateTriggersWithUserResponse:response];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277D4ABC8] userTriggerResponseToString:response];
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
  locationManager = [(SMSessionMonitor *)self locationManager];
  v4 = 0;
  [locationManager stopMonitoringAllRegionsForClientIdentifier:@"SMDestinationRegionClientIdentifier" error:&v4];

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

- (void)_processSessionResumeWithState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!stateCopy)
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

  configuration = [stateCopy configuration];
  [(SMSessionMonitor *)self _initializeSessionWithConfiguration:configuration];

  v7 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(stateCopy, "sessionState")}];
  sessionState = [stateCopy sessionState];
  if (sessionState <= 8)
  {
    if (sessionState <= 3)
    {
      if (sessionState)
      {
        if (sessionState != 1)
        {
          if (sessionState == 2)
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

            selfCopy2 = self;
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

    switch(sessionState)
    {
      case 4:
        sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
        [sessionMonitorState setTriggerConfirmed:1];

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

    selfCopy2 = self;
    v11 = 2;
LABEL_44:
    [(SMSessionMonitor *)selfCopy2 setRiskState:v11];
    goto LABEL_45;
  }

  if (sessionState > 11)
  {
    if (sessionState == 12)
    {
      goto LABEL_31;
    }

    if (sessionState != 14)
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

  if ((sessionState - 10) >= 2)
  {
    if (sessionState != 9)
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

- (void)_registerForTriggersWithConfiguration:(id)configuration
{
  v18 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  [(SMSessionMonitor *)self _unregisterForTriggers];
  v5 = [(SMSessionMonitor *)self _createTriggersWithConfiguration:configurationCopy];
  [(SMSessionMonitor *)self setTriggers:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  triggers = [(SMSessionMonitor *)self triggers];
  v7 = [triggers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(triggers);
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
          [v11 startMonitoringWithConfiguration:configurationCopy handler:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [triggers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  triggers = [(SMSessionMonitor *)self triggers];
  v3 = [triggers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(triggers);
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
      v4 = [triggers countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_updateGeofenceWithConfiguration:(id)configuration
{
  v28 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy)
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

  destination = [configurationCopy destination];
  clLocation = [destination clLocation];

  if (clLocation)
  {
    configuration = [(SMSessionMonitor *)self configuration];
    destination2 = [configuration destination];
    clLocation2 = [destination2 clLocation];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315651;
        v23 = "[SMSessionMonitor _updateGeofenceWithConfiguration:]";
        v24 = 2117;
        v25 = clLocation2;
        v26 = 2117;
        v27 = clLocation;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, current configuration destination, %{sensitive}@, updated configuration destination, %{sensitive}@", buf, 0x20u);
      }
    }

    if (clLocation2 && ([clLocation2 distanceFromLocation:clLocation], v12 < 10.0))
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

      locationManager = [(SMSessionMonitor *)self locationManager];
      v21 = 0;
      [locationManager stopMonitoringAllRegionsForClientIdentifier:@"SMDestinationRegionClientIdentifier" error:&v21];
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

      destination3 = [configurationCopy destination];
      [destination3 radius];
      v19 = v18;

      if (v19 <= 0.0)
      {
        v19 = *MEMORY[0x277D4ADB0];
      }

      else if (v19 < *MEMORY[0x277D4ADC0])
      {
        v19 = *MEMORY[0x277D4ADC0];
      }

      destination4 = [configurationCopy destination];
      -[SMSessionMonitor _setupGeofenceWithLocation:regionIdentifier:radius:destinationType:](self, "_setupGeofenceWithLocation:regionIdentifier:radius:destinationType:", clLocation, @"SMDestinationRegionIdentifier", [destination4 destinationType], v19);
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)_initializeSessionWithConfiguration:(id)configuration
{
  v13 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy)
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
  [(SMSessionMonitor *)self _registerForTriggersWithConfiguration:configurationCopy];
  locationManager = [(SMSessionMonitor *)self locationManager];
  v7 = [locationManager isMonitoringForRegionWithClientIdentifier:@"SMDestinationRegionClientIdentifier" regionIdentifier:@"SMDestinationRegionIdentifier"];

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
      *&v10[14] = configurationCopy;
      v11 = 2112;
      v12 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@, monitoringForConfiguration, %@", v10, 0x20u);
    }
  }

  if ((v7 & 1) == 0)
  {
    [(SMSessionMonitor *)self _updateGeofenceWithConfiguration:configurationCopy];
  }

  [(SMSessionMonitor *)self setConfiguration:configurationCopy, *v10];
  [(SMSessionMonitor *)self _bootstrap];
}

- (void)_initializeTriggersForRemoteSessionIfNecessary
{
  triggers = [(SMSessionMonitor *)self triggers];
  v4 = [triggers count];

  if (!v4)
  {

    [(SMSessionMonitor *)self _registerForTriggersWithConfiguration:0];
  }
}

- (void)_addObservers
{
  locationManager = [(SMSessionMonitor *)self locationManager];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [locationManager addObserver:self selector:sel_onLocationNotification_ name:v3];
}

- (void)_removeObservers
{
  locationManager = [(SMSessionMonitor *)self locationManager];
  [locationManager removeObserver:self];
}

- (void)_persistState
{
  v47[1] = *MEMORY[0x277D85DE8];
  sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
  dirty = [sessionMonitorState dirty];

  if (dirty)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__29;
    v39 = __Block_byref_object_dispose__29;
    v40 = 0;
    v5 = dispatch_semaphore_create(0);
    sessionStore = [(SMSessionMonitor *)self sessionStore];
    sessionMonitorState2 = [(SMSessionMonitor *)self sessionMonitorState];
    v46 = sessionMonitorState2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __33__SMSessionMonitor__persistState__block_invoke;
    v32[3] = &unk_2788C4618;
    v34 = &v35;
    v9 = v5;
    v33 = v9;
    [sessionStore storeSessionMonitorStates:v8 handler:v32];

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
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
      firstObject = [v20 firstObject];

      [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
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
        sessionMonitorState3 = [(SMSessionMonitor *)self sessionMonitorState];
        v29 = v36[5];
        *buf = 136315650;
        *&buf[4] = "[SMSessionMonitor _persistState]";
        v42 = 2112;
        v43 = sessionMonitorState3;
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%s, persisted state, %@, error, %@", buf, 0x20u);
      }
    }

    sessionMonitorState4 = [(SMSessionMonitor *)self sessionMonitorState];
    [sessionMonitorState4 setDirty:0];

    _Block_object_dispose(&v35, 8);
  }
}

void __33__SMSessionMonitor__persistState__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)onBecomingActiveDevice:(id)device
{
  deviceCopy = device;
  queue = [(SMSessionMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SMSessionMonitor_onBecomingActiveDevice___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)_onBecomingActiveDevice:(id)device
{
  v10 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315395;
      v7 = "[SMSessionMonitor _onBecomingActiveDevice:]";
      v8 = 2117;
      v9 = deviceCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@, initiating actions to become an active device", &v6, 0x16u);
    }
  }

  [(SMSessionMonitor *)self onSessionResumedWithState:deviceCopy forActiveDevice:1];
}

- (void)onBecomingNonActiveDevice:(id)device
{
  deviceCopy = device;
  queue = [(SMSessionMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SMSessionMonitor_onBecomingNonActiveDevice___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)_onBecomingNonActiveDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v9 = "[SMSessionMonitor _onBecomingNonActiveDevice:]";
      v10 = 2117;
      v11 = deviceCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@, initiating actions to become a non active device", buf, 0x16u);
    }
  }

  locationManager = [(SMSessionMonitor *)self locationManager];
  v7 = 0;
  [locationManager stopMonitoringAllRegionsForClientIdentifier:@"SMDestinationRegionClientIdentifier" error:&v7];

  [(SMSessionMonitor *)self _unregisterForTriggers];
  [(SMSessionMonitor *)self _reset];
  [(SMSessionMonitor *)self _initializeTriggersForRemoteSessionIfNecessary];
}

- (void)onSessionStartedWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = [(SMSessionMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SMSessionMonitor_onSessionStartedWithConfiguration___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = configurationCopy;
  selfCopy = self;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
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

- (void)onSessionChangedWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__SMSessionMonitor_onSessionChangedWithConfiguration___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = configurationCopy;
  selfCopy = self;
  v5 = configurationCopy;
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

- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device
{
  stateCopy = state;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__SMSessionMonitor_onSessionResumedWithState_forActiveDevice___block_invoke;
  aBlock[3] = &unk_2788C53C8;
  deviceCopy = device;
  v11 = stateCopy;
  selfCopy = self;
  v7 = stateCopy;
  v8 = _Block_copy(aBlock);
  queue = [(SMSessionMonitor *)self queue];
  dispatch_async(queue, v8);
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

- (void)onSessionEndedForActiveDevice:(BOOL)device
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__SMSessionMonitor_onSessionEndedForActiveDevice___block_invoke;
  aBlock[3] = &unk_2788C4EA0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  queue = [(SMSessionMonitor *)self queue];
  dispatch_async(queue, v4);
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

- (void)onUserTriggerResponse:(int64_t)response
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SMSessionMonitor_onUserTriggerResponse___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = response;
  v4 = _Block_copy(v6);
  queue = [(SMSessionMonitor *)self queue];
  dispatch_async(queue, v4);
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

- (void)onRemoteEmergencyContactsNotified:(unint64_t)notified
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SMSessionMonitor_onRemoteEmergencyContactsNotified___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = notified;
  v4 = _Block_copy(v6);
  queue = [(SMSessionMonitor *)self queue];
  dispatch_async(queue, v4);
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
  queue = [(SMSessionMonitor *)self queue];
  dispatch_async(queue, v3);
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
  queue = [(SMSessionMonitor *)self queue];
  dispatch_async(queue, v3);
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

- (void)_promptEstimatedEndDateUpdateWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _promptEstimatedEndDateUpdateWithContext:]";
      v9 = 2112;
      v10 = contextCopy;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v7, 0x16u);
    }
  }

  sessionManagerDelegate = [(SMSessionMonitor *)self sessionManagerDelegate];
  [sessionManagerDelegate promptEstimatedEndDateUpdateWithContext:contextCopy];
}

- (void)_promptTimerEndedVerificationWithContext:(id)context
{
  v12 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState setTriggerPending:1];

  [(SMSessionMonitor *)self _persistState];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[SMSessionMonitor _promptTimerEndedVerificationWithContext:]";
      v10 = 2112;
      v11 = contextCopy;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v8, 0x16u);
    }
  }

  sessionManagerDelegate = [(SMSessionMonitor *)self sessionManagerDelegate];
  [sessionManagerDelegate promptTimerEndedVerificationWithContext:contextCopy];
}

- (void)_promptDestinationAnomalyVerificationWithContext:(id)context
{
  v12 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState setTriggerPending:1];

  [(SMSessionMonitor *)self _persistState];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[SMSessionMonitor _promptDestinationAnomalyVerificationWithContext:]";
      v10 = 2112;
      v11 = contextCopy;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v8, 0x16u);
    }
  }

  sessionManagerDelegate = [(SMSessionMonitor *)self sessionManagerDelegate];
  [sessionManagerDelegate promptDestinationAnomalyVerificationWithContext:contextCopy];
}

- (void)_promptRoundTripAnomalyVerificationWithContext:(id)context
{
  v12 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState setTriggerPending:1];

  [(SMSessionMonitor *)self _persistState];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[SMSessionMonitor _promptRoundTripAnomalyVerificationWithContext:]";
      v10 = 2112;
      v11 = contextCopy;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v8, 0x16u);
    }
  }

  sessionManagerDelegate = [(SMSessionMonitor *)self sessionManagerDelegate];
  [sessionManagerDelegate promptRoundTripAnomalyVerificationWithContext:contextCopy];
}

- (void)_promptWorkoutAnomalyVerificationWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _promptWorkoutAnomalyVerificationWithContext:]";
      v9 = 2112;
      v10 = contextCopy;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v7, 0x16u);
    }
  }

  sessionManagerDelegate = [(SMSessionMonitor *)self sessionManagerDelegate];
  [sessionManagerDelegate promptWorkoutAnomalyVerificationWithContext:contextCopy];
}

- (void)_promptDirectTriggerWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _promptDirectTriggerWithContext:]";
      v9 = 2112;
      v10 = contextCopy;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v7, 0x16u);
    }
  }

  sessionManagerDelegate = [(SMSessionMonitor *)self sessionManagerDelegate];
  [sessionManagerDelegate promptDirectTriggerWithContext:contextCopy];
}

- (void)_promptSafeArrivalWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _promptSafeArrivalWithContext:]";
      v9 = 2112;
      v10 = contextCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, context, %@", &v7, 0x16u);
    }
  }

  [(SMSessionMonitor *)self _processSessionEnd];
  sessionManagerDelegate = [(SMSessionMonitor *)self sessionManagerDelegate];
  [sessionManagerDelegate promptSafeArrivalWithContext:contextCopy];
}

- (void)_updateUserWithTriggerContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SMSessionMonitor _updateUserWithTriggerContext:]";
      v9 = 2112;
      v10 = contextCopy;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, sessionMonitorContext, %@", &v7, 0x16u);
    }
  }

  sessionManagerDelegate = [(SMSessionMonitor *)self sessionManagerDelegate];
  [sessionManagerDelegate updateUserWithTriggerContext:contextCopy];
}

- (void)onTriggerNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[SMSessionMonitor onTriggerNotification:]";
      v17 = 2112;
      v18 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, notification, %@", buf, 0x16u);
    }
  }

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __42__SMSessionMonitor_onTriggerNotification___block_invoke;
  v12 = &unk_2788C4A70;
  v13 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
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

- (void)_updateTriggersWithConfiguration:(id)configuration
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  triggers = [(SMSessionMonitor *)self triggers];
  v6 = [triggers countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(triggers);
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

          [v12 modifyMonitoringWithConfiguration:configurationCopy handler:{&__block_literal_global_156, v14}];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [triggers countByEnumeratingWithState:&v15 objects:v23 count:16];
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

- (void)_updateTriggersWithUserResponse:(int64_t)response
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  triggers = [(SMSessionMonitor *)self triggers];
  v5 = [triggers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(triggers);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 onUserTriggerResponse:response];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [triggers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setupGeofenceWithLocation:(id)location regionIdentifier:(id)identifier radius:(double)radius destinationType:(unint64_t)type
{
  v37 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  identifierCopy = identifier;
  v12 = identifierCopy;
  if (locationCopy)
  {
    if (identifierCopy)
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
      v16 = [MEMORY[0x277D4AB88] destinationTypeToString:type];
      *buf = 136316163;
      v28 = "[SMSessionMonitor _setupGeofenceWithLocation:regionIdentifier:radius:destinationType:]";
      v29 = 2117;
      v30 = locationCopy;
      v31 = 2112;
      v32 = v12;
      v33 = 2048;
      radiusCopy = radius;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, regionLocation, %{sensitive}@, regionIdentifier, %@, radius, %.3f, destinationType, %@", buf, 0x34u);
    }
  }

  [locationCopy coordinate];
  v18 = v17;
  [locationCopy coordinate];
  v20 = 0x277CBFCD8;
  if (type != 1)
  {
    v20 = 0x277CBFBC8;
  }

  v21 = [objc_alloc(*v20) initWithCenter:v12 radius:v18 identifier:{v19, radius}];
  [v21 setGeoReferenceFrame:{objc_msgSend(locationCopy, "referenceFrame")}];
  locationManager = [(SMSessionMonitor *)self locationManager];
  v26 = 0;
  [locationManager startMonitoringForRegion:v21 clientIdentifier:@"SMDestinationRegionClientIdentifier" error:&v26];
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

- (void)_registerForCircularRegionEventsForIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[SMSessionMonitor _registerForCircularRegionEventsForIdentifier:]";
      v12 = 2112;
      v13 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Registering for circular region events with identifier, %@", buf, 0x16u);
    }
  }

  locationManager = [(SMSessionMonitor *)self locationManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SMSessionMonitor__registerForCircularRegionEventsForIdentifier___block_invoke;
  v8[3] = &unk_2788C7610;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [locationManager registerForRegionEventsWithClientIdentifier:v7 handler:v8];
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

- (void)_unregisterForCircularRegionEventsForIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[SMSessionMonitor _unregisterForCircularRegionEventsForIdentifier:]";
      v12 = 2112;
      v13 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Unregistering for circular region events with identifier, %@", buf, 0x16u);
    }
  }

  locationManager = [(SMSessionMonitor *)self locationManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SMSessionMonitor__unregisterForCircularRegionEventsForIdentifier___block_invoke;
  v8[3] = &unk_2788C4730;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [locationManager unregisterForRegionEventsWithClientIdentifier:v7 handler:v8];
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

- (void)handleCircularRegionCallback:(int64_t)callback region:(id)region clientIdentifier:(id)identifier
{
  regionCopy = region;
  identifierCopy = identifier;
  queue = [(SMSessionMonitor *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__SMSessionMonitor_handleCircularRegionCallback_region_clientIdentifier___block_invoke;
  v13[3] = &unk_2788C4C70;
  v13[4] = self;
  v14 = regionCopy;
  v15 = identifierCopy;
  callbackCopy = callback;
  v11 = identifierCopy;
  v12 = regionCopy;
  dispatch_async(queue, v13);
}

- (void)_handleCircularRegionCallback:(int64_t)callback region:(id)region clientIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (regionCopy)
  {
    if (identifierCopy)
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
      v14 = [RTLocationManager stringForRegionCallbackType:callback];
      v16 = 136315907;
      v17 = "[SMSessionMonitor _handleCircularRegionCallback:region:clientIdentifier:]";
      v18 = 2112;
      v19 = v14;
      v20 = 2117;
      v21 = regionCopy;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, Received event, %@, region, %{sensitive}@, clientIdentifier, %@", &v16, 0x2Au);
    }
  }

  if (v10 == @"SMDestinationRegionClientIdentifier")
  {
    if ((callback - 1) <= 1)
    {
      [(SMSessionMonitor *)self _updateRegionStateWithCircularRegionCallback:callback];
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

- (void)_updateRegionStateWithCircularRegionCallback:(int64_t)callback
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [RTLocationManager stringForRegionCallbackType:callback];
      currentLocation = [(SMSessionMonitor *)self currentLocation];
      configuration = [(SMSessionMonitor *)self configuration];
      destination = [configuration destination];
      clLocation = [destination clLocation];
      [currentLocation distanceFromLocation:clLocation];
      v16 = 136315650;
      v17 = "[SMSessionMonitor _updateRegionStateWithCircularRegionCallback:]";
      v18 = 2112;
      v19 = v6;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Received event, %@, distance to destination, %.3f", &v16, 0x20u);
    }
  }

  configuration2 = [(SMSessionMonitor *)self configuration];
  sessionType = [configuration2 sessionType];

  if (sessionType == 2)
  {
    [(SMSessionMonitor *)self _updateDestinationBoundRegionStateWithCircularRegionCallback:callback];
  }

  else
  {
    configuration3 = [(SMSessionMonitor *)self configuration];
    sessionType2 = [configuration3 sessionType];

    if (sessionType2 == 3)
    {
      [(SMSessionMonitor *)self _updateRoundTripRegionStateWithCircularRegionCallback:callback];
    }
  }
}

- (void)_updateDestinationBoundRegionStateWithCircularRegionCallback:(int64_t)callback
{
  v34 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [RTLocationManager stringForRegionCallbackType:callback];
      v7 = MEMORY[0x277D4ABD0];
      sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
      v9 = [v7 regionStateToString:{objc_msgSend(sessionMonitorState, "currentRegionState")}];
      *buf = 136315650;
      v29 = "[SMSessionMonitor _updateDestinationBoundRegionStateWithCircularRegionCallback:]";
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Received event, %@, currentRegionState, %@", buf, 0x20u);
    }
  }

  if (callback == 1)
  {
    sessionMonitorState2 = [(SMSessionMonitor *)self sessionMonitorState];
    currentRegionState = [sessionMonitorState2 currentRegionState];

    if (currentRegionState <= 2)
    {
      sessionMonitorState3 = [(SMSessionMonitor *)self sessionMonitorState];
      [sessionMonitorState3 setCurrentRegionState:2];

      [(SMSessionMonitor *)self _persistState];
      regionInsidePendingTimer = [(SMSessionMonitor *)self regionInsidePendingTimer];
      [regionInsidePendingTimer invalidate];

      [(SMSessionMonitor *)self setRegionInsidePendingTimer:0];
      objc_initWeak(&location, self);
      date = [MEMORY[0x277CBEAA8] date];
      v15 = [RTXPCTimerAlarm alloc];
      queue = [(SMSessionMonitor *)self queue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __81__SMSessionMonitor__updateDestinationBoundRegionStateWithCircularRegionCallback___block_invoke;
      v24[3] = &unk_2788C7638;
      v17 = date;
      v25 = v17;
      objc_copyWeak(&v26, &location);
      v18 = [(RTXPCTimerAlarm *)v15 initWithIdentifier:@"com.apple.routined.SMSessionMonitor.insidePendingTimer" queue:queue handler:v24];
      [(SMSessionMonitor *)self setRegionInsidePendingTimer:v18];

      regionInsidePendingTimer2 = [(SMSessionMonitor *)self regionInsidePendingTimer];
      [(SMSessionMonitor *)self sessionMonitorRegionInsidePendingTimerDelay];
      v20 = [v17 dateByAddingTimeInterval:?];
      v23 = 0;
      [regionInsidePendingTimer2 fireWithDate:v20 error:&v23];
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

  else if (callback == 2)
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

- (void)_updateRoundTripRegionStateWithCircularRegionCallback:(int64_t)callback
{
  v34 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [RTLocationManager stringForRegionCallbackType:callback];
      v7 = MEMORY[0x277D4ABD0];
      sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
      v9 = [v7 regionStateToString:{objc_msgSend(sessionMonitorState, "currentRegionState")}];
      *buf = 136315650;
      v29 = "[SMSessionMonitor _updateRoundTripRegionStateWithCircularRegionCallback:]";
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Received event, %@, currentRegionState, %@", buf, 0x20u);
    }
  }

  if (callback == 2)
  {
    [(SMSessionMonitor *)self _onRegionExit];
  }

  else
  {
    sessionMonitorState2 = [(SMSessionMonitor *)self sessionMonitorState];
    currentRegionState = [sessionMonitorState2 currentRegionState];

    if ((currentRegionState - 2) >= 2 && currentRegionState)
    {
      if (currentRegionState == 1)
      {
        if (callback == 1)
        {
          sessionMonitorState3 = [(SMSessionMonitor *)self sessionMonitorState];
          [sessionMonitorState3 setCurrentRegionState:2];

          [(SMSessionMonitor *)self _persistState];
          objc_initWeak(&location, self);
          date = [MEMORY[0x277CBEAA8] date];
          v14 = [RTXPCTimerAlarm alloc];
          queue = [(SMSessionMonitor *)self queue];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __74__SMSessionMonitor__updateRoundTripRegionStateWithCircularRegionCallback___block_invoke;
          v24[3] = &unk_2788C7638;
          v16 = date;
          v25 = v16;
          objc_copyWeak(&v26, &location);
          v17 = [(RTXPCTimerAlarm *)v14 initWithIdentifier:@"com.apple.routined.SMSessionMonitor.insidePendingTimer" queue:queue handler:v24];
          [(SMSessionMonitor *)self setRegionInsidePendingTimer:v17];

          regionInsidePendingTimer = [(SMSessionMonitor *)self regionInsidePendingTimer];
          [(SMSessionMonitor *)self sessionMonitorRegionInsidePendingTimerDelay];
          v19 = [v16 dateByAddingTimeInterval:?];
          v23 = 0;
          [regionInsidePendingTimer fireWithDate:v19 error:&v23];
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
      sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
      v6 = [v4 regionStateToString:{objc_msgSend(sessionMonitorState, "currentRegionState")}];
      v17 = 136315394;
      v18 = "[SMSessionMonitor _onRegionInsidePendingTimerExpiry]";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, currentRegionState, %@", &v17, 0x16u);
    }
  }

  sessionMonitorState2 = [(SMSessionMonitor *)self sessionMonitorState];
  currentRegionState = [sessionMonitorState2 currentRegionState];

  if (currentRegionState == 2)
  {
    sessionMonitorState3 = [(SMSessionMonitor *)self sessionMonitorState];
    [sessionMonitorState3 setCurrentRegionState:3];

    [(SMSessionMonitor *)self _persistState];
    v10 = objc_alloc(MEMORY[0x277D4ABC8]);
    mostRecentTriggerContext = [(SMSessionMonitor *)self mostRecentTriggerContext];
    if (mostRecentTriggerContext)
    {
      currentRegionState = [(SMSessionMonitor *)self mostRecentTriggerContext];
      triggerCategory = [currentRegionState triggerCategory];
    }

    else
    {
      triggerCategory = 0;
    }

    configuration = [(SMSessionMonitor *)self configuration];
    sessionID = [configuration sessionID];
    v15 = [v10 initWithUpdateReason:4 triggerCategory:triggerCategory sessionID:sessionID];

    if (mostRecentTriggerContext)
    {
    }

    [(SMSessionMonitor *)self setMostRecentTriggerContext:v15];
    [(SMSessionMonitor *)self setRiskState:4];
  }

  regionInsidePendingTimer = [(SMSessionMonitor *)self regionInsidePendingTimer];
  [regionInsidePendingTimer invalidate];

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

  sessionMonitorState = [(SMSessionMonitor *)self sessionMonitorState];
  [sessionMonitorState setCurrentRegionState:1];

  [(SMSessionMonitor *)self _persistState];
  regionInsidePendingTimer = [(SMSessionMonitor *)self regionInsidePendingTimer];
  [regionInsidePendingTimer invalidate];

  [(SMSessionMonitor *)self setRegionInsidePendingTimer:0];
}

- (void)onLocationNotification:(id)notification
{
  notificationCopy = notification;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __43__SMSessionMonitor_onLocationNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
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