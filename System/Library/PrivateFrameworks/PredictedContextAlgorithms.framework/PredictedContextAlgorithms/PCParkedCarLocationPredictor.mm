@interface PCParkedCarLocationPredictor
+ (BOOL)isCarLocation:(id)a3 awayFromHomeLocations:(id)a4;
+ (BOOL)isUserCloseToCarWithDistance:(double)a3;
+ (id)createParkedCarLocationPredictionWithCar:(id)a3 probability:(double)a4 distanceFromUser:(double)a5 candidateVisits:(id)a6 currentTime:(double)a7;
+ (id)createPredictedContextDateIntervalAtTime:(double)a3 fromCandidateVisits:(id)a4 distanceFromUser:(double)a5;
+ (void)predictParkedCarLocation:(id)a3 locationHistory:(id)a4 locationsOfInterest:(id)a5 candidateVisits:(id)a6 atTime:(double)a7 locations:(id *)a8;
@end

@implementation PCParkedCarLocationPredictor

+ (void)predictParkedCarLocation:(id)a3 locationHistory:(id)a4 locationsOfInterest:(id)a5 candidateVisits:(id)a6 atTime:(double)a7 locations:(id *)a8
{
  v156 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  *a8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v14 && ([v14 hasLocation] & 1) != 0)
  {
    v106 = a1;
    v18 = [PCLocationUtils currentLocationWithLocationHistory:v15 currentTime:a7];
    if (v18)
    {
      v107 = a8;
      v19 = [PCLatLon alloc];
      v20 = [v14 location];
      [v20 locationLatitudeDeg];
      v22 = v21;
      v23 = [v14 location];
      [v23 locationLongitudeDeg];
      v25 = [(PCLatLon *)v19 initWithLatitude:v22 longitude:v24];

      [v18 distanceTo:v25];
      v27 = v26;
      v28 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v27 <= 500000.0)
      {
        if (v29)
        {
          [v18 latitudeDeg];
          v58 = v57;
          [v18 longitudeDeg];
          *buf = 134545921;
          v147 = v58;
          v148 = 2053;
          v149 = v59;
          _os_log_impl(&dword_1CEE74000, v28, OS_LOG_TYPE_DEFAULT, "current location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
        }

        v104 = v25;
        v105 = v18;
        v115 = v17;
        v123 = v15;

        v60 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [v14 location];
          [v61 locationLatitudeDeg];
          v63 = v62;
          v64 = [v14 location];
          [v64 locationLongitudeDeg];
          *buf = 134545921;
          v147 = v63;
          v148 = 2053;
          v149 = v65;
          _os_log_impl(&dword_1CEE74000, v60, OS_LOG_TYPE_DEFAULT, "parked car location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
        }

        v111 = v14;

        v66 = [MEMORY[0x1E695DF70] array];
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v119 = v16;
        v67 = v16;
        v68 = [v67 countByEnumeratingWithState:&v129 objects:v152 count:16];
        obj = v66;
        if (v68)
        {
          v69 = v68;
          v70 = *v130;
          do
          {
            for (i = 0; i != v69; ++i)
            {
              if (*v130 != v70)
              {
                objc_enumerationMutation(v67);
              }

              v72 = *(*(&v129 + 1) + 8 * i);
              if ([v72 placeType] == 1)
              {
                v73 = [PCLatLon alloc];
                v74 = [v72 location];
                [v74 locationLatitudeDeg];
                v76 = v75;
                v77 = [v72 location];
                [v77 locationLongitudeDeg];
                v79 = [(PCLatLon *)v73 initWithLatitude:v76 longitude:v78];
                [v66 addObject:v79];

                v80 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  v81 = [v72 location];
                  [v81 locationLatitudeDeg];
                  v83 = v82;
                  v84 = [v72 location];
                  [v84 locationLongitudeDeg];
                  v86 = v85;
                  v87 = [v72 loiIdentifier];
                  v88 = [PCAlgorithmsCommonUtils uuidStringFromData:v87];
                  *buf = 134546179;
                  v147 = v83;
                  v148 = 2053;
                  v149 = v86;
                  v150 = 2117;
                  v151 = v88;
                  _os_log_impl(&dword_1CEE74000, v80, OS_LOG_TYPE_DEFAULT, "home location added, lat, %{sensitive}.2f, lon, %{sensitive}.2f, ID, %{sensitive}@", buf, 0x20u);

                  v66 = obj;
                }
              }
            }

            v69 = [v67 countByEnumeratingWithState:&v129 objects:v152 count:16];
          }

          while (v69);
        }

        if ([v106 isUserCloseToCarWithDistance:v27])
        {
          v25 = v104;
          if ([v106 isCarLocation:v104 awayFromHomeLocations:v66])
          {
            v89 = 0.8;
          }

          else
          {
            v89 = 0.1;
          }

          v14 = v111;
          v17 = v115;
        }

        else
        {
          v89 = 0.01;
          v14 = v111;
          v17 = v115;
          v25 = v104;
        }

        v91 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v147 = *&v89;
          _os_log_impl(&dword_1CEE74000, v91, OS_LOG_TYPE_DEFAULT, "probability will be, %f", buf, 0xCu);
        }

        v92 = [PCParkedCarLocationPredictor createParkedCarLocationPredictionWithCar:v14 probability:v17 distanceFromUser:v89 candidateVisits:v27 currentTime:a7];
        [*v107 addObject:v92];
        v93 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        v16 = v119;
        v15 = v123;
        v18 = v105;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v93, OS_LOG_TYPE_DEFAULT, "Predicting parked car location..", buf, 2u);
        }

        if (*v107 && [*v107 count])
        {
          v94 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            v95 = [*v107 count];
            *buf = 134217984;
            v147 = v95;
            _os_log_impl(&dword_1CEE74000, v94, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
          }

          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v96 = *v107;
          v97 = [v96 countByEnumeratingWithState:&v125 objects:v145 count:16];
          if (v97)
          {
            v98 = v97;
            v99 = *v126;
            do
            {
              for (j = 0; j != v98; ++j)
              {
                if (*v126 != v99)
                {
                  objc_enumerationMutation(v96);
                }

                v101 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v125 + 1) + 8 * j), v104];
                v102 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v147 = v101;
                  _os_log_impl(&dword_1CEE74000, v102, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
                }
              }

              v98 = [v96 countByEnumeratingWithState:&v125 objects:v145 count:16];
            }

            while (v98);
            v14 = v111;
            v17 = v115;
            v16 = v119;
            v15 = v123;
            v25 = v104;
            v18 = v105;
          }
        }

        else
        {
          v96 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v96, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
          }
        }
      }

      else
      {
        if (v29)
        {
          *buf = 136315138;
          v147 = "+[PCParkedCarLocationPredictor predictParkedCarLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
          _os_log_impl(&dword_1CEE74000, v28, OS_LOG_TYPE_DEFAULT, "%s, car very far, no prediction", buf, 0xCu);
        }

        if (*v107 && [*v107 count])
        {
          v108 = v14;
          v112 = v17;
          v116 = v16;
          v120 = v15;
          v30 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [*v107 count];
            *buf = 134217984;
            v147 = v31;
            _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
          }

          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          v32 = *v107;
          v33 = [v32 countByEnumeratingWithState:&v133 objects:v153 count:16];
          obj = v32;
          if (v33)
          {
            v34 = v33;
            v35 = *v134;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v134 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v133 + 1) + 8 * k)];
                v38 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v147 = v37;
                  _os_log_impl(&dword_1CEE74000, v38, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v133 objects:v153 count:16];
            }

            while (v34);
            v16 = v116;
            v15 = v120;
            v14 = v108;
            v17 = v112;
          }
        }

        else
        {
          v90 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          obj = v90;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v90, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
          }
        }
      }
    }

    else
    {
      v48 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v147 = "+[PCParkedCarLocationPredictor predictParkedCarLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
        _os_log_impl(&dword_1CEE74000, v48, OS_LOG_TYPE_DEFAULT, "%s, user location not available, no prediction", buf, 0xCu);
      }

      if (*a8 && [*a8 count])
      {
        v114 = v17;
        v118 = v16;
        v122 = v15;
        v49 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [*a8 count];
          *buf = 134217984;
          v147 = v50;
          _os_log_impl(&dword_1CEE74000, v49, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v25 = *a8;
        v51 = [v25 countByEnumeratingWithState:&v137 objects:v154 count:16];
        if (v51)
        {
          v52 = v51;
          v110 = v14;
          v53 = *v138;
          do
          {
            for (m = 0; m != v52; ++m)
            {
              if (*v138 != v53)
              {
                objc_enumerationMutation(v25);
              }

              v55 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v137 + 1) + 8 * m)];
              v56 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v147 = v55;
                _os_log_impl(&dword_1CEE74000, v56, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v52 = [v25 countByEnumeratingWithState:&v137 objects:v154 count:16];
          }

          while (v52);
          v16 = v118;
          v15 = v122;
          v14 = v110;
          v17 = v114;
        }
      }

      else
      {
        v25 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }
    }
  }

  else
  {
    v39 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v147 = "+[PCParkedCarLocationPredictor predictParkedCarLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
      _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_DEFAULT, "%s, parked car not found, no prediction", buf, 0xCu);
    }

    if (*a8 && [*a8 count])
    {
      v113 = v17;
      v117 = v16;
      v121 = v15;
      v40 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [*a8 count];
        *buf = 134217984;
        v147 = v41;
        _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v18 = *a8;
      v42 = [v18 countByEnumeratingWithState:&v141 objects:v155 count:16];
      if (v42)
      {
        v43 = v42;
        v109 = v14;
        v44 = *v142;
        do
        {
          for (n = 0; n != v43; ++n)
          {
            if (*v142 != v44)
            {
              objc_enumerationMutation(v18);
            }

            v46 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v141 + 1) + 8 * n)];
            v47 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v147 = v46;
              _os_log_impl(&dword_1CEE74000, v47, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v43 = [v18 countByEnumeratingWithState:&v141 objects:v155 count:16];
        }

        while (v43);
        v16 = v117;
        v15 = v121;
        v14 = v109;
        v17 = v113;
      }
    }

    else
    {
      v18 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
      }
    }
  }

  v103 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isCarLocation:(id)a3 awayFromHomeLocations:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v5 distanceTo:*(*(&v19 + 1) + 8 * i)];
          v14 = v13;
          v15 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v24 = v14;
            _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "car distance from home, %f", buf, 0xCu);
          }

          v11 &= v14 >= 3220.0;
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1;
    }

    v6 = v18;
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)isUserCloseToCarWithDistance:(double)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_DEFAULT, "user distance from car, %f", &v7, 0xCu);
  }

  result = a3 < 800.0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)createParkedCarLocationPredictionWithCar:(id)a3 probability:(double)a4 distanceFromUser:(double)a5 candidateVisits:(id)a6 currentTime:(double)a7
{
  v34[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a3;
  v13 = objc_alloc_init(PCPPredictedContextLocation);
  v14 = objc_alloc_init(PCPLocationOfInterest);
  [(PCPPredictedContextLocation *)v13 setLocationOfInterest:v14];

  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [PCAlgorithmsCommonUtils dataFromUUID:v15];
  v17 = [(PCPPredictedContextLocation *)v13 locationOfInterest];
  [v17 setLoiIdentifier:v16];

  v18 = [v12 location];
  v19 = [(PCPPredictedContextLocation *)v13 locationOfInterest];
  [v19 setLocation:v18];

  v20 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextLocation *)v13 setPredictedContext:v20];

  v21 = [(PCPPredictedContextLocation *)v13 predictedContext];
  [v21 setProbability:a4];

  v22 = [(PCPPredictedContextLocation *)v13 predictedContext];
  [v22 setContextType:1];

  v23 = objc_alloc_init(PCPSource);
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [(PCPSource *)v23 setIdentifier:v25];

  v26 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v26 setParkedCar:v12];

  [(PCPSource *)v23 setPredictedContextSource:v26];
  v34[0] = v23;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v28 = [v27 mutableCopy];
  v29 = [(PCPPredictedContextLocation *)v13 predictedContext];
  [v29 setSources:v28];

  v30 = [PCParkedCarLocationPredictor createPredictedContextDateIntervalAtTime:v11 fromCandidateVisits:a7 distanceFromUser:a5];

  v31 = [(PCPPredictedContextLocation *)v13 predictedContext];
  [v31 setDateInterval:v30];

  v32 = *MEMORY[0x1E69E9840];

  return v13;
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

  v11 = a5 / 1.56;
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
    v51 = v50 + 300.0;
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
    v42 = v41 + 300.0;
    v43 = [(PCPPredictedContextDateInterval *)v8 endDate];
    [v43 setDate:v42];

    v44 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [v44 setConfidenceInterval:3600.0];

    v45 = [(PCPPredictedContextDateInterval *)v8 endDate];
    v46 = v45;
    v47 = 3600.0;
  }

  [v45 setConfidenceInterval:{v47, v56}];

  v54 = *MEMORY[0x1E69E9840];

  return v8;
}

@end