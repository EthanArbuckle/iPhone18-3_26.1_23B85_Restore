@interface PCMapsViewedPlacesPredictor
+ (id)findFirstVisitWithin24HoursAfterPlaceViewed:(id)viewed fromHistory:(id)history;
+ (int64_t)getTimeBlock:(double)block;
+ (void)collectStatistics:(id)statistics history:(id)history searchesWithVisits:(int64_t *)visits totalGap:(double *)gap totalDuration:(double *)duration timeBlockVisits:(id *)blockVisits timeBlockDurations:(id *)durations timeBlockGaps:(id *)self0 timeBlockGapVariances:(id *)self1 timeBlockDurationVariances:(id *)self2;
+ (void)predictWithViewedPlaces:(id)places history:(id)history atTime:(double)time results:(id *)results;
@end

@implementation PCMapsViewedPlacesPredictor

+ (int64_t)getTimeBlock:(double)block
{
  v3 = (fmod(block, 86400.0) / 3600.0);
  if (v3 < 0)
  {
    v3 = (v3 + 24.0);
  }

  if ((v3 - 6) < 6)
  {
    return 0;
  }

  if ((v3 - 12) < 6)
  {
    return 1;
  }

  if ((v3 - 18) < 6)
  {
    return 2;
  }

  return 3;
}

+ (id)findFirstVisitWithin24HoursAfterPlaceViewed:(id)viewed fromHistory:(id)history
{
  v27 = *MEMORY[0x1E69E9840];
  viewedCopy = viewed;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  historyCopy = history;
  v7 = [historyCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(historyCopy);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        location = [v10 location];
        destinationLocation = [viewedCopy destinationLocation];
        if (+[PCLocationUtils isLocation:withinThreshold:](PCLocationUtils, "isLocation:withinThreshold:", location, destinationLocation) && [v10 hasEntryTimeCFAbsolute] && objc_msgSend(viewedCopy, "hasUsageTimeCFAbsolute") && (objc_msgSend(v10, "entryTimeCFAbsolute"), v14 = v13, objc_msgSend(viewedCopy, "usageTimeCFAbsolute"), v14 > v15))
        {
          [v10 entryTimeCFAbsolute];
          v17 = v16;
          [viewedCopy usageTimeCFAbsolute];
          v19 = v17 - v18;

          if (v19 <= 86400.0)
          {
            v7 = v10;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [historyCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

LABEL_15:

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)collectStatistics:(id)statistics history:(id)history searchesWithVisits:(int64_t *)visits totalGap:(double *)gap totalDuration:(double *)duration timeBlockVisits:(id *)blockVisits timeBlockDurations:(id *)durations timeBlockGaps:(id *)self0 timeBlockGapVariances:(id *)self1 timeBlockDurationVariances:(id *)self2
{
  v112 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  historyCopy = history;
  [MEMORY[0x1E695DF90] dictionary];
  *blockVisits = v99 = blockVisits;
  *durations = [MEMORY[0x1E695DF90] dictionary];
  *gaps = [MEMORY[0x1E695DF90] dictionary];
  *variances = [MEMORY[0x1E695DF90] dictionary];
  *durationVariances = [MEMORY[0x1E695DF90] dictionary];
  gapCopy = gap;
  *visits = 0;
  *gap = 0.0;
  durationCopy = duration;
  *duration = 0.0;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v18 = statisticsCopy;
  v19 = [v18 countByEnumeratingWithState:&v107 objects:v111 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v108;
    v22 = 0x1E83B7000uLL;
    v95 = v18;
    v96 = historyCopy;
    v94 = *v108;
    do
    {
      v23 = 0;
      v100 = v20;
      do
      {
        if (*v108 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v107 + 1) + 8 * v23);
        v25 = [*(v22 + 2200) findFirstVisitWithin24HoursAfterPlaceViewed:v24 fromHistory:historyCopy];
        v26 = v25;
        if (v25 && [v25 hasEntryTimeCFAbsolute] && objc_msgSend(v26, "hasExitTimeCFAbsolute") && objc_msgSend(v24, "hasUsageTimeCFAbsolute"))
        {
          ++*visits;
          v27 = *(v22 + 2200);
          [v24 usageTimeCFAbsolute];
          v28 = [v27 getTimeBlock:?];
          v29 = *v99;
          v30 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
          v31 = [v29 objectForKeyedSubscript:v30];
          v32 = v31;
          if (v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = &unk_1F4BDE0F8;
          }

          v34 = v33;

          v106 = v34;
          integerValue = [v34 integerValue];
          v101 = integerValue + 1;
          v35 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          v36 = *v99;
          v37 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
          [v36 setObject:v35 forKeyedSubscript:v37];

          [v26 exitTimeCFAbsolute];
          v39 = v38;
          [v26 entryTimeCFAbsolute];
          v41 = v39 - v40;
          v42 = *durations;
          v43 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
          v44 = [v42 objectForKeyedSubscript:v43];
          v45 = v44;
          if (v44)
          {
            v46 = v44;
          }

          else
          {
            v46 = &unk_1F4BDE0F8;
          }

          v47 = v46;

          v104 = v47;
          [v47 doubleValue];
          v49 = v41 + v48;
          v50 = [MEMORY[0x1E696AD98] numberWithDouble:v41 + v48];
          v51 = *durations;
          v52 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
          [v51 setObject:v50 forKeyedSubscript:v52];

          *durationCopy = v41 + *durationCopy;
          [v26 entryTimeCFAbsolute];
          v54 = v53;
          [v24 usageTimeCFAbsolute];
          v56 = v54 - v55;
          v57 = *gaps;
          v58 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
          v59 = [v57 objectForKeyedSubscript:v58];
          v60 = v59;
          if (v59)
          {
            v61 = v59;
          }

          else
          {
            v61 = &unk_1F4BDE0F8;
          }

          v62 = v61;

          [v62 doubleValue];
          v64 = v56 + v63;
          v65 = [MEMORY[0x1E696AD98] numberWithDouble:v56 + v63];
          v66 = *gaps;
          v67 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
          [v66 setObject:v65 forKeyedSubscript:v67];

          *gapCopy = v56 + *gapCopy;
          if ((integerValue & 0x8000000000000000) == 0)
          {
            v68 = v49 / v101;
            v69 = (v56 - v64 / v101) * (v56 - v64 / v101);
            v70 = (v41 - v68) * (v41 - v68);
            v71 = *variances;
            v72 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
            v73 = [v71 objectForKeyedSubscript:v72];
            v74 = v73;
            if (v73)
            {
              v75 = v73;
            }

            else
            {
              v75 = &unk_1F4BDE0F8;
            }

            v103 = v75;

            v76 = MEMORY[0x1E696AD98];
            [v103 doubleValue];
            v78 = [v76 numberWithDouble:v69 + v77];
            v79 = *variances;
            v80 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
            [v79 setObject:v78 forKeyedSubscript:v80];

            v81 = *durationVariances;
            v82 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
            v83 = [v81 objectForKeyedSubscript:v82];
            v84 = v83;
            if (v83)
            {
              v85 = v83;
            }

            else
            {
              v85 = &unk_1F4BDE0F8;
            }

            v86 = v85;

            v87 = MEMORY[0x1E696AD98];
            [v86 doubleValue];
            v89 = v88;

            v90 = [v87 numberWithDouble:v70 + v89];
            v91 = *durationVariances;
            v92 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
            [v91 setObject:v90 forKeyedSubscript:v92];
          }

          v18 = v95;
          historyCopy = v96;
          v22 = 0x1E83B7000;
          v21 = v94;
          v20 = v100;
        }

        ++v23;
      }

      while (v20 != v23);
      v20 = [v18 countByEnumeratingWithState:&v107 objects:v111 count:16];
    }

    while (v20);
  }

  v93 = *MEMORY[0x1E69E9840];
}

+ (void)predictWithViewedPlaces:(id)places history:(id)history atTime:(double)time results:(id *)results
{
  v126 = *MEMORY[0x1E69E9840];
  placesCopy = places;
  historyCopy = history;
  resultsCopy = results;
  *results = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([placesCopy count])
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_9];
    [placesCopy filterUsingPredicate:v11];

    [placesCopy sortUsingComparator:&__block_literal_global_9];
    v12 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_12];
    [historyCopy filterUsingPredicate:v12];

    [historyCopy sortUsingComparator:&__block_literal_global_15];
    v117 = 0.0;
    v118 = 0;
    v115 = 0;
    v116 = 0.0;
    v113 = 0;
    v114 = 0;
    v111 = 0;
    v112 = 0;
    [PCMapsViewedPlacesPredictor collectStatistics:placesCopy history:historyCopy searchesWithVisits:&v118 totalGap:&v117 totalDuration:&v116 timeBlockVisits:&v115 timeBlockDurations:&v114 timeBlockGaps:&v113 timeBlockGapVariances:&v112 timeBlockDurationVariances:&v111];
    v13 = v115;
    v95 = v114;
    v99 = v113;
    v94 = v112;
    v93 = v111;
    if ([placesCopy count])
    {
      v14 = v118;
      v15 = v14 / [placesCopy count];
    }

    else
    {
      v15 = 0.5;
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v92 = placesCopy;
    v17 = placesCopy;
    v18 = [v17 countByEnumeratingWithState:&v107 objects:v121 count:16];
    v96 = historyCopy;
    v97 = v13;
    v19 = 0x1E83B7000uLL;
    if (v18)
    {
      v20 = v18;
      v21 = *v108;
      v22 = 0x1E696A000uLL;
      v102 = v17;
      v100 = *v108;
      do
      {
        v23 = 0;
        v101 = v20;
        do
        {
          if (*v108 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v107 + 1) + 8 * v23);
          v25 = [*(v19 + 2200) findFirstVisitWithin24HoursAfterPlaceViewed:v24 fromHistory:historyCopy];

          if (!v25)
          {
            v26 = *(v19 + 2200);
            [v24 usageTimeCFAbsolute];
            v27 = [v26 getTimeBlock:?];
            v28 = [*(v22 + 3480) numberWithInteger:v27];
            v29 = [v13 objectForKeyedSubscript:v28];
            [v29 doubleValue];
            v31 = v30 / [v17 count];

            if (v31 <= 0.0)
            {
              v32 = v15;
            }

            else
            {
              v32 = v31;
            }

            v33 = [*(v22 + 3480) numberWithInteger:v27];
            v34 = [v13 objectForKeyedSubscript:v33];

            if ([v34 integerValue] < 1)
            {
              v40 = 86400.0;
              if (v118 >= 1)
              {
                v40 = v117 / v118;
              }
            }

            else
            {
              v35 = [*(v22 + 3480) numberWithInteger:v27];
              v36 = [v99 objectForKeyedSubscript:v35];
              [v36 doubleValue];
              v38 = v37;
              [v34 doubleValue];
              v40 = v38 / v39;

              v17 = v102;
            }

            [v24 usageTimeCFAbsolute];
            v42 = v40 + v41;
            if (v42 >= time)
            {
              if ([v34 integerValue] < 1)
              {
                v48 = 3600.0;
                if (v118 >= 1)
                {
                  v48 = v116 / v118;
                }
              }

              else
              {
                v43 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
                v44 = [v95 objectForKeyedSubscript:v43];
                [v44 doubleValue];
                v46 = v45;
                [v34 doubleValue];
                v48 = v46 / v47;
              }

              v49 = objc_alloc_init(PCPPredictedContextLocation);
              v50 = objc_alloc_init(PCPLocationOfInterest);
              [(PCPPredictedContextLocation *)v49 setLocationOfInterest:v50];

              uUID = [MEMORY[0x1E696AFB0] UUID];
              v52 = [PCAlgorithmsCommonUtils dataFromUUID:uUID];
              locationOfInterest = [(PCPPredictedContextLocation *)v49 locationOfInterest];
              [locationOfInterest setLoiIdentifier:v52];

              destinationLocation = [v24 destinationLocation];
              locationOfInterest2 = [(PCPPredictedContextLocation *)v49 locationOfInterest];
              [locationOfInterest2 setLocation:destinationLocation];

              v56 = objc_alloc_init(PCPPredictedContext);
              [(PCPPredictedContextLocation *)v49 setPredictedContext:v56];

              predictedContext = [(PCPPredictedContextLocation *)v49 predictedContext];
              [predictedContext setProbability:v15 * v32];

              predictedContext2 = [(PCPPredictedContextLocation *)v49 predictedContext];
              [predictedContext2 setContextType:1];

              v59 = objc_alloc_init(PCPSource);
              v60 = objc_opt_class();
              v61 = NSStringFromClass(v60);
              [(PCPSource *)v59 setIdentifier:v61];

              v62 = objc_alloc_init(PCPPredictedContextSource);
              [(PCPPredictedContextSource *)v62 setMapsViewedPlace:v24];
              [(PCPSource *)v59 setPredictedContextSource:v62];
              v120 = v59;
              v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
              v64 = [v63 mutableCopy];
              predictedContext3 = [(PCPPredictedContextLocation *)v49 predictedContext];
              [predictedContext3 setSources:v64];

              v66 = objc_alloc_init(PCPPredictedContextDateInterval);
              v67 = objc_alloc_init(PCPPredictedContextDate);
              [(PCPPredictedContextDateInterval *)v66 setStartDate:v67];

              v68 = objc_alloc_init(PCPPredictedContextDate);
              [(PCPPredictedContextDateInterval *)v66 setEndDate:v68];

              startDate = [(PCPPredictedContextDateInterval *)v66 startDate];
              [startDate setDate:v42];

              endDate = [(PCPPredictedContextDateInterval *)v66 endDate];
              [endDate setDate:v42 + v48];

              if ([v34 integerValue] > 1)
              {
                v71 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
                v72 = [v94 objectForKeyedSubscript:v71];
                [v72 doubleValue];
                v74 = sqrt(v73 / ([v34 integerValue] - 1));

                v75 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
                v76 = [v93 objectForKeyedSubscript:v75];
                [v76 doubleValue];
                v78 = sqrt(v77 / ([v34 integerValue] - 1));

                startDate2 = [(PCPPredictedContextDateInterval *)v66 startDate];
                [startDate2 setConfidenceInterval:v74];

                endDate2 = [(PCPPredictedContextDateInterval *)v66 endDate];
                [endDate2 setConfidenceInterval:sqrt(v74 * v74 + v78 * v78)];
              }

              predictedContext4 = [(PCPPredictedContextLocation *)v49 predictedContext];
              [predictedContext4 setDateInterval:v66];

              [*resultsCopy addObject:v49];
              historyCopy = v96;
              v13 = v97;
              v19 = 0x1E83B7000;
              v17 = v102;
            }

            v21 = v100;
            v20 = v101;
            v22 = 0x1E696A000;
          }

          ++v23;
        }

        while (v20 != v23);
        v20 = [v17 countByEnumeratingWithState:&v107 objects:v121 count:16];
      }

      while (v20);
    }

    if (*resultsCopy && [*resultsCopy count])
    {
      v82 = _plc_log_get_normal_handle(PCLogCategoryMapsViewedPlacesPredictor);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = [*resultsCopy count];
        *buf = 134217984;
        v123 = v83;
        _os_log_impl(&dword_1CEE74000, v82, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v84 = *resultsCopy;
      v85 = [v84 countByEnumeratingWithState:&v103 objects:v119 count:16];
      if (v85)
      {
        v86 = v85;
        v87 = *v104;
        do
        {
          for (i = 0; i != v86; ++i)
          {
            if (*v104 != v87)
            {
              objc_enumerationMutation(v84);
            }

            v89 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v103 + 1) + 8 * i)];
            v90 = _plc_log_get_normal_handle(PCLogCategoryMapsViewedPlacesPredictor);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v123 = v89;
              _os_log_impl(&dword_1CEE74000, v90, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v86 = [v84 countByEnumeratingWithState:&v103 objects:v119 count:16];
        }

        while (v86);
        placesCopy = v92;
        historyCopy = v96;
        v13 = v97;
      }

      else
      {
        placesCopy = v92;
        v13 = v97;
      }
    }

    else
    {
      v84 = _plc_log_get_normal_handle(PCLogCategoryMapsViewedPlacesPredictor);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v84, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
      }

      placesCopy = v92;
    }
  }

  else
  {
    v16 = _plc_log_get_normal_handle(PCLogCategoryMapsViewedPlacesPredictor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315395;
      v123 = "+[PCMapsViewedPlacesPredictor predictWithViewedPlaces:history:atTime:results:]";
      v124 = 2117;
      v125 = placesCopy;
      _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_DEFAULT, "%s, no viewed places, %{sensitive}@", buf, 0x16u);
    }
  }

  v91 = *MEMORY[0x1E69E9840];
}

uint64_t __78__PCMapsViewedPlacesPredictor_predictWithViewedPlaces_history_atTime_results___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 usageTimeCFAbsolute];
  v6 = v5;
  [v4 usageTimeCFAbsolute];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __78__PCMapsViewedPlacesPredictor_predictWithViewedPlaces_history_atTime_results___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 entryTimeCFAbsolute];
  v6 = v5;
  [v4 entryTimeCFAbsolute];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end