@interface RTLocationAwarenessMetricManager
- (RTLocationAwarenessMetricManager)initWithLocationManager:(id)manager motionManager:(id)motionManager learnedLocationStore:(id)store startDate:(id)date endDate:(id)endDate;
- (double)distanceToNearestSensitiveLocation:(id)location;
- (id)collectBoutMetrics;
- (id)collectDailyMetrics;
- (id)createBoutDictionary;
- (id)createMotionDictionary;
- (id)createSignalEnvironmentDictionary;
- (id)locationsAndMotionsForDateInterval:(id)interval;
- (id)sensitiveLocationsOfInterestWithError:(id *)error;
- (void)addDwellForMotionType:(unint64_t)type startDate:(id)date endDate:(id)endDate motionDwellMetrics:(id)metrics longestDwell:(id)dwell boutCounts:(id)counts;
- (void)addDwellForSignalEnvironmentType:(int)type startDate:(id)date endDate:(id)endDate sigEnvMetrics:(id)metrics;
- (void)flushBufferToCurrBoutMetrics;
- (void)monitorStateChange:(id)change;
- (void)processLastBout;
- (void)processLastDailyMetrics;
- (void)processMetrics;
- (void)resetBoutMetrics;
- (void)resetBuffer;
- (void)setup;
- (void)submitBoutMetricsToCoreAnalytics;
- (void)submitDailyMetricsToCoreAnalytics;
- (void)submitMetrics;
- (void)updateBoutMetricsForLocation:(id)location;
- (void)updateBoutMetricsForMotion:(id)motion;
- (void)updateBoutMetricsStateChangeEdgeDwell;
- (void)updateDailyMetrics:(id)metrics;
- (void)updateStateVariables:(id)variables;
@end

@implementation RTLocationAwarenessMetricManager

- (RTLocationAwarenessMetricManager)initWithLocationManager:(id)manager motionManager:(id)motionManager learnedLocationStore:(id)store startDate:(id)date endDate:(id)endDate
{
  managerCopy = manager;
  motionManagerCopy = motionManager;
  storeCopy = store;
  dateCopy = date;
  endDateCopy = endDate;
  v26 = endDateCopy;
  if (!managerCopy)
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

  if (!motionManagerCopy)
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

  if (!storeCopy)
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

  if (!dateCopy)
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

  if (!endDateCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: endDate";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v27.receiver = self;
  v27.super_class = RTLocationAwarenessMetricManager;
  v18 = [(RTLocationAwarenessMetricManager *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_locationManager, manager);
    objc_storeStrong(&v19->_motionManager, motionManager);
    objc_storeStrong(&v19->_learnedLocationStore, store);
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    v20 = objc_opt_new();
    distanceCalculator = v19->_distanceCalculator;
    v19->_distanceCalculator = v20;

    [(RTLocationAwarenessMetricManager *)v19 setup];
  }

  self = v19;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (void)setup
{
  v80[1] = *MEMORY[0x277D85DE8];
  createSignalEnvironmentDictionary = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateSignalEnvironmentDwell:createSignalEnvironmentDictionary];

  createMotionDictionary = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionDwell:createMotionDictionary];

  createMotionDictionary2 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionLongestDwell:createMotionDictionary2];

  createMotionDictionary3 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionTypeNumBouts:createMotionDictionary3];

  [(RTLocationAwarenessMetricManager *)self setBoutStateMotion:0];
  [(RTLocationAwarenessMetricManager *)self setBoutStateWifi:0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricType:0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumWifiLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumGPSLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricNumOtherLocationsInBout:0.0];
  startDate = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:startDate];

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:distantFuture];

  [(RTLocationAwarenessMetricManager *)self setBoutMetricDistanceToSensitiveLocation:-1.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferDistanceToSensitiveLocation:-1.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeDwell:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeType:0];
  createMotionDictionary4 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionDwell:createMotionDictionary4];

  createMotionDictionary5 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionLongestDwell:createMotionDictionary5];

  createMotionDictionary6 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionBoutCounts:createMotionDictionary6];

  createSignalEnvironmentDictionary2 = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferSignalEnvironmentDwell:createSignalEnvironmentDictionary2];

  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired1mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired2mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired5mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired10mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumAdditionalFixesPerHourRequired15mDutyCycle:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumGPSLocationsInBout:0.0];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferNumOtherLocationsInBout:0.0];
  createSignalEnvironmentDictionary3 = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateSignalEnvironmentDwell:createSignalEnvironmentDictionary3];

  createMotionDictionary7 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateMotionDwell:createMotionDictionary7];

  createBoutDictionary = [(RTLocationAwarenessMetricManager *)self createBoutDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateBoutCounts:createBoutDictionary];

  createBoutDictionary2 = [(RTLocationAwarenessMetricManager *)self createBoutDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateBoutDwell:createBoutDictionary2];

  createBoutDictionary3 = [(RTLocationAwarenessMetricManager *)self createBoutDictionary];
  [(RTLocationAwarenessMetricManager *)self setDailyStateBoutLongestDwell:createBoutDictionary3];

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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v33 = [callStackSymbols filteredArrayUsingPredicate:v31];
    firstObject = [v33 firstObject];

    [v30 submitToCoreAnalytics:firstObject type:1 duration:v29];
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
        firstObject2 = [v64[5] firstObject];
        v57 = v70[5];
        *buf = 138412546;
        *&buf[4] = firstObject2;
        v76 = 2112;
        v77 = v57;
        _os_log_debug_impl(&dword_2304B3000, v42, OS_LOG_TYPE_DEBUG, "initializing motion activity to, %@, error, %@", buf, 0x16u);
      }
    }

    firstObject3 = [v64[5] firstObject];
    -[RTLocationAwarenessMetricManager setStateVariableCurrMotionActivityType:](self, "setStateVariableCurrMotionActivityType:", [firstObject3 type]);
  }

  startDate2 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariableCurrMotionStart:startDate2];

  [(RTLocationAwarenessMetricManager *)self setStateVariableCurrSignalEnvironmentType:0];
  startDate3 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariableLastSettledStateChangeTimestamp:startDate3];

  startDate4 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariableLastWifiStateChangeTimestamp:startDate4];

  startDate5 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariablePrevLocationTimestamp:startDate5];

  startDate6 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariablePrevWifiLocationTimestamp:startDate6];

  startDate7 = [(RTLocationAwarenessMetricManager *)self startDate];
  [(RTLocationAwarenessMetricManager *)self setStateVariableLastSensitiveLocationCheckTimestamp:startDate7];

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
  createSignalEnvironmentDictionary = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateSignalEnvironmentDwell:createSignalEnvironmentDictionary];

  createMotionDictionary = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionLongestDwell:createMotionDictionary];

  createMotionDictionary2 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionTypeNumBouts:createMotionDictionary2];

  createMotionDictionary3 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutStateMotionDwell:createMotionDictionary3];

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
  createSignalEnvironmentDictionary = [(RTLocationAwarenessMetricManager *)self createSignalEnvironmentDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferSignalEnvironmentDwell:createSignalEnvironmentDictionary];

  createMotionDictionary = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionDwell:createMotionDictionary];

  createMotionDictionary2 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionLongestDwell:createMotionDictionary2];

  createMotionDictionary3 = [(RTLocationAwarenessMetricManager *)self createMotionDictionary];
  [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionBoutCounts:createMotionDictionary3];

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

- (id)locationsAndMotionsForDateInterval:(id)interval
{
  v98[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__108;
  v80 = __Block_byref_object_dispose__108;
  v81 = objc_opt_new();
  v5 = dispatch_semaphore_create(0);
  v6 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:intervalCopy horizontalAccuracy:3600 batchSize:0 boundingBoxLocation:250.0];
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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
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
      stringFromDate = [startDate stringFromDate];
      stringFromDate2 = [endDate stringFromDate];
      v54 = v71[5];
      *buf = 134218754;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      *&buf[14] = stringFromDate;
      *&buf[22] = 2112;
      v96 = stringFromDate2;
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
  [(RTMotionActivityManager *)motionManager fetchMotionActivitiesFromStartDate:startDate endDate:endDate handler:v62];
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
  callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v39 = [callStackSymbols2 filteredArrayUsingPredicate:v37];
  firstObject2 = [v39 firstObject];

  [v36 submitToCoreAnalytics:firstObject2 type:1 duration:v35];
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
      stringFromDate3 = [startDate stringFromDate];
      stringFromDate4 = [endDate stringFromDate];
      v58 = *(*&buf[8] + 40);
      *v82 = 134218754;
      *&v82[4] = v55;
      v83 = 2112;
      v84 = stringFromDate3;
      v85 = 2112;
      v86 = stringFromDate4;
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

- (id)sensitiveLocationsOfInterestWithError:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
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
      unsignedIntegerValue = [v5 unsignedIntegerValue];
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
      [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestWithPlaceType:unsignedIntegerValue handler:v40];
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
        if (error)
        {
          v29 = v28;
          *error = v28;
        }
      }

      else if (v46[5])
      {
        [array addObjectsFromArray:?];
      }

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v51, 8);

      if (v28)
      {
        v31 = 0;
        v30 = array;
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
  v30 = array;
  v31 = array;
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

- (void)addDwellForMotionType:(unint64_t)type startDate:(id)date endDate:(id)endDate motionDwellMetrics:(id)metrics longestDwell:(id)dwell boutCounts:(id)counts
{
  dateCopy = date;
  endDateCopy = endDate;
  metricsCopy = metrics;
  dwellCopy = dwell;
  countsCopy = counts;
  [endDateCopy timeIntervalSinceDate:dateCopy];
  if (v18 < 0.0)
  {
    goto LABEL_17;
  }

  [dateCopy timeIntervalSinceDate:self->_endDate];
  if (v19 >= 0.0)
  {
    goto LABEL_17;
  }

  if ([(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType]== type)
  {
    boutStateCurrBoutStart = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    if (([dateCopy isEqualToDate:boutStateCurrBoutStart] & 1) == 0)
    {
      startDate = [(RTLocationAwarenessMetricManager *)self startDate];
      if (([dateCopy isEqualToDate:startDate] & 1) == 0)
      {
        boutStateCurrBoutEnd = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
        if (![endDateCopy isEqualToDate:boutStateCurrBoutEnd])
        {
          endDate = [(RTLocationAwarenessMetricManager *)self endDate];
          v47 = [endDateCopy isEqualToDate:endDate];

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
  v23 = [endDateCopy earlierDate:self->_endDate];
  [v23 timeIntervalSinceDate:dateCopy];
  v25 = v24;

  v26 = MEMORY[0x277CCABB0];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
  v28 = [metricsCopy objectForKeyedSubscript:v27];
  [v28 doubleValue];
  v30 = [v26 numberWithDouble:v25 + v29];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
  [metricsCopy setObject:v30 forKeyedSubscript:v31];

  if ([dwellCopy count])
  {
    v32 = MEMORY[0x277CCABB0];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
    v34 = [dwellCopy objectForKeyedSubscript:v33];
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
    [dwellCopy setObject:v38 forKeyedSubscript:v39];
  }

  if ([countsCopy count])
  {
    v40 = MEMORY[0x277CCABB0];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
    v42 = [countsCopy objectForKeyedSubscript:v41];
    [v42 doubleValue];
    v44 = [v40 numberWithDouble:v43 + 1.0];
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType")}];
    [countsCopy setObject:v44 forKeyedSubscript:v45];
  }

LABEL_17:
}

- (void)addDwellForSignalEnvironmentType:(int)type startDate:(id)date endDate:(id)endDate sigEnvMetrics:(id)metrics
{
  v8 = *&type;
  dateCopy = date;
  endDateCopy = endDate;
  metricsCopy = metrics;
  stateVariablePrevLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  startDate = [(RTLocationAwarenessMetricManager *)self startDate];
  v14 = [stateVariablePrevLocationTimestamp isEqualToDate:startDate];

  if (v14)
  {
    [(RTLocationAwarenessMetricManager *)self setStateVariableCurrSignalEnvironmentType:v8];
  }

  if ([(RTLocationAwarenessMetricManager *)self stateVariableCurrSignalEnvironmentType]== v8)
  {
    [endDateCopy timeIntervalSinceDate:dateCopy];
    v16 = v15;
    v17 = MEMORY[0x277CCABB0];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v19 = [metricsCopy objectForKeyedSubscript:v18];
    [v19 doubleValue];
    v21 = [v17 numberWithDouble:v16 + v20];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    [metricsCopy setObject:v21 forKeyedSubscript:v22];
  }

  else
  {
    stateVariablePrevLocationTimestamp2 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
    [endDateCopy timeIntervalSinceDate:stateVariablePrevLocationTimestamp2];
    v25 = v24;

    v26 = MEMORY[0x277CBEAA8];
    stateVariablePrevLocationTimestamp3 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
    v18 = [v26 dateWithTimeInterval:stateVariablePrevLocationTimestamp3 sinceDate:v25 * 0.5];

    v28 = [dateCopy laterDate:v18];
    [v28 timeIntervalSinceDate:dateCopy];
    v30 = v29;

    [endDateCopy timeIntervalSinceDate:v18];
    v32 = v31;
    v33 = MEMORY[0x277CCABB0];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
    v35 = [metricsCopy objectForKeyedSubscript:v34];
    [v35 doubleValue];
    v37 = [v33 numberWithDouble:v30 + v36];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
    [metricsCopy setObject:v37 forKeyedSubscript:v38];

    v39 = MEMORY[0x277CCABB0];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v21 = [metricsCopy objectForKeyedSubscript:v19];
    [v21 doubleValue];
    v22 = [v39 numberWithDouble:v32 + v40];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    [metricsCopy setObject:v22 forKeyedSubscript:v41];
  }
}

- (double)distanceToNearestSensitiveLocation:(id)location
{
  v31 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  sensitiveLocations = self->_sensitiveLocations;
  v6 = -1.0;
  if (sensitiveLocations && [(NSArray *)sensitiveLocations count])
  {
    v7 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:locationCopy];
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
          v30 = locationCopy;
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
        boutStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
        v9 = [boutStateSignalEnvironmentDwell objectForKeyedSubscript:v6];
        [v9 doubleValue];
        v11 = v10;
        boutBufferSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self boutBufferSignalEnvironmentDwell];
        v13 = [boutBufferSignalEnvironmentDwell objectForKeyedSubscript:v6];
        [v13 doubleValue];
        v15 = [v7 numberWithDouble:v11 + v14];
        boutStateSignalEnvironmentDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
        [boutStateSignalEnvironmentDwell2 setObject:v15 forKeyedSubscript:v6];

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
  boutBufferMotionLongestDwell = [(RTLocationAwarenessMetricManager *)self boutBufferMotionLongestDwell];
  v17 = [boutBufferMotionLongestDwell countByEnumeratingWithState:&v126 objects:v136 count:16];
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
          objc_enumerationMutation(boutBufferMotionLongestDwell);
        }

        v21 = *(*(&v126 + 1) + 8 * v20);
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutBufferMotionEdgeType](self, "boutBufferMotionEdgeType")}];
        if (([v21 isEqualToNumber:v22] & 1) == 0)
        {

LABEL_21:
          v33 = MEMORY[0x277CCABB0];
          boutStateMotionLongestDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
          v41 = [boutStateMotionLongestDwell objectForKeyedSubscript:v21];
          [v41 doubleValue];
          v43 = v42;

          boutBufferMotionLongestDwell2 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionLongestDwell];
          v45 = [boutBufferMotionLongestDwell2 objectForKeyedSubscript:v21];
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

        boutStateMotionDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
        v24 = [boutStateMotionDwell objectForKeyedSubscript:v21];
        v25 = [v24 isEqualToNumber:&unk_28459EB20];

        if (v25)
        {
          goto LABEL_21;
        }

        [(RTLocationAwarenessMetricManager *)self boutBufferMotionEdgeDwell];
        v27 = v26;
        boutStateMotionLongestDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutBufferMotionEdgeType](self, "boutBufferMotionEdgeType")}];
        v30 = [boutStateMotionLongestDwell2 objectForKeyedSubscript:v29];
        [v30 doubleValue];
        v32 = v31;

        if (v27 >= v32)
        {
          v32 = v27;
        }

        v33 = MEMORY[0x277CCABB0];
        boutBufferMotionLongestDwell3 = [(RTLocationAwarenessMetricManager *)self boutBufferMotionLongestDwell];
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutBufferMotionEdgeType](self, "boutBufferMotionEdgeType")}];
        v36 = [boutBufferMotionLongestDwell3 objectForKeyedSubscript:v35];
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
        boutStateMotionLongestDwell3 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
        [boutStateMotionLongestDwell3 setObject:v48 forKeyedSubscript:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [boutBufferMotionLongestDwell countByEnumeratingWithState:&v126 objects:v136 count:16];
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
        boutStateMotionTypeNumBouts = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
        v57 = [boutStateMotionTypeNumBouts objectForKeyedSubscript:v53];
        [v57 doubleValue];
        v67 = v66;
        boutBufferMotionBoutCounts = [(RTLocationAwarenessMetricManager *)self boutBufferMotionBoutCounts];
        boutStateMotionTypeNumBouts3 = [boutBufferMotionBoutCounts objectForKeyedSubscript:v53];
        [boutStateMotionTypeNumBouts3 doubleValue];
        v69 = [v65 numberWithDouble:v67 + v68];
        boutStateMotionTypeNumBouts2 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
        [boutStateMotionTypeNumBouts2 setObject:v69 forKeyedSubscript:v53];

LABEL_36:
        goto LABEL_37;
      }

      boutStateMotionTypeNumBouts = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
      v57 = [boutStateMotionTypeNumBouts objectForKeyedSubscript:v53];
      if ([v57 isEqualToNumber:&unk_28459EB20])
      {
        stateVariableLastSettledStateChangeTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
        boutStateCurrBoutStart = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
        v60 = [stateVariableLastSettledStateChangeTimestamp isEqualToDate:boutStateCurrBoutStart];

        if (v60)
        {
          goto LABEL_38;
        }

        v61 = MEMORY[0x277CCABB0];
        boutStateMotionTypeNumBouts = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
        v57 = [boutStateMotionTypeNumBouts objectForKeyedSubscript:v53];
        [v57 doubleValue];
        boutBufferMotionBoutCounts = [v61 numberWithDouble:v62 + 1.0];
        boutStateMotionTypeNumBouts3 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
        [boutStateMotionTypeNumBouts3 setObject:boutBufferMotionBoutCounts forKeyedSubscript:v53];
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
        boutStateMotionDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
        v78 = [boutStateMotionDwell2 objectForKeyedSubscript:v74];
        [v78 doubleValue];
        v80 = v79;
        boutBufferMotionDwell = [(RTLocationAwarenessMetricManager *)self boutBufferMotionDwell];
        v82 = [boutBufferMotionDwell objectForKeyedSubscript:v74];
        [v82 doubleValue];
        v84 = [v76 numberWithDouble:v80 + v83];
        boutStateMotionDwell3 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
        [boutStateMotionDwell3 setObject:v84 forKeyedSubscript:v74];

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

- (void)updateBoutMetricsForLocation:(id)location
{
  locationCopy = location;
  timestamp = [locationCopy timestamp];
  stateVariablePrevLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  boutStateCurrBoutStart = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v7 = [stateVariablePrevLocationTimestamp laterDate:boutStateCurrBoutStart];
  [timestamp timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = (v9 + -1.0) / 60.0;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  v11 = v10;
  if ([locationCopy type] == 4 || objc_msgSend(locationCopy, "type") == 11)
  {
    boutStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
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
    timestamp2 = [locationCopy timestamp];
    stateVariableLastSensitiveLocationCheckTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariableLastSensitiveLocationCheckTimestamp];
    [timestamp2 timeIntervalSinceDate:stateVariableLastSensitiveLocationCheckTimestamp];
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

    [(RTLocationAwarenessMetricManager *)self distanceToNearestSensitiveLocation:locationCopy];
    v28 = v27;
    [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
    selfCopy2 = self;
    if (v30 >= 0.0)
    {
      [(RTLocationAwarenessMetricManager *)self boutMetricDistanceToSensitiveLocation];
      if (v31 >= v28)
      {
        v31 = v28;
      }

      selfCopy2 = self;
    }

    else
    {
      v31 = v28;
    }

    [(RTLocationAwarenessMetricManager *)selfCopy2 setBoutMetricDistanceToSensitiveLocation:v31];
  }

  else
  {
    boutStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self boutBufferSignalEnvironmentDwell];
    if ([locationCopy type] == 1 || objc_msgSend(locationCopy, "type") == 9)
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
    timestamp3 = [locationCopy timestamp];
    stateVariableLastSensitiveLocationCheckTimestamp2 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSensitiveLocationCheckTimestamp];
    [timestamp3 timeIntervalSinceDate:stateVariableLastSensitiveLocationCheckTimestamp2];
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

    [(RTLocationAwarenessMetricManager *)self distanceToNearestSensitiveLocation:locationCopy];
    v48 = v47;
    [(RTLocationAwarenessMetricManager *)self boutBufferDistanceToSensitiveLocation];
    selfCopy4 = self;
    if (v50 >= 0.0)
    {
      [(RTLocationAwarenessMetricManager *)self boutBufferDistanceToSensitiveLocation];
      if (v51 >= v48)
      {
        v51 = v48;
      }

      selfCopy4 = self;
    }

    else
    {
      v51 = v48;
    }

    [(RTLocationAwarenessMetricManager *)selfCopy4 setBoutBufferDistanceToSensitiveLocation:v51];
  }

LABEL_29:
  signalEnvironmentType = [locationCopy signalEnvironmentType];
  stateVariablePrevLocationTimestamp2 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  boutStateCurrBoutStart2 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v55 = [stateVariablePrevLocationTimestamp2 laterDate:boutStateCurrBoutStart2];
  timestamp4 = [locationCopy timestamp];
  [(RTLocationAwarenessMetricManager *)self addDwellForSignalEnvironmentType:signalEnvironmentType startDate:v55 endDate:timestamp4 sigEnvMetrics:boutStateSignalEnvironmentDwell];
}

- (void)updateBoutMetricsForMotion:(id)motion
{
  motionCopy = motion;
  type = [motionCopy type];
  if (type != [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType])
  {
    stateVariableCurrMotionStart = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
    stateVariablePrevWifiLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [stateVariableCurrMotionStart timeIntervalSinceDate:stateVariablePrevWifiLocationTimestamp];
    v8 = v7;

    if (v8 >= 0.0)
    {
      type2 = [motionCopy type];
      [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
    }

    else
    {
      startDate = [motionCopy startDate];
      stateVariableCurrMotionStart2 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
      boutStateCurrBoutStart = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
      v12 = [stateVariableCurrMotionStart2 laterDate:boutStateCurrBoutStart];
      [startDate timeIntervalSinceDate:v12];
      [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeDwell:?];

      [(RTLocationAwarenessMetricManager *)self setBoutBufferMotionEdgeType:[(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType]];
      type3 = [motionCopy type];
      stateVariableCurrMotionStart3 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
      boutStateCurrBoutStart2 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
      v16 = [stateVariableCurrMotionStart3 laterDate:boutStateCurrBoutStart2];
      stateVariablePrevWifiLocationTimestamp2 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
      boutStateMotionDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
      boutStateMotionLongestDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
      [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:type3 startDate:v16 endDate:stateVariablePrevWifiLocationTimestamp2 motionDwellMetrics:boutStateMotionDwell longestDwell:boutStateMotionLongestDwell boutCounts:0];

      type2 = [motionCopy type];
      [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    }
    v21 = ;
    boutStateCurrBoutStart3 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    v23 = [v21 laterDate:boutStateCurrBoutStart3];
    startDate2 = [motionCopy startDate];
    boutBufferMotionDwell = [(RTLocationAwarenessMetricManager *)self boutBufferMotionDwell];
    boutBufferMotionLongestDwell = [(RTLocationAwarenessMetricManager *)self boutBufferMotionLongestDwell];
    boutBufferMotionBoutCounts = [(RTLocationAwarenessMetricManager *)self boutBufferMotionBoutCounts];
    [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:type2 startDate:v23 endDate:startDate2 motionDwellMetrics:boutBufferMotionDwell longestDwell:boutBufferMotionLongestDwell boutCounts:boutBufferMotionBoutCounts];
  }
}

- (void)updateBoutMetricsStateChangeEdgeDwell
{
  boutStateCurrBoutEnd = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  boutStateCurrBoutStart = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  [boutStateCurrBoutEnd timeIntervalSinceDate:boutStateCurrBoutStart];
  [(RTLocationAwarenessMetricManager *)self setBoutMetricDuration:?];

  v5 = MEMORY[0x277CCABB0];
  dailyStateBoutCounts = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  v8 = [dailyStateBoutCounts objectForKeyedSubscript:v7];
  [v8 doubleValue];
  v10 = [v5 numberWithDouble:v9 + 1.0];
  dailyStateBoutCounts2 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  [dailyStateBoutCounts2 setObject:v10 forKeyedSubscript:v12];

  v13 = MEMORY[0x277CCABB0];
  dailyStateBoutDwell = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  v16 = [dailyStateBoutDwell objectForKeyedSubscript:v15];
  [v16 doubleValue];
  v18 = v17;
  [(RTLocationAwarenessMetricManager *)self boutMetricDuration];
  v20 = [v13 numberWithDouble:v18 + v19];
  dailyStateBoutDwell2 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  [dailyStateBoutDwell2 setObject:v20 forKeyedSubscript:v22];

  v23 = MEMORY[0x277CCABB0];
  dailyStateBoutLongestDwell = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  v26 = [dailyStateBoutLongestDwell objectForKeyedSubscript:v25];
  [v26 doubleValue];
  v28 = v27;

  [(RTLocationAwarenessMetricManager *)self boutMetricDuration];
  if (v28 >= v29)
  {
    v29 = v28;
  }

  v30 = [v23 numberWithDouble:v29];
  dailyStateBoutLongestDwell2 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLocationAwarenessMetricManager boutMetricType](self, "boutMetricType")}];
  [dailyStateBoutLongestDwell2 setObject:v30 forKeyedSubscript:v32];

  boutStateCurrBoutEnd2 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  stateVariablePrevLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  boutStateCurrBoutStart2 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v36 = [stateVariablePrevLocationTimestamp laterDate:boutStateCurrBoutStart2];
  [boutStateCurrBoutEnd2 timeIntervalSinceDate:v36];
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
  boutStateCurrBoutEnd3 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  stateVariableLastWifiStateChangeTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariableLastWifiStateChangeTimestamp];
  LODWORD(v45) = [boutStateCurrBoutEnd3 isEqualToDate:stateVariableLastWifiStateChangeTimestamp];

  if (v45)
  {
    stateVariableCurrMotionActivityType = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType];
    stateVariableCurrMotionStart = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
    boutStateCurrBoutStart3 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    v54 = [stateVariableCurrMotionStart laterDate:boutStateCurrBoutStart3];
    boutStateCurrBoutEnd4 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
    boutStateMotionDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    boutStateMotionLongestDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
    boutStateMotionTypeNumBouts = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:stateVariableCurrMotionActivityType startDate:v54 endDate:boutStateCurrBoutEnd4 motionDwellMetrics:boutStateMotionDwell longestDwell:boutStateMotionLongestDwell boutCounts:boutStateMotionTypeNumBouts];
  }

  boutStateCurrBoutEnd5 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  stateVariableLastSettledStateChangeTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
  v61 = [boutStateCurrBoutEnd5 isEqualToDate:stateVariableLastSettledStateChangeTimestamp];

  if (v61)
  {
    boutStateCurrBoutEnd6 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
    stateVariablePrevLocationTimestamp2 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
    boutStateCurrBoutStart4 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    v65 = [stateVariablePrevLocationTimestamp2 laterDate:boutStateCurrBoutStart4];
    [boutStateCurrBoutEnd6 timeIntervalSinceDate:v65];
    v67 = v66;

    v68 = MEMORY[0x277CCABB0];
    boutStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
    v70 = [boutStateSignalEnvironmentDwell objectForKeyedSubscript:v69];
    [v70 doubleValue];
    v72 = [v68 numberWithDouble:v67 + v71];
    boutStateSignalEnvironmentDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
    [boutStateSignalEnvironmentDwell2 setObject:v72 forKeyedSubscript:v74];
  }
}

- (void)processLastBout
{
  if ([(RTLocationAwarenessMetricManager *)self boutStateWifi]== 2)
  {
    endDate = [(RTLocationAwarenessMetricManager *)self endDate];
    stateVariablePrevWifiLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [endDate timeIntervalSinceDate:stateVariablePrevWifiLocationTimestamp];
    v6 = v5;

    if (v6 > 1200.0)
    {
      stateVariablePrevWifiLocationTimestamp2 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
      [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:stateVariablePrevWifiLocationTimestamp2];

      stateVariableCurrMotionActivityType = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType];
      stateVariableCurrMotionStart = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
      boutStateCurrBoutStart = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
      v11 = [stateVariableCurrMotionStart laterDate:boutStateCurrBoutStart];
      boutStateCurrBoutEnd = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
      boutStateMotionDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
      boutStateMotionLongestDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
      [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:stateVariableCurrMotionActivityType startDate:v11 endDate:boutStateCurrBoutEnd motionDwellMetrics:boutStateMotionDwell longestDwell:boutStateMotionLongestDwell boutCounts:0];

      [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
      [(RTLocationAwarenessMetricManager *)self setBoutMetricType:2];
    }
  }

  [(RTLocationAwarenessMetricManager *)self flushBufferToCurrBoutMetrics];
  if ([(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType]== 1)
  {
    stateVariableLastSettledStateChangeTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:stateVariableLastSettledStateChangeTimestamp];
    v16 = 1;
LABEL_10:

    goto LABEL_11;
  }

  stateVariablePrevWifiLocationTimestamp3 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
  stateVariableLastSettledStateChangeTimestamp2 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
  v19 = [stateVariablePrevWifiLocationTimestamp3 laterDate:stateVariableLastSettledStateChangeTimestamp2];
  [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:v19];

  stateVariableLastSettledStateChangeTimestamp = [(RTLocationAwarenessMetricManager *)self endDate];
  stateVariablePrevWifiLocationTimestamp4 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
  [stateVariableLastSettledStateChangeTimestamp timeIntervalSinceDate:stateVariablePrevWifiLocationTimestamp4];
  if (v21 <= 1200.0)
  {
LABEL_9:

    v16 = 3;
    goto LABEL_10;
  }

  stateVariablePrevWifiLocationTimestamp5 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
  stateVariableLastSettledStateChangeTimestamp3 = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
  [stateVariablePrevWifiLocationTimestamp5 timeIntervalSinceDate:stateVariableLastSettledStateChangeTimestamp3];
  if (v24 > 0.0)
  {

    goto LABEL_9;
  }

  boutStateWifi = [(RTLocationAwarenessMetricManager *)self boutStateWifi];

  if (boutStateWifi == 2)
  {
    stateVariablePrevWifiLocationTimestamp6 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:stateVariablePrevWifiLocationTimestamp6];

    [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
    stateVariableLastSettledStateChangeTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:stateVariableLastSettledStateChangeTimestamp];
    v16 = 2;
    goto LABEL_10;
  }

  v16 = 3;
LABEL_11:
  [(RTLocationAwarenessMetricManager *)self setBoutMetricType:v16];
  endDate2 = [(RTLocationAwarenessMetricManager *)self endDate];
  [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:endDate2];

  stateVariableCurrSignalEnvironmentType = [(RTLocationAwarenessMetricManager *)self stateVariableCurrSignalEnvironmentType];
  stateVariablePrevLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  boutStateCurrBoutStart2 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v29 = [stateVariablePrevLocationTimestamp laterDate:boutStateCurrBoutStart2];
  endDate3 = [(RTLocationAwarenessMetricManager *)self endDate];
  boutStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
  [(RTLocationAwarenessMetricManager *)self addDwellForSignalEnvironmentType:stateVariableCurrSignalEnvironmentType startDate:v29 endDate:endDate3 sigEnvMetrics:boutStateSignalEnvironmentDwell];

  stateVariableCurrMotionActivityType2 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType];
  stateVariableCurrMotionStart2 = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
  boutStateCurrBoutStart3 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  v35 = [stateVariableCurrMotionStart2 laterDate:boutStateCurrBoutStart3];
  endDate4 = [(RTLocationAwarenessMetricManager *)self endDate];
  boutStateMotionDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
  boutStateMotionLongestDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
  [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:stateVariableCurrMotionActivityType2 startDate:v35 endDate:endDate4 motionDwellMetrics:boutStateMotionDwell2 longestDwell:boutStateMotionLongestDwell2 boutCounts:0];

  [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
}

- (void)updateDailyMetrics:(id)metrics
{
  metricsCopy = metrics;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = metricsCopy;
    signalEnvironmentType = [v4 signalEnvironmentType];
    stateVariablePrevLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
    timestamp = [v4 timestamp];

    dailyStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
    [(RTLocationAwarenessMetricManager *)self addDwellForSignalEnvironmentType:signalEnvironmentType startDate:stateVariablePrevLocationTimestamp endDate:timestamp sigEnvMetrics:dailyStateSignalEnvironmentDwell];
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stateVariablePrevLocationTimestamp = metricsCopy;
    type = [stateVariablePrevLocationTimestamp type];
    if (type == [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType])
    {
      goto LABEL_4;
    }

    type2 = [stateVariablePrevLocationTimestamp type];
    timestamp = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
    dailyStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self startDate];
    v11 = [timestamp laterDate:dailyStateSignalEnvironmentDwell];
    startDate = [stateVariablePrevLocationTimestamp startDate];
    dailyStateMotionDwell = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
    [(RTLocationAwarenessMetricManager *)self addDwellForMotionType:type2 startDate:v11 endDate:startDate motionDwellMetrics:dailyStateMotionDwell longestDwell:0 boutCounts:0];

LABEL_3:
LABEL_4:
  }

  MEMORY[0x2821F96F8]();
}

- (void)processLastDailyMetrics
{
  stateVariableCurrMotionActivityType = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionActivityType];
  endDate = [(RTLocationAwarenessMetricManager *)self endDate];
  stateVariableCurrMotionStart = [(RTLocationAwarenessMetricManager *)self stateVariableCurrMotionStart];
  [endDate timeIntervalSinceDate:stateVariableCurrMotionStart];
  v7 = v6;

  v8 = MEMORY[0x277CCABB0];
  dailyStateMotionDwell = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stateVariableCurrMotionActivityType];
  v11 = [dailyStateMotionDwell objectForKeyedSubscript:v10];
  [v11 doubleValue];
  v13 = [v8 numberWithDouble:v7 + v12];
  dailyStateMotionDwell2 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stateVariableCurrMotionActivityType];
  [dailyStateMotionDwell2 setObject:v13 forKeyedSubscript:v15];

  endDate2 = [(RTLocationAwarenessMetricManager *)self endDate];
  stateVariablePrevLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevLocationTimestamp];
  [endDate2 timeIntervalSinceDate:stateVariablePrevLocationTimestamp];
  v19 = v18;

  v20 = MEMORY[0x277CCABB0];
  dailyStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
  v22 = [dailyStateSignalEnvironmentDwell objectForKeyedSubscript:v21];
  [v22 doubleValue];
  v24 = [v20 numberWithDouble:v19 + v23];
  dailyStateSignalEnvironmentDwell2 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationAwarenessMetricManager stateVariableCurrSignalEnvironmentType](self, "stateVariableCurrSignalEnvironmentType")}];
  [dailyStateSignalEnvironmentDwell2 setObject:v24 forKeyedSubscript:v26];
}

- (void)processMetrics
{
  startDate = [(RTLocationAwarenessMetricManager *)self startDate];
  endDate = [(RTLocationAwarenessMetricManager *)self endDate];
  v5 = [startDate earlierDate:endDate];
  v6 = [v5 isEqualToDate:startDate];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      v9 = startDate;
      v10 = objc_autoreleasePoolPush();
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:startDate sinceDate:3600.0];

      v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate endDate:v7];
      v12 = [(RTLocationAwarenessMetricManager *)self locationsAndMotionsForDateInterval:v11];
      v13 = [(RTLocationAwarenessMetricManager *)self sortLocationsAndMotions:v12];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__RTLocationAwarenessMetricManager_processMetrics__block_invoke;
      v16[3] = &unk_2788C4BA8;
      v16[4] = self;
      [v13 enumerateObjectsUsingBlock:v16];
      startDate = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v7 sinceDate:1.0];

      objc_autoreleasePoolPop(v10);
      endDate2 = [(RTLocationAwarenessMetricManager *)self endDate];
      v15 = [startDate earlierDate:endDate2];
      LOBYTE(v11) = [v15 isEqualToDate:startDate];
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

- (void)monitorStateChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = changeCopy;
    timestamp = [v4 timestamp];
    stateVariablePrevWifiLocationTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [timestamp timeIntervalSinceDate:stateVariablePrevWifiLocationTimestamp];
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
    stateVariablePrevWifiLocationTimestamp2 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:stateVariablePrevWifiLocationTimestamp2];

    [(RTLocationAwarenessMetricManager *)self setBoutStateWifi:v25];
    stateVariablePrevWifiLocationTimestamp3 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [(RTLocationAwarenessMetricManager *)self setStateVariableLastWifiStateChangeTimestamp:stateVariablePrevWifiLocationTimestamp3];

    [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
    stateVariablePrevWifiLocationTimestamp4 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    stateVariableLastSettledStateChangeTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariableLastSettledStateChangeTimestamp];
    v30 = [stateVariablePrevWifiLocationTimestamp4 laterDate:stateVariableLastSettledStateChangeTimestamp];
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

  v10 = changeCopy;
  startDate = [v10 startDate];
  startDate2 = [(RTLocationAwarenessMetricManager *)self startDate];
  [startDate timeIntervalSinceDate:startDate2];
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
    startDate3 = [v10 startDate];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:startDate3];

    v32 = 2;
    v33 = 1;
LABEL_43:
    [(RTLocationAwarenessMetricManager *)self setBoutMetricType:v33];
    [(RTLocationAwarenessMetricManager *)self setBoutStateMotion:v32];
    startDate4 = [v10 startDate];
    [(RTLocationAwarenessMetricManager *)self setStateVariableLastSettledStateChangeTimestamp:startDate4];

    [(RTLocationAwarenessMetricManager *)self updateBoutMetricsForMotion:v10];
    [(RTLocationAwarenessMetricManager *)self flushBufferToCurrBoutMetrics];
    [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
    startDate5 = [v10 startDate];
    [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:startDate5];

    goto LABEL_32;
  }

  if (-[RTLocationAwarenessMetricManager boutStateMotion](self, "boutStateMotion") == 2 && [v10 type] == 1)
  {
    startDate6 = [v10 startDate];
    stateVariablePrevWifiLocationTimestamp5 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
    [startDate6 timeIntervalSinceDate:stateVariablePrevWifiLocationTimestamp5];
    if (v18 <= 1200.0)
    {
    }

    else
    {
      boutMetricType = [(RTLocationAwarenessMetricManager *)self boutMetricType];

      if (boutMetricType != 3)
      {
LABEL_39:
        startDate7 = [v10 startDate];
        [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:startDate7];

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

      stateVariablePrevWifiLocationTimestamp6 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
      [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutEnd:stateVariablePrevWifiLocationTimestamp6];

      [(RTLocationAwarenessMetricManager *)self submitBoutMetricsToCoreAnalytics];
      startDate6 = [(RTLocationAwarenessMetricManager *)self stateVariablePrevWifiLocationTimestamp];
      [(RTLocationAwarenessMetricManager *)self setBoutStateCurrBoutStart:startDate6];
    }

    goto LABEL_39;
  }

  [(RTLocationAwarenessMetricManager *)self updateBoutMetricsForMotion:v10];
LABEL_32:

LABEL_33:
  [(RTLocationAwarenessMetricManager *)self updateStateVariables:changeCopy];
}

- (void)updateStateVariables:(id)variables
{
  variablesCopy = variables;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = variablesCopy;
    if ([v4 type] == 4 || objc_msgSend(v4, "type") == 11)
    {
      timestamp = [v4 timestamp];
      [(RTLocationAwarenessMetricManager *)self setStateVariablePrevWifiLocationTimestamp:timestamp];
    }

    timestamp2 = [v4 timestamp];
    stateVariableLastSensitiveLocationCheckTimestamp = [(RTLocationAwarenessMetricManager *)self stateVariableLastSensitiveLocationCheckTimestamp];
    [timestamp2 timeIntervalSinceDate:stateVariableLastSensitiveLocationCheckTimestamp];
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
    timestamp3 = [v4 timestamp];
    [(RTLocationAwarenessMetricManager *)self setStateVariableLastSensitiveLocationCheckTimestamp:timestamp3];

LABEL_14:
    timestamp4 = [v4 timestamp];
    [(RTLocationAwarenessMetricManager *)self setStateVariablePrevLocationTimestamp:timestamp4];

    -[RTLocationAwarenessMetricManager setStateVariableCurrSignalEnvironmentType:](self, "setStateVariableCurrSignalEnvironmentType:", [v4 signalEnvironmentType]);
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = variablesCopy;
  type = [v11 type];
  if (type != -[RTLocationAwarenessMetricManager stateVariableCurrMotionActivityType](self, "stateVariableCurrMotionActivityType") || ([v11 startDate], v13 = objc_claimAutoreleasedReturnValue(), -[RTLocationAwarenessMetricManager startDate](self, "startDate"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "timeIntervalSinceDate:", v14), v16 = v15, v14, v13, v16 <= 0.0))
  {
    -[RTLocationAwarenessMetricManager setStateVariableCurrMotionActivityType:](self, "setStateVariableCurrMotionActivityType:", [v11 type]);
    startDate = [v11 startDate];
    startDate2 = [(RTLocationAwarenessMetricManager *)self startDate];
    v19 = [startDate laterDate:startDate2];
    [(RTLocationAwarenessMetricManager *)self setStateVariableCurrMotionStart:v19];
  }

LABEL_15:

LABEL_16:
}

- (id)collectBoutMetrics
{
  boutStateCurrBoutStart = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
  boutStateCurrBoutEnd = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  v5 = [boutStateCurrBoutStart laterDate:boutStateCurrBoutEnd];
  boutStateCurrBoutEnd2 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
  v7 = [v5 isEqualToDate:boutStateCurrBoutEnd2];

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
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    boutStateCurrBoutStart2 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    v184 = [currentCalendar components:32 fromDate:boutStateCurrBoutStart2];

    boutStateCurrBoutEnd3 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
    boutStateCurrBoutStart3 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    [boutStateCurrBoutEnd3 timeIntervalSinceDate:boutStateCurrBoutStart3];
    v12 = v11;

    boutStateMotionDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    allKeys = [boutStateMotionDwell allKeys];
    v187[0] = MEMORY[0x277D85DD0];
    v187[1] = 3221225472;
    v187[2] = __54__RTLocationAwarenessMetricManager_collectBoutMetrics__block_invoke;
    v187[3] = &unk_2788CDF20;
    v187[4] = self;
    v15 = [allKeys sortedArrayUsingComparator:v187];

    boutStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    allKeys2 = [boutStateSignalEnvironmentDwell allKeys];
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = __54__RTLocationAwarenessMetricManager_collectBoutMetrics__block_invoke_2;
    v186[3] = &unk_2788CDF20;
    v186[4] = self;
    v169 = [allKeys2 sortedArrayUsingComparator:v186];

    v18 = [v15 objectAtIndexedSubscript:0];
    intValue = [v18 intValue];

    v177 = v15;
    v20 = [v15 objectAtIndexedSubscript:1];
    intValue2 = [v20 intValue];

    v22 = [v15 objectAtIndexedSubscript:2];
    intValue3 = [v22 intValue];

    boutStateMotionTypeNumBouts = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
    v26 = [boutStateMotionTypeNumBouts objectForKeyedSubscript:v25];
    intValue4 = [v26 intValue];

    boutStateMotionTypeNumBouts2 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
    v29 = [boutStateMotionTypeNumBouts2 objectForKeyedSubscript:v28];
    intValue5 = [v29 intValue];

    boutStateMotionTypeNumBouts3 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:intValue3];
    v32 = [boutStateMotionTypeNumBouts3 objectForKeyedSubscript:v31];
    intValue6 = [v32 intValue];

    v33 = MEMORY[0x277CCABB0];
    boutStateMotionDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v35 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
    v36 = [boutStateMotionDwell2 objectForKeyedSubscript:v35];
    [v36 doubleValue];
    v183 = [v33 numberWithDouble:v37 / v12];

    v38 = MEMORY[0x277CCABB0];
    boutStateMotionDwell3 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v158 = intValue2;
    v40 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
    v41 = [boutStateMotionDwell3 objectForKeyedSubscript:v40];
    [v41 doubleValue];
    v182 = [v38 numberWithDouble:v42 / v12];

    v43 = MEMORY[0x277CCABB0];
    boutStateMotionDwell4 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v160 = intValue3;
    v45 = [MEMORY[0x277CCABB0] numberWithInt:intValue3];
    v46 = [boutStateMotionDwell4 objectForKeyedSubscript:v45];
    [v46 doubleValue];
    v181 = [v43 numberWithDouble:v47 / v12];

    v48 = MEMORY[0x277CCABB0];
    boutStateMotionLongestDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
    v50 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
    v51 = [boutStateMotionLongestDwell objectForKeyedSubscript:v50];
    [v51 doubleValue];
    v180 = [v48 numberWithDouble:v52 / v12];

    v53 = MEMORY[0x277CCABB0];
    boutStateMotionLongestDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
    v55 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
    v56 = [boutStateMotionLongestDwell2 objectForKeyedSubscript:v55];
    [v56 doubleValue];
    v179 = [v53 numberWithDouble:v57 / v12];

    v58 = MEMORY[0x277CCABB0];
    boutStateMotionLongestDwell3 = [(RTLocationAwarenessMetricManager *)self boutStateMotionLongestDwell];
    v60 = [MEMORY[0x277CCABB0] numberWithInt:intValue3];
    v61 = [boutStateMotionLongestDwell3 objectForKeyedSubscript:v60];
    [v61 doubleValue];
    v178 = [v58 numberWithDouble:v62 / v12];

    v63 = [v169 objectAtIndexedSubscript:0];
    intValue7 = [v63 intValue];

    v65 = MEMORY[0x277CCABB0];
    boutStateSignalEnvironmentDwell2 = [(RTLocationAwarenessMetricManager *)self boutStateSignalEnvironmentDwell];
    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:intValue7];
    v68 = [boutStateSignalEnvironmentDwell2 objectForKeyedSubscript:v67];
    [v68 doubleValue];
    if (v69 <= 0.0)
    {
      v70 = 0;
    }

    else
    {
      v70 = intValue7;
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

    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:intValue7];
    [v166 setObject:v81 forKeyedSubscript:@"_primarySignalEnvironment"];

    v82 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
    [v166 setObject:v82 forKeyedSubscript:@"_primaryMotion"];

    v83 = [RTMetric binForNumber:v183 bins:v176];
    [v166 setObject:v83 forKeyedSubscript:@"_primaryMotionDurationBucketed"];

    v84 = [MEMORY[0x277CCABB0] numberWithInt:intValue4];
    v85 = [RTMetric binForNumber:v84 bins:&unk_2845A1388];
    [v166 setObject:v85 forKeyedSubscript:@"_numBoutsPrimaryMotionBucketed"];

    v86 = [RTMetric binForNumber:v180 bins:v176];
    [v166 setObject:v86 forKeyedSubscript:@"_longestBoutPrimaryMotionBucketed"];

    v87 = MEMORY[0x277CCABB0];
    boutStateMotionDwell5 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v89 = [MEMORY[0x277CCABB0] numberWithInt:v158];
    v90 = [boutStateMotionDwell5 objectForKeyedSubscript:v89];
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

    v95 = [MEMORY[0x277CCABB0] numberWithInt:intValue5];
    v96 = [RTMetric binForNumber:v95 bins:&unk_2845A1388];
    [v166 setObject:v96 forKeyedSubscript:@"_numBoutsSecondaryMotionBucketed"];

    v97 = [RTMetric binForNumber:v179 bins:v176];
    [v166 setObject:v97 forKeyedSubscript:@"_longestBoutSecondaryMotionBucketed"];

    v98 = MEMORY[0x277CCABB0];
    boutStateMotionDwell6 = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
    v100 = [MEMORY[0x277CCABB0] numberWithInt:intValue3];
    v101 = [boutStateMotionDwell6 objectForKeyedSubscript:v100];
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

    v106 = [MEMORY[0x277CCABB0] numberWithInt:intValue6];
    v107 = [RTMetric binForNumber:v106 bins:&unk_2845A1388];
    [v166 setObject:v107 forKeyedSubscript:@"_numBoutsTertiaryMotionBucketed"];

    v108 = [RTMetric binForNumber:v178 bins:v176];
    [v166 setObject:v108 forKeyedSubscript:@"_longestBoutTertiaryMotionBucketed"];

    boutStateCurrBoutEnd4 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
    boutStateCurrBoutStart4 = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
    [boutStateCurrBoutEnd4 timeIntervalSinceDate:boutStateCurrBoutStart4];
    v112 = v111 / 3600.0;

    boutStateMotionTypeNumBouts4 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v165 = [v177 objectAtIndexedSubscript:3];
    v163 = [boutStateMotionTypeNumBouts4 objectForKeyedSubscript:v165];
    LODWORD(boutStateCurrBoutStart4) = [v163 intValue];
    boutStateMotionTypeNumBouts5 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v157 = [v177 objectAtIndexedSubscript:4];
    v113 = [boutStateMotionTypeNumBouts5 objectForKeyedSubscript:v157];
    v161 = [v113 intValue] + boutStateCurrBoutStart4;
    boutStateMotionTypeNumBouts6 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v115 = [v177 objectAtIndexedSubscript:5];
    v116 = [boutStateMotionTypeNumBouts6 objectForKeyedSubscript:v115];
    LODWORD(boutStateCurrBoutEnd4) = [v116 intValue];
    boutStateMotionTypeNumBouts7 = [(RTLocationAwarenessMetricManager *)self boutStateMotionTypeNumBouts];
    v118 = [v177 objectAtIndexedSubscript:6];
    v119 = [boutStateMotionTypeNumBouts7 objectForKeyedSubscript:v118];
    v156 = boutStateCurrBoutEnd4 + [v119 intValue];

    v120 = [MEMORY[0x277CCABB0] numberWithInt:(v161 + v156)];
    v121 = [RTMetric binForNumber:v120 bins:&unk_2845A1388];
    [v166 setObject:v121 forKeyedSubscript:@"_numBoutsOtherMotionBucketed"];

    v122 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumWifiLocationsInBout];
    v112 = [v122 numberWithDouble:v123 / v112];
    v125 = [RTMetric binForNumber:v112 bins:v170];
    [v166 setObject:v125 forKeyedSubscript:@"_numWifiLocations"];

    v126 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumGPSLocationsInBout];
    v1122 = [v126 numberWithDouble:v127 / v112];
    v129 = [RTMetric binForNumber:v1122 bins:v170];
    [v166 setObject:v129 forKeyedSubscript:@"_numGPSLocations"];

    v130 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumOtherLocationsInBout];
    v1123 = [v130 numberWithDouble:v131 / v112];
    v133 = [RTMetric binForNumber:v1123 bins:v170];
    [v166 setObject:v133 forKeyedSubscript:@"_numOtherLocations"];

    v134 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired1mDutyCycle];
    v1124 = [v134 numberWithDouble:v135 / v112];
    v137 = [RTMetric binForNumber:v1124 bins:v171];
    [v166 setObject:v137 forKeyedSubscript:@"_numAdditionalFixesRequired_1mCycle"];

    v138 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired2mDutyCycle];
    v1125 = [v138 numberWithDouble:v139 / v112];
    v141 = [RTMetric binForNumber:v1125 bins:v171];
    [v166 setObject:v141 forKeyedSubscript:@"_numAdditionalFixesRequired_2mCycle"];

    v142 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired5mDutyCycle];
    v1126 = [v142 numberWithDouble:v143 / v112];
    v145 = [RTMetric binForNumber:v1126 bins:v171];
    [v166 setObject:v145 forKeyedSubscript:@"_numAdditionalFixesRequired_5mCycle"];

    v146 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired10mDutyCycle];
    v1127 = [v146 numberWithDouble:v147 / v112];
    v149 = [RTMetric binForNumber:v1127 bins:v171];
    [v166 setObject:v149 forKeyedSubscript:@"_numAdditionalFixesRequired_10mCycle"];

    v150 = MEMORY[0x277CCABB0];
    [(RTLocationAwarenessMetricManager *)self boutMetricNumAdditionalFixesPerHourRequired15mDutyCycle];
    v1128 = [v150 numberWithDouble:v151 / v112];
    v153 = [RTMetric binForNumber:v1128 bins:v171];
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
  dailyStateBoutCounts = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v11 = [dailyStateBoutCounts objectForKeyedSubscript:&unk_28459EB50];
  v12 = [v9 numberWithInteger:{objc_msgSend(v11, "integerValue")}];
  v13 = [RTMetric binForNumber:v12 bins:&unk_2845A13E8];
  [v8 setObject:v13 forKeyedSubscript:@"_numBoutsInPastDayLowMobility"];

  v14 = MEMORY[0x277CCABB0];
  dailyStateBoutDwell = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v16 = [dailyStateBoutDwell objectForKeyedSubscript:&unk_28459EB50];
  v17 = [v14 numberWithInteger:{objc_msgSend(v16, "integerValue")}];
  v18 = [RTMetric binForNumber:v17 bins:v5];
  [v8 setObject:v18 forKeyedSubscript:@"_totalDailyDwellLowMobility"];

  v19 = MEMORY[0x277CCABB0];
  dailyStateBoutLongestDwell = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v21 = [dailyStateBoutLongestDwell objectForKeyedSubscript:&unk_28459EB50];
  v22 = [v19 numberWithInteger:{objc_msgSend(v21, "integerValue")}];
  v23 = [RTMetric binForNumber:v22 bins:v5];
  [v8 setObject:v23 forKeyedSubscript:@"_durationOfLongestLowMobilityBout"];

  v24 = MEMORY[0x277CCABB0];
  dailyStateBoutCounts2 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v26 = [dailyStateBoutCounts2 objectForKeyedSubscript:&unk_28459EB68];
  v27 = [v24 numberWithInteger:{objc_msgSend(v26, "integerValue")}];
  v28 = [RTMetric binForNumber:v27 bins:&unk_2845A13D0];
  [v8 setObject:v28 forKeyedSubscript:@"_numBoutsInPastDayMobileNoWifi"];

  v29 = MEMORY[0x277CCABB0];
  dailyStateBoutDwell2 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v31 = [dailyStateBoutDwell2 objectForKeyedSubscript:&unk_28459EB68];
  v32 = [v29 numberWithInteger:{objc_msgSend(v31, "integerValue")}];
  v33 = [RTMetric binForNumber:v32 bins:v5];
  [v8 setObject:v33 forKeyedSubscript:@"_totalDailyDwellMobileNoWifi"];

  v34 = MEMORY[0x277CCABB0];
  dailyStateBoutLongestDwell2 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v36 = [dailyStateBoutLongestDwell2 objectForKeyedSubscript:&unk_28459EB68];
  v37 = [v34 numberWithInteger:{objc_msgSend(v36, "integerValue")}];
  v38 = [RTMetric binForNumber:v37 bins:v5];
  [v8 setObject:v38 forKeyedSubscript:@"_durationOfLongestMobileNoWifiBout"];

  v39 = MEMORY[0x277CCABB0];
  dailyStateBoutCounts3 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutCounts];
  v41 = [dailyStateBoutCounts3 objectForKeyedSubscript:&unk_28459EB80];
  v42 = [v39 numberWithInteger:{objc_msgSend(v41, "integerValue")}];
  v43 = [RTMetric binForNumber:v42 bins:&unk_2845A13D0];
  [v8 setObject:v43 forKeyedSubscript:@"_numBoutsInPastDayMobileWithWifi"];

  v44 = MEMORY[0x277CCABB0];
  dailyStateBoutDwell3 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutDwell];
  v46 = [dailyStateBoutDwell3 objectForKeyedSubscript:&unk_28459EB80];
  v47 = [v44 numberWithInteger:{objc_msgSend(v46, "integerValue")}];
  v48 = [RTMetric binForNumber:v47 bins:v5];
  [v8 setObject:v48 forKeyedSubscript:@"_totalDailyDwellMobileWithWifi"];

  v49 = MEMORY[0x277CCABB0];
  dailyStateBoutLongestDwell3 = [(RTLocationAwarenessMetricManager *)self dailyStateBoutLongestDwell];
  v51 = [dailyStateBoutLongestDwell3 objectForKeyedSubscript:&unk_28459EB80];
  v52 = [v49 numberWithInteger:{objc_msgSend(v51, "integerValue")}];
  v53 = [RTMetric binForNumber:v52 bins:v5];
  [v8 setObject:v53 forKeyedSubscript:@"_durationOfLongestMobileWithWifiBout"];

  v54 = MEMORY[0x277CCABB0];
  dailyStateSignalEnvironmentDwell = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v56 = [dailyStateSignalEnvironmentDwell objectForKeyedSubscript:&unk_28459EC40];
  [v56 doubleValue];
  v57 = [v54 numberWithDouble:?];
  v58 = [RTMetric binForNumber:v57 bins:v5];
  [v8 setObject:v58 forKeyedSubscript:@"_totalDailyDwellFoliage"];

  v59 = MEMORY[0x277CCABB0];
  dailyStateSignalEnvironmentDwell2 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v61 = [dailyStateSignalEnvironmentDwell2 objectForKeyedSubscript:&unk_28459EB20];
  [v61 doubleValue];
  v62 = [v59 numberWithDouble:?];
  v63 = [RTMetric binForNumber:v62 bins:v5];
  [v8 setObject:v63 forKeyedSubscript:@"_totalDailyDwellUnavailableSignalEnvironment"];

  v64 = MEMORY[0x277CCABB0];
  dailyStateSignalEnvironmentDwell3 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v66 = [dailyStateSignalEnvironmentDwell3 objectForKeyedSubscript:&unk_28459EBE0];
  [v66 doubleValue];
  v67 = [v64 numberWithDouble:?];
  v68 = [RTMetric binForNumber:v67 bins:v5];
  [v8 setObject:v68 forKeyedSubscript:@"_totalDailyDwellRural"];

  v69 = MEMORY[0x277CCABB0];
  dailyStateSignalEnvironmentDwell4 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v71 = [dailyStateSignalEnvironmentDwell4 objectForKeyedSubscript:&unk_28459EBF8];
  [v71 doubleValue];
  v72 = [v69 numberWithDouble:?];
  v73 = [RTMetric binForNumber:v72 bins:v5];
  [v8 setObject:v73 forKeyedSubscript:@"_totalDailyDwellUrban"];

  v74 = MEMORY[0x277CCABB0];
  dailyStateSignalEnvironmentDwell5 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v76 = [dailyStateSignalEnvironmentDwell5 objectForKeyedSubscript:&unk_28459EC10];
  [v76 doubleValue];
  v77 = [v74 numberWithDouble:?];
  v78 = [RTMetric binForNumber:v77 bins:v5];
  [v8 setObject:v78 forKeyedSubscript:@"_totalDailyDwellDenseUrban"];

  v79 = MEMORY[0x277CCABB0];
  dailyStateSignalEnvironmentDwell6 = [(RTLocationAwarenessMetricManager *)self dailyStateSignalEnvironmentDwell];
  v81 = [dailyStateSignalEnvironmentDwell6 objectForKeyedSubscript:&unk_28459EC28];
  [v81 doubleValue];
  v82 = [v79 numberWithDouble:?];
  v83 = [RTMetric binForNumber:v82 bins:v5];
  [v8 setObject:v83 forKeyedSubscript:@"_totalDailyDwellDenseUrbanCanyon"];

  v84 = MEMORY[0x277CCABB0];
  dailyStateMotionDwell = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v86 = [dailyStateMotionDwell objectForKeyedSubscript:&unk_28459EB50];
  [v86 doubleValue];
  v87 = [v84 numberWithDouble:?];
  v88 = [RTMetric binForNumber:v87 bins:v5];
  [v8 setObject:v88 forKeyedSubscript:@"_totalDailyDurationStationary"];

  v89 = MEMORY[0x277CCABB0];
  dailyStateMotionDwell2 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v91 = [dailyStateMotionDwell2 objectForKeyedSubscript:&unk_28459EB68];
  [v91 doubleValue];
  v92 = [v89 numberWithDouble:?];
  v93 = [RTMetric binForNumber:v92 bins:v5];
  [v8 setObject:v93 forKeyedSubscript:@"_totalDailyDurationWalking"];

  v94 = MEMORY[0x277CCABB0];
  dailyStateMotionDwell3 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v96 = [dailyStateMotionDwell3 objectForKeyedSubscript:&unk_28459EB80];
  [v96 doubleValue];
  v97 = [v94 numberWithDouble:?];
  v98 = [RTMetric binForNumber:v97 bins:v5];
  [v8 setObject:v98 forKeyedSubscript:@"_totalDailyDurationRunning"];

  v99 = MEMORY[0x277CCABB0];
  dailyStateMotionDwell4 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v101 = [dailyStateMotionDwell4 objectForKeyedSubscript:&unk_28459EBB0];
  [v101 doubleValue];
  v102 = [v99 numberWithDouble:?];
  v103 = [RTMetric binForNumber:v102 bins:v5];
  [v8 setObject:v103 forKeyedSubscript:@"_totalDailyDurationCycling"];

  v104 = MEMORY[0x277CCABB0];
  dailyStateMotionDwell5 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v106 = [dailyStateMotionDwell5 objectForKeyedSubscript:&unk_28459EB98];
  [v106 doubleValue];
  v107 = [v104 numberWithDouble:?];
  v108 = [RTMetric binForNumber:v107 bins:v5];
  [v8 setObject:v108 forKeyedSubscript:@"_totalDailyDurationDriving"];

  v109 = MEMORY[0x277CCABB0];
  dailyStateMotionDwell6 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v111 = [dailyStateMotionDwell6 objectForKeyedSubscript:&unk_28459EBC8];
  [v111 doubleValue];
  v112 = [v109 numberWithDouble:?];
  v113 = [RTMetric binForNumber:v112 bins:v5];
  [v8 setObject:v113 forKeyedSubscript:@"_totalDailyDurationMoving"];

  v114 = MEMORY[0x277CCABB0];
  dailyStateMotionDwell7 = [(RTLocationAwarenessMetricManager *)self dailyStateMotionDwell];
  v116 = [dailyStateMotionDwell7 objectForKeyedSubscript:&unk_28459EB38];
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
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:v6];
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
    collectBoutMetrics = [(RTLocationAwarenessMetricManager *)self collectBoutMetrics];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        boutStateCurrBoutStart = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutStart];
        stringFromDate = [boutStateCurrBoutStart stringFromDate];
        boutStateCurrBoutEnd = [(RTLocationAwarenessMetricManager *)self boutStateCurrBoutEnd];
        stringFromDate2 = [boutStateCurrBoutEnd stringFromDate];
        boutStateMotionDwell = [(RTLocationAwarenessMetricManager *)self boutStateMotionDwell];
        *buf = 138413058;
        v20 = v10;
        v21 = 2112;
        v22 = stringFromDate;
        v23 = 2112;
        v24 = stringFromDate2;
        v25 = 2112;
        v26 = boutStateMotionDwell;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, bout start, %@, bout end %@, motion dwell %@", buf, 0x2Au);
      }
    }

    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = [v16 initWithCString:RTAnalyticsEventLocationAwarenessBoutMetrics encoding:1];
    log_analytics_submission(v17, collectBoutMetrics);
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v17];
    AnalyticsSendEvent();
  }

  [(RTLocationAwarenessMetricManager *)self resetBoutMetrics];
}

- (void)submitDailyMetricsToCoreAnalytics
{
  collectDailyMetrics = [(RTLocationAwarenessMetricManager *)self collectDailyMetrics];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v2 initWithCString:RTAnalyticsEventLocationAwarenessDailyMetrics encoding:1];
  log_analytics_submission(v3, collectDailyMetrics);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v3];
  AnalyticsSendEvent();
}

@end