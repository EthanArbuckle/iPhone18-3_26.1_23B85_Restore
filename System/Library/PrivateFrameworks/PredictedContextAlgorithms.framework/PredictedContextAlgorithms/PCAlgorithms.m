@interface PCAlgorithms
- (BOOL)applyAlgorithmState:(id)a3 outError:(id *)a4;
- (BOOL)computeWithInputSignals:(id)a3 outError:(id *)a4;
- (BOOL)interruptComputeWithError:(id *)a3;
- (BOOL)predictContextWithInputSignals:(id)a3 result:(id *)a4 outError:(id *)a5;
- (BOOL)retrieveAlgorithmState:(id *)a3 outError:(id *)a4;
- (BOOL)retrieveWorkoutClusters:(id *)a3 outError:(id *)a4;
- (PCAlgorithms)init;
- (PCAlgorithms)initWithConfig:(id)a3;
- (void)_initVisitHistoryAndOutOfPattern;
@end

@implementation PCAlgorithms

- (PCAlgorithms)init
{
  v3 = objc_alloc_init(PCAlgorithmsConfig);
  v4 = [(PCAlgorithms *)self initWithConfig:v3];

  return v4;
}

- (PCAlgorithms)initWithConfig:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PCAlgorithms;
  v5 = [(PCAlgorithms *)&v20 init];
  if (v5)
  {
    v6 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "initializing PCAlgorithms with config: %@", buf, 0xCu);
    }

    [(PCAlgorithms *)v5 setConfig:v4];
    v7 = objc_alloc_init(PCWorkoutPrediction);
    [(PCAlgorithms *)v5 setWorkoutPrediction:v7];

    v8 = [PCVisitHistoryPredictor alloc];
    v9 = [v4 visitHistoryConfig];
    v10 = [(PCVisitHistoryPredictor *)v8 initWithConfig:v9];
    [(PCAlgorithms *)v5 setVisitHistoryPred:v10];

    v11 = [[PCOutOfPatternLogic alloc] initWithModelCentroidLatLon:0];
    [(PCAlgorithms *)v5 setOutOfPatternLogic:v11];

    v12 = [PCDynamicsWeighting alloc];
    v13 = [v4 dynamicsConfig];
    v14 = [v13 directionScaleFactorEstimator];
    v15 = [v4 dynamicsConfig];
    v16 = [v15 etaScaleFactorEstimator];
    v17 = [(PCDynamicsWeighting *)v12 initWithDirectionScaleFactorEstimator:v14 ETAScaleFactorEstimator:v16];
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

- (BOOL)applyAlgorithmState:(id)a3 outError:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E696ACD0]);
  v8 = [v6 algorithmState];
  v30 = 0;
  v9 = [v7 initForReadingFromData:v8 error:&v30];
  v10 = v30;

  if (!v10)
  {
    v14 = [v9 decodeIntForKey:@"version"];
    if (v14 == 2)
    {
      v15 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"visit-history-predictor"];
      [(PCAlgorithms *)self setVisitHistoryPred:v15];

      v16 = [(PCAlgorithms *)self visitHistoryPred];

      v17 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"LastTrainingDateCFAbsTime"];
      [(PCAlgorithms *)self setLastComputeDate:v17];

      v18 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"out-of-pattern-logic"];
      [(PCAlgorithms *)self setOutOfPatternLogic:v18];

      v19 = [(PCAlgorithms *)self outOfPatternLogic];
      LOBYTE(v18) = v19 == 0;

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

      if (!v16)
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

      v25 = [(PCAlgorithms *)self workoutPrediction];
      LODWORD(v24) = v25 == 0;

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

      if (a4)
      {
LABEL_26:
        v10 = 0;
        v13 = 0;
        *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PCErrorDomain" code:1 userInfo:0];
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
      if (a4)
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
  if (!a4)
  {
    goto LABEL_28;
  }

  v12 = v10;
  v13 = 0;
  *a4 = v10;
LABEL_29:

  v28 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)retrieveAlgorithmState:(id *)a3 outError:(id *)a4
{
  v6 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "retrieveAlgorithmState!", v16, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeInt:2 forKey:@"version"];
  v8 = [(PCAlgorithms *)self visitHistoryPred];
  [v7 encodeObject:v8 forKey:@"visit-history-predictor"];

  v9 = [(PCAlgorithms *)self lastComputeDate];

  if (v9)
  {
    v10 = [(PCAlgorithms *)self lastComputeDate];
    [v7 encodeObject:v10 forKey:@"LastTrainingDateCFAbsTime"];
  }

  v11 = [(PCAlgorithms *)self outOfPatternLogic];
  [v7 encodeObject:v11 forKey:@"out-of-pattern-logic"];

  v12 = [(PCAlgorithms *)self workoutPrediction];
  [v7 encodeObject:v12 forKey:@"WorkoutPrediction"];

  v13 = [v7 encodedData];
  v14 = objc_alloc_init(PCPAlgorithmState);
  *a3 = v14;
  [(PCPAlgorithmState *)v14 setAlgorithmState:v13];

  return 1;
}

- (BOOL)retrieveWorkoutClusters:(id *)a3 outError:(id *)a4
{
  v5 = [(PCAlgorithms *)self workoutPrediction:a3];
  v6 = [v5 fetchClusters];

  v7 = v6;
  *a3 = v6;

  return 1;
}

- (BOOL)interruptComputeWithError:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v5, OS_LOG_TYPE_DEFAULT, "interrupt training request received", buf, 2u);
  }

  v6 = [(PCAlgorithms *)self visitHistoryPred];

  if (!v6)
  {
    v20 = 1;
    goto LABEL_17;
  }

  v7 = [(PCAlgorithms *)self currentComputeDate];
  if (v7 && (v8 = v7, [(PCAlgorithms *)self lastComputeDate], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [(PCAlgorithms *)self currentComputeDate];
    [v10 doubleValue];
    v12 = v11;
    v13 = [(PCAlgorithms *)self lastComputeDate];
    [v13 doubleValue];
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

      if (!a3)
      {
        v20 = 0;
        goto LABEL_17;
      }

      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E696A578];
      v25 = @"deferral request ignored due to model age";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v19 = [v17 initWithDomain:@"PCErrorDomain" code:6 userInfo:v18];
      v20 = 0;
      *a3 = v19;
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

  v18 = [(PCAlgorithms *)self visitHistoryPred];
  [v18 interruptTraining];
  v20 = 1;
LABEL_15:

LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)computeWithInputSignals:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(PCAlgorithms *)self outOfPatternLogic];
  v8 = [v7 processInputSignals:v6 isOutOfPattern:0];

  v9 = [v6 currentTimeZoneAbbreviation];

  v36 = a4;
  if (v9)
  {
    v10 = MEMORY[0x1E695DFE8];
    v11 = [v6 currentTimeZoneAbbreviation];
    v9 = [v10 timeZoneWithAbbreviation:v11];
  }

  v12 = MEMORY[0x1E696AD98];
  [v6 currentTimeCFAbsolute];
  v13 = [v12 numberWithDouble:?];
  [(PCAlgorithms *)self setCurrentComputeDate:v13];

  v14 = [(PCAlgorithms *)self visitHistoryPred];
  v15 = [v8 visits];
  v16 = [v8 transitions];
  v17 = [v8 locationOfInterests];
  v18 = [v8 homeKitHomes];
  [v8 currentTimeCFAbsolute];
  v39 = 0;
  v37 = v9;
  [v14 computeWithHistory:v15 transitions:v16 locationsOfInterest:v17 homekitHomes:v18 atTime:v9 inTimeZone:&v39 withError:?];
  v19 = v39;

  if (v19)
  {
    if (v36)
    {
      v20 = v19;
      v21 = 0;
      *v36 = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v22 = MEMORY[0x1E696AD98];
    [v6 currentTimeCFAbsolute];
    v23 = [v22 numberWithDouble:?];
    [(PCAlgorithms *)self setLastComputeDate:v23];

    v24 = [v6 locationHistorys];
    [v6 currentTimeCFAbsolute];
    v25 = [PCLocationUtils currentLocationWithLocationHistory:v24 currentTime:?];

    v26 = [(PCAlgorithms *)self outOfPatternLogic];
    v35 = v25;
    [v26 resetAwaitingRetrainWithCurrentLocation:v25 inputSignals:v6];

    v27 = [(PCAlgorithms *)self workoutPrediction];
    v28 = [v6 visits];
    v29 = [v6 workouts];
    v30 = [v6 locationOfInterests];
    [v6 currentTimeCFAbsolute];
    v38 = 0;
    v31 = [v27 computeWithLocationHistory:v28 workoutHistory:v29 LOIs:v30 atTime:&v38 error:?];
    v32 = v38;

    v21 = 1;
    if (v31)
    {
      v9 = v37;
    }

    else
    {
      v9 = v37;
      if (v32 && [v32 code] != 4)
      {
        if (v36)
        {
          v33 = v32;
          v21 = 0;
          *v36 = v32;
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

- (BOOL)predictContextWithInputSignals:(id)a3 result:(id *)a4 outError:(id *)a5
{
  v150 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v145 = 0;
  v7 = [v6 visits];
  v8 = [PCNeuralNetworkUtilities sortVisitHistory:v7];
  v9 = [v8 mutableCopy];
  [v6 setVisits:v9];

  v10 = [v6 transitions];
  v11 = [PCNeuralNetworkUtilities sortTransitionHistory:v10];
  v12 = [v11 mutableCopy];
  [v6 setTransitions:v12];

  v13 = [v6 locationHistorys];
  v14 = [PCNeuralNetworkUtilities sortLocationHistory:v13];
  v15 = [v14 mutableCopy];
  [v6 setLocationHistorys:v15];

  [PCLocationUtils cleanCurrentVisitWithMissingData:v6];
  v16 = [(PCAlgorithms *)self outOfPatternLogic];
  v124 = [v16 processInputSignals:v6 isOutOfPattern:&v145];

  v17 = [(PCAlgorithms *)self outOfPatternLogic];
  v18 = [v17 isWaitingRetrain];

  if (v18)
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEFAULT, "Suppressing history based predictors due to awaiting retrain", buf, 2u);
    }
  }

  v119 = v6;
  v120 = self;
  v20 = [(PCAlgorithms *)self config];
  v21 = [v20 useVisitHistoryPredictor];
  v22 = v18 ^ 1;

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (!v21)
  {
    v123 = 0;
    v26 = 0;
LABEL_26:
    v27 = v120;
    goto LABEL_27;
  }

  v123 = 0;
  v26 = 0;
  v27 = v120;
  if (!v22)
  {
    goto LABEL_27;
  }

  v28 = [(PCAlgorithms *)v120 visitHistoryPred];
  v29 = [v28 hasTrainedModel];

  v30 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    if (v31)
    {
      v32 = [v6 homeKitHomes];
      *buf = 138739971;
      v149 = v32;
      _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_DEFAULT, "HomeKitHomes included in input signals: %{sensitive}@", buf, 0xCu);
    }

    v33 = [(PCAlgorithms *)v120 visitHistoryPred];
    v34 = [v124 visits];
    v35 = [v124 transitions];
    v36 = [v124 locationHistorys];
    v37 = [v124 homeKitHomes];
    [v124 currentTimeCFAbsolute];
    v143 = 0;
    v144 = 0;
    v141 = 0;
    v142 = 0;
    [v33 predictWithHistory:v34 transitionHistory:v35 locationHistory:v36 homekitHomes:v37 atTime:&v144 locations:&v143 transitions:&v142 containsHomeKitPredictions:&v141 missingLoiResults:?];
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
            v47 = [(PCPPredictedContextAnalytics *)v24 rolledLoiAnalyticsDictionarys];
            v48 = [v23 objectForKeyedSubscript:v46];
            [v47 addObject:v48];
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
  v49 = [(PCAlgorithms *)v27 config];
  v50 = [v49 useCalendarVisitPredictor] & v22;

  if (v50 == 1)
  {
    v51 = [v124 visits];
    v52 = [v124 calendarEvents];
    [v124 currentTimeCFAbsolute];
    v136 = 0;
    [PCCalendarVisitPredictor predictWithHistory:v51 calendarEvents:v52 atTime:&v136 results:?];
    v53 = v136;

    v27 = v120;
    [v26 addObjectsFromArray:v53];
  }

  else
  {
    v53 = 0;
  }

  v54 = [(PCAlgorithms *)v27 config];
  v55 = [v54 useScheduledTravelPredictor];

  if (v55)
  {

    v56 = [v124 mapsActiveNavigation];
    v57 = [v124 mapsHistoricalNavigations];
    v58 = [v124 visits];
    v59 = [v124 locationHistorys];
    [v124 currentTimeCFAbsolute];
    v135 = 0;
    [PCScheduledTravelPredictor predictWithScheduledTravelWithActiveNav:v56 previousNav:v57 visitHistory:v58 locationHistory:v59 atTime:&v135 results:?];
    v60 = v135;

    v53 = v60;
    v27 = v120;

    [v26 addObjectsFromArray:v60];
  }

  v61 = [(PCAlgorithms *)v27 config];
  v62 = [v61 useMapsViewedPlacesPredictor] & v22;

  if (v62 == 1)
  {

    v63 = [v124 mapsViewedPlaces];
    v64 = [v124 visits];
    [v124 currentTimeCFAbsolute];
    v134 = 0;
    [PCMapsViewedPlacesPredictor predictWithViewedPlaces:v63 history:v64 atTime:&v134 results:?];
    v65 = v134;

    v53 = v65;
    [v26 addObjectsFromArray:v65];
  }

  v66 = v119;
  v67 = [(PCAlgorithms *)v27 config];
  v68 = [v67 useHomeKitPredictor];

  v118 = v26;
  if (v68)
  {

    v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v70 = [v119 homeKitHomes];
    v71 = [v70 countByEnumeratingWithState:&v130 objects:v146 count:16];
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
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v130 + 1) + 8 * j);
          if (!v25 || ([v25 containsObject:*(*(&v130 + 1) + 8 * j)] & 1) == 0)
          {
            [v69 addObject:v75];
          }
        }

        v72 = [v70 countByEnumeratingWithState:&v130 objects:v146 count:16];
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
    v77 = [v119 locationHistorys];
    v78 = [v119 locationOfInterests];
    [v119 currentTimeCFAbsolute];
    v129 = 0;
    v26 = v118;
    [PCHomeKitPredictor predictHomeKitLocation:v69 locationHistory:v77 locationsOfInterest:v78 candidateVisits:v118 atTime:&v129 locations:?];
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
    v27 = v120;
  }

  v81 = [(PCAlgorithms *)v27 config];
  v82 = [v81 useProbabilityModifier];

  if (v82)
  {
    v83 = [(PCAlgorithms *)v27 dynamicsWeighting];
    [v124 currentTimeCFAbsolute];
    v85 = v84;
    v86 = [v124 visits];
    [v124 locationHistorys];
    v87 = v121 = v53;
    v88 = [v124 motionActivitys];
    [v83 modifyCandidateProbabilities:v118 atTime:v86 visitHistory:v87 locationHistory:v88 motionActivity:v85];

    [v124 currentTimeCFAbsolute];
    v90 = v89;
    v91 = [v124 visits];
    v26 = v118;
    v92 = [v124 transitions];
    [PCConstraintsWeighting modifyCandidateVisitProbabilities:v118 transitProbabilities:v123 atTime:v91 withVisitHistory:v92 transitionHistory:v90];

    v53 = v121;
  }

  v93 = [(PCAlgorithms *)v27 config];
  v94 = [v93 useProbabilityCuller];

  if (v94)
  {
    [PCCullingLogic cullLowProbabilityVisits:v26];
  }

  v95 = [(PCAlgorithms *)v27 config];
  v96 = [v95 useParkedCarLocationPredictor];

  if (v96)
  {

    v97 = [v66 parkedCar];
    v98 = [v66 locationHistorys];
    v99 = [v66 locationOfInterests];
    [v66 currentTimeCFAbsolute];
    v128 = 0;
    [PCParkedCarLocationPredictor predictParkedCarLocation:v97 locationHistory:v98 locationsOfInterest:v99 candidateVisits:v26 atTime:&v128 locations:?];
    v100 = v128;

    v53 = v100;
    [v26 addObjectsFromArray:v100];
  }

  v101 = [(PCAlgorithms *)v27 config];
  v102 = [v101 usePropagatedPosition];

  if (v102)
  {

    v103 = [v66 propagatedLocations];
    v127 = 0;
    [v124 currentTimeCFAbsolute];
    [PCPropagatedPositionPredictor predictPropagatedPosition:v103 locations:&v127 atTime:?];
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
  v105 = [(PCAlgorithms *)v27 workoutPrediction];
  v106 = [v66 visits];
  v107 = [v66 workouts];
  v108 = [v66 locationOfInterests];
  v109 = v66;
  v110 = v108;
  [v109 currentTimeCFAbsolute];
  v125 = 0;
  [v105 predictWithLocationHistory:v106 workoutHistory:v107 LOIs:v110 atTime:&v125 workoutPredictions:?];
  v111 = v125;

  v112 = objc_alloc_init(PCPPredictedContextResult);
  [(PCPPredictedContextResult *)v112 setPredictedContextLocations:v26];
  [(PCPPredictedContextResult *)v112 setPredictedContextTransitions:v123];
  [(PCPPredictedContextResult *)v112 setPredictedContextWorkouts:v111];
  [(PCPPredictedContextResult *)v112 setPredictedContextAnalytics:v24];
  [(PCPPredictedContextResult *)v112 setComputeRequested:v145];
  if (a4)
  {
    v113 = v112;
    *a4 = v112;
  }

  v114 = *MEMORY[0x1E69E9840];
  return 1;
}

@end