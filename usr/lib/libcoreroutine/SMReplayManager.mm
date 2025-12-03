@interface SMReplayManager
- (SMReplayManager)initWithQueue:(id)queue;
- (id)_createDefaultsDict;
- (id)_createEvaluatorDict;
- (id)_timerStackToString:(id)string;
- (id)objectForKey:(id)key value:(id)value;
- (void)_addLocation:(id)location eta:(double)eta;
- (void)_cacheTimer:(id)timer;
- (void)_fetchCurrentLocationWithOptions:(id)options handler:(id)handler;
- (void)_fetchEstimatedLocationAtDate:(id)date options:(id)options handler:(id)handler;
- (void)_fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)_fetchPredominantMotionActivityTypeFromStartDate:(id)date toEndDate:(id)endDate withHandler:(id)handler;
- (void)_fetchStoredLocationsWithOptions:(id)options handler:(id)handler;
- (void)_invalidateTimerWithIdentifier:(id)identifier;
- (void)_setup;
- (void)_updateTimerStackForDate:(id)date;
- (void)addMotionActivity:(id)activity;
- (void)cacheTimer:(id)timer;
- (void)evaluateResults;
- (void)fetchCurrentLocationWithOptions:(id)options handler:(id)handler;
- (void)fetchEstimatedLocationAtDate:(id)date options:(id)options handler:(id)handler;
- (void)fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchPredominantMotionActivityTypeFromStartDate:(id)date toEndDate:(id)endDate withHandler:(id)handler;
- (void)fetchStoredLocationsWithOptions:(id)options handler:(id)handler;
- (void)invalidateTimerWithIdentifier:(id)identifier;
- (void)onTriggerNotification:(id)notification;
- (void)setCrowFliesWalkingSpeed:(double)speed;
- (void)setCurrentDate:(id)date;
- (void)setCurrentPredominantMotionActivityType:(unint64_t)type;
- (void)setDestinationLocation:(id)location;
- (void)setEtaScaleFactor:(double)factor;
- (void)setMinDistanceETAUpdateThreshold:(double)threshold;
- (void)setMuteMapsExpectedETA:(double)a;
- (void)setMuteRouteDeviationTriggerWithinThreshold:(double)threshold;
- (void)setNoProgressTriggered:(BOOL)triggered;
- (void)setObject:(id)object forKey:(id)key;
- (void)setResultsPath:(id)path;
- (void)setRouteDeviationTriggered:(BOOL)triggered;
@end

@implementation SMReplayManager

- (SMReplayManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = SMReplayManager;
  v6 = [(SMReplayManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_opt_new();
    mockLocations = v7->_mockLocations;
    v7->_mockLocations = v8;

    v10 = objc_opt_new();
    locationToEtaDictionary = v7->_locationToEtaDictionary;
    v7->_locationToEtaDictionary = v10;

    v12 = objc_opt_new();
    locationSmoother = v7->_locationSmoother;
    v7->_locationSmoother = v12;

    v14 = objc_opt_new();
    mockMotionActivities = v7->_mockMotionActivities;
    v7->_mockMotionActivities = v14;

    v16 = objc_opt_new();
    timerStack = v7->_timerStack;
    v7->_timerStack = v16;

    [(SMReplayManager *)v7 _setup];
  }

  return v7;
}

- (void)_setup
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[SMReplayManager _setup]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
    }
  }

  _createEvaluatorDict = [(SMReplayManager *)self _createEvaluatorDict];
  results = self->_results;
  self->_results = _createEvaluatorDict;

  _createDefaultsDict = [(SMReplayManager *)self _createDefaultsDict];
  defaults = self->_defaults;
  self->_defaults = _createDefaultsDict;

  *&self->_predominantMotionActivitySet = 0;
}

- (id)_createEvaluatorDict
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CBEC28];
  v20[0] = MEMORY[0x277CBEC28];
  v19[0] = @"value";
  v19[1] = @"date";
  v4 = objc_opt_new();
  v20[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v2 setObject:v5 forKeyedSubscript:@"_triggered"];

  v17[1] = @"date";
  v18[0] = v3;
  v17[0] = @"value";
  v6 = objc_opt_new();
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v2 setObject:v7 forKeyedSubscript:@"_noProgress"];

  v15[1] = @"date";
  v16[0] = v3;
  v15[0] = @"value";
  v8 = objc_opt_new();
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v2 setObject:v9 forKeyedSubscript:@"_etaTriggered"];

  v13[1] = @"date";
  v14[0] = v3;
  v13[0] = @"value";
  v10 = objc_opt_new();
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v2 setObject:v11 forKeyedSubscript:@"_routeDeviationTriggered"];

  return v2;
}

- (id)_createDefaultsDict
{
  v2 = objc_opt_new();
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationLastLockDateKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationLastUnlockDateKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationModeOfTransportKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationNominalMapsExpectedTravelTimeKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationNoProgressTimeoutThresholdKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationRemainingDistanceKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationRoundTripReminderDateKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationTimeToUpdateStatusKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationStatusKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationUpperBoundCrowFliesEtaKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationUpperBoundMapsEtaKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationScaleFactorInternalKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationAverageWalkingSpeedKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationAverageDrivingSpeedKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationMinDistanceThresholdToUpdateEtaKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationMuteMapsExpectedEtaKey"];
  [v2 setObject:0 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationMuteRouteDeviationTriggerWithinThresholdKey"];

  return v2;
}

- (void)setObject:(id)object forKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  if (!keyCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[SMReplayManager setObject:forKey:]";
      v14 = 1024;
      v15 = 125;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key (in %s:%d)", &v12, 0x12u);
    }
  }

  defaults = [(SMReplayManager *)self defaults];
  v10 = defaults;
  if (objectCopy)
  {
    v11 = objectCopy;
  }

  else
  {
    v11 = 0;
  }

  [defaults setObject:v11 forKeyedSubscript:keyCopy];
}

- (id)objectForKey:(id)key value:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if (!keyCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[SMReplayManager objectForKey:value:]";
      v16 = 1024;
      v17 = 135;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key (in %s:%d)", &v14, 0x12u);
    }
  }

  defaults = [(SMReplayManager *)self defaults];
  v10 = [defaults objectForKeyedSubscript:keyCopy];

  if (v10)
  {
    defaults2 = [(SMReplayManager *)self defaults];
    v12 = [defaults2 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    [(SMReplayManager *)self setObject:valueCopy forKey:keyCopy];
    v12 = valueCopy;
  }

  return v12;
}

- (void)setCurrentPredominantMotionActivityType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[SMReplayManager setCurrentPredominantMotionActivityType:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s", &v13, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"YES";
      if (!type)
      {
        v7 = @"NO";
      }

      v13 = 136315394;
      v14 = "[SMReplayManager setCurrentPredominantMotionActivityType:]";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, setting currentPredominantMotionActivityType to, %@", &v13, 0x16u);
    }
  }

  self->_currentPredominantMotionActivityType = type;
  self->_predominantMotionActivitySet = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      results = [(SMReplayManager *)self results];
      v10 = results;
      v11 = @"YES";
      currentPredominantMotionActivityType = self->_currentPredominantMotionActivityType;
      v14 = "[SMReplayManager setCurrentPredominantMotionActivityType:]";
      v13 = 136315650;
      v15 = 2112;
      if (!currentPredominantMotionActivityType)
      {
        v11 = @"NO";
      }

      v16 = results;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, results, %@, noProgressTriggered, %@", &v13, 0x20u);
    }
  }
}

- (void)setNoProgressTriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  v37[2] = *MEMORY[0x277D85DE8];
  muteTriggers = [(SMReplayManager *)self muteTriggers];
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (muteTriggers)
  {
    if (!v6)
    {
      return;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v28 = 136315138;
      v29 = "[SMReplayManager setNoProgressTriggered:]";
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, triggers muted", &v28, 0xCu);
    }

    goto LABEL_18;
  }

  if (v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (triggeredCopy)
      {
        v9 = @"YES";
      }

      v28 = 136315394;
      v29 = "[SMReplayManager setNoProgressTriggered:]";
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, setting noProgressTriggered to, %@", &v28, 0x16u);
    }
  }

  if (triggeredCopy)
  {
    results = [(SMReplayManager *)self results];
    v11 = [results objectForKey:@"_triggered"];
    v12 = [v11 objectForKey:@"date"];

    v13 = MEMORY[0x277CCABB0];
    mockedCurrentDate = [(SMReplayManager *)self mockedCurrentDate];
    [mockedCurrentDate timeIntervalSince1970];
    v15 = [v13 numberWithDouble:?];
    [v12 addObject:v15];

    v16 = MEMORY[0x277CBEC38];
    v36[0] = @"value";
    v36[1] = @"date";
    v37[0] = MEMORY[0x277CBEC38];
    v37[1] = v12;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    results2 = [(SMReplayManager *)self results];
    [results2 setObject:v17 forKeyedSubscript:@"_triggered"];

    v34[1] = @"date";
    v35[0] = v16;
    v34[0] = @"value";
    v19 = MEMORY[0x277CCABB0];
    mockedCurrentDate2 = [(SMReplayManager *)self mockedCurrentDate];
    [mockedCurrentDate2 timeIntervalSince1970];
    v21 = [v19 numberWithDouble:?];
    v35[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    results3 = [(SMReplayManager *)self results];
    [results3 setObject:v22 forKeyedSubscript:@"_noProgress"];

    [(SMReplayManager *)self evaluateResults];
  }

  self->_noProgressTriggered = triggeredCopy;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      results4 = [(SMReplayManager *)self results];
      v25 = results4;
      v26 = @"NO";
      noProgressTriggered = self->_noProgressTriggered;
      v29 = "[SMReplayManager setNoProgressTriggered:]";
      v28 = 136315650;
      v30 = 2112;
      if (noProgressTriggered)
      {
        v26 = @"YES";
      }

      v31 = results4;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, results, %@, noProgressTriggered, %@", &v28, 0x20u);
    }

LABEL_18:
  }
}

- (void)setRouteDeviationTriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  v37[2] = *MEMORY[0x277D85DE8];
  muteTriggers = [(SMReplayManager *)self muteTriggers];
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (muteTriggers)
  {
    if (!v6)
    {
      return;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v28 = 136315138;
      v29 = "[SMReplayManager setRouteDeviationTriggered:]";
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, triggers muted", &v28, 0xCu);
    }

    goto LABEL_18;
  }

  if (v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (triggeredCopy)
      {
        v9 = @"YES";
      }

      v28 = 136315394;
      v29 = "[SMReplayManager setRouteDeviationTriggered:]";
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, setting routeDeviationTriggered to, %@", &v28, 0x16u);
    }
  }

  if (triggeredCopy)
  {
    results = [(SMReplayManager *)self results];
    v11 = [results objectForKey:@"_triggered"];
    v12 = [v11 objectForKey:@"date"];

    v13 = MEMORY[0x277CCABB0];
    mockedCurrentDate = [(SMReplayManager *)self mockedCurrentDate];
    [mockedCurrentDate timeIntervalSince1970];
    v15 = [v13 numberWithDouble:?];
    [v12 addObject:v15];

    v16 = MEMORY[0x277CBEC38];
    v36[0] = @"value";
    v36[1] = @"date";
    v37[0] = MEMORY[0x277CBEC38];
    v37[1] = v12;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    results2 = [(SMReplayManager *)self results];
    [results2 setObject:v17 forKeyedSubscript:@"_triggered"];

    v34[1] = @"date";
    v35[0] = v16;
    v34[0] = @"value";
    v19 = MEMORY[0x277CCABB0];
    mockedCurrentDate2 = [(SMReplayManager *)self mockedCurrentDate];
    [mockedCurrentDate2 timeIntervalSince1970];
    v21 = [v19 numberWithDouble:?];
    v35[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    results3 = [(SMReplayManager *)self results];
    [results3 setObject:v22 forKeyedSubscript:@"_routeDeviationTriggered"];

    [(SMReplayManager *)self evaluateResults];
  }

  self->_routeDeviationTriggered = triggeredCopy;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      results4 = [(SMReplayManager *)self results];
      v25 = results4;
      v26 = @"NO";
      routeDeviationTriggered = self->_routeDeviationTriggered;
      v29 = "[SMReplayManager setRouteDeviationTriggered:]";
      v28 = 136315650;
      v30 = 2112;
      if (routeDeviationTriggered)
      {
        v26 = @"YES";
      }

      v31 = results4;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, results, %@, routeDeviationTriggered, %@", &v28, 0x20u);
    }

LABEL_18:
  }
}

- (void)setCurrentDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [dateCopy stringFromDate];
      v9 = 136315394;
      v10 = "[SMReplayManager setCurrentDate:]";
      v11 = 2112;
      v12 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s currentDate, %@", &v9, 0x16u);
    }
  }

  [(SMReplayManager *)self _updateTimerStackForDate:dateCopy];
  v7 = [dateCopy copy];
  currentDate = self->_currentDate;
  self->_currentDate = v7;
}

- (void)setCrowFliesWalkingSpeed:(double)speed
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[SMReplayManager setCrowFliesWalkingSpeed:]";
      v9 = 2048;
      speedCopy2 = speed;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s crowFliesWalkingSpeed, %.2f", &v7, 0x16u);
    }
  }

  if (speed > 0.0)
  {
    self->_crowFliesWalkingSpeed = speed;
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:speed];
    [(NSMutableDictionary *)self->_defaults setObject:v6 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationAverageWalkingSpeedKey"];
LABEL_7:

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[SMReplayManager setCrowFliesWalkingSpeed:]";
      v9 = 2048;
      speedCopy2 = speed;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s invalid crowFliesWalkingSpeed, %.2f", &v7, 0x16u);
    }

    goto LABEL_7;
  }
}

- (void)setDestinationLocation:(id)location
{
  v11 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315395;
      v8 = "[SMReplayManager setDestinationLocation:]";
      v9 = 2117;
      v10 = locationCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s destinationLocation, %{sensitive}@", &v7, 0x16u);
    }
  }

  destinationLocation = self->_destinationLocation;
  self->_destinationLocation = locationCopy;
}

- (void)setResultsPath:(id)path
{
  v12 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[SMReplayManager setResultsPath:]";
      v10 = 2112;
      v11 = pathCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s resultsPath, %@", &v8, 0x16u);
    }
  }

  v6 = [pathCopy copy];
  resultsPath = self->_resultsPath;
  self->_resultsPath = v6;
}

- (void)setEtaScaleFactor:(double)factor
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[SMReplayManager setEtaScaleFactor:]";
      v9 = 2048;
      factorCopy = factor;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s etaScaleFactor, %.2f", &v7, 0x16u);
    }
  }

  self->_etaScaleFactor = factor;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [(NSMutableDictionary *)self->_defaults setObject:v6 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationScaleFactorInternalKey"];
}

- (void)setMuteMapsExpectedETA:(double)a
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (a > 0.0)
      {
        v6 = @"YES";
      }

      v8 = 136315394;
      v9 = "[SMReplayManager setMuteMapsExpectedETA:]";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s muteMapsExpectedETA, %@", &v8, 0x16u);
    }
  }

  if (a > 0.0)
  {
    self->_muteMapsExpectedETA = a;
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a];
    [(NSMutableDictionary *)self->_defaults setObject:v7 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationMuteMapsExpectedEtaKey"];
  }
}

- (void)setMuteRouteDeviationTriggerWithinThreshold:(double)threshold
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (threshold > 0.0)
      {
        v6 = @"YES";
      }

      v8 = 136315394;
      v9 = "[SMReplayManager setMuteRouteDeviationTriggerWithinThreshold:]";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s muteRouteDeviationTriggerWithinThreshold, %@", &v8, 0x16u);
    }
  }

  if (threshold > 0.0)
  {
    self->_muteRouteDeviationTriggerWithinThreshold = threshold;
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:threshold];
    [(NSMutableDictionary *)self->_defaults setObject:v7 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationMuteRouteDeviationTriggerWithinThresholdKey"];
  }
}

- (void)setMinDistanceETAUpdateThreshold:(double)threshold
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (threshold != 0.0)
      {
        v6 = @"YES";
      }

      v8 = 136315394;
      v9 = "[SMReplayManager setMinDistanceETAUpdateThreshold:]";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s minDistanceETAUptdateThreshold, %@", &v8, 0x16u);
    }
  }

  self->_minDistanceETAUpdateThreshold = threshold;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:threshold];
  [(NSMutableDictionary *)self->_defaults setObject:v7 forKeyedSubscript:@"RTDefaultsSMTriggerDestinationMinDistanceThresholdToUpdateEtaKey"];
}

- (void)addMotionActivity:(id)activity
{
  v9 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[SMReplayManager addMotionActivity:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
    }
  }

  mockMotionActivities = [(SMReplayManager *)self mockMotionActivities];
  [mockMotionActivities addObject:activityCopy];
}

- (void)fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "[SMReplayManager fetchMotionActivitiesFromStartDate:endDate:handler:]";
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s", &v12, 0xCu);
      }
    }

    [(SMReplayManager *)self _fetchMotionActivitiesFromStartDate:dateCopy endDate:endDateCopy handler:handlerCopy];
  }
}

- (void)_fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[SMReplayManager _fetchMotionActivitiesFromStartDate:endDate:handler:]";
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
      }
    }

    endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@ AND %K <= %@", @"startDate", dateCopy, @"startDate", endDateCopy];
    v13 = [(NSMutableArray *)self->_mockMotionActivities filteredArrayUsingPredicate:endDateCopy];
    handlerCopy[2](handlerCopy, v13, 0);
  }
}

- (void)fetchPredominantMotionActivityTypeFromStartDate:(id)date toEndDate:(id)endDate withHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[SMReplayManager fetchPredominantMotionActivityTypeFromStartDate:toEndDate:withHandler:]";
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s", &v12, 0xCu);
    }
  }

  [(SMReplayManager *)self _fetchPredominantMotionActivityTypeFromStartDate:dateCopy toEndDate:endDateCopy withHandler:handlerCopy];
}

- (void)_fetchPredominantMotionActivityTypeFromStartDate:(id)date toEndDate:(id)endDate withHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[SMReplayManager _fetchPredominantMotionActivityTypeFromStartDate:toEndDate:withHandler:]";
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  if (!handlerCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMReplayManager _fetchPredominantMotionActivityTypeFromStartDate:toEndDate:withHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 388;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if ([(SMReplayManager *)self predominantMotionActivitySet])
  {
    handlerCopy[2](handlerCopy, [(SMReplayManager *)self currentPredominantMotionActivityType], 0);
  }

  v12 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v49 = __Block_byref_object_copy__49;
  v50 = __Block_byref_object_dispose__49;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__49;
  v46 = __Block_byref_object_dispose__49;
  v47 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __90__SMReplayManager__fetchPredominantMotionActivityTypeFromStartDate_toEndDate_withHandler___block_invoke;
  v38[3] = &unk_2788C4490;
  v40 = buf;
  v41 = &v42;
  v13 = v12;
  v39 = v13;
  [(SMReplayManager *)self _fetchMotionActivitiesFromStartDate:v37 endDate:endDateCopy handler:v38];
  v14 = v13;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v14, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_356];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
    firstObject = [v23 firstObject];

    [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *v53 = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v53, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    *v53 = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

    if (v28)
    {
      v29 = v28;

      v30 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = 1;
LABEL_18:

  v31 = v28;
  if ((v30 & 1) == 0)
  {
    objc_storeStrong(v43 + 5, v28);
  }

  if (v43[5])
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }

  else
  {
    v32 = [RTMotionActivityHistogram alloc];
    v33 = [(RTMotionActivityHistogram *)v32 initWithActivites:*(*&buf[8] + 40) betweenDate:v37 andDate:endDateCopy];
    binsSortedByInterval = [(RTMotionActivityHistogram *)v33 binsSortedByInterval];
    firstObject2 = [binsSortedByInterval firstObject];
    handlerCopy[2](handlerCopy, [firstObject2 type], 0);
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(buf, 8);
}

void __90__SMReplayManager__fetchPredominantMotionActivityTypeFromStartDate_toEndDate_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_addLocation:(id)location eta:(double)eta
{
  v25 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  destinationLocation = [(SMReplayManager *)self destinationLocation];
  [locationCopy distanceFromLocation:destinationLocation];
  v9 = v8;

  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 >= 100.0)
  {
    if (v11)
    {
      destinationLocation2 = [(SMReplayManager *)self destinationLocation];
      v17 = 136315907;
      v18 = "[SMReplayManager _addLocation:eta:]";
      v19 = 2048;
      v20 = v9;
      v21 = 2117;
      v22 = locationCopy;
      v23 = 2117;
      v24 = destinationLocation2;
      v13 = "%s, triggers unmuted with distance, %.2f, location, %{sensitive}@, destination, %{sensitive}@";
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    destinationLocation2 = [(SMReplayManager *)self destinationLocation];
    v17 = 136315907;
    v18 = "[SMReplayManager _addLocation:eta:]";
    v19 = 2048;
    v20 = v9;
    v21 = 2117;
    v22 = locationCopy;
    v23 = 2117;
    v24 = destinationLocation2;
    v13 = "%s, triggers muted with distance, %.2f, location, %{sensitive}@, destination, %{sensitive}@";
LABEL_6:
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, v13, &v17, 0x2Au);
  }

  [(SMReplayManager *)self setMuteTriggers:v9 < 100.0];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:eta];
  locationToEtaDictionary = [(SMReplayManager *)self locationToEtaDictionary];
  [locationToEtaDictionary setObject:v14 forKeyedSubscript:locationCopy];

  [(SMReplayManager *)self setCurrentMapsExpectedETA:eta];
  mockLocations = [(SMReplayManager *)self mockLocations];
  [mockLocations addObject:locationCopy];
}

- (void)fetchStoredLocationsWithOptions:(id)options handler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SMReplayManager fetchStoredLocationsWithOptions:handler:]";
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s", &v9, 0xCu);
    }
  }

  [(SMReplayManager *)self _fetchStoredLocationsWithOptions:optionsCopy handler:handlerCopy];
}

- (void)_fetchStoredLocationsWithOptions:(id)options handler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMReplayManager _fetchStoredLocationsWithOptions:handler:]";
      v63 = 1024;
      v64 = 456;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }
  }

  if (!handlerCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMReplayManager _fetchStoredLocationsWithOptions:handler:]";
      v63 = 1024;
      v64 = 457;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[SMReplayManager _fetchStoredLocationsWithOptions:handler:]";
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  dateInterval = [optionsCopy dateInterval];
  startDate = [dateInterval startDate];
  v11 = startDate;
  if (startDate)
  {
    distantPast = startDate;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v13 = distantPast;

  dateInterval2 = [optionsCopy dateInterval];
  endDate = [dateInterval2 endDate];
  v16 = endDate;
  if (endDate)
  {
    distantFuture = endDate;
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v18 = distantFuture;

  [optionsCopy horizontalAccuracy];
  if (v19 == 0.0)
  {
    v21 = 1.79769313e308;
  }

  else
  {
    [optionsCopy horizontalAccuracy];
    v21 = v20;
  }

  array = [MEMORY[0x277CBEB18] array];
  v23 = MEMORY[0x277CCA920];
  v57 = v13;
  v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ <= %K", v13, @"timestamp"];
  v61[0] = v24;
  v56 = v18;
  v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"timestamp", v18];
  v61[1] = v25;
  v26 = MEMORY[0x277CCAC30];
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  v28 = [v26 predicateWithFormat:@"%K <= %@", @"horizontalAccuracy", v27];
  v61[2] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  v30 = [v23 andPredicateWithSubpredicates:v29];

  v31 = array;
  [array addObject:v30];
  boundingBoxLocation = [optionsCopy boundingBoxLocation];

  if (boundingBoxLocation)
  {
    *buf = 0;
    boundingBoxLocation2 = [optionsCopy boundingBoxLocation];
    [boundingBoxLocation2 coordinate];
    boundingBoxLocation3 = [optionsCopy boundingBoxLocation];
    [boundingBoxLocation3 coordinate];
    boundingBoxLocation4 = [optionsCopy boundingBoxLocation];
    [boundingBoxLocation4 horizontalAccuracy];
    RTCommonCalculateBoundingBox();

    v51 = MEMORY[0x277CCA920];
    v36 = MEMORY[0x277CCAC30];
    v53 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v54 = v30;
    v52 = [v36 predicateWithFormat:@"%@ <= %K", v53, @"coordinate.latitude"];
    v60[0] = v52;
    v37 = MEMORY[0x277CCAC30];
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v39 = [v37 predicateWithFormat:@"%K <= %@", @"coordinate.longitude", v38];
    v60[1] = v39;
    v40 = MEMORY[0x277CCAC30];
    [MEMORY[0x277CCABB0] numberWithDouble:*buf];
    v41 = v55 = v31;
    v42 = [v40 predicateWithFormat:@"%@ <= %K", v41, @"coordinate.latitude"];
    v60[2] = v42;
    v43 = MEMORY[0x277CCAC30];
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v45 = [v43 predicateWithFormat:@"%K <= %@", @"coordinate.latitude", v44];
    v60[3] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
    v47 = [v51 andPredicateWithSubpredicates:v46];

    v30 = v54;
    v31 = v55;

    [v55 addObject:v47];
  }

  v48 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v31];
  mockLocations = [(SMReplayManager *)self mockLocations];
  v50 = [mockLocations filteredArrayUsingPredicate:v48];

  handlerCopy[2](handlerCopy, v50, 0);
}

- (void)fetchCurrentLocationWithOptions:(id)options handler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SMReplayManager fetchCurrentLocationWithOptions:handler:]";
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s", &v9, 0xCu);
    }
  }

  [(SMReplayManager *)self _fetchCurrentLocationWithOptions:optionsCopy handler:handlerCopy];
}

- (void)_fetchCurrentLocationWithOptions:(id)options handler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[SMReplayManager _fetchCurrentLocationWithOptions:handler:]";
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s", &v13, 0xCu);
    }
  }

  mockLocations = [(SMReplayManager *)self mockLocations];
  v10 = [mockLocations count];

  if (v10)
  {
    mockLocations2 = [(SMReplayManager *)self mockLocations];
    lastObject = [mockLocations2 lastObject];
    handlerCopy[2](handlerCopy, lastObject, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (void)fetchEstimatedLocationAtDate:(id)date options:(id)options handler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[SMReplayManager fetchEstimatedLocationAtDate:options:handler:]";
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
    }
  }

  v12 = optionsCopy;
  v13 = v12;
  if (!v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277D010F0]);
  }

  [(SMReplayManager *)self _fetchEstimatedLocationAtDate:dateCopy options:v12 handler:handlerCopy];
}

- (void)_fetchEstimatedLocationAtDate:(id)date options:(id)options handler:(id)handler
{
  v91[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  optionsCopy = options;
  handlerCopy = handler;
  v63 = dateCopy;
  if (!dateCopy)
  {
    v10 = optionsCopy;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMReplayManager _fetchEstimatedLocationAtDate:options:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 568;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    optionsCopy = v10;
  }

  v62 = optionsCopy;
  if (!optionsCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMReplayManager _fetchEstimatedLocationAtDate:options:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 569;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }
  }

  if (!handlerCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMReplayManager _fetchEstimatedLocationAtDate:options:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 570;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[SMReplayManager _fetchEstimatedLocationAtDate:options:handler:]";
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  if (handlerCopy)
  {
    [v62 timeInterval];
    if (v15 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 30.0;
    }

    v17 = objc_alloc(MEMORY[0x277CCA970]);
    v18 = [v63 dateByAddingTimeInterval:-v16];
    v19 = [v63 dateByAddingTimeInterval:v16];
    v61 = [v17 initWithStartDate:v18 endDate:v19];

    v20 = objc_alloc(MEMORY[0x277D01320]);
    v60 = [v20 initWithDateInterval:v61 horizontalAccuracy:100 batchSize:0 boundingBoxLocation:*MEMORY[0x277CE4228]];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v86 = __Block_byref_object_copy__49;
    v87 = __Block_byref_object_dispose__49;
    v88 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__49;
    v75 = __Block_byref_object_dispose__49;
    v76 = 0;
    v21 = dispatch_semaphore_create(0);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __65__SMReplayManager__fetchEstimatedLocationAtDate_options_handler___block_invoke;
    v67[3] = &unk_2788C4490;
    v69 = &v71;
    v70 = buf;
    v22 = v21;
    v68 = v22;
    [(SMReplayManager *)self _fetchStoredLocationsWithOptions:v60 handler:v67];
    v23 = (*&buf[8] + 40);
    obj = *(*&buf[8] + 40);
    v24 = v22;
    v25 = [MEMORY[0x277CBEAA8] now];
    v26 = dispatch_time(0, 3600000000000);
    if (!dispatch_semaphore_wait(v24, v26))
    {
      goto LABEL_28;
    }

    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSinceDate:v25];
    v29 = v28;
    v30 = objc_opt_new();
    v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_356];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v33 = [callStackSymbols filteredArrayUsingPredicate:v31];
    firstObject = [v33 firstObject];

    [v30 submitToCoreAnalytics:firstObject type:1 duration:v29];
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *v77 = 0;
      _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v77, 2u);
    }

    v36 = MEMORY[0x277CCA9B8];
    v91[0] = *MEMORY[0x277CCA450];
    *v80 = @"semaphore wait timeout";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v91 count:1];
    v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

    if (v38)
    {
      v39 = v38;

      objc_storeStrong(v23, v38);
      v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v56 = *(*&buf[8] + 40);
        *v80 = 136315394;
        *&v80[4] = "[SMReplayManager _fetchEstimatedLocationAtDate:options:handler:]";
        v81 = 2112;
        v82 = v56;
        _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%s, error, %@", v80, 0x16u);
      }
    }

    else
    {
LABEL_28:

      objc_storeStrong(v23, obj);
      if ([v72[5] count])
      {
        v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v72[5], "count")}];
        v42 = v72[5];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __65__SMReplayManager__fetchEstimatedLocationAtDate_options_handler___block_invoke_129;
        v64[3] = &unk_2788C9228;
        v43 = v41;
        v65 = v43;
        v66 = a2;
        [v42 enumerateObjectsUsingBlock:v64];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [v62 averageSpeed];
        if (v45 >= 0.0)
        {
          v46 = MEMORY[0x277CCABB0];
          [v62 averageSpeed];
          v47 = [v46 numberWithDouble:?];
          [dictionary setObject:v47 forKey:@"kRTLocationSmootherAverageMovingSpeed"];
        }

        if ([v62 enableFallbackModel])
        {
          [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"kRTLocationSmootherEnableFallbackModel"];
        }

        locationSmoother = [(SMReplayManager *)self locationSmoother];
        [v63 timeIntervalSinceReferenceDate];
        v49 = [locationSmoother estimateLocationWithLocations:v43 timestamp:dictionary parameters:0 meta:?];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            stringFromDate = [v63 stringFromDate];
            *v80 = 136315651;
            *&v80[4] = "[SMReplayManager _fetchEstimatedLocationAtDate:options:handler:]";
            v81 = 2117;
            v82 = v49;
            v83 = 2112;
            v84 = stringFromDate;
            _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%s, estimated location, %{sensitive}@, on date, %@", v80, 0x20u);
          }
        }

        if (v49 && ([v49 horizontalAccuracy], v52 > 0.0))
        {
          handlerCopy[2](handlerCopy, v49, 0);
        }

        else
        {
          v78 = *MEMORY[0x277CCA450];
          v79 = @"Failed to estimate a location.";
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          v55 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:6 userInfo:v54];
          (handlerCopy)[2](handlerCopy, 0, v55);
        }

        goto LABEL_46;
      }
    }

    handlerCopy[2](handlerCopy, 0, *(*&buf[8] + 40));
LABEL_46:

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_47;
  }

  v89 = *MEMORY[0x277CCA450];
  v90 = @"A completion handler is a required parameter.";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
  v60 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v61];
  v53 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v60;
    _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "A completion handler is a required parameter, %@", buf, 0xCu);
  }

LABEL_47:
}

void __65__SMReplayManager__fetchEstimatedLocationAtDate_options_handler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __65__SMReplayManager__fetchEstimatedLocationAtDate_options_handler___block_invoke_129(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [v5 horizontalAccuracy];
  if (v6 <= 30.0)
  {
    v8 = 1;
  }

  else
  {
    [v5 horizontalAccuracy];
    if (v7 <= 165.0)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }
  }

  memset(v14, 0, 28);
  v13 = 0u;
  if (v5)
  {
    [v5 clientLocation];
  }

  LODWORD(v13) = v8;
  v9 = objc_alloc(MEMORY[0x277CE41F8]);
  v20 = v13;
  v21 = 0u;
  v22[0] = v14[0];
  *(v22 + 12) = *(v14 + 12);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = [v9 initWithClientLocation:buf];
  [*(a1 + 32) addObject:v10];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412803;
      *&buf[4] = v12;
      *&buf[12] = 2117;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, input location, %{sensitive}@, idx, %ld", buf, 0x20u);
    }
  }
}

- (void)cacheTimer:(id)timer
{
  v8 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SMReplayManager cacheTimer:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
    }
  }

  [(SMReplayManager *)self _cacheTimer:timerCopy];
}

- (void)_cacheTimer:(id)timer
{
  v28 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[SMReplayManager _cacheTimer:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s", &v18, 0xCu);
    }
  }

  timerStack = [(SMReplayManager *)self timerStack];
  timerStack2 = [(SMReplayManager *)self timerStack];
  v8 = [timerStack indexOfObject:timerCopy inSortedRange:0 options:objc_msgSend(timerStack2 usingComparator:{"count"), 1024, &__block_literal_global_36}];

  timerStack3 = [(SMReplayManager *)self timerStack];
  [timerStack3 insertObject:timerCopy atIndex:v8];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      identifier = [timerCopy identifier];
      endDate = [timerCopy endDate];
      stringFromDate = [endDate stringFromDate];
      mockedCurrentDate = [(SMReplayManager *)self mockedCurrentDate];
      stringFromDate2 = [mockedCurrentDate stringFromDate];
      timerStack4 = [(SMReplayManager *)self timerStack];
      v17 = [(SMReplayManager *)self _timerStackToString:timerStack4];
      v18 = 136316162;
      v19 = "[SMReplayManager _cacheTimer:]";
      v20 = 2112;
      v21 = identifier;
      v22 = 2112;
      v23 = stringFromDate;
      v24 = 2112;
      v25 = stringFromDate2;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, cached timer with identifier, %@, endDate, %@, currentDate, %@, timerStack, %@", &v18, 0x34u);
    }
  }
}

uint64_t __31__SMReplayManager__cacheTimer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)invalidateTimerWithIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SMReplayManager invalidateTimerWithIdentifier:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
    }
  }

  [(SMReplayManager *)self _invalidateTimerWithIdentifier:identifierCopy];
}

- (void)_invalidateTimerWithIdentifier:(id)identifier
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[SMReplayManager _invalidateTimerWithIdentifier:]";
      v30 = 1024;
      LODWORD(v31) = 717;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[SMReplayManager _invalidateTimerWithIdentifier:]";
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      timerStack = [(SMReplayManager *)self timerStack];
      v9 = [timerStack count];
      timerStack2 = [(SMReplayManager *)self timerStack];
      v11 = [(SMReplayManager *)self _timerStackToString:timerStack2];
      *buf = 136315906;
      v29 = "[SMReplayManager _invalidateTimerWithIdentifier:]";
      v30 = 2112;
      v31 = identifierCopy;
      v32 = 2048;
      v33 = v9;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, invalidating timer with identifier, %@, timerStackCount, %lu, timerStack, %@", buf, 0x2Au);
    }
  }

  timerStack3 = [(SMReplayManager *)self timerStack];
  v13 = MEMORY[0x277CCAC30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__SMReplayManager__invalidateTimerWithIdentifier___block_invoke;
  v26[3] = &unk_2788C9270;
  v14 = identifierCopy;
  v27 = v14;
  v15 = [v13 predicateWithBlock:v26];
  v16 = [timerStack3 filteredArrayUsingPredicate:v15];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[SMReplayManager _invalidateTimerWithIdentifier:]";
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%s, timersToRemove FIRST, %@", buf, 0x16u);
    }
  }

  timerStack4 = [(SMReplayManager *)self timerStack];
  [timerStack4 removeObjectsInArray:v16];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      timerStack5 = [(SMReplayManager *)self timerStack];
      v21 = [timerStack5 count];
      timerStack6 = [(SMReplayManager *)self timerStack];
      v23 = [(SMReplayManager *)self _timerStackToString:timerStack6];
      v24 = [(SMReplayManager *)self _timerStackToString:v16];
      v25 = [v16 count];
      *buf = 136316418;
      v29 = "[SMReplayManager _invalidateTimerWithIdentifier:]";
      v30 = 2112;
      v31 = v14;
      v32 = 2048;
      v33 = v21;
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      v38 = 2048;
      v39 = v25;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%s, finished invalidating timer with identifier, %@, timerStackCount, %lu, timerStack, %@, timersToRemove, %@, count, %lu", buf, 0x3Eu);
    }
  }
}

uint64_t __50__SMReplayManager__invalidateTimerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateTimerStackForDate:(id)date
{
  v61 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [dateCopy stringFromDate];
      timerStack = [(SMReplayManager *)self timerStack];
      v8 = [(SMReplayManager *)self _timerStackToString:timerStack];
      *buf = 136315650;
      v52 = "[SMReplayManager _updateTimerStackForDate:]";
      v53 = 2112;
      v54 = stringFromDate;
      v55 = 2112;
      v56 = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, ENTERING WITH DATE, %@, TIMER STACK, %@ ", buf, 0x20u);
    }
  }

  timerStack2 = [(SMReplayManager *)self timerStack];
  v10 = [timerStack2 count];

  if (v10)
  {
    v12 = MEMORY[0x277D86220];
    *&v11 = 136315906;
    v48 = v11;
    while (1)
    {
      timerStack3 = [(SMReplayManager *)self timerStack];
      firstObject = [timerStack3 firstObject];

      endDate = [firstObject endDate];
      v16 = [endDate isAfterDate:dateCopy];

      v17 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v16)
      {
        break;
      }

      if (v17)
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          identifier = [firstObject identifier];
          endDate2 = [firstObject endDate];
          [endDate2 stringFromDate];
          v22 = v21 = dateCopy;
          stringFromDate2 = [v21 stringFromDate];
          endDate3 = [firstObject endDate];
          stringFromDate3 = [endDate3 stringFromDate];
          *buf = 136316162;
          v52 = "[SMReplayManager _updateTimerStackForDate:]";
          v53 = 2112;
          v54 = identifier;
          v55 = 2112;
          v56 = v22;
          v57 = 2112;
          v58 = stringFromDate2;
          v59 = 2112;
          v60 = stringFromDate3;
          _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%s, firing timer with identifier, %@, endDate, %@, old currentDate, %@, newCurrentDate, %@", buf, 0x34u);

          dateCopy = v21;
        }

        v12 = MEMORY[0x277D86220];
      }

      endDate4 = [firstObject endDate];
      v27 = [endDate4 copy];
      currentDate = self->_currentDate;
      self->_currentDate = v27;

      queue = [firstObject queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__SMReplayManager__updateTimerStackForDate___block_invoke;
      block[3] = &unk_2788C4EA0;
      v30 = firstObject;
      v50 = v30;
      dispatch_async(queue, block);

      timerStack4 = [(SMReplayManager *)self timerStack];
      v32 = [timerStack4 count];

      if (v32)
      {
        timerStack5 = [(SMReplayManager *)self timerStack];
        [timerStack5 removeObjectAtIndex:0];

        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            identifier2 = [v30 identifier];
            endDate5 = [v30 endDate];
            stringFromDate4 = [endDate5 stringFromDate];
            timerStack6 = [(SMReplayManager *)self timerStack];
            v39 = [timerStack6 count];
            *buf = v48;
            v52 = "[SMReplayManager _updateTimerStackForDate:]";
            v53 = 2112;
            v54 = identifier2;
            v55 = 2112;
            v56 = stringFromDate4;
            v57 = 2048;
            v58 = v39;
            _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%s, removing timer with identifier, %@, endDate, %@, remaining timer count after removal, %lu", buf, 0x2Au);
          }

          v12 = MEMORY[0x277D86220];
        }
      }

      timerStack7 = [(SMReplayManager *)self timerStack];
      v41 = [timerStack7 count];

      if (!v41)
      {
        goto LABEL_24;
      }
    }

    if (v17)
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        identifier3 = [firstObject identifier];
        endDate6 = [firstObject endDate];
        stringFromDate5 = [endDate6 stringFromDate];
        stringFromDate6 = [dateCopy stringFromDate];
        *buf = v48;
        v52 = "[SMReplayManager _updateTimerStackForDate:]";
        v53 = 2112;
        v54 = identifier3;
        v55 = 2112;
        v56 = stringFromDate5;
        v57 = 2112;
        v58 = stringFromDate6;
        _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%s, timer with identifier, %@, endDate, %@, has later fire date than new current date, %@", buf, 0x2Au);
      }
    }
  }

LABEL_24:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v52 = "[SMReplayManager _updateTimerStackForDate:]";
      _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%s, exit", buf, 0xCu);
    }
  }
}

void __44__SMReplayManager__updateTimerStackForDate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2]();
}

- (void)onTriggerNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[SMReplayManager onTriggerNotification:]";
      v12 = 2112;
      v13 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, notification, %@", &v10, 0x16u);
    }
  }

  name = [notificationCopy name];
  v7 = +[(RTNotification *)SMTriggerNotification];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    if ([v9 triggerCategory] == 3)
    {
      [(SMReplayManager *)self setNoProgressTriggered:1];
    }

    else if ([v9 triggerCategory] == 4)
    {
      [(SMReplayManager *)self setRouteDeviationTriggered:1];
    }
  }
}

- (void)evaluateResults
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      results = [(SMReplayManager *)self results];
      v12 = 136315394;
      v13 = "[SMReplayManager evaluateResults]";
      v14 = 2112;
      v15 = results;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, evaluating results, %@", &v12, 0x16u);
    }
  }

  v5 = MEMORY[0x277CCAAA0];
  results2 = [(SMReplayManager *)self results];
  v7 = [v5 dataWithJSONObject:results2 options:1 error:0];

  resultsPath = [(SMReplayManager *)self resultsPath];

  v9 = MEMORY[0x277CBEBC0];
  if (resultsPath)
  {
    resultsPath2 = [(SMReplayManager *)self resultsPath];
    v11 = [v9 fileURLWithPath:resultsPath2];
  }

  else
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/tmp/results_json.json"];
  }

  [v7 writeToURL:v11 atomically:1];
}

- (id)_timerStackToString:(id)string
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [string copy];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = @"TimerStack:";
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v7);
        v10 = MEMORY[0x277CCACA8];
        identifier = [v9 identifier];
        endDate = [v9 endDate];
        stringFromDate = [endDate stringFromDate];
        v14 = [v10 stringWithFormat:@" [timerIdentifier, %@, timer fire date, %@] ", identifier, stringFromDate];
        v6 = [(__CFString *)v8 stringByAppendingString:v14];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = @"TimerStack:";
  }

  return v6;
}

@end