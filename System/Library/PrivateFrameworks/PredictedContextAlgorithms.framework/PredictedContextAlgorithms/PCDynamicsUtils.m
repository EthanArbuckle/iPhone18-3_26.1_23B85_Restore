@interface PCDynamicsUtils
+ (double)adjustedScaleFactorWithOriginalScaleFactor:(double)a3 timeUntilEntrySeconds:(double)a4;
+ (double)directionFactorFromCosineSimilarity:(double)a3;
+ (double)lateralDeviationToWeightWithLateralRatio:(double)a3 minWeight:(double)a4 penaltyStep:(double)a5 graceZoneRatio:(double)a6 gamma:(double)a7;
+ (double)progressToWeightWithProgressRatio:(double)a3 minWeight:(double)a4 penaltyStep:(double)a5 graceZone:(double)a6 gamma:(double)a7;
+ (double)smoothPenaltyForETAGrowth:(double)a3 graceRatio:(double)a4 penaltyRange:(double)a5 minScaleFactor:(double)a6;
+ (id)buildLoiCoordinateMapFromCandidateDataMap:(id)a3;
+ (id)candidateDataMapFromVisits:(id)a3;
+ (id)computeProgressScaleFromCandidateDataMap:(id)a3 lastVisit:(id)a4 currentLocation:(id)a5;
+ (id)computeProgressScaleWithLOIs:(id)a3 lastVisit:(id)a4 currentLocation:(id)a5;
+ (id)computeTravelFeasibilityForCandidateDataMap:(id)a3 currentLocation:(id)a4 currentTime:(double)a5;
+ (id)currentLocationWithLocationHistory:(id)a3 currentTime:(double)a4;
+ (id)filterValidLocationPredictions:(id)a3;
+ (id)locationOfLastVisitWithVisitHistory:(id)a3 currentTime:(double)a4 isInTransition:(BOOL *)a5 exitTime:(double *)a6;
+ (id)neutralScaleFactorsForDataMap:(id)a3;
+ (void)updateProbabilitiesForCandidateVisits:(id)a3 withCandidateDataMap:(id)a4 progressScaleByVisitMap:(id)a5 feasibilityByVisitMap:(id)a6 dirctionScaleByVisitMap:(id)a7 etaScaleByVisitMap:(id)a8 currentTime:(double)a9;
+ (void)updateProbabilityForCandidateVisit:(id)a3 withCandidateDataMap:(id)a4 progressScaleByVisitMap:(id)a5 feasibilityByVisitMap:(id)a6 dirctionScaleByVisitMap:(id)a7 etaScaleByVisitMap:(id)a8 currentTime:(double)a9;
@end

@implementation PCDynamicsUtils

+ (id)candidateDataMapFromVisits:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(v3, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = v3;
  v39 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v39)
  {
    v38 = *v42;
    v35 = v5;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v8 = [v7 locationOfInterest];
        v9 = [v8 loiIdentifier];

        v10 = [MEMORY[0x1E696AFB0] UUID];
        v11 = [PCAlgorithmsCommonUtils dataFromUUID:v10];

        v12 = [v7 locationOfInterest];
        v13 = [v12 location];

        if (v13)
        {
          v14 = [v7 locationOfInterest];
          v15 = [v14 location];

          v16 = [PCLatLon alloc];
          [v15 locationLatitudeDeg];
          v18 = v17;
          [v15 locationLongitudeDeg];
          v20 = [(PCLatLon *)v16 initWithLatitude:v18 longitude:v19];
          v21 = [PCLocationUtils latLonToCartesianWithLatLon:v20];
        }

        else
        {
          v21 = 0;
        }

        v22 = [v7 predictedContext];
        v23 = 0.0;
        if ([v22 hasDateInterval])
        {
          v40 = v9;
          v24 = [v7 predictedContext];
          v25 = [v24 dateInterval];
          if ([v25 hasStartDate])
          {
            v26 = [v7 predictedContext];
            v27 = [v26 dateInterval];
            [v27 startDate];
            v37 = v21;
            v28 = v11;
            v30 = v29 = v4;
            v36 = [v30 hasDate];

            v4 = v29;
            v11 = v28;
            v21 = v37;

            v5 = v35;
            v9 = v40;
            if (!v36)
            {
              goto LABEL_15;
            }

            v22 = [v7 predictedContext];
            v24 = [v22 dateInterval];
            v25 = [v24 startDate];
            [v25 date];
            v23 = v31;
          }

          v9 = v40;
        }

LABEL_15:
        v32 = [[PCCandidateVisitData alloc] initWithVisitIdentifier:v11 loiIdentifier:v9 coordinate:v21 entryTime:v23];
        [v4 setObject:v32 forKey:v7];
      }

      v39 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v39);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)buildLoiCoordinateMapFromCandidateDataMap:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v3;
  v5 = [v3 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 loiIdentifier];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 coordinate];
          if (v13)
          {
            v14 = v13;
            v15 = [v10 loiIdentifier];
            v16 = [v4 objectForKeyedSubscript:v15];

            if (v16)
            {
              continue;
            }

            v12 = [v10 coordinate];
            v17 = [v10 loiIdentifier];
            [v4 setObject:v12 forKeyedSubscript:v17];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v18 = [v4 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)computeProgressScaleFromCandidateDataMap:(id)a3 lastVisit:(id)a4 currentLocation:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28 = [a1 buildLoiCoordinateMapFromCandidateDataMap:v8];
  v29 = v10;
  v30 = v9;
  v11 = [a1 computeProgressScaleWithLOIs:? lastVisit:? currentLocation:?];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = v8;
  v13 = [v8 objectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v18 loiIdentifier];
        v20 = [v11 objectForKeyedSubscript:v19];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
        }

        v23 = v22;

        v24 = [v18 visitIdentifier];
        [v12 setObject:v23 forKeyedSubscript:v24];
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  v25 = [v12 copy];
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)locationOfLastVisitWithVisitHistory:(id)a3 currentTime:(double)a4 isInTransition:(BOOL *)a5 exitTime:(double *)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v59 = v12;
    v60 = 2048;
    v61 = COERCE_DOUBLE([v10 count]);
    _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_DEFAULT, "[%@] input visit history number %lu", buf, 0x16u);
  }

  if (!v10 || ![v10 count])
  {
    v16 = 0;
    goto LABEL_25;
  }

  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v57[3] = 0xFFEFFFFFFFFFFFFFLL;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__2;
  v55 = __Block_byref_object_dispose__2;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__2;
  v49 = __Block_byref_object_dispose__2;
  v50 = 0;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __91__PCDynamicsUtils_locationOfLastVisitWithVisitHistory_currentTime_isInTransition_exitTime___block_invoke;
  v44[3] = &unk_1E83B8778;
  *&v44[7] = a4;
  v44[4] = &v51;
  v44[5] = v57;
  v44[6] = &v45;
  [v10 enumerateObjectsUsingBlock:v44];
  v13 = v52;
  v14 = v52[5];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v46[5];
    if (!v15)
    {
      if (a5)
      {
        *a5 = 0;
      }

      v15 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v43 = NSStringFromSelector(a2);
        *buf = 138412546;
        v59 = v43;
        v60 = 2048;
        v61 = a4;
        _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_ERROR, "[%@] no valid visit found for dynamic weighting at current time: %.2f", buf, 0x16u);
      }

      v16 = 0;
      goto LABEL_24;
    }
  }

  v17 = v13[5];
  if (a5)
  {
    *a5 = v15 != v17;
  }

  if (a6 && v15 != v17)
  {
    [v15 exitTimeCFAbsolute];
    *a6 = v18;
  }

  v19 = [v15 location];
  v20 = v19;
  if (v19 && [v19 hasLocationLatitudeDeg] && objc_msgSend(v20, "hasLocationLongitudeDeg"))
  {
    v21 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = NSStringFromSelector(a2);
      [v15 entryTimeCFAbsolute];
      v24 = v23;
      [v15 exitTimeCFAbsolute];
      v26 = v25;
      v27 = [v15 location];
      [v27 locationLatitudeDeg];
      v29 = v28;
      v30 = [v15 location];
      [v30 locationLongitudeDeg];
      v32 = v31;
      v33 = [v15 loiIdentifier];
      v34 = [PCAlgorithmsCommonUtils uuidStringFromData:v33];
      *buf = 138413571;
      v59 = v22;
      v60 = 2048;
      v61 = v24;
      v62 = 2048;
      v63 = v26;
      v64 = 2053;
      v65 = v29;
      v66 = 2053;
      v67 = v32;
      v68 = 2117;
      v69 = v34;
      _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_INFO, "[%@] selected visit: entry: %.2f, exit: %.2f, lat: %{sensitive}.2f, lon: %{sensitive}.2f, id: %{sensitive}@", buf, 0x3Eu);
    }

    v35 = [PCLatLon alloc];
    [v20 locationLatitudeDeg];
    v37 = v36;
    [v20 locationLongitudeDeg];
    v39 = [(PCLatLon *)v35 initWithLatitude:v37 longitude:v38];
    v16 = [PCLocationUtils latLonToCartesianWithLatLon:v39];
  }

  else
  {
    v39 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      *buf = 138412290;
      v59 = v40;
      _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_ERROR, "[%@] selected visit does not have a location", buf, 0xCu);
    }

    v16 = 0;
  }

LABEL_24:
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(v57, 8);
LABEL_25:

  v41 = *MEMORY[0x1E69E9840];

  return v16;
}

void __91__PCDynamicsUtils_locationOfLastVisitWithVisitHistory_currentTime_isInTransition_exitTime___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 entryTimeCFAbsolute];
  v5 = v4;
  [v14 exitTimeCFAbsolute];
  v7 = v6;
  if ([v14 hasEntryTimeCFAbsolute])
  {
    v8 = v5 > *(a1 + 56);
  }

  else
  {
    v8 = 1;
  }

  if ([v14 hasExitTimeCFAbsolute])
  {
    v9 = v7 < *(a1 + 56);
  }

  else
  {
    v9 = 0;
  }

  if (!v8 && !v9)
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    if (!v11)
    {
LABEL_11:
      objc_storeStrong((v10 + 40), a2);
      goto LABEL_12;
    }

    [v11 entryTimeCFAbsolute];
    if (v5 > v12)
    {
      v10 = *(*(a1 + 32) + 8);
      goto LABEL_11;
    }
  }

LABEL_12:
  if ([v14 hasExitTimeCFAbsolute])
  {
    if (v7 < *(a1 + 56))
    {
      v13 = *(*(a1 + 40) + 8);
      if (v7 > *(v13 + 24))
      {
        *(v13 + 24) = v7;
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      }
    }
  }
}

+ (id)currentLocationWithLocationHistory:(id)a3 currentTime:(double)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [PCLocationUtils currentLocationWithLocationHistory:a3 currentTime:?];
  if (v6)
  {
    v7 = [PCLocationUtils latLonToCartesianWithLatLon:v6];
  }

  else
  {
    v8 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v12 = 138412546;
      v13 = v9;
      v14 = 2048;
      v15 = a4;
      _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "[%@] no valid current location found for dynamic weighting at current time: %.2f", &v12, 0x16u);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)computeProgressScaleWithLOIs:(id)a3 lastVisit:(id)a4 currentLocation:(id)a5
{
  v109 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v90 objects:v108 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = v8 != 0;
    if (!v9)
    {
      v15 = 0;
    }

    v89 = v15;
    v88 = *v91;
    v16 = @"missing";
    if (v9)
    {
      v16 = @"present";
    }

    v85 = v16;
    *&v13 = 138413827;
    v83 = v13;
    v86 = v10;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v91 != v88)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v90 + 1) + 8 * i);
        v19 = [v11 objectForKeyedSubscript:{v18, v83}];
        v20 = v19;
        if (v19)
        {
          v21 = v89;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          [v19 x];
          v23 = v22;
          [v8 x];
          v25 = v23 - v24;
          [v20 y];
          v27 = v26;
          [v8 y];
          v29 = v27 - v28;
          [v20 z];
          v31 = v30;
          [v8 z];
          v33 = v31 - v32;
          v34 = sqrt(v29 * v29 + v25 * v25 + v33 * v33);
          if (v34 < 250.0)
          {
            v35 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
            [v10 setObject:v35 forKeyedSubscript:v18];

            v36 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_28;
            }

            v37 = NSStringFromSelector(a2);
            v38 = [PCAlgorithmsCommonUtils uuidStringFromData:v18];
            *buf = 138412547;
            v95 = v37;
            v96 = 2117;
            v97 = v38;
            v39 = v36;
            v40 = "[%@], total distance is too low, skip loiId: %{sensitive}@";
LABEL_25:
            _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_DEBUG, v40, buf, 0x16u);

            v10 = v86;
            goto LABEL_28;
          }

          [v9 x];
          v47 = v46;
          [v8 x];
          v49 = v47 - v48;
          [v9 y];
          v51 = v50;
          [v8 y];
          v53 = v51 - v52;
          [v9 z];
          v55 = v54;
          [v8 z];
          v57 = v55 - v56;
          if (sqrt(v53 * v53 + v49 * v49 + v57 * v57) < 250.0)
          {
            v58 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
            [v10 setObject:v58 forKeyedSubscript:v18];

            v36 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_28;
            }

            v37 = NSStringFromSelector(a2);
            v38 = [PCAlgorithmsCommonUtils uuidStringFromData:v18];
            *buf = 138412547;
            v95 = v37;
            v96 = 2117;
            v97 = v38;
            v39 = v36;
            v40 = "[%@], moved distance is too low, skip loiId: %{sensitive}@";
            goto LABEL_25;
          }

          v59 = v25 / v34;
          v60 = v29 / v34;
          v61 = v33 / v34;
          v62 = v60 * v53 + v49 * (v25 / v34) + v57 * v61;
          [PCDynamicsUtils progressToWeightWithProgressRatio:v62 / v34 minWeight:0.1 penaltyStep:0.5 graceZone:0.2 gamma:2.0];
          v84 = v63;
          [v8 x];
          v65 = v64 + v59 * v62;
          [v8 y];
          v67 = v66 + v60 * v62;
          [v8 z];
          v69 = v68 + v61 * v62;
          [v9 x];
          v71 = (v70 - v65) * (v70 - v65);
          [v9 y];
          v73 = v71 + (v72 - v67) * (v72 - v67);
          [v9 z];
          v75 = sqrt(v73 + (v74 - v69) * (v74 - v69));
          [PCDynamicsUtils lateralDeviationToWeightWithLateralRatio:v75 / v34 minWeight:0.1 penaltyStep:0.6 graceZoneRatio:0.3 gamma:2.0];
          v77 = v76;
          [PCLocationUtils boundValue:v84 * v76 toMin:0.1 max:1.0];
          v78 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v10 setObject:v78 forKeyedSubscript:v18];

          v36 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v79 = NSStringFromSelector(a2);
            v80 = [PCAlgorithmsCommonUtils uuidStringFromData:v18];
            *buf = v83;
            v95 = v79;
            v96 = 2117;
            v97 = v80;
            v98 = 2048;
            v99 = v34;
            v100 = 2048;
            v101 = v62;
            v102 = 2048;
            v103 = v75;
            v104 = 2048;
            v105 = v84;
            v106 = 2048;
            v107 = v77;
            _os_log_impl(&dword_1CEE74000, v36, OS_LOG_TYPE_DEBUG, "[%@] loi id: %{sensitive}@, total distance between last loi and predicted loi: %.2f, progress distance: %.2f, lateral deviation distance: %.2f, progress scale factor: %.2f, lateral scale factor: %.2f", buf, 0x48u);

            v10 = v86;
          }
        }

        else
        {
          v41 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = NSStringFromSelector(a2);
            v43 = [PCAlgorithmsCommonUtils uuidStringFromData:v18];
            v44 = v43;
            *buf = 138413058;
            *&v45 = COERCE_DOUBLE(@"missing");
            if (v20)
            {
              *&v45 = COERCE_DOUBLE(@"present");
            }

            v95 = v42;
            v96 = 2112;
            v97 = v43;
            v98 = 2112;
            v99 = *&v45;
            v100 = 2112;
            v101 = *&v85;
            _os_log_impl(&dword_1CEE74000, v41, OS_LOG_TYPE_DEFAULT, "[%@] skipping Loi %@: missing required values - loiCoord: %@, currentLocation: %@", buf, 0x2Au);

            v10 = v86;
          }

          v36 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
          [v10 setObject:v36 forKeyedSubscript:v18];
        }

LABEL_28:
      }

      v14 = [v11 countByEnumeratingWithState:&v90 objects:v108 count:16];
    }

    while (v14);
  }

  v81 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)computeTravelFeasibilityForCandidateDataMap:(id)a3 currentLocation:(id)a4 currentTime:(double)a5
{
  v88 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v64 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = [v7 objectEnumerator];
  v9 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v72;
    if (v64)
    {
      v12 = @"present";
    }

    else
    {
      v12 = @"missing";
    }

    v62 = v12;
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v72 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v71 + 1) + 8 * i);
        v15 = [v14 coordinate];
        if (!v15 || ([v14 entryTime], v16 == 0.0))
        {
        }

        else
        {

          if (v64)
          {
            [v14 entryTime];
            if (v17 <= a5)
            {
              v54 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = NSStringFromSelector(a2);
                [v14 visitIdentifier];
                v56 = logb = i;
                v57 = [PCAlgorithmsCommonUtils uuidStringFromData:v56];
                *buf = 138412546;
                v76 = v55;
                v77 = 2112;
                v78 = v57;
                _os_log_impl(&dword_1CEE74000, v54, OS_LOG_TYPE_DEFAULT, "%@ - visit %@, predicted Loi entry time is earlier than current time, setting feasibility scale factor to neutral", buf, 0x16u);

                i = logb;
              }

              v42 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
              v58 = [v14 visitIdentifier];
              [v8 setObject:v42 forKeyedSubscript:v58];
            }

            else
            {
              [v14 entryTime];
              v19 = v18 - a5;
              v20 = [v14 coordinate];
              [v20 x];
              v22 = v21;
              [v64 x];
              v24 = v22 - v23;

              v25 = [v14 coordinate];
              [v25 y];
              v27 = v26;
              [v64 y];
              v29 = v27 - v28;

              v30 = [v14 coordinate];
              [v30 z];
              v32 = v31;
              [v64 z];
              v34 = v32 - v33;

              v35 = sqrt(v29 * v29 + v24 * v24 + v34 * v34);
              v36 = 42.0;
              if (v35 > 500000.0)
              {
                v36 = 250.0;
              }

              v37 = v35 / v19;
              v38 = 1.0;
              if (v37 > v36)
              {
                [PCLocationUtils boundValue:1.0 - (v37 - v36) / v36 toMin:0.1 max:1.0];
                v38 = v39;
              }

              v40 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
              v41 = [v14 visitIdentifier];
              [v8 setObject:v40 forKeyedSubscript:v41];

              v42 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v66 = NSStringFromSelector(a2);
                loga = [v14 visitIdentifier];
                v43 = [PCAlgorithmsCommonUtils uuidStringFromData:loga];
                v44 = [v14 loiIdentifier];
                v45 = [PCAlgorithmsCommonUtils uuidStringFromData:v44];
                *buf = 138413570;
                v76 = v66;
                v77 = 2112;
                v78 = v43;
                v79 = 2112;
                v80 = v45;
                v81 = 2048;
                v82 = v35;
                v83 = 2048;
                v84 = v37;
                v85 = 2048;
                v86 = v38;
                _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_INFO, "[%@] Computed feasibility for visitID: %@, loiID: %@, distance: %.2f, requiredSpeed: %.2f, scale factor: %.2f", buf, 0x3Eu);
              }
            }

            goto LABEL_30;
          }
        }

        v46 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
        v47 = [v14 visitIdentifier];
        [v8 setObject:v46 forKeyedSubscript:v47];

        v42 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v67 = NSStringFromSelector(a2);
          [v14 visitIdentifier];
          v48 = log = v42;
          v49 = [v14 coordinate];
          if (v49)
          {
            v50 = @"present";
          }

          else
          {
            v50 = @"missing";
          }

          [v14 entryTime];
          *buf = 138413314;
          v51 = @"present";
          if (v52 == 0.0)
          {
            v51 = @"missing";
          }

          v76 = v67;
          v77 = 2112;
          v78 = v48;
          v53 = v48;
          v42 = log;
          v79 = 2112;
          v80 = v50;
          v81 = 2112;
          v82 = *&v51;
          v83 = 2112;
          v84 = *&v62;
          _os_log_impl(&dword_1CEE74000, log, OS_LOG_TYPE_DEFAULT, "[%@] skipping candidate visit %@: missing required values - targetCoord: %@, entryTime: %@, currentLocation: %@", buf, 0x34u);
        }

LABEL_30:
      }

      v10 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
    }

    while (v10);
  }

  v59 = [v8 copy];
  v60 = *MEMORY[0x1E69E9840];

  return v59;
}

+ (void)updateProbabilitiesForCandidateVisits:(id)a3 withCandidateDataMap:(id)a4 progressScaleByVisitMap:(id)a5 feasibilityByVisitMap:(id)a6 dirctionScaleByVisitMap:(id)a7 etaScaleByVisitMap:(id)a8 currentTime:(double)a9
{
  v32 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v16);
        }

        [a1 updateProbabilityForCandidateVisit:*(*(&v27 + 1) + 8 * v25++) withCandidateDataMap:v17 progressScaleByVisitMap:v18 feasibilityByVisitMap:v19 dirctionScaleByVisitMap:v20 etaScaleByVisitMap:v21 currentTime:a9];
      }

      while (v23 != v25);
      v23 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)filterValidLocationPredictions:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        if (![v10 hasPredictedContext] || (objc_msgSend(v10, "predictedContext"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasContextType"), v11, (v12 & 1) == 0))
        {
          v18 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v19 = NSStringFromSelector(a2);
          *buf = 138412290;
          v35 = v19;
          v20 = v18;
          v21 = OS_LOG_TYPE_ERROR;
          v22 = "%@ prediction missing predicted context or context type. Skipping.";
          goto LABEL_16;
        }

        if ([v10 hasLocationOfInterest] && (objc_msgSend(v10, "locationOfInterest"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasLocation"), v13, (v14 & 1) != 0))
        {
          v15 = [v10 locationOfInterest];
          if ([v15 hasLoiIdentifier])
          {
            v16 = [v10 locationOfInterest];
            v17 = [v16 loiIdentifier];

            if (v17)
            {
              v18 = [v10 predictedContext];
              if ([v18 contextType]== 1)
              {
                [v29 addObject:v10];
              }

              else
              {
                v23 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = NSStringFromSelector(a2);
                  *buf = 138412290;
                  v35 = v24;
                  _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_DEFAULT, "%@ not a Location prediction, skipping", buf, 0xCu);
                }
              }

              goto LABEL_17;
            }
          }

          else
          {
          }

          v18 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = NSStringFromSelector(a2);
            *buf = 138412290;
            v35 = v19;
            v20 = v18;
            v21 = OS_LOG_TYPE_ERROR;
            v22 = "[%@] nil LOI identifier, skipping";
            goto LABEL_16;
          }
        }

        else
        {
          v18 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = NSStringFromSelector(a2);
            *buf = 138412290;
            v35 = v19;
            v20 = v18;
            v21 = OS_LOG_TYPE_DEFAULT;
            v22 = "%@ invalid LOI or location in predictedContextLocation, skipping";
LABEL_16:
            _os_log_impl(&dword_1CEE74000, v20, v21, v22, buf, 0xCu);
          }
        }

LABEL_17:

        ++v9;
      }

      while (v7 != v9);
      v25 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
      v7 = v25;
    }

    while (v25);
  }

  v26 = [v29 copy];
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (double)progressToWeightWithProgressRatio:(double)a3 minWeight:(double)a4 penaltyStep:(double)a5 graceZone:(double)a6 gamma:(double)a7
{
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    return 1.0;
  }

  v10 = a3 <= 1.0 ? -a3 : a3 + -1.0;
  if (v10 <= a6)
  {
    return 1.0;
  }

  [PCLocationUtils boundValue:(v10 - a6) / a5 toMin:0.0 max:1.0];
  v12 = 1.0 - (1.0 - pow(1.0 - v11, a7)) * (1.0 - a4);

  [PCLocationUtils boundValue:v12 toMin:a4 max:1.0];
  return result;
}

+ (double)lateralDeviationToWeightWithLateralRatio:(double)a3 minWeight:(double)a4 penaltyStep:(double)a5 graceZoneRatio:(double)a6 gamma:(double)a7
{
  if (a3 <= a6)
  {
    return 1.0;
  }

  [PCLocationUtils boundValue:(a3 - a6) / a5 toMin:0.0 max:1.0];
  v11 = 1.0 - (1.0 - pow(1.0 - v10, a7)) * (1.0 - a4);

  [PCLocationUtils boundValue:v11 toMin:a4 max:1.0];
  return result;
}

+ (void)updateProbabilityForCandidateVisit:(id)a3 withCandidateDataMap:(id)a4 progressScaleByVisitMap:(id)a5 feasibilityByVisitMap:(id)a6 dirctionScaleByVisitMap:(id)a7 etaScaleByVisitMap:(id)a8 currentTime:(double)a9
{
  v100 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  if (![v16 hasLocationOfInterest])
  {
    goto LABEL_11;
  }

  v22 = [v16 locationOfInterest];
  if (![v22 hasLoiIdentifier] || (objc_msgSend(v16, "hasPredictedContext") & 1) == 0)
  {

    goto LABEL_11;
  }

  v23 = [v16 predictedContext];
  v24 = [v23 hasProbability];

  if ((v24 & 1) == 0)
  {
LABEL_11:
    v29 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v34 = NSStringFromSelector(a2);
    *buf = 138412290;
    v83 = v34;
    v35 = "[%@] candidate visit missing loi or context info, skipping.";
    v36 = v29;
    v37 = OS_LOG_TYPE_ERROR;
LABEL_13:
    _os_log_impl(&dword_1CEE74000, v36, v37, v35, buf, 0xCu);

    goto LABEL_14;
  }

  v25 = [v16 predictedContext];
  if (([v25 hasContextType] & 1) == 0)
  {

    goto LABEL_16;
  }

  v26 = [v16 predictedContext];
  v27 = [v26 contextType];

  if (v27 != 1)
  {
LABEL_16:
    v29 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v34 = NSStringFromSelector(a2);
    *buf = 138412290;
    v83 = v34;
    v35 = "[%@] candidate visit is not a location prediction, skipping.";
    v36 = v29;
    v37 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_13;
  }

  v28 = [v17 objectForKey:v16];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 visitIdentifier];
    v31 = [v18 objectForKeyedSubscript:v30];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    }

    v81 = v33;

    [v29 entryTime];
    v42 = v41 - a9;
    [v81 doubleValue];
    [PCDynamicsUtils adjustedScaleFactorWithOriginalScaleFactor:"adjustedScaleFactorWithOriginalScaleFactor:timeUntilEntrySeconds:" timeUntilEntrySeconds:?];
    v44 = v43;
    v45 = [v29 visitIdentifier];
    v46 = [v19 objectForKeyedSubscript:v45];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    }

    v78 = v48;

    v49 = [v29 visitIdentifier];
    v50 = [v20 objectForKeyedSubscript:v49];
    v51 = v50;
    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    }

    v80 = v52;

    v53 = [v29 visitIdentifier];
    v54 = [v21 objectForKeyedSubscript:v53];
    v55 = v54;
    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    }

    v79 = v56;

    [v80 doubleValue];
    [PCDynamicsUtils adjustedScaleFactorWithOriginalScaleFactor:"adjustedScaleFactorWithOriginalScaleFactor:timeUntilEntrySeconds:" timeUntilEntrySeconds:?];
    v58 = v57;
    [v79 doubleValue];
    [PCDynamicsUtils adjustedScaleFactorWithOriginalScaleFactor:"adjustedScaleFactorWithOriginalScaleFactor:timeUntilEntrySeconds:" timeUntilEntrySeconds:?];
    v60 = v59;
    [v78 doubleValue];
    v62 = v61;
    if (v58 >= v60)
    {
      v63 = v58;
    }

    else
    {
      v63 = v60;
    }

    [v29 entryTime];
    if (v64 > 0.0 && ([v29 entryTime], v65 >= a9))
    {
      v68 = [v16 predictedContext];
      [v68 probability];
      v70 = v69;

      [PCLocationUtils boundValue:v44 * v62 * v63 * v70 toMin:0.0 max:1.0];
      v72 = v71;
      v73 = [v16 predictedContext];
      [v73 setProbability:v72];

      v66 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v77 = NSStringFromSelector(a2);
        v76 = [v29 loiIdentifier];
        v74 = [PCAlgorithmsCommonUtils uuidStringFromData:v76];
        [v78 doubleValue];
        *buf = 138414338;
        v83 = v77;
        v84 = 2112;
        v85 = v74;
        v86 = 2048;
        v87 = v42;
        v88 = 2048;
        v89 = v70;
        v90 = 2048;
        v91 = v44;
        v92 = 2048;
        v93 = v75;
        v94 = 2048;
        v95 = v58;
        v96 = 2048;
        v97 = v60;
        v98 = 2048;
        v99 = v72;
        _os_log_impl(&dword_1CEE74000, v66, OS_LOG_TYPE_DEFAULT, "[%@] updated probability for visit, loiID: %@, seconds until entry: %.3f, original prob: %.3f, progress factor: %.3f, feasibility factor: %.3f, direction factor: %.3f, ETA factor: %.3f, adjusted prob: %.3f", buf, 0x5Cu);
      }
    }

    else
    {
      v66 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = NSStringFromSelector(a2);
        *buf = 138412290;
        v83 = v67;
        _os_log_impl(&dword_1CEE74000, v66, OS_LOG_TYPE_DEFAULT, "[%@] candidate visit's predicted entry time is not set or is earlier than current time, skip feasibility check", buf, 0xCu);
      }
    }

    v39 = v81;
  }

  else
  {
    v39 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = NSStringFromSelector(a2);
      *buf = 138412290;
      v83 = v40;
      _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_DEFAULT, "[%@] no candidate data found for this visit, skipping.", buf, 0xCu);
    }
  }

LABEL_14:
  v38 = *MEMORY[0x1E69E9840];
}

+ (double)adjustedScaleFactorWithOriginalScaleFactor:(double)a3 timeUntilEntrySeconds:(double)a4
{
  if (a4 <= 3600.0)
  {
    return a3;
  }

  v4 = 1.0;
  if (a4 < 4500.0)
  {
    return a3 + (a3 + -1.0) * ((a4 + -3600.0) / -900.0);
  }

  return v4;
}

+ (id)neutralScaleFactorsForDataMap:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
        v12 = [v10 visitIdentifier];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (double)directionFactorFromCosineSimilarity:(double)a3
{
  v3 = (a3 + 1.0) * 0.5;
  if (v3 < 0.1)
  {
    v3 = 0.1;
  }

  if (a3 >= 0.0)
  {
    return 1.0;
  }

  else
  {
    return v3;
  }
}

+ (double)smoothPenaltyForETAGrowth:(double)a3 graceRatio:(double)a4 penaltyRange:(double)a5 minScaleFactor:(double)a6
{
  result = 1.0;
  if (a3 > a4)
  {
    v8 = a3 - a4;
    if (a3 - a4 >= a5)
    {
      v8 = a5;
    }

    result = -v8 / a5 * (1.0 - a6) + 1.0;
    if (result < a6)
    {
      return a6;
    }
  }

  return result;
}

@end