@interface PCLoggingUtils
+ (id)_extractSourcesLogString:(id)string;
+ (id)_extractTransportString:(id)string;
+ (id)formattedStringForLocationPrediction:(id)prediction;
+ (id)formattedStringForTransitionPrediction:(id)prediction;
+ (id)formattedStringForWorkoutPrediction:(id)prediction;
@end

@implementation PCLoggingUtils

+ (id)formattedStringForLocationPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = predictionCopy;
  if (predictionCopy)
  {
    predictedContext = [predictionCopy predictedContext];
    if (predictedContext)
    {
      v7 = predictedContext;
      sources = [predictedContext sources];
      v9 = [self _extractSourcesLogString:sources];

      [v7 probability];
      v11 = v10;
      locationOfInterest = [v5 locationOfInterest];
      loiIdentifier = [locationOfInterest loiIdentifier];

      if (loiIdentifier)
      {
        locationOfInterest2 = [v5 locationOfInterest];
        loiIdentifier2 = [locationOfInterest2 loiIdentifier];
        v16 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier2];

        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = @"N/A";
        }
      }

      else
      {
        v17 = @"N/A";
      }

      locationOfInterest3 = [v5 locationOfInterest];
      location = [locationOfInterest3 location];
      [location locationLatitudeDeg];
      v23 = v22;

      locationOfInterest4 = [v5 locationOfInterest];
      location2 = [locationOfInterest4 location];
      [location2 locationLongitudeDeg];
      v27 = v26;

      dateInterval = [v7 dateInterval];
      startDate = [dateInterval startDate];
      [startDate date];
      v31 = v30;

      dateInterval2 = [v7 dateInterval];
      endDate = [dateInterval2 endDate];
      [endDate date];
      v35 = v34;

      dateInterval3 = [v7 dateInterval];
      startDate2 = [dateInterval3 startDate];
      [startDate2 confidenceInterval];
      v39 = v38;

      dateInterval4 = [v7 dateInterval];
      endDate2 = [dateInterval4 endDate];
      [endDate2 confidenceInterval];
      v43 = v42;

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sources: %@, LocationOfInterest ID: %@, probability: %.2f, latitude: %.5f, longitude: %.5f, entry time: %.2f, exit time: %.2f, entry unc: %.2f, exit unc: %.2f", v9, v17, v11, v23, v27, v31, v35, v39, v43];
    }

    else
    {
      v19 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v45 = 0;
        _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_ERROR, "format location prediction, input error", v45, 2u);
      }

      v7 = 0;
      v18 = @"no context data available";
    }
  }

  else
  {
    v7 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_ERROR, "format location prediction, input error", buf, 2u);
    }

    v18 = @"no location prediction data available";
  }

  return v18;
}

+ (id)formattedStringForTransitionPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = predictionCopy;
  if (predictionCopy)
  {
    predictedContext = [predictionCopy predictedContext];
    if (predictedContext)
    {
      v7 = predictedContext;
      [predictedContext probability];
      v9 = v8;
      dateInterval = [v7 dateInterval];
      startDate = [dateInterval startDate];
      [startDate date];
      v13 = v12;

      dateInterval2 = [v7 dateInterval];
      endDate = [dateInterval2 endDate];
      [endDate date];
      v17 = v16;

      dateInterval3 = [v7 dateInterval];
      startDate2 = [dateInterval3 startDate];
      [startDate2 confidenceInterval];
      v21 = v20;

      dateInterval4 = [v7 dateInterval];
      endDate2 = [dateInterval4 endDate];
      [endDate2 confidenceInterval];
      v25 = v24;

      sources = [v7 sources];
      v27 = [self _extractSourcesLogString:sources];

      predictedContextTransports = [v5 predictedContextTransports];
      v29 = [self _extractTransportString:predictedContextTransports];

      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sources: %@, probability: %.2f, entry time: %.2f, exit time: %.2f, entry unc: %.2f, exit unc: %.2f, transport: [%@]", v27, v9, v13, v17, v21, v25, v29];
    }

    else
    {
      v31 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_ERROR, "format transition prediction, input error", v33, 2u);
      }

      v7 = 0;
      v30 = @"no context data available";
    }
  }

  else
  {
    v7 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_ERROR, "format transition prediction, input error", buf, 2u);
    }

    v30 = @"no transition data available";
  }

  return v30;
}

+ (id)formattedStringForWorkoutPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = predictionCopy;
  if (predictionCopy)
  {
    predictedContext = [predictionCopy predictedContext];
    if (predictedContext)
    {
      v7 = predictedContext;
      sources = [predictedContext sources];
      v9 = [self _extractSourcesLogString:sources];

      [v7 probability];
      v11 = v10;
      dateInterval = [v7 dateInterval];
      startDate = [dateInterval startDate];
      [startDate date];
      v15 = v14;

      dateInterval2 = [v7 dateInterval];
      endDate = [dateInterval2 endDate];
      [endDate date];
      v19 = v18;

      v20 = MEMORY[0x1E696AEC0];
      workoutActivityType = [v5 workoutActivityType];
      workoutLocationType = [v5 workoutLocationType];
      sourceBundleIdentifier = [v5 sourceBundleIdentifier];
      v24 = [v20 stringWithFormat:@"workoutActivityType: %llu, workoutLocationType: %d, probability: %.2f, sourceBundleIdentifier: %@, entry time: %.2f, exit time: %.2f, sources: %@", workoutActivityType, workoutLocationType, v11, sourceBundleIdentifier, v15, v19, v9];
    }

    else
    {
      v25 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_ERROR, "format workout prediction, input error", v27, 2u);
      }

      v7 = 0;
      v24 = @"no context data available";
    }
  }

  else
  {
    v7 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_ERROR, "format workout prediction, input error", buf, 2u);
    }

    v24 = @"no workout prediction data available";
  }

  return v24;
}

+ (id)_extractSourcesLogString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(stringCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = stringCopy;
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
          identifier = [v10 identifier];

          if (identifier)
          {
            identifier2 = [v10 identifier];
            [v4 addObject:identifier2];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v13 = [v4 componentsJoinedByString:@" "];
    }

    else
    {
      v13 = @"N/A";
    }
  }

  else
  {
    v13 = @"N/A";
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)_extractTransportString:(id)string
{
  v25 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(stringCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = stringCopy;
    v5 = stringCopy;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          transportMode = [v10 transportMode];
          if (transportMode >= 4)
          {
            v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportMode];
          }

          else
          {
            v12 = off_1E83B85C8[transportMode];
          }

          v13 = MEMORY[0x1E696AEC0];
          [v10 probability];
          v15 = [v13 stringWithFormat:@"mode: %@ probability: %.2f", v12, v14];
          [v4 addObject:v15];
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v16 = [v4 componentsJoinedByString:@" "];
    }

    else
    {
      v16 = @"N/A";
    }

    stringCopy = v19;
  }

  else
  {
    v16 = @"N/A";
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end