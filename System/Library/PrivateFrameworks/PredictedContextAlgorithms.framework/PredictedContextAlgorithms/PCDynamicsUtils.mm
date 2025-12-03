@interface PCDynamicsUtils
+ (double)adjustedScaleFactorWithOriginalScaleFactor:(double)factor timeUntilEntrySeconds:(double)seconds;
+ (double)directionFactorFromCosineSimilarity:(double)similarity;
+ (double)lateralDeviationToWeightWithLateralRatio:(double)ratio minWeight:(double)weight penaltyStep:(double)step graceZoneRatio:(double)zoneRatio gamma:(double)gamma;
+ (double)progressToWeightWithProgressRatio:(double)ratio minWeight:(double)weight penaltyStep:(double)step graceZone:(double)zone gamma:(double)gamma;
+ (double)smoothPenaltyForETAGrowth:(double)growth graceRatio:(double)ratio penaltyRange:(double)range minScaleFactor:(double)factor;
+ (id)buildLoiCoordinateMapFromCandidateDataMap:(id)map;
+ (id)candidateDataMapFromVisits:(id)visits;
+ (id)computeProgressScaleFromCandidateDataMap:(id)map lastVisit:(id)visit currentLocation:(id)location;
+ (id)computeProgressScaleWithLOIs:(id)is lastVisit:(id)visit currentLocation:(id)location;
+ (id)computeTravelFeasibilityForCandidateDataMap:(id)map currentLocation:(id)location currentTime:(double)time;
+ (id)currentLocationWithLocationHistory:(id)history currentTime:(double)time;
+ (id)filterValidLocationPredictions:(id)predictions;
+ (id)locationOfLastVisitWithVisitHistory:(id)history currentTime:(double)time isInTransition:(BOOL *)transition exitTime:(double *)exitTime;
+ (id)neutralScaleFactorsForDataMap:(id)map;
+ (void)updateProbabilitiesForCandidateVisits:(id)visits withCandidateDataMap:(id)map progressScaleByVisitMap:(id)visitMap feasibilityByVisitMap:(id)byVisitMap dirctionScaleByVisitMap:(id)scaleByVisitMap etaScaleByVisitMap:(id)etaScaleByVisitMap currentTime:(double)time;
+ (void)updateProbabilityForCandidateVisit:(id)visit withCandidateDataMap:(id)map progressScaleByVisitMap:(id)visitMap feasibilityByVisitMap:(id)byVisitMap dirctionScaleByVisitMap:(id)scaleByVisitMap etaScaleByVisitMap:(id)etaScaleByVisitMap currentTime:(double)time;
@end

@implementation PCDynamicsUtils

+ (id)candidateDataMapFromVisits:(id)visits
{
  v46 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(visitsCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = visitsCopy;
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
        locationOfInterest = [v7 locationOfInterest];
        loiIdentifier = [locationOfInterest loiIdentifier];

        uUID = [MEMORY[0x1E696AFB0] UUID];
        v11 = [PCAlgorithmsCommonUtils dataFromUUID:uUID];

        locationOfInterest2 = [v7 locationOfInterest];
        location = [locationOfInterest2 location];

        if (location)
        {
          locationOfInterest3 = [v7 locationOfInterest];
          location2 = [locationOfInterest3 location];

          v16 = [PCLatLon alloc];
          [location2 locationLatitudeDeg];
          v18 = v17;
          [location2 locationLongitudeDeg];
          v20 = [(PCLatLon *)v16 initWithLatitude:v18 longitude:v19];
          v21 = [PCLocationUtils latLonToCartesianWithLatLon:v20];
        }

        else
        {
          v21 = 0;
        }

        predictedContext = [v7 predictedContext];
        v23 = 0.0;
        if ([predictedContext hasDateInterval])
        {
          v40 = loiIdentifier;
          predictedContext2 = [v7 predictedContext];
          dateInterval = [predictedContext2 dateInterval];
          if ([dateInterval hasStartDate])
          {
            predictedContext3 = [v7 predictedContext];
            dateInterval2 = [predictedContext3 dateInterval];
            [dateInterval2 startDate];
            v37 = v21;
            v28 = v11;
            v30 = v29 = v4;
            hasDate = [v30 hasDate];

            v4 = v29;
            v11 = v28;
            v21 = v37;

            v5 = v35;
            loiIdentifier = v40;
            if (!hasDate)
            {
              goto LABEL_15;
            }

            predictedContext = [v7 predictedContext];
            predictedContext2 = [predictedContext dateInterval];
            dateInterval = [predictedContext2 startDate];
            [dateInterval date];
            v23 = v31;
          }

          loiIdentifier = v40;
        }

LABEL_15:
        v32 = [[PCCandidateVisitData alloc] initWithVisitIdentifier:v11 loiIdentifier:loiIdentifier coordinate:v21 entryTime:v23];
        [v4 setObject:v32 forKey:v7];
      }

      v39 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v39);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)buildLoiCoordinateMapFromCandidateDataMap:(id)map
{
  v27 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = mapCopy;
  objectEnumerator = [mapCopy objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        loiIdentifier = [v10 loiIdentifier];
        if (loiIdentifier)
        {
          coordinate2 = loiIdentifier;
          coordinate = [v10 coordinate];
          if (coordinate)
          {
            v14 = coordinate;
            loiIdentifier2 = [v10 loiIdentifier];
            v16 = [dictionary objectForKeyedSubscript:loiIdentifier2];

            if (v16)
            {
              continue;
            }

            coordinate2 = [v10 coordinate];
            loiIdentifier3 = [v10 loiIdentifier];
            [dictionary setObject:coordinate2 forKeyedSubscript:loiIdentifier3];
          }
        }
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v18 = [dictionary copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)computeProgressScaleFromCandidateDataMap:(id)map lastVisit:(id)visit currentLocation:(id)location
{
  v37 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  visitCopy = visit;
  locationCopy = location;
  v28 = [self buildLoiCoordinateMapFromCandidateDataMap:mapCopy];
  v29 = locationCopy;
  v30 = visitCopy;
  v11 = [self computeProgressScaleWithLOIs:? lastVisit:? currentLocation:?];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = mapCopy;
  objectEnumerator = [mapCopy objectEnumerator];
  v14 = [objectEnumerator countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        loiIdentifier = [v18 loiIdentifier];
        v20 = [v11 objectForKeyedSubscript:loiIdentifier];
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

        visitIdentifier = [v18 visitIdentifier];
        [dictionary setObject:v23 forKeyedSubscript:visitIdentifier];
      }

      v15 = [objectEnumerator countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  v25 = [dictionary copy];
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)locationOfLastVisitWithVisitHistory:(id)history currentTime:(double)time isInTransition:(BOOL *)transition exitTime:(double *)exitTime
{
  v70 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  v11 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v59 = v12;
    v60 = 2048;
    timeCopy = COERCE_DOUBLE([historyCopy count]);
    _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_DEFAULT, "[%@] input visit history number %lu", buf, 0x16u);
  }

  if (!historyCopy || ![historyCopy count])
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
  *&v44[7] = time;
  v44[4] = &v51;
  v44[5] = v57;
  v44[6] = &v45;
  [historyCopy enumerateObjectsUsingBlock:v44];
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
      if (transition)
      {
        *transition = 0;
      }

      v15 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v43 = NSStringFromSelector(a2);
        *buf = 138412546;
        v59 = v43;
        v60 = 2048;
        timeCopy = time;
        _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_ERROR, "[%@] no valid visit found for dynamic weighting at current time: %.2f", buf, 0x16u);
      }

      v16 = 0;
      goto LABEL_24;
    }
  }

  v17 = v13[5];
  if (transition)
  {
    *transition = v15 != v17;
  }

  if (exitTime && v15 != v17)
  {
    [v15 exitTimeCFAbsolute];
    *exitTime = v18;
  }

  location = [v15 location];
  v20 = location;
  if (location && [location hasLocationLatitudeDeg] && objc_msgSend(v20, "hasLocationLongitudeDeg"))
  {
    v21 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = NSStringFromSelector(a2);
      [v15 entryTimeCFAbsolute];
      v24 = v23;
      [v15 exitTimeCFAbsolute];
      v26 = v25;
      location2 = [v15 location];
      [location2 locationLatitudeDeg];
      v29 = v28;
      location3 = [v15 location];
      [location3 locationLongitudeDeg];
      v32 = v31;
      loiIdentifier = [v15 loiIdentifier];
      v34 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier];
      *buf = 138413571;
      v59 = v22;
      v60 = 2048;
      timeCopy = v24;
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

+ (id)currentLocationWithLocationHistory:(id)history currentTime:(double)time
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [PCLocationUtils currentLocationWithLocationHistory:history currentTime:?];
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
      timeCopy = time;
      _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "[%@] no valid current location found for dynamic weighting at current time: %.2f", &v12, 0x16u);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)computeProgressScaleWithLOIs:(id)is lastVisit:(id)visit currentLocation:(id)location
{
  v109 = *MEMORY[0x1E69E9840];
  isCopy = is;
  visitCopy = visit;
  locationCopy = location;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v11 = isCopy;
  v12 = [v11 countByEnumeratingWithState:&v90 objects:v108 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = visitCopy != 0;
    if (!locationCopy)
    {
      v15 = 0;
    }

    v89 = v15;
    v88 = *v91;
    v16 = @"missing";
    if (locationCopy)
    {
      v16 = @"present";
    }

    v85 = v16;
    *&v13 = 138413827;
    v83 = v13;
    v86 = dictionary;
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
          [visitCopy x];
          v25 = v23 - v24;
          [v20 y];
          v27 = v26;
          [visitCopy y];
          v29 = v27 - v28;
          [v20 z];
          v31 = v30;
          [visitCopy z];
          v33 = v31 - v32;
          v34 = sqrt(v29 * v29 + v25 * v25 + v33 * v33);
          if (v34 < 250.0)
          {
            v35 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
            [dictionary setObject:v35 forKeyedSubscript:v18];

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

            dictionary = v86;
            goto LABEL_28;
          }

          [locationCopy x];
          v47 = v46;
          [visitCopy x];
          v49 = v47 - v48;
          [locationCopy y];
          v51 = v50;
          [visitCopy y];
          v53 = v51 - v52;
          [locationCopy z];
          v55 = v54;
          [visitCopy z];
          v57 = v55 - v56;
          if (sqrt(v53 * v53 + v49 * v49 + v57 * v57) < 250.0)
          {
            v58 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
            [dictionary setObject:v58 forKeyedSubscript:v18];

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
          [visitCopy x];
          v65 = v64 + v59 * v62;
          [visitCopy y];
          v67 = v66 + v60 * v62;
          [visitCopy z];
          v69 = v68 + v61 * v62;
          [locationCopy x];
          v71 = (v70 - v65) * (v70 - v65);
          [locationCopy y];
          v73 = v71 + (v72 - v67) * (v72 - v67);
          [locationCopy z];
          v75 = sqrt(v73 + (v74 - v69) * (v74 - v69));
          [PCDynamicsUtils lateralDeviationToWeightWithLateralRatio:v75 / v34 minWeight:0.1 penaltyStep:0.6 graceZoneRatio:0.3 gamma:2.0];
          v77 = v76;
          [PCLocationUtils boundValue:v84 * v76 toMin:0.1 max:1.0];
          v78 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [dictionary setObject:v78 forKeyedSubscript:v18];

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

            dictionary = v86;
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

            dictionary = v86;
          }

          v36 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
          [dictionary setObject:v36 forKeyedSubscript:v18];
        }

LABEL_28:
      }

      v14 = [v11 countByEnumeratingWithState:&v90 objects:v108 count:16];
    }

    while (v14);
  }

  v81 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)computeTravelFeasibilityForCandidateDataMap:(id)map currentLocation:(id)location currentTime:(double)time
{
  v88 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  locationCopy = location;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(mapCopy, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = [mapCopy objectEnumerator];
  v9 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v72;
    if (locationCopy)
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
        coordinate = [v14 coordinate];
        if (!coordinate || ([v14 entryTime], v16 == 0.0))
        {
        }

        else
        {

          if (locationCopy)
          {
            [v14 entryTime];
            if (v17 <= time)
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
              visitIdentifier = [v14 visitIdentifier];
              [v8 setObject:v42 forKeyedSubscript:visitIdentifier];
            }

            else
            {
              [v14 entryTime];
              v19 = v18 - time;
              coordinate2 = [v14 coordinate];
              [coordinate2 x];
              v22 = v21;
              [locationCopy x];
              v24 = v22 - v23;

              coordinate3 = [v14 coordinate];
              [coordinate3 y];
              v27 = v26;
              [locationCopy y];
              v29 = v27 - v28;

              coordinate4 = [v14 coordinate];
              [coordinate4 z];
              v32 = v31;
              [locationCopy z];
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
              visitIdentifier2 = [v14 visitIdentifier];
              [v8 setObject:v40 forKeyedSubscript:visitIdentifier2];

              v42 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v66 = NSStringFromSelector(a2);
                loga = [v14 visitIdentifier];
                v43 = [PCAlgorithmsCommonUtils uuidStringFromData:loga];
                loiIdentifier = [v14 loiIdentifier];
                v45 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier];
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
        visitIdentifier3 = [v14 visitIdentifier];
        [v8 setObject:v46 forKeyedSubscript:visitIdentifier3];

        v42 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v67 = NSStringFromSelector(a2);
          [v14 visitIdentifier];
          v48 = log = v42;
          coordinate5 = [v14 coordinate];
          if (coordinate5)
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

+ (void)updateProbabilitiesForCandidateVisits:(id)visits withCandidateDataMap:(id)map progressScaleByVisitMap:(id)visitMap feasibilityByVisitMap:(id)byVisitMap dirctionScaleByVisitMap:(id)scaleByVisitMap etaScaleByVisitMap:(id)etaScaleByVisitMap currentTime:(double)time
{
  v32 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  mapCopy = map;
  visitMapCopy = visitMap;
  byVisitMapCopy = byVisitMap;
  scaleByVisitMapCopy = scaleByVisitMap;
  etaScaleByVisitMapCopy = etaScaleByVisitMap;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = [visitsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(visitsCopy);
        }

        [self updateProbabilityForCandidateVisit:*(*(&v27 + 1) + 8 * v25++) withCandidateDataMap:mapCopy progressScaleByVisitMap:visitMapCopy feasibilityByVisitMap:byVisitMapCopy dirctionScaleByVisitMap:scaleByVisitMapCopy etaScaleByVisitMap:etaScaleByVisitMapCopy currentTime:time];
      }

      while (v23 != v25);
      v23 = [visitsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)filterValidLocationPredictions:(id)predictions
{
  v37 = *MEMORY[0x1E69E9840];
  predictionsCopy = predictions;
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = predictionsCopy;
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
          predictedContext = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (!os_log_type_enabled(predictedContext, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v19 = NSStringFromSelector(a2);
          *buf = 138412290;
          v35 = v19;
          v20 = predictedContext;
          v21 = OS_LOG_TYPE_ERROR;
          v22 = "%@ prediction missing predicted context or context type. Skipping.";
          goto LABEL_16;
        }

        if ([v10 hasLocationOfInterest] && (objc_msgSend(v10, "locationOfInterest"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasLocation"), v13, (v14 & 1) != 0))
        {
          locationOfInterest = [v10 locationOfInterest];
          if ([locationOfInterest hasLoiIdentifier])
          {
            locationOfInterest2 = [v10 locationOfInterest];
            loiIdentifier = [locationOfInterest2 loiIdentifier];

            if (loiIdentifier)
            {
              predictedContext = [v10 predictedContext];
              if ([predictedContext contextType]== 1)
              {
                [array addObject:v10];
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

          predictedContext = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(predictedContext, OS_LOG_TYPE_ERROR))
          {
            v19 = NSStringFromSelector(a2);
            *buf = 138412290;
            v35 = v19;
            v20 = predictedContext;
            v21 = OS_LOG_TYPE_ERROR;
            v22 = "[%@] nil LOI identifier, skipping";
            goto LABEL_16;
          }
        }

        else
        {
          predictedContext = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(predictedContext, OS_LOG_TYPE_DEFAULT))
          {
            v19 = NSStringFromSelector(a2);
            *buf = 138412290;
            v35 = v19;
            v20 = predictedContext;
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

  v26 = [array copy];
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (double)progressToWeightWithProgressRatio:(double)ratio minWeight:(double)weight penaltyStep:(double)step graceZone:(double)zone gamma:(double)gamma
{
  if (ratio >= 0.0 && ratio <= 1.0)
  {
    return 1.0;
  }

  v10 = ratio <= 1.0 ? -ratio : ratio + -1.0;
  if (v10 <= zone)
  {
    return 1.0;
  }

  [PCLocationUtils boundValue:(v10 - zone) / step toMin:0.0 max:1.0];
  v12 = 1.0 - (1.0 - pow(1.0 - v11, gamma)) * (1.0 - weight);

  [PCLocationUtils boundValue:v12 toMin:weight max:1.0];
  return result;
}

+ (double)lateralDeviationToWeightWithLateralRatio:(double)ratio minWeight:(double)weight penaltyStep:(double)step graceZoneRatio:(double)zoneRatio gamma:(double)gamma
{
  if (ratio <= zoneRatio)
  {
    return 1.0;
  }

  [PCLocationUtils boundValue:(ratio - zoneRatio) / step toMin:0.0 max:1.0];
  v11 = 1.0 - (1.0 - pow(1.0 - v10, gamma)) * (1.0 - weight);

  [PCLocationUtils boundValue:v11 toMin:weight max:1.0];
  return result;
}

+ (void)updateProbabilityForCandidateVisit:(id)visit withCandidateDataMap:(id)map progressScaleByVisitMap:(id)visitMap feasibilityByVisitMap:(id)byVisitMap dirctionScaleByVisitMap:(id)scaleByVisitMap etaScaleByVisitMap:(id)etaScaleByVisitMap currentTime:(double)time
{
  v100 = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  mapCopy = map;
  visitMapCopy = visitMap;
  byVisitMapCopy = byVisitMap;
  scaleByVisitMapCopy = scaleByVisitMap;
  etaScaleByVisitMapCopy = etaScaleByVisitMap;
  if (![visitCopy hasLocationOfInterest])
  {
    goto LABEL_11;
  }

  locationOfInterest = [visitCopy locationOfInterest];
  if (![locationOfInterest hasLoiIdentifier] || (objc_msgSend(visitCopy, "hasPredictedContext") & 1) == 0)
  {

    goto LABEL_11;
  }

  predictedContext = [visitCopy predictedContext];
  hasProbability = [predictedContext hasProbability];

  if ((hasProbability & 1) == 0)
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

  predictedContext2 = [visitCopy predictedContext];
  if (([predictedContext2 hasContextType] & 1) == 0)
  {

    goto LABEL_16;
  }

  predictedContext3 = [visitCopy predictedContext];
  contextType = [predictedContext3 contextType];

  if (contextType != 1)
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

  v28 = [mapCopy objectForKey:visitCopy];
  v29 = v28;
  if (v28)
  {
    visitIdentifier = [v28 visitIdentifier];
    v31 = [visitMapCopy objectForKeyedSubscript:visitIdentifier];
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
    v42 = v41 - time;
    [v81 doubleValue];
    [PCDynamicsUtils adjustedScaleFactorWithOriginalScaleFactor:"adjustedScaleFactorWithOriginalScaleFactor:timeUntilEntrySeconds:" timeUntilEntrySeconds:?];
    v44 = v43;
    visitIdentifier2 = [v29 visitIdentifier];
    v46 = [byVisitMapCopy objectForKeyedSubscript:visitIdentifier2];
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

    visitIdentifier3 = [v29 visitIdentifier];
    v50 = [scaleByVisitMapCopy objectForKeyedSubscript:visitIdentifier3];
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

    visitIdentifier4 = [v29 visitIdentifier];
    v54 = [etaScaleByVisitMapCopy objectForKeyedSubscript:visitIdentifier4];
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
    if (v64 > 0.0 && ([v29 entryTime], v65 >= time))
    {
      predictedContext4 = [visitCopy predictedContext];
      [predictedContext4 probability];
      v70 = v69;

      [PCLocationUtils boundValue:v44 * v62 * v63 * v70 toMin:0.0 max:1.0];
      v72 = v71;
      predictedContext5 = [visitCopy predictedContext];
      [predictedContext5 setProbability:v72];

      v66 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v77 = NSStringFromSelector(a2);
        loiIdentifier = [v29 loiIdentifier];
        v74 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier];
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

+ (double)adjustedScaleFactorWithOriginalScaleFactor:(double)factor timeUntilEntrySeconds:(double)seconds
{
  if (seconds <= 3600.0)
  {
    return factor;
  }

  v4 = 1.0;
  if (seconds < 4500.0)
  {
    return factor + (factor + -1.0) * ((seconds + -3600.0) / -900.0);
  }

  return v4;
}

+ (id)neutralScaleFactorsForDataMap:(id)map
{
  v21 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(mapCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  objectEnumerator = [mapCopy objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
        visitIdentifier = [v10 visitIdentifier];
        [v4 setObject:v11 forKeyedSubscript:visitIdentifier];
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (double)directionFactorFromCosineSimilarity:(double)similarity
{
  v3 = (similarity + 1.0) * 0.5;
  if (v3 < 0.1)
  {
    v3 = 0.1;
  }

  if (similarity >= 0.0)
  {
    return 1.0;
  }

  else
  {
    return v3;
  }
}

+ (double)smoothPenaltyForETAGrowth:(double)growth graceRatio:(double)ratio penaltyRange:(double)range minScaleFactor:(double)factor
{
  result = 1.0;
  if (growth > ratio)
  {
    rangeCopy = growth - ratio;
    if (growth - ratio >= range)
    {
      rangeCopy = range;
    }

    result = -rangeCopy / range * (1.0 - factor) + 1.0;
    if (result < factor)
    {
      return factor;
    }
  }

  return result;
}

@end