@interface PCHomeKitPredictor
+ (double)calculateMinDistanceFrom:(id)a3 to:(id)a4;
+ (double)calculateProbabilityFromDistance:(double)a3;
+ (id)createHomeKitLocationPredictionWithHome:(id)a3 probability:(double)a4 distanceFromUser:(double)a5 candidateVisits:(id)a6 currentTime:(double)a7;
+ (id)createPredictedContextDateIntervalAtTime:(double)a3 fromCandidateVisits:(id)a4 distanceFromUser:(double)a5;
+ (void)predictHomeKitLocation:(id)a3 locationHistory:(id)a4 locationsOfInterest:(id)a5 candidateVisits:(id)a6 atTime:(double)a7 locations:(id *)a8;
+ (void)predictHomeLocation:(id)a3 locationHistory:(id)a4 locationsOfInterest:(id)a5 candidateVisits:(id)a6 atTime:(double)a7 locations:(id *)a8;
@end

@implementation PCHomeKitPredictor

+ (void)predictHomeKitLocation:(id)a3 locationHistory:(id)a4 locationsOfInterest:(id)a5 candidateVisits:(id)a6 atTime:(double)a7 locations:(id *)a8
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  *a8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v13;
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
        [PCHomeKitPredictor predictHomeLocation:v22 locationHistory:v14 locationsOfInterest:v15 candidateVisits:v16 atTime:&v25 locations:a7];
        v23 = v25;
        [*a8 addObjectsFromArray:v23];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)predictHomeLocation:(id)a3 locationHistory:(id)a4 locationsOfInterest:(id)a5 candidateVisits:(id)a6 atTime:(double)a7 locations:(id *)a8
{
  v140 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  *a8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v14 || ([v14 hasLocation] & 1) == 0)
  {
    v31 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v136 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
      _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEFAULT, "%s, home not found, no prediction", buf, 0xCu);
    }

    if (*a8 && [*a8 count])
    {
      v109 = v16;
      v32 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [*a8 count];
        *buf = 134217984;
        v136 = v33;
        _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v23 = *a8;
      v34 = [v23 countByEnumeratingWithState:&v127 objects:v139 count:16];
      if (v34)
      {
        v35 = v34;
        v26 = v23;
        v102 = v17;
        v106 = v15;
        v98 = v14;
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
      v16 = v109;
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

  [PCHomeKitPredictor calculateMinDistanceFrom:v14 to:v16];
  if (v18 >= 100000.0)
  {
    v40 = [PCLocationUtils currentLocationWithLocationHistory:v15 currentTime:a7];
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

      if (*a8 && [*a8 count])
      {
        v104 = v17;
        v63 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = [*a8 count];
          *buf = 134217984;
          v136 = v64;
          _os_log_impl(&dword_1CEE74000, v63, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v65 = *a8;
        v66 = [v65 countByEnumeratingWithState:&v119 objects:v133 count:16];
        if (v66)
        {
          v67 = v66;
          v108 = v15;
          v100 = v14;
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
          v14 = v100;
          v15 = v108;
        }

        v17 = v104;
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
    v107 = v15;
    v42 = [PCLatLon alloc];
    v43 = [v14 location];
    [v43 locationLatitudeDeg];
    v45 = v44;
    v46 = [v14 location];
    [v46 locationLongitudeDeg];
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

      v15 = v107;
      if (*a8 && [*a8 count])
      {
        v103 = v17;
        v110 = v16;
        v53 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = [*a8 count];
          *buf = 134217984;
          v136 = v54;
          _os_log_impl(&dword_1CEE74000, v53, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v55 = *a8;
        v56 = [v55 countByEnumeratingWithState:&v115 objects:v132 count:16];
        if (v56)
        {
          v57 = v56;
          v99 = v14;
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
          v14 = v99;
          v15 = v107;
        }

        v16 = v110;
        v17 = v103;
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

    v105 = v17;
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
      v76 = [v14 location];
      [v76 locationLatitudeDeg];
      v78 = v77;
      v79 = [v14 location];
      [v79 locationLongitudeDeg];
      *buf = 134545921;
      v136 = v78;
      v137 = 2053;
      v138 = v80;
      _os_log_impl(&dword_1CEE74000, v75, OS_LOG_TYPE_DEFAULT, "homekit location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
    }

    [a1 calculateProbabilityFromDistance:v50];
    v82 = v81;
    v83 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    v15 = v107;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v136 = *&v82;
      _os_log_impl(&dword_1CEE74000, v83, OS_LOG_TYPE_DEFAULT, "probability will be, %f", buf, 0xCu);
    }

    v55 = [PCHomeKitPredictor createHomeKitLocationPredictionWithHome:v14 probability:v17 distanceFromUser:v82 candidateVisits:v50 currentTime:a7];
    [*a8 addObject:v55];
    v84 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v84, OS_LOG_TYPE_DEFAULT, "Predicting homekit location..", buf, 2u);
    }

    if (*a8 && [*a8 count])
    {
      v101 = v14;
      v85 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v86 = [*a8 count];
        *buf = 134217984;
        v136 = v86;
        _os_log_impl(&dword_1CEE74000, v85, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v87 = *a8;
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
        v14 = v101;
        v17 = v105;
        v15 = v107;
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

  if (!*a8 || ![*a8 count])
  {
    v23 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    *buf = 0;
    goto LABEL_38;
  }

  v109 = v16;
  v21 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [*a8 count];
    *buf = 134217984;
    v136 = v22;
    _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v23 = *a8;
  v24 = [v23 countByEnumeratingWithState:&v123 objects:v134 count:16];
  if (!v24)
  {
    goto LABEL_58;
  }

  v25 = v24;
  v26 = v23;
  v102 = v17;
  v106 = v15;
  v98 = v14;
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
  v14 = v98;
  v17 = v102;
  v15 = v106;
  v16 = v109;
  v23 = v26;
LABEL_112:

  v94 = *MEMORY[0x1E69E9840];
}

+ (double)calculateMinDistanceFrom:(id)a3 to:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = -1.0;
  if ([v5 hasLocation])
  {
    v8 = [PCLatLon alloc];
    v9 = [v5 location];
    [v9 locationLatitudeDeg];
    v11 = v10;
    v12 = [v5 location];
    [v12 locationLongitudeDeg];
    v14 = [(PCLatLon *)v8 initWithLatitude:v11 longitude:v13];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = v6;
    v15 = v6;
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
            v22 = [v20 location];
            [v22 locationLatitudeDeg];
            v24 = v23;
            v25 = [v20 location];
            [v25 locationLongitudeDeg];
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

    v6 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (double)calculateProbabilityFromDistance:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_DEFAULT, "user distance to homekit home, %f", &v9, 0xCu);
  }

  v5 = a3 * -0.0000094 + 0.95;
  v6 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218496;
    v10 = -0.0000094;
    v11 = 2048;
    v12 = 0x3FEE666666666666;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "slope: %f, intercept: %f,calculated probability, %f", &v9, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)createHomeKitLocationPredictionWithHome:(id)a3 probability:(double)a4 distanceFromUser:(double)a5 candidateVisits:(id)a6 currentTime:(double)a7
{
  v33[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = objc_alloc_init(PCPPredictedContextLocation);
  v12 = objc_alloc_init(PCPLocationOfInterest);
  [(PCPPredictedContextLocation *)v11 setLocationOfInterest:v12];

  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = [PCAlgorithmsCommonUtils dataFromUUID:v13];
  v15 = [(PCPPredictedContextLocation *)v11 locationOfInterest];
  [v15 setLoiIdentifier:v14];

  v16 = [v10 location];
  v17 = [(PCPPredictedContextLocation *)v11 locationOfInterest];
  [v17 setLocation:v16];

  v18 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextLocation *)v11 setPredictedContext:v18];

  v19 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [v19 setProbability:a4];

  v20 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [v20 setContextType:1];

  v21 = objc_alloc_init(PCPSource);
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [(PCPSource *)v21 setIdentifier:v23];

  v24 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v24 setHomekitHome:v10];

  [(PCPSource *)v21 setPredictedContextSource:v24];
  v33[0] = v21;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v26 = [v25 mutableCopy];
  v27 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [v27 setSources:v26];

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = [PCHomeKitPredictor createPredictedContextDateIntervalAtTime:v28 fromCandidateVisits:a7 distanceFromUser:a5];
  v30 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [v30 setDateInterval:v29];

  v31 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)createPredictedContextDateIntervalAtTime:(double)a3 fromCandidateVisits:(id)a4 distanceFromUser:(double)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = objc_alloc_init(PCPPredictedContextDateInterval);
  v9 = objc_alloc_init(PCPPredictedContextDate);
  [(PCPPredictedContextDateInterval *)v8 setStartDate:v9];

  v10 = objc_alloc_init(PCPPredictedContextDate);
  [(PCPPredictedContextDateInterval *)v8 setEndDate:v10];

  v11 = a5 / 15.0;
  if ([v7 count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v12 = v7;
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
          v21 = [v20 predictedContext];
          v22 = [v21 dateInterval];
          v23 = [v22 endDate];
          [v23 date];
          v25 = v24;

          if (v25 > a3)
          {
            v26 = [v20 predictedContext];
            v27 = [v26 dateInterval];
            v28 = [v27 endDate];
            [v28 date];
            v30 = v29 - a3;

            if (v30 < v18)
            {
              v31 = [v20 predictedContext];
              v32 = [v31 dateInterval];
              v33 = [v32 endDate];
              [v33 date];
              v16 = v34;

              v35 = [v20 predictedContext];
              v36 = [v35 dateInterval];
              v37 = [v36 endDate];
              [v37 confidenceInterval];
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

    v48 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [v48 setDate:v11 + v16];

    v49 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [v49 date];
    v51 = v50 + 14400.0;
    v52 = [(PCPPredictedContextDateInterval *)v8 endDate];
    [v52 setDate:v51];

    v53 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [v53 setConfidenceInterval:v17];

    v45 = [(PCPPredictedContextDateInterval *)v8 endDate];
    v46 = v45;
    v47 = v17;
  }

  else
  {
    v39 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [v39 setDate:v11 + a3];

    v40 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [v40 date];
    v42 = v41 + 14400.0;
    v43 = [(PCPPredictedContextDateInterval *)v8 endDate];
    [v43 setDate:v42];

    v44 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [v44 setConfidenceInterval:v11 * 0.5];

    v45 = [(PCPPredictedContextDateInterval *)v8 endDate];
    v46 = v45;
    v47 = 10800.0;
  }

  [v45 setConfidenceInterval:{v47, v56}];

  v54 = *MEMORY[0x1E69E9840];

  return v8;
}

@end