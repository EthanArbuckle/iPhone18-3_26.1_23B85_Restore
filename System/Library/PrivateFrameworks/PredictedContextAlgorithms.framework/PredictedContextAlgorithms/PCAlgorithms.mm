@interface PCAlgorithms
- (BOOL)applyAlgorithmState:(id)state outError:(id *)error;
- (BOOL)computeWithInputSignals:(id)signals outError:(id *)error;
- (BOOL)interruptComputeWithError:(id *)error;
- (BOOL)predictContextWithInputSignals:(id)signals result:(id *)result outError:(id *)error;
- (BOOL)retrieveAlgorithmState:(id *)state outError:(id *)error;
- (BOOL)retrieveWorkoutClusters:(id *)clusters outError:(id *)error;
- (PCAlgorithms)init;
- (PCAlgorithms)initWithConfig:(id)config;
- (void)_initVisitHistoryAndOutOfPattern;
@end

@implementation PCAlgorithms

- (PCAlgorithms)init
{
  v3 = objc_alloc_init(PCAlgorithmsConfig);
  v4 = [(PCAlgorithms *)self initWithConfig:v3];

  return v4;
}

- (PCAlgorithms)initWithConfig:(id)config
{
  v23 = *MEMORY[0x1E69E9840];
  configCopy = config;
  v20.receiver = self;
  v20.super_class = PCAlgorithms;
  v5 = [(PCAlgorithms *)&v20 init];
  if (v5)
  {
    v6 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = configCopy;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "initializing PCAlgorithms with config: %@", buf, 0xCu);
    }

    [(PCAlgorithms *)v5 setConfig:configCopy];
    v7 = objc_alloc_init(PCWorkoutPrediction);
    [(PCAlgorithms *)v5 setWorkoutPrediction:v7];

    v8 = [PCVisitHistoryPredictor alloc];
    visitHistoryConfig = [configCopy visitHistoryConfig];
    v10 = [(PCVisitHistoryPredictor *)v8 initWithConfig:visitHistoryConfig];
    [(PCAlgorithms *)v5 setVisitHistoryPred:v10];

    v11 = [[PCOutOfPatternLogic alloc] initWithModelCentroidLatLon:0];
    [(PCAlgorithms *)v5 setOutOfPatternLogic:v11];

    v12 = [PCDynamicsWeighting alloc];
    dynamicsConfig = [configCopy dynamicsConfig];
    directionScaleFactorEstimator = [dynamicsConfig directionScaleFactorEstimator];
    dynamicsConfig2 = [configCopy dynamicsConfig];
    etaScaleFactorEstimator = [dynamicsConfig2 etaScaleFactorEstimator];
    v17 = [(PCDynamicsWeighting *)v12 initWithDirectionScaleFactorEstimator:directionScaleFactorEstimator ETAScaleFactorEstimator:etaScaleFactorEstimator];
    [(PCAlgorithms *)v5 setDynamicsWeighting:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_initVisitHistoryAndOutOfPattern
{
  v3 = objc_alloc_init(PCVisitHistoryPredictor);
  [(PCAlgorithms *)self setVisitHistoryPred:v3];

  v4 = [[PCOutOfPatternLogic alloc] initWithModelCentroidLatLon:0];
  [(PCAlgorithms *)self setOutOfPatternLogic:v4];
}

- (BOOL)applyAlgorithmState:(id)state outError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v7 = objc_alloc(MEMORY[0x1E696ACD0]);
  algorithmState = [stateCopy algorithmState];
  v30 = 0;
  v9 = [v7 initForReadingFromData:algorithmState error:&v30];
  v10 = v30;

  if (!v10)
  {
    v14 = [v9 decodeIntForKey:@"version"];
    if (v14 == 2)
    {
      v15 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"visit-history-predictor"];
      [(PCAlgorithms *)self setVisitHistoryPred:v15];

      visitHistoryPred = [(PCAlgorithms *)self visitHistoryPred];

      v17 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"LastTrainingDateCFAbsTime"];
      [(PCAlgorithms *)self setLastComputeDate:v17];

      v18 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"out-of-pattern-logic"];
      [(PCAlgorithms *)self setOutOfPatternLogic:v18];

      outOfPatternLogic = [(PCAlgorithms *)self outOfPatternLogic];
      LOBYTE(v18) = outOfPatternLogic == 0;

      if (v18)
      {
        goto LABEL_16;
      }

      v20 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEFAULT, "Successfully decoded outOfPatternLogic!", buf, 2u);
      }

      if (!visitHistoryPred)
      {
LABEL_16:
        v23 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_DEFAULT, "Re-initing visit history predictor and out of pattern detection due to previous failure.  ", buf, 2u);
        }

        [(PCAlgorithms *)self _initVisitHistoryAndOutOfPattern];
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v24 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"WorkoutPrediction"];
      [(PCAlgorithms *)self setWorkoutPrediction:v24];

      workoutPrediction = [(PCAlgorithms *)self workoutPrediction];
      LODWORD(v24) = workoutPrediction == 0;

      if (v24)
      {
        v27 = objc_alloc_init(PCWorkoutPrediction);
        [(PCAlgorithms *)self setWorkoutPrediction:v27];
      }

      else
      {
        v26 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_DEFAULT, "Successfully decoded workoutPrediction!", buf, 2u);
        }

        if (v21)
        {
          v10 = 0;
          v13 = 1;
          goto LABEL_29;
        }
      }

      if (error)
      {
LABEL_26:
        v10 = 0;
        v13 = 0;
        *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PCErrorDomain" code:1 userInfo:0];
        goto LABEL_29;
      }
    }

    else
    {
      v22 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v32[0] = v14;
        LOWORD(v32[1]) = 1024;
        *(&v32[1] + 2) = 2;
        _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_DEFAULT, "applyAlgorithmState: version number %i does not match expected value %i", buf, 0xEu);
      }

      [(PCAlgorithms *)self _initVisitHistoryAndOutOfPattern];
      if (error)
      {
        goto LABEL_26;
      }
    }

    v10 = 0;
LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  v11 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_DEFAULT, "applyAlgorithmState: initForReadingFromData failed", buf, 2u);
  }

  [(PCAlgorithms *)self _initVisitHistoryAndOutOfPattern];
  if (!error)
  {
    goto LABEL_28;
  }

  v12 = v10;
  v13 = 0;
  *error = v10;
LABEL_29:

  v28 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)retrieveAlgorithmState:(id *)state outError:(id *)error
{
  v6 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "retrieveAlgorithmState!", v16, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeInt:2 forKey:@"version"];
  visitHistoryPred = [(PCAlgorithms *)self visitHistoryPred];
  [v7 encodeObject:visitHistoryPred forKey:@"visit-history-predictor"];

  lastComputeDate = [(PCAlgorithms *)self lastComputeDate];

  if (lastComputeDate)
  {
    lastComputeDate2 = [(PCAlgorithms *)self lastComputeDate];
    [v7 encodeObject:lastComputeDate2 forKey:@"LastTrainingDateCFAbsTime"];
  }

  outOfPatternLogic = [(PCAlgorithms *)self outOfPatternLogic];
  [v7 encodeObject:outOfPatternLogic forKey:@"out-of-pattern-logic"];

  workoutPrediction = [(PCAlgorithms *)self workoutPrediction];
  [v7 encodeObject:workoutPrediction forKey:@"WorkoutPrediction"];

  encodedData = [v7 encodedData];
  v14 = objc_alloc_init(PCPAlgorithmState);
  *state = v14;
  [(PCPAlgorithmState *)v14 setAlgorithmState:encodedData];

  return 1;
}

- (BOOL)retrieveWorkoutClusters:(id *)clusters outError:(id *)error
{
  v5 = [(PCAlgorithms *)self workoutPrediction:clusters];
  fetchClusters = [v5 fetchClusters];

  v7 = fetchClusters;
  *clusters = fetchClusters;

  return 1;
}

- (BOOL)interruptComputeWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v5, OS_LOG_TYPE_DEFAULT, "interrupt training request received", buf, 2u);
  }

  visitHistoryPred = [(PCAlgorithms *)self visitHistoryPred];

  if (!visitHistoryPred)
  {
    v20 = 1;
    goto LABEL_17;
  }

  currentComputeDate = [(PCAlgorithms *)self currentComputeDate];
  if (currentComputeDate && (v8 = currentComputeDate, [(PCAlgorithms *)self lastComputeDate], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    currentComputeDate2 = [(PCAlgorithms *)self currentComputeDate];
    [currentComputeDate2 doubleValue];
    v12 = v11;
    lastComputeDate = [(PCAlgorithms *)self lastComputeDate];
    [lastComputeDate doubleValue];
    v15 = v12 - v14;

    if (v15 > 518400.0)
    {
      v16 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v27 = 6;
        _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_ERROR, "age of model is greater than %d days, deferral will not be honored", buf, 8u);
      }

      if (!error)
      {
        v20 = 0;
        goto LABEL_17;
      }

      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E696A578];
      v25 = @"deferral request ignored due to model age";
      visitHistoryPred2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v19 = [v17 initWithDomain:@"PCErrorDomain" code:6 userInfo:visitHistoryPred2];
      v20 = 0;
      *error = v19;
      goto LABEL_15;
    }
  }

  else
  {
    v21 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_ERROR, "missing information on age of model, deferral will be honored", buf, 2u);
    }
  }

  visitHistoryPred2 = [(PCAlgorithms *)self visitHistoryPred];
  [visitHistoryPred2 interruptTraining];
  v20 = 1;
LABEL_15:

LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)computeWithInputSignals:(id)signals outError:(id *)error
{
  signalsCopy = signals;
  outOfPatternLogic = [(PCAlgorithms *)self outOfPatternLogic];
  v8 = [outOfPatternLogic processInputSignals:signalsCopy isOutOfPattern:0];

  currentTimeZoneAbbreviation = [signalsCopy currentTimeZoneAbbreviation];

  errorCopy = error;
  if (currentTimeZoneAbbreviation)
  {
    v10 = MEMORY[0x1E695DFE8];
    currentTimeZoneAbbreviation2 = [signalsCopy currentTimeZoneAbbreviation];
    currentTimeZoneAbbreviation = [v10 timeZoneWithAbbreviation:currentTimeZoneAbbreviation2];
  }

  v12 = MEMORY[0x1E696AD98];
  [signalsCopy currentTimeCFAbsolute];
  v13 = [v12 numberWithDouble:?];
  [(PCAlgorithms *)self setCurrentComputeDate:v13];

  visitHistoryPred = [(PCAlgorithms *)self visitHistoryPred];
  visits = [v8 visits];
  transitions = [v8 transitions];
  locationOfInterests = [v8 locationOfInterests];
  homeKitHomes = [v8 homeKitHomes];
  [v8 currentTimeCFAbsolute];
  v39 = 0;
  v37 = currentTimeZoneAbbreviation;
  [visitHistoryPred computeWithHistory:visits transitions:transitions locationsOfInterest:locationOfInterests homekitHomes:homeKitHomes atTime:currentTimeZoneAbbreviation inTimeZone:&v39 withError:?];
  v19 = v39;

  if (v19)
  {
    if (errorCopy)
    {
      v20 = v19;
      v21 = 0;
      *errorCopy = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v22 = MEMORY[0x1E696AD98];
    [signalsCopy currentTimeCFAbsolute];
    v23 = [v22 numberWithDouble:?];
    [(PCAlgorithms *)self setLastComputeDate:v23];

    locationHistorys = [signalsCopy locationHistorys];
    [signalsCopy currentTimeCFAbsolute];
    v25 = [PCLocationUtils currentLocationWithLocationHistory:locationHistorys currentTime:?];

    outOfPatternLogic2 = [(PCAlgorithms *)self outOfPatternLogic];
    v35 = v25;
    [outOfPatternLogic2 resetAwaitingRetrainWithCurrentLocation:v25 inputSignals:signalsCopy];

    workoutPrediction = [(PCAlgorithms *)self workoutPrediction];
    visits2 = [signalsCopy visits];
    workouts = [signalsCopy workouts];
    locationOfInterests2 = [signalsCopy locationOfInterests];
    [signalsCopy currentTimeCFAbsolute];
    v38 = 0;
    v31 = [workoutPrediction computeWithLocationHistory:visits2 workoutHistory:workouts LOIs:locationOfInterests2 atTime:&v38 error:?];
    v32 = v38;

    v21 = 1;
    if (v31)
    {
      currentTimeZoneAbbreviation = v37;
    }

    else
    {
      currentTimeZoneAbbreviation = v37;
      if (v32 && [v32 code] != 4)
      {
        if (errorCopy)
        {
          v33 = v32;
          v21 = 0;
          *errorCopy = v32;
        }

        else
        {
          v21 = 0;
        }
      }
    }
  }

  return v21;
}

- (BOOL)predictContextWithInputSignals:(id)signals result:(id *)result outError:(id *)error
{
  v150 = *MEMORY[0x1E69E9840];
  signalsCopy = signals;
  v145 = 0;
  visits = [signalsCopy visits];
  v8 = [PCNeuralNetworkUtilities sortVisitHistory:visits];
  v9 = [v8 mutableCopy];
  [signalsCopy setVisits:v9];

  transitions = [signalsCopy transitions];
  v11 = [PCNeuralNetworkUtilities sortTransitionHistory:transitions];
  v12 = [v11 mutableCopy];
  [signalsCopy setTransitions:v12];

  locationHistorys = [signalsCopy locationHistorys];
  v14 = [PCNeuralNetworkUtilities sortLocationHistory:locationHistorys];
  v15 = [v14 mutableCopy];
  [signalsCopy setLocationHistorys:v15];

  [PCLocationUtils cleanCurrentVisitWithMissingData:signalsCopy];
  outOfPatternLogic = [(PCAlgorithms *)self outOfPatternLogic];
  v124 = [outOfPatternLogic processInputSignals:signalsCopy isOutOfPattern:&v145];

  outOfPatternLogic2 = [(PCAlgorithms *)self outOfPatternLogic];
  isWaitingRetrain = [outOfPatternLogic2 isWaitingRetrain];

  if (isWaitingRetrain)
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEFAULT, "Suppressing history based predictors due to awaiting retrain", buf, 2u);
    }
  }

  v119 = signalsCopy;
  selfCopy = self;
  config = [(PCAlgorithms *)self config];
  useVisitHistoryPredictor = [config useVisitHistoryPredictor];
  v22 = isWaitingRetrain ^ 1;

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (!useVisitHistoryPredictor)
  {
    v123 = 0;
    v26 = 0;
LABEL_26:
    v27 = selfCopy;
    goto LABEL_27;
  }

  v123 = 0;
  v26 = 0;
  v27 = selfCopy;
  if (!v22)
  {
    goto LABEL_27;
  }

  visitHistoryPred = [(PCAlgorithms *)selfCopy visitHistoryPred];
  hasTrainedModel = [visitHistoryPred hasTrainedModel];

  v30 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (hasTrainedModel)
  {
    if (v31)
    {
      homeKitHomes = [signalsCopy homeKitHomes];
      *buf = 138739971;
      v149 = homeKitHomes;
      _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_DEFAULT, "HomeKitHomes included in input signals: %{sensitive}@", buf, 0xCu);
    }

    visitHistoryPred2 = [(PCAlgorithms *)selfCopy visitHistoryPred];
    visits2 = [v124 visits];
    transitions2 = [v124 transitions];
    locationHistorys2 = [v124 locationHistorys];
    homeKitHomes2 = [v124 homeKitHomes];
    [v124 currentTimeCFAbsolute];
    v143 = 0;
    v144 = 0;
    v141 = 0;
    v142 = 0;
    [visitHistoryPred2 predictWithHistory:visits2 transitionHistory:transitions2 locationHistory:locationHistorys2 homekitHomes:homeKitHomes2 atTime:&v144 locations:&v143 transitions:&v142 containsHomeKitPredictions:&v141 missingLoiResults:?];
    v38 = v144;
    v123 = v143;
    v25 = v142;
    v39 = v141;

    v40 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v149 = v25;
      _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_DEFAULT, "HomeKitHomes included in visit history predictor: %{sensitive}@", buf, 0xCu);
    }

    v24 = objc_alloc_init(PCPPredictedContextAnalytics);
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(PCPPredictedContextAnalytics *)v24 setRolledLoiAnalyticsDictionarys:v41];

    v26 = v38;
    if (v39)
    {
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v23 = v39;
      v42 = [v23 countByEnumeratingWithState:&v137 objects:v147 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v138;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v138 != v44)
            {
              objc_enumerationMutation(v23);
            }

            v46 = *(*(&v137 + 1) + 8 * i);
            rolledLoiAnalyticsDictionarys = [(PCPPredictedContextAnalytics *)v24 rolledLoiAnalyticsDictionarys];
            v48 = [v23 objectForKeyedSubscript:v46];
            [rolledLoiAnalyticsDictionarys addObject:v48];
          }

          v43 = [v23 countByEnumeratingWithState:&v137 objects:v147 count:16];
        }

        while (v43);
      }
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_26;
  }

  if (v31)
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_DEFAULT, "visit history model is untrained, NO prediction based on visit history.", buf, 2u);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v123 = 0;
  v26 = 0;
  v145 = 1;
LABEL_27:
  config2 = [(PCAlgorithms *)v27 config];
  v50 = [config2 useCalendarVisitPredictor] & v22;

  if (v50 == 1)
  {
    visits3 = [v124 visits];
    calendarEvents = [v124 calendarEvents];
    [v124 currentTimeCFAbsolute];
    v136 = 0;
    [PCCalendarVisitPredictor predictWithHistory:visits3 calendarEvents:calendarEvents atTime:&v136 results:?];
    v53 = v136;

    v27 = selfCopy;
    [v26 addObjectsFromArray:v53];
  }

  else
  {
    v53 = 0;
  }

  config3 = [(PCAlgorithms *)v27 config];
  useScheduledTravelPredictor = [config3 useScheduledTravelPredictor];

  if (useScheduledTravelPredictor)
  {

    mapsActiveNavigation = [v124 mapsActiveNavigation];
    mapsHistoricalNavigations = [v124 mapsHistoricalNavigations];
    visits4 = [v124 visits];
    locationHistorys3 = [v124 locationHistorys];
    [v124 currentTimeCFAbsolute];
    v135 = 0;
    [PCScheduledTravelPredictor predictWithScheduledTravelWithActiveNav:mapsActiveNavigation previousNav:mapsHistoricalNavigations visitHistory:visits4 locationHistory:locationHistorys3 atTime:&v135 results:?];
    v60 = v135;

    v53 = v60;
    v27 = selfCopy;

    [v26 addObjectsFromArray:v60];
  }

  config4 = [(PCAlgorithms *)v27 config];
  v62 = [config4 useMapsViewedPlacesPredictor] & v22;

  if (v62 == 1)
  {

    mapsViewedPlaces = [v124 mapsViewedPlaces];
    visits5 = [v124 visits];
    [v124 currentTimeCFAbsolute];
    v134 = 0;
    [PCMapsViewedPlacesPredictor predictWithViewedPlaces:mapsViewedPlaces history:visits5 atTime:&v134 results:?];
    v65 = v134;

    v53 = v65;
    [v26 addObjectsFromArray:v65];
  }

  v66 = v119;
  config5 = [(PCAlgorithms *)v27 config];
  useHomeKitPredictor = [config5 useHomeKitPredictor];

  v118 = v26;
  if (useHomeKitPredictor)
  {

    v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    homeKitHomes3 = [v119 homeKitHomes];
    v71 = [homeKitHomes3 countByEnumeratingWithState:&v130 objects:v146 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v131;
      do
      {
        for (j = 0; j != v72; ++j)
        {
          if (*v131 != v73)
          {
            objc_enumerationMutation(homeKitHomes3);
          }

          v75 = *(*(&v130 + 1) + 8 * j);
          if (!v25 || ([v25 containsObject:*(*(&v130 + 1) + 8 * j)] & 1) == 0)
          {
            [v69 addObject:v75];
          }
        }

        v72 = [homeKitHomes3 countByEnumeratingWithState:&v130 objects:v146 count:16];
      }

      while (v72);
    }

    v76 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v149 = v69;
      _os_log_impl(&dword_1CEE74000, v76, OS_LOG_TYPE_DEFAULT, "Sending HomeKitHomes to HomeKitHome predictor: %{sensitive}@", buf, 0xCu);
    }

    v66 = v119;
    locationHistorys4 = [v119 locationHistorys];
    locationOfInterests = [v119 locationOfInterests];
    [v119 currentTimeCFAbsolute];
    v129 = 0;
    v26 = v118;
    [PCHomeKitPredictor predictHomeKitLocation:v69 locationHistory:locationHistorys4 locationsOfInterest:locationOfInterests candidateVisits:v118 atTime:&v129 locations:?];
    v79 = v129;

    v53 = v79;
    v80 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v149 = v79;
      _os_log_impl(&dword_1CEE74000, v80, OS_LOG_TYPE_DEFAULT, "HomeKitHome predictions: %{sensitive}@", buf, 0xCu);
    }

    [v118 addObjectsFromArray:v79];
    v27 = selfCopy;
  }

  config6 = [(PCAlgorithms *)v27 config];
  useProbabilityModifier = [config6 useProbabilityModifier];

  if (useProbabilityModifier)
  {
    dynamicsWeighting = [(PCAlgorithms *)v27 dynamicsWeighting];
    [v124 currentTimeCFAbsolute];
    v85 = v84;
    visits6 = [v124 visits];
    [v124 locationHistorys];
    v87 = v121 = v53;
    motionActivitys = [v124 motionActivitys];
    [dynamicsWeighting modifyCandidateProbabilities:v118 atTime:visits6 visitHistory:v87 locationHistory:motionActivitys motionActivity:v85];

    [v124 currentTimeCFAbsolute];
    v90 = v89;
    visits7 = [v124 visits];
    v26 = v118;
    transitions3 = [v124 transitions];
    [PCConstraintsWeighting modifyCandidateVisitProbabilities:v118 transitProbabilities:v123 atTime:visits7 withVisitHistory:transitions3 transitionHistory:v90];

    v53 = v121;
  }

  config7 = [(PCAlgorithms *)v27 config];
  useProbabilityCuller = [config7 useProbabilityCuller];

  if (useProbabilityCuller)
  {
    [PCCullingLogic cullLowProbabilityVisits:v26];
  }

  config8 = [(PCAlgorithms *)v27 config];
  useParkedCarLocationPredictor = [config8 useParkedCarLocationPredictor];

  if (useParkedCarLocationPredictor)
  {

    parkedCar = [v66 parkedCar];
    locationHistorys5 = [v66 locationHistorys];
    locationOfInterests2 = [v66 locationOfInterests];
    [v66 currentTimeCFAbsolute];
    v128 = 0;
    [PCParkedCarLocationPredictor predictParkedCarLocation:parkedCar locationHistory:locationHistorys5 locationsOfInterest:locationOfInterests2 candidateVisits:v26 atTime:&v128 locations:?];
    v100 = v128;

    v53 = v100;
    [v26 addObjectsFromArray:v100];
  }

  config9 = [(PCAlgorithms *)v27 config];
  usePropagatedPosition = [config9 usePropagatedPosition];

  if (usePropagatedPosition)
  {

    propagatedLocations = [v66 propagatedLocations];
    v127 = 0;
    [v124 currentTimeCFAbsolute];
    [PCPropagatedPositionPredictor predictPropagatedPosition:propagatedLocations locations:&v127 atTime:?];
    v104 = v127;

    v122 = v104;
    [v26 addObjectsFromArray:v104];
  }

  else
  {
    v122 = v53;
  }

  v126 = 0;
  [PCTravelPredictor predictTravel:v26 results:&v126];
  v116 = v126;
  [v123 addObjectsFromArray:?];
  workoutPrediction = [(PCAlgorithms *)v27 workoutPrediction];
  visits8 = [v66 visits];
  workouts = [v66 workouts];
  locationOfInterests3 = [v66 locationOfInterests];
  v109 = v66;
  v110 = locationOfInterests3;
  [v109 currentTimeCFAbsolute];
  v125 = 0;
  [workoutPrediction predictWithLocationHistory:visits8 workoutHistory:workouts LOIs:v110 atTime:&v125 workoutPredictions:?];
  v111 = v125;

  v112 = objc_alloc_init(PCPPredictedContextResult);
  [(PCPPredictedContextResult *)v112 setPredictedContextLocations:v26];
  [(PCPPredictedContextResult *)v112 setPredictedContextTransitions:v123];
  [(PCPPredictedContextResult *)v112 setPredictedContextWorkouts:v111];
  [(PCPPredictedContextResult *)v112 setPredictedContextAnalytics:v24];
  [(PCPPredictedContextResult *)v112 setComputeRequested:v145];
  if (result)
  {
    v113 = v112;
    *result = v112;
  }

  v114 = *MEMORY[0x1E69E9840];
  return 1;
}

@end