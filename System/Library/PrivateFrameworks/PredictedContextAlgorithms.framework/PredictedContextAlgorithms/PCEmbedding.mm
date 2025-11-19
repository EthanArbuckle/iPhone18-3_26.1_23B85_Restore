@interface PCEmbedding
+ (double)secondsFromTimeOfDay:(id)a3 toTimeOfDay:(id)a4;
+ (id)embeddingObjectsFromProtobuf:(id)a3;
+ (id)indoorOutdoorCategoryActivityTypes;
- (PCEmbedding)initWithEventBundle:(id)a3 forEmbeddingType:(unint64_t)a4;
- (PCEmbedding)initWithProtobufEquivalent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dayOfWeekString:(unint64_t)a3;
- (id)description;
- (id)extractActivityContextEmbedding:(id)a3;
- (id)extractActivityContextEmbeddingFromProtobufEquivalent:(id)a3;
- (id)extractLocationContextEmbedding:(id)a3;
- (id)extractLocationContextEmbeddingFromProtobufEquivalent:(id)a3;
- (id)extractTimeContextEmbedding:(id)a3;
- (id)extractTimeContextEmbeddingFromProtobufEquivalent:(id)a3;
- (id)sensitiveDescription;
- (id)summaryDictionary;
- (id)timeOfDay;
@end

@implementation PCEmbedding

+ (id)indoorOutdoorCategoryActivityTypes
{
  if (qword_1EE04AEE8 != -1)
  {
    dispatch_once(&qword_1EE04AEE8, &__block_literal_global_5);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

uint64_t __49__PCEmbedding_indoorOutdoorCategoryActivityTypes__block_invoke()
{
  _MergedGlobals_1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Soccer", @"Walking", @"Running", @"Cycling", @"Hockey", @"Rowing", @"SkatingSports", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (PCEmbedding)initWithEventBundle:(id)a3 forEmbeddingType:(unint64_t)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PCEmbedding;
  v7 = [(PCEmbedding *)&v19 init];
  if (v7)
  {
    v8 = [v6 bundleIdentifier];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v10 = [v6 suggestionID];
    suggestionID = v7->_suggestionID;
    v7->_suggestionID = v10;

    v7->_embeddingType = a4;
    v12 = [(PCEmbedding *)v7 extractActivityContextEmbedding:v6];
    activityContextEmbedding = v7->_activityContextEmbedding;
    v7->_activityContextEmbedding = v12;

    v14 = [(PCEmbedding *)v7 extractTimeContextEmbedding:v6];
    timeContextEmbedding = v7->_timeContextEmbedding;
    v7->_timeContextEmbedding = v14;

    v16 = [(PCEmbedding *)v7 extractLocationContextEmbedding:v6];
    locationContextEmbedding = v7->_locationContextEmbedding;
    v7->_locationContextEmbedding = v16;
  }

  return v7;
}

- (PCEmbedding)initWithProtobufEquivalent:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PCEmbedding;
  v5 = [(PCEmbedding *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v4 identifier];
    v8 = [v6 initWithUUIDString:v7];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    v11 = [v4 identifier];
    v12 = [v10 initWithUUIDString:v11];
    suggestionID = v5->_suggestionID;
    v5->_suggestionID = v12;

    v5->_embeddingType = 2;
    v14 = [(PCEmbedding *)v5 extractActivityContextEmbeddingFromProtobufEquivalent:v4];
    activityContextEmbedding = v5->_activityContextEmbedding;
    v5->_activityContextEmbedding = v14;

    v16 = [(PCEmbedding *)v5 extractTimeContextEmbeddingFromProtobufEquivalent:v4];
    timeContextEmbedding = v5->_timeContextEmbedding;
    v5->_timeContextEmbedding = v16;

    v18 = [(PCEmbedding *)v5 extractLocationContextEmbeddingFromProtobufEquivalent:v4];
    locationContextEmbedding = v5->_locationContextEmbedding;
    v5->_locationContextEmbedding = v18;
  }

  return v5;
}

- (id)extractActivityContextEmbedding:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 activityType];
  v6 = +[PCEmbedding indoorOutdoorCategoryActivityTypes];
  v7 = [v3 activityType];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [v3 workoutSessionLocationType];
    if (v9 == 2)
    {
      v10 = @"Indoor %@";
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_7;
      }

      v10 = @"Outdoor %@";
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = [v3 activityType];
    v13 = [v11 stringWithFormat:v10, v12];

    v5 = v13;
  }

LABEL_7:
  v14 = [v3 activityType];
  v15 = [v14 isEqualToString:@"Swimming"];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [v3 workoutSwimmingLocationType];
  if (v16 == 1)
  {
    v17 = @"Pool %@";
  }

  else
  {
    if (v16 != 2)
    {
      goto LABEL_13;
    }

    v17 = @"Open Water %@";
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = [v3 activityType];
  v20 = [v18 stringWithFormat:v17, v19];

  v5 = v20;
LABEL_13:
  [v4 setObject:v5 forKeyedSubscript:@"activityType"];
  v21 = [v3 sourceBundleIdentifier];
  [v4 setObject:v21 forKeyedSubscript:@"sourceBundleIdentifier"];

  v22 = [v3 hkObjectIdentifier];
  v23 = [v22 UUIDString];
  [v4 setObject:v23 forKeyedSubscript:@"hkObjectUUID"];

  v24 = MEMORY[0x1E696AD98];
  v25 = [v3 startDate];
  [v25 timeIntervalSinceReferenceDate];
  v26 = [v24 numberWithDouble:?];
  [v4 setObject:v26 forKeyedSubscript:@"startTimeCFAbsolute"];

  return v4;
}

- (id)extractTimeContextEmbedding:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 localStartDate];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v7 setTimeZone:v8];

  embeddingType = self->_embeddingType;
  if (embeddingType == 3)
  {
    v33 = __sincos_stret([v7 component:4096 fromDate:v6] * 6.28318531 / 5.0);
    v34 = __sincos_stret([v7 component:8 fromDate:v6] * 6.28318531 / 12.0);
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v33.__cosval];
    [v5 setObject:v35 forKeyedSubscript:@"weekOfMonthCos"];

    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v33.__sinval];
    [v5 setObject:v36 forKeyedSubscript:@"weekOfMonthSin"];

    v37 = [MEMORY[0x1E696AD98] numberWithDouble:v34.__cosval];
    [v5 setObject:v37 forKeyedSubscript:@"monthCos"];

    v38 = [MEMORY[0x1E696AD98] numberWithDouble:v34.__sinval];
    [v5 setObject:v38 forKeyedSubscript:@"monthSin"];

    v32 = v5;
  }

  else if (embeddingType == 2)
  {
    [v4 duration];
    v11 = v10 / 86400.0;
    v12 = [v7 components:96 fromDate:v6];
    v13 = __sincos_stret(([v12 minute] / 60.0 + objc_msgSend(v12, "hour")) * 6.28318531 / 24.0);
    v14 = [v7 component:512 fromDate:v6];
    v15 = v14;
    v16 = __sincos_stret(v14 * 6.28318531 / 7.0);
    v18 = v14 == 1 || v14 == 7;
    v19 = [v7 component:0x2000 fromDate:v6];
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    [v5 setObject:v20 forKeyedSubscript:@"normalizedDuration"];

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v13.__cosval];
    [v5 setObject:v21 forKeyedSubscript:@"timeOfDayCos"];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v13.__sinval];
    [v5 setObject:v22 forKeyedSubscript:@"timeOfDaySin"];

    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v16.__cosval];
    [v5 setObject:v23 forKeyedSubscript:@"dayOfWeekCos"];

    v24 = [MEMORY[0x1E696AD98] numberWithDouble:v16.__sinval];
    [v5 setObject:v24 forKeyedSubscript:@"dayOfWeekSin"];

    v25 = [MEMORY[0x1E696AD98] numberWithBool:v18];
    [v5 setObject:v25 forKeyedSubscript:@"isWeekend"];

    v26 = MEMORY[0x1E696AD98];
    v27 = [v4 localStartDate];
    v28 = [v4 localEndDate];
    v29 = [v26 numberWithUnsignedInteger:{+[PCTime simpleTimetagFromStartDate:endDate:](PCTime, "simpleTimetagFromStartDate:endDate:", v27, v28)}];
    [v5 setObject:v29 forKeyedSubscript:@"timeTag"];

    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    [v5 setObject:v30 forKeyedSubscript:@"dayOfWeek"];

    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    [v5 setObject:v31 forKeyedSubscript:@"weekOfYear"];

    v32 = v5;
  }

  else
  {
    v39 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *v41 = 0;
      _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, Unable to create time context embedding since embeddingType is unknown or unassigned", v41, 2u);
    }

    v32 = 0;
  }

  return v32;
}

- (id)extractLocationContextEmbedding:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 placeName];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v3 placeName];
    [v4 setObject:v7 forKeyedSubscript:@"placeName"];
  }

  v8 = [v3 enclosingArea];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v3 enclosingArea];
    [v4 setObject:v10 forKeyedSubscript:@"enclosingAreaName"];
  }

  if ([v3 placeType] == 1 || objc_msgSend(v3, "placeType") == 2)
  {
    v11 = [v3 poiCategory];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v3 poiCategory];
      [v4 setObject:v13 forKeyedSubscript:@"combinedPlaceType"];
    }
  }

  if ([v3 placeUserType])
  {
    v14 = [v3 placeUserType];
    if (v14 >= 5)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E83B8320[v14];
    }

    [v4 setObject:v15 forKeyedSubscript:@"combinedPlaceType"];
  }

  v16 = [v3 location];

  if (v16)
  {
    v17 = [v3 location];
    v18 = MEMORY[0x1E696AD98];
    [v17 locationLatitudeDeg];
    v19 = [v18 numberWithDouble:?];
    [v4 setObject:v19 forKeyedSubscript:@"placeLatitude"];

    v20 = MEMORY[0x1E696AD98];
    [v17 locationLongitudeDeg];
    v21 = [v20 numberWithDouble:?];
    [v4 setObject:v21 forKeyedSubscript:@"placeLongitude"];
  }

  return v4;
}

- (id)extractActivityContextEmbeddingFromProtobufEquivalent:(id)a3
{
  v3 = [a3 activityContext];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    if ([v3 hasActivityType])
    {
      v5 = [v3 activityType];
      [v4 setObject:v5 forKeyedSubscript:@"activityType"];
    }

    if ([v3 hasHkObjectUUID])
    {
      v6 = [v3 hkObjectUUID];
      [v4 setObject:v6 forKeyedSubscript:@"hkObjectUUID"];
    }

    if ([v3 hasStartTimeCFAbsolute])
    {
      v7 = MEMORY[0x1E696AD98];
      [v3 startTimeCFAbsolute];
      v8 = [v7 numberWithDouble:?];
      [v4 setObject:v8 forKeyedSubscript:@"startTimeCFAbsolute"];
    }

    if ([v3 hasSourceBundleIdentifier])
    {
      v9 = [v3 sourceBundleIdentifier];
      [v4 setObject:v9 forKeyedSubscript:@"sourceBundleIdentifier"];
    }

    if ([v4 count])
    {
      v10 = [v4 copy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)extractLocationContextEmbeddingFromProtobufEquivalent:(id)a3
{
  v3 = [a3 locationContext];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    if ([v3 hasPlaceName])
    {
      v5 = [v3 placeName];
      [v4 setObject:v5 forKeyedSubscript:@"placeName"];
    }

    if ([v3 hasPlaceType])
    {
      v6 = [v3 placeType];
      [v4 setObject:v6 forKeyedSubscript:@"combinedPlaceType"];
    }

    if ([v3 hasPlaceLocation])
    {
      v7 = [v3 placeLocation];
      v8 = MEMORY[0x1E696AD98];
      [v7 locationLatitudeDeg];
      v9 = [v8 numberWithDouble:?];
      v10 = MEMORY[0x1E696AD98];
      [v7 locationLatitudeDeg];
      v11 = [v10 numberWithDouble:?];
      [v4 setObject:v11 forKeyedSubscript:@"placeLatitude"];

      v12 = MEMORY[0x1E696AD98];
      [v7 locationLongitudeDeg];
      v13 = [v12 numberWithDouble:?];
      [v4 setObject:v13 forKeyedSubscript:@"placeLongitude"];
    }

    if ([v4 count])
    {
      v14 = [v4 copy];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)extractTimeContextEmbeddingFromProtobufEquivalent:(id)a3
{
  v3 = [a3 timeContext];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    if ([v3 hasNormalizedDuration])
    {
      v5 = MEMORY[0x1E696AD98];
      [v3 normalizedDuration];
      v6 = [v5 numberWithDouble:?];
      [v4 setObject:v6 forKeyedSubscript:@"normalizedDuration"];
    }

    if ([v3 hasTimeOfDayCos])
    {
      v7 = MEMORY[0x1E696AD98];
      [v3 timeOfDayCos];
      v8 = [v7 numberWithDouble:?];
      [v4 setObject:v8 forKeyedSubscript:@"timeOfDayCos"];
    }

    if ([v3 hasTimeOfDaySin])
    {
      v9 = MEMORY[0x1E696AD98];
      [v3 timeOfDaySin];
      v10 = [v9 numberWithDouble:?];
      [v4 setObject:v10 forKeyedSubscript:@"timeOfDaySin"];
    }

    if ([v3 hasTimeOfDayCos] && objc_msgSend(v3, "hasTimeOfDaySin"))
    {
      v11 = MEMORY[0x1E696AD98];
      [v3 timeOfDayCos];
      v13 = v12;
      [v3 timeOfDaySin];
      v15 = [v11 numberWithUnsignedInteger:{+[PCTime timeTagFromTimeOfDayCos:timeOfDaySin:](PCTime, "timeTagFromTimeOfDayCos:timeOfDaySin:", v13, v14)}];
      [v4 setObject:v15 forKeyedSubscript:@"timeTag"];
    }

    if ([v3 hasDayOfWeekCos])
    {
      v16 = MEMORY[0x1E696AD98];
      [v3 dayOfWeekCos];
      v17 = [v16 numberWithDouble:?];
      [v4 setObject:v17 forKeyedSubscript:@"dayOfWeekCos"];
    }

    if ([v3 hasDayOfWeekSin])
    {
      v18 = MEMORY[0x1E696AD98];
      [v3 dayOfWeekSin];
      v19 = [v18 numberWithDouble:?];
      [v4 setObject:v19 forKeyedSubscript:@"dayOfWeekSin"];
    }

    if ([v3 hasIsWeekend])
    {
      v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isWeekend")}];
      [v4 setObject:v20 forKeyedSubscript:@"isWeekend"];
    }

    if ([v3 hasWeekOfYear])
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "weekOfYear")}];
      [v4 setObject:v21 forKeyedSubscript:@"weekOfYear"];
    }

    if ([v4 count])
    {
      v22 = [v4 copy];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)summaryDictionary
{
  v3 = objc_opt_new();
  v4 = [(PCEmbedding *)self bundleIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"bundleID"];

  v5 = [(PCEmbedding *)self suggestionID];
  [v3 setObject:v5 forKeyedSubscript:@"suggestionID"];

  v6 = [(PCEmbedding *)self activityContextEmbedding];
  [v3 addEntriesFromDictionary:v6];

  v7 = [(PCEmbedding *)self timeContextEmbedding];
  v8 = [v7 objectForKeyedSubscript:@"normalizedDuration"];

  if (v8)
  {
    v9 = [(PCEmbedding *)self timeContextEmbedding];
    v10 = [v9 objectForKeyedSubscript:@"normalizedDuration"];
    [v3 setObject:v10 forKeyedSubscript:@"normalizedDuration"];
  }

  v11 = [(PCEmbedding *)self timeContextEmbedding];
  v12 = [v11 objectForKeyedSubscript:@"timeTag"];

  if (v12)
  {
    v13 = [(PCEmbedding *)self timeContextEmbedding];
    v14 = [v13 objectForKeyedSubscript:@"timeTag"];
    [v3 setObject:v14 forKeyedSubscript:@"timeTag"];
  }

  v15 = [(PCEmbedding *)self timeContextEmbedding];
  v16 = [v15 objectForKeyedSubscript:@"dayOfWeek"];

  if (v16)
  {
    v17 = [(PCEmbedding *)self timeContextEmbedding];
    v18 = [v17 objectForKeyedSubscript:@"dayOfWeek"];
    v19 = -[PCEmbedding dayOfWeekString:](self, "dayOfWeekString:", [v18 unsignedLongValue]);
    [v3 setObject:v19 forKeyedSubscript:@"dayOfWeek"];
  }

  v20 = [(PCEmbedding *)self timeContextEmbedding];
  v21 = [v20 objectForKeyedSubscript:@"weekOfYear"];

  if (v21)
  {
    v22 = [(PCEmbedding *)self timeContextEmbedding];
    v23 = [v22 objectForKeyedSubscript:@"weekOfYear"];
    [v3 setObject:v23 forKeyedSubscript:@"weekOfYear"];
  }

  v24 = [(PCEmbedding *)self timeContextEmbedding];
  v25 = [v24 objectForKeyedSubscript:@"isWeekend"];

  if (v25)
  {
    v26 = [(PCEmbedding *)self timeContextEmbedding];
    v27 = [v26 objectForKeyedSubscript:@"isWeekend"];
    [v3 setObject:v27 forKeyedSubscript:@"isWeekend"];
  }

  v28 = [(PCEmbedding *)self locationContextEmbedding];
  v29 = [v28 objectForKeyedSubscript:@"placeName"];

  if (v29)
  {
    v30 = [(PCEmbedding *)self locationContextEmbedding];
    v31 = [v30 objectForKeyedSubscript:@"placeName"];
    [v3 setObject:v31 forKeyedSubscript:@"placeName"];
  }

  v32 = [(PCEmbedding *)self locationContextEmbedding];
  v33 = [v32 objectForKeyedSubscript:@"combinedPlaceType"];

  if (v33)
  {
    v34 = [(PCEmbedding *)self locationContextEmbedding];
    v35 = [v34 objectForKeyedSubscript:@"combinedPlaceType"];
    [v3 setObject:v35 forKeyedSubscript:@"combinedPlaceType"];
  }

  v36 = [(PCEmbedding *)self locationContextEmbedding];
  v37 = [v36 objectForKeyedSubscript:@"enclosingAreaName"];

  if (v37)
  {
    v38 = [(PCEmbedding *)self locationContextEmbedding];
    v39 = [v38 objectForKeyedSubscript:@"enclosingAreaName"];
    [v3 setObject:v39 forKeyedSubscript:@"enclosingAreaName"];
  }

  return v3;
}

- (id)dayOfWeekString:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    return @"undefined";
  }

  else
  {
    return off_1E83B8348[a3 - 1];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PCEmbedding *)self bundleIdentifier];
  v7 = [(PCEmbedding *)self suggestionID];
  v8 = [(PCEmbedding *)self embeddingType];
  v9 = [(PCEmbedding *)self activityContextEmbedding];
  v10 = [(PCEmbedding *)self timeContextEmbedding];
  v11 = [v3 stringWithFormat:@"<%@ bundleID:%@, suggestionID:%@, embeddingType:%lu, activityContextEmbedding:%@, timeContextEmbedding:%@>", v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)sensitiveDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PCEmbedding *)self description];
  v5 = [(PCEmbedding *)self locationContextEmbedding];
  v6 = [v3 stringWithFormat:@"%@ <locationContextEmbedding:%@>", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(PCEmbedding);
  v5 = [(PCEmbedding *)self bundleIdentifier];
  [(PCEmbedding *)v4 setBundleIdentifier:v5];

  v6 = [(PCEmbedding *)self suggestionID];
  [(PCEmbedding *)v4 setSuggestionID:v6];

  [(PCEmbedding *)v4 setEmbeddingType:[(PCEmbedding *)self embeddingType]];
  v7 = [(PCEmbedding *)self activityContextEmbedding];

  v51 = v4;
  if (v7)
  {
    v8 = [(PCEmbedding *)self activityContextEmbedding];
    v9 = [v8 mutableCopy];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v10 = [(PCEmbedding *)self activityContextEmbedding];
    v11 = [v10 allKeys];

    v12 = [v11 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v61;
      do
      {
        v15 = 0;
        do
        {
          if (*v61 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v60 + 1) + 8 * v15);
          v17 = [(PCEmbedding *)self activityContextEmbedding];
          v18 = [v17 objectForKeyedSubscript:v16];

          if ([v18 conformsToProtocol:&unk_1F4BE09A8])
          {
            v19 = [v18 copy];
            [v9 setObject:v19 forKeyedSubscript:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v13);
    }

    v20 = [v9 copy];
    v4 = v51;
    [(PCEmbedding *)v51 setActivityContextEmbedding:v20];
  }

  v21 = [(PCEmbedding *)self timeContextEmbedding];

  if (v21)
  {
    v22 = [(PCEmbedding *)self timeContextEmbedding];
    v23 = [v22 mutableCopy];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v24 = [(PCEmbedding *)self timeContextEmbedding];
    v25 = [v24 allKeys];

    v26 = [v25 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v57;
      do
      {
        v29 = 0;
        do
        {
          if (*v57 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v56 + 1) + 8 * v29);
          v31 = [(PCEmbedding *)self timeContextEmbedding];
          v32 = [v31 objectForKeyedSubscript:v30];

          if ([v32 conformsToProtocol:&unk_1F4BE09A8])
          {
            v33 = [v32 copy];
            [v23 setObject:v33 forKeyedSubscript:v30];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v27);
    }

    v34 = [v23 copy];
    v4 = v51;
    [(PCEmbedding *)v51 setTimeContextEmbedding:v34];
  }

  v35 = [(PCEmbedding *)self locationContextEmbedding];

  if (v35)
  {
    v36 = [(PCEmbedding *)self locationContextEmbedding];
    v37 = [v36 mutableCopy];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v38 = [(PCEmbedding *)self locationContextEmbedding];
    v39 = [v38 allKeys];

    v40 = [v39 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v53;
      do
      {
        v43 = 0;
        do
        {
          if (*v53 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v52 + 1) + 8 * v43);
          v45 = [(PCEmbedding *)self locationContextEmbedding];
          v46 = [v45 objectForKeyedSubscript:v44];

          if ([v46 conformsToProtocol:&unk_1F4BE09A8])
          {
            v47 = [v46 copy];
            [v37 setObject:v47 forKeyedSubscript:v44];
          }

          ++v43;
        }

        while (v41 != v43);
        v41 = [v39 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v41);
    }

    v48 = [v37 copy];
    v4 = v51;
    [(PCEmbedding *)v51 setLocationContextEmbedding:v48];
  }

  v49 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)embeddingObjectsFromProtobuf:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
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
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [PCEmbedding alloc];
          v12 = [(PCEmbedding *)v11 initWithProtobufEquivalent:v10, v16];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)timeOfDay
{
  v3 = [(NSDictionary *)self->_timeContextEmbedding objectForKeyedSubscript:@"timeOfDayCos"];
  v4 = [(NSDictionary *)self->_timeContextEmbedding objectForKeyedSubscript:@"timeOfDaySin"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    [v4 doubleValue];
    v9 = v8;
    [v3 doubleValue];
    v11 = atan2(v9, v10);
    if (v11 < 0.0)
    {
      v11 = v11 + 6.28318531;
    }

    v12 = v11 * 24.0 / 6.28318531;
    v7 = objc_opt_new();
    [v7 setHour:(v12 + 0.000001)];
    [v7 setMinute:{((v12 - objc_msgSend(v7, "hour")) * 60.0 + 0.000001)}];
    [v7 setSecond:0];
  }

  return v7;
}

+ (double)secondsFromTimeOfDay:(id)a3 toTimeOfDay:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = -1.0;
  if (v5 && v6)
  {
    v9 = [v5 hour];
    v10 = ([v5 minute] * 60.0) + (v9 * 3600.0);
    v11 = (v10 + [v5 second]);
    v12 = [v7 hour];
    v13 = ([v7 minute] * 60.0) + (v12 * 3600.0);
    v14 = [v7 second];
    v15 = (v13 + v14) - v11;
    if (v15 < 0.0 || v15 > 86400.0)
    {
      if (v15 >= 0.0 || v15 < -86400.0)
      {
        v16 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = 138412546;
          v20 = v5;
          v21 = 2112;
          v22 = v7;
          _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_ERROR, "[secondsFromTimeOfDay] Invalid Parameters: %@, %@", &v19, 0x16u);
        }
      }

      else
      {
        v8 = v15 + 86400.0;
      }
    }

    else
    {
      v8 = (v13 + v14) - v11;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

@end