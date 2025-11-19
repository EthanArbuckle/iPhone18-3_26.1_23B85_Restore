@interface PCConstraintsWeightingUtils
+ (BOOL)_isGeneratedCurrentContext:(id)a3;
+ (double)_estimatedTransitionDurationFromTransitions:(id)a3 originVisitId:(id)a4 destinationVisitId:(id)a5;
+ (double)_estimatedTransitionDurationInSecondsForDistance:(double)a3 drivingProbability:(double *)a4;
+ (double)_minimumStayAtCurrentContextInSec;
+ (id)_aggregateMergeResults:(id)a3;
+ (id)_allLOIFromBins:(id)a3;
+ (id)_currentContextPredictionFromMergeResults:(id)a3 currentLoiIdentifier:(id)a4 currentTime:(double)a5;
+ (id)_earliestSignificantMergeResultAfterTime:(double)a3 excludingLoiId:(id)a4 inMergeResults:(id)a5 confidenceThreshold:(double)a6;
+ (id)_estimatedTransportsFromTransitions:(id)a3 originVisitId:(id)a4 destinationVisitId:(id)a5;
+ (id)_movingAverageForSeries:(id)a3 windowSize:(int64_t)a4 loiIdForPadding:(id)a5 currentContextId:(id)a6 bins:(id)a7;
+ (id)_predictedTransitionInfoFromHistoricalTransitions:(id)a3 originVisitId:(id)a4 destinationVisitId:(id)a5;
+ (id)_probabilitySeriesFromBins:(id)a3 loiId:(id)a4;
+ (id)_transitionEstimationInfoWithNextResult:(id)a3 currentLoiIdentifier:(id)a4 transitionHistory:(id)a5 loiToLocation:(id)a6;
+ (id)adaptMergedClusters:(id)a3 bins:(id)a4 loiToColMap:(id)a5;
+ (id)applyMovingAverage:(id)a3 windowSize:(int64_t)a4 currentContextId:(id)a5;
+ (id)convertBinsToPredSample:(id)a3 loiToColMap:(id)a4;
+ (id)convertMergeResultToLocation:(id)a3 withLocationMap:(id)a4;
+ (id)convertMergeResultToTransition:(id)a3;
+ (id)deduplicateSources:(id)a3;
+ (id)loiIdOfCurrentContextFromVisitHistory:(id)a3 transitionHistory:(id)a4 currentTime:(double)a5;
+ (id)mapLOIToLocationsFromPredictedVisits:(id)a3 currentLoiIdentifier:(id)a4 visitHistory:(id)a5;
+ (id)mergeTransportArrays:(id)a3;
+ (id)normalizeBins:(id)a3;
+ (id)rasterizeCandidateVisitPredictions:(id)a3 transitPredictions:(id)a4 currentTimeInSec:(double)a5 windowInHours:(double)a6 binSizeMin:(double)a7;
+ (id)transitionDummyLOI;
+ (void)_addConstraintSourceToBin:(id)a3 loiId:(id)a4;
+ (void)_calculateRasterizationWindowWithVisits:(id)a3 transitions:(id)a4 currentTimeInSec:(double)a5 windowInHours:(double)a6 windowStartOut:(double *)a7 windowEndOut:(double *)a8;
+ (void)_distributeProbabilityToBins:(id)a3 loiId:(id)a4 fullProb:(double)a5 effectiveStart:(double)a6 rampUpEnd:(double)a7 rampDownStart:(double)a8 effectiveEnd:(double)a9 sources:(id)a10 transports:(id)a11;
+ (void)_finalizeMergeResults:(id)a3 currentTime:(double)a4 windowEndTime:(double)a5 currentContext:(id)a6 currentExitTime:(double)a7 currentExitUnc:(double)a8;
+ (void)_insertTransitionPredictionWithNextResult:(id)a3 currentExitTime:(double)a4 currentExitUnc:(double)a5 transitionInfo:(id)a6 mergeResults:(id)a7;
+ (void)_logMergeResults:(id)a3 withDescription:(id)a4;
+ (void)_removeExistingTransitionPredictionsFromMergeResults:(id)a3 beforeMergeResult:(id)a4;
+ (void)_trimResults:(id)a3 currentTime:(double)a4 windowEndTime:(double)a5;
+ (void)_updateBins:(id)a3 withFilteredSeries:(id)a4 loiId:(id)a5;
+ (void)_updateExitTimeAndUncertaintyOfCurrentContextWithNextResult:(id)a3 currentTime:(double)a4 defaultDurationAtCurrentContext:(double)a5 transitionDuration:(double)a6 inOutExitTime:(double *)a7 inOutExitUnc:(double *)a8 isGeneratedCurrentContext:(BOOL)a9;
+ (void)postprocessMergeResults:(id)a3 currentLoiIdentifier:(id)a4 currentTime:(double)a5 windowEndTime:(double)a6 transitionHistory:(id)a7 loiToLocation:(id)a8;
+ (void)validateCandidateTransitions:(id)a3 validTransitions:(id)a4 invalidTransitions:(id)a5;
+ (void)validateCandidateVisits:(id)a3 validVisits:(id)a4 invalidVisits:(id)a5;
@end

@implementation PCConstraintsWeightingUtils

+ (id)convertMergeResultToLocation:(id)a3 withLocationMap:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PCPPredictedContextLocation);
  v8 = objc_alloc_init(PCPLocationOfInterest);
  [(PCPPredictedContextLocation *)v7 setLocationOfInterest:v8];

  v9 = [v6 loiId];
  v10 = [(PCPPredictedContextLocation *)v7 locationOfInterest];
  [v10 setLoiIdentifier:v9];

  v11 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextLocation *)v7 setPredictedContext:v11];

  [v6 confidence];
  v13 = v12;
  v14 = [(PCPPredictedContextLocation *)v7 predictedContext];
  [v14 setProbability:v13];

  v15 = objc_alloc_init(PCPPredictedContextDate);
  [v6 entryTime];
  [(PCPPredictedContextDate *)v15 setDate:?];
  [v6 entryUnc];
  [(PCPPredictedContextDate *)v15 setConfidenceInterval:?];
  v16 = objc_alloc_init(PCPPredictedContextDate);
  [v6 exitTime];
  [(PCPPredictedContextDate *)v16 setDate:?];
  [v6 exitUnc];
  [(PCPPredictedContextDate *)v16 setConfidenceInterval:?];
  v17 = objc_alloc_init(PCPPredictedContextDateInterval);
  [(PCPPredictedContextDateInterval *)v17 setStartDate:v15];
  [(PCPPredictedContextDateInterval *)v17 setEndDate:v16];
  v18 = [(PCPPredictedContextLocation *)v7 predictedContext];
  [v18 setDateInterval:v17];

  v19 = [v6 sources];
  v20 = [v19 allObjects];
  v21 = [v20 mutableCopy];
  v22 = [(PCPPredictedContextLocation *)v7 predictedContext];
  [v22 setSources:v21];

  v23 = [v6 loiId];

  v24 = [v5 objectForKeyedSubscript:v23];

  v25 = [(PCPPredictedContextLocation *)v7 locationOfInterest];
  [v25 setLocation:v24];

  return v7;
}

+ (id)convertMergeResultToTransition:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PCPPredictedContextTransition);
  v5 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextTransition *)v4 setPredictedContext:v5];

  [v3 confidence];
  v7 = v6;
  v8 = [(PCPPredictedContextTransition *)v4 predictedContext];
  [v8 setProbability:v7];

  v9 = objc_alloc_init(PCPPredictedContextDate);
  [v3 entryTime];
  [(PCPPredictedContextDate *)v9 setDate:?];
  [v3 entryUnc];
  [(PCPPredictedContextDate *)v9 setConfidenceInterval:?];
  v10 = objc_alloc_init(PCPPredictedContextDate);
  [v3 exitTime];
  [(PCPPredictedContextDate *)v10 setDate:?];
  [v3 exitUnc];
  [(PCPPredictedContextDate *)v10 setConfidenceInterval:?];
  v11 = objc_alloc_init(PCPPredictedContextDateInterval);
  [(PCPPredictedContextDateInterval *)v11 setStartDate:v9];
  [(PCPPredictedContextDateInterval *)v11 setEndDate:v10];
  v12 = [(PCPPredictedContextTransition *)v4 predictedContext];
  [v12 setDateInterval:v11];

  v13 = [v3 sources];
  v14 = [v13 allObjects];
  v15 = [v14 mutableCopy];
  v16 = [(PCPPredictedContextTransition *)v4 predictedContext];
  [v16 setSources:v15];

  v17 = [v3 transports];

  v18 = [v17 mutableCopy];
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

+ (id)rasterizeCandidateVisitPredictions:(id)a3 transitPredictions:(id)a4 currentTimeInSec:(double)a5 windowInHours:(double)a6 binSizeMin:(double)a7
{
  v124 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  if ([v12 count] || v13 && objc_msgSend(v13, "count"))
  {
    v110 = 0.0;
    v111 = 0.0;
    v98 = v13;
    [PCConstraintsWeightingUtils _calculateRasterizationWindowWithVisits:v12 transitions:v13 currentTimeInSec:&v111 windowInHours:&v110 windowStartOut:a5 windowEndOut:a6];
    v14 = a7 * 60.0;
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
    v97 = v12;
    obj = v12;
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
          v24 = [v23 locationOfInterest];
          v25 = [v24 loiIdentifier];

          v26 = [v23 predictedContext];
          [v26 probability];
          v28 = v27;

          v29 = [v23 predictedContext];
          v30 = [v29 dateInterval];
          v31 = [v30 startDate];
          [v31 date];
          v33 = v32;

          v34 = [v23 predictedContext];
          v35 = [v34 dateInterval];
          v36 = [v35 endDate];
          [v36 date];
          v38 = v37;

          v39 = [v23 predictedContext];
          v40 = [v39 dateInterval];
          v41 = [v40 startDate];
          [v41 confidenceInterval];
          v43 = v42;

          if (v33 <= a5)
          {
            v44 = 0.0;
          }

          else
          {
            v44 = v43;
          }

          v45 = [v23 predictedContext];
          v46 = [v45 dateInterval];
          v47 = [v46 endDate];
          [v47 confidenceInterval];
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

          v55 = [v23 predictedContext];
          v56 = [v55 sources];
          v16 = v101;
          [a1 _distributeProbabilityToBins:v101 loiId:v25 fullProb:v56 effectiveStart:0 rampUpEnd:v28 rampDownStart:v50 effectiveEnd:v51 sources:v52 transports:v53];
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
          v62 = [a1 transitionDummyLOI];
          v63 = [v61 predictedContext];
          [v63 probability];
          v65 = v64;

          v66 = [v61 predictedContext];
          v67 = [v66 dateInterval];
          v68 = [v67 startDate];
          [v68 date];
          v70 = v69;

          v71 = [v61 predictedContext];
          v72 = [v71 dateInterval];
          v73 = [v72 endDate];
          [v73 date];
          v75 = v74;

          v76 = [v61 predictedContext];
          v77 = [v76 dateInterval];
          v78 = [v77 startDate];
          [v78 confidenceInterval];
          v80 = v79;

          v81 = [v61 predictedContext];
          v82 = [v81 dateInterval];
          v83 = [v82 endDate];
          [v83 confidenceInterval];
          v85 = v84;

          if (v70 <= a5)
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

          v92 = [v61 predictedContext];
          v93 = [v92 sources];
          v94 = [v61 predictedContextTransports];
          v16 = v101;
          [a1 _distributeProbabilityToBins:v101 loiId:v62 fullProb:v93 effectiveStart:v94 rampUpEnd:v65 rampDownStart:v87 effectiveEnd:v88 sources:v89 transports:v90];
        }

        v58 = [obja countByEnumeratingWithState:&v102 objects:v112 count:16];
      }

      while (v58);
    }

    v12 = v97;
    v13 = v98;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v95 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)applyMovingAverage:(id)a3 windowSize:(int64_t)a4 currentContextId:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  [a1 _allLOIFromBins:v8];
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
        v15 = [a1 _probabilitySeriesFromBins:v8 loiId:v14];
        v16 = [a1 _movingAverageForSeries:v15 windowSize:a4 loiIdForPadding:v14 currentContextId:v9 bins:v8];
        [a1 _updateBins:v8 withFilteredSeries:v16 loiId:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)normalizeBins:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    v32 = *v45;
    v33 = v3;
    do
    {
      v7 = 0;
      v34 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v9 = [v8 loiProbs];
        v10 = [v9 allValues];

        v11 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
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
              objc_enumerationMutation(v10);
            }

            [*(*(&v40 + 1) + 8 * i) doubleValue];
            v14 = v14 + v16;
          }

          v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v12);

        if (v14 > 1.0)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v17 = [v8 loiProbs];
          v10 = [v17 allKeys];

          v18 = [v10 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
                  objc_enumerationMutation(v10);
                }

                v23 = *(*(&v36 + 1) + 8 * j);
                v24 = MEMORY[0x1E696AD98];
                v25 = [v8 loiProbs];
                v26 = [v25 objectForKeyedSubscript:v23];
                [v26 doubleValue];
                v28 = [v24 numberWithDouble:v21 * v27];
                v29 = [v8 loiProbs];
                [v29 setObject:v28 forKeyedSubscript:v23];
              }

              v19 = [v10 countByEnumeratingWithState:&v36 objects:v48 count:16];
            }

            while (v19);
            v6 = v32;
            v3 = v33;
            v5 = v34;
            v7 = v35;
          }

LABEL_22:
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v5);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)convertBinsToPredSample:(id)a3 loiToColMap:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v29 = [a1 _allLOIFromBins:v6];
  v8 = [v29 allObjects];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_14];

  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      v12 = [v9 objectAtIndexedSubscript:v10];
      [v7 setObject:v11 forKeyedSubscript:v12];

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  v30 = v7;
  v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v6;
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
              v22 = [v14 loiProbs];
              v23 = [v22 objectForKeyedSubscript:v21];
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

+ (id)adaptMergedClusters:(id)a3 bins:(id)a4 loiToColMap:(id)a5
{
  v107 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v80 = a4;
  v8 = a5;
  v79 = [MEMORY[0x1E695DF70] array];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v7;
  v83 = [obj countByEnumeratingWithState:&v97 objects:v106 count:16];
  if (v83)
  {
    v82 = *v98;
    *&v9 = 134217984;
    v76 = v9;
    v77 = v8;
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
        v12 = v8;
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
            v19 = [v18 intValue];
            v20 = [v11 visitLoiIdx];

            if (v20 == v19)
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

          v22 = [MEMORY[0x1E695DF70] array];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v23 = v80;
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
                    v37 = [v28 loiSources];
                    v38 = [v37 objectForKeyedSubscript:v21];

                    if (v38)
                    {
                      v39 = [v38 allObjects];
                      [v22 addObjectsFromArray:v39];
                    }
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v89 objects:v102 count:16];
            }

            while (v25);
          }

          v40 = [MEMORY[0x1E695DF70] array];
          v41 = [a1 transitionDummyLOI];
          v42 = [v21 isEqualToData:v41];

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
                      v57 = [v48 predictedTransports];

                      if (v57)
                      {
                        v58 = [v48 predictedTransports];
                        [v40 addObject:v58];
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
          v70 = [PCConstraintsWeightingUtils deduplicateSources:v22];
          v71 = [PCConstraintsWeightingUtils mergeTransportArrays:v40];
          v72 = [(PCMergeResult *)v59 initWithLoiId:v21 confidence:v70 entryTime:v71 exitTime:v61 entryUnc:v63 exitUnc:v65 sources:v67 transports:v69];

          [v79 addObject:v72];
          v8 = v77;
        }

        else
        {
LABEL_14:

LABEL_42:
          v21 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v73 = [v11 visitLoiIdx];
            *buf = v76;
            v104 = v73;
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

  return v79;
}

+ (id)deduplicateSources:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    [MEMORY[0x1E695DFD8] setWithArray:v3];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v4 = ;

  return v4;
}

+ (id)mergeTransportArrays:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v3;
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
              v14 = [v4 objectForKeyedSubscript:v13];
              [v14 doubleValue];
              v16 = v15;

              [v12 probability];
              v18 = [MEMORY[0x1E696AD98] numberWithDouble:v16 + v17];
              [v4 setObject:v18 forKeyedSubscript:v13];
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
  v19 = [v4 allValues];
  v20 = [v19 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (!v20)
  {
    v26 = MEMORY[0x1E695E0F0];
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
        objc_enumerationMutation(v19);
      }

      [*(*(&v45 + 1) + 8 * k) doubleValue];
      v23 = v23 + v25;
    }

    v21 = [v19 countByEnumeratingWithState:&v45 objects:v58 count:16];
  }

  while (v21);

  if (v23 > 0.0)
  {
    v26 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = v4;
    v27 = [v19 countByEnumeratingWithState:&v41 objects:v57 count:16];
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
            objc_enumerationMutation(v19);
          }

          v31 = *(*(&v41 + 1) + 8 * m);
          v32 = [v19 objectForKeyedSubscript:v31];
          [v32 doubleValue];
          v34 = v33 / v23;

          v35 = objc_alloc_init(PCPPredictedContextTransport);
          -[PCPPredictedContextTransport setTransportMode:](v35, "setTransportMode:", [v31 intValue]);
          [(PCPPredictedContextTransport *)v35 setProbability:v34];
          [v26 addObject:v35];
        }

        v28 = [v19 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v28);
    }

    goto LABEL_32;
  }

  v26 = MEMORY[0x1E695E0F0];
LABEL_34:

  v36 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (void)validateCandidateVisits:(id)a3 validVisits:(id)a4 invalidVisits:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v55 = a4;
  v8 = a5;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v58;
    v56 = v7;
    do
    {
      v12 = 0;
      do
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v57 + 1) + 8 * v12);
        if (![v13 hasPredictedContext])
        {
          goto LABEL_28;
        }

        v14 = [v13 predictedContext];
        if (![v14 hasContextType] || !objc_msgSend(v13, "hasLocationOfInterest"))
        {
          goto LABEL_27;
        }

        v15 = [v13 locationOfInterest];
        if (![v15 hasLocation])
        {
          goto LABEL_26;
        }

        v16 = [v13 locationOfInterest];
        if (([v16 hasLoiIdentifier] & 1) == 0)
        {

LABEL_26:
LABEL_27:

LABEL_28:
          v19 = [v13 predictedContext];
LABEL_29:
          v39 = v8;
          goto LABEL_30;
        }

        v17 = [v13 locationOfInterest];
        v18 = [v17 loiIdentifier];

        v7 = v56;
        if (!v18)
        {
          goto LABEL_28;
        }

        v19 = [v13 predictedContext];
        if ([v19 contextType] != 1 || !objc_msgSend(v19, "hasProbability") || !objc_msgSend(v19, "hasDateInterval"))
        {
          goto LABEL_29;
        }

        v20 = [v19 dateInterval];
        if (([v20 hasStartDate] & 1) == 0)
        {
          goto LABEL_34;
        }

        v21 = [v19 dateInterval];
        if (([v21 hasEndDate] & 1) == 0)
        {
          goto LABEL_33;
        }

        v54 = [v19 dateInterval];
        v22 = [v54 startDate];
        if (![v22 hasDate])
        {

LABEL_33:
LABEL_34:

          goto LABEL_29;
        }

        v52 = [v19 dateInterval];
        v23 = [v52 endDate];
        v53 = [v23 hasDate];

        if (!v53)
        {
          v39 = v8;
          v7 = v56;
          goto LABEL_30;
        }

        v24 = [v19 dateInterval];
        v25 = [v24 endDate];
        [v25 date];
        v27 = v26;
        v28 = [v19 dateInterval];
        v29 = [v28 startDate];
        [v29 date];
        v31 = v27 - v30;

        if (v31 * 0.2 >= 1.0)
        {
          v32 = v31 * 0.2;
        }

        else
        {
          v32 = 1.0;
        }

        v33 = [v19 dateInterval];
        v34 = [v33 startDate];
        if (([v34 hasConfidenceInterval] & 1) == 0)
        {

LABEL_37:
          v40 = [v19 dateInterval];
          v41 = [v40 startDate];
          [v41 setConfidenceInterval:v32];

          goto LABEL_38;
        }

        v35 = [v19 dateInterval];
        v36 = [v35 startDate];
        [v36 confidenceInterval];
        v38 = v37;

        if (v38 <= 0.0)
        {
          goto LABEL_37;
        }

LABEL_38:
        v42 = [v19 dateInterval];
        v43 = [v42 endDate];
        if ([v43 hasConfidenceInterval])
        {
          v44 = [v19 dateInterval];
          v45 = [v44 endDate];
          [v45 confidenceInterval];
          v47 = v46;

          v7 = v56;
          if (v47 > 0.0)
          {
            goto LABEL_43;
          }
        }

        else
        {

          v7 = v56;
        }

        v48 = [v19 dateInterval];
        v49 = [v48 endDate];
        [v49 setConfidenceInterval:v32];

LABEL_43:
        v39 = v55;
LABEL_30:
        [v39 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v50 = [v7 countByEnumeratingWithState:&v57 objects:v61 count:16];
      v10 = v50;
    }

    while (v50);
  }

  v51 = *MEMORY[0x1E69E9840];
}

+ (void)validateCandidateTransitions:(id)a3 validTransitions:(id)a4 invalidTransitions:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v45 = a4;
  v8 = a5;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v53 objects:v57 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v53 + 1) + 8 * v12);
        if (![v13 hasPredictedContext] || (objc_msgSend(v13, "predictedContext"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "hasContextType"), v14, (v15 & 1) == 0))
        {
          v16 = [v13 predictedContext];
          goto LABEL_22;
        }

        v16 = [v13 predictedContext];
        if ([v16 contextType] != 2 || !objc_msgSend(v16, "hasProbability") || !objc_msgSend(v16, "hasDateInterval"))
        {
          goto LABEL_22;
        }

        v17 = [v16 dateInterval];
        if (([v17 hasStartDate] & 1) == 0)
        {
          goto LABEL_27;
        }

        v18 = [v16 dateInterval];
        if (([v18 hasEndDate] & 1) == 0)
        {
          goto LABEL_26;
        }

        v49 = [v16 dateInterval];
        v19 = [v49 startDate];
        if (![v19 hasDate])
        {

LABEL_26:
LABEL_27:

LABEL_22:
          v33 = v8;
          goto LABEL_23;
        }

        v47 = [v16 dateInterval];
        v46 = [v47 endDate];
        v48 = [v46 hasDate];

        if (!v48)
        {
          goto LABEL_22;
        }

        v50 = [v16 dateInterval];
        v20 = [v50 endDate];
        [v20 date];
        v22 = v21;
        v23 = [v16 dateInterval];
        v24 = [v23 startDate];
        [v24 date];
        v26 = v22 - v25;

        if (v26 * 0.2 >= 1.0)
        {
          v27 = v26 * 0.2;
        }

        else
        {
          v27 = 1.0;
        }

        v28 = [v16 dateInterval];
        v29 = [v28 startDate];
        if (([v29 hasConfidenceInterval] & 1) == 0)
        {

LABEL_29:
          v34 = [v16 dateInterval];
          v35 = [v34 startDate];
          [v35 setConfidenceInterval:v27];

          goto LABEL_30;
        }

        v51 = [v16 dateInterval];
        v30 = [v51 startDate];
        [v30 confidenceInterval];
        v32 = v31;

        if (v32 <= 0.0)
        {
          goto LABEL_29;
        }

LABEL_30:
        v36 = [v16 dateInterval];
        v37 = [v36 endDate];
        if ([v37 hasConfidenceInterval])
        {
          v52 = [v16 dateInterval];
          v38 = [v52 endDate];
          [v38 confidenceInterval];
          v40 = v39;

          if (v40 > 0.0)
          {
            goto LABEL_35;
          }
        }

        else
        {
        }

        v41 = [v16 dateInterval];
        v42 = [v41 endDate];
        [v42 setConfidenceInterval:v27];

LABEL_35:
        v33 = v45;
LABEL_23:
        [v33 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v43 = [v7 countByEnumeratingWithState:&v53 objects:v57 count:16];
      v10 = v43;
    }

    while (v43);
  }

  v44 = *MEMORY[0x1E69E9840];
}

+ (id)mapLOIToLocationsFromPredictedVisits:(id)a3 currentLoiIdentifier:(id)a4 visitHistory:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v35 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v7;
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
        v16 = [v15 locationOfInterest];
        v17 = [v16 loiIdentifier];

        v18 = [v9 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v19 = [v15 locationOfInterest];
          v20 = [v19 location];
          [v9 setObject:v20 forKeyedSubscript:v17];
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
  v21 = v8;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
  v23 = v35;
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
          v28 = [v27 loiIdentifier];
          if ([v28 isEqualToData:v23] && objc_msgSend(v27, "hasLocation"))
          {
            v29 = [v27 loiIdentifier];
            v30 = [v9 objectForKeyedSubscript:v29];

            v23 = v35;
            if (v30)
            {
              continue;
            }

            v28 = [v27 location];
            v31 = [v27 loiIdentifier];
            [v9 setObject:v28 forKeyedSubscript:v31];
          }
        }
      }

      v24 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v24);
  }

  v32 = [v9 copy];
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)loiIdOfCurrentContextFromVisitHistory:(id)a3 transitionHistory:(id)a4 currentTime:(double)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v27 = a4;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  v7 = [MEMORY[0x1E695DF70] array];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __99__PCConstraintsWeightingUtils_loiIdOfCurrentContextFromVisitHistory_transitionHistory_currentTime___block_invoke;
  v37[3] = &unk_1E83B8078;
  *&v37[5] = a5;
  v37[4] = &v38;
  [v28 enumerateObjectsUsingBlock:v37];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __99__PCConstraintsWeightingUtils_loiIdOfCurrentContextFromVisitHistory_transitionHistory_currentTime___block_invoke_2;
  v34[3] = &unk_1E83B8698;
  v36 = a5;
  v29 = v7;
  v35 = v29;
  [v27 enumerateObjectsUsingBlock:v34];
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
    v18 = [v17 loiIdentifier];
    v19 = v18 == 0;

    if (!v19)
    {
      v20 = [v39[5] loiIdentifier];
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
  v20 = [a1 transitionDummyLOI];
LABEL_28:
  v23 = v20;

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

+ (void)postprocessMergeResults:(id)a3 currentLoiIdentifier:(id)a4 currentTime:(double)a5 windowEndTime:(double)a6 transitionHistory:(id)a7 loiToLocation:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  [a1 _logMergeResults:v14 withDescription:@"Initial"];
  v18 = [a1 _currentContextPredictionFromMergeResults:v14 currentLoiIdentifier:v15 currentTime:a5];
  [a1 _logMergeResults:v14 withDescription:@"After inject current context"];
  [v18 confidence];
  v20 = fmin(v19, 0.5);
  [v18 exitTime];
  v22 = v21;
  [v18 exitUnc];
  v24 = [a1 _earliestSignificantMergeResultAfterTime:v15 excludingLoiId:v14 inMergeResults:v22 - v23 confidenceThreshold:v20];
  [v18 exitTime];
  v40 = v25;
  [v18 exitUnc];
  v39 = v26;
  if (v24)
  {
    v27 = [a1 transitionDummyLOI];
    if ([v15 isEqualToData:v27])
    {

      v28 = 0;
      v29 = 0.0;
    }

    else
    {
      v38 = v17;
      v31 = v16;
      v32 = [v24 loiId];
      v33 = [a1 transitionDummyLOI];
      v34 = [v32 isEqualToData:v33];

      if (v34)
      {
        v28 = 0;
        v29 = 0.0;
        v16 = v31;
        v17 = v38;
      }

      else
      {
        v16 = v31;
        v35 = v31;
        v17 = v38;
        v28 = [a1 _transitionEstimationInfoWithNextResult:v24 currentLoiIdentifier:v15 transitionHistory:v35 loiToLocation:v38];
        [v28 durationInSec];
        v29 = v36;
      }
    }

    if (([a1 _isGeneratedCurrentContext:v18] & 1) != 0 || v29 != 0.0)
    {
      [a1 _minimumStayAtCurrentContextInSec];
      [a1 _updateExitTimeAndUncertaintyOfCurrentContextWithNextResult:v24 currentTime:&v40 defaultDurationAtCurrentContext:&v39 transitionDuration:objc_msgSend(a1 inOutExitTime:"_isGeneratedCurrentContext:" inOutExitUnc:v18) isGeneratedCurrentContext:{a5, v37, v29}];
      [a1 _logMergeResults:v14 withDescription:@"After updating current context"];
    }

    if (v28)
    {
      [a1 _insertTransitionPredictionWithNextResult:v24 currentExitTime:v28 currentExitUnc:v14 transitionInfo:v40 mergeResults:v39];
      [a1 _logMergeResults:v14 withDescription:@"After inserting transition"];
    }

    v30 = v40;
  }

  else
  {
    v39 = a6 - a5;
    v40 = a6;
    v30 = a6;
  }

  [a1 _finalizeMergeResults:v14 currentTime:v18 windowEndTime:a5 currentContext:a6 currentExitTime:v30 currentExitUnc:?];
  [a1 _logMergeResults:v14 withDescription:@"After post processing"];
}

+ (void)_distributeProbabilityToBins:(id)a3 loiId:(id)a4 fullProb:(double)a5 effectiveStart:(double)a6 rampUpEnd:(double)a7 rampDownStart:(double)a8 effectiveEnd:(double)a9 sources:(id)a10 transports:(id)a11
{
  v58 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v52 = a10;
  v20 = a11;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = [v18 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    v24 = a7 - a6;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v53 + 1) + 8 * i);
        [v26 binStart];
        v28 = v27;
        [v26 binEnd];
        if (v28 >= a6)
        {
          v30 = v28;
        }

        else
        {
          v30 = a6;
        }

        if (v29 >= a9)
        {
          v29 = a9;
        }

        if (v30 < v29)
        {
          v31 = v30 + (v29 - v30) * 0.5;
          v32 = 0.0;
          if (v31 >= a6)
          {
            if (v31 >= a7)
            {
              v32 = a5;
              if (v31 > a8)
              {
                v32 = 0.0;
                if (v31 <= a9)
                {
                  v33 = (a9 - v31) / (a9 - a8);
LABEL_19:
                  v32 = v33 * a5;
                }
              }
            }

            else
            {
              v32 = a5;
              if (v24 > 0.0)
              {
                v33 = (v31 - a6) / v24;
                goto LABEL_19;
              }
            }
          }

          v34 = [v26 loiProbs];
          v35 = [v34 objectForKeyedSubscript:v19];
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

          v42 = [v39 numberWithDouble:v32 + v41];
          v43 = [v26 loiProbs];
          [v43 setObject:v42 forKeyedSubscript:v19];

          v44 = [v26 loiSources];
          v45 = [v44 objectForKeyedSubscript:v19];

          if (!v45)
          {
            v45 = [MEMORY[0x1E695DFA8] set];
            v46 = [v26 loiSources];
            [v46 setObject:v45 forKeyedSubscript:v19];
          }

          [v45 addObjectsFromArray:v52];
          if (v20 && [v20 count])
          {
            v47 = [v26 predictedTransports];

            if (!v47)
            {
              v48 = [MEMORY[0x1E695DF70] array];
              [v26 setPredictedTransports:v48];
            }

            v49 = [v26 predictedTransports];
            [v49 addObjectsFromArray:v20];
          }

          continue;
        }
      }

      v22 = [v18 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v22);
  }

  v50 = *MEMORY[0x1E69E9840];
}

+ (id)_allLOIFromBins:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v15 + 1) + 8 * i) loiProbs];
        v11 = [v10 allKeys];
        [v4 addObjectsFromArray:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)_calculateRasterizationWindowWithVisits:(id)a3 transitions:(id)a4 currentTimeInSec:(double)a5 windowInHours:(double)a6 windowStartOut:(double *)a7 windowEndOut:(double *)a8
{
  v58 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5 + a6 * 3600.0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = [v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        v20 = [v19 predictedContext];
        v21 = [v20 dateInterval];
        v22 = [v21 startDate];
        [v22 date];
        v24 = v23;

        v25 = [v19 predictedContext];
        v26 = [v25 dateInterval];
        v27 = [v26 endDate];
        [v27 date];
        v29 = v28;

        if (a5 >= v24)
        {
          a5 = v24;
        }

        if (v14 < v29)
        {
          v14 = v29;
        }
      }

      v16 = [v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v16);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v30 = v13;
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
        v36 = [v35 predictedContext];
        v37 = [v36 dateInterval];
        v38 = [v37 startDate];
        [v38 date];
        v40 = v39;

        v41 = [v35 predictedContext];
        v42 = [v41 dateInterval];
        v43 = [v42 endDate];
        [v43 date];
        v45 = v44;

        if (a5 >= v40)
        {
          a5 = v40;
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

  *a7 = a5;
  *a8 = v14;

  v46 = *MEMORY[0x1E69E9840];
}

+ (id)_aggregateMergeResults:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v3;
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

        v20 = [v15 sources];
        [v4 unionSet:v20];

        v21 = [v15 transports];

        if (v21)
        {
          v22 = [v15 transports];
          [v5 addObject:v22];
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
  v24 = [v6 firstObject];
  v25 = [v24 loiId];
  v26 = [PCConstraintsWeightingUtils mergeTransportArrays:v5];
  v27 = [(PCMergeResult *)v23 initWithLoiId:v25 confidence:v4 entryTime:v26 exitTime:1.0 entryUnc:v11 exitUnc:v12 sources:v13 transports:v10];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)_earliestSignificantMergeResultAfterTime:(double)a3 excludingLoiId:(id)a4 inMergeResults:(id)a5 confidenceThreshold:(double)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = [v17 loiId];
        v19 = [v18 isEqualToData:v9];

        if ((v19 & 1) == 0)
        {
          [v17 entryTime];
          v21 = v20;
          [v17 entryUnc];
          if (v21 + v22 > a3 || ([v17 confidence], v23 >= a6))
          {
            if (!v13 || ([v17 entryTime], v25 = v24, objc_msgSend(v13, "entryTime"), v25 < v26))
            {
              v27 = v17;

              v13 = v27;
            }

            [v17 confidence];
            if (v28 >= a6)
            {
              v29 = [v17 loiId];
              v30 = [a1 transitionDummyLOI];

              if (v29 != v30)
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

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
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

+ (void)_removeExistingTransitionPredictionsFromMergeResults:(id)a3 beforeMergeResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 entryTime];
  v9 = v8;
  [v6 entryUnc];
  v11 = v10;

  v13[1] = 3221225472;
  v13[0] = MEMORY[0x1E69E9820];
  v13[2] = __102__PCConstraintsWeightingUtils__removeExistingTransitionPredictionsFromMergeResults_beforeMergeResult___block_invoke;
  v13[3] = &__block_descriptor_48_e30_B32__0__PCMergeResult_8Q16_B24l;
  v13[4] = a1;
  *&v13[5] = v9 + v11;
  v12 = [v7 indexesOfObjectsPassingTest:v13];
  [v7 removeObjectsAtIndexes:v12];
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

+ (id)_predictedTransitionInfoFromHistoricalTransitions:(id)a3 originVisitId:(id)a4 destinationVisitId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [a1 _estimatedTransitionDurationFromTransitions:v10 originVisitId:v9 destinationVisitId:v8];
  v12 = v11;
  v13 = [a1 _estimatedTransportsFromTransitions:v10 originVisitId:v9 destinationVisitId:v8];

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

+ (double)_estimatedTransitionDurationFromTransitions:(id)a3 originVisitId:(id)a4 destinationVisitId:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v32 = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v7;
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
        v16 = [v15 visitIdentifierOrigin];
        if ([v16 isEqualToData:v8])
        {
          v17 = [v15 visitIdentifierDestination];
          if ([v17 isEqualToData:v9] && (objc_msgSend(v15, "hasStartTimeCFAbsolute") & 1) != 0)
          {
            v18 = [v15 hasStopTimeCFAbsolute];

            if (!v18)
            {
              continue;
            }

            [v15 stopTimeCFAbsolute];
            v20 = v19;
            [v15 startTimeCFAbsolute];
            v16 = [MEMORY[0x1E696AD98] numberWithDouble:v20 - v21];
            [v32 addObject:v16];
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

  if ([v32 count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = v32;
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

+ (id)_estimatedTransportsFromTransitions:(id)a3 originVisitId:(id)a4 destinationVisitId:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v37 = a5;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v7;
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
        v17 = [v16 visitIdentifierOrigin];
        if (![v17 isEqualToData:v8])
        {
          goto LABEL_16;
        }

        v18 = [v16 visitIdentifierDestination];
        v19 = [v18 isEqualToData:v37];

        if (!v19)
        {
          goto LABEL_17;
        }

        v20 = 0.0;
        if (![v16 hasPredominantMotionActivity])
        {
          goto LABEL_14;
        }

        v21 = [v16 predominantMotionActivity];
        v22 = [v21 hasMotionActivityType];

        if (!v22)
        {
          goto LABEL_14;
        }

        v23 = [v16 predominantMotionActivity];
        v24 = [v23 motionActivityType];

        v25 = [v16 predominantMotionActivity];
        v20 = [v25 motionActivityConfidence];

        if ((v24 - 2) < 2)
        {
          v26 = 1;
          goto LABEL_15;
        }

        if (v24 == 5)
        {
          v26 = 3;
          goto LABEL_15;
        }

        if (v24 == 4)
        {
          v26 = 2;
        }

        else
        {
LABEL_14:
          v26 = 0;
        }

LABEL_15:
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
        v27 = [v9 objectForKeyedSubscript:v17];
        [v27 doubleValue];
        v29 = v28;

        v30 = [MEMORY[0x1E696AD98] numberWithDouble:v20 + v29];
        [v9 setObject:v30 forKeyedSubscript:v17];

        v14 = v14 + v20;
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

  if ([v9 count])
  {
    v32 = [MEMORY[0x1E695DF70] array];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __100__PCConstraintsWeightingUtils__estimatedTransportsFromTransitions_originVisitId_destinationVisitId___block_invoke;
    v38[3] = &unk_1E83B86E0;
    v40 = v14;
    v39 = v32;
    v33 = v32;
    [v9 enumerateKeysAndObjectsUsingBlock:v38];
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

+ (double)_estimatedTransitionDurationInSecondsForDistance:(double)a3 drivingProbability:(double *)a4
{
  v6 = 1.0 / (exp((a3 + -1.0) * -8.0) + 1.0);
  if (a4)
  {
    *a4 = v6;
  }

  v7 = 40.0;
  if (a3 > 10.0)
  {
    v7 = 70.0;
  }

  if (a3 > 30.0)
  {
    v7 = 100.0;
  }

  return a3 / (v7 * v6 + (1.0 - v6) * 5.0) * 3600.0;
}

+ (void)_trimResults:(id)a3 currentTime:(double)a4 windowEndTime:(double)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [v12 entryTime];
        if (v13 < a4)
        {
          [v12 setEntryTime:a4];
          [v12 setEntryUnc:1.0];
        }

        [v12 exitTime];
        if (v14 > a5)
        {
          [v12 setExitTime:a5];
          [v12 setExitUnc:1.0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)_currentContextPredictionFromMergeResults:(id)a3 currentLoiIdentifier:(id)a4 currentTime:(double)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = v8;
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
        v17 = [v16 loiId];
        if ([v17 isEqualToData:v9] && (objc_msgSend(v16, "entryTime"), v18 <= a5))
        {
          [v16 exitTime];
          v20 = v19;

          if (v20 > a5)
          {
            [v10 addObject:v16];
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

  if ([v10 count] < 2)
  {
    if ([v10 count] == 1)
    {
      v22 = [v10 firstObject];
    }

    else
    {
      [a1 _minimumStayAtCurrentContextInSec];
      v24 = a5 - v23;
      [a1 _minimumStayAtCurrentContextInSec];
      v26 = v25 + a5;
      v27 = [MEMORY[0x1E695DF70] array];
      v28 = objc_opt_new();
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      [v28 setIdentifier:v30];

      v31 = [a1 transitionDummyLOI];
      v32 = [v9 isEqualToData:v31];

      if (v32)
      {
        v33 = objc_opt_new();
        [v33 setProbability:1.0];
        [v33 setTransportMode:0];
        [v27 addObject:v33];
      }

      v34 = [PCMergeResult alloc];
      v53 = a1;
      [a1 _minimumStayAtCurrentContextInSec];
      v36 = v35;
      v55 = v28;
      v37 = [MEMORY[0x1E695DFD8] setWithObject:v28];
      v56 = v27;
      v54 = [(PCMergeResult *)v34 initWithLoiId:v9 confidence:v37 entryTime:v27 exitTime:1.0 entryUnc:v24 exitUnc:v26 sources:0.0 transports:v36];

      v38 = [MEMORY[0x1E695DF70] array];
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
            v45 = [v44 loiId];
            if ([v45 isEqualToData:v9] && (objc_msgSend(v44, "entryTime"), v46 <= v26))
            {
              [v44 exitTime];
              v48 = v47;

              if (v48 >= v24)
              {
                [v38 addObject:v44];
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

      if ([v38 count])
      {
        [v39 removeObjectsInArray:v38];
        v22 = v54;
        [v38 addObject:v54];
        v50 = [v53 _aggregateMergeResults:v38];
        [v39 addObject:v50];
      }

      else
      {
        v22 = v54;
        [v39 addObject:v54];
      }
    }
  }

  else
  {
    v22 = [a1 _aggregateMergeResults:v10];
    [v11 removeObjectsInArray:v10];
    [v11 addObject:v22];
  }

  v51 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)_transitionEstimationInfoWithNextResult:(id)a3 currentLoiIdentifier:(id)a4 transitionHistory:(id)a5 loiToLocation:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [v10 loiId];
  v15 = [a1 _predictedTransitionInfoFromHistoricalTransitions:v13 originVisitId:v11 destinationVisitId:v14];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = [v12 objectForKeyedSubscript:v11];
    v18 = [v10 loiId];
    v19 = [v12 objectForKeyedSubscript:v18];

    v35 = 0.0;
    v20 = [MEMORY[0x1E695DF70] array];
    if (v17 && v19)
    {
      [PCLocationUtils distanceInMetersBetweenLocation:v17 andLocation:v19];
      [a1 _estimatedTransitionDurationInSecondsForDistance:&v35 drivingProbability:v21 / 1000.0];
      v23 = v22;
    }

    else
    {
      v24 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        if (v17)
        {
          v25 = [v10 loiId];
        }

        else
        {
          v25 = v11;
        }

        *buf = 138412290;
        v37 = v25;
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
    v34 = v20;
    v26 = v20;
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

+ (void)_updateExitTimeAndUncertaintyOfCurrentContextWithNextResult:(id)a3 currentTime:(double)a4 defaultDurationAtCurrentContext:(double)a5 transitionDuration:(double)a6 inOutExitTime:(double *)a7 inOutExitUnc:(double *)a8 isGeneratedCurrentContext:(BOOL)a9
{
  v9 = a9;
  v34 = *MEMORY[0x1E69E9840];
  v15 = a3;
  [v15 entryTime];
  v17 = v16;
  [v15 entryUnc];
  v18 = *a7;
  v20 = v17 - v19 - a6;
  v21 = v20 - *a7;
  if (v21 < 0.0)
  {
    v22 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 134218240;
      v31 = a4;
      v32 = 2048;
      v33 = a6;
      _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_DEFAULT, "Formed uncertainty less than 0.0, current time, %.2f, transition duration, %.2f", &v30, 0x16u);
    }

    v21 = 0.0;
  }

  v23 = a6 * 0.1;
  v24 = v20 - v23;
  if (!v9)
  {
    v24 = v18;
  }

  v25 = a4 + a5;
  if (v24 >= v25)
  {
    v25 = v24;
  }

  else
  {
    v26 = v25 - v24;
    [v15 entryTime];
    [v15 setEntryTime:v26 + v27];
  }

  if (v9)
  {
    v28 = v23;
  }

  else
  {
    v28 = v21;
  }

  *a7 = v25;
  *a8 = v28;

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)_insertTransitionPredictionWithNextResult:(id)a3 currentExitTime:(double)a4 currentExitUnc:(double)a5 transitionInfo:(id)a6 mergeResults:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a3;
  [a1 _removeExistingTransitionPredictionsFromMergeResults:v12 beforeMergeResult:v14];
  v29 = objc_opt_new();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v29 setIdentifier:v16];

  v17 = [PCMergeResult alloc];
  v18 = [a1 transitionDummyLOI];
  [v14 confidence];
  v20 = v19;
  [v14 entryTime];
  v22 = v21;
  [v14 entryUnc];
  v24 = v23;

  v25 = [MEMORY[0x1E695DFD8] setWithObject:v29];
  v26 = [v13 predictedTransports];

  v27 = [v26 copy];
  v28 = [(PCMergeResult *)v17 initWithLoiId:v18 confidence:v25 entryTime:v27 exitTime:v20 entryUnc:a4 exitUnc:v22 sources:a5 transports:v24];

  [v12 addObject:v28];
}

+ (BOOL)_isGeneratedCurrentContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a3 sources];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v13 + 1) + 8 * i) identifier];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v7 isEqualToString:v9];

        if (v10)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (void)_finalizeMergeResults:(id)a3 currentTime:(double)a4 windowEndTime:(double)a5 currentContext:(id)a6 currentExitTime:(double)a7 currentExitUnc:(double)a8
{
  v14 = a6;
  v15 = a3;
  [v14 setExitTime:a7];
  [v14 setExitUnc:a8];
  [v14 setConfidence:1.0];

  [a1 _trimResults:v15 currentTime:a4 windowEndTime:a5];
}

+ (void)_logMergeResults:(id)a3 withDescription:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = [v5 count];
    _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_DEBUG, "%@, Merge Results (%lu):", &v9, 0x16u);
  }

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_47];
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

+ (id)_probabilitySeriesFromBins:(id)a3 loiId:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
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

        v13 = [*(*(&v19 + 1) + 8 * i) loiProbs];
        v14 = [v13 objectForKeyedSubscript:v6];
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

+ (id)_movingAverageForSeries:(id)a3 windowSize:(int64_t)a4 loiIdForPadding:(id)a5 currentContextId:(id)a6 bins:(id)a7
{
  v28 = a1;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v29 = a7;
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  if ([v11 count])
  {
    v15 = 0;
    v16 = a4 / 2;
    v30 = v14;
    v31 = (2 * (a4 / 2)) | 1;
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
            if ([v12 isEqualToData:{v13, v18}])
            {
              v22 = 1.0;
            }

            else
            {
              v22 = 0.0;
            }

            v20 |= [v12 isEqualToData:{v13, v28}];
          }

          else
          {
            v22 = 0.0;
            if (v17 < [v11 count])
            {
              v23 = [v11 objectAtIndexedSubscript:v17];
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
          v25 = [v29 objectAtIndexedSubscript:v15];
          [v28 _addConstraintSourceToBin:v25 loiId:v13];
        }

        v18 = v31;
        v14 = v30;
      }

      v26 = [MEMORY[0x1E696AD98] numberWithDouble:{v19 / v18, v28}];
      [v14 addObject:v26];

      ++v15;
    }

    while (v15 < [v11 count]);
  }

  return v14;
}

+ (void)_updateBins:(id)a3 withFilteredSeries:(id)a4 loiId:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PCConstraintsWeightingUtils__updateBins_withFilteredSeries_loiId___block_invoke;
  v11[3] = &unk_1E83B8750;
  v12 = v8;
  v13 = v7;
  v9 = v7;
  v10 = v8;
  [a3 enumerateObjectsUsingBlock:v11];
}

void __68__PCConstraintsWeightingUtils__updateBins_withFilteredSeries_loiId___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 loiProbs];

  [v7 setObject:v8 forKeyedSubscript:*(a1 + 32)];
}

+ (void)_addConstraintSourceToBin:(id)a3 loiId:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 setIdentifier:v8];

  v9 = [v12 loiSources];
  v10 = [v9 objectForKeyedSubscript:v5];

  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    v11 = [v12 loiSources];
    [v11 setObject:v10 forKeyedSubscript:v5];
  }

  [v10 addObject:v6];
}

@end