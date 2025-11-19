@interface PCLoggingUtils
+ (id)_extractSourcesLogString:(id)a3;
+ (id)_extractTransportString:(id)a3;
+ (id)formattedStringForLocationPrediction:(id)a3;
+ (id)formattedStringForTransitionPrediction:(id)a3;
+ (id)formattedStringForWorkoutPrediction:(id)a3;
@end

@implementation PCLoggingUtils

+ (id)formattedStringForLocationPrediction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 predictedContext];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 sources];
      v9 = [a1 _extractSourcesLogString:v8];

      [v7 probability];
      v11 = v10;
      v12 = [v5 locationOfInterest];
      v13 = [v12 loiIdentifier];

      if (v13)
      {
        v14 = [v5 locationOfInterest];
        v15 = [v14 loiIdentifier];
        v16 = [PCAlgorithmsCommonUtils uuidStringFromData:v15];

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

      v20 = [v5 locationOfInterest];
      v21 = [v20 location];
      [v21 locationLatitudeDeg];
      v23 = v22;

      v24 = [v5 locationOfInterest];
      v25 = [v24 location];
      [v25 locationLongitudeDeg];
      v27 = v26;

      v28 = [v7 dateInterval];
      v29 = [v28 startDate];
      [v29 date];
      v31 = v30;

      v32 = [v7 dateInterval];
      v33 = [v32 endDate];
      [v33 date];
      v35 = v34;

      v36 = [v7 dateInterval];
      v37 = [v36 startDate];
      [v37 confidenceInterval];
      v39 = v38;

      v40 = [v7 dateInterval];
      v41 = [v40 endDate];
      [v41 confidenceInterval];
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

+ (id)formattedStringForTransitionPrediction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 predictedContext];
    if (v6)
    {
      v7 = v6;
      [v6 probability];
      v9 = v8;
      v10 = [v7 dateInterval];
      v11 = [v10 startDate];
      [v11 date];
      v13 = v12;

      v14 = [v7 dateInterval];
      v15 = [v14 endDate];
      [v15 date];
      v17 = v16;

      v18 = [v7 dateInterval];
      v19 = [v18 startDate];
      [v19 confidenceInterval];
      v21 = v20;

      v22 = [v7 dateInterval];
      v23 = [v22 endDate];
      [v23 confidenceInterval];
      v25 = v24;

      v26 = [v7 sources];
      v27 = [a1 _extractSourcesLogString:v26];

      v28 = [v5 predictedContextTransports];
      v29 = [a1 _extractTransportString:v28];

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

+ (id)formattedStringForWorkoutPrediction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 predictedContext];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 sources];
      v9 = [a1 _extractSourcesLogString:v8];

      [v7 probability];
      v11 = v10;
      v12 = [v7 dateInterval];
      v13 = [v12 startDate];
      [v13 date];
      v15 = v14;

      v16 = [v7 dateInterval];
      v17 = [v16 endDate];
      [v17 date];
      v19 = v18;

      v20 = MEMORY[0x1E696AEC0];
      v21 = [v5 workoutActivityType];
      v22 = [v5 workoutLocationType];
      v23 = [v5 sourceBundleIdentifier];
      v24 = [v20 stringWithFormat:@"workoutActivityType: %llu, workoutLocationType: %d, probability: %.2f, sourceBundleIdentifier: %@, entry time: %.2f, exit time: %.2f, sources: %@", v21, v22, v11, v23, v15, v19, v9];
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

+ (id)_extractSourcesLogString:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
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
          v11 = [v10 identifier];

          if (v11)
          {
            v12 = [v10 identifier];
            [v4 addObject:v12];
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

+ (id)_extractTransportString:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v3;
    v5 = v3;
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
          v11 = [v10 transportMode];
          if (v11 >= 4)
          {
            v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
          }

          else
          {
            v12 = off_1E83B85C8[v11];
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

    v3 = v19;
  }

  else
  {
    v16 = @"N/A";
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end