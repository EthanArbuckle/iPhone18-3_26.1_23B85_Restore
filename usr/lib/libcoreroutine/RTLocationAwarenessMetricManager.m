@interface RTLocationAwarenessMetricManager
- (RTLocationAwarenessMetricManager)initWithLocationManager:(id)a3 motionManager:(id)a4 learnedLocationStore:(id)a5 startDate:(id)a6 endDate:(id)a7;
- (double)distanceToNearestSensitiveLocation:(id)a3;
- (id)collectBoutMetrics;
- (id)collectDailyMetrics;
- (id)createBoutDictionary;
- (id)createMotionDictionary;
- (id)createSignalEnvironmentDictionary;
- (id)locationsAndMotionsForDateInterval:(id)a3;
- (id)sensitiveLocationsOfInterestWithError:(id *)a3;
- (void)addDwellForMotionType:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 motionDwellMetrics:(id)a6 longestDwell:(id)a7 boutCounts:(id)a8;
- (void)addDwellForSignalEnvironmentType:(int)a3 startDate:(id)a4 endDate:(id)a5 sigEnvMetrics:(id)a6;
- (void)flushBufferToCurrBoutMetrics;
- (void)monitorStateChange:(id)a3;
- (void)processLastBout;
- (void)processLastDailyMetrics;
- (void)processMetrics;
- (void)resetBoutMetrics;
- (void)resetBuffer;
- (void)setup;
- (void)submitBoutMetricsToCoreAnalytics;
- (void)submitDailyMetricsToCoreAnalytics;
- (void)submitMetrics;
- (void)updateBoutMetricsForLocation:(id)a3;
- (void)updateBoutMetricsForMotion:(id)a3;
- (void)updateBoutMetricsStateChangeEdgeDwell;
- (void)updateDailyMetrics:(id)a3;
- (void)updateStateVariables:(id)a3;
@end

@implementation RTLocationAwarenessMetricManager

- (RTLocationAwarenessMetricManager)initWithLocationManager:(id)a3 motionManager:(id)a4 learnedLocationStore:(id)a5 startDate:(id)a6 endDate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v26 = v17;
  if (!v13)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: locationManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_20;
  }

  if (!v14)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: motionManager";
    goto LABEL_19;
  }

  if (!v15)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_19;
  }

  if (!v16)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: startDate";
    goto LABEL_19;
  }

  if (!v17)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: endDate";
      goto LABEL_19;
    }

LABEL_20:

    v22 = 0;
    goto LABEL_21;
  }

  v27.receiver = self;
  v27.super_class = RTLocationAwarenessMetricManager;
  v18 = [(RTLocationAwarenessMetricManager *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_locationManager, a3);
    objc_storeStrong(&v19->_motionManager, a4);
    objc_storeStrong(&v19->_learnedLocationStore, a5);
    objc_storeStrong(&v19->_startDate, a6);
    objc_storeStrong(&v19->_endDate, a7);
    v20 = objc_opt_new();
    distanceCalculator = v19->_distanceCalculator;
    v19->_distanceCalculator = v20;

    [(RTLocationAwarenessMetricManager *)v19 setup];
  }

  self = v19;
  v22 = self;
LABEL_21:

  return v22;
}

- (void)setup
{
  v80[1] = *MEMORY[0x277D85DE8];
  v4 = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateSignalEnvironmentDwell:v4];

  v5 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionDwell:v5];

  v6 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionLongestDwell:v6];

  v7 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionTypeNumBouts:v7];

  [(RTLocationAwarenessMetricManager *)self setBoutStateMotion:0];
  [(RTLocationAwarenessMetricManager *)self setBoutStateWifi:0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricType:0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumWifiLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumGPSLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumOtherLocationsInBout:0.0];
  v8 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:v8];

  v9 = [MEMORY[0x277CBEAA8] distantFuture];
  [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:v9];

  [(RTLocationAwarenessMetricManager *)self setBoutMetricDistanceToSensitiveLocation:-1.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferDistanceToSensitiveLocation:-1.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeDwell:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeType:0];
  v10 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionDwell:v10];

  v11 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionLongestDwell:v11];

  v12 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionBoutCounts:v12];

  v13 = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferSignalEnvironmentDwell:v13];

  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired1mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired2mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired5mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired10mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired15mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumGPSLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumOtherLocationsInBout:0.0];
  v14 = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateSignalEnvironmentDwell:v14];

  v15 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateMotionDwell:v15];

  v16 = [(RTLocationAwarenessMetricManager *)self createBoutDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateBoutCounts:v16];

  v17 = [(RTLocationAwarenessMetricManager *)self createBoutDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateBoutDwell:v17];

  v18 = [(RTLocationAwarenessMetricManager *)self createBoutDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateBoutLongestDwell:v18];

  v19 = dispatch_semaphore_create(0);
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__108;
  v73 = __Block_byref_object_dispose__108;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__108;
  v67 = __Block_byref_object_dispose__108;
  v68 = 0;
  motionManager = self->_motionManager;
  v21 = [(NSDate *)self->_startDate dateByAddingTimeInterval:-0.001];
  v22 = [(NSDate *)self->_startDate dateByAddingTimeInterval:0.001];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __41__RTLocationAwarenessMetricManager_setup__block_invoke;
  v59[3] = &unk_2788C4490;
  v61 = &v63;
  v62 = &v69;
  v23 = v19;
  v60 = v23;
  [(RTMotionActivityManager *)motionManager fetchMotionActivitiesFromStartDate:v21 endDate:v22 handler:v59];

  v24 = v23;
  v25 = [MEMORY[0x277CBEAA8] now];
  v26 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v24, v26))
  {
    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSinceDate:v25];
    v29 = v28;
    v30 = objc_opt_new();
    v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_609];
    v32 = [MEMORY[0x277CCACC8] callStackSymbols];
    v33 = [v32 filteredArrayUsingPredicate:v31];
    v34 = [v33 firstObject];

    [v30 submitToCoreAnalytics:v34 type:1 duration:v29];
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v36 = MEMORY[0x277CCA9B8];
    v80[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v80 count:1];
    v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

    if (v38)
    {
      v39 = v38;

      v40 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v38 = 0;
  }

  v40 = 1;
LABEL_8:

  v41 = v38;
  if ((v40 & 1) == 0)
  {
    objc_storeStrong(v70 + 5, v38);
  }

  if (v70[5] || ![v64[5] count])
  {
    [(RTLocationAwarenessMetricManager *)self setStateVariableCurrMotionActivityType:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v56 = [v64[5] firstObject];
        v57 = v70[5];
        *buf = 138412546;
        *&buf[4] = v56;
        v76 = 2112;
        v77 = v57;
        _os_log_debug_impl(&dword_2304B3000, v42, OS_LOG_TYPE_DEBUG, "initializing motion activity to, %@, error, %@", buf, 0x16u);
      }
    }

    v43 = [v64[5] firstObject];
    -[RTLocationAwarenessMetricManager setStateVariableCurrMotionActivityType:](self, "setStateVariableCurrMotionActivityType:", [v43 type]);
  }

  v44 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariableCurrMotionStart:v44];

  [(RTLocationAwarenessMetricManager *)self setStateVariableCurrSignalEnvironmentType:0];
  v45 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariableLastSettledStateChangeTimestamp:v45];

  v46 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariableLastWifiStateChangeTimestamp:v46];

  v47 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariablePrevLocationTimestamp:v47];

  v48 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariablePrevWifiLocationTimestamp:v48];

  v49 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariableLastSensitiveLocationCheckTimestamp:v49];

  [(RTLocationAwarenessMetricManager *)self setStateVariableMostRecentDistanceToSensitiveLocation:-1.0];
  v58 = 0;
  v50 = [(RTLocationAwarenessMetricManager *)self sensitiveLocationsOfInterestWithError:&v58];
  v51 = v58;
  [(RTLocationAwarenessMetricManager *)self setSensitiveLocations:v50];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v54;
      v76 = 2112;
      v77 = v55;
      v78 = 2112;
      v79 = v51;
      _os_log_debug_impl(&dword_2304B3000, v52, OS_LOG_TYPE_DEBUG, "%@, %@, fetch sensitive locations error, %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);
}

void __41__RTLocationAwarenessMetricManager_setup__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)createBoutDictionary
{
  v2 = objc_opt_new();
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB38];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB50];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB68];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB80];

  return v2;
}

- (id)createMotionDictionary
{
  v2 = objc_opt_new();
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB38];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB50];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB68];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB80];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB98];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EBB0];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EBC8];

  return v2;
}

- (id)createSignalEnvironmentDictionary
{
  v2 = objc_opt_new();
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EB20];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EBE0];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EBF8];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EC10];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EC28];
  [v2 setObject:&unk_28459EB20 forKeyedSubscript:&unk_28459EC40];

  return v2;
}

- (void)resetBoutMetrics
{
  v3 = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateSignalEnvironmentDwell:v3];

  v4 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionLongestDwell:v4];

  v5 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionTypeNumBouts:v5];

  v6 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionDwell:v6];

  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumGPSLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumWifiLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumOtherLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired1mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired2mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired5mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired10mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired15mDutyCycle:0.0];

  [(RTLocationAwarenessMetricManager *)self setBoutMetricDistanceToSensitiveLocation:-1.0];
}

- (void)resetBuffer
{
  v3 = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferSignalEnvironmentDwell:v3];

  v4 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionDwell:v4];

  v5 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionLongestDwell:v5];

  v6 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionBoutCounts:v6];

  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeDwell:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeType:[(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType]];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumGPSLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumOtherLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired1mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired2mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired5mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired10mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired15mDutyCycle:0.0];

  [(RTLocationAwarenessMetricManager *)self setBoutBufferDistanceToSensitiveLocation:-1.0];
}

- (id)locationsAndMotionsForDateInterval:(id)a3
{
  v98[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v61 = [v4 startDate];
  v60 = [v4 endDate];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__108;
  v80 = __Block_byref_object_dispose__108;
  v81 = objc_opt_new();
  v5 = dispatch_semaphore_create(0);
  v6 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v4 horizontalAccuracy:3600 batchSize:0 boundingBoxLocation:250.0];
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__108;
  v74 = __Block_byref_object_dispose__108;
  v75 = 0;
  locationManager = self->_locationManager;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __71__RTLocationAwarenessMetricManager_locationsAndMotionsForDateInterval___block_invoke;
  v66[3] = &unk_2788C4490;
  v68 = &v70;
  v69 = &v76;
  v8 = v5;
  v67 = v8;
  v59 = v6;
  [(RTLocationManager *)locationManager fetchStoredLocationsWithOptions:v6 handler:v66];
  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_609];
    v17 = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [v17 filteredArrayUsingPredicate:v16];
    v19 = [v18 firstObject];

    [v15 submitToCoreAnalytics:v19 type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v89 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v89 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;

      v25 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = 1;
LABEL_8:

  v26 = v23;
  if ((v25 & 1) == 0)
  {
    objc_storeStrong(v71 + 5, v23);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v51 = [v77[5] count];
      v52 = [v61 stringFromDate];
      v53 = [v60 stringFromDate];
      v54 = v71[5];
      *buf = 134218754;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      *&buf[14] = v52;
      *&buf[22] = 2112;
      v96 = v53;
      LOWORD(v97) = 2112;
      *(&v97 + 2) = v54;
      _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "Fetched %lu locations, batch for metrics from, %@, to, %@, error, %@", buf, 0x2Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v96 = __Block_byref_object_copy__108;
  *&v97 = __Block_byref_object_dispose__108;
  *(&v97 + 1) = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__108;
  v93 = __Block_byref_object_dispose__108;
  v94 = objc_opt_new();
  motionManager = self->_motionManager;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __71__RTLocationAwarenessMetricManager_locationsAndMotionsForDateInterval___block_invoke_31;
  v62[3] = &unk_2788C4490;
  v64 = &v89;
  v65 = buf;
  v29 = v9;
  v63 = v29;
  [(RTMotionActivityManager *)motionManager fetchMotionActivitiesFromStartDate:v61 endDate:v60 handler:v62];
  v30 = v29;
  v31 = [MEMORY[0x277CBEAA8] now];
  v32 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v30, v32))
  {
    goto LABEL_19;
  }

  v33 = [MEMORY[0x277CBEAA8] now];
  [v33 timeIntervalSinceDate:v31];
  v35 = v34;
  v36 = objc_opt_new();
  v37 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_609];
  v38 = [MEMORY[0x277CCACC8] callStackSymbols];
  v39 = [v38 filteredArrayUsingPredicate:v37];
  v40 = [v39 firstObject];

  [v36 submitToCoreAnalytics:v40 type:1 duration:v35];
  v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
  {
    *v82 = 0;
    _os_log_fault_impl(&dword_2304B3000, v41, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v82, 2u);
  }

  v42 = MEMORY[0x277CCA9B8];
  v98[0] = *MEMORY[0x277CCA450];
  *v82 = @"semaphore wait timeout";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v98 count:1];
  v44 = [v42 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v43];

  if (v44)
  {
    v45 = v44;

    v46 = 0;
  }

  else
  {
LABEL_19:
    v46 = 1;
    v44 = v26;
  }

  v47 = v44;
  if ((v46 & 1) == 0)
  {
    objc_storeStrong((*&buf[8] + 40), v44);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v55 = [v90[5] count];
      v56 = [v61 stringFromDate];
      v57 = [v60 stringFromDate];
      v58 = *(*&buf[8] + 40);
      *v82 = 134218754;
      *&v82[4] = v55;
      v83 = 2112;
      v84 = v56;
      v85 = 2112;
      v86 = v57;
      v87 = 2112;
      v88 = v58;
      _os_log_debug_impl(&dword_2304B3000, v48, OS_LOG_TYPE_DEBUG, "Fetched %lu motion activities, batch for metrics from, %@, to, %@, error, %@", v82, 0x2Au);
    }
  }

  if (*(*&buf[8] + 40))
  {
    v49 = 0;
  }

  else
  {
    v49 = objc_opt_new();
    [v49 addObjectsFromArray:v77[5]];
    [v49 addObjectsFromArray:v90[5]];
  }

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);

  return v49;
}

void __71__RTLocationAwarenessMetricManager_locationsAndMotionsForDateInterval___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __71__RTLocationAwarenessMetricManager_locationsAndMotionsForDateInterval___block_invoke_31(uint64_t a1, void *a2, void *a3)
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

- (id)sensitiveLocationsOfInterestWithError:(id *)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v39 = [&unk_2845A1370 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v39)
  {
    v36 = *v58;
    v34 = *MEMORY[0x277D01448];
    v35 = *MEMORY[0x277CCA450];
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v58 != v36)
      {
        objc_enumerationMutation(&unk_2845A1370);
      }

      v5 = *(*(&v57 + 1) + 8 * v4);
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy__108;
      v55 = __Block_byref_object_dispose__108;
      v56 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = __Block_byref_object_copy__108;
      v49 = __Block_byref_object_dispose__108;
      v50 = 0;
      v6 = dispatch_semaphore_create(0);
      learnedLocationStore = self->_learnedLocationStore;
      v8 = [v5 unsignedIntegerValue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __74__RTLocationAwarenessMetricManager_sensitiveLocationsOfInterestWithError___block_invoke;
      v40[3] = &unk_2788CDED0;
      v40[4] = self;
      v40[5] = v5;
      v42 = &v51;
      v43 = &v45;
      v44 = a2;
      v9 = v6;
      v41 = v9;
      [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestWithPlaceType:v8 handler:v40];
      v10 = v9;
      v11 = [MEMORY[0x277CBEAA8] now];
      v12 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(v10, v12))
      {
        break;
      }

      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_609];
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
      v62 = v35;
      *buf = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v62 count:1];
      v24 = [v22 errorWithDomain:v34 code:15 userInfo:v23];

      if (!v24)
      {
        goto LABEL_12;
      }

      v25 = v24;

      v26 = 0;
LABEL_13:

      v27 = v24;
      if ((v26 & 1) == 0)
      {
        objc_storeStrong(v52 + 5, v24);
      }

      v28 = v52[5];
      if (v28)
      {
        if (a3)
        {
          v29 = v28;
          *a3 = v28;
        }
      }

      else if (v46[5])
      {
        [v33 addObjectsFromArray:?];
      }

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v51, 8);

      if (v28)
      {
        v31 = 0;
        v30 = v33;
        goto LABEL_25;
      }

      if (v39 == ++v4)
      {
        v39 = [&unk_2845A1370 countByEnumeratingWithState:&v57 objects:v61 count:16];
        if (v39)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    v24 = 0;
LABEL_12:
    v26 = 1;
    goto LABEL_13;
  }

LABEL_23:
  v30 = v33;
  v31 = v33;
LABEL_25:

  return v31;
}

void __74__RTLocationAwarenessMetricManager_sensitiveLocationsOfInterestWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 72));
      v11 = [v5 count];
      v12 = [*(a1 + 40) unsignedIntegerValue];
      v19 = 138413058;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, fetched %lu learned location of interest from learned location store, of placeType, %lu", &v19, 0x2Au);
    }
  }

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v5;
  v18 = v5;

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)addDwellForMotionType:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 motionDwellMetrics:(id)a6 longestDwell:(id)a7 boutCounts:(id)a8
{
  v48 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  [v14 timeIntervalSinceDate:v48];
  if (v18 < 0.0)
  {
    goto LABEL_17;
  }

  [v48 timeIntervalSinceDate:self->_endDate];
  if (v19 >= 0.0)
  {
    goto LABEL_17;
  }

  if ([(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType]== a3)
  {
    v20 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    if (([v48 isEqualToDate:v20] & 1) == 0)
    {
      v21 = [(RTLocationAwarenessMetricManager *)self startDate];
      if (([v48 isEqualToDate:v21] & 1) == 0)
      {
        v22 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
        if (![v14 isEqualToDate:v22])
        {
          v46 = [(RTLocationAwarenessMetricManager *)self endDate];
          v47 = [v14 isEqualToDate:v46];

          if ((v47 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_10:
  v23 = [v14 earlierDate:self->_endDate];
  [v23 timeIntervalSinceDate:v48];
  v25 = v24;

  v26 = MEMORY[0x277CCABB0];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
  v28 = [v15 objectForKeyedSubscript:v27];
  [v28 doubleValue];
  v30 = [v26 numberWithDouble:v25 + v29];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
  [v15 setObject:v30 forKeyedSubscript:v31];

  if ([v16 count])
  {
    v32 = MEMORY[0x277CCABB0];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
    v34 = [v16 objectForKeyedSubscript:v33];
    [v34 doubleValue];
    v36 = v35;

    if (v36 >= v25)
    {
      v37 = v36;
    }

    else
    {
      v37 = v25;
    }

    v38 = [v32 numberWithDouble:v37];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
    [v16 setObject:v38 forKeyedSubscript:v39];
  }

  if ([v17 count])
  {
    v40 = MEMORY[0x277CCABB0];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
    v42 = [v17 objectForKeyedSubscript:v41];
    [v42 doubleValue];
    v44 = [v40 numberWithDouble:v43 + 1.0];
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
    [v17 setObject:v44 forKeyedSubscript:v45];
  }

LABEL_17:
}

- (void)addDwellForSignalEnvironmentType:(int)a3 startDate:(id)a4 endDate:(id)a5 sigEnvMetrics:(id)a6
{
  v8 = *&a3;
  v42 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  v13 = [(RTLocationAwarenessMetricManager *)self startDate];
  v14 = [v12 isEqualToDate:v13];

  if (v14)
  {
    [(RTLocationAwarenessMetricManager *)self setStateVariableCurrSignalEnvironmentType:v8];
  }

  if ([(RTLocationAwarenessMetricManager *)self stateVariableCurrSignalEnvironmentType]== v8)
  {
    [v10 timeIntervalSinceDate:v42];
    v16 = v15;
    v17 = MEMORY[0x277CCABB0];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v19 = [v11 objectForKeyedSubscript:v18];
    [v19 doubleValue];
    v21 = [v17 numberWithDouble:v16 + v20];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    [v11 setObject:v21 forKeyedSubscript:v22];
  }

  else
  {
    v23 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
    [v10 timeIntervalSinceDate:v23];
    v25 = v24;

    v26 = MEMORY[0x277CBEAA8];
    v27 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
    v18 = [v26 dateWithTimeInterval:v27 sinceDate:v25 * 0.5];

    v28 = [v42 laterDate:v18];
    [v28 timeIntervalSinceDate:v42];
    v30 = v29;

    [v10 timeIntervalSinceDate:v18];
    v32 = v31;
    v33 = MEMORY[0x277CCABB0];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
    v35 = [v11 objectForKeyedSubscript:v34];
    [v35 doubleValue];
    v37 = [v33 numberWithDouble:v30 + v36];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
    [v11 setObject:v37 forKeyedSubscript:v38];

    v39 = MEMORY[0x277CCABB0];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v21 = [v11 objectForKeyedSubscript:v19];
    [v21 doubleValue];
    v22 = [v39 numberWithDouble:v32 + v40];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    [v11 setObject:v22 forKeyedSubscript:v41];
  }
}

- (double)distanceToNearestSensitiveLocation:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sensitiveLocations = self->_sensitiveLocations;
  v6 = -1.0;
  if (sensitiveLocations && [(NSArray *)sensitiveLocations count])
  {
    v7 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v4];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0x41DFFFFFFFC00000;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__108;
    v21 = __Block_byref_object_dispose__108;
    v22 = 0;
    v8 = self->_sensitiveLocations;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__RTLocationAwarenessMetricManager_distanceToNearestSensitiveLocation___block_invoke;
    v13[3] = &unk_2788CDEF8;
    v13[4] = self;
    v9 = v7;
    v14 = v9;
    v15 = &v17;
    v16 = &v23;
    [(NSArray *)v8 enumerateObjectsUsingBlock:v13];
    if (v18[5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v12 = v18[5];
          *buf = 138412547;
          v28 = v12;
          v29 = 2117;
          v30 = v4;
          _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "error for near sensitive location check: error, %@, location, %{sensitive}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v6 = v24[3];
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v6;
}

void __71__RTLocationAwarenessMetricManager_distanceToNearestSensitiveLocation___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 440);
  v5 = [a2 location];
  v6 = [v5 location];
  v12 = 0;
  [v4 distanceFromLocation:v3 toLocation:v6 error:&v12];
  v8 = v7;
  v9 = v12;
  v10 = v12;

  objc_storeStrong((*(a1[6] + 8) + 40), v9);
  v11 = *(a1[7] + 8);
  if (v8 < *(v11 + 24))
  {
    *(v11 + 24) = v8;
  }
}

uint64_t __60__RTLocationAwarenessMetricManager_sortLocationsAndMotions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timestamp];
  }

  else
  {
    [v5 startDate];
  }
  v6 = ;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 startDate];
  }

  else
  {
    [v4 timestamp];
  }
  v7 = ;
  v8 = [v6 compare:v7];

  return v8;
}

- (void)flushBufferToCurrBoutMetrics
{
  v138 = *MEMORY[0x277D85DE8];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = [(RTLocationAwarenessMetricManager *)self boutBufferSignalEnvironmentDwell];
  v3 = [obj countByEnumeratingWithState:&v130 objects:v137 count:16];
  if (v3)
  {
    v4 = v3;
    v114 = *v131;
    do
    {
      v5 = 0;
      do
      {
        if (*v131 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v130 + 1) + 8 * v5);
        v7 = MEMORY[0x277CCABB0];
        v8 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
        v9 = [v8 objectForKeyedSubscript:v6];
        [v9 doubleValue];
        v11 = v10;
        v12 = [(RTLocationAwarenessMetricManager *)self boutBufferSignalEnvironmentDwell];
        v13 = [v12 objectForKeyedSubscript:v6];
        [v13 doubleValue];
        v15 = [v7 numberWithDouble:v11 + v14];
        v16 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
        [v16 setObject:v15 forKeyedSubscript:v6];

        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v130 objects:v137 count:16];
    }

    while (v4);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v115 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionLongestDwell];
  v17 = [v115 countByEnumeratingWithState:&v126 objects:v136 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v127;
    do
    {
      v20 = 0;
      do
      {
        if (*v127 != v19)
        {
          objc_enumerationMutation(v115);
        }

        v21 = *(*(&v126 + 1) + 8 * v20);
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutBufferMotionEdgeType](self, "boutBufferMotionEdgeType")}];
        if (([v21 isEqualToNumber:v22] & 1) == 0)
        {

LABEL_21:
          v33 = MEMORY[0x277CCABB0];
          v40 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
          v41 = [v40 objectForKeyedSubscript:v21];
          [v41 doubleValue];
          v43 = v42;

          v44 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionLongestDwell];
          v45 = [v44 objectForKeyedSubscript:v21];
          [v45 doubleValue];
          v47 = v46;

          if (v43 >= v47)
          {
            v39 = v43;
          }

          else
          {
            v39 = v47;
          }

          goto LABEL_24;
        }

        v23 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
        v24 = [v23 objectForKeyedSubscript:v21];
        v25 = [v24 isEqualToNumber:&unk_28459EB20];

        if (v25)
        {
          goto LABEL_21;
        }

        [(RTLocationAwarenessMetricManager *)self boutBufferMotionEdgeDwell];
        v27 = v26;
        v28 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutBufferMotionEdgeType](self, "boutBufferMotionEdgeType")}];
        v30 = [v28 objectForKeyedSubscript:v29];
        [v30 doubleValue];
        v32 = v31;

        if (v27 >= v32)
        {
          v32 = v27;
        }

        v33 = MEMORY[0x277CCABB0];
        v34 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionLongestDwell];
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutBufferMotionEdgeType](self, "boutBufferMotionEdgeType")}];
        v36 = [v34 objectForKeyedSubscript:v35];
        [v36 doubleValue];
        v38 = v37;

        if (v32 >= v38)
        {
          v39 = v32;
        }

        else
        {
          v39 = v38;
        }

LABEL_24:
        v48 = [v33 numberWithDouble:v39];
        v49 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
        [v49 setObject:v48 forKeyedSubscript:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v115 countByEnumeratingWithState:&v126 objects:v136 count:16];
    }

    while (v18);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obja = [(RTLocationAwarenessMetricManager *)self boutBufferMotionBoutCounts];
  v50 = [obja countByEnumeratingWithState:&v122 objects:v135 count:16];
  if (!v50)
  {
    goto LABEL_40;
  }

  v51 = v50;
  v116 = *v123;
  do
  {
    v52 = 0;
    do
    {
      if (*v123 != v116)
      {
        objc_enumerationMutation(obja);
      }

      v53 = *(*(&v122 + 1) + 8 * v52);
      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutBufferMotionEdgeType](self, "boutBufferMotionEdgeType")}];
      v55 = [v53 isEqualToNumber:v54];

      if (!v55)
      {
        v65 = MEMORY[0x277CCABB0];
        v56 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
        v57 = [v56 objectForKeyedSubscript:v53];
        [v57 doubleValue];
        v67 = v66;
        v63 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionBoutCounts];
        v64 = [v63 objectForKeyedSubscript:v53];
        [v64 doubleValue];
        v69 = [v65 numberWithDouble:v67 + v68];
        v70 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
        [v70 setObject:v69 forKeyedSubscript:v53];

LABEL_36:
        goto LABEL_37;
      }

      v56 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
      v57 = [v56 objectForKeyedSubscript:v53];
      if ([v57 isEqualToNumber:&unk_28459EB20])
      {
        v58 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
        v59 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
        v60 = [v58 isEqualToDate:v59];

        if (v60)
        {
          goto LABEL_38;
        }

        v61 = MEMORY[0x277CCABB0];
        v56 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
        v57 = [v56 objectForKeyedSubscript:v53];
        [v57 doubleValue];
        v63 = [v61 numberWithDouble:v62 + 1.0];
        v64 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
        [v64 setObject:v63 forKeyedSubscript:v53];
        goto LABEL_36;
      }

LABEL_37:

LABEL_38:
      ++v52;
    }

    while (v51 != v52);
    v51 = [obja countByEnumeratingWithState:&v122 objects:v135 count:16];
  }

  while (v51);
LABEL_40:

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  objb = [(RTLocationAwarenessMetricManager *)self boutBufferMotionDwell];
  v71 = [objb countByEnumeratingWithState:&v118 objects:v134 count:16];
  if (v71)
  {
    v72 = v71;
    v117 = *v119;
    do
    {
      v73 = 0;
      do
      {
        if (*v119 != v117)
        {
          objc_enumerationMutation(objb);
        }

        v74 = *(*(&v118 + 1) + 8 * v73);
        v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutBufferMotionEdgeType](self, "boutBufferMotionEdgeType")}];
        [v74 isEqualToNumber:v75];

        v76 = MEMORY[0x277CCABB0];
        v77 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
        v78 = [v77 objectForKeyedSubscript:v74];
        [v78 doubleValue];
        v80 = v79;
        v81 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionDwell];
        v82 = [v81 objectForKeyedSubscript:v74];
        [v82 doubleValue];
        v84 = [v76 numberWithDouble:v80 + v83];
        v85 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
        [v85 setObject:v84 forKeyedSubscript:v74];

        ++v73;
      }

      while (v72 != v73);
      v72 = [objb countByEnumeratingWithState:&v118 objects:v134 count:16];
    }

    while (v72);
  }

  [(RTLocationAwarenessMetricManager *)self boutBufferDistanceToSensitiveLocation];
  if (v86 >= 0.0)
  {
    [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
    v88 = v87;
    [(RTLocationAwarenessMetricManager *)self boutBufferDistanceToSensitiveLocation];
    if (v88 < v89)
    {
      v89 = v88;
    }

    [(RTLocationAwarenessMetricManager *)self setBoutMetricDistanceToSensitiveLocation:v89];
  }

  [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired1mDutyCycle];
  v91 = v90;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired1mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired1mDutyCycle:v91 + v92];
  [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired2mDutyCycle];
  v94 = v93;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired2mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired2mDutyCycle:v94 + v95];
  [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired5mDutyCycle];
  v97 = v96;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired5mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired5mDutyCycle:v97 + v98];
  [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired10mDutyCycle];
  v100 = v99;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired10mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired10mDutyCycle:v100 + v101];
  [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired15mDutyCycle];
  v103 = v102;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired15mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired15mDutyCycle:v103 + v104];
  [(RTLocationAwarenessMetricManager *)self boutBufferNumGPSLocationsInBout];
  v106 = v105;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumGPSLocationsInBout];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumGPSLocationsInBout:v106 + v107];
  [(RTLocationAwarenessMetricManager *)self boutBufferNumOtherLocationsInBout];
  v109 = v108;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumOtherLocationsInBout];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumOtherLocationsInBout:v109 + v110];
  [(RTLocationAwarenessMetricManager *)self resetBuffer];
}

- (void)updateBoutMetricsForLocation:(id)a3
{
  v57 = a3;
  v4 = [v57 timestamp];
  v5 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  v6 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v7 = [v5 laterDate:v6];
  [v4 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = (v9 + -1.0) / 60.0;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  v11 = v10;
  if ([v57 type] == 4 || objc_msgSend(v57, "type") == 11)
  {
    v12 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumWifiLocationsInBout];
    [(RTLocationAwarenessMetricManager *)self setBoutMetricNumWifiLocationsInBout:v13 + 1.0];
    [(RTLocationAwarenessMetricManager *)self flushBufferToCurrBoutMetrics];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired1mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired1mDutyCycle:v14 + v11];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired2mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired2mDutyCycle:v15 + (v11 / 2)];
    v16 = 1717986919 * v11;
    v17 = HIDWORD(v16);
    v18 = v16 >> 63;
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired5mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired5mDutyCycle:v19 + (v11 / 5)];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired10mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired10mDutyCycle:v20 + (v18 + (v17 >> 2))];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired15mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired15mDutyCycle:v21 + (v11 / 15)];
    v22 = [v57 timestamp];
    v23 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSensitiveLocationCheckTimestamp];
    [v22 timeIntervalSinceDate:v23];
    if (v24 >= 600.0)
    {
    }

    else
    {
      [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
      v26 = v25;

      if (v26 >= 0.0)
      {
        goto LABEL_29;
      }
    }

    [(RTLocationAwarenessMetricManager *)self distanceToNearestSensitiveLocation:v57];
    v28 = v27;
    [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
    v29 = self;
    if (v30 >= 0.0)
    {
      [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
      if (v31 >= v28)
      {
        v31 = v28;
      }

      v29 = self;
    }

    else
    {
      v31 = v28;
    }

    [(RTLocationAwarenessMetricManager *)v29 setBoutMetricDistanceToSensitiveLocation:v31];
  }

  else
  {
    v12 = [(RTLocationAwarenessMetricManager *)self boutBufferSignalEnvironmentDwell];
    if ([v57 type] == 1 || objc_msgSend(v57, "type") == 9)
    {
      [(RTLocationAwarenessMetricManager *)self boutBufferNumGPSLocationsInBout];
      [(RTLocationAwarenessMetricManager *)self setBoutBufferNumGPSLocationsInBout:v32 + 1.0];
    }

    else
    {
      [(RTLocationAwarenessMetricManager *)self boutBufferNumOtherLocationsInBout];
      [(RTLocationAwarenessMetricManager *)self setBoutBufferNumOtherLocationsInBout:v33 + 1.0];
    }

    [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired1mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired1mDutyCycle:v34 + v11];
    [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired2mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired2mDutyCycle:v35 + (v11 / 2)];
    v36 = 1717986919 * v11;
    v37 = HIDWORD(v36);
    v38 = v36 >> 63;
    [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired5mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired5mDutyCycle:v39 + (v11 / 5)];
    [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired10mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired10mDutyCycle:v40 + (v38 + (v37 >> 2))];
    [(RTLocationAwarenessMetricManager *)self boutBufferNumAdditionalFixesPerHourRequired15mDutyCycle];
    [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired15mDutyCycle:v41 + (v11 / 15)];
    v42 = [v57 timestamp];
    v43 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSensitiveLocationCheckTimestamp];
    [v42 timeIntervalSinceDate:v43];
    if (v44 >= 600.0)
    {
    }

    else
    {
      [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
      v46 = v45;

      if (v46 >= 0.0)
      {
        goto LABEL_29;
      }
    }

    [(RTLocationAwarenessMetricManager *)self distanceToNearestSensitiveLocation:v57];
    v48 = v47;
    [(RTLocationAwarenessMetricManager *)self boutBufferDistanceToSensitiveLocation];
    v49 = self;
    if (v50 >= 0.0)
    {
      [(RTLocationAwarenessMetricManager *)self boutBufferDistanceToSensitiveLocation];
      if (v51 >= v48)
      {
        v51 = v48;
      }

      v49 = self;
    }

    else
    {
      v51 = v48;
    }

    [(RTLocationAwarenessMetricManager *)v49 setBoutBufferDistanceToSensitiveLocation:v51];
  }

LABEL_29:
  v52 = [v57 signalEnvironmentType];
  v53 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  v54 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v55 = [v53 laterDate:v54];
  v56 = [v57 timestamp];
  [(RTLocationAwarenessMetricManager *)self addDwellForSignalEnvironmentType:v52 startDate:v55 endDate:v56 sigEnvMetrics:v12];
}

- (void)updateBoutMetricsForMotion:(id)a3
{
  v28 = a3;
  v4 = [v28 type];
  if (v4 != [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType])
  {
    v5 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
    v6 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 >= 0.0)
    {
      v20 = [v28 type];
      [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
    }

    else
    {
      v9 = [v28 startDate];
      v10 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
      v11 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
      v12 = [v10 laterDate:v11];
      [v9 timeIntervalSinceDate:v12];
      [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeDwell:?];

      [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeType:[(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType]];
      v13 = [v28 type];
      v14 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
      v15 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
      v16 = [v14 laterDate:v15];
      v17 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
      v18 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
      v19 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
      [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:v13 startDate:v16 endDate:v17 motionDwellMetrics:v18 longestDwell:v19 boutCounts:0];

      v20 = [v28 type];
      [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    }
    v21 = ;
    v22 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    v23 = [v21 laterDate:v22];
    v24 = [v28 startDate];
    v25 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionDwell];
    v26 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionLongestDwell];
    v27 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionBoutCounts];
    [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:v20 startDate:v23 endDate:v24 motionDwellMetrics:v25 longestDwell:v26 boutCounts:v27];
  }
}

- (void)updateBoutMetricsStateChangeEdgeDwell
{
  v3 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  v4 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  [v3 timeIntervalSinceDate:v4];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricDuration:?];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  v8 = [v6 objectForKeyedSubscript:v7];
  [v8 doubleValue];
  v10 = [v5 numberWithDouble:v9 + 1.0];
  v11 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  [v11 setObject:v10 forKeyedSubscript:v12];

  v13 = MEMORY[0x277CCABB0];
  v14 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  v16 = [v14 objectForKeyedSubscript:v15];
  [v16 doubleValue];
  v18 = v17;
  [(RTLocationAwarenessMetricManager *)self boutMetricDuration];
  v20 = [v13 numberWithDouble:v18 + v19];
  v21 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  [v21 setObject:v20 forKeyedSubscript:v22];

  v23 = MEMORY[0x277CCABB0];
  v24 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  v26 = [v24 objectForKeyedSubscript:v25];
  [v26 doubleValue];
  v28 = v27;

  [(RTLocationAwarenessMetricManager *)self boutMetricDuration];
  if (v28 >= v29)
  {
    v29 = v28;
  }

  v30 = [v23 numberWithDouble:v29];
  v31 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  [v31 setObject:v30 forKeyedSubscript:v32];

  v33 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  v34 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  v35 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v36 = [v34 laterDate:v35];
  [v33 timeIntervalSinceDate:v36];
  v38 = v37;

  v39 = v38 / 60.0 + -1.0;
  if (v39 < 0.0)
  {
    v39 = 0.0;
  }

  v40 = v39;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired1mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired1mDutyCycle:v41 + v40];
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired2mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired2mDutyCycle:v42 + (v40 / 2)];
  v43 = 1717986919 * v40;
  v44 = HIDWORD(v43);
  v45 = v43 >> 63;
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired5mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired5mDutyCycle:v46 + (v40 / 5)];
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired10mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired10mDutyCycle:v47 + (v45 + (v44 >> 2))];
  [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired15mDutyCycle];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumAdditionalFixesPerHourRequired15mDutyCycle:v48 + (v40 / 15)];
  v49 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  v50 = [(RTLocationAwarenessMetricManager *)self stateVariableLastWifiStateChangeTimestamp];
  LODWORD(v45) = [v49 isEqualToDate:v50];

  if (v45)
  {
    v51 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType];
    v52 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
    v53 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    v54 = [v52 laterDate:v53];
    v55 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
    v56 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v57 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
    v58 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:v51 startDate:v54 endDate:v55 motionDwellMetrics:v56 longestDwell:v57 boutCounts:v58];
  }

  v59 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  v60 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
  v61 = [v59 isEqualToDate:v60];

  if (v61)
  {
    v62 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
    v63 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
    v64 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    v65 = [v63 laterDate:v64];
    [v62 timeIntervalSinceDate:v65];
    v67 = v66;

    v68 = MEMORY[0x277CCABB0];
    v75 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
    v70 = [v75 objectForKeyedSubscript:v69];
    [v70 doubleValue];
    v72 = [v68 numberWithDouble:v67 + v71];
    v73 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
    [v73 setObject:v72 forKeyedSubscript:v74];
  }
}

- (void)processLastBout
{
  if ([(RTLocationAwarenessMetricManager *)self boutStateWifi]== 2)
  {
    v3 = [(RTLocationAwarenessMetricManager *)self endDate];
    v4 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [v3 timeIntervalSinceDate:v4];
    v6 = v5;

    if (v6 > 1200.0)
    {
      v7 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
      [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:v7];

      v8 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType];
      v9 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
      v10 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
      v11 = [v9 laterDate:v10];
      v12 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
      v13 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
      v14 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
      [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:v8 startDate:v11 endDate:v12 motionDwellMetrics:v13 longestDwell:v14 boutCounts:0];

      [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
      [(RTLocationAwarenessMetricManager *)self setBoutMetricType:2];
    }
  }

  [(RTLocationAwarenessMetricManager *)self flushBufferToCurrBoutMetrics];
  if ([(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType]== 1)
  {
    v15 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:v15];
    v16 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v17 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
  v18 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
  v19 = [v17 laterDate:v18];
  [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:v19];

  v15 = [(RTLocationAwarenessMetricManager *)self endDate];
  v20 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
  [v15 timeIntervalSinceDate:v20];
  if (v21 <= 1200.0)
  {
LABEL_9:

    v16 = 3;
    goto LABEL_10;
  }

  v22 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
  v23 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
  [v22 timeIntervalSinceDate:v23];
  if (v24 > 0.0)
  {

    goto LABEL_9;
  }

  v39 = [(RTLocationAwarenessMetricManager *)self boutStateWifi];

  if (v39 == 2)
  {
    v40 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:v40];

    [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
    v15 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:v15];
    v16 = 2;
    goto LABEL_10;
  }

  v16 = 3;
LABEL_11:
  [(RTLocationAwarenessMetricManager *)self setBoutMetricType:v16];
  v25 = [(RTLocationAwarenessMetricManager *)self endDate];
  [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:v25];

  v26 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrSignalEnvironmentType];
  v27 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  v28 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v29 = [v27 laterDate:v28];
  v30 = [(RTLocationAwarenessMetricManager *)self endDate];
  v31 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
  [(RTLocationAwarenessMetricManager *)self addDwellForSignalEnvironmentType:v26 startDate:v29 endDate:v30 sigEnvMetrics:v31];

  v32 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType];
  v33 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
  v34 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v35 = [v33 laterDate:v34];
  v36 = [(RTLocationAwarenessMetricManager *)self endDate];
  v37 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
  v38 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
  [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:v32 startDate:v35 endDate:v36 motionDwellMetrics:v37 longestDwell:v38 boutCounts:0];

  [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
}

- (void)updateDailyMetrics:(id)a3
{
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v14;
    v5 = [v4 signalEnvironmentType];
    v6 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
    v7 = [v4 timestamp];

    v8 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
    [(RTLocationAwarenessMetricManager *)self addDwellForSignalEnvironmentType:v5 startDate:v6 endDate:v7 sigEnvMetrics:v8];
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v14;
    v9 = [v6 type];
    if (v9 == [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType])
    {
      goto LABEL_4;
    }

    v10 = [v6 type];
    v7 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
    v8 = [(RTLocationAwarenessMetricManager *)self startDate];
    v11 = [v7 laterDate:v8];
    v12 = [v6 startDate];
    v13 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
    [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:v10 startDate:v11 endDate:v12 motionDwellMetrics:v13 longestDwell:0 boutCounts:0];

LABEL_3:
LABEL_4:
  }

  MEMORY[0x2821F96F8]();
}

- (void)processLastDailyMetrics
{
  v3 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType];
  v4 = [(RTLocationAwarenessMetricManager *)self endDate];
  v5 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = MEMORY[0x277CCABB0];
  v9 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v11 = [v9 objectForKeyedSubscript:v10];
  [v11 doubleValue];
  v13 = [v8 numberWithDouble:v7 + v12];
  v14 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  [v14 setObject:v13 forKeyedSubscript:v15];

  v16 = [(RTLocationAwarenessMetricManager *)self endDate];
  v17 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  [v16 timeIntervalSinceDate:v17];
  v19 = v18;

  v20 = MEMORY[0x277CCABB0];
  v27 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
  v22 = [v27 objectForKeyedSubscript:v21];
  [v22 doubleValue];
  v24 = [v20 numberWithDouble:v19 + v23];
  v25 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
  [v25 setObject:v24 forKeyedSubscript:v26];
}

- (void)processMetrics
{
  v3 = [(RTLocationAwarenessMetricManager *)self startDate];
  v4 = [(RTLocationAwarenessMetricManager *)self endDate];
  v5 = [v3 earlierDate:v4];
  v6 = [v5 isEqualToDate:v3];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      v9 = v3;
      v10 = objc_autoreleasePoolPush();
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v3 sinceDate:3600.0];

      v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v3 endDate:v7];
      v12 = [(RTLocationAwarenessMetricManager *)self locationsAndMotionsForDateInterval:v11];
      v13 = [(RTLocationAwarenessMetricManager *)self sortLocationsAndMotions:v12];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__RTLocationAwarenessMetricManager_processMetrics__block_invoke;
      v16[3] = &unk_2788C4BA8;
      v16[4] = self;
      [v13 enumerateObjectsUsingBlock:v16];
      v3 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v7 sinceDate:1.0];

      objc_autoreleasePoolPop(v10);
      v14 = [(RTLocationAwarenessMetricManager *)self endDate];
      v15 = [v3 earlierDate:v14];
      LOBYTE(v11) = [v15 isEqualToDate:v3];
    }

    while ((v11 & 1) != 0);
  }
}

void __50__RTLocationAwarenessMetricManager_processMetrics__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 updateDailyMetrics:v4];
  [*(a1 + 32) monitorStateChange:v4];
}

- (void)monitorStateChange:(id)a3
{
  v37 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v37;
    v5 = [v4 timestamp];
    v6 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    if (-[RTLocationAwarenessMetricManager boutStateMotion](self, "boutStateMotion") == 1 || !-[RTLocationAwarenessMetricManager boutStateWifi](self, "boutStateWifi") && (-[RTLocationAwarenessMetricManager boutStateCurrBoutStart](self, "boutStateCurrBoutStart"), v21 = objc_claimAutoreleasedReturnValue(), -[RTLocationAwarenessMetricManager startDate](self, "startDate"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 isEqualToDate:v22], v22, v21, v23))
    {
      if (v8 <= 1200.0)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      [(RTLocationAwarenessMetricManager *)self setBoutStateWifi:v9];
      goto LABEL_31;
    }

    if (v8 <= 1200.0 && [(RTLocationAwarenessMetricManager *)self boutStateWifi]== 1)
    {
      v24 = 2;
      v25 = 2;
    }

    else
    {
      if (v8 <= 1200.0 || [(RTLocationAwarenessMetricManager *)self boutStateWifi]!= 2)
      {
        goto LABEL_31;
      }

      v25 = 1;
      v24 = 3;
    }

    [(RTLocationAwarenessMetricManager *)self setBoutMetricType:v24];
    v26 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:v26];

    [(RTLocationAwarenessMetricManager *)self setBoutStateWifi:v25];
    v27 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [(RTLocationAwarenessMetricManager *)self setStateVariableLastWifiStateChangeTimestamp:v27];

    [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
    v28 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    v29 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
    v30 = [v28 laterDate:v29];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:v30];

LABEL_31:
    [(RTLocationAwarenessMetricManager *)self updateBoutMetricsForLocation:v4];
    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_33;
  }

  v10 = v37;
  v11 = [v10 startDate];
  v12 = [(RTLocationAwarenessMetricManager *)self startDate];
  [v11 timeIntervalSinceDate:v12];
  v14 = v13;

  if (v14 <= 0.0)
  {
    if ([v10 type] == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [(RTLocationAwarenessMetricManager *)self setBoutStateMotion:v15];
    -[RTLocationAwarenessMetricManager setBoutBufferMotionEdgeType:](self, "setBoutBufferMotionEdgeType:", [v10 type]);
  }

  if (-[RTLocationAwarenessMetricManager boutStateMotion](self, "boutStateMotion") == 1 && [v10 type] != 1 && objc_msgSend(v10, "type") != 6)
  {
    v31 = [v10 startDate];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:v31];

    v32 = 2;
    v33 = 1;
LABEL_43:
    [(RTLocationAwarenessMetricManager *)self setBoutMetricType:v33];
    [(RTLocationAwarenessMetricManager *)self setBoutStateMotion:v32];
    v35 = [v10 startDate];
    [(RTLocationAwarenessMetricManager *)self setStateVariableLastSettledStateChangeTimestamp:v35];

    [(RTLocationAwarenessMetricManager *)self updateBoutMetricsForMotion:v10];
    [(RTLocationAwarenessMetricManager *)self flushBufferToCurrBoutMetrics];
    [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
    v36 = [v10 startDate];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:v36];

    goto LABEL_32;
  }

  if (-[RTLocationAwarenessMetricManager boutStateMotion](self, "boutStateMotion") == 2 && [v10 type] == 1)
  {
    v16 = [v10 startDate];
    v17 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [v16 timeIntervalSinceDate:v17];
    if (v18 <= 1200.0)
    {
    }

    else
    {
      v19 = [(RTLocationAwarenessMetricManager *)self boutMetricType];

      if (v19 != 3)
      {
LABEL_39:
        v34 = [v10 startDate];
        [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:v34];

        if ([(RTLocationAwarenessMetricManager *)self boutStateWifi]== 2)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v32 = 1;
        goto LABEL_43;
      }

      v20 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
      [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:v20];

      [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
      v16 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
      [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:v16];
    }

    goto LABEL_39;
  }

  [(RTLocationAwarenessMetricManager *)self updateBoutMetricsForMotion:v10];
LABEL_32:

LABEL_33:
  [(RTLocationAwarenessMetricManager *)self updateStateVariables:v37];
}

- (void)updateStateVariables:(id)a3
{
  v22 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v22;
    if ([v4 type] == 4 || objc_msgSend(v4, "type") == 11)
    {
      v5 = [v4 timestamp];
      [(RTLocationAwarenessMetricManager *)self setStateVariablePrevWifiLocationTimestamp:v5];
    }

    v6 = [v4 timestamp];
    v7 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSensitiveLocationCheckTimestamp];
    [v6 timeIntervalSinceDate:v7];
    if (v8 >= 600.0)
    {
    }

    else
    {
      [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
      v10 = v9;

      if (v10 >= 0.0)
      {
        goto LABEL_14;
      }
    }

    [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
    [(RTLocationAwarenessMetricManager *)self setStateVariableMostRecentDistanceToSensitiveLocation:?];
    v20 = [v4 timestamp];
    [(RTLocationAwarenessMetricManager *)self setStateVariableLastSensitiveLocationCheckTimestamp:v20];

LABEL_14:
    v21 = [v4 timestamp];
    [(RTLocationAwarenessMetricManager *)self setStateVariablePrevLocationTimestamp:v21];

    -[RTLocationAwarenessMetricManager setStateVariableCurrSignalEnvironmentType:](self, "setStateVariableCurrSignalEnvironmentType:", [v4 signalEnvironmentType]);
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = v22;
  v12 = [v11 type];
  if (v12 != -[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType") || ([v11 startDate], v13 = objc_claimAutoreleasedReturnValue(), -[RTLocationAwarenessMetricManager startDate](self, "startDate"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "timeIntervalSinceDate:", v14), v16 = v15, v14, v13, v16 <= 0.0))
  {
    -[RTLocationAwarenessMetricManager setStateVariableCurrMotionActivityType:](self, "setStateVariableCurrMotionActivityType:", [v11 type]);
    v17 = [v11 startDate];
    v18 = [(RTLocationAwarenessMetricManager *)self startDate];
    v19 = [v17 laterDate:v18];
    [(RTLocationAwarenessMetricManager *)self setStateVariableCurrMotionStart:v19];
  }

LABEL_15:

LABEL_16:
}

- (id)collectBoutMetrics
{
  v3 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v4 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  v5 = [v3 laterDate:v4];
  v6 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  v7 = [v5 isEqualToDate:v6];

  if (v7)
  {
    v166 = objc_opt_new();
    v185 = [RTMetric binsFromStart:&unk_28459EB20 toEnd:&unk_2845A1D38 gap:&unk_2845A1D48];
    v171 = objc_opt_new();
    v175 = [RTMetric binsFromStart:&unk_28459EB20 toEnd:&unk_28459ECA0 gap:&unk_28459EBE0];
    v174 = [RTMetric binsFromStart:&unk_28459ED30 toEnd:&unk_28459ECB8 gap:&unk_28459EC58];
    [v171 addObjectsFromArray:v175];
    [v171 addObjectsFromArray:v174];
    v170 = objc_opt_new();
    v173 = [RTMetric binsFromStart:&unk_28459EB20 toEnd:&unk_28459ECB8 gap:&unk_28459EC58];
    [v170 addObjectsFromArray:v173];
    [v170 addObjectsFromArray:&unk_2845A13A0];
    v176 = [RTMetric binsFromStart:&unk_2845A1D58 toEnd:&unk_2845A1D68 gap:&unk_2845A1D78];
    v172 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    v184 = [v172 components:32 fromDate:v8];

    v9 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
    v10 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;

    v13 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v14 = [v13 allKeys];
    v187[0] = MEMORY[0x277D85DD0];
    v187[1] = 3221225472;
    v187[2] = __54__RTLocationAwarenessMetricManager_collectBoutMetrics__block_invoke;
    v187[3] = &unk_2788CDF20;
    v187[4] = self;
    v15 = [v14 sortedArrayUsingComparator:v187];

    v16 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    v17 = [v16 allKeys];
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = __54__RTLocationAwarenessMetricManager_collectBoutMetrics__block_invoke_2;
    v186[3] = &unk_2788CDF20;
    v186[4] = self;
    v169 = [v17 sortedArrayUsingComparator:v186];

    v18 = [v15 objectAtIndexedSubscript:0];
    v19 = [v18 intValue];

    v177 = v15;
    v20 = [v15 objectAtIndexedSubscript:1];
    v21 = [v20 intValue];

    v22 = [v15 objectAtIndexedSubscript:2];
    v23 = [v22 intValue];

    v24 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    v26 = [v24 objectForKeyedSubscript:v25];
    v162 = [v26 intValue];

    v27 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:v21];
    v29 = [v27 objectForKeyedSubscript:v28];
    v164 = [v29 intValue];

    v30 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v23];
    v32 = [v30 objectForKeyedSubscript:v31];
    v167 = [v32 intValue];

    v33 = MEMORY[0x277CCABB0];
    v34 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v35 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    v36 = [v34 objectForKeyedSubscript:v35];
    [v36 doubleValue];
    v183 = [v33 numberWithDouble:v37 / v12];

    v38 = MEMORY[0x277CCABB0];
    v39 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v158 = v21;
    v40 = [MEMORY[0x277CCABB0] numberWithInt:v21];
    v41 = [v39 objectForKeyedSubscript:v40];
    [v41 doubleValue];
    v182 = [v38 numberWithDouble:v42 / v12];

    v43 = MEMORY[0x277CCABB0];
    v44 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v160 = v23;
    v45 = [MEMORY[0x277CCABB0] numberWithInt:v23];
    v46 = [v44 objectForKeyedSubscript:v45];
    [v46 doubleValue];
    v181 = [v43 numberWithDouble:v47 / v12];

    v48 = MEMORY[0x277CCABB0];
    v49 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
    v50 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    v51 = [v49 objectForKeyedSubscript:v50];
    [v51 doubleValue];
    v180 = [v48 numberWithDouble:v52 / v12];

    v53 = MEMORY[0x277CCABB0];
    v54 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
    v55 = [MEMORY[0x277CCABB0] numberWithInt:v21];
    v56 = [v54 objectForKeyedSubscript:v55];
    [v56 doubleValue];
    v179 = [v53 numberWithDouble:v57 / v12];

    v58 = MEMORY[0x277CCABB0];
    v59 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
    v60 = [MEMORY[0x277CCABB0] numberWithInt:v23];
    v61 = [v59 objectForKeyedSubscript:v60];
    [v61 doubleValue];
    v178 = [v58 numberWithDouble:v62 / v12];

    v63 = [v169 objectAtIndexedSubscript:0];
    v64 = [v63 intValue];

    v65 = MEMORY[0x277CCABB0];
    v66 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v64];
    v68 = [v66 objectForKeyedSubscript:v67];
    [v68 doubleValue];
    if (v69 <= 0.0)
    {
      v70 = 0;
    }

    else
    {
      v70 = v64;
    }

    v71 = [v65 numberWithUnsignedInt:v70];
    [v166 setObject:v71 forKeyedSubscript:@"_primarySignalEnvironment"];

    v72 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
    v73 = [v72 numberWithDouble:?];
    v74 = [RTMetric binForNumber:v73 bins:&unk_2845A13B8];
    v75 = v166;
    [v166 setObject:v74 forKeyedSubscript:@"_boutMetricNearSensitiveLocation"];

    v76 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricDuration];
    v77 = [v76 numberWithDouble:?];
    v78 = [RTMetric binForNumber:v77 bins:v185];
    [v166 setObject:v78 forKeyedSubscript:@"_duration"];

    v79 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v184, "hour")}];
    [v166 setObject:v79 forKeyedSubscript:@"_startDate"];

    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
    [v166 setObject:v80 forKeyedSubscript:@"_wifiMobilityType"];

    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v64];
    [v166 setObject:v81 forKeyedSubscript:@"_primarySignalEnvironment"];

    v82 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    [v166 setObject:v82 forKeyedSubscript:@"_primaryMotion"];

    v83 = [RTMetric binForNumber:v183 bins:v176];
    [v166 setObject:v83 forKeyedSubscript:@"_primaryMotionDurationBucketed"];

    v84 = [MEMORY[0x277CCABB0] numberWithInt:v162];
    v85 = [RTMetric binForNumber:v84 bins:&unk_2845A1388];
    [v166 setObject:v85 forKeyedSubscript:@"_numBoutsPrimaryMotionBucketed"];

    v86 = [RTMetric binForNumber:v180 bins:v176];
    [v166 setObject:v86 forKeyedSubscript:@"_longestBoutPrimaryMotionBucketed"];

    v87 = MEMORY[0x277CCABB0];
    v88 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v89 = [MEMORY[0x277CCABB0] numberWithInt:v158];
    v90 = [v88 objectForKeyedSubscript:v89];
    [v90 doubleValue];
    if (v91 <= 0.0)
    {
      v92 = 0xFFFFFFFFLL;
    }

    else
    {
      v92 = v158;
    }

    v93 = [v87 numberWithInt:v92];
    [v166 setObject:v93 forKeyedSubscript:@"_secondaryMotion"];

    v94 = [RTMetric binForNumber:v182 bins:v176];
    [v166 setObject:v94 forKeyedSubscript:@"_secondaryMotionDurationBucketed"];

    v95 = [MEMORY[0x277CCABB0] numberWithInt:v164];
    v96 = [RTMetric binForNumber:v95 bins:&unk_2845A1388];
    [v166 setObject:v96 forKeyedSubscript:@"_numBoutsSecondaryMotionBucketed"];

    v97 = [RTMetric binForNumber:v179 bins:v176];
    [v166 setObject:v97 forKeyedSubscript:@"_longestBoutSecondaryMotionBucketed"];

    v98 = MEMORY[0x277CCABB0];
    v99 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v100 = [MEMORY[0x277CCABB0] numberWithInt:v23];
    v101 = [v99 objectForKeyedSubscript:v100];
    [v101 doubleValue];
    if (v102 <= 0.0)
    {
      v103 = 0xFFFFFFFFLL;
    }

    else
    {
      v103 = v160;
    }

    v104 = [v98 numberWithInt:v103];
    [v166 setObject:v104 forKeyedSubscript:@"_tertiaryMotion"];

    v105 = [RTMetric binForNumber:v181 bins:v176];
    [v166 setObject:v105 forKeyedSubscript:@"_tertiaryMotionDurationBucketed"];

    v106 = [MEMORY[0x277CCABB0] numberWithInt:v167];
    v107 = [RTMetric binForNumber:v106 bins:&unk_2845A1388];
    [v166 setObject:v107 forKeyedSubscript:@"_numBoutsTertiaryMotionBucketed"];

    v108 = [RTMetric binForNumber:v178 bins:v176];
    [v166 setObject:v108 forKeyedSubscript:@"_longestBoutTertiaryMotionBucketed"];

    v109 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
    v110 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    [v109 timeIntervalSinceDate:v110];
    v112 = v111 / 3600.0;

    v168 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v165 = [v177 objectAtIndexedSubscript:3];
    v163 = [v168 objectForKeyedSubscript:v165];
    LODWORD(v110) = [v163 intValue];
    v159 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v157 = [v177 objectAtIndexedSubscript:4];
    v113 = [v159 objectForKeyedSubscript:v157];
    v161 = [v113 intValue] + v110;
    v114 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v115 = [v177 objectAtIndexedSubscript:5];
    v116 = [v114 objectForKeyedSubscript:v115];
    LODWORD(v109) = [v116 intValue];
    v117 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v118 = [v177 objectAtIndexedSubscript:6];
    v119 = [v117 objectForKeyedSubscript:v118];
    v156 = v109 + [v119 intValue];

    v120 = [MEMORY[0x277CCABB0] numberWithInt:(v161 + v156)];
    v121 = [RTMetric binForNumber:v120 bins:&unk_2845A1388];
    [v166 setObject:v121 forKeyedSubscript:@"_numBoutsOtherMotionBucketed"];

    v122 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumWifiLocationsInBout];
    v124 = [v122 numberWithDouble:v123 / v112];
    v125 = [RTMetric binForNumber:v124 bins:v170];
    [v166 setObject:v125 forKeyedSubscript:@"_numWifiLocations"];

    v126 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumGPSLocationsInBout];
    v128 = [v126 numberWithDouble:v127 / v112];
    v129 = [RTMetric binForNumber:v128 bins:v170];
    [v166 setObject:v129 forKeyedSubscript:@"_numGPSLocations"];

    v130 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumOtherLocationsInBout];
    v132 = [v130 numberWithDouble:v131 / v112];
    v133 = [RTMetric binForNumber:v132 bins:v170];
    [v166 setObject:v133 forKeyedSubscript:@"_numOtherLocations"];

    v134 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired1mDutyCycle];
    v136 = [v134 numberWithDouble:v135 / v112];
    v137 = [RTMetric binForNumber:v136 bins:v171];
    [v166 setObject:v137 forKeyedSubscript:@"_numAdditionalFixesRequired_1mCycle"];

    v138 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired2mDutyCycle];
    v140 = [v138 numberWithDouble:v139 / v112];
    v141 = [RTMetric binForNumber:v140 bins:v171];
    [v166 setObject:v141 forKeyedSubscript:@"_numAdditionalFixesRequired_2mCycle"];

    v142 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired5mDutyCycle];
    v144 = [v142 numberWithDouble:v143 / v112];
    v145 = [RTMetric binForNumber:v144 bins:v171];
    [v166 setObject:v145 forKeyedSubscript:@"_numAdditionalFixesRequired_5mCycle"];

    v146 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired10mDutyCycle];
    v148 = [v146 numberWithDouble:v147 / v112];
    v149 = [RTMetric binForNumber:v148 bins:v171];
    [v166 setObject:v149 forKeyedSubscript:@"_numAdditionalFixesRequired_10mCycle"];

    v150 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired15mDutyCycle];
    v152 = [v150 numberWithDouble:v151 / v112];
    v153 = [RTMetric binForNumber:v152 bins:v171];
    [v166 setObject:v153 forKeyedSubscript:@"_numAdditionalFixesRequired_15mCycle"];

    v154 = v185;
  }

  else
  {
    v154 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v154, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [[self.boutStateCurrBoutStart laterDate:self.boutStateCurrBoutEnd] isEqualToDate:self.boutStateCurrBoutEnd]", buf, 2u);
    }

    v75 = 0;
  }

  return v75;
}

uint64_t __54__RTLocationAwarenessMetricManager_collectBoutMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 boutStateMotionDwell];
  v9 = [v8 objectForKey:v7];

  v10 = [*(a1 + 32) boutStateMotionDwell];
  v11 = [v10 objectForKey:v6];

  v12 = -[v9 compare:v11];
  return v12;
}

uint64_t __54__RTLocationAwarenessMetricManager_collectBoutMetrics__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 boutStateSignalEnvironmentDwell];
  v9 = [v8 objectForKey:v7];

  v10 = [*(a1 + 32) boutStateSignalEnvironmentDwell];
  v11 = [v10 objectForKey:v6];

  v12 = -[v9 compare:v11];
  return v12;
}

- (id)collectDailyMetrics
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [RTMetric binsFromStart:&unk_28459EB20 toEnd:&unk_2845A1D88 gap:&unk_2845A1D98];
  v5 = [v3 arrayWithArray:v4];

  v6 = [RTMetric binsFromStart:&unk_2845A1DA8 toEnd:&unk_2845A1DB8 gap:&unk_2845A1DC8];
  [v5 addObjectsFromArray:v6];

  v7 = [RTMetric binsFromStart:&unk_2845A1DD8 toEnd:&unk_2845A1D38 gap:&unk_2845A1DE8];
  [v5 addObjectsFromArray:v7];

  v8 = objc_opt_new();
  v9 = MEMORY[0x277CCABB0];
  v10 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v11 = [v10 objectForKeyedSubscript:&unk_28459EB50];
  v12 = [v9 numberWithInteger:{objc_msgSend(v11, "integerValue")}];
  v13 = [RTMetric binForNumber:v12 bins:&unk_2845A13E8];
  [v8 setObject:v13 forKeyedSubscript:@"_numBoutsInPastDayLowMobility"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v16 = [v15 objectForKeyedSubscript:&unk_28459EB50];
  v17 = [v14 numberWithInteger:{objc_msgSend(v16, "integerValue")}];
  v18 = [RTMetric binForNumber:v17 bins:v5];
  [v8 setObject:v18 forKeyedSubscript:@"_totalDailyDwellLowMobility"];

  v19 = MEMORY[0x277CCABB0];
  v20 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v21 = [v20 objectForKeyedSubscript:&unk_28459EB50];
  v22 = [v19 numberWithInteger:{objc_msgSend(v21, "integerValue")}];
  v23 = [RTMetric binForNumber:v22 bins:v5];
  [v8 setObject:v23 forKeyedSubscript:@"_durationOfLongestLowMobilityBout"];

  v24 = MEMORY[0x277CCABB0];
  v25 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v26 = [v25 objectForKeyedSubscript:&unk_28459EB68];
  v27 = [v24 numberWithInteger:{objc_msgSend(v26, "integerValue")}];
  v28 = [RTMetric binForNumber:v27 bins:&unk_2845A13D0];
  [v8 setObject:v28 forKeyedSubscript:@"_numBoutsInPastDayMobileNoWifi"];

  v29 = MEMORY[0x277CCABB0];
  v30 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v31 = [v30 objectForKeyedSubscript:&unk_28459EB68];
  v32 = [v29 numberWithInteger:{objc_msgSend(v31, "integerValue")}];
  v33 = [RTMetric binForNumber:v32 bins:v5];
  [v8 setObject:v33 forKeyedSubscript:@"_totalDailyDwellMobileNoWifi"];

  v34 = MEMORY[0x277CCABB0];
  v35 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v36 = [v35 objectForKeyedSubscript:&unk_28459EB68];
  v37 = [v34 numberWithInteger:{objc_msgSend(v36, "integerValue")}];
  v38 = [RTMetric binForNumber:v37 bins:v5];
  [v8 setObject:v38 forKeyedSubscript:@"_durationOfLongestMobileNoWifiBout"];

  v39 = MEMORY[0x277CCABB0];
  v40 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v41 = [v40 objectForKeyedSubscript:&unk_28459EB80];
  v42 = [v39 numberWithInteger:{objc_msgSend(v41, "integerValue")}];
  v43 = [RTMetric binForNumber:v42 bins:&unk_2845A13D0];
  [v8 setObject:v43 forKeyedSubscript:@"_numBoutsInPastDayMobileWithWifi"];

  v44 = MEMORY[0x277CCABB0];
  v45 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v46 = [v45 objectForKeyedSubscript:&unk_28459EB80];
  v47 = [v44 numberWithInteger:{objc_msgSend(v46, "integerValue")}];
  v48 = [RTMetric binForNumber:v47 bins:v5];
  [v8 setObject:v48 forKeyedSubscript:@"_totalDailyDwellMobileWithWifi"];

  v49 = MEMORY[0x277CCABB0];
  v50 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v51 = [v50 objectForKeyedSubscript:&unk_28459EB80];
  v52 = [v49 numberWithInteger:{objc_msgSend(v51, "integerValue")}];
  v53 = [RTMetric binForNumber:v52 bins:v5];
  [v8 setObject:v53 forKeyedSubscript:@"_durationOfLongestMobileWithWifiBout"];

  v54 = MEMORY[0x277CCABB0];
  v55 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v56 = [v55 objectForKeyedSubscript:&unk_28459EC40];
  [v56 doubleValue];
  v57 = [v54 numberWithDouble:?];
  v58 = [RTMetric binForNumber:v57 bins:v5];
  [v8 setObject:v58 forKeyedSubscript:@"_totalDailyDwellFoliage"];

  v59 = MEMORY[0x277CCABB0];
  v60 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v61 = [v60 objectForKeyedSubscript:&unk_28459EB20];
  [v61 doubleValue];
  v62 = [v59 numberWithDouble:?];
  v63 = [RTMetric binForNumber:v62 bins:v5];
  [v8 setObject:v63 forKeyedSubscript:@"_totalDailyDwellUnavailableSignalEnvironment"];

  v64 = MEMORY[0x277CCABB0];
  v65 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v66 = [v65 objectForKeyedSubscript:&unk_28459EBE0];
  [v66 doubleValue];
  v67 = [v64 numberWithDouble:?];
  v68 = [RTMetric binForNumber:v67 bins:v5];
  [v8 setObject:v68 forKeyedSubscript:@"_totalDailyDwellRural"];

  v69 = MEMORY[0x277CCABB0];
  v70 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v71 = [v70 objectForKeyedSubscript:&unk_28459EBF8];
  [v71 doubleValue];
  v72 = [v69 numberWithDouble:?];
  v73 = [RTMetric binForNumber:v72 bins:v5];
  [v8 setObject:v73 forKeyedSubscript:@"_totalDailyDwellUrban"];

  v74 = MEMORY[0x277CCABB0];
  v75 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v76 = [v75 objectForKeyedSubscript:&unk_28459EC10];
  [v76 doubleValue];
  v77 = [v74 numberWithDouble:?];
  v78 = [RTMetric binForNumber:v77 bins:v5];
  [v8 setObject:v78 forKeyedSubscript:@"_totalDailyDwellDenseUrban"];

  v79 = MEMORY[0x277CCABB0];
  v80 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v81 = [v80 objectForKeyedSubscript:&unk_28459EC28];
  [v81 doubleValue];
  v82 = [v79 numberWithDouble:?];
  v83 = [RTMetric binForNumber:v82 bins:v5];
  [v8 setObject:v83 forKeyedSubscript:@"_totalDailyDwellDenseUrbanCanyon"];

  v84 = MEMORY[0x277CCABB0];
  v85 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v86 = [v85 objectForKeyedSubscript:&unk_28459EB50];
  [v86 doubleValue];
  v87 = [v84 numberWithDouble:?];
  v88 = [RTMetric binForNumber:v87 bins:v5];
  [v8 setObject:v88 forKeyedSubscript:@"_totalDailyDurationStationary"];

  v89 = MEMORY[0x277CCABB0];
  v90 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v91 = [v90 objectForKeyedSubscript:&unk_28459EB68];
  [v91 doubleValue];
  v92 = [v89 numberWithDouble:?];
  v93 = [RTMetric binForNumber:v92 bins:v5];
  [v8 setObject:v93 forKeyedSubscript:@"_totalDailyDurationWalking"];

  v94 = MEMORY[0x277CCABB0];
  v95 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v96 = [v95 objectForKeyedSubscript:&unk_28459EB80];
  [v96 doubleValue];
  v97 = [v94 numberWithDouble:?];
  v98 = [RTMetric binForNumber:v97 bins:v5];
  [v8 setObject:v98 forKeyedSubscript:@"_totalDailyDurationRunning"];

  v99 = MEMORY[0x277CCABB0];
  v100 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v101 = [v100 objectForKeyedSubscript:&unk_28459EBB0];
  [v101 doubleValue];
  v102 = [v99 numberWithDouble:?];
  v103 = [RTMetric binForNumber:v102 bins:v5];
  [v8 setObject:v103 forKeyedSubscript:@"_totalDailyDurationCycling"];

  v104 = MEMORY[0x277CCABB0];
  v105 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v106 = [v105 objectForKeyedSubscript:&unk_28459EB98];
  [v106 doubleValue];
  v107 = [v104 numberWithDouble:?];
  v108 = [RTMetric binForNumber:v107 bins:v5];
  [v8 setObject:v108 forKeyedSubscript:@"_totalDailyDurationDriving"];

  v109 = MEMORY[0x277CCABB0];
  v110 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v111 = [v110 objectForKeyedSubscript:&unk_28459EBC8];
  [v111 doubleValue];
  v112 = [v109 numberWithDouble:?];
  v113 = [RTMetric binForNumber:v112 bins:v5];
  [v8 setObject:v113 forKeyedSubscript:@"_totalDailyDurationMoving"];

  v114 = MEMORY[0x277CCABB0];
  v115 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v116 = [v115 objectForKeyedSubscript:&unk_28459EB38];
  [v116 doubleValue];
  v117 = [v114 numberWithDouble:?];
  v118 = [RTMetric binForNumber:v117 bins:v5];
  [v8 setObject:v118 forKeyedSubscript:@"_totalDailyDurationUnknownMotionActivity"];

  return v8;
}

- (void)submitMetrics
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, start", &v11, 0xCu);
    }
  }

  v6 = [MEMORY[0x277CBEAA8] now];
  [(RTLocationAwarenessMetricManager *)self processMetrics];
  [(RTLocationAwarenessMetricManager *)self processLastBout];
  [(RTLocationAwarenessMetricManager *)self processLastDailyMetrics];
  [(RTLocationAwarenessMetricManager *)self submitDailyMetricsToCoreAnalytics];
  [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v9 = [MEMORY[0x277CBEAA8] date];
      [v9 timeIntervalSinceDate:v6];
      v11 = 138412546;
      v12 = v8;
      v13 = 2048;
      v14 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, finished, latency, %.2f", &v11, 0x16u);
    }
  }
}

- (void)submitBoutMetricsToCoreAnalytics
{
  v27 = *MEMORY[0x277D85DE8];
  if (-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType") == 1 || (-[RTLocationAwarenessMetricManager boutStateCurrBoutEnd](self, "boutStateCurrBoutEnd"), v4 = objc_claimAutoreleasedReturnValue(), -[RTLocationAwarenessMetricManager boutStateCurrBoutStart](self, "boutStateCurrBoutStart"), v5 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceDate:v5], v7 = v6, v5, v4, v7 >= 1200.0))
  {
    [(RTLocationAwarenessMetricManager *)self updateBoutMetricsStateChangeEdgeDwell];
    v8 = [(RTLocationAwarenessMetricManager *)self collectBoutMetrics];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        v11 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
        v12 = [v11 stringFromDate];
        v13 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
        v14 = [v13 stringFromDate];
        v15 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
        *buf = 138413058;
        v20 = v10;
        v21 = 2112;
        v22 = v12;
        v23 = 2112;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, bout start, %@, bout end %@, motion dwell %@", buf, 0x2Au);
      }
    }

    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = [v16 initWithCString:RTAnalyticsEventLocationAwarenessBoutMetrics encoding:1];
    log_analytics_submission(v17, v8);
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v17];
    AnalyticsSendEvent();
  }

  [(RTLocationAwarenessMetricManager *)self resetBoutMetrics];
}

- (void)submitDailyMetricsToCoreAnalytics
{
  v5 = [(RTLocationAwarenessMetricManager *)self collectDailyMetrics];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v2 initWithCString:RTAnalyticsEventLocationAwarenessDailyMetrics encoding:1];
  log_analytics_submission(v3, v5);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v3];
  AnalyticsSendEvent();
}

@end