@interface PCConstraintsWeightingUtils
+ (BOOL)_isGeneratedCurrentContext:(id)context;
+ (double)_estimatedTransitionDurationFromTransitions:(id)transitions originVisitId:(id)id destinationVisitId:(id)visitId;
+ (double)_estimatedTransitionDurationInSecondsForDistance:(double)distance drivingProbability:(double *)probability;
+ (double)_minimumStayAtCurrentContextInSec;
+ (id)_aggregateMergeResults:(id)results;
+ (id)_allLOIFromBins:(id)bins;
+ (id)_currentContextPredictionFromMergeResults:(id)results currentLoiIdentifier:(id)identifier currentTime:(double)time;
+ (id)_earliestSignificantMergeResultAfterTime:(double)time excludingLoiId:(id)id inMergeResults:(id)results confidenceThreshold:(double)threshold;
+ (id)_estimatedTransportsFromTransitions:(id)transitions originVisitId:(id)id destinationVisitId:(id)visitId;
+ (id)_movingAverageForSeries:(id)series windowSize:(int64_t)size loiIdForPadding:(id)padding currentContextId:(id)id bins:(id)bins;
+ (id)_predictedTransitionInfoFromHistoricalTransitions:(id)transitions originVisitId:(id)id destinationVisitId:(id)visitId;
+ (id)_probabilitySeriesFromBins:(id)bins loiId:(id)id;
+ (id)_transitionEstimationInfoWithNextResult:(id)result currentLoiIdentifier:(id)identifier transitionHistory:(id)history loiToLocation:(id)location;
+ (id)adaptMergedClusters:(id)clusters bins:(id)bins loiToColMap:(id)map;
+ (id)applyMovingAverage:(id)average windowSize:(int64_t)size currentContextId:(id)id;
+ (id)convertBinsToPredSample:(id)sample loiToColMap:(id)map;
+ (id)convertMergeResultToLocation:(id)location withLocationMap:(id)map;
+ (id)convertMergeResultToTransition:(id)transition;
+ (id)deduplicateSources:(id)sources;
+ (id)loiIdOfCurrentContextFromVisitHistory:(id)history transitionHistory:(id)transitionHistory currentTime:(double)time;
+ (id)mapLOIToLocationsFromPredictedVisits:(id)visits currentLoiIdentifier:(id)identifier visitHistory:(id)history;
+ (id)mergeTransportArrays:(id)arrays;
+ (id)normalizeBins:(id)bins;
+ (id)rasterizeCandidateVisitPredictions:(id)predictions transitPredictions:(id)transitPredictions currentTimeInSec:(double)sec windowInHours:(double)hours binSizeMin:(double)min;
+ (id)transitionDummyLOI;
+ (void)_addConstraintSourceToBin:(id)bin loiId:(id)id;
+ (void)_calculateRasterizationWindowWithVisits:(id)visits transitions:(id)transitions currentTimeInSec:(double)sec windowInHours:(double)hours windowStartOut:(double *)out windowEndOut:(double *)endOut;
+ (void)_distributeProbabilityToBins:(id)bins loiId:(id)id fullProb:(double)prob effectiveStart:(double)start rampUpEnd:(double)end rampDownStart:(double)downStart effectiveEnd:(double)effectiveEnd sources:(id)self0 transports:(id)self1;
+ (void)_finalizeMergeResults:(id)results currentTime:(double)time windowEndTime:(double)endTime currentContext:(id)context currentExitTime:(double)exitTime currentExitUnc:(double)unc;
+ (void)_insertTransitionPredictionWithNextResult:(id)result currentExitTime:(double)time currentExitUnc:(double)unc transitionInfo:(id)info mergeResults:(id)results;
+ (void)_logMergeResults:(id)results withDescription:(id)description;
+ (void)_removeExistingTransitionPredictionsFromMergeResults:(id)results beforeMergeResult:(id)result;
+ (void)_trimResults:(id)results currentTime:(double)time windowEndTime:(double)endTime;
+ (void)_updateBins:(id)bins withFilteredSeries:(id)series loiId:(id)id;
+ (void)_updateExitTimeAndUncertaintyOfCurrentContextWithNextResult:(id)result currentTime:(double)time defaultDurationAtCurrentContext:(double)context transitionDuration:(double)duration inOutExitTime:(double *)exitTime inOutExitUnc:(double *)unc isGeneratedCurrentContext:(BOOL)currentContext;
+ (void)postprocessMergeResults:(id)results currentLoiIdentifier:(id)identifier currentTime:(double)time windowEndTime:(double)endTime transitionHistory:(id)history loiToLocation:(id)location;
+ (void)validateCandidateTransitions:(id)transitions validTransitions:(id)validTransitions invalidTransitions:(id)invalidTransitions;
+ (void)validateCandidateVisits:(id)visits validVisits:(id)validVisits invalidVisits:(id)invalidVisits;
@end

@implementation PCConstraintsWeightingUtils

+ (id)convertMergeResultToLocation:(id)location withLocationMap:(id)map
{
  mapCopy = map;
  locationCopy = location;
  v7 = objc_alloc_init(PCPPredictedContextLocation);
  v8 = objc_alloc_init(PCPLocationOfInterest);
  [(PCPPredictedContextLocation *)v7 setLocationOfInterest:v8];

  loiId = [locationCopy loiId];
  locationOfInterest = [(PCPPredictedContextLocation *)v7 locationOfInterest];
  [locationOfInterest setLoiIdentifier:loiId];

  v11 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextLocation *)v7 setPredictedContext:v11];

  [locationCopy confidence];
  v13 = v12;
  predictedContext = [(PCPPredictedContextLocation *)v7 predictedContext];
  [predictedContext setProbability:v13];

  v15 = objc_alloc_init(PCPPredictedContextDate);
  [locationCopy entryTime];
  [(PCPPredictedContextDate *)v15 setDate:?];
  [locationCopy entryUnc];
  [(PCPPredictedContextDate *)v15 setConfidenceInterval:?];
  v16 = objc_alloc_init(PCPPredictedContextDate);
  [locationCopy exitTime];
  [(PCPPredictedContextDate *)v16 setDate:?];
  [locationCopy exitUnc];
  [(PCPPredictedContextDate *)v16 setConfidenceInterval:?];
  v17 = objc_alloc_init(PCPPredictedContextDateInterval);
  [(PCPPredictedContextDateInterval *)v17 setStartDate:v15];
  [(PCPPredictedContextDateInterval *)v17 setEndDate:v16];
  predictedContext2 = [(PCPPredictedContextLocation *)v7 predictedContext];
  [predictedContext2 setDateInterval:v17];

  sources = [locationCopy sources];
  allObjects = [sources allObjects];
  v21 = [allObjects mutableCopy];
  predictedContext3 = [(PCPPredictedContextLocation *)v7 predictedContext];
  [predictedContext3 setSources:v21];

  loiId2 = [locationCopy loiId];

  v24 = [mapCopy objectForKeyedSubscript:loiId2];

  locationOfInterest2 = [(PCPPredictedContextLocation *)v7 locationOfInterest];
  [locationOfInterest2 setLocation:v24];

  return v7;
}

+ (id)convertMergeResultToTransition:(id)transition
{
  transitionCopy = transition;
  v4 = objc_alloc_init(PCPPredictedContextTransition);
  v5 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextTransition *)v4 setPredictedContext:v5];

  [transitionCopy confidence];
  v7 = v6;
  predictedContext = [(PCPPredictedContextTransition *)v4 predictedContext];
  [predictedContext setProbability:v7];

  v9 = objc_alloc_init(PCPPredictedContextDate);
  [transitionCopy entryTime];
  [(PCPPredictedContextDate *)v9 setDate:?];
  [transitionCopy entryUnc];
  [(PCPPredictedContextDate *)v9 setConfidenceInterval:?];
  v10 = objc_alloc_init(PCPPredictedContextDate);
  [transitionCopy exitTime];
  [(PCPPredictedContextDate *)v10 setDate:?];
  [transitionCopy exitUnc];
  [(PCPPredictedContextDate *)v10 setConfidenceInterval:?];
  v11 = objc_alloc_init(PCPPredictedContextDateInterval);
  [(PCPPredictedContextDateInterval *)v11 setStartDate:v9];
  [(PCPPredictedContextDateInterval *)v11 setEndDate:v10];
  predictedContext2 = [(PCPPredictedContextTransition *)v4 predictedContext];
  [predictedContext2 setDateInterval:v11];

  sources = [transitionCopy sources];
  allObjects = [sources allObjects];
  v15 = [allObjects mutableCopy];
  predictedContext3 = [(PCPPredictedContextTransition *)v4 predictedContext];
  [predictedContext3 setSources:v15];

  transports = [transitionCopy transports];

  v18 = [transports mutableCopy];
  [(PCPPredictedContextTransition *)v4 setPredictedContextTransports:v18];

  return v4;
}

+ (id)transitionDummyLOI
{
  if (qword_1EE04AEF8 != -1)
  {
    dispatch_once(&qword_1EE04AEF8, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_2;

  return v3;
}

uint64_t __49__PCConstraintsWeightingUtils_transitionDummyLOI__block_invoke()
{
  _MergedGlobals_2 = [MEMORY[0x1E695DEF0] dataWithBytes:"TRANSITION_DUMMY" length:16];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)rasterizeCandidateVisitPredictions:(id)predictions transitPredictions:(id)transitPredictions currentTimeInSec:(double)sec windowInHours:(double)hours binSizeMin:(double)min
{
  v124 = *MEMORY[0x1E69E9840];
  predictionsCopy = predictions;
  transitPredictionsCopy = transitPredictions;
  if ([predictionsCopy count] || transitPredictionsCopy && objc_msgSend(transitPredictionsCopy, "count"))
  {
    v110 = 0.0;
    v111 = 0.0;
    v98 = transitPredictionsCopy;
    [PCConstraintsWeightingUtils _calculateRasterizationWindowWithVisits:predictionsCopy transitions:transitPredictionsCopy currentTimeInSec:&v111 windowInHours:&v110 windowStartOut:sec windowEndOut:hours];
    v14 = min * 60.0;
    v15 = ((v110 - v111) / v14);
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v15];
    if (v15)
    {
      v17 = 0;
      do
      {
        v18 = objc_alloc_init(PCRasterBin);
        [(PCRasterBin *)v18 setBinStart:v111 + v17++ * v14];
        [(PCRasterBin *)v18 setBinEnd:v111 + v17 * v14];
        [v16 addObject:v18];
      }

      while (v15 != v17);
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v97 = predictionsCopy;
    obj = predictionsCopy;
    v19 = [obj countByEnumeratingWithState:&v106 objects:v123 count:16];
    v101 = v16;
    if (v19)
    {
      v20 = v19;
      v21 = *v107;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v107 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v106 + 1) + 8 * i);
          locationOfInterest = [v23 locationOfInterest];
          loiIdentifier = [locationOfInterest loiIdentifier];

          predictedContext = [v23 predictedContext];
          [predictedContext probability];
          v28 = v27;

          predictedContext2 = [v23 predictedContext];
          dateInterval = [predictedContext2 dateInterval];
          startDate = [dateInterval startDate];
          [startDate date];
          v33 = v32;

          predictedContext3 = [v23 predictedContext];
          dateInterval2 = [predictedContext3 dateInterval];
          endDate = [dateInterval2 endDate];
          [endDate date];
          v38 = v37;

          predictedContext4 = [v23 predictedContext];
          dateInterval3 = [predictedContext4 dateInterval];
          startDate2 = [dateInterval3 startDate];
          [startDate2 confidenceInterval];
          v43 = v42;

          if (v33 <= sec)
          {
            v44 = 0.0;
          }

          else
          {
            v44 = v43;
          }

          predictedContext5 = [v23 predictedContext];
          dateInterval4 = [predictedContext5 dateInterval];
          endDate2 = [dateInterval4 endDate];
          [endDate2 confidenceInterval];
          v49 = v48;

          v50 = v33 - v44;
          v51 = v33 + v44;
          v52 = v38 - v49;
          v53 = v38 + v49;
          v54 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134219008;
            v114 = v50;
            v115 = 2048;
            v116 = v53;
            v117 = 2048;
            v118 = v51;
            v119 = 2048;
            v120 = v52;
            v121 = 2048;
            v122 = v28;
            _os_log_impl(&dword_1CEE74000, v54, OS_LOG_TYPE_DEBUG, "Visit effective start, %.2f, effective end, %2f, rampUpEnd, %2f, rampDwonStart, %.2f, full prob, %.2f", buf, 0x34u);
          }

          predictedContext6 = [v23 predictedContext];
          sources = [predictedContext6 sources];
          v16 = v101;
          [self _distributeProbabilityToBins:v101 loiId:loiIdentifier fullProb:sources effectiveStart:0 rampUpEnd:v28 rampDownStart:v50 effectiveEnd:v51 sources:v52 transports:v53];
        }

        v20 = [obj countByEnumeratingWithState:&v106 objects:v123 count:16];
      }

      while (v20);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obja = v98;
    v57 = [obja countByEnumeratingWithState:&v102 objects:v112 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v103;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v103 != v59)
          {
            objc_enumerationMutation(obja);
          }

          v61 = *(*(&v102 + 1) + 8 * j);
          transitionDummyLOI = [self transitionDummyLOI];
          predictedContext7 = [v61 predictedContext];
          [predictedContext7 probability];
          v65 = v64;

          predictedContext8 = [v61 predictedContext];
          dateInterval5 = [predictedContext8 dateInterval];
          startDate3 = [dateInterval5 startDate];
          [startDate3 date];
          v70 = v69;

          predictedContext9 = [v61 predictedContext];
          dateInterval6 = [predictedContext9 dateInterval];
          endDate3 = [dateInterval6 endDate];
          [endDate3 date];
          v75 = v74;

          predictedContext10 = [v61 predictedContext];
          dateInterval7 = [predictedContext10 dateInterval];
          startDate4 = [dateInterval7 startDate];
          [startDate4 confidenceInterval];
          v80 = v79;

          predictedContext11 = [v61 predictedContext];
          dateInterval8 = [predictedContext11 dateInterval];
          endDate4 = [dateInterval8 endDate];
          [endDate4 confidenceInterval];
          v85 = v84;

          if (v70 <= sec)
          {
            v86 = 0.0;
          }

          else
          {
            v86 = v80;
          }

          v87 = v70 - v86;
          v88 = v70 + v86;
          v89 = v75 - v85;
          v90 = v75 + v85;
          v91 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134219008;
            v114 = v87;
            v115 = 2048;
            v116 = v90;
            v117 = 2048;
            v118 = v88;
            v119 = 2048;
            v120 = v89;
            v121 = 2048;
            v122 = v65;
            _os_log_impl(&dword_1CEE74000, v91, OS_LOG_TYPE_DEBUG, "Transition effective start, %.2f, effective end, %2f, rampUpEnd, %2f, rampDwonStart, %.2f, full prob, %.2f", buf, 0x34u);
          }

          predictedContext12 = [v61 predictedContext];
          sources2 = [predictedContext12 sources];
          predictedContextTransports = [v61 predictedContextTransports];
          v16 = v101;
          [self _distributeProbabilityToBins:v101 loiId:transitionDummyLOI fullProb:sources2 effectiveStart:predictedContextTransports rampUpEnd:v65 rampDownStart:v87 effectiveEnd:v88 sources:v89 transports:v90];
        }

        v58 = [obja countByEnumeratingWithState:&v102 objects:v112 count:16];
      }

      while (v58);
    }

    predictionsCopy = v97;
    transitPredictionsCopy = v98;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v95 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)applyMovingAverage:(id)average windowSize:(int64_t)size currentContextId:(id)id
{
  v25 = *MEMORY[0x1E69E9840];
  averageCopy = average;
  idCopy = id;
  [self _allLOIFromBins:averageCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [self _probabilitySeriesFromBins:averageCopy loiId:v14];
        v16 = [self _movingAverageForSeries:v15 windowSize:size loiIdForPadding:v14 currentContextId:idCopy bins:averageCopy];
        [self _updateBins:averageCopy withFilteredSeries:v16 loiId:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];

  return averageCopy;
}

+ (id)normalizeBins:(id)bins
{
  v51 = *MEMORY[0x1E69E9840];
  binsCopy = bins;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [binsCopy countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    v32 = *v45;
    v33 = binsCopy;
    do
    {
      v7 = 0;
      v34 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(binsCopy);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        loiProbs = [v8 loiProbs];
        allValues = [loiProbs allValues];

        v11 = [allValues countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (!v11)
        {
          goto LABEL_22;
        }

        v12 = v11;
        v13 = *v41;
        v14 = 0.0;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v41 != v13)
            {
              objc_enumerationMutation(allValues);
            }

            [*(*(&v40 + 1) + 8 * i) doubleValue];
            v14 = v14 + v16;
          }

          v12 = [allValues countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v12);

        if (v14 > 1.0)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          loiProbs2 = [v8 loiProbs];
          allValues = [loiProbs2 allKeys];

          v18 = [allValues countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v18)
          {
            v19 = v18;
            v35 = v7;
            v20 = *v37;
            v21 = 1.0 / v14;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v37 != v20)
                {
                  objc_enumerationMutation(allValues);
                }

                v23 = *(*(&v36 + 1) + 8 * j);
                v24 = MEMORY[0x1E696AD98];
                loiProbs3 = [v8 loiProbs];
                v26 = [loiProbs3 objectForKeyedSubscript:v23];
                [v26 doubleValue];
                v28 = [v24 numberWithDouble:v21 * v27];
                loiProbs4 = [v8 loiProbs];
                [loiProbs4 setObject:v28 forKeyedSubscript:v23];
              }

              v19 = [allValues countByEnumeratingWithState:&v36 objects:v48 count:16];
            }

            while (v19);
            v6 = v32;
            binsCopy = v33;
            v5 = v34;
            v7 = v35;
          }

LABEL_22:
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [binsCopy countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v5);
  }

  v30 = *MEMORY[0x1E69E9840];

  return binsCopy;
}

+ (id)convertBinsToPredSample:(id)sample loiToColMap:(id)map
{
  v47 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  mapCopy = map;
  v29 = [self _allLOIFromBins:sampleCopy];
  allObjects = [v29 allObjects];
  v9 = [allObjects sortedArrayUsingComparator:&__block_literal_global_14];

  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      v12 = [v9 objectAtIndexedSubscript:v10];
      [mapCopy setObject:v11 forKeyedSubscript:v12];

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  v30 = mapCopy;
  v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(sampleCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = sampleCopy;
  v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v35)
  {
    v32 = *v42;
    v33 = v9;
    do
    {
      v13 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v13;
        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v16 = v9;
        v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v38;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v38 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v37 + 1) + 8 * i);
              loiProbs = [v14 loiProbs];
              v23 = [loiProbs objectForKeyedSubscript:v21];
              v24 = v23;
              if (v23)
              {
                v25 = v23;
              }

              else
              {
                v25 = &unk_1F4BDDF88;
              }

              v26 = v25;

              [v15 addObject:v26];
            }

            v18 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v18);
        }

        [v34 addObject:v15];
        v13 = v36 + 1;
        v9 = v33;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v35);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v34;
}

uint64_t __67__PCConstraintsWeightingUtils_convertBinsToPredSample_loiToColMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [PCAlgorithmsCommonUtils uuidStringFromData:a2];
  v6 = [PCAlgorithmsCommonUtils uuidStringFromData:v4];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)adaptMergedClusters:(id)clusters bins:(id)bins loiToColMap:(id)map
{
  v107 = *MEMORY[0x1E69E9840];
  clustersCopy = clusters;
  binsCopy = bins;
  mapCopy = map;
  array = [MEMORY[0x1E695DF70] array];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = clustersCopy;
  v83 = [obj countByEnumeratingWithState:&v97 objects:v106 count:16];
  if (v83)
  {
    v82 = *v98;
    *&v9 = 134217984;
    v76 = v9;
    v77 = mapCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v98 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v84 = v10;
        v11 = *(*(&v97 + 1) + 8 * v10);
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v12 = mapCopy;
        v13 = [v12 countByEnumeratingWithState:&v93 objects:v105 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v94;
LABEL_8:
          v16 = 0;
          while (1)
          {
            if (*v94 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v93 + 1) + 8 * v16);
            v18 = [v12 objectForKeyedSubscript:{v17, v76}];
            intValue = [v18 intValue];
            visitLoiIdx = [v11 visitLoiIdx];

            if (visitLoiIdx == intValue)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v93 objects:v105 count:16];
              if (v14)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v21 = v17;

          if (!v21)
          {
            goto LABEL_42;
          }

          array2 = [MEMORY[0x1E695DF70] array];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v23 = binsCopy;
          v24 = [v23 countByEnumeratingWithState:&v89 objects:v102 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v90;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v90 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v89 + 1) + 8 * i);
                [v28 binStart];
                v30 = v29;
                [v28 binEnd];
                v32 = v31;
                [v28 binStart];
                v34 = v30 + (v32 - v33) * 0.5;
                [v11 visitEntryTime];
                if (v34 >= v35)
                {
                  [v11 visitExitTime];
                  if (v34 <= v36)
                  {
                    loiSources = [v28 loiSources];
                    v38 = [loiSources objectForKeyedSubscript:v21];

                    if (v38)
                    {
                      allObjects = [v38 allObjects];
                      [array2 addObjectsFromArray:allObjects];
                    }
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v89 objects:v102 count:16];
            }

            while (v25);
          }

          array3 = [MEMORY[0x1E695DF70] array];
          transitionDummyLOI = [self transitionDummyLOI];
          v42 = [v21 isEqualToData:transitionDummyLOI];

          if (v42)
          {
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v43 = v23;
            v44 = [v43 countByEnumeratingWithState:&v85 objects:v101 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v86;
              do
              {
                for (j = 0; j != v45; ++j)
                {
                  if (*v86 != v46)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v48 = *(*(&v85 + 1) + 8 * j);
                  [v48 binStart];
                  v50 = v49;
                  [v48 binEnd];
                  v52 = v51;
                  [v48 binStart];
                  v54 = v50 + (v52 - v53) * 0.5;
                  [v11 visitEntryTime];
                  if (v54 >= v55)
                  {
                    [v11 visitExitTime];
                    if (v54 <= v56)
                    {
                      predictedTransports = [v48 predictedTransports];

                      if (predictedTransports)
                      {
                        predictedTransports2 = [v48 predictedTransports];
                        [array3 addObject:predictedTransports2];
                      }
                    }
                  }
                }

                v45 = [v43 countByEnumeratingWithState:&v85 objects:v101 count:16];
              }

              while (v45);
            }
          }

          v59 = [PCMergeResult alloc];
          [v11 visitProbability];
          v61 = v60;
          [v11 visitEntryTime];
          v63 = v62;
          [v11 visitExitTime];
          v65 = v64;
          [v11 visitEntryUnc];
          v67 = v66;
          [v11 visitExitUnc];
          v69 = v68;
          v70 = [PCConstraintsWeightingUtils deduplicateSources:array2];
          v71 = [PCConstraintsWeightingUtils mergeTransportArrays:array3];
          v72 = [(PCMergeResult *)v59 initWithLoiId:v21 confidence:v70 entryTime:v71 exitTime:v61 entryUnc:v63 exitUnc:v65 sources:v67 transports:v69];

          [array addObject:v72];
          mapCopy = v77;
        }

        else
        {
LABEL_14:

LABEL_42:
          v21 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            visitLoiIdx2 = [v11 visitLoiIdx];
            *buf = v76;
            v104 = visitLoiIdx2;
            _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_ERROR, "LOI id not found for cluster with index %ld", buf, 0xCu);
          }
        }

        v10 = v84 + 1;
      }

      while (v84 + 1 != v83);
      v83 = [obj countByEnumeratingWithState:&v97 objects:v106 count:16];
    }

    while (v83);
  }

  v74 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)deduplicateSources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    [MEMORY[0x1E695DFD8] setWithArray:sourcesCopy];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v4 = ;

  return v4;
}

+ (id)mergeTransportArrays:(id)arrays
{
  v61 = *MEMORY[0x1E69E9840];
  arraysCopy = arrays;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = arraysCopy;
  v40 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v40)
  {
    v39 = *v54;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v53 + 1) + 8 * i);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v50;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v50 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v49 + 1) + 8 * j);
              v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "transportMode")}];
              v14 = [dictionary objectForKeyedSubscript:v13];
              [v14 doubleValue];
              v16 = v15;

              [v12 probability];
              v18 = [MEMORY[0x1E696AD98] numberWithDouble:v16 + v17];
              [dictionary setObject:v18 forKeyedSubscript:v13];
            }

            v9 = [v7 countByEnumeratingWithState:&v49 objects:v59 count:16];
          }

          while (v9);
        }
      }

      v40 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v40);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  allValues = [dictionary allValues];
  v20 = [allValues countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (!v20)
  {
    array = MEMORY[0x1E695E0F0];
LABEL_32:

    goto LABEL_34;
  }

  v21 = v20;
  v22 = *v46;
  v23 = 0.0;
  do
  {
    for (k = 0; k != v21; ++k)
    {
      if (*v46 != v22)
      {
        objc_enumerationMutation(allValues);
      }

      [*(*(&v45 + 1) + 8 * k) doubleValue];
      v23 = v23 + v25;
    }

    v21 = [allValues countByEnumeratingWithState:&v45 objects:v58 count:16];
  }

  while (v21);

  if (v23 > 0.0)
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    allValues = dictionary;
    v27 = [allValues countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(allValues);
          }

          v31 = *(*(&v41 + 1) + 8 * m);
          v32 = [allValues objectForKeyedSubscript:v31];
          [v32 doubleValue];
          v34 = v33 / v23;

          v35 = objc_alloc_init(PCPPredictedContextTransport);
          -[PCPPredictedContextTransport setTransportMode:](v35, "setTransportMode:", [v31 intValue]);
          [(PCPPredictedContextTransport *)v35 setProbability:v34];
          [array addObject:v35];
        }

        v28 = [allValues countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v28);
    }

    goto LABEL_32;
  }

  array = MEMORY[0x1E695E0F0];
LABEL_34:

  v36 = *MEMORY[0x1E69E9840];

  return array;
}

+ (void)validateCandidateVisits:(id)visits validVisits:(id)validVisits invalidVisits:(id)invalidVisits
{
  v62 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  validVisitsCopy = validVisits;
  invalidVisitsCopy = invalidVisits;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = [visitsCopy countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v58;
    v56 = visitsCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(visitsCopy);
        }

        v13 = *(*(&v57 + 1) + 8 * v12);
        if (![v13 hasPredictedContext])
        {
          goto LABEL_28;
        }

        predictedContext = [v13 predictedContext];
        if (![predictedContext hasContextType] || !objc_msgSend(v13, "hasLocationOfInterest"))
        {
          goto LABEL_27;
        }

        locationOfInterest = [v13 locationOfInterest];
        if (![locationOfInterest hasLocation])
        {
          goto LABEL_26;
        }

        locationOfInterest2 = [v13 locationOfInterest];
        if (([locationOfInterest2 hasLoiIdentifier] & 1) == 0)
        {

LABEL_26:
LABEL_27:

LABEL_28:
          predictedContext2 = [v13 predictedContext];
LABEL_29:
          v39 = invalidVisitsCopy;
          goto LABEL_30;
        }

        locationOfInterest3 = [v13 locationOfInterest];
        loiIdentifier = [locationOfInterest3 loiIdentifier];

        visitsCopy = v56;
        if (!loiIdentifier)
        {
          goto LABEL_28;
        }

        predictedContext2 = [v13 predictedContext];
        if ([predictedContext2 contextType] != 1 || !objc_msgSend(predictedContext2, "hasProbability") || !objc_msgSend(predictedContext2, "hasDateInterval"))
        {
          goto LABEL_29;
        }

        dateInterval = [predictedContext2 dateInterval];
        if (([dateInterval hasStartDate] & 1) == 0)
        {
          goto LABEL_34;
        }

        dateInterval2 = [predictedContext2 dateInterval];
        if (([dateInterval2 hasEndDate] & 1) == 0)
        {
          goto LABEL_33;
        }

        dateInterval3 = [predictedContext2 dateInterval];
        startDate = [dateInterval3 startDate];
        if (![startDate hasDate])
        {

LABEL_33:
LABEL_34:

          goto LABEL_29;
        }

        dateInterval4 = [predictedContext2 dateInterval];
        endDate = [dateInterval4 endDate];
        hasDate = [endDate hasDate];

        if (!hasDate)
        {
          v39 = invalidVisitsCopy;
          visitsCopy = v56;
          goto LABEL_30;
        }

        dateInterval5 = [predictedContext2 dateInterval];
        endDate2 = [dateInterval5 endDate];
        [endDate2 date];
        v27 = v26;
        dateInterval6 = [predictedContext2 dateInterval];
        startDate2 = [dateInterval6 startDate];
        [startDate2 date];
        v31 = v27 - v30;

        if (v31 * 0.2 >= 1.0)
        {
          v32 = v31 * 0.2;
        }

        else
        {
          v32 = 1.0;
        }

        dateInterval7 = [predictedContext2 dateInterval];
        startDate3 = [dateInterval7 startDate];
        if (([startDate3 hasConfidenceInterval] & 1) == 0)
        {

LABEL_37:
          dateInterval8 = [predictedContext2 dateInterval];
          startDate4 = [dateInterval8 startDate];
          [startDate4 setConfidenceInterval:v32];

          goto LABEL_38;
        }

        dateInterval9 = [predictedContext2 dateInterval];
        startDate5 = [dateInterval9 startDate];
        [startDate5 confidenceInterval];
        v38 = v37;

        if (v38 <= 0.0)
        {
          goto LABEL_37;
        }

LABEL_38:
        dateInterval10 = [predictedContext2 dateInterval];
        endDate3 = [dateInterval10 endDate];
        if ([endDate3 hasConfidenceInterval])
        {
          dateInterval11 = [predictedContext2 dateInterval];
          endDate4 = [dateInterval11 endDate];
          [endDate4 confidenceInterval];
          v47 = v46;

          visitsCopy = v56;
          if (v47 > 0.0)
          {
            goto LABEL_43;
          }
        }

        else
        {

          visitsCopy = v56;
        }

        dateInterval12 = [predictedContext2 dateInterval];
        endDate5 = [dateInterval12 endDate];
        [endDate5 setConfidenceInterval:v32];

LABEL_43:
        v39 = validVisitsCopy;
LABEL_30:
        [v39 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v50 = [visitsCopy countByEnumeratingWithState:&v57 objects:v61 count:16];
      v10 = v50;
    }

    while (v50);
  }

  v51 = *MEMORY[0x1E69E9840];
}

+ (void)validateCandidateTransitions:(id)transitions validTransitions:(id)validTransitions invalidTransitions:(id)invalidTransitions
{
  v58 = *MEMORY[0x1E69E9840];
  transitionsCopy = transitions;
  validTransitionsCopy = validTransitions;
  invalidTransitionsCopy = invalidTransitions;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = [transitionsCopy countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    do
    {
      v12 = 0;
      do
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(transitionsCopy);
        }

        v13 = *(*(&v53 + 1) + 8 * v12);
        if (![v13 hasPredictedContext] || (objc_msgSend(v13, "predictedContext"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "hasContextType"), v14, (v15 & 1) == 0))
        {
          predictedContext = [v13 predictedContext];
          goto LABEL_22;
        }

        predictedContext = [v13 predictedContext];
        if ([predictedContext contextType] != 2 || !objc_msgSend(predictedContext, "hasProbability") || !objc_msgSend(predictedContext, "hasDateInterval"))
        {
          goto LABEL_22;
        }

        dateInterval = [predictedContext dateInterval];
        if (([dateInterval hasStartDate] & 1) == 0)
        {
          goto LABEL_27;
        }

        dateInterval2 = [predictedContext dateInterval];
        if (([dateInterval2 hasEndDate] & 1) == 0)
        {
          goto LABEL_26;
        }

        dateInterval3 = [predictedContext dateInterval];
        startDate = [dateInterval3 startDate];
        if (![startDate hasDate])
        {

LABEL_26:
LABEL_27:

LABEL_22:
          v33 = invalidTransitionsCopy;
          goto LABEL_23;
        }

        dateInterval4 = [predictedContext dateInterval];
        endDate = [dateInterval4 endDate];
        hasDate = [endDate hasDate];

        if (!hasDate)
        {
          goto LABEL_22;
        }

        dateInterval5 = [predictedContext dateInterval];
        endDate2 = [dateInterval5 endDate];
        [endDate2 date];
        v22 = v21;
        dateInterval6 = [predictedContext dateInterval];
        startDate2 = [dateInterval6 startDate];
        [startDate2 date];
        v26 = v22 - v25;

        if (v26 * 0.2 >= 1.0)
        {
          v27 = v26 * 0.2;
        }

        else
        {
          v27 = 1.0;
        }

        dateInterval7 = [predictedContext dateInterval];
        startDate3 = [dateInterval7 startDate];
        if (([startDate3 hasConfidenceInterval] & 1) == 0)
        {

LABEL_29:
          dateInterval8 = [predictedContext dateInterval];
          startDate4 = [dateInterval8 startDate];
          [startDate4 setConfidenceInterval:v27];

          goto LABEL_30;
        }

        dateInterval9 = [predictedContext dateInterval];
        startDate5 = [dateInterval9 startDate];
        [startDate5 confidenceInterval];
        v32 = v31;

        if (v32 <= 0.0)
        {
          goto LABEL_29;
        }

LABEL_30:
        dateInterval10 = [predictedContext dateInterval];
        endDate3 = [dateInterval10 endDate];
        if ([endDate3 hasConfidenceInterval])
        {
          dateInterval11 = [predictedContext dateInterval];
          endDate4 = [dateInterval11 endDate];
          [endDate4 confidenceInterval];
          v40 = v39;

          if (v40 > 0.0)
          {
            goto LABEL_35;
          }
        }

        else
        {
        }

        dateInterval12 = [predictedContext dateInterval];
        endDate5 = [dateInterval12 endDate];
        [endDate5 setConfidenceInterval:v27];

LABEL_35:
        v33 = validTransitionsCopy;
LABEL_23:
        [v33 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v43 = [transitionsCopy countByEnumeratingWithState:&v53 objects:v57 count:16];
      v10 = v43;
    }

    while (v43);
  }

  v44 = *MEMORY[0x1E69E9840];
}

+ (id)mapLOIToLocationsFromPredictedVisits:(id)visits currentLoiIdentifier:(id)identifier visitHistory:(id)history
{
  v46 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  identifierCopy = identifier;
  historyCopy = history;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = visitsCopy;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        locationOfInterest = [v15 locationOfInterest];
        loiIdentifier = [locationOfInterest loiIdentifier];

        v18 = [dictionary objectForKeyedSubscript:loiIdentifier];

        if (!v18)
        {
          locationOfInterest2 = [v15 locationOfInterest];
          location = [locationOfInterest2 location];
          [dictionary setObject:location forKeyedSubscript:loiIdentifier];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v12);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = historyCopy;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
  v23 = identifierCopy;
  if (v22)
  {
    v24 = v22;
    v25 = *v37;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v36 + 1) + 8 * j);
        if ([v27 hasLoiIdentifier])
        {
          loiIdentifier2 = [v27 loiIdentifier];
          if ([loiIdentifier2 isEqualToData:v23] && objc_msgSend(v27, "hasLocation"))
          {
            loiIdentifier3 = [v27 loiIdentifier];
            v30 = [dictionary objectForKeyedSubscript:loiIdentifier3];

            v23 = identifierCopy;
            if (v30)
            {
              continue;
            }

            loiIdentifier2 = [v27 location];
            loiIdentifier4 = [v27 loiIdentifier];
            [dictionary setObject:loiIdentifier2 forKeyedSubscript:loiIdentifier4];
          }
        }
      }

      v24 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v24);
  }

  v32 = [dictionary copy];
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)loiIdOfCurrentContextFromVisitHistory:(id)history transitionHistory:(id)transitionHistory currentTime:(double)time
{
  v47 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  transitionHistoryCopy = transitionHistory;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __99__PCConstraintsWeightingUtils_loiIdOfCurrentContextFromVisitHistory_transitionHistory_currentTime___block_invoke;
  v37[3] = &unk_1E83B8078;
  *&v37[5] = time;
  v37[4] = &v38;
  [historyCopy enumerateObjectsUsingBlock:v37];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __99__PCConstraintsWeightingUtils_loiIdOfCurrentContextFromVisitHistory_transitionHistory_currentTime___block_invoke_2;
  v34[3] = &unk_1E83B8698;
  timeCopy = time;
  v29 = array;
  v35 = v29;
  [transitionHistoryCopy enumerateObjectsUsingBlock:v34];
  if (v39[5] && [v29 count])
  {
    v8 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_ERROR, "Both real time visits and transitions include the current time exist concurrently.", buf, 2u);
    }

    v9 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v39[5];
      *buf = 138412290;
      v46 = v10;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_ERROR, "Concurrent active visit: %@", buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v29;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v12)
    {
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v46 = v15;
            _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_ERROR, "Concurrent active transition: %@", buf, 0xCu);
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
      }

      while (v12);
    }
  }

  v17 = v39[5];
  if (v17)
  {
    loiIdentifier = [v17 loiIdentifier];
    v19 = loiIdentifier == 0;

    if (!v19)
    {
      loiIdentifier2 = [v39[5] loiIdentifier];
      goto LABEL_28;
    }

    v21 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v22 = "Most recent active visit has nil loiIdentifier, returning travel dummy LOI";
    goto LABEL_25;
  }

  if (![v29 count])
  {
    v21 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_26:

      goto LABEL_27;
    }

    *buf = 0;
    v22 = "No real time visits or transition include the current time";
LABEL_25:
    _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_26;
  }

LABEL_27:
  loiIdentifier2 = [self transitionDummyLOI];
LABEL_28:
  v23 = loiIdentifier2;

  _Block_object_dispose(&v38, 8);
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void __99__PCConstraintsWeightingUtils_loiIdOfCurrentContextFromVisitHistory_transitionHistory_currentTime___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([v12 hasEntryTimeCFAbsolute])
  {
    [v12 entryTimeCFAbsolute];
    v5 = v4 > *(a1 + 40);
  }

  else
  {
    v5 = 1;
  }

  if ([v12 hasExitTimeCFAbsolute])
  {
    [v12 exitTimeCFAbsolute];
    v7 = v6 < *(a1 + 40);
  }

  else
  {
    v7 = 0;
  }

  if (!v5 && !v7)
  {
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 40))
    {
      [v12 entryTimeCFAbsolute];
      v10 = v9;
      [*(*(*(a1 + 32) + 8) + 40) entryTimeCFAbsolute];
      if (v10 <= v11)
      {
        goto LABEL_12;
      }

      v8 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v8 + 40), a2);
  }

LABEL_12:
}

void __99__PCConstraintsWeightingUtils_loiIdOfCurrentContextFromVisitHistory_transitionHistory_currentTime___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 hasStartTimeCFAbsolute])
  {
    [v7 startTimeCFAbsolute];
    v4 = v3 > *(a1 + 40);
  }

  else
  {
    v4 = 1;
  }

  if ([v7 hasStopTimeCFAbsolute])
  {
    [v7 stopTimeCFAbsolute];
    v6 = v5 < *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  if (!v4 && !v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

+ (void)postprocessMergeResults:(id)results currentLoiIdentifier:(id)identifier currentTime:(double)time windowEndTime:(double)endTime transitionHistory:(id)history loiToLocation:(id)location
{
  resultsCopy = results;
  identifierCopy = identifier;
  historyCopy = history;
  locationCopy = location;
  [self _logMergeResults:resultsCopy withDescription:@"Initial"];
  v18 = [self _currentContextPredictionFromMergeResults:resultsCopy currentLoiIdentifier:identifierCopy currentTime:time];
  [self _logMergeResults:resultsCopy withDescription:@"After inject current context"];
  [v18 confidence];
  v20 = fmin(v19, 0.5);
  [v18 exitTime];
  v22 = v21;
  [v18 exitUnc];
  v24 = [self _earliestSignificantMergeResultAfterTime:identifierCopy excludingLoiId:resultsCopy inMergeResults:v22 - v23 confidenceThreshold:v20];
  [v18 exitTime];
  endTimeCopy = v25;
  [v18 exitUnc];
  v39 = v26;
  if (v24)
  {
    transitionDummyLOI = [self transitionDummyLOI];
    if ([identifierCopy isEqualToData:transitionDummyLOI])
    {

      v28 = 0;
      v29 = 0.0;
    }

    else
    {
      v38 = locationCopy;
      v31 = historyCopy;
      loiId = [v24 loiId];
      transitionDummyLOI2 = [self transitionDummyLOI];
      v34 = [loiId isEqualToData:transitionDummyLOI2];

      if (v34)
      {
        v28 = 0;
        v29 = 0.0;
        historyCopy = v31;
        locationCopy = v38;
      }

      else
      {
        historyCopy = v31;
        v35 = v31;
        locationCopy = v38;
        v28 = [self _transitionEstimationInfoWithNextResult:v24 currentLoiIdentifier:identifierCopy transitionHistory:v35 loiToLocation:v38];
        [v28 durationInSec];
        v29 = v36;
      }
    }

    if (([self _isGeneratedCurrentContext:v18] & 1) != 0 || v29 != 0.0)
    {
      [self _minimumStayAtCurrentContextInSec];
      [self _updateExitTimeAndUncertaintyOfCurrentContextWithNextResult:v24 currentTime:&endTimeCopy defaultDurationAtCurrentContext:&v39 transitionDuration:objc_msgSend(self inOutExitTime:"_isGeneratedCurrentContext:" inOutExitUnc:v18) isGeneratedCurrentContext:{time, v37, v29}];
      [self _logMergeResults:resultsCopy withDescription:@"After updating current context"];
    }

    if (v28)
    {
      [self _insertTransitionPredictionWithNextResult:v24 currentExitTime:v28 currentExitUnc:resultsCopy transitionInfo:endTimeCopy mergeResults:v39];
      [self _logMergeResults:resultsCopy withDescription:@"After inserting transition"];
    }

    endTimeCopy2 = endTimeCopy;
  }

  else
  {
    v39 = endTime - time;
    endTimeCopy = endTime;
    endTimeCopy2 = endTime;
  }

  [self _finalizeMergeResults:resultsCopy currentTime:v18 windowEndTime:time currentContext:endTime currentExitTime:endTimeCopy2 currentExitUnc:?];
  [self _logMergeResults:resultsCopy withDescription:@"After post processing"];
}

+ (void)_distributeProbabilityToBins:(id)bins loiId:(id)id fullProb:(double)prob effectiveStart:(double)start rampUpEnd:(double)end rampDownStart:(double)downStart effectiveEnd:(double)effectiveEnd sources:(id)self0 transports:(id)self1
{
  v58 = *MEMORY[0x1E69E9840];
  binsCopy = bins;
  idCopy = id;
  sourcesCopy = sources;
  transportsCopy = transports;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = [binsCopy countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    v24 = end - start;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(binsCopy);
        }

        v26 = *(*(&v53 + 1) + 8 * i);
        [v26 binStart];
        v28 = v27;
        [v26 binEnd];
        if (v28 >= start)
        {
          startCopy = v28;
        }

        else
        {
          startCopy = start;
        }

        if (effectiveEndCopy >= effectiveEnd)
        {
          effectiveEndCopy = effectiveEnd;
        }

        if (startCopy < effectiveEndCopy)
        {
          v31 = startCopy + (effectiveEndCopy - startCopy) * 0.5;
          probCopy2 = 0.0;
          if (v31 >= start)
          {
            if (v31 >= end)
            {
              probCopy2 = prob;
              if (v31 > downStart)
              {
                probCopy2 = 0.0;
                if (v31 <= effectiveEnd)
                {
                  v33 = (effectiveEnd - v31) / (effectiveEnd - downStart);
LABEL_19:
                  probCopy2 = v33 * prob;
                }
              }
            }

            else
            {
              probCopy2 = prob;
              if (v24 > 0.0)
              {
                v33 = (v31 - start) / v24;
                goto LABEL_19;
              }
            }
          }

          loiProbs = [v26 loiProbs];
          v35 = [loiProbs objectForKeyedSubscript:idCopy];
          v36 = v35;
          v37 = &unk_1F4BDDF88;
          if (v35)
          {
            v37 = v35;
          }

          v38 = v37;

          v39 = MEMORY[0x1E696AD98];
          [v38 doubleValue];
          v41 = v40;

          v42 = [v39 numberWithDouble:probCopy2 + v41];
          loiProbs2 = [v26 loiProbs];
          [loiProbs2 setObject:v42 forKeyedSubscript:idCopy];

          loiSources = [v26 loiSources];
          v45 = [loiSources objectForKeyedSubscript:idCopy];

          if (!v45)
          {
            v45 = [MEMORY[0x1E695DFA8] set];
            loiSources2 = [v26 loiSources];
            [loiSources2 setObject:v45 forKeyedSubscript:idCopy];
          }

          [v45 addObjectsFromArray:sourcesCopy];
          if (transportsCopy && [transportsCopy count])
          {
            predictedTransports = [v26 predictedTransports];

            if (!predictedTransports)
            {
              array = [MEMORY[0x1E695DF70] array];
              [v26 setPredictedTransports:array];
            }

            predictedTransports2 = [v26 predictedTransports];
            [predictedTransports2 addObjectsFromArray:transportsCopy];
          }

          continue;
        }
      }

      v22 = [binsCopy countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v22);
  }

  v50 = *MEMORY[0x1E69E9840];
}

+ (id)_allLOIFromBins:(id)bins
{
  v20 = *MEMORY[0x1E69E9840];
  binsCopy = bins;
  v4 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = binsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        loiProbs = [*(*(&v15 + 1) + 8 * i) loiProbs];
        allKeys = [loiProbs allKeys];
        [v4 addObjectsFromArray:allKeys];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)_calculateRasterizationWindowWithVisits:(id)visits transitions:(id)transitions currentTimeInSec:(double)sec windowInHours:(double)hours windowStartOut:(double *)out windowEndOut:(double *)endOut
{
  v58 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  transitionsCopy = transitions;
  v14 = sec + hours * 3600.0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = [visitsCopy countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(visitsCopy);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        predictedContext = [v19 predictedContext];
        dateInterval = [predictedContext dateInterval];
        startDate = [dateInterval startDate];
        [startDate date];
        v24 = v23;

        predictedContext2 = [v19 predictedContext];
        dateInterval2 = [predictedContext2 dateInterval];
        endDate = [dateInterval2 endDate];
        [endDate date];
        v29 = v28;

        if (sec >= v24)
        {
          sec = v24;
        }

        if (v14 < v29)
        {
          v14 = v29;
        }
      }

      v16 = [visitsCopy countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v16);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v30 = transitionsCopy;
  v31 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v49;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v48 + 1) + 8 * j);
        predictedContext3 = [v35 predictedContext];
        dateInterval3 = [predictedContext3 dateInterval];
        startDate2 = [dateInterval3 startDate];
        [startDate2 date];
        v40 = v39;

        predictedContext4 = [v35 predictedContext];
        dateInterval4 = [predictedContext4 dateInterval];
        endDate2 = [dateInterval4 endDate];
        [endDate2 date];
        v45 = v44;

        if (sec >= v40)
        {
          sec = v40;
        }

        if (v14 < v45)
        {
          v14 = v45;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v32);
  }

  *out = sec;
  *endOut = v14;

  v46 = *MEMORY[0x1E69E9840];
}

+ (id)_aggregateMergeResults:(id)results
{
  v35 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v4 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = resultsCopy;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v10 = 0.0;
    v11 = 1.79769313e308;
    v12 = 2.22507386e-308;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        [v15 entryTime];
        if (v11 >= v16)
        {
          v11 = v16;
        }

        [v15 exitTime];
        if (v12 < v17)
        {
          v12 = v17;
        }

        [v15 entryUnc];
        if (v13 < v18)
        {
          v13 = v18;
        }

        [v15 exitUnc];
        if (v10 < v19)
        {
          v10 = v19;
        }

        sources = [v15 sources];
        [v4 unionSet:sources];

        transports = [v15 transports];

        if (transports)
        {
          transports2 = [v15 transports];
          [array addObject:transports2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
    v11 = 1.79769313e308;
    v12 = 2.22507386e-308;
    v13 = 0.0;
  }

  v23 = [PCMergeResult alloc];
  firstObject = [v6 firstObject];
  loiId = [firstObject loiId];
  v26 = [PCConstraintsWeightingUtils mergeTransportArrays:array];
  v27 = [(PCMergeResult *)v23 initWithLoiId:loiId confidence:v4 entryTime:v26 exitTime:1.0 entryUnc:v11 exitUnc:v12 sources:v13 transports:v10];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)_earliestSignificantMergeResultAfterTime:(double)time excludingLoiId:(id)id inMergeResults:(id)results confidenceThreshold:(double)threshold
{
  v45 = *MEMORY[0x1E69E9840];
  idCopy = id;
  resultsCopy = results;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = [resultsCopy countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        loiId = [v17 loiId];
        v19 = [loiId isEqualToData:idCopy];

        if ((v19 & 1) == 0)
        {
          [v17 entryTime];
          v21 = v20;
          [v17 entryUnc];
          if (v21 + v22 > time || ([v17 confidence], v23 >= threshold))
          {
            if (!v13 || ([v17 entryTime], v25 = v24, objc_msgSend(v13, "entryTime"), v25 < v26))
            {
              v27 = v17;

              v13 = v27;
            }

            [v17 confidence];
            if (v28 >= threshold)
            {
              loiId2 = [v17 loiId];
              transitionDummyLOI = [self transitionDummyLOI];

              if (loiId2 != transitionDummyLOI)
              {
                if (!v14 || ([v17 entryTime], v32 = v31, objc_msgSend(v14, "entryTime"), v32 < v33))
                {
                  v34 = v17;

                  v14 = v34;
                }
              }
            }
          }
        }
      }

      v12 = [resultsCopy countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v14)
  {
    v35 = v14;
  }

  else
  {
    v35 = v13;
  }

  v36 = v35;

  v37 = *MEMORY[0x1E69E9840];
  return v35;
}

+ (void)_removeExistingTransitionPredictionsFromMergeResults:(id)results beforeMergeResult:(id)result
{
  resultCopy = result;
  resultsCopy = results;
  [resultCopy entryTime];
  v9 = v8;
  [resultCopy entryUnc];
  v11 = v10;

  v13[1] = 3221225472;
  v13[0] = MEMORY[0x1E69E9820];
  v13[2] = __102__PCConstraintsWeightingUtils__removeExistingTransitionPredictionsFromMergeResults_beforeMergeResult___block_invoke;
  v13[3] = &__block_descriptor_48_e30_B32__0__PCMergeResult_8Q16_B24l;
  v13[4] = self;
  *&v13[5] = v9 + v11;
  v12 = [resultsCopy indexesOfObjectsPassingTest:v13];
  [resultsCopy removeObjectsAtIndexes:v12];
}

BOOL __102__PCConstraintsWeightingUtils__removeExistingTransitionPredictionsFromMergeResults_beforeMergeResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 loiId];
  v5 = [*(a1 + 32) transitionDummyLOI];
  v6 = [v4 isEqualToData:v5];

  if (v6)
  {
    [v3 exitTime];
    v8 = v7 <= *(a1 + 40);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_predictedTransitionInfoFromHistoricalTransitions:(id)transitions originVisitId:(id)id destinationVisitId:(id)visitId
{
  visitIdCopy = visitId;
  idCopy = id;
  transitionsCopy = transitions;
  [self _estimatedTransitionDurationFromTransitions:transitionsCopy originVisitId:idCopy destinationVisitId:visitIdCopy];
  v12 = v11;
  v13 = [self _estimatedTransportsFromTransitions:transitionsCopy originVisitId:idCopy destinationVisitId:visitIdCopy];

  if (v12 >= 0.0 && [v13 count])
  {
    v14 = objc_alloc_init(PCTransitionPredictionInfo);
    [(PCTransitionPredictionInfo *)v14 setDurationInSec:v12];
    [(PCTransitionPredictionInfo *)v14 setPredictedTransports:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (double)_estimatedTransitionDurationFromTransitions:(id)transitions originVisitId:(id)id destinationVisitId:(id)visitId
{
  v43 = *MEMORY[0x1E69E9840];
  transitionsCopy = transitions;
  idCopy = id;
  visitIdCopy = visitId;
  array = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = transitionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        visitIdentifierOrigin = [v15 visitIdentifierOrigin];
        if ([visitIdentifierOrigin isEqualToData:idCopy])
        {
          visitIdentifierDestination = [v15 visitIdentifierDestination];
          if ([visitIdentifierDestination isEqualToData:visitIdCopy] && (objc_msgSend(v15, "hasStartTimeCFAbsolute") & 1) != 0)
          {
            hasStopTimeCFAbsolute = [v15 hasStopTimeCFAbsolute];

            if (!hasStopTimeCFAbsolute)
            {
              continue;
            }

            [v15 stopTimeCFAbsolute];
            v20 = v19;
            [v15 startTimeCFAbsolute];
            visitIdentifierOrigin = [MEMORY[0x1E696AD98] numberWithDouble:v20 - v21];
            [array addObject:visitIdentifierOrigin];
          }

          else
          {
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v12);
  }

  if ([array count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = array;
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      v26 = 0.0;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v33 + 1) + 8 * j) doubleValue];
          v26 = v26 + v28;
        }

        v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = 0.0;
    }

    v29 = v26 / [v22 count];
  }

  else
  {
    v29 = -1.0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

+ (id)_estimatedTransportsFromTransitions:(id)transitions originVisitId:(id)id destinationVisitId:(id)visitId
{
  v46 = *MEMORY[0x1E69E9840];
  transitionsCopy = transitions;
  idCopy = id;
  visitIdCopy = visitId;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = transitionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    v14 = 0.0;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v41 + 1) + 8 * v15);
        visitIdentifierOrigin = [v16 visitIdentifierOrigin];
        if (![visitIdentifierOrigin isEqualToData:idCopy])
        {
          goto LABEL_16;
        }

        visitIdentifierDestination = [v16 visitIdentifierDestination];
        v19 = [visitIdentifierDestination isEqualToData:visitIdCopy];

        if (!v19)
        {
          goto LABEL_17;
        }

        motionActivityConfidence = 0.0;
        if (![v16 hasPredominantMotionActivity])
        {
          goto LABEL_14;
        }

        predominantMotionActivity = [v16 predominantMotionActivity];
        hasMotionActivityType = [predominantMotionActivity hasMotionActivityType];

        if (!hasMotionActivityType)
        {
          goto LABEL_14;
        }

        predominantMotionActivity2 = [v16 predominantMotionActivity];
        motionActivityType = [predominantMotionActivity2 motionActivityType];

        predominantMotionActivity3 = [v16 predominantMotionActivity];
        motionActivityConfidence = [predominantMotionActivity3 motionActivityConfidence];

        if ((motionActivityType - 2) < 2)
        {
          v26 = 1;
          goto LABEL_15;
        }

        if (motionActivityType == 5)
        {
          v26 = 3;
          goto LABEL_15;
        }

        if (motionActivityType == 4)
        {
          v26 = 2;
        }

        else
        {
LABEL_14:
          v26 = 0;
        }

LABEL_15:
        visitIdentifierOrigin = [MEMORY[0x1E696AD98] numberWithInteger:v26];
        v27 = [dictionary objectForKeyedSubscript:visitIdentifierOrigin];
        [v27 doubleValue];
        v29 = v28;

        v30 = [MEMORY[0x1E696AD98] numberWithDouble:motionActivityConfidence + v29];
        [dictionary setObject:v30 forKeyedSubscript:visitIdentifierOrigin];

        v14 = v14 + motionActivityConfidence;
LABEL_16:

LABEL_17:
        ++v15;
      }

      while (v12 != v15);
      v31 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
      v12 = v31;
      if (!v31)
      {
        goto LABEL_24;
      }
    }
  }

  v14 = 0.0;
LABEL_24:

  if ([dictionary count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __100__PCConstraintsWeightingUtils__estimatedTransportsFromTransitions_originVisitId_destinationVisitId___block_invoke;
    v38[3] = &unk_1E83B86E0;
    v40 = v14;
    v39 = array;
    v33 = array;
    [dictionary enumerateKeysAndObjectsUsingBlock:v38];
    v34 = [v33 copy];
  }

  else
  {
    v34 = MEMORY[0x1E695E0F0];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

void __100__PCConstraintsWeightingUtils__estimatedTransportsFromTransitions_originVisitId_destinationVisitId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 doubleValue];
  v7 = v6 / *(a1 + 40);
  v9 = objc_alloc_init(PCPPredictedContextTransport);
  v8 = [v5 intValue];

  [(PCPPredictedContextTransport *)v9 setTransportMode:v8];
  [(PCPPredictedContextTransport *)v9 setProbability:v7];
  [*(a1 + 32) addObject:v9];
}

+ (double)_estimatedTransitionDurationInSecondsForDistance:(double)distance drivingProbability:(double *)probability
{
  v6 = 1.0 / (exp((distance + -1.0) * -8.0) + 1.0);
  if (probability)
  {
    *probability = v6;
  }

  v7 = 40.0;
  if (distance > 10.0)
  {
    v7 = 70.0;
  }

  if (distance > 30.0)
  {
    v7 = 100.0;
  }

  return distance / (v7 * v6 + (1.0 - v6) * 5.0) * 3600.0;
}

+ (void)_trimResults:(id)results currentTime:(double)time windowEndTime:(double)endTime
{
  v21 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [resultsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [v12 entryTime];
        if (v13 < time)
        {
          [v12 setEntryTime:time];
          [v12 setEntryUnc:1.0];
        }

        [v12 exitTime];
        if (v14 > endTime)
        {
          [v12 setExitTime:endTime];
          [v12 setExitUnc:1.0];
        }
      }

      v9 = [resultsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)_currentContextPredictionFromMergeResults:(id)results currentLoiIdentifier:(id)identifier currentTime:(double)time
{
  v67 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = resultsCopy;
  v12 = [v11 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v62;
    do
    {
      v15 = 0;
      do
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v61 + 1) + 8 * v15);
        loiId = [v16 loiId];
        if ([loiId isEqualToData:identifierCopy] && (objc_msgSend(v16, "entryTime"), v18 <= time))
        {
          [v16 exitTime];
          v20 = v19;

          if (v20 > time)
          {
            [array addObject:v16];
          }
        }

        else
        {
        }

        ++v15;
      }

      while (v13 != v15);
      v21 = [v11 countByEnumeratingWithState:&v61 objects:v66 count:16];
      v13 = v21;
    }

    while (v21);
  }

  if ([array count] < 2)
  {
    if ([array count] == 1)
    {
      firstObject = [array firstObject];
    }

    else
    {
      [self _minimumStayAtCurrentContextInSec];
      v24 = time - v23;
      [self _minimumStayAtCurrentContextInSec];
      v26 = v25 + time;
      array2 = [MEMORY[0x1E695DF70] array];
      v28 = objc_opt_new();
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      [v28 setIdentifier:v30];

      transitionDummyLOI = [self transitionDummyLOI];
      v32 = [identifierCopy isEqualToData:transitionDummyLOI];

      if (v32)
      {
        v33 = objc_opt_new();
        [v33 setProbability:1.0];
        [v33 setTransportMode:0];
        [array2 addObject:v33];
      }

      v34 = [PCMergeResult alloc];
      selfCopy = self;
      [self _minimumStayAtCurrentContextInSec];
      v36 = v35;
      v55 = v28;
      v37 = [MEMORY[0x1E695DFD8] setWithObject:v28];
      v56 = array2;
      v54 = [(PCMergeResult *)v34 initWithLoiId:identifierCopy confidence:v37 entryTime:array2 exitTime:1.0 entryUnc:v24 exitUnc:v26 sources:0.0 transports:v36];

      array3 = [MEMORY[0x1E695DF70] array];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v39 = v11;
      v40 = [v39 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v58;
        do
        {
          v43 = 0;
          do
          {
            if (*v58 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v57 + 1) + 8 * v43);
            loiId2 = [v44 loiId];
            if ([loiId2 isEqualToData:identifierCopy] && (objc_msgSend(v44, "entryTime"), v46 <= v26))
            {
              [v44 exitTime];
              v48 = v47;

              if (v48 >= v24)
              {
                [array3 addObject:v44];
              }
            }

            else
            {
            }

            ++v43;
          }

          while (v41 != v43);
          v49 = [v39 countByEnumeratingWithState:&v57 objects:v65 count:16];
          v41 = v49;
        }

        while (v49);
      }

      if ([array3 count])
      {
        [v39 removeObjectsInArray:array3];
        firstObject = v54;
        [array3 addObject:v54];
        v50 = [selfCopy _aggregateMergeResults:array3];
        [v39 addObject:v50];
      }

      else
      {
        firstObject = v54;
        [v39 addObject:v54];
      }
    }
  }

  else
  {
    firstObject = [self _aggregateMergeResults:array];
    [v11 removeObjectsInArray:array];
    [v11 addObject:firstObject];
  }

  v51 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)_transitionEstimationInfoWithNextResult:(id)result currentLoiIdentifier:(id)identifier transitionHistory:(id)history loiToLocation:(id)location
{
  v38 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  identifierCopy = identifier;
  locationCopy = location;
  historyCopy = history;
  loiId = [resultCopy loiId];
  v15 = [self _predictedTransitionInfoFromHistoricalTransitions:historyCopy originVisitId:identifierCopy destinationVisitId:loiId];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = [locationCopy objectForKeyedSubscript:identifierCopy];
    loiId2 = [resultCopy loiId];
    v19 = [locationCopy objectForKeyedSubscript:loiId2];

    v35 = 0.0;
    array = [MEMORY[0x1E695DF70] array];
    if (v17 && v19)
    {
      [PCLocationUtils distanceInMetersBetweenLocation:v17 andLocation:v19];
      [self _estimatedTransitionDurationInSecondsForDistance:&v35 drivingProbability:v21 / 1000.0];
      v23 = v22;
    }

    else
    {
      v24 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        if (v17)
        {
          loiId3 = [resultCopy loiId];
        }

        else
        {
          loiId3 = identifierCopy;
        }

        *buf = 138412290;
        v37 = loiId3;
        _os_log_impl(&dword_1CEE74000, v24, OS_LOG_TYPE_ERROR, "Unknown location for LOI with id %@", buf, 0xCu);
        if (v17)
        {
        }
      }

      v23 = 1800.0;
    }

    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __124__PCConstraintsWeightingUtils__transitionEstimationInfoWithNextResult_currentLoiIdentifier_transitionHistory_loiToLocation___block_invoke;
    v33 = &unk_1E83B8708;
    v34 = array;
    v26 = array;
    v27 = _Block_copy(&v30);
    v27[2](v27, 2, v35);
    v27[2](v27, 1, 1.0 - v35);
    v16 = objc_opt_new();
    [v16 setDurationInSec:{v23, v30, v31, v32, v33}];
    [v16 setPredictedTransports:v26];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v16;
}

void __124__PCConstraintsWeightingUtils__transitionEstimationInfoWithNextResult_currentLoiIdentifier_transitionHistory_loiToLocation___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_opt_new();
  [v6 setTransportMode:a2];
  [v6 setProbability:a3];
  [*(a1 + 32) addObject:v6];
}

+ (double)_minimumStayAtCurrentContextInSec
{
  if (qword_1EE04AF08 != -1)
  {
    dispatch_once(&qword_1EE04AF08, &__block_literal_global_44);
  }

  return *&qword_1EE04AF00;
}

+ (void)_updateExitTimeAndUncertaintyOfCurrentContextWithNextResult:(id)result currentTime:(double)time defaultDurationAtCurrentContext:(double)context transitionDuration:(double)duration inOutExitTime:(double *)exitTime inOutExitUnc:(double *)unc isGeneratedCurrentContext:(BOOL)currentContext
{
  currentContextCopy = currentContext;
  v34 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  [resultCopy entryTime];
  v17 = v16;
  [resultCopy entryUnc];
  v18 = *exitTime;
  v20 = v17 - v19 - duration;
  v21 = v20 - *exitTime;
  if (v21 < 0.0)
  {
    v22 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 134218240;
      timeCopy = time;
      v32 = 2048;
      durationCopy = duration;
      _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_DEFAULT, "Formed uncertainty less than 0.0, current time, %.2f, transition duration, %.2f", &v30, 0x16u);
    }

    v21 = 0.0;
  }

  v23 = duration * 0.1;
  v24 = v20 - v23;
  if (!currentContextCopy)
  {
    v24 = v18;
  }

  v25 = time + context;
  if (v24 >= v25)
  {
    v25 = v24;
  }

  else
  {
    v26 = v25 - v24;
    [resultCopy entryTime];
    [resultCopy setEntryTime:v26 + v27];
  }

  if (currentContextCopy)
  {
    v28 = v23;
  }

  else
  {
    v28 = v21;
  }

  *exitTime = v25;
  *unc = v28;

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)_insertTransitionPredictionWithNextResult:(id)result currentExitTime:(double)time currentExitUnc:(double)unc transitionInfo:(id)info mergeResults:(id)results
{
  resultsCopy = results;
  infoCopy = info;
  resultCopy = result;
  [self _removeExistingTransitionPredictionsFromMergeResults:resultsCopy beforeMergeResult:resultCopy];
  v29 = objc_opt_new();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v29 setIdentifier:v16];

  v17 = [PCMergeResult alloc];
  transitionDummyLOI = [self transitionDummyLOI];
  [resultCopy confidence];
  v20 = v19;
  [resultCopy entryTime];
  v22 = v21;
  [resultCopy entryUnc];
  v24 = v23;

  v25 = [MEMORY[0x1E695DFD8] setWithObject:v29];
  predictedTransports = [infoCopy predictedTransports];

  v27 = [predictedTransports copy];
  v28 = [(PCMergeResult *)v17 initWithLoiId:transitionDummyLOI confidence:v25 entryTime:v27 exitTime:v20 entryUnc:time exitUnc:v22 sources:unc transports:v24];

  [resultsCopy addObject:v28];
}

+ (BOOL)_isGeneratedCurrentContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sources = [context sources];
  v4 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(sources);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [identifier isEqualToString:v9];

        if (v10)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (void)_finalizeMergeResults:(id)results currentTime:(double)time windowEndTime:(double)endTime currentContext:(id)context currentExitTime:(double)exitTime currentExitUnc:(double)unc
{
  contextCopy = context;
  resultsCopy = results;
  [contextCopy setExitTime:exitTime];
  [contextCopy setExitUnc:unc];
  [contextCopy setConfidence:1.0];

  [self _trimResults:resultsCopy currentTime:time windowEndTime:endTime];
}

+ (void)_logMergeResults:(id)results withDescription:(id)description
{
  v13 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  descriptionCopy = description;
  v7 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = descriptionCopy;
    v11 = 2048;
    v12 = [resultsCopy count];
    _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_DEBUG, "%@, Merge Results (%lu):", &v9, 0x16u);
  }

  [resultsCopy enumerateObjectsUsingBlock:&__block_literal_global_47];
  v8 = *MEMORY[0x1E69E9840];
}

void __64__PCConstraintsWeightingUtils__logMergeResults_withDescription___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 description];
    v8 = 134218242;
    v9 = a3;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1CEE74000, v5, OS_LOG_TYPE_DEBUG, "[%lu], %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)_probabilitySeriesFromBins:(id)bins loiId:(id)id
{
  v24 = *MEMORY[0x1E69E9840];
  binsCopy = bins;
  idCopy = id;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(binsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = binsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        loiProbs = [*(*(&v19 + 1) + 8 * i) loiProbs];
        v14 = [loiProbs objectForKeyedSubscript:idCopy];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &unk_1F4BDDF88;
        }

        [v7 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_movingAverageForSeries:(id)series windowSize:(int64_t)size loiIdForPadding:(id)padding currentContextId:(id)id bins:(id)bins
{
  selfCopy = self;
  seriesCopy = series;
  paddingCopy = padding;
  idCopy = id;
  binsCopy = bins;
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(seriesCopy, "count")}];
  if ([seriesCopy count])
  {
    v15 = 0;
    v16 = size / 2;
    v30 = v14;
    v31 = (2 * (size / 2)) | 1;
    do
    {
      v17 = v15 - v16;
      v18 = 0.0;
      v19 = 0.0;
      if ((v15 - v16) <= (v15 + v16))
      {
        v20 = 0;
        v21 = v31;
        do
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            if ([paddingCopy isEqualToData:{idCopy, v18}])
            {
              v22 = 1.0;
            }

            else
            {
              v22 = 0.0;
            }

            v20 |= [paddingCopy isEqualToData:{idCopy, selfCopy}];
          }

          else
          {
            v22 = 0.0;
            if (v17 < [seriesCopy count])
            {
              v23 = [seriesCopy objectAtIndexedSubscript:v17];
              [v23 doubleValue];
              v22 = v24;
            }
          }

          v19 = v19 + v22;
          ++v17;
          --v21;
        }

        while (v21);
        if (v20)
        {
          v25 = [binsCopy objectAtIndexedSubscript:v15];
          [selfCopy _addConstraintSourceToBin:v25 loiId:idCopy];
        }

        v18 = v31;
        v14 = v30;
      }

      v26 = [MEMORY[0x1E696AD98] numberWithDouble:{v19 / v18, selfCopy}];
      [v14 addObject:v26];

      ++v15;
    }

    while (v15 < [seriesCopy count]);
  }

  return v14;
}

+ (void)_updateBins:(id)bins withFilteredSeries:(id)series loiId:(id)id
{
  seriesCopy = series;
  idCopy = id;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PCConstraintsWeightingUtils__updateBins_withFilteredSeries_loiId___block_invoke;
  v11[3] = &unk_1E83B8750;
  v12 = idCopy;
  v13 = seriesCopy;
  v9 = seriesCopy;
  v10 = idCopy;
  [bins enumerateObjectsUsingBlock:v11];
}

void __68__PCConstraintsWeightingUtils__updateBins_withFilteredSeries_loiId___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 loiProbs];

  [v7 setObject:v8 forKeyedSubscript:*(a1 + 32)];
}

+ (void)_addConstraintSourceToBin:(id)bin loiId:(id)id
{
  binCopy = bin;
  idCopy = id;
  v6 = objc_opt_new();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 setIdentifier:v8];

  loiSources = [binCopy loiSources];
  v10 = [loiSources objectForKeyedSubscript:idCopy];

  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    loiSources2 = [binCopy loiSources];
    [loiSources2 setObject:v10 forKeyedSubscript:idCopy];
  }

  [v10 addObject:v6];
}

@end