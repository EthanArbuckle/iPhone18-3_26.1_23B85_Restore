@interface PCCalendarVisitPredictor
+ (BOOL)_locationIsValid:(id)a3;
+ (void)_calculateLoiProbabilitiesWithLocation:(double *)a3 forEvent:(id)a4 usingHistory:(id)a5 andCalendar:(id)a6 atTime:(double)a7;
+ (void)_calculateOverlapFraction:(double *)a3 betweenVisit:(id)a4 andCalendar:(id)a5;
+ (void)_findAssociatedVisits:(id *)a3 forCalendarEvent:(id)a4 usingVisitHistory:(id)a5;
+ (void)_formPrediction:(id *)a3 fromLocationCalEvent:(id)a4 probability:(double)a5 currentTime:(double)a6;
+ (void)_formPrediction:(id *)a3 fromNoLocationCalEvent:(id)a4 probableVisit:(id)a5 currentTime:(double)a6;
+ (void)_formPredictionCommon:(id *)a3 begin:(double)a4 end:(double)a5 probability:(double)a6 currentTime:(double)a7;
+ (void)_parseLocationList:(id)a3 intoArray:(id *)a4;
+ (void)predictWithHistory:(id)a3 calendarEvents:(id)a4 atTime:(double)a5 results:(id *)a6;
@end

@implementation PCCalendarVisitPredictor

+ (void)_parseLocationList:(id)a3 intoArray:(id *)a4
{
  v12 = a3;
  v5 = [v12 componentsSeparatedByString:@""];;
  v6 = [v5 mutableCopy];

  if ([v12 length])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:0];
      v10 = [v9 length];

      if (v10)
      {
        ++v8;
      }

      else
      {
        [v6 removeObjectAtIndex:v7];
      }

      v7 = v8;
    }

    while ([v12 length] > v8);
  }

  v11 = v6;
  *a4 = v6;
}

+ (void)_calculateOverlapFraction:(double *)a3 betweenVisit:(id)a4 andCalendar:(id)a5
{
  v25 = a4;
  v7 = a5;
  *a3 = 0.0;
  if ([v7 hasStartTimeCFAbsolute] && objc_msgSend(v7, "hasEndTimeCFAbsolute"))
  {
    [v25 entryTimeCFAbsolute];
    v9 = v8;
    [v7 startTimeCFAbsolute];
    if (v9 < v10)
    {
      [v7 startTimeCFAbsolute];
      v9 = v11;
    }

    [v25 exitTimeCFAbsolute];
    v13 = v12;
    [v7 endTimeCFAbsolute];
    if (v13 > v14)
    {
      [v7 endTimeCFAbsolute];
      v13 = v15;
    }

    if (v13 > v9)
    {
      [v7 endTimeCFAbsolute];
      v17 = v16;
      [v7 startTimeCFAbsolute];
      v19 = v17 - v18;
      v20 = 1.0;
      if (v19 >= 0.1)
      {
        v21 = v13 - v9;
        [v7 endTimeCFAbsolute];
        v23 = v22;
        [v7 startTimeCFAbsolute];
        v20 = v21 / (v23 - v24);
      }

      *a3 = v20;
    }
  }
}

+ (void)_findAssociatedVisits:(id *)a3 forCalendarEvent:(id)a4 usingVisitHistory:(id)a5
{
  v24 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a5;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 loiIdentifier];

        if (v15)
        {
          v25 = 0.0;
          [PCCalendarVisitPredictor _calculateOverlapFraction:&v25 betweenVisit:v14 andCalendar:v6];
          v16 = v25;
          if (v25 > 0.6)
          {
            v17 = [v14 loiIdentifier];
            v18 = [v8 objectForKeyedSubscript:v17];

            if (v18)
            {
              v19 = [v14 loiIdentifier];
              v20 = [v8 objectForKeyedSubscript:v19];
              [v20 fractionOfCalDuration];
              [v20 setFractionOfCalDuration:v21 + v25];
            }

            else
            {
              v22 = [PCCalendarAssociatedVisit alloc];
              v19 = [(PCCalendarAssociatedVisit *)v22 initWithLocation:v14 atFraction:v25];
              v20 = [v14 loiIdentifier];
              [v8 setObject:v19 forKeyedSubscript:v20];
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:{16, v16}];
    }

    while (v11);
  }

  *v24 = [v8 allValues];

  v23 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_locationIsValid:(id)a3
{
  v3 = a3;
  v4 = v3;
  v7 = 0;
  if (v3)
  {
    if ([v3 hasLocationLatitudeDeg])
    {
      if ([v4 hasLocationLongitudeDeg])
      {
        [v4 locationLatitudeDeg];
        if (v5 != 0.0 || ([v4 locationLongitudeDeg], v6 != 0.0))
        {
          v7 = 1;
        }
      }
    }
  }

  return v7;
}

+ (void)_calculateLoiProbabilitiesWithLocation:(double *)a3 forEvent:(id)a4 usingHistory:(id)a5 andCalendar:(id)a6 atTime:(double)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v55 = a5;
  v11 = a6;
  v12 = [PCLatLon alloc];
  v13 = [v10 location];
  [v13 locationLatitudeDeg];
  v15 = v14;
  v54 = v10;
  v16 = [v10 location];
  [v16 locationLongitudeDeg];
  v57 = [(PCLatLon *)v12 initWithLatitude:v15 longitude:v17];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v64;
    v22 = 0.1;
    v23 = 0.2;
    v24 = 0x1E83B7000uLL;
    v52 = *v64;
    v53 = v18;
    while (1)
    {
      v25 = 0;
      v56 = v20;
      do
      {
        if (*v64 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v63 + 1) + 8 * v25);
        if ([v26 hasEndTimeCFAbsolute])
        {
          if ([v26 hasStartTimeCFAbsolute])
          {
            [v26 endTimeCFAbsolute];
            if (v27 <= a7)
            {
              v28 = [v10 calendarId];
              v29 = [v26 calendarId];
              if ([v28 isEqual:v29])
              {
                v30 = *(v24 + 1968);
                v31 = [v26 location];
                LODWORD(v30) = [v30 _locationIsValid:v31];

                if (!v30)
                {
                  v20 = v56;
                  goto LABEL_26;
                }

                v32 = *(v24 + 1968);
                v62 = 0;
                [v32 _findAssociatedVisits:&v62 forCalendarEvent:v26 usingVisitHistory:v55];
                v33 = v62;
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v28 = v33;
                v34 = [v28 countByEnumeratingWithState:&v58 objects:v67 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v59;
                  while (2)
                  {
                    for (i = 0; i != v35; ++i)
                    {
                      if (*v59 != v36)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v38 = *(*(&v58 + 1) + 8 * i);
                      v39 = [PCLatLon alloc];
                      v40 = [v38 visit];
                      v41 = [v40 location];
                      [v41 locationLatitudeDeg];
                      v43 = v42;
                      v44 = [v38 visit];
                      v45 = [v44 location];
                      [v45 locationLongitudeDeg];
                      v47 = [(PCLatLon *)v39 initWithLatitude:v43 longitude:v46];

                      [(PCLatLon *)v47 distanceTo:v57];
                      v49 = v48;

                      if (v49 <= 250.0)
                      {
                        v22 = v22 + 1.0;
                        goto LABEL_23;
                      }
                    }

                    v35 = [v28 countByEnumeratingWithState:&v58 objects:v67 count:16];
                    if (v35)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_23:
                  v18 = v53;
                  v10 = v54;
                  v21 = v52;
                  v24 = 0x1E83B7000;
                }

                v20 = v56;

                v23 = v23 + 1.0;
              }

              else
              {
              }
            }
          }
        }

LABEL_26:
        ++v25;
      }

      while (v25 != v20);
      v20 = [v18 countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  v22 = 0.1;
  v23 = 0.2;
LABEL_30:

  *a3 = v22 / v23;
  v50 = *MEMORY[0x1E69E9840];
}

+ (void)_formPredictionCommon:(id *)a3 begin:(double)a4 end:(double)a5 probability:(double)a6 currentTime:(double)a7
{
  v57 = *MEMORY[0x1E69E9840];
  if (a4 >= a7)
  {
    v12 = a4;
  }

  else
  {
    v12 = a7 + 0.001;
  }

  if (a7 + 86400.0 > a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = a7 + 86400.0;
  }

  v14 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134219008;
    v48 = a4;
    v49 = 2048;
    v50 = a5;
    v51 = 2048;
    v52 = v12;
    v53 = 2048;
    v54 = v13;
    v55 = 2048;
    v56 = a7;
    _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_INFO, "begin, %.5f, end, %.5f, clampedStartTime, %.5f, clampedEndTime, %.5f, currentTime, %.5f", buf, 0x34u);
  }

  if (v13 >= v12)
  {
    *a3 = objc_alloc_init(PCPPredictedContextLocation);
    v16 = objc_alloc_init(PCPLocationOfInterest);
    [*a3 setLocationOfInterest:v16];

    v17 = objc_alloc_init(PCPPredictedContext);
    [*a3 setPredictedContext:v17];

    v18 = [*a3 predictedContext];
    [v18 setProbability:a6];

    v19 = [*a3 predictedContext];
    [v19 setContextType:1];

    v20 = objc_alloc_init(PCPPredictedContextDateInterval);
    v21 = [*a3 predictedContext];
    [v21 setDateInterval:v20];

    v22 = objc_alloc_init(PCPPredictedContextDate);
    v23 = [*a3 predictedContext];
    v24 = [v23 dateInterval];
    [v24 setStartDate:v22];

    v25 = [*a3 predictedContext];
    v26 = [v25 dateInterval];
    v27 = [v26 startDate];
    [v27 setDate:v12];

    v28 = [*a3 predictedContext];
    v29 = [v28 dateInterval];
    v30 = [v29 startDate];
    [v30 setConfidenceInterval:(v13 - v12) * 0.1];

    v31 = objc_alloc_init(PCPPredictedContextDate);
    v32 = [*a3 predictedContext];
    v33 = [v32 dateInterval];
    [v33 setEndDate:v31];

    v34 = [*a3 predictedContext];
    v35 = [v34 dateInterval];
    v36 = [v35 endDate];
    [v36 setDate:v13];

    v37 = [*a3 predictedContext];
    v38 = [v37 dateInterval];
    v39 = [v38 endDate];
    [v39 setConfidenceInterval:(v13 - v12) * 0.1];

    v15 = objc_alloc_init(PCPSource);
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    [(PCPSource *)v15 setIdentifier:v41];

    v46 = v15;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v43 = [v42 mutableCopy];
    v44 = [*a3 predictedContext];
    [v44 setSources:v43];
  }

  else
  {
    v15 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
    if (os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, &v15->super.super, OS_LOG_TYPE_ERROR, "endTime < startTime, returning early", buf, 2u);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

+ (void)_formPrediction:(id *)a3 fromNoLocationCalEvent:(id)a4 probableVisit:(id)a5 currentTime:(double)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  [v10 startTimeCFAbsolute];
  v12 = v11;
  [v10 endTimeCFAbsolute];
  v14 = v13;
  [v9 probability];
  [PCCalendarVisitPredictor _formPredictionCommon:a3 begin:v12 end:v14 probability:v15 currentTime:a6];
  v16 = [v9 visit];
  v17 = [v16 location];
  v18 = [*a3 locationOfInterest];
  [v18 setLocation:v17];

  v19 = [v9 visit];

  v20 = [v19 loiIdentifier];
  v21 = [*a3 locationOfInterest];
  [v21 setLoiIdentifier:v20];

  v22 = objc_alloc_init(PCPSource);
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  [(PCPSource *)v22 setIdentifier:v24];

  v25 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v25 setCalendarEvent:v10];

  [(PCPSource *)v22 setPredictedContextSource:v25];
  v30[0] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v27 = [v26 mutableCopy];
  v28 = [*a3 predictedContext];
  [v28 setSources:v27];

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)_formPrediction:(id *)a3 fromLocationCalEvent:(id)a4 probability:(double)a5 currentTime:(double)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  [v9 startTimeCFAbsolute];
  v11 = v10;
  [v9 endTimeCFAbsolute];
  [PCCalendarVisitPredictor _formPredictionCommon:a3 begin:v11 end:v12 probability:a5 currentTime:a6];
  v13 = [v9 location];
  v14 = [*a3 locationOfInterest];
  [v14 setLocation:v13];

  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [PCAlgorithmsCommonUtils dataFromUUID:v15];
  v17 = [*a3 locationOfInterest];
  [v17 setLoiIdentifier:v16];

  v18 = objc_alloc_init(PCPSource);
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  [(PCPSource *)v18 setIdentifier:v20];

  v21 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v21 setCalendarEvent:v9];

  [(PCPSource *)v18 setPredictedContextSource:v21];
  v26[0] = v18;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v23 = [v22 mutableCopy];
  v24 = [*a3 predictedContext];
  [v24 setSources:v23];

  v25 = *MEMORY[0x1E69E9840];
}

+ (void)predictWithHistory:(id)a3 calendarEvents:(id)a4 atTime:(double)a5 results:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v9 = a4;
  if (a6)
  {
    *a6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = v9;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          if ([v15 hasEndTimeCFAbsolute])
          {
            if ([v15 hasStartTimeCFAbsolute])
            {
              [v15 endTimeCFAbsolute];
              if (v16 > a5)
              {
                v17 = [v15 location];
                v18 = [PCCalendarVisitPredictor _locationIsValid:v17];

                if (v18)
                {
                  *v44 = 0;
                  [PCCalendarVisitPredictor _calculateLoiProbabilitiesWithLocation:v44 forEvent:v15 usingHistory:v32 andCalendar:v10 atTime:a5];
                  v38 = 0;
                  [PCCalendarVisitPredictor _formPrediction:&v38 fromLocationCalEvent:v15 probability:*v44 currentTime:a5];
                  v19 = v38;
                  if (v19)
                  {
                    [*a6 addObject:v19];
                    v20 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_INFO, "predicted 1 future visit via calendar entry with location.  ", buf, 2u);
                    }
                  }
                }

                else
                {
                  v19 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                  {
                    *v44 = 0;
                    _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_INFO, "Calendar entry with no location, skip prediction", v44, 2u);
                  }
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v12);
    }

    if (*a6 && [*a6 count])
    {
      v21 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [*a6 count];
        *v44 = 134217984;
        *&v44[4] = v22;
        _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", v44, 0xCu);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v23 = *a6;
      v24 = [v23 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v34;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v33 + 1) + 8 * j), v31];
            v29 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *v44 = 138739971;
              *&v44[4] = v28;
              _os_log_impl(&dword_1CEE74000, v29, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", v44, 0xCu);
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v25);
      }
    }

    else
    {
      v23 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *v44 = 0;
        _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_INFO, "No Location Predictions to log", v44, 2u);
      }
    }

    v9 = v31;
  }

  else
  {
    v23 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v44 = 0;
      _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_ERROR, "PCCalendarVisitPredictor: Unexpected nil results output param", v44, 2u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

@end