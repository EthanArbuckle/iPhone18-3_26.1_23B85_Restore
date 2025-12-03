@interface PCHomeKitPredictor
+ (double)calculateMinDistanceFrom:(id)from to:(id)to;
+ (double)calculateProbabilityFromDistance:(double)distance;
+ (id)createHomeKitLocationPredictionWithHome:(id)home probability:(double)probability distanceFromUser:(double)user candidateVisits:(id)visits currentTime:(double)time;
+ (id)createPredictedContextDateIntervalAtTime:(double)time fromCandidateVisits:(id)visits distanceFromUser:(double)user;
+ (void)predictHomeKitLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations;
+ (void)predictHomeLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations;
@end

@implementation PCHomeKitPredictor

+ (void)predictHomeKitLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations
{
  v31 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  historyCopy = history;
  interestCopy = interest;
  visitsCopy = visits;
  *locations = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = locationCopy;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        v25 = 0;
        [PCHomeKitPredictor predictHomeLocation:v22 locationHistory:historyCopy locationsOfInterest:interestCopy candidateVisits:visitsCopy atTime:&v25 locations:time];
        v23 = v25;
        [*locations addObjectsFromArray:v23];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)predictHomeLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations
{
  v140 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  historyCopy = history;
  interestCopy = interest;
  visitsCopy = visits;
  *locations = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!locationCopy || ([locationCopy hasLocation] & 1) == 0)
  {
    v31 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v136 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
      _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEFAULT, "%s, home not found, no prediction", buf, 0xCu);
    }

    if (*locations && [*locations count])
    {
      v109 = interestCopy;
      v32 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [*locations count];
        *buf = 134217984;
        v136 = v33;
        _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v23 = *locations;
      v34 = [v23 countByEnumeratingWithState:&v127 objects:v139 count:16];
      if (v34)
      {
        v35 = v34;
        v26 = v23;
        v102 = visitsCopy;
        v106 = historyCopy;
        v98 = locationCopy;
        v36 = *v128;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v128 != v36)
            {
              objc_enumerationMutation(v26);
            }

            v38 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v127 + 1) + 8 * i)];
            v39 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v136 = v38;
              _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v35 = [v26 countByEnumeratingWithState:&v127 objects:v139 count:16];
        }

        while (v35);
        goto LABEL_35;
      }

LABEL_58:
      interestCopy = v109;
      goto LABEL_112;
    }

    v23 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    *buf = 0;
LABEL_38:
    _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    goto LABEL_112;
  }

  [PCHomeKitPredictor calculateMinDistanceFrom:locationCopy to:interestCopy];
  if (v18 >= 100000.0)
  {
    v40 = [PCLocationUtils currentLocationWithLocationHistory:historyCopy currentTime:time];
    v97 = v40;
    if (!v40)
    {
      v62 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v136 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
        _os_log_impl(&dword_1CEE74000, v62, OS_LOG_TYPE_DEFAULT, "%s, user location not available, no prediction", buf, 0xCu);
      }

      if (*locations && [*locations count])
      {
        v104 = visitsCopy;
        v63 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = [*locations count];
          *buf = 134217984;
          v136 = v64;
          _os_log_impl(&dword_1CEE74000, v63, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v65 = *locations;
        v66 = [v65 countByEnumeratingWithState:&v119 objects:v133 count:16];
        if (v66)
        {
          v67 = v66;
          v108 = historyCopy;
          v100 = locationCopy;
          v68 = *v120;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v120 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v119 + 1) + 8 * j)];
              v71 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v136 = v70;
                _os_log_impl(&dword_1CEE74000, v71, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v119 objects:v133 count:16];
          }

          while (v67);
          locationCopy = v100;
          historyCopy = v108;
        }

        visitsCopy = v104;
      }

      else
      {
        v65 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v65, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }

      v23 = 0;
      goto LABEL_111;
    }

    v41 = v40;
    v107 = historyCopy;
    v42 = [PCLatLon alloc];
    location = [locationCopy location];
    [location locationLatitudeDeg];
    v45 = v44;
    location2 = [locationCopy location];
    [location2 locationLongitudeDeg];
    v48 = [(PCLatLon *)v42 initWithLatitude:v45 longitude:v47];

    v96 = v48;
    [v41 distanceTo:v48];
    v50 = v49;
    v51 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v50 > 100000.0)
    {
      if (v52)
      {
        *buf = 136315138;
        v136 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
        _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_DEFAULT, "%s, homekit very far, no prediction", buf, 0xCu);
      }

      historyCopy = v107;
      if (*locations && [*locations count])
      {
        v103 = visitsCopy;
        v110 = interestCopy;
        v53 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = [*locations count];
          *buf = 134217984;
          v136 = v54;
          _os_log_impl(&dword_1CEE74000, v53, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v55 = *locations;
        v56 = [v55 countByEnumeratingWithState:&v115 objects:v132 count:16];
        if (v56)
        {
          v57 = v56;
          v99 = locationCopy;
          v58 = *v116;
          do
          {
            for (k = 0; k != v57; ++k)
            {
              if (*v116 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v115 + 1) + 8 * k)];
              v61 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v136 = v60;
                _os_log_impl(&dword_1CEE74000, v61, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v57 = [v55 countByEnumeratingWithState:&v115 objects:v132 count:16];
          }

          while (v57);
          locationCopy = v99;
          historyCopy = v107;
        }

        interestCopy = v110;
        visitsCopy = v103;
      }

      else
      {
        v55 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v55, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }

      v65 = v96;
      v23 = v97;
      goto LABEL_110;
    }

    v105 = visitsCopy;
    if (v52)
    {
      [v97 latitudeDeg];
      v73 = v72;
      [v97 longitudeDeg];
      *buf = 134545921;
      v136 = v73;
      v137 = 2053;
      v138 = v74;
      _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_DEFAULT, "current location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
    }

    v75 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      location3 = [locationCopy location];
      [location3 locationLatitudeDeg];
      v78 = v77;
      location4 = [locationCopy location];
      [location4 locationLongitudeDeg];
      *buf = 134545921;
      v136 = v78;
      v137 = 2053;
      v138 = v80;
      _os_log_impl(&dword_1CEE74000, v75, OS_LOG_TYPE_DEFAULT, "homekit location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
    }

    [self calculateProbabilityFromDistance:v50];
    v82 = v81;
    v83 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    historyCopy = v107;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v136 = *&v82;
      _os_log_impl(&dword_1CEE74000, v83, OS_LOG_TYPE_DEFAULT, "probability will be, %f", buf, 0xCu);
    }

    v55 = [PCHomeKitPredictor createHomeKitLocationPredictionWithHome:locationCopy probability:visitsCopy distanceFromUser:v82 candidateVisits:v50 currentTime:time];
    [*locations addObject:v55];
    v84 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v84, OS_LOG_TYPE_DEFAULT, "Predicting homekit location..", buf, 2u);
    }

    if (*locations && [*locations count])
    {
      v101 = locationCopy;
      v85 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v86 = [*locations count];
        *buf = 134217984;
        v136 = v86;
        _os_log_impl(&dword_1CEE74000, v85, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v87 = *locations;
      v88 = [v87 countByEnumeratingWithState:&v111 objects:v131 count:16];
      if (v88)
      {
        v89 = v88;
        v95 = v55;
        v90 = *v112;
        do
        {
          for (m = 0; m != v89; ++m)
          {
            if (*v112 != v90)
            {
              objc_enumerationMutation(v87);
            }

            v92 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v111 + 1) + 8 * m)];
            v93 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v136 = v92;
              _os_log_impl(&dword_1CEE74000, v93, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v89 = [v87 countByEnumeratingWithState:&v111 objects:v131 count:16];
        }

        while (v89);
        locationCopy = v101;
        visitsCopy = v105;
        historyCopy = v107;
        v65 = v96;
        v23 = v97;
        v55 = v95;
        goto LABEL_109;
      }
    }

    else
    {
      v87 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v87, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
      }
    }

    v65 = v96;
    v23 = v97;
LABEL_109:

LABEL_110:
LABEL_111:

    goto LABEL_112;
  }

  v19 = v18;
  v20 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v136 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
    v137 = 2048;
    v138 = v19;
    _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEFAULT, "%s, home not isolated, no prediction, min distance to any loi: %f", buf, 0x16u);
  }

  if (!*locations || ![*locations count])
  {
    v23 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    *buf = 0;
    goto LABEL_38;
  }

  v109 = interestCopy;
  v21 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [*locations count];
    *buf = 134217984;
    v136 = v22;
    _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v23 = *locations;
  v24 = [v23 countByEnumeratingWithState:&v123 objects:v134 count:16];
  if (!v24)
  {
    goto LABEL_58;
  }

  v25 = v24;
  v26 = v23;
  v102 = visitsCopy;
  v106 = historyCopy;
  v98 = locationCopy;
  v27 = *v124;
  do
  {
    for (n = 0; n != v25; ++n)
    {
      if (*v124 != v27)
      {
        objc_enumerationMutation(v26);
      }

      v29 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v123 + 1) + 8 * n)];
      v30 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138739971;
        v136 = v29;
        _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
      }
    }

    v25 = [v26 countByEnumeratingWithState:&v123 objects:v134 count:16];
  }

  while (v25);
LABEL_35:
  locationCopy = v98;
  visitsCopy = v102;
  historyCopy = v106;
  interestCopy = v109;
  v23 = v26;
LABEL_112:

  v94 = *MEMORY[0x1E69E9840];
}

+ (double)calculateMinDistanceFrom:(id)from to:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v7 = -1.0;
  if ([fromCopy hasLocation])
  {
    v8 = [PCLatLon alloc];
    location = [fromCopy location];
    [location locationLatitudeDeg];
    v11 = v10;
    location2 = [fromCopy location];
    [location2 locationLongitudeDeg];
    v14 = [(PCLatLon *)v8 initWithLatitude:v11 longitude:v13];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = toCopy;
    v15 = toCopy;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      v7 = 1.79769313e308;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          if ([v20 hasLocation])
          {
            v21 = [PCLatLon alloc];
            location3 = [v20 location];
            [location3 locationLatitudeDeg];
            v24 = v23;
            location4 = [v20 location];
            [location4 locationLongitudeDeg];
            v27 = [(PCLatLon *)v21 initWithLatitude:v24 longitude:v26];

            [(PCLatLon *)v14 distanceTo:v27];
            if (v28 < v7)
            {
              v7 = v28;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    else
    {
      v7 = 1.79769313e308;
    }

    toCopy = v31;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (double)calculateProbabilityFromDistance:(double)distance
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    distanceCopy = distance;
    _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_DEFAULT, "user distance to homekit home, %f", &v9, 0xCu);
  }

  v5 = distance * -0.0000094 + 0.95;
  v6 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218496;
    distanceCopy = -0.0000094;
    v11 = 2048;
    v12 = 0x3FEE666666666666;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "slope: %f, intercept: %f,calculated probability, %f", &v9, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)createHomeKitLocationPredictionWithHome:(id)home probability:(double)probability distanceFromUser:(double)user candidateVisits:(id)visits currentTime:(double)time
{
  v33[1] = *MEMORY[0x1E69E9840];
  homeCopy = home;
  v11 = objc_alloc_init(PCPPredictedContextLocation);
  v12 = objc_alloc_init(PCPLocationOfInterest);
  [(PCPPredictedContextLocation *)v11 setLocationOfInterest:v12];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v14 = [PCAlgorithmsCommonUtils dataFromUUID:uUID];
  locationOfInterest = [(PCPPredictedContextLocation *)v11 locationOfInterest];
  [locationOfInterest setLoiIdentifier:v14];

  location = [homeCopy location];
  locationOfInterest2 = [(PCPPredictedContextLocation *)v11 locationOfInterest];
  [locationOfInterest2 setLocation:location];

  v18 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextLocation *)v11 setPredictedContext:v18];

  predictedContext = [(PCPPredictedContextLocation *)v11 predictedContext];
  [predictedContext setProbability:probability];

  predictedContext2 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [predictedContext2 setContextType:1];

  v21 = objc_alloc_init(PCPSource);
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [(PCPSource *)v21 setIdentifier:v23];

  v24 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v24 setHomekitHome:homeCopy];

  [(PCPSource *)v21 setPredictedContextSource:v24];
  v33[0] = v21;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v26 = [v25 mutableCopy];
  predictedContext3 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [predictedContext3 setSources:v26];

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = [PCHomeKitPredictor createPredictedContextDateIntervalAtTime:v28 fromCandidateVisits:time distanceFromUser:user];
  predictedContext4 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [predictedContext4 setDateInterval:v29];

  v31 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)createPredictedContextDateIntervalAtTime:(double)time fromCandidateVisits:(id)visits distanceFromUser:(double)user
{
  v61 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  v8 = objc_alloc_init(PCPPredictedContextDateInterval);
  v9 = objc_alloc_init(PCPPredictedContextDate);
  [(PCPPredictedContextDateInterval *)v8 setStartDate:v9];

  v10 = objc_alloc_init(PCPPredictedContextDate);
  [(PCPPredictedContextDateInterval *)v8 setEndDate:v10];

  v11 = user / 15.0;
  if ([visitsCopy count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v12 = visitsCopy;
    v13 = [v12 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v57;
      v16 = 1.79769313e308;
      v17 = 1.79769313e308;
      v18 = 1.79769313e308;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v57 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v56 + 1) + 8 * i);
          predictedContext = [v20 predictedContext];
          dateInterval = [predictedContext dateInterval];
          endDate = [dateInterval endDate];
          [endDate date];
          v25 = v24;

          if (v25 > time)
          {
            predictedContext2 = [v20 predictedContext];
            dateInterval2 = [predictedContext2 dateInterval];
            endDate2 = [dateInterval2 endDate];
            [endDate2 date];
            v30 = v29 - time;

            if (v30 < v18)
            {
              predictedContext3 = [v20 predictedContext];
              dateInterval3 = [predictedContext3 dateInterval];
              endDate3 = [dateInterval3 endDate];
              [endDate3 date];
              v16 = v34;

              predictedContext4 = [v20 predictedContext];
              dateInterval4 = [predictedContext4 dateInterval];
              endDate4 = [dateInterval4 endDate];
              [endDate4 confidenceInterval];
              v17 = v38;

              v18 = v30;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 1.79769313e308;
      v17 = 1.79769313e308;
    }

    startDate = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate setDate:v11 + v16];

    startDate2 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate2 date];
    v51 = v50 + 14400.0;
    endDate5 = [(PCPPredictedContextDateInterval *)v8 endDate];
    [endDate5 setDate:v51];

    startDate3 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate3 setConfidenceInterval:v17];

    endDate6 = [(PCPPredictedContextDateInterval *)v8 endDate];
    v46 = endDate6;
    v47 = v17;
  }

  else
  {
    startDate4 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate4 setDate:v11 + time];

    startDate5 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate5 date];
    v42 = v41 + 14400.0;
    endDate7 = [(PCPPredictedContextDateInterval *)v8 endDate];
    [endDate7 setDate:v42];

    startDate6 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate6 setConfidenceInterval:v11 * 0.5];

    endDate6 = [(PCPPredictedContextDateInterval *)v8 endDate];
    v46 = endDate6;
    v47 = 10800.0;
  }

  [endDate6 setConfidenceInterval:{v47, v56}];

  v54 = *MEMORY[0x1E69E9840];

  return v8;
}

@end