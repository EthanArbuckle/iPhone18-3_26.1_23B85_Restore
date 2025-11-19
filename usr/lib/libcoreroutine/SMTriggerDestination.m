@interface SMTriggerDestination
+ (BOOL)validLocation:(id)a3;
+ (double)crowFliesExpectedTravelTimeForTransportType:(unint64_t)a3 defaultsManager:(id)a4 distance:(double)a5;
+ (double)distanceFromLocation:(id)a3 toLocation:(id)a4 withCalculator:(id)a5;
+ (id)convertSMDirectionTransportTypeToString:(unint64_t)a3;
+ (id)locationRequestOptions;
+ (id)statusToString:(unint64_t)a3;
+ (id)upperBoundEtaForDepartureDate:(id)a3 defaultsManager:(id)a4 mapsExpectedTravelTime:(double)a5 crowFliesExpectedTravelTime:(double)a6 etaScaleFactor:(double)a7;
+ (unint64_t)convertSMDirectionTransportTypeToMKDirectionTransportType:(unint64_t)a3;
+ (void)calculateDistanceToDestination:(id)a3 locationManager:(id)a4 distanceCalculator:(id)a5 queue:(id)a6 handler:(id)a7;
+ (void)checkEligibilityOfDestination:(id)a3 locationManager:(id)a4 distanceCalculator:(id)a5 queue:(id)a6 completionHandler:(id)a7;
+ (void)currentLocationWithLocationManager:(id)a3 queue:(id)a4 handler:(id)a5;
+ (void)estimateEtaToDestination:(id)a3 transportType:(unint64_t)a4 locationManager:(id)a5 defaultsManager:(id)a6 distanceCalculator:(id)a7 queue:(id)a8 handler:(id)a9;
+ (void)expectedTravelTimeforTransportType:(unint64_t)a3 source:(id)a4 defaultsManager:(id)a5 destination:(id)a6 departureDate:(id)a7 distanceCalculator:(id)a8 queue:(id)a9 completionHandler:(id)a10;
+ (void)mapsExpectedTravelTimeforTransportType:(unint64_t)a3 source:(id)a4 destination:(id)a5 departureDate:(id)a6 queue:(id)a7 handler:(id)a8;
+ (void)updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:(id)a3;
- (BOOL)_isExceedingUpperBoundEta:(id)a3 mapsExpectedTravelTime:(double)a4 crowFliesExpectedTravelTime:(double)a5;
- (BOOL)_isNoProgressStatus;
- (BOOL)_shouldChangeModeOfTransportStartDate:(id)a3 endDate:(id)a4;
- (BOOL)_shouldUpdateCoarseEta:(id)a3;
- (BOOL)_shouldUpdateUpperBoundEtaWithRemainingDistance:(double)a3 mapsExpectedTravelTime:(double)a4;
- (SMTriggerDestination)initWithQueue:(id)a3 defaultsManager:(id)a4 dataProtectionManager:(id)a5 locationManager:(id)a6 motionActivityManager:(id)a7 distanceCalculator:(id)a8 platform:(id)a9 sessionStore:(id)a10 timerManager:(id)a11 sessionMetricManager:(id)a12;
- (SMTriggerManagerProtocol)sessionMonitorDelegate;
- (id)_cachedLocationsDateInterval;
- (id)_locationAtDate:(id)a3 error:(id *)a4;
- (id)_locationsInDateInterval:(id)a3 horizontalAccuracy:(double)a4 error:(id *)a5;
- (id)lastUserResponseSafeDate;
- (unint64_t)_motionActivityTypeToTransportType:(unint64_t)a3 distance:(double)a4;
- (unint64_t)_predominantMotionActicityTypeFromStartDate:(id)a3 toEndDate:(id)a4 outError:(id *)a5;
- (void)_addObservers;
- (void)_bootstrap;
- (void)_cacheLocations:(id)a3;
- (void)_declareAnomalyForTriggerCategory:(unint64_t)a3;
- (void)_evaluateStatusUsingCurrentLocation:(id)a3;
- (void)_initializeETATimer;
- (void)_initializeTimerWithIdentifier:(id)a3 fireAfterDelay:(double)a4;
- (void)_modifyMonitoringWithConfiguration:(id)a3 handler:(id)a4;
- (void)_onTimerExpiryForTimerIdentifier:(id)a3;
- (void)_onUserTriggerResponse:(int64_t)a3;
- (void)_persistState;
- (void)_postStateChange;
- (void)_processDataProtectionNotification:(id)a3;
- (void)_processLocationNotification:(id)a3;
- (void)_removeObservers;
- (void)_removeTimers;
- (void)_reviseCachedLocations;
- (void)_setup;
- (void)_startMonitoringWithConfiguration:(id)a3 handler:(id)a4;
- (void)_stopMonitoringWithHandler:(id)a3;
- (void)_tearDownTimerWithIdentifier:(id)a3;
- (void)_updateCoarseEtaWithMapsExpectedTravelTime:(double)a3 crowFliesExpectedTravelTime:(double)a4;
- (void)_updateInitiatorStatus;
- (void)_updateInitiatorStatusDestinationBoundWithCompletion:(id)a3;
- (void)_updateInitiatorStatusRoundTrip;
- (void)_updateTimerWithIdentifier:(id)a3 fireAfterDelay:(double)a4;
- (void)modifyMonitoringWithConfiguration:(id)a3 handler:(id)a4;
- (void)onDataProtectionNotification:(id)a3;
- (void)onLocationNotification:(id)a3;
- (void)onUserTriggerResponse:(int64_t)a3;
- (void)postStateChange;
- (void)setup;
- (void)startMonitoringWithConfiguration:(id)a3 handler:(id)a4;
- (void)stopMonitoringWithHandler:(id)a3;
@end

@implementation SMTriggerDestination

- (SMTriggerDestination)initWithQueue:(id)a3 defaultsManager:(id)a4 dataProtectionManager:(id)a5 locationManager:(id)a6 motionActivityManager:(id)a7 distanceCalculator:(id)a8 platform:(id)a9 sessionStore:(id)a10 timerManager:(id)a11 sessionMetricManager:(id)a12
{
  v50 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v38 = a4;
  v18 = a4;
  v39 = a5;
  v43 = a5;
  v40 = a6;
  v19 = a6;
  v41 = a7;
  v20 = a7;
  v42 = a8;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v46 = v17;
  v44 = v25;
  if (!v17)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    v31 = 0;
    v26 = v43;
    goto LABEL_41;
  }

  if (!v18)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v26 = v43;
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

  v26 = v43;
  if (!v43)
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

  if (!v19)
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

  if (!v20)
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

  if (!v21)
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

  if (!v22)
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

  if (!v23)
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

  if (!v24)
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

  if (!v25)
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
    v30 = self;
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
    objc_storeStrong(p_isa + 3, v38);
    objc_storeStrong(p_isa + 4, v39);
    objc_storeStrong(p_isa + 5, v40);
    objc_storeStrong(p_isa + 6, v41);
    objc_storeStrong(p_isa + 7, v42);
    objc_storeStrong(p_isa + 8, a9);
    objc_storeStrong(p_isa + 9, a10);
    objc_storeStrong(p_isa + 12, a11);
    objc_storeStrong(p_isa + 13, a12);
    [p_isa setup];
  }

  v30 = p_isa;
  v31 = v30;
LABEL_42:

  return v31;
}

+ (void)updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:@"RTDefaultsSMTriggerDestinationAverageSpeedAnyKey" value:&unk_2845A21A8];
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

  v8 = [v3 objectForKey:@"RTDefaultsSMTriggerDestinationAverageDrivingSpeedKey" value:&unk_2845A21B8];
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

  v12 = [v3 objectForKey:@"RTDefaultsSMTriggerDestinationAverageWalkingSpeedKey" value:&unk_2845A21C8];
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

  v16 = [v3 objectForKey:@"RTDefaultsSMTriggerDestinationAverageTransitSpeedKey" value:&unk_2845A21D8];
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
  v3 = [(SMTriggerDestination *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SMTriggerDestination_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v6 = [(SMTriggerDestination *)self platform];
  v7 = [v6 internalInstall];

  v8 = [(SMTriggerDestination *)self defaultsManager];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 objectForKey:@"RTDefaultsSMTriggerDestinationScaleFactorInternalKey" value:&unk_2845A21E8];
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
    v14 = [v8 objectForKey:@"RTDefaultsSMTriggerDestinationScaleFactorExternalKey" value:&unk_2845A21E8];
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

  v17 = [(SMTriggerDestination *)self defaultsManager];
  v18 = [v17 objectForKey:@"RTDefaultsSMTriggerDestinationSignificantMoveThresholdKey" value:&unk_2845A21F8];
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

  v22 = [(SMTriggerDestination *)self defaultsManager];
  v23 = [v22 objectForKey:@"RTDefaultsSMTriggerDestinationIdleMaxDistanceThresholdKey" value:&unk_2845A2208];
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

  v27 = [(SMTriggerDestination *)self defaultsManager];
  v28 = [v27 objectForKey:@"RTDefaultsSMTriggerDestinationStatusUpdateTimeIntervalKey" value:&unk_2845A2218];
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

  v32 = [(SMTriggerDestination *)self defaultsManager];
  v33 = [v32 objectForKey:@"RTDefaultsSMTriggerDestinationIdleTimeoutThresholdKey" value:&unk_2845A2228];
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

  v37 = [(SMTriggerDestination *)self defaultsManager];
  v38 = [v37 objectForKey:@"RTDefaultsSMTriggerDestinationNoProgressTimeoutThresholdKey" value:&unk_2845A2228];
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

  v42 = [(SMTriggerDestination *)self defaultsManager];
  v43 = [v42 objectForKey:@"RTDefaultsSMTriggerDestinationMinDistanceThresholdToUpdateEtaKey" value:&unk_2845A2238];
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

  v47 = [(SMTriggerDestination *)self defaultsManager];
  v48 = [v47 objectForKey:@"RTDefaultsSMTriggerDestinationAverageSpeedAnyKey" value:&unk_2845A21A8];
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

  v52 = [(SMTriggerDestination *)self defaultsManager];
  v53 = [v52 objectForKey:@"RTDefaultsSMTriggerDestinationAverageWalkingSpeedKey" value:&unk_2845A21C8];
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

  v57 = [(SMTriggerDestination *)self defaultsManager];
  v58 = [v57 objectForKey:@"RTDefaultsSMTriggerDestinationAverageDrivingSpeedKey" value:&unk_2845A21B8];
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

  v62 = [(SMTriggerDestination *)self defaultsManager];
  v63 = [v62 objectForKey:@"RTDefaultsSMTriggerDestinationAverageTransitSpeedKey" value:&unk_2845A21D8];
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
      v4 = [(SMTriggerDestination *)self sessionConfiguration];
      *buf = 136315395;
      *&buf[4] = "[SMTriggerDestination _bootstrap]";
      *&buf[12] = 2117;
      *&buf[14] = v4;
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
  v6 = [(SMTriggerDestination *)self sessionStore];
  v7 = [(SMTriggerDestination *)self sessionConfiguration];
  v8 = [v7 sessionID];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __34__SMTriggerDestination__bootstrap__block_invoke;
  v44[3] = &unk_2788C4490;
  v46 = buf;
  v47 = &v48;
  v9 = v5;
  v45 = v9;
  [v6 fetchTriggerDestinationStateWithSessionID:v8 handler:v44];

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
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
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
        v31 = [(SMTriggerDestination *)self sessionConfiguration];
        v32 = [v31 sessionID];
        v33 = [v32 UUIDString];
        v34 = v49[5];
        *v54 = 136315650;
        *&v54[4] = "[SMTriggerDestination _bootstrap]";
        v55 = 2112;
        v56 = v33;
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
        v37 = [(SMTriggerDestination *)self sessionConfiguration];
        v38 = [v37 sessionID];
        v39 = [v38 UUIDString];
        *v54 = 136315650;
        *&v54[4] = "[SMTriggerDestination _bootstrap]";
        v55 = 2112;
        v56 = v36;
        v57 = 2112;
        v58 = v39;
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
      v41 = [(SMTriggerDestination *)self sessionConfiguration];
      v42 = [v41 sessionID];
      v43 = [v40 initWithSessionIdentifier:v42];
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

- (void)startMonitoringWithConfiguration:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SMTriggerDestination *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SMTriggerDestination_startMonitoringWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_startMonitoringWithConfiguration:(id)a3 handler:(id)a4
{
  v113[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 sessionType] != 2 && objc_msgSend(v6, "sessionType") != 3)
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
      v107 = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@", buf, 0x16u);
    }
  }

  if (v7)
  {
    v10 = +[SMDateUtility date];
    v11 = [(SMTriggerDestination *)self sessionConfiguration];
    v12 = [v11 sessionStartDate];
    [v10 timeIntervalSinceDate:v12];
    v14 = v13;

    if (v14 < 0.0)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v89 = [(SMTriggerDestination *)self sessionConfiguration];
        v90 = [v89 sessionStartDate];
        v91 = [v90 stringFromDate];
        v92 = [v10 stringFromDate];
        *buf = 136315650;
        v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
        v106 = 2112;
        v107 = v91;
        v108 = 2112;
        v109 = v92;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%s, sessionStartDate, %@, larger than currentDate, %@", buf, 0x20u);
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v112 = *MEMORY[0x277CCA450];
      v113[0] = @"sessionStartDate is larger than currentDate";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:&v112 count:1];
      v19 = [v16 errorWithDomain:v17 code:7 userInfo:v18];

      v7[2](v7, v19);
LABEL_50:

      goto LABEL_51;
    }

    [(SMTriggerDestination *)self _setup];
    [(SMTriggerDestination *)self setSessionConfiguration:v6];
    [(SMTriggerDestination *)self setOriginLocation:0];
    [(SMTriggerDestination *)self _bootstrap];
    v20 = [(SMTriggerDestination *)self triggerState];
    v21 = [v20 upperBoundEta];
    v100 = v10;
    if (v21)
    {
      v22 = v21;
      goto LABEL_25;
    }

    v22 = [(SMTriggerDestination *)self sessionConfiguration];
    v23 = [v22 destination];
    v24 = [v23 eta];
    if (v24)
    {
      v25 = v24;
      v26 = [(SMTriggerDestination *)self sessionConfiguration];
      v27 = [v26 destination];
      v28 = [v27 eta];
      [v28 additionalTravelTime];
      v30 = v29;

      v10 = v100;
      if (v30 <= 0.0)
      {
        goto LABEL_26;
      }

      v31 = [(SMTriggerDestination *)self sessionConfiguration];
      v32 = [v31 destination];
      v33 = [v32 eta];
      [v33 expectedTravelTime];
      v35 = v34;
      v36 = [(SMTriggerDestination *)self sessionConfiguration];
      v37 = [v36 destination];
      v38 = [v37 eta];
      [v38 additionalTravelTime];
      v40 = v35 + v39;

      v10 = v100;
      v41 = objc_opt_class();
      v42 = [(SMTriggerDestination *)self defaultsManager];
      [(SMTriggerDestination *)self etaScaleFactor];
      v20 = [v41 upperBoundEtaForDepartureDate:v100 defaultsManager:v42 mapsExpectedTravelTime:v40 crowFliesExpectedTravelTime:v40 etaScaleFactor:v43];

      v44 = [(SMTriggerDestination *)self triggerState];
      [v44 setUpperBoundEta:v20];

      [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
      v22 = [v100 dateByAddingTimeInterval:?];
      v45 = [(SMTriggerDestination *)self triggerState];
      [v45 setTimeToUpdateStatus:v22];

      [(SMTriggerDestination *)self _updateCoarseEtaWithMapsExpectedTravelTime:v40 crowFliesExpectedTravelTime:v40];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_25:

LABEL_26:
        [(SMTriggerDestination *)self _persistState];
        v50 = [(SMTriggerDestination *)self sessionConfiguration];
        v51 = [v50 destination];
        v52 = [v51 eta];
        if (v52)
        {
          v53 = v52;
          v54 = [(SMTriggerDestination *)self sessionConfiguration];
          v55 = [v54 destination];
          v56 = [v55 eta];
          v57 = [v56 transportType];

          v10 = v100;
          if (v57 != 4)
          {
            goto LABEL_33;
          }

          v58 = [(SMTriggerDestination *)self triggerState];
          [v58 setPredominantModeOfTransport:4];

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
            _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%s, user specified transport mode is transit", buf, 0xCu);
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
        v61 = [(SMTriggerDestination *)self locationManager];
        v62 = [(SMTriggerDestination *)self queue];
        [v60 currentLocationWithLocationManager:v61 queue:v62 handler:&__block_literal_global_133];

        v19 = [(SMTriggerDestination *)self _cachedLocationsDateInterval];
        v101 = 0;
        v63 = [(SMTriggerDestination *)self _locationsInDateInterval:v19 horizontalAccuracy:&v101 error:200.0];
        v64 = v101;
        if (v64)
        {
          v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v93 = [v19 startDate];
            v94 = [v93 stringFromDate];
            v95 = [v19 endDate];
            v96 = [v95 stringFromDate];
            *buf = 136315650;
            v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
            v106 = 2112;
            v107 = v94;
            v108 = 2112;
            v109 = v96;
            _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "%s, unable to fetch locations for startDate, %@, endDate, %@", buf, 0x20u);

            v10 = v100;
          }

          v66 = MEMORY[0x277CCA9B8];
          v67 = *MEMORY[0x277D01448];
          v102 = *MEMORY[0x277CCA450];
          v103 = @"unable to fetch locations";
          v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v69 = [v66 errorWithDomain:v67 code:6 userInfo:v68];

          v7[2](v7, v69);
        }

        else
        {
          [(SMTriggerDestination *)self _cacheLocations:v63];
          [(SMTriggerDestination *)self _addObservers];
          v70 = [(SMTriggerDestination *)self triggerState];
          v71 = [v70 timeToUpdateStatus];

          if (!v71)
          {
            v72 = [v10 dateByAddingTimeInterval:1.0];
            v73 = [(SMTriggerDestination *)self triggerState];
            [v73 setTimeToUpdateStatus:v72];
          }

          v74 = [(SMTriggerDestination *)self triggerState];
          v75 = [v74 timeToUpdateStatus];
          [v75 timeIntervalSinceDate:v10];
          v77 = v76;

          [(SMTriggerDestination *)self _initializeTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.statusUpdateTimerIdentifier" fireAfterDelay:v77];
          if ([v6 sessionType] == 3)
          {
            v78 = [(SMTriggerDestination *)self triggerState];
            v79 = [v78 roundTripReminderDate];
            v80 = [MEMORY[0x277CBEAA8] distantPast];
            v81 = [v79 isEqualToDate:v80];

            if (v81)
            {
              v82 = 5400.0;
              v10 = v100;
            }

            else
            {
              v83 = [(SMTriggerDestination *)self triggerState];
              v84 = [v83 roundTripReminderDate];
              v10 = v100;
              [v84 timeIntervalSinceDate:v100];
              v86 = v85;

              v82 = fmax(v86, 1.0);
            }

            v87 = [v10 dateByAddingTimeInterval:v82];
            v88 = [(SMTriggerDestination *)self triggerState];
            [v88 setRoundTripReminderDate:v87];

            [(SMTriggerDestination *)self _initializeTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.roundTripReminderTimerIdentifier" fireAfterDelay:v82];
          }

          [(SMTriggerDestination *)self _persistState];
          v7[2](v7, 0);
        }

        goto LABEL_50;
      }

      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v99 = [(SMTriggerDestination *)self sessionConfiguration];
        v46 = [v99 destination];
        v98 = [(SMTriggerDestination *)self triggerState];
        v47 = [v98 upperBoundEta];
        v48 = [(SMTriggerDestination *)self triggerState];
        v49 = [v48 timeToUpdateStatus];
        v97 = [v49 stringFromDate];
        *buf = 136315906;
        v105 = "[SMTriggerDestination _startMonitoringWithConfiguration:handler:]";
        v106 = 2112;
        v107 = v46;
        v108 = 2112;
        v109 = v47;
        v110 = 2112;
        v111 = v97;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%s, user-specified eta, %@, upperBoundETA, %@, timeToUpdateStatus, %@", buf, 0x2Au);

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

- (void)modifyMonitoringWithConfiguration:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SMTriggerDestination *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SMTriggerDestination_modifyMonitoringWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_modifyMonitoringWithConfiguration:(id)a3 handler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 sessionType] != 2 && objc_msgSend(v6, "sessionType") != 3)
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
      v32 = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@", &v29, 0x16u);
    }
  }

  v10 = [(SMTriggerDestination *)self sessionConfiguration];
  v11 = [v10 isEqual:v6];

  if (!v11)
  {
    v13 = [(SMTriggerDestination *)self sessionConfiguration];
    v14 = [v13 sessionID];
    v15 = [v6 sessionID];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      v12 = [(SMTriggerDestination *)self triggerState];
      [(SMTriggerDestination *)self _stopMonitoringWithHandler:v7];
      v17 = objc_alloc(MEMORY[0x277D4AC30]);
      v18 = [v6 sessionID];
      v19 = [v17 initWithSessionIdentifier:v18];
      [(SMTriggerDestination *)self setTriggerState:v19];

      v20 = [v12 lastLockDate];
      v21 = [(SMTriggerDestination *)self triggerState];
      [v21 setLastLockDate:v20];

      v22 = [v12 lastUnlockDate];
      v23 = [(SMTriggerDestination *)self triggerState];
      [v23 setLastUnlockDate:v22];

      v24 = [v12 predominantModeOfTransport];
      v25 = [(SMTriggerDestination *)self triggerState];
      [v25 setPredominantModeOfTransport:v24];

      [(SMTriggerDestination *)self _persistState];
      [(SMTriggerDestination *)self setOriginLocation:0];
      [(SMTriggerDestination *)self _startMonitoringWithConfiguration:v6 handler:v7];
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v26 = [(SMTriggerDestination *)self sessionConfiguration];
        v27 = [v26 sessionID];
        v28 = [v6 sessionID];
        v29 = 136315650;
        v30 = "[SMTriggerDestination _modifyMonitoringWithConfiguration:handler:]";
        v31 = 2112;
        v32 = v27;
        v33 = 2112;
        v34 = v28;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, Configuration modified for wrong session, current config sessionID, %@, modified config sessionID, %@", &v29, 0x20u);
      }
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v29 = 136315138;
      v30 = "[SMTriggerDestination _modifyMonitoringWithConfiguration:handler:]";
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, Configuration did not change", &v29, 0xCu);
    }

LABEL_16:
  }

LABEL_17:
}

- (void)stopMonitoringWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(SMTriggerDestination *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SMTriggerDestination_stopMonitoringWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_stopMonitoringWithHandler:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v6 = [(SMTriggerDestination *)self cachedLocationEvents];
  [v6 removeAllObjects];

  [(SMTriggerDestination *)self setTriggerState:0];
  [(SMTriggerDestination *)self setOriginLocation:0];
  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)onUserTriggerResponse:(int64_t)a3
{
  v5 = [(SMTriggerDestination *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SMTriggerDestination_onUserTriggerResponse___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)_onUserTriggerResponse:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277D4ABC8] userTriggerResponseToString:a3];
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
  v3 = [(SMTriggerDestination *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SMTriggerDestination_postStateChange__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v6 = [(SMTriggerDestination *)self triggerCategory];
  v7 = +[SMDateUtility date];
  v8 = [(SMTriggerNotification *)v5 initWithTriggerCategory:v6 SOSState:1 triggerName:@"SMTriggerDestination" date:v7 details:MEMORY[0x277CBEC10]];

  v9 = [(SMTriggerDestination *)self sessionMonitorDelegate];
  [v9 onTriggerNotification:v8];
}

- (void)onLocationNotification:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__SMTriggerDestination_onLocationNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = self;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(SMTriggerDestination *)self queue:v8];
  dispatch_async(v7, v6);
}

- (void)_processLocationNotification:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v6 = [v4 leechedLocations];
    [(SMTriggerDestination *)self _cacheLocations:v6];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [notification isKindOfClass:[RTLocationManagerNotificationLocationsLeeched class]]", &v7, 2u);
    }
  }
}

- (void)onDataProtectionNotification:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__SMTriggerDestination_onDataProtectionNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = self;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(SMTriggerDestination *)self queue:v8];
  dispatch_async(v7, v6);
}

- (void)_processDataProtectionNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 availability];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [RTDataProtectionManager encryptedDataAvailabilityToString:v5];
        v12 = 136315394;
        v13 = "[SMTriggerDestination _processDataProtectionNotification:]";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, Received keybag notification, %@", &v12, 0x16u);
      }
    }

    if (v5 == 1)
    {
      v8 = +[SMDateUtility date];
      v9 = [(SMTriggerDestination *)self triggerState];
      [v9 setLastLockDate:v8];
    }

    else
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
LABEL_14:
        [(SMTriggerDestination *)self _persistState];
        goto LABEL_15;
      }

      v8 = +[SMDateUtility date];
      v9 = [(SMTriggerDestination *)self triggerState];
      [v9 setLastUnlockDate:v8];
    }

    goto LABEL_14;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v4 name];
    v12 = 136315394;
    v13 = "[SMTriggerDestination _processDataProtectionNotification:]";
    v14 = 2112;
    v15 = v11;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%s, unknown notification name, %@", &v12, 0x16u);
  }

LABEL_15:
}

- (void)_initializeTimerWithIdentifier:(id)a3 fireAfterDelay:(double)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v25 = "[SMTriggerDestination _initializeTimerWithIdentifier:fireAfterDelay:]";
      v26 = 2112;
      v27 = v6;
      v28 = 2048;
      v29 = a4;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, timerIdentifier, %@, delay, %.1f", buf, 0x20u);
    }
  }

  objc_initWeak(&location, self);
  v8 = +[SMDateUtility date];
  timerManager = self->_timerManager;
  v10 = [(SMTriggerDestination *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__SMTriggerDestination__initializeTimerWithIdentifier_fireAfterDelay___block_invoke;
  v19[3] = &unk_2788CF4E8;
  v11 = v6;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  objc_copyWeak(&v22, &location);
  v13 = [(RTTimerManager *)timerManager xpcTimerAlarmWithIdentifier:v11 queue:v10 handler:v19];

  v14 = [(SMTriggerDestination *)self timerIdentifierToTimers];
  [v14 setObject:v13 forKey:v11];

  v15 = [v12 dateByAddingTimeInterval:a4];
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

- (void)_updateTimerWithIdentifier:(id)a3 fireAfterDelay:(double)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "[SMTriggerDestination _updateTimerWithIdentifier:fireAfterDelay:]";
      v10 = 2112;
      v11 = v6;
      v12 = 2048;
      v13 = a4;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, timerIdentifier, %@, delay, %.2f", &v8, 0x20u);
    }
  }

  [(SMTriggerDestination *)self _tearDownTimerWithIdentifier:v6];
  [(SMTriggerDestination *)self _initializeTimerWithIdentifier:v6 fireAfterDelay:a4];
}

- (void)_onTimerExpiryForTimerIdentifier:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v24 = 136315394;
      v25 = "[SMTriggerDestination _onTimerExpiryForTimerIdentifier:]";
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@", &v24, 0x16u);
    }
  }

  if (v4 == @"com.apple.routined.SMTriggerDestination.statusUpdateTimerIdentifier" || v4 == @"com.apple.routined.SMTriggerDestination.upperBoundETATimerIdentifier")
  {
    [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
    [(SMTriggerDestination *)self _updateTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.statusUpdateTimerIdentifier" fireAfterDelay:?];
    v17 = +[SMDateUtility date];
    [(SMTriggerDestination *)self destinationStatusUpdateTimeInterval];
    v18 = [v17 dateByAddingTimeInterval:?];

    v19 = [(SMTriggerDestination *)self triggerState];
    [v19 setTimeToUpdateStatus:v18];

    [(SMTriggerDestination *)self _persistState];
    [(SMTriggerDestination *)self _updateInitiatorStatus];
  }

  else
  {
    if (v4 == @"com.apple.routined.SMTriggerDestination.roundTripReminderTimerIdentifier")
    {
      v6 = [(SMTriggerDestination *)self triggerState];
      v7 = [v6 lastUnlockDate];
      v8 = [(SMTriggerDestination *)self triggerState];
      v9 = [v8 roundTripReminderDate];
      v10 = [v9 dateByAddingTimeInterval:-5400.0];
      v11 = [v7 laterDate:v10];

      v12 = [v11 dateByAddingTimeInterval:5400.0];
      v13 = [(SMTriggerDestination *)self triggerState];
      v14 = [v13 roundTripReminderDate];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;

      if (v16 < 0.0)
      {
        v20 = +[SMDateUtility date];
        [v12 timeIntervalSinceDate:v20];
        v22 = v21;
        v23 = [(SMTriggerDestination *)self triggerState];
        [v23 setRoundTripReminderDate:v12];

        [(SMTriggerDestination *)self _persistState];
        [(SMTriggerDestination *)self _updateTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.roundTripReminderTimerIdentifier" fireAfterDelay:v22];

        goto LABEL_12;
      }

      [(SMTriggerDestination *)self _persistState];
      [(SMTriggerDestination *)self _declareAnomalyForTriggerCategory:9];
      [(SMTriggerDestination *)self _tearDownTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.statusUpdateTimerIdentifier"];
    }

    [(SMTriggerDestination *)self _tearDownTimerWithIdentifier:v4];
  }

LABEL_12:
}

- (void)_tearDownTimerWithIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[SMTriggerDestination _tearDownTimerWithIdentifier:]";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@", &v11, 0x16u);
    }
  }

  v6 = [(SMTriggerDestination *)self timerIdentifierToTimers];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [(SMTriggerDestination *)self timerIdentifierToTimers];
    v9 = [v8 objectForKey:v4];
    [v9 invalidate];

    v10 = [(SMTriggerDestination *)self timerIdentifierToTimers];
    [v10 removeObjectForKey:v4];
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
  v4 = [(SMTriggerDestination *)self timerIdentifierToTimers];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(SMTriggerDestination *)self timerIdentifierToTimers];
        v12 = [v11 objectForKeyedSubscript:v10];
        [v12 invalidate];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = [(SMTriggerDestination *)self timerIdentifierToTimers];
  [v13 removeAllObjects];

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

  v4 = [(SMTriggerDestination *)self locationManager];
  v5 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [v4 addObserver:self selector:sel_onLocationNotification_ name:v5];

  v6 = [(SMTriggerDestination *)self dataProtectionManager];
  v7 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
  [v6 addObserver:self selector:sel_onDataProtectionNotification_ name:v7];
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

  v4 = [(SMTriggerDestination *)self locationManager];
  [v4 removeObserver:self];

  v5 = [(SMTriggerDestination *)self dataProtectionManager];
  [v5 removeObserver:self];
}

+ (void)mapsExpectedTravelTimeforTransportType:(unint64_t)a3 source:(id)a4 destination:(id)a5 departureDate:(id)a6 queue:(id)a7 handler:(id)a8
{
  v62 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v40 = a6;
  v15 = a7;
  v16 = a8;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v13 coordinateToString];
      v19 = [v14 coordinateToString];
      v20 = [objc_opt_class() convertSMDirectionTransportTypeToString:a3];
      *buf = 136315907;
      v55 = "+[SMTriggerDestination mapsExpectedTravelTimeforTransportType:source:destination:departureDate:queue:handler:]";
      v56 = 2117;
      v57 = v18;
      v58 = 2117;
      v59 = v19;
      v60 = 2112;
      v61 = v20;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%s, source, %{sensitive}@, destination, %{sensitive}@, transportType, %@.", buf, 0x2Au);
    }
  }

  v39 = objc_alloc_init(RTDefaultsManager);
  v21 = [(RTDefaultsManager *)v39 objectForKey:@"RTDefaultsSMTriggerDestinationForceCrowFliesKey"];
  v22 = [v21 BOOLValue];

  if (v22)
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
    v51 = v16;
    v28 = v27;
    dispatch_async(v15, block);
  }

  v29 = objc_opt_new();
  v30 = [objc_alloc(MEMORY[0x277CD4F00]) initWithLocation:v13 addressDictionary:0 region:0 areasOfInterest:0];
  v31 = [objc_alloc(MEMORY[0x277CD4F00]) initWithLocation:v14 addressDictionary:0 region:0 areasOfInterest:0];
  v32 = [objc_alloc(MEMORY[0x277CD4E80]) initWithPlacemark:v30];
  [v29 setSource:v32];

  v33 = [objc_alloc(MEMORY[0x277CD4E80]) initWithPlacemark:v31];
  [v29 setDestination:v33];

  [v29 setTransportType:{+[SMTriggerDestination convertSMDirectionTransportTypeToMKDirectionTransportType:](SMTriggerDestination, "convertSMDirectionTransportTypeToMKDirectionTransportType:", a3)}];
  [v29 setDepartureDate:v40];
  v34 = [objc_alloc(MEMORY[0x277CD4DC0]) initWithRequest:v29];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __110__SMTriggerDestination_mapsExpectedTravelTimeforTransportType_source_destination_departureDate_queue_handler___block_invoke_2;
  v42[3] = &unk_2788D0A48;
  v43 = v15;
  v44 = v13;
  v47 = a1;
  v48 = a3;
  v45 = v14;
  v46 = v16;
  v35 = v16;
  v36 = v14;
  v37 = v13;
  v38 = v15;
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

- (id)_locationsInDateInterval:(id)a3 horizontalAccuracy:(double)a4 error:(id *)a5
{
  v59[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
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
    v35 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v8 horizontalAccuracy:1800 batchSize:0 boundingBoxLocation:a4];
    v10 = [(SMTriggerDestination *)self locationManager];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __74__SMTriggerDestination__locationsInDateInterval_horizontalAccuracy_error___block_invoke;
    v36[3] = &unk_2788C4490;
    v38 = v46;
    v39 = &v40;
    v11 = v9;
    v37 = v11;
    [v10 fetchStoredLocationsWithOptions:v35 handler:v36];

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
            v54 = v8;
            v55 = 2048;
            v56 = a4;
            v57 = 2048;
            v58 = v33;
            _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%s, dateInterval, %@, horizontalAccuracy, %f, locations, %lu", buf, 0x2Au);
          }
        }

        if (a5)
        {
          *a5 = *(v47 + 5);
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

  if (a5)
  {
    _RTErrorInvalidParameterCreate(@"dateInterval");
    *a5 = v30 = 0;
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

- (id)_locationAtDate:(id)a3 error:(id *)a4
{
  v53[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 stringFromDate];
        *buf = 136315394;
        *&buf[4] = "[SMTriggerDestination _locationAtDate:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v8;
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
    v10 = [(SMTriggerDestination *)self locationManager];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __46__SMTriggerDestination__locationAtDate_error___block_invoke;
    v36[3] = &unk_2788C8390;
    v38 = buf;
    v39 = &v40;
    v11 = v9;
    v37 = v11;
    [v10 fetchEstimatedLocationAtDate:v6 options:0 handler:v36];

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
      v20 = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [v20 filteredArrayUsingPredicate:v19];
      v22 = [v21 firstObject];

      [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
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
            v34 = [v6 stringFromDate];
            v35 = *(*&buf[8] + 40);
            *v46 = 138412546;
            *&v46[4] = v34;
            v47 = 2112;
            v48 = v35;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Unable to fetch location at date, %@, error, %@", v46, 0x16u);
          }
        }

        if (a4)
        {
          *a4 = *(*&buf[8] + 40);
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

  if (a4)
  {
    _RTErrorInvalidParameterCreate(@"date");
    *a4 = v30 = 0;
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

- (void)_cacheLocations:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
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
          v9 = [(SMTriggerDestination *)self originLocation];

          if (!v9)
          {
            [(SMTriggerDestination *)self setOriginLocation:v8];
          }

          [(SMTriggerDestination *)self _evaluateStatusUsingCurrentLocation:v8];
          v10 = objc_opt_class();
          v11 = [(SMTriggerDestination *)self sessionConfiguration];
          v12 = [v11 destination];
          v13 = [v12 clLocation];
          v14 = [(SMTriggerDestination *)self distanceCalculator];
          [v10 distanceFromLocation:v8 toLocation:v13 withCalculator:v14];
          v16 = v15;

          v17 = [[SMLocationEvent alloc] initWithLocation:v8 distance:v16];
          v18 = [(SMTriggerDestination *)self cachedLocationEvents];
          [v18 addObject:v17];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v19 = [(SMTriggerDestination *)self sessionMetricManager];
  v20 = [(SMTriggerDestination *)self cachedLocationEvents];
  v21 = [v20 lastObject];
  [v21 distance];
  [v19 cacheMostRecentLocationDistance:?];
}

- (void)_reviseCachedLocations
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = [(SMTriggerDestination *)self cachedLocationEvents];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_185_0];
  v5 = [v4 mutableCopy];
  [(SMTriggerDestination *)self setCachedLocationEvents:v5];

  v6 = [(SMTriggerDestination *)self _cachedLocationsDateInterval];
  v7 = [(SMTriggerDestination *)self cachedLocationEvents];
  if ([v7 count])
  {
    v47 = objc_alloc(MEMORY[0x277CCA970]);
    v45 = [(SMTriggerDestination *)self cachedLocationEvents];
    v8 = [v45 firstObject];
    v9 = [v8 location];
    v10 = [v9 timestamp];
    v11 = [(SMTriggerDestination *)self cachedLocationEvents];
    v12 = [v11 lastObject];
    v13 = [v12 location];
    v14 = [v13 timestamp];
    v48 = [v47 initWithStartDate:v10 endDate:v14];
  }

  else
  {
    v48 = 0;
  }

  while (1)
  {
    v15 = [(SMTriggerDestination *)self cachedLocationEvents];
    if (![v15 count])
    {
      break;
    }

    v16 = [(SMTriggerDestination *)self cachedLocationEvents];
    v17 = [v16 firstObject];
    v18 = [v17 location];
    v19 = [v18 timestamp];
    v20 = [v6 startDate];
    [v19 timeIntervalSinceDate:v20];
    v22 = v21;

    if (v22 >= 0.0)
    {
      goto LABEL_9;
    }

    v23 = [(SMTriggerDestination *)self cachedLocationEvents];
    [v23 removeObjectAtIndex:0];
  }

LABEL_9:
  while (1)
  {
    v24 = [(SMTriggerDestination *)self cachedLocationEvents];
    if (![v24 count])
    {
      break;
    }

    v25 = [(SMTriggerDestination *)self cachedLocationEvents];
    v26 = [v25 lastObject];
    v27 = [v26 location];
    v28 = [v27 timestamp];
    v29 = [v6 endDate];
    [v28 timeIntervalSinceDate:v29];
    v31 = v30;

    if (v31 <= 0.0)
    {
      goto LABEL_13;
    }

    v32 = [(SMTriggerDestination *)self cachedLocationEvents];
    v33 = [(SMTriggerDestination *)self cachedLocationEvents];
    [v32 removeObjectAtIndex:{objc_msgSend(v33, "count") - 1}];
  }

LABEL_13:
  v34 = [(SMTriggerDestination *)self cachedLocationEvents];
  if ([v34 count])
  {
    v35 = objc_alloc(MEMORY[0x277CCA970]);
    v46 = [(SMTriggerDestination *)self cachedLocationEvents];
    v36 = [v46 firstObject];
    v37 = [v36 location];
    v38 = [v37 timestamp];
    v39 = [(SMTriggerDestination *)self cachedLocationEvents];
    v40 = [v39 lastObject];
    v41 = [v40 location];
    v42 = [v41 timestamp];
    v43 = [v35 initWithStartDate:v38 endDate:v42];
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
      v54 = v6;
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

- (void)_evaluateStatusUsingCurrentLocation:(id)a3
{
  v18 = a3;
  v4 = [(SMTriggerDestination *)self triggerState];
  v5 = [v4 currentStatus];

  if (v5 == 1)
  {
    v6 = objc_opt_class();
    v7 = [(SMTriggerDestination *)self originLocation];
    v8 = [(SMTriggerDestination *)self distanceCalculator];
    [v6 distanceFromLocation:v7 toLocation:v18 withCalculator:v8];
    v10 = v9;

    if (v10 != 1.79769313e308)
    {
      [(SMTriggerDestination *)self idleMaxDistanceThreshold];
      v12 = v11;
      v13 = [(SMTriggerDestination *)self originLocation];
      [v13 horizontalAccuracy];
      v15 = v14;

      [v18 horizontalAccuracy];
      if (v15 >= v16)
      {
        v16 = v15;
      }

      if (v10 > v12 + v16)
      {
        v17 = [(SMTriggerDestination *)self triggerState];
        [v17 setCurrentStatus:2];

        [(SMTriggerDestination *)self _persistState];
      }
    }
  }
}

+ (BOOL)validLocation:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 horizontalAccuracy], v5 >= 0.0))
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
  v4 = [(SMTriggerDestination *)self triggerState];
  v5 = [v4 currentStatus];

  if (v5 == 1)
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
      v8 = [(SMTriggerDestination *)self cachedLocationEvents];
      v9 = [v8 lastObject];
      v10 = [v9 location];
      *buf = 136315651;
      v113 = "[SMTriggerDestination _isNoProgressStatus]";
      v114 = 2117;
      v115 = v7;
      v116 = 2117;
      v117 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, NO, has not transitioned from idle status yet, origin location, %{sensitive}@, last location, %{sensitive}@", buf, 0x20u);

LABEL_5:
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  v12 = [(SMTriggerDestination *)self cachedLocationEvents];
  v13 = [v12 count];

  if (!v13)
  {
    v30 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
    [v3 timeIntervalSinceDate:v30];
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
        v56 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
        [v56 stringFromDate];
        v57 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v58 = [v3 stringFromDate];
        v59 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
        [v3 timeIntervalSinceDate:v59];
        *buf = 136315906;
        v113 = "[SMTriggerDestination _isNoProgressStatus]";
        v114 = 2112;
        v115 = v57;
        v116 = 2112;
        v117 = v58;
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

      v38 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
      [v38 stringFromDate];
      v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v39 = [v3 stringFromDate];
      v40 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
      [v3 timeIntervalSinceDate:v40];
      *buf = 136315906;
      v113 = "[SMTriggerDestination _isNoProgressStatus]";
      v114 = 2112;
      v115 = v7;
      v116 = 2112;
      v117 = v39;
      v118 = 2048;
      v119 = v41;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, NO, empty cached locations, lastUserResponseSafeDate, %@, now, %@, timeInterval, %f", buf, 0x2Au);

      goto LABEL_5;
    }

LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v14 = [(SMTriggerDestination *)self cachedLocationEvents];
  v15 = [v14 lastObject];
  v16 = [v15 location];
  v17 = [v16 timestamp];
  [v3 timeIntervalSinceDate:v17];
  v19 = v18;
  [(SMTriggerDestination *)self noProgressTimeoutThreshold];
  v21 = v20;

  if (v19 <= v21)
  {
    v42 = [(SMTriggerDestination *)self cachedLocationEvents];
    v43 = [v42 firstObject];
    v44 = [v43 location];
    v45 = [v44 timestamp];
    [v3 timeIntervalSinceDate:v45];
    v47 = v46;

    [(SMTriggerDestination *)self noProgressTimeoutThreshold];
    if (v47 >= v48)
    {
      v61 = [(SMTriggerDestination *)self cachedLocationEvents];
      v62 = [v61 lastObject];
      v63 = [v62 location];
      v64 = [v63 timestamp];
      [(SMTriggerDestination *)self noProgressTimeoutThreshold];
      v6 = [v64 dateByAddingTimeInterval:-v65];

      v66 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K >= %@", @"location", @"timestamp", v6];
      v67 = [(SMTriggerDestination *)self cachedLocationEvents];
      v68 = [v67 filteredArrayUsingPredicate:v66];

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v103 = v68;
      v69 = [v68 reverseObjectEnumerator];
      v97 = [v69 countByEnumeratingWithState:&v108 objects:v123 count:16];
      if (v97)
      {
        v99 = v69;
        v101 = *v109;
        v95 = v66;
        v96 = v6;
        do
        {
          for (i = 0; i != v97; ++i)
          {
            if (*v109 != v101)
            {
              objc_enumerationMutation(v69);
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

                v78 = [v71 location];
                v79 = [v77 location];
                [v78 distanceFromLocation:v79];
                v81 = v80;
                [v78 horizontalAccuracy];
                v83 = v82;
                [v79 horizontalAccuracy];
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
                      v92 = [v78 toString];
                      [v79 toString];
                      v93 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                      [(SMTriggerDestination *)self significantMoveThreshold];
                      *buf = 136316162;
                      v113 = "[SMTriggerDestination _isNoProgressStatus]";
                      v114 = 2048;
                      v115 = v81;
                      v116 = 2112;
                      v117 = v92;
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

            v69 = v99;
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
          v89 = [(SMTriggerDestination *)self cachedLocationEvents];
          *&v90 = COERCE_DOUBLE([v89 count]);
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
        v49 = [(SMTriggerDestination *)self cachedLocationEvents];
        v50 = [v49 firstObject];
        v51 = [v50 location];
        v52 = [v51 timestamp];
        [v52 stringFromDate];
        v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v54 = [v3 stringFromDate];
        *buf = 136315906;
        v113 = "[SMTriggerDestination _isNoProgressStatus]";
        v114 = 2112;
        v115 = v53;
        v116 = 2112;
        v117 = v54;
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
    v102 = [(SMTriggerDestination *)self cachedLocationEvents];
    v100 = [v102 lastObject];
    v98 = [v100 location];
    v22 = [v98 timestamp];
    [v22 stringFromDate];
    v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v24 = [v3 stringFromDate];
    v25 = [(SMTriggerDestination *)self cachedLocationEvents];
    v26 = [v25 lastObject];
    v27 = [v26 location];
    v28 = [v27 timestamp];
    [v3 timeIntervalSinceDate:v28];
    *buf = 136315906;
    v113 = "[SMTriggerDestination _isNoProgressStatus]";
    v114 = 2112;
    v115 = v23;
    v116 = 2112;
    v117 = v24;
    v118 = 2048;
    v119 = v29;
    v11 = 1;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, YES, no locations available from, %@, now, %@, timeInterval, %f", buf, 0x2Au);
  }

LABEL_7:

LABEL_22:
  return v11;
}

- (BOOL)_shouldChangeModeOfTransportStartDate:(id)a3 endDate:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = a4;
  v30 = v6;
  v36 = 0;
  v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v29];
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
        v17 = [(SMTriggerDestination *)self sessionConfiguration];
        v18 = [v17 destination];
        v19 = [v18 clLocation];
        v20 = [(SMTriggerDestination *)self distanceCalculator];
        [v16 distanceFromLocation:v15 toLocation:v19 withCalculator:v20];
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

+ (void)currentLocationWithLocationManager:(id)a3 queue:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() locationRequestOptions];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__SMTriggerDestination_currentLocationWithLocationManager_queue_handler___block_invoke;
  v14[3] = &unk_2788CC120;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v11 = v8;
  v12 = v10;
  v13 = v7;
  [v9 fetchCurrentLocationWithOptions:v12 handler:v14];
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

+ (void)calculateDistanceToDestination:(id)a3 locationManager:(id)a4 distanceCalculator:(id)a5 queue:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = objc_opt_class();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __104__SMTriggerDestination_calculateDistanceToDestination_locationManager_distanceCalculator_queue_handler___block_invoke;
  v21[3] = &unk_2788D0A90;
  v24 = v14;
  v25 = a1;
  v22 = v12;
  v23 = v13;
  v18 = v13;
  v19 = v12;
  v20 = v14;
  [v17 currentLocationWithLocationManager:v16 queue:v15 handler:v21];
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

  v4 = [(SMTriggerDestination *)self sessionConfiguration];
  v5 = [v4 sessionType];

  if (v5 == 2)
  {
    [(SMTriggerDestination *)self _updateInitiatorStatusDestinationBoundWithCompletion:&__block_literal_global_208_0];
  }

  else
  {
    v6 = [(SMTriggerDestination *)self sessionConfiguration];
    v7 = [v6 sessionType];

    if (v7 == 3)
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
  v3 = [(SMTriggerDestination *)self sessionConfiguration];
  v4 = [v3 sessionType];

  if (v4 != 3)
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
      v8 = [(SMTriggerDestination *)self triggerState];
      v9 = [v7 statusToString:{objc_msgSend(v8, "currentStatus")}];
      v20 = 136315394;
      v21 = "[SMTriggerDestination _updateInitiatorStatusRoundTrip]";
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, initiator current status, %@", &v20, 0x16u);
    }
  }

  v10 = [(SMTriggerDestination *)self triggerState];
  v11 = [v10 currentStatus];

  if (v11 != 3)
  {
    if (v11 == 2)
    {
      v12 = +[SMDateUtility date];
      v13 = [(SMTriggerDestination *)self triggerState];
      v14 = [v13 roundTripReminderDate];
      [v12 timeIntervalSinceDate:v14];
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
        v18 = [(SMTriggerDestination *)self triggerState];
        v19 = [v17 statusToString:{objc_msgSend(v18, "currentStatus")}];
        v20 = 136315394;
        v21 = "[SMTriggerDestination _updateInitiatorStatusRoundTrip]";
        v22 = 2112;
        v23 = v19;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%s, Invalid status, %@", &v20, 0x16u);
      }
    }
  }
}

- (void)_updateInitiatorStatusDestinationBoundWithCompletion:(id)a3
{
  v99[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SMTriggerDestination *)self sessionConfiguration];
  v6 = [v5 sessionType];

  if (v6 != 2)
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

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(SMTriggerDestination *)self triggerState];
  v10 = [v9 currentStatusDate];
  [v8 timeIntervalSinceDate:v10];
  v12 = v11;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = MEMORY[0x277D4AC30];
      v15 = [(SMTriggerDestination *)self triggerState];
      v16 = [v14 statusToString:{objc_msgSend(v15, "currentStatus")}];
      v17 = [(SMTriggerDestination *)self sessionConfiguration];
      v18 = [v17 description];
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

  v19 = [(SMTriggerDestination *)self triggerState];
  if ([v19 currentStatus] == 1)
  {
    [(SMTriggerDestination *)self idleTimeoutThreshold];
    v21 = v12 > v20;

    if (v21)
    {
      v22 = [(SMTriggerDestination *)self triggerState];
      [v22 setCurrentStatus:2];

      [(SMTriggerDestination *)self _persistState];
    }
  }

  else
  {
  }

  [(SMTriggerDestination *)self _reviseCachedLocations];
  v23 = [(SMTriggerDestination *)self triggerState];
  v24 = [v23 currentStatus] == 1;

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

    v4[2](v4, 0);
  }

  else
  {
    v26 = [(SMTriggerDestination *)self _isNoProgressStatus];
    v27 = [(SMTriggerDestination *)self triggerState];
    v28 = [v27 currentStatus] != 3;

    if (v28 && v26)
    {
      [(SMTriggerDestination *)self _declareAnomalyForTriggerCategory:3];
    }

    v29 = [(SMTriggerDestination *)self cachedLocationEvents];
    v30 = [v29 count] == 0;

    if (v30)
    {
      v40 = objc_alloc(MEMORY[0x277CCA9B8]);
      v98 = *MEMORY[0x277CCA450];
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s cannot be completed due to no cached locations", "-[SMTriggerDestination _updateInitiatorStatusDestinationBoundWithCompletion:]"];
      v99[0] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
      v43 = [v40 initWithDomain:*MEMORY[0x277D4ACD0] code:6 userInfo:v42];

      (v4)[2](v4, v43);
    }

    else
    {
      v31 = +[SMDateUtility date];
      v32 = [v31 dateByAddingTimeInterval:-300.0];
      v33 = [(SMTriggerDestination *)self cachedLocationEvents];
      v34 = [v33 lastObject];
      v69 = [v34 location];

      v35 = [(SMTriggerDestination *)self cachedLocationEvents];
      v36 = [v35 lastObject];
      [v36 distance];
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
      v39 = [(SMTriggerDestination *)self triggerState];
      LOBYTE(v36) = [v39 predominantModeOfTransport] == 4;

      if (v36)
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

      v45 = [(SMTriggerDestination *)self triggerState];
      v46 = [v45 predominantModeOfTransport] == 0xFFFFFFF;

      if (v46)
      {
        v47 = [(SMTriggerDestination *)self triggerState];
        [v47 setPredominantModeOfTransport:v66];

        [(SMTriggerDestination *)self _persistState];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = objc_opt_class();
            v50 = [(SMTriggerDestination *)self triggerState];
            v51 = [v49 convertSMDirectionTransportTypeToString:{objc_msgSend(v50, "predominantModeOfTransport")}];
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
      v52 = [(SMTriggerDestination *)self triggerState];
      v63 = [v52 predominantModeOfTransport];
      v67 = [(SMTriggerDestination *)self defaultsManager];
      v68 = [(SMTriggerDestination *)self sessionConfiguration];
      v53 = [v68 destination];
      v54 = [v53 clLocation];
      v55 = [(SMTriggerDestination *)self distanceCalculator];
      v56 = [(SMTriggerDestination *)self queue];
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
      v57 = v52;
      v58 = v81;
      [v64 expectedTravelTimeforTransportType:v63 source:v69 defaultsManager:v67 destination:v54 departureDate:v31 distanceCalculator:v55 queue:v56 completionHandler:v80];

      v59 = [(SMTriggerDestination *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__SMTriggerDestination__updateInitiatorStatusDestinationBoundWithCompletion___block_invoke_216;
      block[3] = &unk_2788D0B30;
      v74 = v89;
      block[4] = self;
      v78 = v38;
      v72 = v31;
      v73 = v4;
      v75 = v88;
      v79 = v66;
      v71 = v69;
      v76 = v87;
      v77 = buf;
      v60 = v31;
      v61 = v69;
      dispatch_group_notify(v58, v59, block);

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
  v3 = [(SMTriggerDestination *)self triggerState];
  v4 = [v3 dirty];

  if (v4)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__159;
    v39 = __Block_byref_object_dispose__159;
    v40 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = [(SMTriggerDestination *)self sessionStore];
    v7 = [(SMTriggerDestination *)self triggerState];
    v46 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __37__SMTriggerDestination__persistState__block_invoke;
    v32[3] = &unk_2788C4618;
    v34 = &v35;
    v9 = v5;
    v33 = v9;
    [v6 storeTriggerDestinationStates:v8 handler:v32];

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
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
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
        v28 = [(SMTriggerDestination *)self triggerState];
        v29 = v36[5];
        *buf = 136315650;
        *&buf[4] = "[SMTriggerDestination _persistState]";
        v42 = 2112;
        v43 = v28;
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%s, persisted state, %@, error, %@", buf, 0x20u);
      }
    }

    v30 = [(SMTriggerDestination *)self triggerState];
    [v30 setDirty:0];

    _Block_object_dispose(&v35, 8);
  }
}

void __37__SMTriggerDestination__persistState__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_shouldUpdateUpperBoundEtaWithRemainingDistance:(double)a3 mapsExpectedTravelTime:(double)a4
{
  v53 = *MEMORY[0x277D85DE8];
  if (a3 == 1.79769313e308)
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

  if (a3 < 0.0)
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
      v12 = [(SMTriggerDestination *)self triggerState];
      [v12 remainingDistance];
      v14 = v13;
      v15 = [(SMTriggerDestination *)self triggerState];
      [v15 mapsExpectedTravelTime];
      v43 = 136316162;
      v44 = "[SMTriggerDestination _shouldUpdateUpperBoundEtaWithRemainingDistance:mapsExpectedTravelTime:]";
      v45 = 2048;
      v46 = v14;
      v47 = 2048;
      v48 = a3;
      v49 = 2048;
      v50 = v16;
      v51 = 2048;
      v52 = a4;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, previous remainingDistance, %.1f, current remainingDistance, %.1f, previous mapsTravelTime, %.1f, current mapsTravelTime, %.1f", &v43, 0x34u);
    }
  }

  v17 = [(SMTriggerDestination *)self triggerState];
  v18 = [v17 upperBoundEta];

  if (v18)
  {
    v19 = [(SMTriggerDestination *)self sessionConfiguration];
    v20 = [v19 destination];
    v21 = [v20 eta];
    if (v21)
    {
      v22 = v21;
      v23 = [(SMTriggerDestination *)self sessionConfiguration];
      v24 = [v23 destination];
      v25 = [v24 eta];
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

    v28 = [(SMTriggerDestination *)self triggerState];
    [v28 remainingDistance];
    v30 = v29 - a3;

    v31 = [(SMTriggerDestination *)self triggerState];
    [v31 mapsExpectedTravelTime];
    v33 = v32 - a4;

    if (a4 <= 0.0)
    {
      v36 = 0;
    }

    else
    {
      v34 = [(SMTriggerDestination *)self triggerState];
      [v34 mapsExpectedTravelTime];
      v36 = v33 > 300.0 && v35 > 0.0;
    }

    [(SMTriggerDestination *)self minDistanceUpdateThreshold];
    v7 = v37 >= a3 || v30 > 200.0 || v36;
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
        v48 = *&v41;
        if (v36)
        {
          v39 = @"YES";
        }

        v49 = 2112;
        v50 = v39;
        v51 = 2048;
        v52 = a3;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%s, shouldUpdateETA, %@, distance shorter, %@, ETA shorter, %@, remainingDistance, %.2f.", &v43, 0x34u);
      }
    }

    v5 = [[SMSessionTriggerDestinationETAUpdateState alloc] initWithDistanceRemaining:v36 distanceDifference:v30 > 200.0 nominalTravelTimeRemaining:v7 & 1 nominalTravelTimeDifference:a3 nominalTravelTimeShorter:v30 remainingDistanceShorter:a4 shouldUpdateETAUpperBound:v33];
    v42 = [(SMTriggerDestination *)self sessionMetricManager];
    [v42 onShouldUpdateETAUpperBoundWithETAUpdateState:v5];

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

- (BOOL)_isExceedingUpperBoundEta:(id)a3 mapsExpectedTravelTime:(double)a4 crowFliesExpectedTravelTime:(double)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 crowFliesUpperBoundEta];

  if (v9)
  {
    v10 = +[SMDateUtility date];
    v11 = [v8 mapsUpperBoundEta];

    if (a4 > 0.0 && v11)
    {
      v12 = [v10 dateByAddingTimeInterval:a4];
      v13 = [v8 mapsUpperBoundEta];
      [v12 timeIntervalSinceDate:v13];
      v15 = v14;
      v16 = v14 > 0.0;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v8 mapsUpperBoundEta];
          v19 = [v18 stringFromDate];
          v20 = [v12 stringFromDate];
          v21 = v20;
          v22 = @"NO";
          *v32 = 136316162;
          *&v32[4] = "[SMTriggerDestination _isExceedingUpperBoundEta:mapsExpectedTravelTime:crowFliesExpectedTravelTime:]";
          *&v32[22] = 2048;
          *&v32[12] = 2112;
          *&v32[14] = v19;
          if (v15 > 0.0)
          {
            v22 = @"YES";
          }

          v33 = a4;
          *v34 = 2112;
          *&v34[2] = v20;
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
      v12 = [v10 dateByAddingTimeInterval:a5];
      v24 = [v8 crowFliesUpperBoundEta];
      [v12 timeIntervalSinceDate:v24];
      v26 = v25;
      v16 = v25 > 0.0;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v8 crowFliesUpperBoundEta];
          v19 = [v18 stringFromDate];
          v27 = [v12 stringFromDate];
          v21 = v27;
          v28 = @"NO";
          *v32 = 136316162;
          *&v32[4] = "[SMTriggerDestination _isExceedingUpperBoundEta:mapsExpectedTravelTime:crowFliesExpectedTravelTime:]";
          *&v32[22] = 2048;
          *&v32[12] = 2112;
          *&v32[14] = v19;
          if (v26 > 0.0)
          {
            v28 = @"YES";
          }

          v33 = a5;
          *v34 = 2112;
          *&v34[2] = v27;
          *&v34[10] = 2112;
          *&v34[12] = v28;
          v23 = "%s, crow flies upper bound ETA, %@, crowFliesExpectedTravelTime, %f, newETA, %@, isExceedingUpperBoundEta, %@";
          goto LABEL_17;
        }

LABEL_18:
      }
    }

    v29 = [(SMTriggerDestination *)self sessionMetricManager:*v32];
    v30 = [v8 mapsUpperBoundEta];
    [v12 timeIntervalSinceDate:v30];
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

+ (id)upperBoundEtaForDepartureDate:(id)a3 defaultsManager:(id)a4 mapsExpectedTravelTime:(double)a5 crowFliesExpectedTravelTime:(double)a6 etaScaleFactor:(double)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = [v12 objectForKey:@"RTDefaultsSMTriggerDestinationMinExpectedTravelDurationThresholdKey" value:&unk_2845A2228];
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
      v34 = 900.0;
      v35 = 2048;
      v36 = v15;
      v37 = 2112;
      v38 = @"RTDefaultsSMTriggerDestinationMinExpectedTravelDurationThresholdKey";
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v29, 0x34u);
    }
  }

  v17 = [v12 objectForKey:@"RTDefaultsSMTriggerDestinationMaxExceedTravelDurationThresholdKey" value:&unk_2845A2248];
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
      v34 = 7200.0;
      v35 = 2048;
      v36 = v19;
      v37 = 2112;
      v38 = @"RTDefaultsSMTriggerDestinationMaxExceedTravelDurationThresholdKey";
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v29, 0x34u);
    }
  }

  if (a5 <= 0.0)
  {
    v22 = 0;
  }

  else
  {
    v21 = a5 * a7;
    if (a5 * a7 < v15)
    {
      v21 = v15;
    }

    if (v21 >= v19 + a5)
    {
      v21 = v19 + a5;
    }

    v22 = [v11 dateByAddingTimeInterval:v21];
  }

  v23 = a6 * a7;
  if (a6 * a7 < v15)
  {
    v23 = v15;
  }

  if (v23 >= v19 + a6)
  {
    v23 = v19 + a6;
  }

  v24 = [v11 dateByAddingTimeInterval:v23];
  v25 = [objc_alloc(MEMORY[0x277D4AC38]) initWithMapsUpperBoundEta:v22 crowFliesUpperBoundEta:v24];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v11 stringFromDate];
      v29 = 136316418;
      v30 = "+[SMTriggerDestination upperBoundEtaForDepartureDate:defaultsManager:mapsExpectedTravelTime:crowFliesExpectedTravelTime:etaScaleFactor:]";
      v31 = 2112;
      v32 = v27;
      v33 = 2048;
      v34 = a5;
      v35 = 2048;
      v36 = a6;
      v37 = 2048;
      v38 = *&a7;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%s, departureDate, %@, mapsExpectedTravelTime, %.2f, crowFliesExpectedTravelTime, %.2f, etaScaleFactor, %.2f, upperBoundETA, %@", &v29, 0x3Eu);
    }
  }

  return v25;
}

+ (double)crowFliesExpectedTravelTimeForTransportType:(unint64_t)a3 defaultsManager:(id)a4 distance:(double)a5
{
  v27 = *MEMORY[0x277D85DE8];
  [SMTriggerDestination updateSMTriggerDestinationTransportTypeToAvgSpeedWithDefaultsManager:a4];
  v7 = SMTriggerDestinationTransportTypeToAvgSpeed;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [v7 objectForKey:v8];
  if (v9)
  {
    v10 = v9;
    v11 = SMTriggerDestinationTransportTypeToAvgSpeed;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v13 = [v11 objectForKeyedSubscript:v12];
    [v13 doubleValue];
    v15 = v14;

    if (v15 != 0.0)
    {
      v16 = SMTriggerDestinationTransportTypeToAvgSpeed;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v18 = [v16 objectForKeyedSubscript:v17];
      [v18 doubleValue];
      v20 = a5 / v19;

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
  v4 = [(SMTriggerDestination *)self triggerState];
  v5 = [v4 lastUnlockDate];
  v6 = [(SMTriggerDestination *)self triggerState];
  v7 = [v6 lastLockDate];
  [v5 timeIntervalSinceDate:v7];
  if (v8 > 0.0)
  {

    goto LABEL_8;
  }

  v9 = [(SMTriggerDestination *)self triggerState];
  v10 = [v9 currentStatus];

  if (v10 == 1)
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
  v15 = [(SMTriggerDestination *)self triggerState];
  v16 = [v15 currentStatusDate];

  if (v16)
  {
    v17 = [(SMTriggerDestination *)self triggerState];
    v18 = [v17 currentStatusDate];
    v19 = [v18 laterDate:v14];

    v14 = v19;
  }

  v20 = [(SMTriggerDestination *)self triggerState];
  v21 = [v20 lastUnlockDate];

  if (v21)
  {
    v22 = [(SMTriggerDestination *)self triggerState];
    v23 = [v22 lastUnlockDate];
    v24 = [v23 dateByAddingTimeInterval:-6.0];
    v25 = [v24 laterDate:v14];

    v14 = v25;
  }

LABEL_9:
  v27 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
  v28 = [v27 dateByAddingTimeInterval:-6.0];
  v29 = [v28 laterDate:v14];

  v30 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v29 endDate:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v40 = [(SMTriggerDestination *)self triggerState];
      v39 = [v40 lastLockDate];
      v32 = [v39 stringFromDate];
      v33 = [(SMTriggerDestination *)self triggerState];
      v34 = [v33 lastUnlockDate];
      v35 = [v34 stringFromDate];
      v36 = [(SMTriggerDestination *)self lastUserResponseSafeDate];
      v37 = [v36 stringFromDate];
      *buf = 136316162;
      v42 = "[SMTriggerDestination _cachedLocationsDateInterval]";
      v43 = 2112;
      v44 = v32;
      v45 = 2112;
      v46 = v35;
      v47 = 2112;
      v48 = v37;
      v49 = 2112;
      v50 = v30;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%s, lastLockDate, %@, lastUnlockDate, %@, lastUserResponseDate, %@, dateInterval of interest, %@", buf, 0x34u);
    }
  }

  return v30;
}

- (void)_declareAnomalyForTriggerCategory:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x277D4AC30];
      v7 = [(SMTriggerDestination *)self triggerState];
      v8 = [v6 statusToString:{objc_msgSend(v7, "currentStatus")}];
      v9 = [MEMORY[0x277D4ABC8] triggerCategoryToString:a3];
      v13 = 136315650;
      v14 = "[SMTriggerDestination _declareAnomalyForTriggerCategory:]";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, current status, %@, triggerCategory, %@", &v13, 0x20u);
    }
  }

  v10 = [(SMTriggerDestination *)self triggerState];
  v11 = [v10 currentStatus];

  if (v11 != 3)
  {
    v12 = [(SMTriggerDestination *)self triggerState];
    [v12 setCurrentStatus:3];

    [(SMTriggerDestination *)self _persistState];
    [(SMTriggerDestination *)self setTriggerCategory:a3];
    [(SMTriggerDestination *)self postStateChange];
  }
}

- (void)_initializeETATimer
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(SMTriggerDestination *)self triggerState];
  v4 = [v3 upperBoundEta];

  if (v4)
  {
    [(SMTriggerDestination *)self _tearDownTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.upperBoundETATimerIdentifier"];
    v29 = +[SMDateUtility date];
    v5 = [(SMTriggerDestination *)self triggerState];
    v6 = [v5 upperBoundEta];
    v7 = [v6 mapsUpperBoundEta];
    if (v7)
    {
      v8 = v7;
      v9 = [(SMTriggerDestination *)self triggerState];
      v10 = [v9 upperBoundEta];
      v11 = [v10 mapsUpperBoundEta];
      v12 = [MEMORY[0x277CBEAA8] distantPast];
      v13 = [v11 isEqualToDate:v12];

      if ((v13 & 1) == 0)
      {
        v14 = [(SMTriggerDestination *)self triggerState];
        v15 = [v14 upperBoundEta];
        v16 = [v15 mapsUpperBoundEta];
        v17 = v29;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v18 = [(SMTriggerDestination *)self triggerState];
    v19 = [v18 upperBoundEta];
    v20 = [v19 crowFliesUpperBoundEta];
    if (!v20)
    {

      v17 = v29;
      goto LABEL_16;
    }

    v21 = v20;
    v22 = [(SMTriggerDestination *)self triggerState];
    v23 = [v22 upperBoundEta];
    v24 = [v23 crowFliesUpperBoundEta];
    v25 = [MEMORY[0x277CBEAA8] distantPast];
    v26 = [v24 isEqualToDate:v25];

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

      v16 = 0;
      goto LABEL_19;
    }

    v14 = [(SMTriggerDestination *)self triggerState];
    v15 = [v14 upperBoundEta];
    v16 = [v15 crowFliesUpperBoundEta];
LABEL_11:

    if (v16)
    {
      [v16 timeIntervalSinceDate:v17];
      [(SMTriggerDestination *)self _initializeTimerWithIdentifier:@"com.apple.routined.SMTriggerDestination.upperBoundETATimerIdentifier" fireAfterDelay:?];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_20:

        goto LABEL_21;
      }

      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v16 stringFromDate];
        *buf = 136315394;
        v31 = "[SMTriggerDestination _initializeETATimer]";
        v32 = 2112;
        v33 = v28;
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

- (unint64_t)_predominantMotionActicityTypeFromStartDate:(id)a3 toEndDate:(id)a4 outError:(id *)a5
{
  v62[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", v45, 2u);
    }

    if (a5)
    {
      v31 = _RTErrorInvalidParameterCreate(@"startDate");
LABEL_16:
      v33 = 0;
      *a5 = v31;
      goto LABEL_29;
    }

LABEL_17:
    v33 = 0;
    goto LABEL_29;
  }

  if (!v9)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", v45, 2u);
    }

    if (a5)
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
  v12 = [(SMTriggerDestination *)self motionActivityManager];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __87__SMTriggerDestination__predominantMotionActicityTypeFromStartDate_toEndDate_outError___block_invoke;
  v41[3] = &unk_2788C4528;
  v43 = &v51;
  v44 = v45;
  v13 = v11;
  v42 = v13;
  [v12 fetchPredominantMotionActivityTypeFromStartDate:v8 toEndDate:v10 withHandler:v41];

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
  v21 = [MEMORY[0x277CCACC8] callStackSymbols];
  v22 = [v21 filteredArrayUsingPredicate:v20];
  v23 = [v22 firstObject];

  [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
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
      v36 = [v8 stringFromDate];
      v37 = [v10 stringFromDate];
      v38 = [MEMORY[0x277D011B8] motionActivityTypeToString:v52[3]];
      *buf = 136315906;
      *&buf[4] = "[SMTriggerDestination _predominantMotionActicityTypeFromStartDate:toEndDate:outError:]";
      v56 = 2112;
      v57 = v36;
      v58 = 2112;
      v59 = v37;
      v60 = 2112;
      v61 = v38;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%s, start Date, %@, endDate, %@, motionActivityType, %@", buf, 0x2Au);
    }
  }

  if (a5)
  {
    *a5 = *(v46 + 5);
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

- (unint64_t)_motionActivityTypeToTransportType:(unint64_t)a3 distance:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2 && (a4 <= 2000.0 || (-[SMTriggerDestination sessionConfiguration](self, "sessionConfiguration"), v6 = objc_claimAutoreleasedReturnValue(), [v6 destination], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "eta"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "transportType"), v8, v7, v6, v9 == 2)))
  {
    v10 = 2;
  }

  else
  {
    v11 = [(SMTriggerDestination *)self sessionConfiguration];
    v12 = [v11 destination];
    v13 = [v12 eta];
    v10 = [v13 transportType];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x277D011B8] motionActivityTypeToString:a3];
      v16 = [objc_opt_class() convertSMDirectionTransportTypeToString:v10];
      v18 = 136315650;
      v19 = "[SMTriggerDestination _motionActivityTypeToTransportType:distance:]";
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, motionActivityType, %@, transportType, %@", &v18, 0x20u);
    }
  }

  return v10;
}

+ (void)checkEligibilityOfDestination:(id)a3 locationManager:(id)a4 distanceCalculator:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a7;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__SMTriggerDestination_checkEligibilityOfDestination_locationManager_distanceCalculator_queue_completionHandler___block_invoke;
  v15[3] = &unk_2788D0B58;
  v16 = v11;
  v17 = v12;
  v13 = v11;
  v14 = v12;
  [SMTriggerDestination calculateDistanceToDestination:v13 locationManager:a4 distanceCalculator:a5 queue:a6 handler:v15];
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

+ (void)estimateEtaToDestination:(id)a3 transportType:(unint64_t)a4 locationManager:(id)a5 defaultsManager:(id)a6 distanceCalculator:(id)a7 queue:(id)a8 handler:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a5;
  v21 = +[SMDateUtility date];
  v22 = objc_opt_class();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __128__SMTriggerDestination_estimateEtaToDestination_transportType_locationManager_defaultsManager_distanceCalculator_queue_handler___block_invoke;
  v29[3] = &unk_2788D0BA8;
  v30 = v15;
  v31 = v16;
  v32 = v21;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = a4;
  v37 = a1;
  v23 = v18;
  v24 = v17;
  v25 = v21;
  v26 = v16;
  v27 = v15;
  v28 = v19;
  [v22 currentLocationWithLocationManager:v20 queue:v23 handler:v29];
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

+ (void)expectedTravelTimeforTransportType:(unint64_t)a3 source:(id)a4 defaultsManager:(id)a5 destination:(id)a6 departureDate:(id)a7 distanceCalculator:(id)a8 queue:(id)a9 completionHandler:(id)a10
{
  v46 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v21 = a8;
  [objc_opt_class() distanceFromLocation:v15 toLocation:v17 withCalculator:v21];
  v23 = v22;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [SMTriggerDestination convertSMDirectionTransportTypeToString:a3];
      v26 = [v18 stringFromDate];
      *buf = 136316419;
      v35 = "+[SMTriggerDestination expectedTravelTimeforTransportType:source:defaultsManager:destination:departureDate:distanceCalculator:queue:completionHandler:]";
      v36 = 2112;
      v37 = v25;
      v38 = 2117;
      v39 = v15;
      v40 = 2117;
      v41 = v17;
      v42 = 2112;
      v43 = v26;
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
  v33 = a3;
  v30 = v16;
  v31 = v20;
  v27 = v16;
  v28 = v20;
  [SMTriggerDestination mapsExpectedTravelTimeforTransportType:a3 source:v15 destination:v17 departureDate:v18 queue:v19 handler:v29];
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

+ (id)statusToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"InvalidStatus";
  }

  else
  {
    return off_2788D0BF0[a3];
  }
}

+ (id)convertSMDirectionTransportTypeToString:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      return @"SMDirectionsTransportTypeAutomobile";
    }

    if (a3 == 2)
    {
      return @"SMDirectionsTransportTypeWalking";
    }
  }

  else
  {
    switch(a3)
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

+ (unint64_t)convertSMDirectionTransportTypeToMKDirectionTransportType:(unint64_t)a3
{
  result = a3;
  if ((a3 > 8 || ((1 << a3) & 0x116) == 0) && a3 != 0xFFFFFFF)
  {
    return 0;
  }

  return result;
}

+ (double)distanceFromLocation:(id)a3 toLocation:(id)a4 withCalculator:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D01160];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithCLLocation:v10];

  v12 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v9];
  v18 = 0;
  [v8 distanceFromLocation:v11 toLocation:v12 error:&v18];
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

- (void)_updateCoarseEtaWithMapsExpectedTravelTime:(double)a3 crowFliesExpectedTravelTime:(double)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = +[SMDateUtility date];
  v8 = v7;
  v9 = MEMORY[0x277CBEAA8];
  if (a3 > 0.0)
  {
    a4 = a3;
  }

  v10 = [v7 dateByAddingTimeInterval:a4];
  v11 = [v9 roundingUpDate:v10 bucketDurationMinute:*MEMORY[0x277D4AC98]];

  v12 = [v8 dateByAddingTimeInterval:a4];
  if ([(SMTriggerDestination *)self _shouldUpdateCoarseEta:v11])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(SMTriggerDestination *)self coarseEta];
        v15 = [v14 stringFromDate];
        v16 = [v11 stringFromDate];
        *buf = 136315650;
        v22 = "[SMTriggerDestination _updateCoarseEtaWithMapsExpectedTravelTime:crowFliesExpectedTravelTime:]";
        v23 = 2112;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, update coarseETA from, %@, to, %@", buf, 0x20u);
      }
    }

    [(SMTriggerDestination *)self setCoarseEta:v11];
    v17 = [SMTriggerEstimatedEndDateUpdateNotification alloc];
    v18 = +[SMDateUtility date];
    v19 = [(SMTriggerEstimatedEndDateUpdateNotification *)v17 initWithTriggerCategory:16 SOSState:1 estimatedEndDate:v12 coarseEstimatedEndDate:v11 triggerName:@"SMTriggerDestination" date:v18 details:MEMORY[0x277CBEC10]];

    v20 = [(SMTriggerDestination *)self sessionMonitorDelegate];
    [v20 onTriggerNotification:v19];
  }
}

- (BOOL)_shouldUpdateCoarseEta:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [(SMTriggerDestination *)self coarseEta];

  if (!v5)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v6 = [(SMTriggerDestination *)self coarseEta];
  v7 = [v4 isEqualToDate:v6];

  if ((v7 & 1) == 0)
  {
    v9 = [(SMTriggerDestination *)self sessionConfiguration];
    v10 = [v9 destination];
    v11 = [v10 eta];
    [v11 additionalTravelTime];
    v13 = v12;

    if (v13 > 0.0)
    {
      v14 = [(SMTriggerDestination *)self coarseEta];
      v8 = [v14 compare:v4] == -1;

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
  v3 = [(SMTriggerDestination *)self sessionConfiguration];
  v4 = [v3 userResponseSafeDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(SMTriggerDestination *)self sessionConfiguration];
    v6 = [v7 sessionStartDate];
  }

  return v6;
}

- (SMTriggerManagerProtocol)sessionMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->sessionMonitorDelegate);

  return WeakRetained;
}

@end