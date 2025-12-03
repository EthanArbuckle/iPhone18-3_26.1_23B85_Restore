@interface SMTriggerDestination
+ (BOOL)validLocation:(id)location;
+ (double)crowFliesExpectedTravelTimeForTransportType:(unint64_t)type defaultsManager:(id)manager distance:(double)distance;
+ (double)distanceFromLocation:(id)location toLocation:(id)toLocation withCalculator:(id)calculator;
+ (id)convertSMDirectionTransportTypeToString:(unint64_t)string;
+ (id)locationRequestOptions;
+ (id)statusToString:(unint64_t)string;
+ (id)upperBoundEtaForDepartureDate:(id)date defaultsManager:(id)manager mapsExpectedTravelTime:(double)time crowFliesExpectedTravelTime:(double)travelTime etaScaleFactor:(double)factor;
+ (unint64_t)convertSMDirectionTransportTypeToMKDirectionTransportType:(unint64_t)type;
+ (void)calculateDistanceToDestination:(id)destination locationManager:(id)manager distanceCalculator:(id)calculator queue:(id)queue handler:(id)handler;
+ (void)checkEligibilityOfDestination:(id)destination locationManager:(id)manager distanceCalculator:(id)calculator queue:(id)queue completionHandler:(id)handler;
+ (void)currentLocationWithLocationManager:(id)manager queue:(id)queue handler:(id)handler;
+ (void)estimateEtaToDestination:(id)destination transportType:(unint64_t)type locationManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator queue:(id)queue handler:(id)handler;
+ (void)expectedTravelTimeforTransportType:(unint64_t)type source:(id)source defaultsManager:(id)manager destination:(id)destination departureDate:(id)date distanceCalculator:(id)calculator queue:(id)queue completionHandler:(id)self0;
+ (void)mapsExpectedTravelTimeforTransportType:(unint64_t)type source:(id)source destination:(id)destination departureDate:(id)date queue:(id)queue handler:(id)handler;
+ (void)updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:(id)manager;
- (BOOL)_isExceedingUpperBoundEta:(id)eta mapsExpectedTravelTime:(double)time crowFliesExpectedTravelTime:(double)travelTime;
- (BOOL)_isNoProgressStatus;
- (BOOL)_shouldChangeModeOfTransportStartDate:(id)date endDate:(id)endDate;
- (BOOL)_shouldUpdateCoarseEta:(id)eta;
- (BOOL)_shouldUpdateUpperBoundEtaWithRemainingDistance:(double)distance mapsExpectedTravelTime:(double)time;
- (SMTriggerDestination)initWithQueue:(id)queue defaultsManager:(id)manager dataProtectionManager:(id)protectionManager locationManager:(id)locationManager motionActivityManager:(id)activityManager distanceCalculator:(id)calculator platform:(id)platform sessionStore:(id)self0 timerManager:(id)self1 sessionMetricManager:(id)self2;
- (SMTriggerManagerProtocol)sessionMonitorDelegate;
- (id)_cachedLocationsDateInterval;
- (id)_locationAtDate:(id)date error:(id *)error;
- (id)_locationsInDateInterval:(id)interval horizontalAccuracy:(double)accuracy error:(id *)error;
- (id)lastUserResponseSafeDate;
- (unint64_t)_motionActivityTypeToTransportType:(unint64_t)type distance:(double)distance;
- (unint64_t)_predominantMotionActicityTypeFromStartDate:(id)date toEndDate:(id)endDate outError:(id *)error;
- (void)_addObservers;
- (void)_bootstrap;
- (void)_cacheLocations:(id)locations;
- (void)_declareAnomalyForTriggerCategory:(unint64_t)category;
- (void)_evaluateStatusUsingCurrentLocation:(id)location;
- (void)_initializeETATimer;
- (void)_initializeTimerWithIdentifier:(id)identifier fireAfterDelay:(double)delay;
- (void)_modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)_onTimerExpiryForTimerIdentifier:(id)identifier;
- (void)_onUserTriggerResponse:(int64_t)response;
- (void)_persistState;
- (void)_postStateChange;
- (void)_processDataProtectionNotification:(id)notification;
- (void)_processLocationNotification:(id)notification;
- (void)_removeObservers;
- (void)_removeTimers;
- (void)_reviseCachedLocations;
- (void)_setup;
- (void)_startMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)_stopMonitoringWithHandler:(id)handler;
- (void)_tearDownTimerWithIdentifier:(id)identifier;
- (void)_updateCoarseEtaWithMapsExpectedTravelTime:(double)time crowFliesExpectedTravelTime:(double)travelTime;
- (void)_updateInitiatorStatus;
- (void)_updateInitiatorStatusDestinationBoundWithCompletion:(id)completion;
- (void)_updateInitiatorStatusRoundTrip;
- (void)_updateTimerWithIdentifier:(id)identifier fireAfterDelay:(double)delay;
- (void)modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)onDataProtectionNotification:(id)notification;
- (void)onLocationNotification:(id)notification;
- (void)onUserTriggerResponse:(int64_t)response;
- (void)postStateChange;
- (void)setup;
- (void)startMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)stopMonitoringWithHandler:(id)handler;
@end

@implementation SMTriggerDestination

- (SMTriggerDestination)initWithQueue:(id)queue defaultsManager:(id)manager dataProtectionManager:(id)protectionManager locationManager:(id)locationManager motionActivityManager:(id)activityManager distanceCalculator:(id)calculator platform:(id)platform sessionStore:(id)self0 timerManager:(id)self1 sessionMetricManager:(id)self2
{
  v50 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  managerCopy = manager;
  managerCopy2 = manager;
  protectionManagerCopy = protectionManager;
  protectionManagerCopy2 = protectionManager;
  locationManagerCopy = locationManager;
  locationManagerCopy2 = locationManager;
  activityManagerCopy = activityManager;
  activityManagerCopy2 = activityManager;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  platformCopy = platform;
  storeCopy = store;
  timerManagerCopy = timerManager;
  metricManagerCopy = metricManager;
  v46 = queueCopy;
  v44 = metricManagerCopy;
  if (!queueCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    v31 = 0;
    v26 = protectionManagerCopy2;
    goto LABEL_41;
  }

  if (!managerCopy2)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v26 = protectionManagerCopy2;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: defaultsManager";
LABEL_39:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v34, buf, 2u);
    goto LABEL_40;
  }

  v26 = protectionManagerCopy2;
  if (!protectionManagerCopy2)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: dataProtectionManager";
    goto LABEL_39;
  }

  if (!locationManagerCopy2)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_39;
  }

  if (!activityManagerCopy2)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_39;
  }

  if (!calculatorCopy2)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_39;
  }

  if (!platformCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: platform";
    goto LABEL_39;
  }

  if (!storeCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: sessionStore";
    goto LABEL_39;
  }

  if (!timerManagerCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_39;
  }

  if (!metricManagerCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v34 = "Invalid parameter not satisfying: sessionMetricManager";
      goto LABEL_39;
    }

LABEL_40:

    v31 = 0;
LABEL_41:
    selfCopy = self;
    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v49 = "[SMTriggerDestination initWithQueue:defaultsManager:dataProtectionManager:locationManager:motionActivityManager:distanceCalculator:platform:sessionStore:timerManager:sessionMetricManager:]";
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v47.receiver = self;
  v47.super_class = SMTriggerDestination;
  v28 = [(SMTriggerDestination *)&v47 init];
  p_isa = &v28->super.isa;
  if (v28)
  {
    objc_storeStrong(&v28->_queue, obja);
    objc_storeStrong(p_isa + 3, managerCopy);
    objc_storeStrong(p_isa + 4, protectionManagerCopy);
    objc_storeStrong(p_isa + 5, locationManagerCopy);
    objc_storeStrong(p_isa + 6, activityManagerCopy);
    objc_storeStrong(p_isa + 7, calculatorCopy);
    objc_storeStrong(p_isa + 8, platform);
    objc_storeStrong(p_isa + 9, store);
    objc_storeStrong(p_isa + 12, timerManager);
    objc_storeStrong(p_isa + 13, metricManager);
    [p_isa setup];
  }

  selfCopy = p_isa;
  v31 = selfCopy;
LABEL_42:

  return v31;
}

+ (void)updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:(id)manager
{
  v38 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v4 = [managerCopy objectForKey:@"RTDefaultsSMTriggerDestinationAverageSpeedAnyKey" value:&unk_2845A21A8];
  [v4 doubleValue];
  v6 = v5;

  if (v6 != 1.5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v29 = "+[SMTriggerDestination updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:]";
      v30 = 2080;
      v31 = "overriding destination average speed any";
      v32 = 2048;
      v33 = 0x3FF8000000000000;
      v34 = 2048;
      v35 = v6;
      v36 = 2112;
      v37 = @"RTDefaultsSMTriggerDestinationAverageSpeedAnyKey";
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  v8 = [managerCopy objectForKey:@"RTDefaultsSMTriggerDestinationAverageDrivingSpeedKey" value:&unk_2845A21B8];
  [v8 doubleValue];
  v10 = v9;

  if (v10 != 8.3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v29 = "+[SMTriggerDestination updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:]";
      v30 = 2080;
      v31 = "overriding destination average speed automobile";
      v32 = 2048;
      v33 = 0x402099999999999ALL;
      v34 = 2048;
      v35 = v10;
      v36 = 2112;
      v37 = @"RTDefaultsSMTriggerDestinationAverageDrivingSpeedKey";
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  v12 = [managerCopy objectForKey:@"RTDefaultsSMTriggerDestinationAverageWalkingSpeedKey" value:&unk_2845A21C8];
  [v12 doubleValue];
  v14 = v13;

  if (v14 != 0.4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v29 = "+[SMTriggerDestination updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:]";
      v30 = 2080;
      v31 = "overriding average speed walking";
      v32 = 2048;
      v33 = 0x3FD999999999999ALL;
      v34 = 2048;
      v35 = v14;
      v36 = 2112;
      v37 = @"RTDefaultsSMTriggerDestinationAverageWalkingSpeedKey";
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  v16 = [managerCopy objectForKey:@"RTDefaultsSMTriggerDestinationAverageTransitSpeedKey" value:&unk_2845A21D8];
  [v16 doubleValue];
  v18 = v17;

  if (v18 != 6.3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v29 = "+[SMTriggerDestination updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:]";
      v30 = 2080;
      v31 = "overriding average speed transit";
      v32 = 2048;
      v33 = 0x4019333333333333;
      v34 = 2048;
      v35 = v18;
      v36 = 2112;
      v37 = @"RTDefaultsSMTriggerDestinationAverageTransitSpeedKey";
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  if (!SMTriggerDestinationTransportTypeToAvgSpeed)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:{v6, &unk_28459F888}];
    v27[0] = v20;
    v26[1] = &unk_28459F8A0;
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    v27[1] = v21;
    v26[2] = &unk_28459F8B8;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v27[2] = v22;
    v26[3] = &unk_28459F8D0;
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    v27[3] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
    v25 = SMTriggerDestinationTransportTypeToAvgSpeed;
    SMTriggerDestinationTransportTypeToAvgSpeed = v24;
  }
}

- (void)setup
{
  queue = [(SMTriggerDestination *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SMTriggerDestination_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  v86 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v77 = "[SMTriggerDestination _setup]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v4 = objc_opt_new();
  [(SMTriggerDestination *)self setTimerIdentifierToTimers:v4];

  [(SMTriggerDestination *)self setTriggerCategory:0];
  v5 = objc_opt_new();
  [(SMTriggerDestination *)self setCachedLocationEvents:v5];

  [(SMTriggerDestination *)self setCoarseEta:0];
  platform = [(SMTriggerDestination *)self platform];
  internalInstall = [platform internalInstall];

  defaultsManager = [(SMTriggerDestination *)self defaultsManager];
  v9 = defaultsManager;
  if (internalInstall)
  {
    v10 = [defaultsManager objectForKey:@"RTDefaultsSMTriggerDestinationScaleFactorInternalKey" value:&unk_2845A21E8];
    [v10 doubleValue];
    [(SMTriggerDestination *)self setEtaScaleFactor:?];

    [(SMTriggerDestination *)self etaScaleFactor];
    if (v11 != 2.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        [(SMTriggerDestination *)self etaScaleFactor];
        *buf = 136316162;
        v77 = "[SMTriggerDestination _setup]";
        v78 = 2080;
        v79 = "overriding internal eta scale factor";
        v80 = 2048;
        v81 = 0x4000000000000000;
        v82 = 2048;
        v83 = v13;
        v84 = 2112;
        v85 = @"RTDefaultsSMTriggerDestinationScaleFactorInternalKey";
LABEL_14:
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v14 = [defaultsManager objectForKey:@"RTDefaultsSMTriggerDestinationScaleFactorExternalKey" value:&unk_2845A21E8];
    [v14 doubleValue];
    [(SMTriggerDestination *)self setEtaScaleFactor:?];

    [(SMTriggerDestination *)self etaScaleFactor];
    if (v15 != 2.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        [(SMTriggerDestination *)self etaScaleFactor];
        *buf = 136316162;
        v77 = "[SMTriggerDestination _setup]";
        v78 = 2080;
        v79 = "overriding external eta scale factor";
        v80 = 2048;
        v81 = 0x4000000000000000;
        v82 = 2048;
        v83 = v16;
        v84 = 2112;
        v85 = @"RTDefaultsSMTriggerDestinationScaleFactorExternalKey";
        goto LABEL_14;
      }

LABEL_15:
    }
  }

  defaultsManager2 = [(SMTriggerDestination *)self defaultsManager];
  v18 = [defaultsManager2 objectForKey:@"RTDefaultsSMTriggerDestinationSignificantMoveThresholdKey" value:&unk_2845A21F8];
  [v18 doubleValue];
  [(SMTriggerDestination *)self setSignificantMoveThreshold:?];

  [(SMTriggerDestination *)self significantMoveThreshold];
  if (v19 != 200.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      [(SMTriggerDestination *)self significantMoveThreshold];
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding significant move threshold";
      v80 = 2048;
      v81 = 0x4069000000000000;
      v82 = 2048;
      v83 = v21;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationSignificantMoveThresholdKey";
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager3 = [(SMTriggerDestination *)self defaultsManager];
  v23 = [defaultsManager3 objectForKey:@"RTDefaultsSMTriggerDestinationIdleMaxDistanceThresholdKey" value:&unk_2845A2208];
  [v23 doubleValue];
  [(SMTriggerDestination *)self setIdleMaxDistanceThreshold:?];

  [(SMTriggerDestination *)self idleMaxDistanceThreshold];
  if (v24 != 250.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      [(SMTriggerDestination *)self idleMaxDistanceThreshold];
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding idle to progress transition max distance threshold";
      v80 = 2048;
      v81 = 0x406F400000000000;
      v82 = 2048;
      v83 = v26;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationIdleMaxDistanceThresholdKey";
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager4 = [(SMTriggerDestination *)self defaultsManager];
  v28 = [defaultsManager4 objectForKey:@"RTDefaultsSMTriggerDestinationStatusUpdateTimeIntervalKey" value:&unk_2845A2218];
  [v28 doubleValue];
  [(SMTriggerDestination *)self setDestinationStatusUpdateTimeInterval:?];

  [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
  if (v29 != 450.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding destination status update time interval";
      v80 = 2048;
      v81 = 0x407C200000000000;
      v82 = 2048;
      v83 = v31;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationStatusUpdateTimeIntervalKey";
      _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager5 = [(SMTriggerDestination *)self defaultsManager];
  v33 = [defaultsManager5 objectForKey:@"RTDefaultsSMTriggerDestinationIdleTimeoutThresholdKey" value:&unk_2845A2228];
  [v33 doubleValue];
  [(SMTriggerDestination *)self setIdleTimeoutThreshold:?];

  [(SMTriggerDestination *)self idleTimeoutThreshold];
  if (v34 != 900.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      [(SMTriggerDestination *)self idleTimeoutThreshold];
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding idle timeout threshold";
      v80 = 2048;
      v81 = 0x408C200000000000;
      v82 = 2048;
      v83 = v36;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationIdleTimeoutThresholdKey";
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager6 = [(SMTriggerDestination *)self defaultsManager];
  v38 = [defaultsManager6 objectForKey:@"RTDefaultsSMTriggerDestinationNoProgressTimeoutThresholdKey" value:&unk_2845A2228];
  [v38 doubleValue];
  [(SMTriggerDestination *)self setNoProgressTimeoutThreshold:?];

  [(SMTriggerDestination *)self noProgressTimeoutThreshold];
  if (v39 != 900.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      [(SMTriggerDestination *)self noProgressTimeoutThreshold];
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding no progress timeout threshold";
      v80 = 2048;
      v81 = 0x408C200000000000;
      v82 = 2048;
      v83 = v41;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationNoProgressTimeoutThresholdKey";
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager7 = [(SMTriggerDestination *)self defaultsManager];
  v43 = [defaultsManager7 objectForKey:@"RTDefaultsSMTriggerDestinationMinDistanceThresholdToUpdateEtaKey" value:&unk_2845A2238];
  [v43 doubleValue];
  [(SMTriggerDestination *)self setMinDistanceUpdateThreshold:?];

  [(SMTriggerDestination *)self minDistanceUpdateThreshold];
  if (v44 != 2000.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      [(SMTriggerDestination *)self minDistanceUpdateThreshold];
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding min distance to update threshold";
      v80 = 2048;
      v81 = 0x409F400000000000;
      v82 = 2048;
      v83 = v46;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationMinDistanceThresholdToUpdateEtaKey";
      _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager8 = [(SMTriggerDestination *)self defaultsManager];
  v48 = [defaultsManager8 objectForKey:@"RTDefaultsSMTriggerDestinationAverageSpeedAnyKey" value:&unk_2845A21A8];
  [v48 doubleValue];
  v50 = v49;

  if (v50 != 1.5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v51 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding average speed for any";
      v80 = 2048;
      v81 = 0x3FF8000000000000;
      v82 = 2048;
      v83 = v50;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationAverageSpeedAnyKey";
      _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager9 = [(SMTriggerDestination *)self defaultsManager];
  v53 = [defaultsManager9 objectForKey:@"RTDefaultsSMTriggerDestinationAverageWalkingSpeedKey" value:&unk_2845A21C8];
  [v53 doubleValue];
  v55 = v54;

  if (v55 != 0.4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v56 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding average speed for walking";
      v80 = 2048;
      v81 = 0x3FD999999999999ALL;
      v82 = 2048;
      v83 = v55;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationAverageWalkingSpeedKey";
      _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager10 = [(SMTriggerDestination *)self defaultsManager];
  v58 = [defaultsManager10 objectForKey:@"RTDefaultsSMTriggerDestinationAverageDrivingSpeedKey" value:&unk_2845A21B8];
  [v58 doubleValue];
  v60 = v59;

  if (v60 != 8.3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v61 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding average speed for driving";
      v80 = 2048;
      v81 = 0x402099999999999ALL;
      v82 = 2048;
      v83 = v60;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationAverageDrivingSpeedKey";
      _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  defaultsManager11 = [(SMTriggerDestination *)self defaultsManager];
  v63 = [defaultsManager11 objectForKey:@"RTDefaultsSMTriggerDestinationAverageTransitSpeedKey" value:&unk_2845A21D8];
  [v63 doubleValue];
  v65 = v64;

  if (v65 != 6.3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v66 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2080;
      v79 = "overriding average speed for transit";
      v80 = 2048;
      v81 = 0x4019333333333333;
      v82 = 2048;
      v83 = v65;
      v84 = 2112;
      v85 = @"RTDefaultsSMTriggerDestinationAverageTransitSpeedKey";
      _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
    }
  }

  v67 = [MEMORY[0x277CCABB0] numberWithDouble:{v50, &unk_28459F888}];
  v75[0] = v67;
  v74[1] = &unk_28459F8A0;
  v68 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
  v75[1] = v68;
  v74[2] = &unk_28459F8B8;
  v69 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
  v75[2] = v69;
  v74[3] = &unk_28459F8D0;
  v70 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
  v75[3] = v70;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:4];
  v72 = SMTriggerDestinationTransportTypeToAvgSpeed;
  SMTriggerDestinationTransportTypeToAvgSpeed = v71;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v73 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v77 = "[SMTriggerDestination _setup]";
      v78 = 2112;
      v79 = SMTriggerDestinationTransportTypeToAvgSpeed;
      _os_log_impl(&dword_2304B3000, v73, OS_LOG_TYPE_INFO, "%s, transport speed dictionary, %@", buf, 0x16u);
    }
  }
}

- (void)_bootstrap
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
      *buf = 136315395;
      *&buf[4] = "[SMTriggerDestination _bootstrap]";
      *&buf[12] = 2117;
      *&buf[14] = sessionConfiguration;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v60 = __Block_byref_object_copy__159;
  v61 = __Block_byref_object_dispose__159;
  v62 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__159;
  v52 = __Block_byref_object_dispose__159;
  v53 = 0;
  v5 = dispatch_semaphore_create(0);
  sessionStore = [(SMTriggerDestination *)self sessionStore];
  sessionConfiguration2 = [(SMTriggerDestination *)self sessionConfiguration];
  sessionID = [sessionConfiguration2 sessionID];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __34__SMTriggerDestination__bootstrap__block_invoke;
  v44[3] = &unk_2788C4490;
  v46 = buf;
  v47 = &v48;
  v9 = v5;
  v45 = v9;
  [sessionStore fetchTriggerDestinationStateWithSessionID:sessionID handler:v44];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_578];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *v54 = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v54, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v63[0] = *MEMORY[0x277CCA450];
    *v54 = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v63 count:1];
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
    objc_storeStrong(v49 + 5, v24);
  }

  v28 = v49[5];
  v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v28)
  {
    if (v29)
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        sessionConfiguration3 = [(SMTriggerDestination *)self sessionConfiguration];
        sessionID2 = [sessionConfiguration3 sessionID];
        uUIDString = [sessionID2 UUIDString];
        v34 = v49[5];
        *v54 = 136315650;
        *&v54[4] = "[SMTriggerDestination _bootstrap]";
        v55 = 2112;
        v56 = uUIDString;
        v57 = 2112;
        v58 = v34;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%s, Error while fetching triggerDestination state, session ID, %@, error, %@", v54, 0x20u);
      }
    }
  }

  else
  {
    if (v29)
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = *(*&buf[8] + 40);
        sessionConfiguration4 = [(SMTriggerDestination *)self sessionConfiguration];
        sessionID3 = [sessionConfiguration4 sessionID];
        uUIDString2 = [sessionID3 UUIDString];
        *v54 = 136315650;
        *&v54[4] = "[SMTriggerDestination _bootstrap]";
        v55 = 2112;
        v56 = v36;
        v57 = 2112;
        v58 = uUIDString2;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%s, most recent triggerDestination state, %@, sessionID, %@", v54, 0x20u);
      }
    }

    if (*(*&buf[8] + 40))
    {
      [(SMTriggerDestination *)self setTriggerState:?];
    }

    else
    {
      v40 = objc_alloc(MEMORY[0x277D4AC30]);
      sessionConfiguration5 = [(SMTriggerDestination *)self sessionConfiguration];
      sessionID4 = [sessionConfiguration5 sessionID];
      v43 = [v40 initWithSessionIdentifier:sessionID4];
      [(SMTriggerDestination *)self setTriggerState:v43];

      [(SMTriggerDestination *)self _persistState];
    }
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(buf, 8);
}

void __34__SMTriggerDestination__bootstrap__block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)locationRequestOptions
{
  v2 = [RTLocationRequestOptions alloc];
  v3 = [(RTLocationRequestOptions *)v2 initWithDesiredAccuracy:1 horizontalAccuracy:1 maxAge:*MEMORY[0x277CE4208] yieldLastLocation:100.0 timeout:3.0 fallback:5.0 fallbackHorizontalAccuracy:200.0 fallbackMaxAge:3600.0];

  return v3;
}

- (void)startMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  queue = [(SMTriggerDestination *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SMTriggerDestination_startMonitoringWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)_startMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  v113[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([configurationCopy sessionType] != 2 && objc_msgSend(configurationCopy, "sessionType") != 3)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
      v106 = 1024;
      LODWORD(v107) = 354;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration.sessionType == SMSessionTypeDestinationBound || configuration.sessionType == SMSessionTypeRoundTrip (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
      v106 = 2117;
      v107 = configurationCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@", buf, 0x16u);
    }
  }

  if (handlerCopy)
  {
    v10 = +[SMDateUtility date];
    sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
    sessionStartDate = [sessionConfiguration sessionStartDate];
    [v10 timeIntervalSinceDate:sessionStartDate];
    v14 = v13;

    if (v14 < 0.0)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sessionConfiguration2 = [(SMTriggerDestination *)self sessionConfiguration];
        sessionStartDate2 = [sessionConfiguration2 sessionStartDate];
        stringFromDate = [sessionStartDate2 stringFromDate];
        stringFromDate2 = [v10 stringFromDate];
        *buf = 136315650;
        v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
        v106 = 2112;
        v107 = stringFromDate;
        v108 = 2112;
        v109 = stringFromDate2;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%s, sessionStartDate, %@, larger than currentDate, %@", buf, 0x20u);
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v112 = *MEMORY[0x277CCA450];
      v113[0] = @"sessionStartDate is larger than currentDate";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:&v112 count:1];
      _cachedLocationsDateInterval = [v16 errorWithDomain:v17 code:7 userInfo:v18];

      handlerCopy[2](handlerCopy, _cachedLocationsDateInterval);
LABEL_50:

      goto LABEL_51;
    }

    [(SMTriggerDestination *)self _setup];
    [(SMTriggerDestination *)self setSessionConfiguration:configurationCopy];
    [(SMTriggerDestination *)self setOriginLocation:0];
    [(SMTriggerDestination *)self _bootstrap];
    triggerState = [(SMTriggerDestination *)self triggerState];
    upperBoundEta = [triggerState upperBoundEta];
    v100 = v10;
    if (upperBoundEta)
    {
      sessionConfiguration3 = upperBoundEta;
      goto LABEL_25;
    }

    sessionConfiguration3 = [(SMTriggerDestination *)self sessionConfiguration];
    destination = [sessionConfiguration3 destination];
    v24 = [destination eta];
    if (v24)
    {
      v25 = v24;
      sessionConfiguration4 = [(SMTriggerDestination *)self sessionConfiguration];
      destination2 = [sessionConfiguration4 destination];
      v28 = [destination2 eta];
      [v28 additionalTravelTime];
      v30 = v29;

      v10 = v100;
      if (v30 <= 0.0)
      {
        goto LABEL_26;
      }

      sessionConfiguration5 = [(SMTriggerDestination *)self sessionConfiguration];
      destination3 = [sessionConfiguration5 destination];
      v33 = [destination3 eta];
      [v33 expectedTravelTime];
      v35 = v34;
      sessionConfiguration6 = [(SMTriggerDestination *)self sessionConfiguration];
      destination4 = [sessionConfiguration6 destination];
      v38 = [destination4 eta];
      [v38 additionalTravelTime];
      v40 = v35 + v39;

      v10 = v100;
      v41 = objc_opt_class();
      defaultsManager = [(SMTriggerDestination *)self defaultsManager];
      [(SMTriggerDestination *)self etaScaleFactor];
      triggerState = [v41 upperBoundEtaForDepartureDate:v100 defaultsManager:defaultsManager mapsExpectedTravelTime:v40 crowFliesExpectedTravelTime:v40 etaScaleFactor:v43];

      triggerState2 = [(SMTriggerDestination *)self triggerState];
      [triggerState2 setUpperBoundEta:triggerState];

      [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
      sessionConfiguration3 = [v100 dateByAddingTimeInterval:?];
      triggerState3 = [(SMTriggerDestination *)self triggerState];
      [triggerState3 setTimeToUpdateStatus:sessionConfiguration3];

      [(SMTriggerDestination *)self _updateCoarseEtaWithMapsExpectedTravelTime:v40 crowFliesExpectedTravelTime:v40];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_25:

LABEL_26:
        [(SMTriggerDestination *)self _persistState];
        sessionConfiguration7 = [(SMTriggerDestination *)self sessionConfiguration];
        destination5 = [sessionConfiguration7 destination];
        v52 = [destination5 eta];
        if (v52)
        {
          v53 = v52;
          sessionConfiguration8 = [(SMTriggerDestination *)self sessionConfiguration];
          destination6 = [sessionConfiguration8 destination];
          v56 = [destination6 eta];
          transportType = [v56 transportType];

          v10 = v100;
          if (transportType != 4)
          {
            goto LABEL_33;
          }

          triggerState4 = [(SMTriggerDestination *)self triggerState];
          [triggerState4 setPredominantModeOfTransport:4];

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          sessionConfiguration7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(sessionConfiguration7, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
            _os_log_impl(&dword_2304B3000, sessionConfiguration7, OS_LOG_TYPE_INFO, "%s, user specified transport mode is transit", buf, 0xCu);
          }
        }

        else
        {
        }

LABEL_33:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v59 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
            _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "%s, start current location fetch, location", buf, 0xCu);
          }
        }

        v60 = objc_opt_class();
        locationManager = [(SMTriggerDestination *)self locationManager];
        queue = [(SMTriggerDestination *)self queue];
        [v60 currentLocationWithLocationManager:locationManager queue:queue handler:&__block_literal_global_133];

        _cachedLocationsDateInterval = [(SMTriggerDestination *)self _cachedLocationsDateInterval];
        v101 = 0;
        v63 = [(SMTriggerDestination *)self _locationsInDateInterval:_cachedLocationsDateInterval horizontalAccuracy:&v101 error:200.0];
        v64 = v101;
        if (v64)
        {
          v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            startDate = [_cachedLocationsDateInterval startDate];
            stringFromDate3 = [startDate stringFromDate];
            endDate = [_cachedLocationsDateInterval endDate];
            stringFromDate4 = [endDate stringFromDate];
            *buf = 136315650;
            v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
            v106 = 2112;
            v107 = stringFromDate3;
            v108 = 2112;
            v109 = stringFromDate4;
            _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "%s, unable to fetch locations for startDate, %@, endDate, %@", buf, 0x20u);

            v10 = v100;
          }

          v66 = MEMORY[0x277CCA9B8];
          v67 = *MEMORY[0x277D01448];
          v102 = *MEMORY[0x277CCA450];
          v103 = @"unable to fetch locations";
          v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v69 = [v66 errorWithDomain:v67 code:6 userInfo:v68];

          handlerCopy[2](handlerCopy, v69);
        }

        else
        {
          [(SMTriggerDestination *)self _cacheLocations:v63];
          [(SMTriggerDestination *)self _addObservers];
          triggerState5 = [(SMTriggerDestination *)self triggerState];
          timeToUpdateStatus = [triggerState5 timeToUpdateStatus];

          if (!timeToUpdateStatus)
          {
            v72 = [v10 dateByAddingTimeInterval:1.0];
            triggerState6 = [(SMTriggerDestination *)self triggerState];
            [triggerState6 setTimeToUpdateStatus:v72];
          }

          triggerState7 = [(SMTriggerDestination *)self triggerState];
          timeToUpdateStatus2 = [triggerState7 timeToUpdateStatus];
          [timeToUpdateStatus2 timeIntervalSinceDate:v10];
          v77 = v76;

          [(SMTriggerDestination *)self _initializeTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.statusUpdateTimerIdentifier" fireAfterDelay:v77];
          if ([configurationCopy sessionType] == 3)
          {
            triggerState8 = [(SMTriggerDestination *)self triggerState];
            roundTripReminderDate = [triggerState8 roundTripReminderDate];
            distantPast = [MEMORY[0x277CBEAA8] distantPast];
            v81 = [roundTripReminderDate isEqualToDate:distantPast];

            if (v81)
            {
              v82 = 5400.0;
              v10 = v100;
            }

            else
            {
              triggerState9 = [(SMTriggerDestination *)self triggerState];
              roundTripReminderDate2 = [triggerState9 roundTripReminderDate];
              v10 = v100;
              [roundTripReminderDate2 timeIntervalSinceDate:v100];
              v86 = v85;

              v82 = fmax(v86, 1.0);
            }

            v87 = [v10 dateByAddingTimeInterval:v82];
            triggerState10 = [(SMTriggerDestination *)self triggerState];
            [triggerState10 setRoundTripReminderDate:v87];

            [(SMTriggerDestination *)self _initializeTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.roundTripReminderTimerIdentifier" fireAfterDelay:v82];
          }

          [(SMTriggerDestination *)self _persistState];
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_50;
      }

      destination = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(destination, OS_LOG_TYPE_INFO))
      {
        sessionConfiguration9 = [(SMTriggerDestination *)self sessionConfiguration];
        destination7 = [sessionConfiguration9 destination];
        triggerState11 = [(SMTriggerDestination *)self triggerState];
        upperBoundEta2 = [triggerState11 upperBoundEta];
        triggerState12 = [(SMTriggerDestination *)self triggerState];
        timeToUpdateStatus3 = [triggerState12 timeToUpdateStatus];
        stringFromDate5 = [timeToUpdateStatus3 stringFromDate];
        *buf = 136315906;
        v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
        v106 = 2112;
        v107 = destination7;
        v108 = 2112;
        v109 = upperBoundEta2;
        v110 = 2112;
        v111 = stringFromDate5;
        _os_log_impl(&dword_2304B3000, destination, OS_LOG_TYPE_INFO, "%s, user-specified eta, %@, upperBoundETA, %@, timeToUpdateStatus, %@", buf, 0x2Au);

        v10 = v100;
      }
    }

    goto LABEL_25;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%s, invalid handler", buf, 0xCu);
  }

LABEL_51:
}

void __66__SMTriggerDestination__startMonitoringWithConfiguration_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 136315651;
      v8 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]_block_invoke";
      v9 = 2117;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, complete current location fetch, location, %{sensitive}@, error, %@", &v7, 0x20u);
    }
  }
}

- (void)modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  queue = [(SMTriggerDestination *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SMTriggerDestination_modifyMonitoringWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)_modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([configurationCopy sessionType] != 2 && objc_msgSend(configurationCopy, "sessionType") != 3)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "[SMTriggerDestination _modifyMonitoringWithConfiguration:handler:]";
      v31 = 1024;
      LODWORD(v32) = 507;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration.sessionType == SMSessionTypeDestinationBound || configuration.sessionType == SMSessionTypeRoundTrip (in %s:%d)", &v29, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v29 = 136315395;
      v30 = "[SMTriggerDestination _modifyMonitoringWithConfiguration:handler:]";
      v31 = 2117;
      v32 = configurationCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@", &v29, 0x16u);
    }
  }

  sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
  v11 = [sessionConfiguration isEqual:configurationCopy];

  if (!v11)
  {
    sessionConfiguration2 = [(SMTriggerDestination *)self sessionConfiguration];
    sessionID = [sessionConfiguration2 sessionID];
    sessionID2 = [configurationCopy sessionID];
    v16 = [sessionID isEqual:sessionID2];

    if (v16)
    {
      triggerState = [(SMTriggerDestination *)self triggerState];
      [(SMTriggerDestination *)self _stopMonitoringWithHandler:handlerCopy];
      v17 = objc_alloc(MEMORY[0x277D4AC30]);
      sessionID3 = [configurationCopy sessionID];
      v19 = [v17 initWithSessionIdentifier:sessionID3];
      [(SMTriggerDestination *)self setTriggerState:v19];

      lastLockDate = [triggerState lastLockDate];
      triggerState2 = [(SMTriggerDestination *)self triggerState];
      [triggerState2 setLastLockDate:lastLockDate];

      lastUnlockDate = [triggerState lastUnlockDate];
      triggerState3 = [(SMTriggerDestination *)self triggerState];
      [triggerState3 setLastUnlockDate:lastUnlockDate];

      predominantModeOfTransport = [triggerState predominantModeOfTransport];
      triggerState4 = [(SMTriggerDestination *)self triggerState];
      [triggerState4 setPredominantModeOfTransport:predominantModeOfTransport];

      [(SMTriggerDestination *)self _persistState];
      [(SMTriggerDestination *)self setOriginLocation:0];
      [(SMTriggerDestination *)self _startMonitoringWithConfiguration:configurationCopy handler:handlerCopy];
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      triggerState = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(triggerState, OS_LOG_TYPE_INFO))
      {
        sessionConfiguration3 = [(SMTriggerDestination *)self sessionConfiguration];
        sessionID4 = [sessionConfiguration3 sessionID];
        sessionID5 = [configurationCopy sessionID];
        v29 = 136315650;
        v30 = "[SMTriggerDestination _modifyMonitoringWithConfiguration:handler:]";
        v31 = 2112;
        v32 = sessionID4;
        v33 = 2112;
        v34 = sessionID5;
        _os_log_impl(&dword_2304B3000, triggerState, OS_LOG_TYPE_INFO, "%s, Configuration modified for wrong session, current config sessionID, %@, modified config sessionID, %@", &v29, 0x20u);
      }
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    triggerState = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(triggerState, OS_LOG_TYPE_INFO))
    {
      v29 = 136315138;
      v30 = "[SMTriggerDestination _modifyMonitoringWithConfiguration:handler:]";
      _os_log_impl(&dword_2304B3000, triggerState, OS_LOG_TYPE_INFO, "%s, Configuration did not change", &v29, 0xCu);
    }

LABEL_16:
  }

LABEL_17:
}

- (void)stopMonitoringWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMTriggerDestination *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SMTriggerDestination_stopMonitoringWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_stopMonitoringWithHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[SMTriggerDestination _stopMonitoringWithHandler:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
    }
  }

  [(SMTriggerDestination *)self _removeObservers];
  [(SMTriggerDestination *)self _removeTimers];
  cachedLocationEvents = [(SMTriggerDestination *)self cachedLocationEvents];
  [cachedLocationEvents removeAllObjects];

  [(SMTriggerDestination *)self setTriggerState:0];
  [(SMTriggerDestination *)self setOriginLocation:0];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)onUserTriggerResponse:(int64_t)response
{
  queue = [(SMTriggerDestination *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SMTriggerDestination_onUserTriggerResponse___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = response;
  dispatch_async(queue, v6);
}

- (void)_onUserTriggerResponse:(int64_t)response
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277D4ABC8] userTriggerResponseToString:response];
      v6 = 136315394;
      v7 = "[SMTriggerDestination _onUserTriggerResponse:]";
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, response %@", &v6, 0x16u);
    }
  }
}

- (void)postStateChange
{
  queue = [(SMTriggerDestination *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SMTriggerDestination_postStateChange__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_postStateChange
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [MEMORY[0x277D4ABC8] triggerCategoryToString:{-[SMTriggerDestination triggerCategory](self, "triggerCategory")}];
      v10 = 136315394;
      v11 = "[SMTriggerDestination _postStateChange]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, trigger category, %@", &v10, 0x16u);
    }
  }

  v5 = [SMTriggerNotification alloc];
  triggerCategory = [(SMTriggerDestination *)self triggerCategory];
  v7 = +[SMDateUtility date];
  v8 = [(SMTriggerNotification *)v5 initWithTriggerCategory:triggerCategory SOSState:1 triggerName:@"SMTriggerDestination" date:v7 details:MEMORY[0x277CBEC10]];

  sessionMonitorDelegate = [(SMTriggerDestination *)self sessionMonitorDelegate];
  [sessionMonitorDelegate onTriggerNotification:v8];
}

- (void)onLocationNotification:(id)notification
{
  notificationCopy = notification;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__SMTriggerDestination_onLocationNotification___block_invoke;
  v11 = &unk_2788C4A70;
  selfCopy = self;
  v13 = notificationCopy;
  v5 = notificationCopy;
  v6 = _Block_copy(&v8);
  v7 = [(SMTriggerDestination *)self queue:v8];
  dispatch_async(v7, v6);
}

- (void)_processLocationNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[SMTriggerDestination _processLocationNotification:]";
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s", &v7, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    leechedLocations = [notificationCopy leechedLocations];
    [(SMTriggerDestination *)self _cacheLocations:leechedLocations];
  }

  else
  {
    leechedLocations = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(leechedLocations, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_2304B3000, leechedLocations, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [notification isKindOfClass:[RTLocationManagerNotificationLocationsLeeched class]]", &v7, 2u);
    }
  }
}

- (void)onDataProtectionNotification:(id)notification
{
  notificationCopy = notification;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__SMTriggerDestination_onDataProtectionNotification___block_invoke;
  v11 = &unk_2788C4A70;
  selfCopy = self;
  v13 = notificationCopy;
  v5 = notificationCopy;
  v6 = _Block_copy(&v8);
  v7 = [(SMTriggerDestination *)self queue:v8];
  dispatch_async(v7, v6);
}

- (void)_processDataProtectionNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    availability = [notificationCopy availability];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [RTDataProtectionManager encryptedDataAvailabilityToString:availability];
        v12 = 136315394;
        v13 = "[SMTriggerDestination _processDataProtectionNotification:]";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, Received keybag notification, %@", &v12, 0x16u);
      }
    }

    if (availability == 1)
    {
      v8 = +[SMDateUtility date];
      triggerState = [(SMTriggerDestination *)self triggerState];
      [triggerState setLastLockDate:v8];
    }

    else
    {
      if ((availability & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
LABEL_14:
        [(SMTriggerDestination *)self _persistState];
        goto LABEL_15;
      }

      v8 = +[SMDateUtility date];
      triggerState = [(SMTriggerDestination *)self triggerState];
      [triggerState setLastUnlockDate:v8];
    }

    goto LABEL_14;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    name = [notificationCopy name];
    v12 = 136315394;
    v13 = "[SMTriggerDestination _processDataProtectionNotification:]";
    v14 = 2112;
    v15 = name;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%s, unknown notification name, %@", &v12, 0x16u);
  }

LABEL_15:
}

- (void)_initializeTimerWithIdentifier:(id)identifier fireAfterDelay:(double)delay
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v25 = "[SMTriggerDestination _initializeTimerWithIdentifier:fireAfterDelay:]";
      v26 = 2112;
      v27 = identifierCopy;
      v28 = 2048;
      delayCopy = delay;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, timerIdentifier, %@, delay, %.1f", buf, 0x20u);
    }
  }

  objc_initWeak(&location, self);
  v8 = +[SMDateUtility date];
  timerManager = self->_timerManager;
  queue = [(SMTriggerDestination *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__SMTriggerDestination__initializeTimerWithIdentifier_fireAfterDelay___block_invoke;
  v19[3] = &unk_2788CF4E8;
  v11 = identifierCopy;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  objc_copyWeak(&v22, &location);
  v13 = [(RTTimerManager *)timerManager xpcTimerAlarmWithIdentifier:v11 queue:queue handler:v19];

  timerIdentifierToTimers = [(SMTriggerDestination *)self timerIdentifierToTimers];
  [timerIdentifierToTimers setObject:v13 forKey:v11];

  v15 = [v12 dateByAddingTimeInterval:delay];
  v18 = 0;
  [v13 fireWithDate:v15 error:&v18];
  v16 = v18;

  if (v16)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[SMTriggerDestination _initializeTimerWithIdentifier:fireAfterDelay:]";
      v26 = 2112;
      v27 = v16;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%s, error in fire timer, %@", buf, 0x16u);
    }
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __70__SMTriggerDestination__initializeTimerWithIdentifier_fireAfterDelay___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[SMDateUtility date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      [v2 timeIntervalSinceDate:*(a1 + 40)];
      v7 = 136315650;
      v8 = "[SMTriggerDestination _initializeTimerWithIdentifier:fireAfterDelay:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, timer fired, timerIdentifier, %@, %.2f since created", &v7, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _onTimerExpiryForTimerIdentifier:*(a1 + 32)];
}

- (void)_updateTimerWithIdentifier:(id)identifier fireAfterDelay:(double)delay
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "[SMTriggerDestination _updateTimerWithIdentifier:fireAfterDelay:]";
      v10 = 2112;
      v11 = identifierCopy;
      v12 = 2048;
      delayCopy = delay;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, timerIdentifier, %@, delay, %.2f", &v8, 0x20u);
    }
  }

  [(SMTriggerDestination *)self _tearDownTimerWithIdentifier:identifierCopy];
  [(SMTriggerDestination *)self _initializeTimerWithIdentifier:identifierCopy fireAfterDelay:delay];
}

- (void)_onTimerExpiryForTimerIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v24 = 136315394;
      v25 = "[SMTriggerDestination _onTimerExpiryForTimerIdentifier:]";
      v26 = 2112;
      v27 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@", &v24, 0x16u);
    }
  }

  if (identifierCopy == @"com.apple.routined.SMTriggerDestination.statusUpdateTimerIdentifier" || identifierCopy == @"com.apple.routined.SMTriggerDestination.upperBoundETATimerIdentifier")
  {
    [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
    [(SMTriggerDestination *)self _updateTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.statusUpdateTimerIdentifier" fireAfterDelay:?];
    v17 = +[SMDateUtility date];
    [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
    v18 = [v17 dateByAddingTimeInterval:?];

    triggerState = [(SMTriggerDestination *)self triggerState];
    [triggerState setTimeToUpdateStatus:v18];

    [(SMTriggerDestination *)self _persistState];
    [(SMTriggerDestination *)self _updateInitiatorStatus];
  }

  else
  {
    if (identifierCopy == @"com.apple.routined.SMTriggerDestination.roundTripReminderTimerIdentifier")
    {
      triggerState2 = [(SMTriggerDestination *)self triggerState];
      lastUnlockDate = [triggerState2 lastUnlockDate];
      triggerState3 = [(SMTriggerDestination *)self triggerState];
      roundTripReminderDate = [triggerState3 roundTripReminderDate];
      v10 = [roundTripReminderDate dateByAddingTimeInterval:-5400.0];
      v11 = [lastUnlockDate laterDate:v10];

      v12 = [v11 dateByAddingTimeInterval:5400.0];
      triggerState4 = [(SMTriggerDestination *)self triggerState];
      roundTripReminderDate2 = [triggerState4 roundTripReminderDate];
      [roundTripReminderDate2 timeIntervalSinceDate:v12];
      v16 = v15;

      if (v16 < 0.0)
      {
        v20 = +[SMDateUtility date];
        [v12 timeIntervalSinceDate:v20];
        v22 = v21;
        triggerState5 = [(SMTriggerDestination *)self triggerState];
        [triggerState5 setRoundTripReminderDate:v12];

        [(SMTriggerDestination *)self _persistState];
        [(SMTriggerDestination *)self _updateTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.roundTripReminderTimerIdentifier" fireAfterDelay:v22];

        goto LABEL_12;
      }

      [(SMTriggerDestination *)self _persistState];
      [(SMTriggerDestination *)self _declareAnomalyForTriggerCategory:9];
      [(SMTriggerDestination *)self _tearDownTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.statusUpdateTimerIdentifier"];
    }

    [(SMTriggerDestination *)self _tearDownTimerWithIdentifier:identifierCopy];
  }

LABEL_12:
}

- (void)_tearDownTimerWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[SMTriggerDestination _tearDownTimerWithIdentifier:]";
      v13 = 2112;
      v14 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@", &v11, 0x16u);
    }
  }

  timerIdentifierToTimers = [(SMTriggerDestination *)self timerIdentifierToTimers];
  v7 = [timerIdentifierToTimers objectForKey:identifierCopy];

  if (v7)
  {
    timerIdentifierToTimers2 = [(SMTriggerDestination *)self timerIdentifierToTimers];
    v9 = [timerIdentifierToTimers2 objectForKey:identifierCopy];
    [v9 invalidate];

    timerIdentifierToTimers3 = [(SMTriggerDestination *)self timerIdentifierToTimers];
    [timerIdentifierToTimers3 removeObjectForKey:identifierCopy];
  }
}

- (void)_removeTimers
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[SMTriggerDestination _removeTimers]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  timerIdentifierToTimers = [(SMTriggerDestination *)self timerIdentifierToTimers];
  allKeys = [timerIdentifierToTimers allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        timerIdentifierToTimers2 = [(SMTriggerDestination *)self timerIdentifierToTimers];
        v12 = [timerIdentifierToTimers2 objectForKeyedSubscript:v10];
        [v12 invalidate];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  timerIdentifierToTimers3 = [(SMTriggerDestination *)self timerIdentifierToTimers];
  [timerIdentifierToTimers3 removeAllObjects];

  [(SMTriggerDestination *)self setTimerIdentifierToTimers:0];
}

- (void)_addObservers
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[SMTriggerDestination _addObservers]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
    }
  }

  locationManager = [(SMTriggerDestination *)self locationManager];
  v5 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [locationManager addObserver:self selector:sel_onLocationNotification_ name:v5];

  dataProtectionManager = [(SMTriggerDestination *)self dataProtectionManager];
  v7 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
  [dataProtectionManager addObserver:self selector:sel_onDataProtectionNotification_ name:v7];
}

- (void)_removeObservers
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SMTriggerDestination _removeObservers]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
    }
  }

  locationManager = [(SMTriggerDestination *)self locationManager];
  [locationManager removeObserver:self];

  dataProtectionManager = [(SMTriggerDestination *)self dataProtectionManager];
  [dataProtectionManager removeObserver:self];
}

+ (void)mapsExpectedTravelTimeforTransportType:(unint64_t)type source:(id)source destination:(id)destination departureDate:(id)date queue:(id)queue handler:(id)handler
{
  v62 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  destinationCopy = destination;
  dateCopy = date;
  queueCopy = queue;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      coordinateToString = [sourceCopy coordinateToString];
      coordinateToString2 = [destinationCopy coordinateToString];
      v20 = [objc_opt_class() convertSMDirectionTransportTypeToString:type];
      *buf = 136315907;
      v55 = "+[SMTriggerDestination mapsExpectedTravelTimeforTransportType:source:destination:departureDate:queue:handler:]";
      v56 = 2117;
      v57 = coordinateToString;
      v58 = 2117;
      v59 = coordinateToString2;
      v60 = 2112;
      v61 = v20;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%s, source, %{sensitive}@, destination, %{sensitive}@, transportType, %@.", buf, 0x2Au);
    }
  }

  v39 = objc_alloc_init(RTDefaultsManager);
  v21 = [(RTDefaultsManager *)v39 objectForKey:@"RTDefaultsSMTriggerDestinationForceCrowFliesKey"];
  bOOLValue = [v21 BOOLValue];

  if (bOOLValue)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "overriding Maps ETA return -1.0", buf, 2u);
      }
    }

    v52 = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Disabled due to defaults"];
    v53 = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];

    v26 = objc_alloc(MEMORY[0x277CCA9B8]);
    v27 = [v26 initWithDomain:*MEMORY[0x277D4ACD0] code:5 userInfo:v25];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __110__SMTriggerDestination_mapsExpectedTravelTimeforTransportType_source_destination_departureDate_queue_handler___block_invoke;
    block[3] = &unk_2788C4D38;
    v50 = v27;
    v51 = handlerCopy;
    v28 = v27;
    dispatch_async(queueCopy, block);
  }

  v29 = objc_opt_new();
  v30 = [objc_alloc(MEMORY[0x277CD4F00]) initWithLocation:sourceCopy addressDictionary:0 region:0 areasOfInterest:0];
  v31 = [objc_alloc(MEMORY[0x277CD4F00]) initWithLocation:destinationCopy addressDictionary:0 region:0 areasOfInterest:0];
  v32 = [objc_alloc(MEMORY[0x277CD4E80]) initWithPlacemark:v30];
  [v29 setSource:v32];

  v33 = [objc_alloc(MEMORY[0x277CD4E80]) initWithPlacemark:v31];
  [v29 setDestination:v33];

  [v29 setTransportType:{+[SMTriggerDestination convertSMDirectionTransportTypeToMKDirectionTransportType:](SMTriggerDestination, "convertSMDirectionTransportTypeToMKDirectionTransportType:", type)}];
  [v29 setDepartureDate:dateCopy];
  v34 = [objc_alloc(MEMORY[0x277CD4DC0]) initWithRequest:v29];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __110__SMTriggerDestination_mapsExpectedTravelTimeforTransportType_source_destination_departureDate_queue_handler___block_invoke_2;
  v42[3] = &unk_2788D0A48;
  v43 = queueCopy;
  v44 = sourceCopy;
  selfCopy = self;
  typeCopy = type;
  v45 = destinationCopy;
  v46 = handlerCopy;
  v35 = handlerCopy;
  v36 = destinationCopy;
  v37 = sourceCopy;
  v38 = queueCopy;
  [v34 calculateETAWithCompletionHandler:v42];
}

void __110__SMTriggerDestination_mapsExpectedTravelTimeforTransportType_source_destination_departureDate_queue_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__SMTriggerDestination_mapsExpectedTravelTimeforTransportType_source_destination_departureDate_queue_handler___block_invoke_3;
  block[3] = &unk_2788C5958;
  v14 = v6;
  v7 = *(a1 + 32);
  v15 = *(a1 + 40);
  v8 = *(a1 + 48);
  v19 = *(a1 + 72);
  v16 = v8;
  v17 = v5;
  v12 = *(a1 + 56);
  v9 = v12;
  v18 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

uint64_t __110__SMTriggerDestination_mapsExpectedTravelTimeforTransportType_source_destination_departureDate_queue_handler___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    v4 = -1.0;
    if (v3)
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 40) coordinateToString];
        v7 = [*(a1 + 48) coordinateToString];
        v8 = [objc_opt_class() convertSMDirectionTransportTypeToString:*(a1 + 80)];
        v9 = [*(a1 + 32) code];
        v18 = 136316163;
        v19 = "+[SMTriggerDestination mapsExpectedTravelTimeforTransportType:source:destination:departureDate:queue:handler:]_block_invoke_3";
        v20 = 2117;
        v21 = v6;
        v22 = 2117;
        v23 = v7;
        v24 = 2112;
        v25 = v8;
        v26 = 1024;
        LODWORD(v27) = v9;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, error in ETA request, source, %{sensitive}@, destination, %{sensitive}@, transportType, %@, error, %d", &v18, 0x30u);
      }
    }
  }

  else
  {
    if (v3)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        [*(a1 + 56) expectedTravelTime];
        v12 = v11;
        v13 = [*(a1 + 40) coordinateToString];
        v14 = [*(a1 + 48) coordinateToString];
        v15 = [objc_opt_class() convertSMDirectionTransportTypeToString:*(a1 + 80)];
        v18 = 136316163;
        v19 = "+[SMTriggerDestination mapsExpectedTravelTimeforTransportType:source:destination:departureDate:queue:handler:]_block_invoke";
        v20 = 2048;
        v21 = v12;
        v22 = 2117;
        v23 = v13;
        v24 = 2117;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, expectedTravelTime, %f, source, %{sensitive}@, destination, %{sensitive}@, transport type, %@", &v18, 0x34u);
      }
    }

    [*(a1 + 56) expectedTravelTime];
    v4 = v16;
  }

  return (*(*(a1 + 64) + 16))(v4);
}

- (id)_locationsInDateInterval:(id)interval horizontalAccuracy:(double)accuracy error:(id *)error
{
  v59[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (intervalCopy)
  {
    *v46 = 0;
    v47 = v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__159;
    v50 = __Block_byref_object_dispose__159;
    v51 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__159;
    v44 = __Block_byref_object_dispose__159;
    v45 = 0;
    v9 = dispatch_semaphore_create(0);
    v35 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:intervalCopy horizontalAccuracy:1800 batchSize:0 boundingBoxLocation:accuracy];
    locationManager = [(SMTriggerDestination *)self locationManager];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __74__SMTriggerDestination__locationsInDateInterval_horizontalAccuracy_error___block_invoke;
    v36[3] = &unk_2788C4490;
    v38 = v46;
    v39 = &v40;
    v11 = v9;
    v37 = v11;
    [locationManager fetchStoredLocationsWithOptions:v35 handler:v36];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_578];
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
      v59[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v59 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
LABEL_13:

        v31 = v26;
        if ((v28 & 1) == 0)
        {
          objc_storeStrong(v47 + 5, v26);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = [v41[5] count];
            *buf = 136315906;
            *&buf[4] = "[SMTriggerDestination _locationsInDateInterval:horizontalAccuracy:error:]";
            v53 = 2112;
            v54 = intervalCopy;
            v55 = 2048;
            accuracyCopy = accuracy;
            v57 = 2048;
            v58 = v33;
            _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%s, dateInterval, %@, horizontalAccuracy, %f, locations, %lu", buf, 0x2Au);
          }
        }

        if (error)
        {
          *error = *(v47 + 5);
        }

        v30 = v41[5];

        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(v46, 8);

        goto LABEL_22;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
    goto LABEL_13;
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *v46 = 0;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", v46, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"dateInterval");
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_22:

  return v30;
}

void __74__SMTriggerDestination__locationsInDateInterval_horizontalAccuracy_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_locationAtDate:(id)date error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [dateCopy stringFromDate];
        *buf = 136315394;
        *&buf[4] = "[SMTriggerDestination _locationAtDate:error:]";
        *&buf[12] = 2112;
        *&buf[14] = stringFromDate;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, date, %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = __Block_byref_object_copy__159;
    v51 = __Block_byref_object_dispose__159;
    v52 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__159;
    v44 = __Block_byref_object_dispose__159;
    v45 = 0;
    v9 = dispatch_semaphore_create(0);
    locationManager = [(SMTriggerDestination *)self locationManager];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __46__SMTriggerDestination__locationAtDate_error___block_invoke;
    v36[3] = &unk_2788C8390;
    v38 = buf;
    v39 = &v40;
    v11 = v9;
    v37 = v11;
    [locationManager fetchEstimatedLocationAtDate:dateCopy options:0 handler:v36];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_578];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
      firstObject = [v21 firstObject];

      [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v46 = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v46, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v53[0] = *MEMORY[0x277CCA450];
      *v46 = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v53 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
LABEL_17:

        v31 = v26;
        if ((v28 & 1) == 0)
        {
          objc_storeStrong((*&buf[8] + 40), v26);
        }

        if (*(*&buf[8] + 40))
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            stringFromDate2 = [dateCopy stringFromDate];
            v35 = *(*&buf[8] + 40);
            *v46 = 138412546;
            *&v46[4] = stringFromDate2;
            v47 = 2112;
            v48 = v35;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Unable to fetch location at date, %@, error, %@", v46, 0x16u);
          }
        }

        if (error)
        {
          *error = *(*&buf[8] + 40);
        }

        v30 = v41[5];

        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_26;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
    goto LABEL_17;
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"date");
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_26:

  return v30;
}

void __46__SMTriggerDestination__locationAtDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_cacheLocations:(id)locations
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = locations;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        if ([objc_opt_class() validLocation:v8])
        {
          originLocation = [(SMTriggerDestination *)self originLocation];

          if (!originLocation)
          {
            [(SMTriggerDestination *)self setOriginLocation:v8];
          }

          [(SMTriggerDestination *)self _evaluateStatusUsingCurrentLocation:v8];
          v10 = objc_opt_class();
          sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
          destination = [sessionConfiguration destination];
          clLocation = [destination clLocation];
          distanceCalculator = [(SMTriggerDestination *)self distanceCalculator];
          [v10 distanceFromLocation:v8 toLocation:clLocation withCalculator:distanceCalculator];
          v16 = v15;

          v17 = [[SMLocationEvent alloc] initWithLocation:v8 distance:v16];
          cachedLocationEvents = [(SMTriggerDestination *)self cachedLocationEvents];
          [cachedLocationEvents addObject:v17];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  sessionMetricManager = [(SMTriggerDestination *)self sessionMetricManager];
  cachedLocationEvents2 = [(SMTriggerDestination *)self cachedLocationEvents];
  lastObject = [cachedLocationEvents2 lastObject];
  [lastObject distance];
  [sessionMetricManager cacheMostRecentLocationDistance:?];
}

- (void)_reviseCachedLocations
{
  v57 = *MEMORY[0x277D85DE8];
  cachedLocationEvents = [(SMTriggerDestination *)self cachedLocationEvents];
  v4 = [cachedLocationEvents sortedArrayUsingComparator:&__block_literal_global_185_0];
  v5 = [v4 mutableCopy];
  [(SMTriggerDestination *)self setCachedLocationEvents:v5];

  _cachedLocationsDateInterval = [(SMTriggerDestination *)self _cachedLocationsDateInterval];
  cachedLocationEvents2 = [(SMTriggerDestination *)self cachedLocationEvents];
  if ([cachedLocationEvents2 count])
  {
    v47 = objc_alloc(MEMORY[0x277CCA970]);
    cachedLocationEvents3 = [(SMTriggerDestination *)self cachedLocationEvents];
    firstObject = [cachedLocationEvents3 firstObject];
    location = [firstObject location];
    timestamp = [location timestamp];
    cachedLocationEvents4 = [(SMTriggerDestination *)self cachedLocationEvents];
    lastObject = [cachedLocationEvents4 lastObject];
    location2 = [lastObject location];
    timestamp2 = [location2 timestamp];
    v48 = [v47 initWithStartDate:timestamp endDate:timestamp2];
  }

  else
  {
    v48 = 0;
  }

  while (1)
  {
    cachedLocationEvents5 = [(SMTriggerDestination *)self cachedLocationEvents];
    if (![cachedLocationEvents5 count])
    {
      break;
    }

    cachedLocationEvents6 = [(SMTriggerDestination *)self cachedLocationEvents];
    firstObject2 = [cachedLocationEvents6 firstObject];
    location3 = [firstObject2 location];
    timestamp3 = [location3 timestamp];
    startDate = [_cachedLocationsDateInterval startDate];
    [timestamp3 timeIntervalSinceDate:startDate];
    v22 = v21;

    if (v22 >= 0.0)
    {
      goto LABEL_9;
    }

    cachedLocationEvents7 = [(SMTriggerDestination *)self cachedLocationEvents];
    [cachedLocationEvents7 removeObjectAtIndex:0];
  }

LABEL_9:
  while (1)
  {
    cachedLocationEvents8 = [(SMTriggerDestination *)self cachedLocationEvents];
    if (![cachedLocationEvents8 count])
    {
      break;
    }

    cachedLocationEvents9 = [(SMTriggerDestination *)self cachedLocationEvents];
    lastObject2 = [cachedLocationEvents9 lastObject];
    location4 = [lastObject2 location];
    timestamp4 = [location4 timestamp];
    endDate = [_cachedLocationsDateInterval endDate];
    [timestamp4 timeIntervalSinceDate:endDate];
    v31 = v30;

    if (v31 <= 0.0)
    {
      goto LABEL_13;
    }

    cachedLocationEvents10 = [(SMTriggerDestination *)self cachedLocationEvents];
    cachedLocationEvents11 = [(SMTriggerDestination *)self cachedLocationEvents];
    [cachedLocationEvents10 removeObjectAtIndex:{objc_msgSend(cachedLocationEvents11, "count") - 1}];
  }

LABEL_13:
  cachedLocationEvents12 = [(SMTriggerDestination *)self cachedLocationEvents];
  if ([cachedLocationEvents12 count])
  {
    v35 = objc_alloc(MEMORY[0x277CCA970]);
    cachedLocationEvents13 = [(SMTriggerDestination *)self cachedLocationEvents];
    firstObject3 = [cachedLocationEvents13 firstObject];
    location5 = [firstObject3 location];
    timestamp5 = [location5 timestamp];
    cachedLocationEvents14 = [(SMTriggerDestination *)self cachedLocationEvents];
    lastObject3 = [cachedLocationEvents14 lastObject];
    location6 = [lastObject3 location];
    timestamp6 = [location6 timestamp];
    v43 = [v35 initWithStartDate:timestamp5 endDate:timestamp6];
  }

  else
  {
    v43 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v50 = "[SMTriggerDestination _reviseCachedLocations]";
      v51 = 2112;
      v52 = v48;
      v53 = 2112;
      v54 = _cachedLocationsDateInterval;
      v55 = 2112;
      v56 = v43;
      _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%s, cachedLocations dateInterval pre-filter, %@, dateInterval of interest, %@, cachedLocations dateInterval post-filter, %@", buf, 0x2Au);
    }
  }
}

uint64_t __46__SMTriggerDestination__reviseCachedLocations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 location];
  v6 = [v5 timestamp];
  v7 = [v4 location];

  v8 = [v7 timestamp];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)_evaluateStatusUsingCurrentLocation:(id)location
{
  locationCopy = location;
  triggerState = [(SMTriggerDestination *)self triggerState];
  currentStatus = [triggerState currentStatus];

  if (currentStatus == 1)
  {
    v6 = objc_opt_class();
    originLocation = [(SMTriggerDestination *)self originLocation];
    distanceCalculator = [(SMTriggerDestination *)self distanceCalculator];
    [v6 distanceFromLocation:originLocation toLocation:locationCopy withCalculator:distanceCalculator];
    v10 = v9;

    if (v10 != 1.79769313e308)
    {
      [(SMTriggerDestination *)self idleMaxDistanceThreshold];
      v12 = v11;
      originLocation2 = [(SMTriggerDestination *)self originLocation];
      [originLocation2 horizontalAccuracy];
      v15 = v14;

      [locationCopy horizontalAccuracy];
      if (v15 >= v16)
      {
        v16 = v15;
      }

      if (v10 > v12 + v16)
      {
        triggerState2 = [(SMTriggerDestination *)self triggerState];
        [triggerState2 setCurrentStatus:2];

        [(SMTriggerDestination *)self _persistState];
      }
    }
  }
}

+ (BOOL)validLocation:(id)location
{
  locationCopy = location;
  v4 = locationCopy;
  if (locationCopy && ([locationCopy horizontalAccuracy], v5 >= 0.0))
  {
    [v4 horizontalAccuracy];
    v6 = v7 <= 200.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isNoProgressStatus
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = +[SMDateUtility date];
  triggerState = [(SMTriggerDestination *)self triggerState];
  currentStatus = [triggerState currentStatus];

  if (currentStatus == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
LABEL_6:
        v11 = 0;
        goto LABEL_7;
      }

      [(SMTriggerDestination *)self originLocation];
      v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      cachedLocationEvents = [(SMTriggerDestination *)self cachedLocationEvents];
      lastObject = [cachedLocationEvents lastObject];
      location = [lastObject location];
      *buf = 136315651;
      v113 = "[SMTriggerDestination _isNoProgressStatus]";
      v114 = 2117;
      v115 = v7;
      v116 = 2117;
      v117 = location;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, NO, has not transitioned from idle status yet, origin location, %{sensitive}@, last location, %{sensitive}@", buf, 0x20u);

LABEL_5:
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  cachedLocationEvents2 = [(SMTriggerDestination *)self cachedLocationEvents];
  v13 = [cachedLocationEvents2 count];

  if (!v13)
  {
    lastUserResponseSafeDate = [(SMTriggerDestination *)self lastUserResponseSafeDate];
    [v3 timeIntervalSinceDate:lastUserResponseSafeDate];
    v32 = v31;
    [(SMTriggerDestination *)self idleTimeoutThreshold];
    v34 = v33;
    [(SMTriggerDestination *)self noProgressTimeoutThreshold];
    v36 = v34 + v35;

    v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v32 >= v36)
    {
      if (!v37)
      {
        v11 = 1;
        goto LABEL_22;
      }

      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      v11 = 1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        lastUserResponseSafeDate2 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
        [lastUserResponseSafeDate2 stringFromDate];
        v57 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        stringFromDate = [v3 stringFromDate];
        lastUserResponseSafeDate3 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
        [v3 timeIntervalSinceDate:lastUserResponseSafeDate3];
        *buf = 136315906;
        v113 = "[SMTriggerDestination _isNoProgressStatus]";
        v114 = 2112;
        v115 = v57;
        v116 = 2112;
        v117 = stringFromDate;
        v118 = 2048;
        v119 = v60;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, YES, empty cached locations, lastUserResponseSafeDate, %@, now, %@, timeInterval, %f", buf, 0x2Au);
      }

      goto LABEL_7;
    }

    if (v37)
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      lastUserResponseSafeDate4 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
      [lastUserResponseSafeDate4 stringFromDate];
      v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      stringFromDate2 = [v3 stringFromDate];
      lastUserResponseSafeDate5 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
      [v3 timeIntervalSinceDate:lastUserResponseSafeDate5];
      *buf = 136315906;
      v113 = "[SMTriggerDestination _isNoProgressStatus]";
      v114 = 2112;
      v115 = v7;
      v116 = 2112;
      v117 = stringFromDate2;
      v118 = 2048;
      v119 = v41;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, NO, empty cached locations, lastUserResponseSafeDate, %@, now, %@, timeInterval, %f", buf, 0x2Au);

      goto LABEL_5;
    }

LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  cachedLocationEvents3 = [(SMTriggerDestination *)self cachedLocationEvents];
  lastObject2 = [cachedLocationEvents3 lastObject];
  location2 = [lastObject2 location];
  timestamp = [location2 timestamp];
  [v3 timeIntervalSinceDate:timestamp];
  v19 = v18;
  [(SMTriggerDestination *)self noProgressTimeoutThreshold];
  v21 = v20;

  if (v19 <= v21)
  {
    cachedLocationEvents4 = [(SMTriggerDestination *)self cachedLocationEvents];
    firstObject = [cachedLocationEvents4 firstObject];
    location3 = [firstObject location];
    timestamp2 = [location3 timestamp];
    [v3 timeIntervalSinceDate:timestamp2];
    v47 = v46;

    [(SMTriggerDestination *)self noProgressTimeoutThreshold];
    if (v47 >= v48)
    {
      cachedLocationEvents5 = [(SMTriggerDestination *)self cachedLocationEvents];
      lastObject3 = [cachedLocationEvents5 lastObject];
      location4 = [lastObject3 location];
      timestamp3 = [location4 timestamp];
      [(SMTriggerDestination *)self noProgressTimeoutThreshold];
      v6 = [timestamp3 dateByAddingTimeInterval:-v65];

      v66 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K >= %@", @"location", @"timestamp", v6];
      cachedLocationEvents6 = [(SMTriggerDestination *)self cachedLocationEvents];
      v68 = [cachedLocationEvents6 filteredArrayUsingPredicate:v66];

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v103 = v68;
      reverseObjectEnumerator = [v68 reverseObjectEnumerator];
      v97 = [reverseObjectEnumerator countByEnumeratingWithState:&v108 objects:v123 count:16];
      if (v97)
      {
        v99 = reverseObjectEnumerator;
        v101 = *v109;
        v95 = v66;
        v96 = v6;
        do
        {
          for (i = 0; i != v97; ++i)
          {
            if (*v109 != v101)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v71 = *(*(&v108 + 1) + 8 * i);
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v72 = v103;
            v73 = [v72 countByEnumeratingWithState:&v104 objects:v122 count:16];
            if (v73)
            {
              v74 = v73;
              v75 = *v105;
LABEL_33:
              v76 = 0;
              while (1)
              {
                if (*v105 != v75)
                {
                  objc_enumerationMutation(v72);
                }

                v77 = *(*(&v104 + 1) + 8 * v76);
                if (v71 == v77)
                {
                  break;
                }

                location5 = [v71 location];
                location6 = [v77 location];
                [location5 distanceFromLocation:location6];
                v81 = v80;
                [location5 horizontalAccuracy];
                v83 = v82;
                [location6 horizontalAccuracy];
                v85 = v84;
                [(SMTriggerDestination *)self significantMoveThreshold];
                if (v83 >= v85)
                {
                  v87 = v83;
                }

                else
                {
                  v87 = v85;
                }

                if (v81 > v86 + v87)
                {
                  v66 = v95;
                  v6 = v96;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    v91 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                    {
                      toString = [location5 toString];
                      [location6 toString];
                      v93 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                      [(SMTriggerDestination *)self significantMoveThreshold];
                      *buf = 136316162;
                      v113 = "[SMTriggerDestination _isNoProgressStatus]";
                      v114 = 2048;
                      v115 = v81;
                      v116 = 2112;
                      v117 = toString;
                      v118 = 2112;
                      v119 = v93;
                      v120 = 2048;
                      v121 = v94;
                      _os_log_impl(&dword_2304B3000, v91, OS_LOG_TYPE_INFO, "%s, NO, distance, %.2f, location_i, %@, location_j, %@, no progress distance threshold, %.2f", buf, 0x34u);
                    }
                  }

                  v11 = 0;
                  v88 = v99;
                  goto LABEL_53;
                }

                if (v74 == ++v76)
                {
                  v74 = [v72 countByEnumeratingWithState:&v104 objects:v122 count:16];
                  if (v74)
                  {
                    goto LABEL_33;
                  }

                  break;
                }
              }
            }

            reverseObjectEnumerator = v99;
          }

          v66 = v95;
          v6 = v96;
          v97 = [v99 countByEnumeratingWithState:&v108 objects:v123 count:16];
        }

        while (v97);
      }

      v11 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v88 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          cachedLocationEvents7 = [(SMTriggerDestination *)self cachedLocationEvents];
          *&v90 = COERCE_DOUBLE([cachedLocationEvents7 count]);
          *buf = 136315650;
          v113 = "[SMTriggerDestination _isNoProgressStatus]";
          v114 = 2048;
          v115 = *&v90;
          v116 = 2048;
          v117 = 0x4069000000000000;
          _os_log_impl(&dword_2304B3000, v88, OS_LOG_TYPE_INFO, "%s, YES, no significant change detected for cachedLocations count, %lu, no progress distance threshold, %.2f", buf, 0x20u);
        }

LABEL_53:
      }

      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        cachedLocationEvents8 = [(SMTriggerDestination *)self cachedLocationEvents];
        firstObject2 = [cachedLocationEvents8 firstObject];
        location7 = [firstObject2 location];
        timestamp4 = [location7 timestamp];
        [timestamp4 stringFromDate];
        v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        stringFromDate3 = [v3 stringFromDate];
        *buf = 136315906;
        v113 = "[SMTriggerDestination _isNoProgressStatus]";
        v114 = 2112;
        v115 = v53;
        v116 = 2112;
        v117 = stringFromDate3;
        v118 = 2048;
        v119 = v47;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, NO, short length cached locations from, %@, now, %@, timeInterval, %f", buf, 0x2Au);
      }

      goto LABEL_6;
    }

    goto LABEL_21;
  }

  v11 = 1;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_22;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    cachedLocationEvents9 = [(SMTriggerDestination *)self cachedLocationEvents];
    lastObject4 = [cachedLocationEvents9 lastObject];
    location8 = [lastObject4 location];
    timestamp5 = [location8 timestamp];
    [timestamp5 stringFromDate];
    v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    stringFromDate4 = [v3 stringFromDate];
    cachedLocationEvents10 = [(SMTriggerDestination *)self cachedLocationEvents];
    lastObject5 = [cachedLocationEvents10 lastObject];
    location9 = [lastObject5 location];
    timestamp6 = [location9 timestamp];
    [v3 timeIntervalSinceDate:timestamp6];
    *buf = 136315906;
    v113 = "[SMTriggerDestination _isNoProgressStatus]";
    v114 = 2112;
    v115 = v23;
    v116 = 2112;
    v117 = stringFromDate4;
    v118 = 2048;
    v119 = v29;
    v11 = 1;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, YES, no locations available from, %@, now, %@, timeInterval, %f", buf, 0x2Au);
  }

LABEL_7:

LABEL_22:
  return v11;
}

- (BOOL)_shouldChangeModeOfTransportStartDate:(id)date endDate:(id)endDate
{
  v46 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v30 = dateCopy;
  v36 = 0;
  v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:endDateCopy];
  v7 = [SMTriggerDestination _locationsInDateInterval:"_locationsInDateInterval:horizontalAccuracy:error:" horizontalAccuracy:200.0 error:?];
  v26 = v36;
  v27 = v7;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [v7 reverseObjectEnumerator];
  v8 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v11 = 1.79769313e308;
    v12 = 2.22507386e-308;
    v13 = 2.22507386e-308;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = objc_opt_class();
        sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
        destination = [sessionConfiguration destination];
        clLocation = [destination clLocation];
        distanceCalculator = [(SMTriggerDestination *)self distanceCalculator];
        [v16 distanceFromLocation:v15 toLocation:clLocation withCalculator:distanceCalculator];
        v22 = v21;

        if (v13 < v22)
        {
          v13 = v22;
        }

        if (v11 >= v22)
        {
          v11 = v22;
        }

        [v15 horizontalAccuracy];
        if (v12 < v23)
        {
          v12 = v23;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1.79769313e308;
    v12 = 2.22507386e-308;
    v13 = 2.22507386e-308;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v38 = "[SMTriggerDestination _shouldChangeModeOfTransportStartDate:endDate:]";
      v39 = 1024;
      v40 = v13 - v11 > v12 + 200.0;
      v41 = 2048;
      v42 = v13;
      v43 = 2048;
      v44 = v11;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%s, %d, maxDistance, %f, minDistance, %f", buf, 0x26u);
    }
  }

  return v13 - v11 > v12 + 750.0;
}

+ (void)currentLocationWithLocationManager:(id)manager queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  managerCopy = manager;
  locationRequestOptions = [objc_opt_class() locationRequestOptions];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__SMTriggerDestination_currentLocationWithLocationManager_queue_handler___block_invoke;
  v14[3] = &unk_2788CC120;
  v15 = queueCopy;
  v16 = locationRequestOptions;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = locationRequestOptions;
  v13 = queueCopy;
  [managerCopy fetchCurrentLocationWithOptions:v12 handler:v14];
}

void __73__SMTriggerDestination_currentLocationWithLocationManager_queue_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SMTriggerDestination_currentLocationWithLocationManager_queue_handler___block_invoke_2;
  v10[3] = &unk_2788C5530;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

uint64_t __73__SMTriggerDestination_currentLocationWithLocationManager_queue_handler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = [*(a1 + 40) toString];
      v5 = *(a1 + 48);
      v7 = 136315907;
      v8 = "+[SMTriggerDestination currentLocationWithLocationManager:queue:handler:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      v11 = 2117;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, options, %@, currentLocation, %{sensitive}@, error, %@", &v7, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

+ (void)calculateDistanceToDestination:(id)destination locationManager:(id)manager distanceCalculator:(id)calculator queue:(id)queue handler:(id)handler
{
  destinationCopy = destination;
  calculatorCopy = calculator;
  handlerCopy = handler;
  queueCopy = queue;
  managerCopy = manager;
  v17 = objc_opt_class();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __104__SMTriggerDestination_calculateDistanceToDestination_locationManager_distanceCalculator_queue_handler___block_invoke;
  v21[3] = &unk_2788D0A90;
  v24 = handlerCopy;
  selfCopy = self;
  v22 = destinationCopy;
  v23 = calculatorCopy;
  v18 = calculatorCopy;
  v19 = destinationCopy;
  v20 = handlerCopy;
  [v17 currentLocationWithLocationManager:managerCopy queue:queueCopy handler:v21];
}

void __104__SMTriggerDestination_calculateDistanceToDestination_locationManager_distanceCalculator_queue_handler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5 || a3)
  {
    v10 = a1[6];
    v11 = a1[4];
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D4ACD0];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"current location is unavailable";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = [v12 errorWithDomain:v13 code:17 userInfo:v14];
    (*(v10 + 16))(v10, v11, v15, 1.79769313e308);
  }

  else
  {
    [objc_opt_class() distanceFromLocation:v5 toLocation:a1[4] withCalculator:a1[5]];
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (v7 == 1.79769313e308)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v7];
        }

        *buf = 136315394;
        v17 = "+[SMTriggerDestination calculateDistanceToDestination:locationManager:distanceCalculator:queue:handler:]_block_invoke";
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, distance, %@", buf, 0x16u);
        if (v7 != 1.79769313e308)
        {
        }
      }
    }

    (*(a1[6] + 16))(v7);
  }
}

- (void)_updateInitiatorStatus
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SMTriggerDestination _updateInitiatorStatus]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v9, 0xCu);
    }
  }

  sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
  sessionType = [sessionConfiguration sessionType];

  if (sessionType == 2)
  {
    [(SMTriggerDestination *)self _updateInitiatorStatusDestinationBoundWithCompletion:&__block_literal_global_208_0];
  }

  else
  {
    sessionConfiguration2 = [(SMTriggerDestination *)self sessionConfiguration];
    sessionType2 = [sessionConfiguration2 sessionType];

    if (sessionType2 == 3)
    {
      [(SMTriggerDestination *)self _updateInitiatorStatusRoundTrip];
    }

    else
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[SMTriggerDestination _updateInitiatorStatus]";
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid session type", &v9, 0xCu);
      }
    }
  }
}

void __46__SMTriggerDestination__updateInitiatorStatus__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMTriggerDestination _updateInitiatorStatus]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, finished updating initiator status for destination, error, %@", &v4, 0x16u);
    }
  }
}

- (void)_updateInitiatorStatusRoundTrip
{
  v24 = *MEMORY[0x277D85DE8];
  sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
  sessionType = [sessionConfiguration sessionType];

  if (sessionType != 3)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[SMTriggerDestination _updateInitiatorStatusRoundTrip]";
      v22 = 1024;
      LODWORD(v23) = 1271;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.sessionConfiguration.sessionType == SMSessionTypeRoundTrip (in %s:%d)", &v20, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = MEMORY[0x277D4AC30];
      triggerState = [(SMTriggerDestination *)self triggerState];
      v9 = [v7 statusToString:{objc_msgSend(triggerState, "currentStatus")}];
      v20 = 136315394;
      v21 = "[SMTriggerDestination _updateInitiatorStatusRoundTrip]";
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, initiator current status, %@", &v20, 0x16u);
    }
  }

  triggerState2 = [(SMTriggerDestination *)self triggerState];
  currentStatus = [triggerState2 currentStatus];

  if (currentStatus != 3)
  {
    if (currentStatus == 2)
    {
      v12 = +[SMDateUtility date];
      triggerState3 = [(SMTriggerDestination *)self triggerState];
      roundTripReminderDate = [triggerState3 roundTripReminderDate];
      [v12 timeIntervalSinceDate:roundTripReminderDate];
      v16 = v15;

      if (v16 > 0.0)
      {
        [(SMTriggerDestination *)self _declareAnomalyForTriggerCategory:9];
      }
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = MEMORY[0x277D4AC30];
        triggerState4 = [(SMTriggerDestination *)self triggerState];
        v19 = [v17 statusToString:{objc_msgSend(triggerState4, "currentStatus")}];
        v20 = 136315394;
        v21 = "[SMTriggerDestination _updateInitiatorStatusRoundTrip]";
        v22 = 2112;
        v23 = v19;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%s, Invalid status, %@", &v20, 0x16u);
      }
    }
  }
}

- (void)_updateInitiatorStatusDestinationBoundWithCompletion:(id)completion
{
  v99[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
  sessionType = [sessionConfiguration sessionType];

  if (sessionType != 2)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMTriggerDestination _updateInitiatorStatusDestinationBoundWithCompletion:]";
      *&buf[12] = 1024;
      *&buf[14] = 1305;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.sessionConfiguration.sessionType == SMSessionTypeDestinationBound (in %s:%d)", buf, 0x12u);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  triggerState = [(SMTriggerDestination *)self triggerState];
  currentStatusDate = [triggerState currentStatusDate];
  [date timeIntervalSinceDate:currentStatusDate];
  v12 = v11;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = MEMORY[0x277D4AC30];
      triggerState2 = [(SMTriggerDestination *)self triggerState];
      v16 = [v14 statusToString:{objc_msgSend(triggerState2, "currentStatus")}];
      sessionConfiguration2 = [(SMTriggerDestination *)self sessionConfiguration];
      v18 = [sessionConfiguration2 description];
      *buf = 136315907;
      *&buf[4] = "[SMTriggerDestination _updateInitiatorStatusDestinationBoundWithCompletion:]";
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2117;
      v96 = v18;
      LOWORD(v97) = 2048;
      *(&v97 + 2) = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, current status, %@, session configuration, %{sensitive}@, durationSinceLastStatusChange, %.2f", buf, 0x2Au);
    }
  }

  triggerState3 = [(SMTriggerDestination *)self triggerState];
  if ([triggerState3 currentStatus] == 1)
  {
    [(SMTriggerDestination *)self idleTimeoutThreshold];
    v21 = v12 > v20;

    if (v21)
    {
      triggerState4 = [(SMTriggerDestination *)self triggerState];
      [triggerState4 setCurrentStatus:2];

      [(SMTriggerDestination *)self _persistState];
    }
  }

  else
  {
  }

  [(SMTriggerDestination *)self _reviseCachedLocations];
  triggerState5 = [(SMTriggerDestination *)self triggerState];
  v24 = [triggerState5 currentStatus] == 1;

  if (v24)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[SMTriggerDestination _updateInitiatorStatusDestinationBoundWithCompletion:]";
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%s, delaying trigger monitoring until transition to progress state", buf, 0xCu);
      }
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    _isNoProgressStatus = [(SMTriggerDestination *)self _isNoProgressStatus];
    triggerState6 = [(SMTriggerDestination *)self triggerState];
    v28 = [triggerState6 currentStatus] != 3;

    if (v28 && _isNoProgressStatus)
    {
      [(SMTriggerDestination *)self _declareAnomalyForTriggerCategory:3];
    }

    cachedLocationEvents = [(SMTriggerDestination *)self cachedLocationEvents];
    v30 = [cachedLocationEvents count] == 0;

    if (v30)
    {
      v40 = objc_alloc(MEMORY[0x277CCA9B8]);
      v98 = *MEMORY[0x277CCA450];
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s cannot be completed due to no cached locations", "-[SMTriggerDestination _updateInitiatorStatusDestinationBoundWithCompletion:]"];
      v99[0] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
      v43 = [v40 initWithDomain:*MEMORY[0x277D4ACD0] code:6 userInfo:v42];

      (completionCopy)[2](completionCopy, v43);
    }

    else
    {
      v31 = +[SMDateUtility date];
      v32 = [v31 dateByAddingTimeInterval:-300.0];
      cachedLocationEvents2 = [(SMTriggerDestination *)self cachedLocationEvents];
      lastObject = [cachedLocationEvents2 lastObject];
      location = [lastObject location];

      cachedLocationEvents3 = [(SMTriggerDestination *)self cachedLocationEvents];
      lastObject2 = [cachedLocationEvents3 lastObject];
      [lastObject2 distance];
      v38 = v37;

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v96 = __Block_byref_object_copy__159;
      *&v97 = __Block_byref_object_dispose__159;
      *(&v97 + 1) = 0;
      v89[0] = 0;
      v89[1] = v89;
      v89[2] = 0x3032000000;
      v89[3] = __Block_byref_object_copy__159;
      v89[4] = __Block_byref_object_dispose__159;
      v90 = 0;
      v88[0] = 0;
      v88[1] = v88;
      v88[2] = 0x2020000000;
      v88[3] = 0xBFF0000000000000;
      v87[0] = 0;
      v87[1] = v87;
      v87[2] = 0x2020000000;
      v87[3] = 0xBFF0000000000000;
      triggerState7 = [(SMTriggerDestination *)self triggerState];
      LOBYTE(lastObject2) = [triggerState7 predominantModeOfTransport] == 4;

      if (lastObject2)
      {
        v62 = 0;
        v66 = 4;
      }

      else
      {
        v86 = 0;
        v44 = [(SMTriggerDestination *)self _predominantMotionActicityTypeFromStartDate:v32 toEndDate:v31 outError:&v86];
        v62 = v86;
        v66 = [(SMTriggerDestination *)self _motionActivityTypeToTransportType:v44 distance:v38];
      }

      triggerState8 = [(SMTriggerDestination *)self triggerState];
      v46 = [triggerState8 predominantModeOfTransport] == 0xFFFFFFF;

      if (v46)
      {
        triggerState9 = [(SMTriggerDestination *)self triggerState];
        [triggerState9 setPredominantModeOfTransport:v66];

        [(SMTriggerDestination *)self _persistState];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = objc_opt_class();
            triggerState10 = [(SMTriggerDestination *)self triggerState];
            v51 = [v49 convertSMDirectionTransportTypeToString:{objc_msgSend(triggerState10, "predominantModeOfTransport")}];
            *v91 = 136315394;
            v92 = "[SMTriggerDestination _updateInitiatorStatusDestinationBoundWithCompletion:]";
            v93 = 2112;
            v94 = v51;
            _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%s, predominantModeOfTransport, %@", v91, 0x16u);
          }
        }
      }

      v65 = dispatch_group_create();
      dispatch_group_enter(v65);
      v64 = objc_opt_class();
      triggerState11 = [(SMTriggerDestination *)self triggerState];
      predominantModeOfTransport = [triggerState11 predominantModeOfTransport];
      defaultsManager = [(SMTriggerDestination *)self defaultsManager];
      sessionConfiguration3 = [(SMTriggerDestination *)self sessionConfiguration];
      destination = [sessionConfiguration3 destination];
      clLocation = [destination clLocation];
      distanceCalculator = [(SMTriggerDestination *)self distanceCalculator];
      queue = [(SMTriggerDestination *)self queue];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke;
      v80[3] = &unk_2788D0AB8;
      v82 = v88;
      v80[4] = self;
      v83 = v87;
      v84 = buf;
      v85 = v89;
      v81 = v65;
      v57 = triggerState11;
      v58 = v81;
      [v64 expectedTravelTimeforTransportType:predominantModeOfTransport source:location defaultsManager:defaultsManager destination:clLocation departureDate:v31 distanceCalculator:distanceCalculator queue:queue completionHandler:v80];

      queue2 = [(SMTriggerDestination *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke_216;
      block[3] = &unk_2788D0B30;
      v74 = v89;
      block[4] = self;
      v78 = v38;
      v72 = v31;
      v73 = completionCopy;
      v75 = v88;
      v79 = v66;
      v71 = location;
      v76 = v87;
      v77 = buf;
      v60 = v31;
      v61 = location;
      dispatch_group_notify(v58, queue2, block);

      _Block_object_dispose(v87, 8);
      _Block_object_dispose(v88, 8);
      _Block_object_dispose(v89, 8);

      _Block_object_dispose(buf, 8);
    }
  }
}

void __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  *(*(*(a1 + 48) + 8) + 24) = a4;
  v11 = [*(a1 + 32) platform];
  if ([v11 internalInstall])
  {
    v12 = [*(a1 + 32) defaultsManager];
    v13 = [v12 objectForKey:@"RTDefaultsSMTriggerDestinationMuteMapsExpectedEtaKey"];

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v21 = 136315138;
          v22 = "[SMTriggerDestination _updateInitiatorStatusDestinationBoundWithCompletion:]_block_invoke";
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, muting maps expected travel time with user defaults", &v21, 0xCu);
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = 0xBFF0000000000000;
    }
  }

  else
  {
  }

  *(*(*(a1 + 56) + 8) + 24) = a5;
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  v18 = *(*(a1 + 72) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v10;
  v20 = v10;

  dispatch_group_leave(*(a1 + 40));
}

void __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke_216(uint64_t a1)
{
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = [*(a1 + 32) _shouldUpdateUpperBoundEtaWithRemainingDistance:*(a1 + 96) mapsExpectedTravelTime:*(*(*(a1 + 72) + 8) + 24)];
    v3 = [*(a1 + 32) sessionMetricManager];
    [v3 onCrowFliesETAUpdate:*(*(*(a1 + 80) + 8) + 24)];

    v4 = [*(a1 + 32) sessionMetricManager];
    [v4 onMapsETAUpdate:*(*(*(a1 + 72) + 8) + 24)];

    if ((v47[3] & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = [v5 triggerState];
      v7 = [v6 upperBoundEta];
      LODWORD(v5) = [v5 _isExceedingUpperBoundEta:v7 mapsExpectedTravelTime:*(*(*(a1 + 72) + 8) + 24) crowFliesExpectedTravelTime:*(*(*(a1 + 80) + 8) + 24)];

      if (v5)
      {
        [*(a1 + 32) _declareAnomalyForTriggerCategory:4];
      }
    }

    v8 = dispatch_group_create();
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    dispatch_group_enter(v8);
    v9 = [*(a1 + 32) triggerState];
    v10 = [v9 upperBoundEta];
    if (v10)
    {
      v11 = *(a1 + 104);
      v12 = [*(a1 + 32) triggerState];
      v13 = [v12 predominantModeOfTransport];

      if (v11 != v13)
      {
        *(v43 + 24) = 1;
        v27 = objc_opt_class();
        v25 = *(a1 + 40);
        v26 = *(a1 + 104);
        v14 = [*(a1 + 32) defaultsManager];
        v15 = [*(a1 + 32) sessionConfiguration];
        v16 = [v15 destination];
        v17 = [v16 clLocation];
        v18 = *(a1 + 48);
        v19 = [*(a1 + 32) distanceCalculator];
        v20 = [*(a1 + 32) queue];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke_2;
        v37[3] = &unk_2788D0AE0;
        v39 = *(a1 + 72);
        v21 = *(a1 + 64);
        v40 = *(a1 + 88);
        v41 = v21;
        v38 = v8;
        [v27 expectedTravelTimeforTransportType:v26 source:v25 defaultsManager:v14 destination:v17 departureDate:v18 distanceCalculator:v19 queue:v20 completionHandler:v37];

LABEL_13:
        v22 = [*(a1 + 32) queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke_3;
        block[3] = &unk_2788D0B08;
        v23 = *(a1 + 64);
        v24 = *(a1 + 32);
        v31 = &v42;
        v32 = v23;
        block[4] = v24;
        v35 = *(a1 + 104);
        v33 = &v46;
        v29 = *(a1 + 48);
        v34 = *(a1 + 72);
        v36 = *(a1 + 96);
        v30 = *(a1 + 56);
        dispatch_group_notify(v8, v22, block);

        _Block_object_dispose(&v42, 8);
        _Block_object_dispose(&v46, 8);
        return;
      }
    }

    else
    {
    }

    dispatch_group_leave(v8);
    goto LABEL_13;
  }

  [*(a1 + 32) _declareAnomalyForTriggerCategory:0];
  v2 = *(*(a1 + 56) + 16);

  v2();
}

void __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a2;
  v10 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a4;
  *(*(*(a1 + 48) + 8) + 24) = a5;
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v16 = v9;

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
  v15 = v10;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      [*(a1 + 32) _declareAnomalyForTriggerCategory:0];
    }

    v2 = *(a1 + 96);
    v3 = [*(a1 + 32) triggerState];
    [v3 setPredominantModeOfTransport:v2];

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) defaultsManager];
    v7 = *(*(*(a1 + 80) + 8) + 24);
    v8 = *(*(*(a1 + 88) + 8) + 24);
    [*(a1 + 32) etaScaleFactor];
    v10 = [v4 upperBoundEtaForDepartureDate:v5 defaultsManager:v6 mapsExpectedTravelTime:v7 crowFliesExpectedTravelTime:v8 etaScaleFactor:v9];

    v11 = [*(a1 + 32) triggerState];
    [v11 setUpperBoundEta:v10];

    v12 = *(*(*(a1 + 80) + 8) + 24);
    v13 = [*(a1 + 32) triggerState];
    [v13 setMapsExpectedTravelTime:v12];

    v14 = *(a1 + 104);
    v15 = [*(a1 + 32) triggerState];
    [v15 setRemainingDistance:v14];

    [*(a1 + 32) _initializeETATimer];
  }

  [*(a1 + 32) _updateCoarseEtaWithMapsExpectedTravelTime:*(*(*(a1 + 80) + 8) + 24) crowFliesExpectedTravelTime:*(*(*(a1 + 88) + 8) + 24)];
  [*(a1 + 32) _persistState];
  v16 = *(*(a1 + 48) + 16);

  return v16();
}

- (void)_persistState
{
  v47[1] = *MEMORY[0x277D85DE8];
  triggerState = [(SMTriggerDestination *)self triggerState];
  dirty = [triggerState dirty];

  if (dirty)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__159;
    v39 = __Block_byref_object_dispose__159;
    v40 = 0;
    v5 = dispatch_semaphore_create(0);
    sessionStore = [(SMTriggerDestination *)self sessionStore];
    triggerState2 = [(SMTriggerDestination *)self triggerState];
    v46 = triggerState2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __37__SMTriggerDestination__persistState__block_invoke;
    v32[3] = &unk_2788C4618;
    v34 = &v35;
    v9 = v5;
    v33 = v9;
    [sessionStore storeTriggerDestinationStates:v8 handler:v32];

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
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_578];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
      firstObject = [v20 firstObject];

      [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
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
        triggerState3 = [(SMTriggerDestination *)self triggerState];
        v29 = v36[5];
        *buf = 136315650;
        *&buf[4] = "[SMTriggerDestination _persistState]";
        v42 = 2112;
        v43 = triggerState3;
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%s, persisted state, %@, error, %@", buf, 0x20u);
      }
    }

    triggerState4 = [(SMTriggerDestination *)self triggerState];
    [triggerState4 setDirty:0];

    _Block_object_dispose(&v35, 8);
  }
}

void __37__SMTriggerDestination__persistState__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_shouldUpdateUpperBoundEtaWithRemainingDistance:(double)distance mapsExpectedTravelTime:(double)time
{
  v53 = *MEMORY[0x277D85DE8];
  if (distance == 1.79769313e308)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v43) = 0;
      v6 = "Invalid parameter not satisfying: remainingDistance != DBL_MAX";
LABEL_7:
      _os_log_error_impl(&dword_2304B3000, &v5->super, OS_LOG_TYPE_ERROR, v6, &v43, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (distance < 0.0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v43) = 0;
      v6 = "Invalid parameter not satisfying: remainingDistance >= 0.0";
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      triggerState = [(SMTriggerDestination *)self triggerState];
      [triggerState remainingDistance];
      v14 = v13;
      triggerState2 = [(SMTriggerDestination *)self triggerState];
      [triggerState2 mapsExpectedTravelTime];
      v43 = 136316162;
      v44 = "[SMTriggerDestination _shouldUpdateUpperBoundEtaWithRemainingDistance:mapsExpectedTravelTime:]";
      v45 = 2048;
      v46 = v14;
      v47 = 2048;
      distanceCopy = distance;
      v49 = 2048;
      v50 = v16;
      v51 = 2048;
      distanceCopy2 = time;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, previous remainingDistance, %.1f, current remainingDistance, %.1f, previous mapsTravelTime, %.1f, current mapsTravelTime, %.1f", &v43, 0x34u);
    }
  }

  triggerState3 = [(SMTriggerDestination *)self triggerState];
  upperBoundEta = [triggerState3 upperBoundEta];

  if (upperBoundEta)
  {
    sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
    destination = [sessionConfiguration destination];
    v21 = [destination eta];
    if (v21)
    {
      v22 = v21;
      sessionConfiguration2 = [(SMTriggerDestination *)self sessionConfiguration];
      destination2 = [sessionConfiguration2 destination];
      v25 = [destination2 eta];
      [v25 additionalTravelTime];
      v27 = v26;

      if (v27 > 0.0)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v7 = 0;
          return v7 & 1;
        }

        v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_INFO))
        {
          v43 = 136315138;
          v44 = "[SMTriggerDestination _shouldUpdateUpperBoundEtaWithRemainingDistance:mapsExpectedTravelTime:]";
          _os_log_impl(&dword_2304B3000, &v5->super, OS_LOG_TYPE_INFO, "%s, NO, user has specified the ETA.", &v43, 0xCu);
        }

        goto LABEL_8;
      }
    }

    else
    {
    }

    triggerState4 = [(SMTriggerDestination *)self triggerState];
    [triggerState4 remainingDistance];
    v30 = v29 - distance;

    triggerState5 = [(SMTriggerDestination *)self triggerState];
    [triggerState5 mapsExpectedTravelTime];
    v33 = v32 - time;

    if (time <= 0.0)
    {
      v36 = 0;
    }

    else
    {
      triggerState6 = [(SMTriggerDestination *)self triggerState];
      [triggerState6 mapsExpectedTravelTime];
      v36 = v33 > 300.0 && v35 > 0.0;
    }

    [(SMTriggerDestination *)self minDistanceUpdateThreshold];
    v7 = v37 >= distance || v30 > 200.0 || v36;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = @"NO";
        if (v7)
        {
          v40 = @"YES";
        }

        else
        {
          v40 = @"NO";
        }

        v43 = 136316162;
        v44 = "[SMTriggerDestination _shouldUpdateUpperBoundEtaWithRemainingDistance:mapsExpectedTravelTime:]";
        v45 = 2112;
        v46 = v40;
        if (v30 <= 200.0)
        {
          v41 = @"NO";
        }

        else
        {
          v41 = @"YES";
        }

        v47 = 2112;
        distanceCopy = *&v41;
        if (v36)
        {
          v39 = @"YES";
        }

        v49 = 2112;
        v50 = v39;
        v51 = 2048;
        distanceCopy2 = distance;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%s, shouldUpdateETA, %@, distance shorter, %@, ETA shorter, %@, remainingDistance, %.2f.", &v43, 0x34u);
      }
    }

    v5 = [[SMSessionTriggerDestinationETAUpdateState alloc] initWithDistanceRemaining:v36 distanceDifference:v30 > 200.0 nominalTravelTimeRemaining:v7 & 1 nominalTravelTimeDifference:distance nominalTravelTimeShorter:v30 remainingDistanceShorter:time shouldUpdateETAUpperBound:v33];
    sessionMetricManager = [(SMTriggerDestination *)self sessionMetricManager];
    [sessionMetricManager onShouldUpdateETAUpperBoundWithETAUpdateState:v5];

    goto LABEL_9;
  }

  v7 = 1;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return v7 & 1;
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_INFO))
  {
    v43 = 136315138;
    v44 = "[SMTriggerDestination _shouldUpdateUpperBoundEtaWithRemainingDistance:mapsExpectedTravelTime:]";
    _os_log_impl(&dword_2304B3000, &v5->super, OS_LOG_TYPE_INFO, "%s, YES, threshold has not set yet.", &v43, 0xCu);
  }

LABEL_9:

  return v7 & 1;
}

- (BOOL)_isExceedingUpperBoundEta:(id)eta mapsExpectedTravelTime:(double)time crowFliesExpectedTravelTime:(double)travelTime
{
  v35 = *MEMORY[0x277D85DE8];
  etaCopy = eta;
  crowFliesUpperBoundEta = [etaCopy crowFliesUpperBoundEta];

  if (crowFliesUpperBoundEta)
  {
    v10 = +[SMDateUtility date];
    mapsUpperBoundEta = [etaCopy mapsUpperBoundEta];

    if (time > 0.0 && mapsUpperBoundEta)
    {
      v12 = [v10 dateByAddingTimeInterval:time];
      mapsUpperBoundEta2 = [etaCopy mapsUpperBoundEta];
      [v12 timeIntervalSinceDate:mapsUpperBoundEta2];
      v15 = v14;
      v16 = v14 > 0.0;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          mapsUpperBoundEta3 = [etaCopy mapsUpperBoundEta];
          stringFromDate = [mapsUpperBoundEta3 stringFromDate];
          stringFromDate2 = [v12 stringFromDate];
          v21 = stringFromDate2;
          v22 = @"NO";
          *v32 = 136316162;
          *&v32[4] = "[SMTriggerDestination _isExceedingUpperBoundEta:mapsExpectedTravelTime:crowFliesExpectedTravelTime:]";
          *&v32[22] = 2048;
          *&v32[12] = 2112;
          *&v32[14] = stringFromDate;
          if (v15 > 0.0)
          {
            v22 = @"YES";
          }

          travelTimeCopy = time;
          *v34 = 2112;
          *&v34[2] = stringFromDate2;
          *&v34[10] = 2112;
          *&v34[12] = v22;
          v23 = "%s, maps upper bound ETA, %@, mapsExpectedTravelTime, %f, newETA, %@, isExceedingUpperBoundEta, %@";
LABEL_17:
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, v23, v32, 0x34u);

          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v12 = [v10 dateByAddingTimeInterval:travelTime];
      crowFliesUpperBoundEta2 = [etaCopy crowFliesUpperBoundEta];
      [v12 timeIntervalSinceDate:crowFliesUpperBoundEta2];
      v26 = v25;
      v16 = v25 > 0.0;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          mapsUpperBoundEta3 = [etaCopy crowFliesUpperBoundEta];
          stringFromDate = [mapsUpperBoundEta3 stringFromDate];
          stringFromDate3 = [v12 stringFromDate];
          v21 = stringFromDate3;
          v28 = @"NO";
          *v32 = 136316162;
          *&v32[4] = "[SMTriggerDestination _isExceedingUpperBoundEta:mapsExpectedTravelTime:crowFliesExpectedTravelTime:]";
          *&v32[22] = 2048;
          *&v32[12] = 2112;
          *&v32[14] = stringFromDate;
          if (v26 > 0.0)
          {
            v28 = @"YES";
          }

          travelTimeCopy = travelTime;
          *v34 = 2112;
          *&v34[2] = stringFromDate3;
          *&v34[10] = 2112;
          *&v34[12] = v28;
          v23 = "%s, crow flies upper bound ETA, %@, crowFliesExpectedTravelTime, %f, newETA, %@, isExceedingUpperBoundEta, %@";
          goto LABEL_17;
        }

LABEL_18:
      }
    }

    v29 = [(SMTriggerDestination *)self sessionMetricManager:*v32];
    mapsUpperBoundEta4 = [etaCopy mapsUpperBoundEta];
    [v12 timeIntervalSinceDate:mapsUpperBoundEta4];
    [v29 updateClosestTimeIntervalToExceedingETAWithTimeInterval:?];

    goto LABEL_20;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v32 = 136315138;
    *&v32[4] = "[SMTriggerDestination _isExceedingUpperBoundEta:mapsExpectedTravelTime:crowFliesExpectedTravelTime:]";
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%s, No initial upper bound ETA to compare with.", v32, 0xCu);
  }

  v16 = 1;
LABEL_20:

  return v16;
}

+ (id)upperBoundEtaForDepartureDate:(id)date defaultsManager:(id)manager mapsExpectedTravelTime:(double)time crowFliesExpectedTravelTime:(double)travelTime etaScaleFactor:(double)factor
{
  v41 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  managerCopy = manager;
  v13 = [managerCopy objectForKey:@"RTDefaultsSMTriggerDestinationMinExpectedTravelDurationThresholdKey" value:&unk_2845A2228];
  [v13 doubleValue];
  v15 = v14;

  if (v15 != 900.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v29 = 136316162;
      v30 = "+[SMTriggerDestination upperBoundEtaForDepartureDate:defaultsManager:mapsExpectedTravelTime:crowFliesExpectedTravelTime:etaScaleFactor:]";
      v31 = 2080;
      v32 = "overriding min expected travel duration threshold";
      v33 = 2048;
      timeCopy = 900.0;
      v35 = 2048;
      travelTimeCopy = v15;
      v37 = 2112;
      v38 = @"RTDefaultsSMTriggerDestinationMinExpectedTravelDurationThresholdKey";
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v29, 0x34u);
    }
  }

  v17 = [managerCopy objectForKey:@"RTDefaultsSMTriggerDestinationMaxExceedTravelDurationThresholdKey" value:&unk_2845A2248];
  [v17 doubleValue];
  v19 = v18;

  if (v19 != 7200.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v29 = 136316162;
      v30 = "+[SMTriggerDestination upperBoundEtaForDepartureDate:defaultsManager:mapsExpectedTravelTime:crowFliesExpectedTravelTime:etaScaleFactor:]";
      v31 = 2080;
      v32 = "overriding max exceed travel duration threshold";
      v33 = 2048;
      timeCopy = 7200.0;
      v35 = 2048;
      travelTimeCopy = v19;
      v37 = 2112;
      v38 = @"RTDefaultsSMTriggerDestinationMaxExceedTravelDurationThresholdKey";
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v29, 0x34u);
    }
  }

  if (time <= 0.0)
  {
    v22 = 0;
  }

  else
  {
    v21 = time * factor;
    if (time * factor < v15)
    {
      v21 = v15;
    }

    if (v21 >= v19 + time)
    {
      v21 = v19 + time;
    }

    v22 = [dateCopy dateByAddingTimeInterval:v21];
  }

  v23 = travelTime * factor;
  if (travelTime * factor < v15)
  {
    v23 = v15;
  }

  if (v23 >= v19 + travelTime)
  {
    v23 = v19 + travelTime;
  }

  v24 = [dateCopy dateByAddingTimeInterval:v23];
  v25 = [objc_alloc(MEMORY[0x277D4AC38]) initWithMapsUpperBoundEta:v22 crowFliesUpperBoundEta:v24];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [dateCopy stringFromDate];
      v29 = 136316418;
      v30 = "+[SMTriggerDestination upperBoundEtaForDepartureDate:defaultsManager:mapsExpectedTravelTime:crowFliesExpectedTravelTime:etaScaleFactor:]";
      v31 = 2112;
      v32 = stringFromDate;
      v33 = 2048;
      timeCopy = time;
      v35 = 2048;
      travelTimeCopy = travelTime;
      v37 = 2048;
      v38 = *&factor;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%s, departureDate, %@, mapsExpectedTravelTime, %.2f, crowFliesExpectedTravelTime, %.2f, etaScaleFactor, %.2f, upperBoundETA, %@", &v29, 0x3Eu);
    }
  }

  return v25;
}

+ (double)crowFliesExpectedTravelTimeForTransportType:(unint64_t)type defaultsManager:(id)manager distance:(double)distance
{
  v27 = *MEMORY[0x277D85DE8];
  [SMTriggerDestination updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:manager];
  v7 = SMTriggerDestinationTransportTypeToAvgSpeed;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v9 = [v7 objectForKey:v8];
  if (v9)
  {
    v10 = v9;
    v11 = SMTriggerDestinationTransportTypeToAvgSpeed;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v13 = [v11 objectForKeyedSubscript:v12];
    [v13 doubleValue];
    v15 = v14;

    if (v15 != 0.0)
    {
      v16 = SMTriggerDestinationTransportTypeToAvgSpeed;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v18 = [v16 objectForKeyedSubscript:v17];
      [v18 doubleValue];
      v20 = distance / v19;

      return v20;
    }
  }

  else
  {
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v23 = 136315394;
    v24 = "+[SMTriggerDestination crowFliesExpectedTravelTimeForTransportType:defaultsManager:distance:]";
    v25 = 2112;
    v26 = SMTriggerDestinationTransportTypeToAvgSpeed;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%s, invalid SMTriggerDestinationTransportTypeToAvgSpeed, %@", &v23, 0x16u);
  }

  return -1.0;
}

- (id)_cachedLocationsDateInterval
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = +[SMDateUtility date];
  triggerState = [(SMTriggerDestination *)self triggerState];
  lastUnlockDate = [triggerState lastUnlockDate];
  triggerState2 = [(SMTriggerDestination *)self triggerState];
  lastLockDate = [triggerState2 lastLockDate];
  [lastUnlockDate timeIntervalSinceDate:lastLockDate];
  if (v8 > 0.0)
  {

    goto LABEL_8;
  }

  triggerState3 = [(SMTriggerDestination *)self triggerState];
  currentStatus = [triggerState3 currentStatus];

  if (currentStatus == 1)
  {
LABEL_8:
    [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
    v14 = [v3 dateByAddingTimeInterval:v26 * -0.5];
    goto LABEL_9;
  }

  [(SMTriggerDestination *)self noProgressTimeoutThreshold];
  v12 = v11;
  [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
  v14 = [v3 dateByAddingTimeInterval:-(v12 + v13)];
  triggerState4 = [(SMTriggerDestination *)self triggerState];
  currentStatusDate = [triggerState4 currentStatusDate];

  if (currentStatusDate)
  {
    triggerState5 = [(SMTriggerDestination *)self triggerState];
    currentStatusDate2 = [triggerState5 currentStatusDate];
    v19 = [currentStatusDate2 laterDate:v14];

    v14 = v19;
  }

  triggerState6 = [(SMTriggerDestination *)self triggerState];
  lastUnlockDate2 = [triggerState6 lastUnlockDate];

  if (lastUnlockDate2)
  {
    triggerState7 = [(SMTriggerDestination *)self triggerState];
    lastUnlockDate3 = [triggerState7 lastUnlockDate];
    v24 = [lastUnlockDate3 dateByAddingTimeInterval:-6.0];
    v25 = [v24 laterDate:v14];

    v14 = v25;
  }

LABEL_9:
  lastUserResponseSafeDate = [(SMTriggerDestination *)self lastUserResponseSafeDate];
  v28 = [lastUserResponseSafeDate dateByAddingTimeInterval:-6.0];
  v29 = [v28 laterDate:v14];

  v30 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v29 endDate:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      triggerState8 = [(SMTriggerDestination *)self triggerState];
      lastLockDate2 = [triggerState8 lastLockDate];
      stringFromDate = [lastLockDate2 stringFromDate];
      triggerState9 = [(SMTriggerDestination *)self triggerState];
      lastUnlockDate4 = [triggerState9 lastUnlockDate];
      stringFromDate2 = [lastUnlockDate4 stringFromDate];
      lastUserResponseSafeDate2 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
      stringFromDate3 = [lastUserResponseSafeDate2 stringFromDate];
      *buf = 136316162;
      v42 = "[SMTriggerDestination _cachedLocationsDateInterval]";
      v43 = 2112;
      v44 = stringFromDate;
      v45 = 2112;
      v46 = stringFromDate2;
      v47 = 2112;
      v48 = stringFromDate3;
      v49 = 2112;
      v50 = v30;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%s, lastLockDate, %@, lastUnlockDate, %@, lastUserResponseDate, %@, dateInterval of interest, %@", buf, 0x34u);
    }
  }

  return v30;
}

- (void)_declareAnomalyForTriggerCategory:(unint64_t)category
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x277D4AC30];
      triggerState = [(SMTriggerDestination *)self triggerState];
      v8 = [v6 statusToString:{objc_msgSend(triggerState, "currentStatus")}];
      v9 = [MEMORY[0x277D4ABC8] triggerCategoryToString:category];
      v13 = 136315650;
      v14 = "[SMTriggerDestination _declareAnomalyForTriggerCategory:]";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, current status, %@, triggerCategory, %@", &v13, 0x20u);
    }
  }

  triggerState2 = [(SMTriggerDestination *)self triggerState];
  currentStatus = [triggerState2 currentStatus];

  if (currentStatus != 3)
  {
    triggerState3 = [(SMTriggerDestination *)self triggerState];
    [triggerState3 setCurrentStatus:3];

    [(SMTriggerDestination *)self _persistState];
    [(SMTriggerDestination *)self setTriggerCategory:category];
    [(SMTriggerDestination *)self postStateChange];
  }
}

- (void)_initializeETATimer
{
  v34 = *MEMORY[0x277D85DE8];
  triggerState = [(SMTriggerDestination *)self triggerState];
  upperBoundEta = [triggerState upperBoundEta];

  if (upperBoundEta)
  {
    [(SMTriggerDestination *)self _tearDownTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.upperBoundETATimerIdentifier"];
    v29 = +[SMDateUtility date];
    triggerState2 = [(SMTriggerDestination *)self triggerState];
    upperBoundEta2 = [triggerState2 upperBoundEta];
    mapsUpperBoundEta = [upperBoundEta2 mapsUpperBoundEta];
    if (mapsUpperBoundEta)
    {
      v8 = mapsUpperBoundEta;
      triggerState3 = [(SMTriggerDestination *)self triggerState];
      upperBoundEta3 = [triggerState3 upperBoundEta];
      mapsUpperBoundEta2 = [upperBoundEta3 mapsUpperBoundEta];
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v13 = [mapsUpperBoundEta2 isEqualToDate:distantPast];

      if ((v13 & 1) == 0)
      {
        triggerState4 = [(SMTriggerDestination *)self triggerState];
        upperBoundEta4 = [triggerState4 upperBoundEta];
        mapsUpperBoundEta3 = [upperBoundEta4 mapsUpperBoundEta];
        v17 = v29;
        goto LABEL_11;
      }
    }

    else
    {
    }

    triggerState5 = [(SMTriggerDestination *)self triggerState];
    upperBoundEta5 = [triggerState5 upperBoundEta];
    crowFliesUpperBoundEta = [upperBoundEta5 crowFliesUpperBoundEta];
    if (!crowFliesUpperBoundEta)
    {

      v17 = v29;
      goto LABEL_16;
    }

    v21 = crowFliesUpperBoundEta;
    triggerState6 = [(SMTriggerDestination *)self triggerState];
    upperBoundEta6 = [triggerState6 upperBoundEta];
    crowFliesUpperBoundEta2 = [upperBoundEta6 crowFliesUpperBoundEta];
    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    v26 = [crowFliesUpperBoundEta2 isEqualToDate:distantPast2];

    v17 = v29;
    if (v26)
    {
LABEL_16:
      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v31 = "[SMTriggerDestination _initializeETATimer]";
        _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%s, Invalid upper bound ETA", buf, 0xCu);
      }

      mapsUpperBoundEta3 = 0;
      goto LABEL_19;
    }

    triggerState4 = [(SMTriggerDestination *)self triggerState];
    upperBoundEta4 = [triggerState4 upperBoundEta];
    mapsUpperBoundEta3 = [upperBoundEta4 crowFliesUpperBoundEta];
LABEL_11:

    if (mapsUpperBoundEta3)
    {
      [mapsUpperBoundEta3 timeIntervalSinceDate:v17];
      [(SMTriggerDestination *)self _initializeTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.upperBoundETATimerIdentifier" fireAfterDelay:?];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_20:

        goto LABEL_21;
      }

      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [mapsUpperBoundEta3 stringFromDate];
        *buf = 136315394;
        v31 = "[SMTriggerDestination _initializeETATimer]";
        v32 = 2112;
        v33 = stringFromDate;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%s, fireDate, %@", buf, 0x16u);
      }

LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v31 = "[SMTriggerDestination _initializeETATimer]";
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%s, No upper bound ETA is set yet", buf, 0xCu);
  }

LABEL_21:
}

- (unint64_t)_predominantMotionActicityTypeFromStartDate:(id)date toEndDate:(id)endDate outError:(id *)error
{
  v62[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v10 = endDateCopy;
  if (!dateCopy)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", v45, 2u);
    }

    if (error)
    {
      v31 = _RTErrorInvalidParameterCreate(@"startDate");
LABEL_16:
      v33 = 0;
      *error = v31;
      goto LABEL_29;
    }

LABEL_17:
    v33 = 0;
    goto LABEL_29;
  }

  if (!endDateCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", v45, 2u);
    }

    if (error)
    {
      v31 = _RTErrorInvalidParameterCreate(@"endDate");
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v11 = dispatch_semaphore_create(0);
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  *v45 = 0;
  v46 = v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__159;
  v49 = __Block_byref_object_dispose__159;
  v50 = 0;
  motionActivityManager = [(SMTriggerDestination *)self motionActivityManager];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __87__SMTriggerDestination__predominantMotionActicityTypeFromStartDate_toEndDate_outError___block_invoke;
  v41[3] = &unk_2788C4528;
  v43 = &v51;
  v44 = v45;
  v13 = v11;
  v42 = v13;
  [motionActivityManager fetchPredominantMotionActivityTypeFromStartDate:dateCopy toEndDate:v10 withHandler:v41];

  v14 = v13;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v14, v16))
  {
    v27 = 0;
LABEL_19:
    v29 = 1;
    goto LABEL_20;
  }

  v40 = [MEMORY[0x277CBEAA8] now];
  [v40 timeIntervalSinceDate:v15];
  v18 = v17;
  v19 = objc_opt_new();
  v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_578];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
  firstObject = [v22 firstObject];

  [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v25 = MEMORY[0x277CCA9B8];
  v62[0] = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v62 count:1];
  v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = v27;

  v29 = 0;
LABEL_20:

  v34 = v27;
  if ((v29 & 1) == 0)
  {
    objc_storeStrong(v46 + 5, v27);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [dateCopy stringFromDate];
      stringFromDate2 = [v10 stringFromDate];
      v38 = [MEMORY[0x277D011B8] motionActivityTypeToString:v52[3]];
      *buf = 136315906;
      *&buf[4] = "[SMTriggerDestination _predominantMotionActicityTypeFromStartDate:toEndDate:outError:]";
      v56 = 2112;
      v57 = stringFromDate;
      v58 = 2112;
      v59 = stringFromDate2;
      v60 = 2112;
      v61 = v38;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%s, start Date, %@, endDate, %@, motionActivityType, %@", buf, 0x2Au);
    }
  }

  if (error)
  {
    *error = *(v46 + 5);
  }

  v33 = v52[3];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v51, 8);

LABEL_29:
  return v33;
}

void __87__SMTriggerDestination__predominantMotionActicityTypeFromStartDate_toEndDate_outError___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (unint64_t)_motionActivityTypeToTransportType:(unint64_t)type distance:(double)distance
{
  v24 = *MEMORY[0x277D85DE8];
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2 && (distance <= 2000.0 || (-[SMTriggerDestination sessionConfiguration](self, "sessionConfiguration"), v6 = objc_claimAutoreleasedReturnValue(), [v6 destination], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "eta"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "transportType"), v8, v7, v6, v9 == 2)))
  {
    transportType = 2;
  }

  else
  {
    sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
    destination = [sessionConfiguration destination];
    v13 = [destination eta];
    transportType = [v13 transportType];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x277D011B8] motionActivityTypeToString:type];
      v16 = [objc_opt_class() convertSMDirectionTransportTypeToString:transportType];
      v18 = 136315650;
      v19 = "[SMTriggerDestination _motionActivityTypeToTransportType:distance:]";
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, motionActivityType, %@, transportType, %@", &v18, 0x20u);
    }
  }

  return transportType;
}

+ (void)checkEligibilityOfDestination:(id)destination locationManager:(id)manager distanceCalculator:(id)calculator queue:(id)queue completionHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__SMTriggerDestination_checkEligibilityOfDestination_locationManager_distanceCalculator_queue_completionHandler___block_invoke;
  v15[3] = &unk_2788D0B58;
  v16 = destinationCopy;
  v17 = handlerCopy;
  v13 = destinationCopy;
  v14 = handlerCopy;
  [SMTriggerDestination calculateDistanceToDestination:v13 locationManager:manager distanceCalculator:calculator queue:queue handler:v15];
}

void __113__SMTriggerDestination_checkEligibilityOfDestination_locationManager_distanceCalculator_queue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Unable to calculate distance, error, %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *MEMORY[0x277D4AEB0];
    if (*MEMORY[0x277D4AEB0] >= a4)
    {
      v20 = a1 + 32;
      v18 = *(a1 + 32);
      v19 = *(v20 + 8);
      if (a4 >= 500.0)
      {
        (*(v19 + 16))(v19, 1, v18, 0);
        goto LABEL_11;
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277D4ACD0];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"destination is too close";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v17 = [v21 errorWithDomain:v22 code:19 userInfo:v16];
      (*(v19 + 16))(v19, 0, v18, v17);
    }

    else
    {
      v13 = a1 + 32;
      v11 = *(a1 + 32);
      v12 = *(v13 + 8);
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D4ACD0];
      v25 = *MEMORY[0x277CCA450];
      v26 = @"destination is too far";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:{1, v10}];
      v17 = [v14 errorWithDomain:v15 code:18 userInfo:v16];
      (*(v12 + 16))(v12, 0, v11, v17);
    }
  }

LABEL_11:
}

+ (void)estimateEtaToDestination:(id)destination transportType:(unint64_t)type locationManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator queue:(id)queue handler:(id)handler
{
  destinationCopy = destination;
  defaultsManagerCopy = defaultsManager;
  calculatorCopy = calculator;
  queueCopy = queue;
  handlerCopy = handler;
  managerCopy = manager;
  v21 = +[SMDateUtility date];
  v22 = objc_opt_class();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __128__SMTriggerDestination_estimateEtaToDestination_transportType_locationManager_defaultsManager_distanceCalculator_queue_handler___block_invoke;
  v29[3] = &unk_2788D0BA8;
  v30 = destinationCopy;
  v31 = defaultsManagerCopy;
  v32 = v21;
  v33 = calculatorCopy;
  v34 = queueCopy;
  v35 = handlerCopy;
  typeCopy = type;
  selfCopy = self;
  v23 = queueCopy;
  v24 = calculatorCopy;
  v25 = v21;
  v26 = defaultsManagerCopy;
  v27 = destinationCopy;
  v28 = handlerCopy;
  [v22 currentLocationWithLocationManager:managerCopy queue:v23 handler:v29];
}

void __128__SMTriggerDestination_estimateEtaToDestination_transportType_locationManager_defaultsManager_distanceCalculator_queue_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = *(a1 + 32);
    v18 = *(a1 + 72);
    v17 = *(a1 + 80);
    v19 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"current location is unavailable";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D4ACD0] code:17 userInfo:v20];
    (*(v18 + 16))(v18, v16, v17, v21, -1.0, -1.0);
  }

  else
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __128__SMTriggerDestination_estimateEtaToDestination_transportType_locationManager_defaultsManager_distanceCalculator_queue_handler___block_invoke_2;
    v22[3] = &unk_2788D0B80;
    v25 = v30;
    v26 = v29;
    v12 = *(a1 + 80);
    v27 = *(a1 + 88);
    v13 = *(a1 + 64);
    v24 = *(a1 + 72);
    v14 = *(a1 + 32);
    v15 = *(a1 + 80);
    v23 = v14;
    v28 = v15;
    [SMTriggerDestination expectedTravelTimeforTransportType:v12 source:v5 defaultsManager:v8 destination:v9 departureDate:v10 distanceCalculator:v11 queue:v13 completionHandler:v22];

    v7 = 0;
    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v30, 8);
  }
}

void __128__SMTriggerDestination_estimateEtaToDestination_transportType_locationManager_defaultsManager_distanceCalculator_queue_handler___block_invoke_2(void *a1, void *a2, void *a3, double a4, double a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4 < 0.0;
  }

  if (v11)
  {
    v12 = a5;
  }

  else
  {
    v12 = a4;
  }

  *(*(a1[6] + 8) + 24) = v12;
  v13 = *MEMORY[0x277D4AC98];
  if (v13 <= 0)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109634;
      v17[1] = v13;
      v18 = 2080;
      v19 = "+[SMTriggerDestination estimateEtaToDestination:transportType:locationManager:defaultsManager:distanceCalculator:queue:handler:]_block_invoke_2";
      v20 = 1024;
      v21 = 1922;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "SMCoarseDateBucketsMinutes should be greater than 0, %d (in %s:%d)", v17, 0x18u);
    }
  }

  [objc_opt_class() roundingUpTimeInterval:v13 bucketDurationMinute:*(*(a1[6] + 8) + 24)];
  *(*(a1[7] + 8) + 24) = v16.n128_u64[0];
  v16.n128_u64[0] = *(*(a1[6] + 8) + 24);
  if (v16.n128_f64[0] < 0.0 || v10 || (v15.n128_u64[0] = *(*(a1[7] + 8) + 24), v15.n128_f64[0] < 0.0))
  {
    v16.n128_u64[0] = -1.0;
    v15.n128_u64[0] = -1.0;
    (*(a1[5] + 16))(v16, v15);
  }

  else
  {
    (*(a1[5] + 16))(v16, v15);
  }
}

+ (void)expectedTravelTimeforTransportType:(unint64_t)type source:(id)source defaultsManager:(id)manager destination:(id)destination departureDate:(id)date distanceCalculator:(id)calculator queue:(id)queue completionHandler:(id)self0
{
  v46 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  managerCopy = manager;
  destinationCopy = destination;
  dateCopy = date;
  queueCopy = queue;
  handlerCopy = handler;
  calculatorCopy = calculator;
  [objc_opt_class() distanceFromLocation:sourceCopy toLocation:destinationCopy withCalculator:calculatorCopy];
  v23 = v22;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [SMTriggerDestination convertSMDirectionTransportTypeToString:type];
      stringFromDate = [dateCopy stringFromDate];
      *buf = 136316419;
      v35 = "+[SMTriggerDestination expectedTravelTimeforTransportType:source:defaultsManager:destination:departureDate:distanceCalculator:queue:completionHandler:]";
      v36 = 2112;
      v37 = v25;
      v38 = 2117;
      v39 = sourceCopy;
      v40 = 2117;
      v41 = destinationCopy;
      v42 = 2112;
      v43 = stringFromDate;
      v44 = 2048;
      v45 = v23;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%s, transportType, %@, source, %{sensitive}@, destination, %{sensitive}@, departureDate, %@, distance, %.3f", buf, 0x3Eu);
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __151__SMTriggerDestination_expectedTravelTimeforTransportType_source_defaultsManager_destination_departureDate_distanceCalculator_queue_completionHandler___block_invoke;
  v29[3] = &unk_2788D0BD0;
  v32 = v23;
  typeCopy = type;
  v30 = managerCopy;
  v31 = handlerCopy;
  v27 = managerCopy;
  v28 = handlerCopy;
  [SMTriggerDestination mapsExpectedTravelTimeforTransportType:type source:sourceCopy destination:destinationCopy departureDate:dateCopy queue:queueCopy handler:v29];
}

void __151__SMTriggerDestination_expectedTravelTimeforTransportType_source_defaultsManager_destination_departureDate_distanceCalculator_queue_completionHandler___block_invoke(uint64_t a1, void *a2, double a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v25 = "+[SMTriggerDestination expectedTravelTimeforTransportType:source:defaultsManager:destination:departureDate:distanceCalculator:queue:completionHandler:]_block_invoke";
      v26 = 2048;
      v27 = a3;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, Maps expectedTravelTime, %.3f, error, %@", buf, 0x20u);
    }
  }

  if (*(a1 + 48) == 1.79769313e308)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v25 = "+[SMTriggerDestination expectedTravelTimeforTransportType:source:defaultsManager:destination:departureDate:distanceCalculator:queue:completionHandler:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, invalid distance = DBL_MAX", buf, 0xCu);
      }
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D4ACD0];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"invalid distance";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v11 = v8;
    v12 = v9;
    v13 = 6;
  }

  else
  {
    [SMTriggerDestination crowFliesExpectedTravelTimeForTransportType:*(a1 + 56) defaultsManager:*(a1 + 32) distance:?];
    v15 = v14;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v25 = "+[SMTriggerDestination expectedTravelTimeforTransportType:source:defaultsManager:destination:departureDate:distanceCalculator:queue:completionHandler:]_block_invoke";
        v26 = 2048;
        v27 = v15;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%s, CrowFlies expectedTravelTime, %.3f", buf, 0x16u);
      }
    }

    if (v15 >= 0.0)
    {
      (*(*(a1 + 40) + 16))(a3, v15);
      goto LABEL_18;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D4ACD0];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"unable to calculate ETA";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v11 = v17;
    v12 = v18;
    v13 = 7;
  }

  v19 = [v11 errorWithDomain:v12 code:v13 userInfo:v10];

  (*(*(a1 + 40) + 16))(a3, -1.0);
LABEL_18:
}

+ (id)statusToString:(unint64_t)string
{
  if (string > 3)
  {
    return @"InvalidStatus";
  }

  else
  {
    return off_2788D0BF0[string];
  }
}

+ (id)convertSMDirectionTransportTypeToString:(unint64_t)string
{
  if (string <= 3)
  {
    if (string == 1)
    {
      return @"SMDirectionsTransportTypeAutomobile";
    }

    if (string == 2)
    {
      return @"SMDirectionsTransportTypeWalking";
    }
  }

  else
  {
    switch(string)
    {
      case 4uLL:
        return @"SMDirectionsTransportTypeTransit";
      case 8uLL:
        return @"SMDirectionsTransportTypeBicycle";
      case 0xFFFFFFFuLL:
        return @"SMDirectionsTransportTypeAny";
    }
  }

  return @"UKNOWN";
}

+ (unint64_t)convertSMDirectionTransportTypeToMKDirectionTransportType:(unint64_t)type
{
  result = type;
  if ((type > 8 || ((1 << type) & 0x116) == 0) && type != 0xFFFFFFF)
  {
    return 0;
  }

  return result;
}

+ (double)distanceFromLocation:(id)location toLocation:(id)toLocation withCalculator:(id)calculator
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D01160];
  calculatorCopy = calculator;
  toLocationCopy = toLocation;
  locationCopy = location;
  v11 = [[v7 alloc] initWithCLLocation:locationCopy];

  v12 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:toLocationCopy];
  v18 = 0;
  [calculatorCopy distanceFromLocation:v11 toLocation:v12 error:&v18];
  v14 = v13;

  v15 = v18;
  if (v15)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v15;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "error calculating distance: %@", buf, 0xCu);
    }
  }

  return v14;
}

- (void)_updateCoarseEtaWithMapsExpectedTravelTime:(double)time crowFliesExpectedTravelTime:(double)travelTime
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = +[SMDateUtility date];
  v8 = v7;
  v9 = MEMORY[0x277CBEAA8];
  if (time > 0.0)
  {
    travelTime = time;
  }

  v10 = [v7 dateByAddingTimeInterval:travelTime];
  v11 = [v9 roundingUpDate:v10 bucketDurationMinute:*MEMORY[0x277D4AC98]];

  v12 = [v8 dateByAddingTimeInterval:travelTime];
  if ([(SMTriggerDestination *)self _shouldUpdateCoarseEta:v11])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        coarseEta = [(SMTriggerDestination *)self coarseEta];
        stringFromDate = [coarseEta stringFromDate];
        stringFromDate2 = [v11 stringFromDate];
        *buf = 136315650;
        v22 = "[SMTriggerDestination _updateCoarseEtaWithMapsExpectedTravelTime:crowFliesExpectedTravelTime:]";
        v23 = 2112;
        v24 = stringFromDate;
        v25 = 2112;
        v26 = stringFromDate2;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, update coarseETA from, %@, to, %@", buf, 0x20u);
      }
    }

    [(SMTriggerDestination *)self setCoarseEta:v11];
    v17 = [SMTriggerEstimatedEndDateUpdateNotification alloc];
    v18 = +[SMDateUtility date];
    v19 = [(SMTriggerEstimatedEndDateUpdateNotification *)v17 initWithTriggerCategory:16 SOSState:1 estimatedEndDate:v12 coarseEstimatedEndDate:v11 triggerName:@"SMTriggerDestination" date:v18 details:MEMORY[0x277CBEC10]];

    sessionMonitorDelegate = [(SMTriggerDestination *)self sessionMonitorDelegate];
    [sessionMonitorDelegate onTriggerNotification:v19];
  }
}

- (BOOL)_shouldUpdateCoarseEta:(id)eta
{
  etaCopy = eta;
  if (!etaCopy)
  {
    goto LABEL_4;
  }

  coarseEta = [(SMTriggerDestination *)self coarseEta];

  if (!coarseEta)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  coarseEta2 = [(SMTriggerDestination *)self coarseEta];
  v7 = [etaCopy isEqualToDate:coarseEta2];

  if ((v7 & 1) == 0)
  {
    sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
    destination = [sessionConfiguration destination];
    v11 = [destination eta];
    [v11 additionalTravelTime];
    v13 = v12;

    if (v13 > 0.0)
    {
      coarseEta3 = [(SMTriggerDestination *)self coarseEta];
      v8 = [coarseEta3 compare:etaCopy] == -1;

      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_8:

  return v8;
}

- (id)lastUserResponseSafeDate
{
  sessionConfiguration = [(SMTriggerDestination *)self sessionConfiguration];
  userResponseSafeDate = [sessionConfiguration userResponseSafeDate];
  v5 = userResponseSafeDate;
  if (userResponseSafeDate)
  {
    sessionStartDate = userResponseSafeDate;
  }

  else
  {
    sessionConfiguration2 = [(SMTriggerDestination *)self sessionConfiguration];
    sessionStartDate = [sessionConfiguration2 sessionStartDate];
  }

  return sessionStartDate;
}

- (SMTriggerManagerProtocol)sessionMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->sessionMonitorDelegate);

  return WeakRetained;
}

@end