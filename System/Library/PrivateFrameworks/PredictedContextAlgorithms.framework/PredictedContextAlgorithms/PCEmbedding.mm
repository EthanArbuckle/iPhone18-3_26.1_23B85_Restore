@interface PCEmbedding
+ (double)secondsFromTimeOfDay:(id)day toTimeOfDay:(id)ofDay;
+ (id)embeddingObjectsFromProtobuf:(id)protobuf;
+ (id)indoorOutdoorCategoryActivityTypes;
- (PCEmbedding)initWithEventBundle:(id)bundle forEmbeddingType:(unint64_t)type;
- (PCEmbedding)initWithProtobufEquivalent:(id)equivalent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dayOfWeekString:(unint64_t)string;
- (id)description;
- (id)extractActivityContextEmbedding:(id)embedding;
- (id)extractActivityContextEmbeddingFromProtobufEquivalent:(id)equivalent;
- (id)extractLocationContextEmbedding:(id)embedding;
- (id)extractLocationContextEmbeddingFromProtobufEquivalent:(id)equivalent;
- (id)extractTimeContextEmbedding:(id)embedding;
- (id)extractTimeContextEmbeddingFromProtobufEquivalent:(id)equivalent;
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

- (PCEmbedding)initWithEventBundle:(id)bundle forEmbeddingType:(unint64_t)type
{
  bundleCopy = bundle;
  v19.receiver = self;
  v19.super_class = PCEmbedding;
  v7 = [(PCEmbedding *)&v19 init];
  if (v7)
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = bundleIdentifier;

    suggestionID = [bundleCopy suggestionID];
    suggestionID = v7->_suggestionID;
    v7->_suggestionID = suggestionID;

    v7->_embeddingType = type;
    v12 = [(PCEmbedding *)v7 extractActivityContextEmbedding:bundleCopy];
    activityContextEmbedding = v7->_activityContextEmbedding;
    v7->_activityContextEmbedding = v12;

    v14 = [(PCEmbedding *)v7 extractTimeContextEmbedding:bundleCopy];
    timeContextEmbedding = v7->_timeContextEmbedding;
    v7->_timeContextEmbedding = v14;

    v16 = [(PCEmbedding *)v7 extractLocationContextEmbedding:bundleCopy];
    locationContextEmbedding = v7->_locationContextEmbedding;
    v7->_locationContextEmbedding = v16;
  }

  return v7;
}

- (PCEmbedding)initWithProtobufEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v21.receiver = self;
  v21.super_class = PCEmbedding;
  v5 = [(PCEmbedding *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    identifier = [equivalentCopy identifier];
    v8 = [v6 initWithUUIDString:identifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    identifier2 = [equivalentCopy identifier];
    v12 = [v10 initWithUUIDString:identifier2];
    suggestionID = v5->_suggestionID;
    v5->_suggestionID = v12;

    v5->_embeddingType = 2;
    v14 = [(PCEmbedding *)v5 extractActivityContextEmbeddingFromProtobufEquivalent:equivalentCopy];
    activityContextEmbedding = v5->_activityContextEmbedding;
    v5->_activityContextEmbedding = v14;

    v16 = [(PCEmbedding *)v5 extractTimeContextEmbeddingFromProtobufEquivalent:equivalentCopy];
    timeContextEmbedding = v5->_timeContextEmbedding;
    v5->_timeContextEmbedding = v16;

    v18 = [(PCEmbedding *)v5 extractLocationContextEmbeddingFromProtobufEquivalent:equivalentCopy];
    locationContextEmbedding = v5->_locationContextEmbedding;
    v5->_locationContextEmbedding = v18;
  }

  return v5;
}

- (id)extractActivityContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v4 = objc_opt_new();
  activityType = [embeddingCopy activityType];
  v6 = +[PCEmbedding indoorOutdoorCategoryActivityTypes];
  activityType2 = [embeddingCopy activityType];
  v8 = [v6 containsObject:activityType2];

  if (v8)
  {
    workoutSessionLocationType = [embeddingCopy workoutSessionLocationType];
    if (workoutSessionLocationType == 2)
    {
      v10 = @"Indoor %@";
    }

    else
    {
      if (workoutSessionLocationType != 3)
      {
        goto LABEL_7;
      }

      v10 = @"Outdoor %@";
    }

    v11 = MEMORY[0x1E696AEC0];
    activityType3 = [embeddingCopy activityType];
    v13 = [v11 stringWithFormat:v10, activityType3];

    activityType = v13;
  }

LABEL_7:
  activityType4 = [embeddingCopy activityType];
  v15 = [activityType4 isEqualToString:@"Swimming"];

  if (!v15)
  {
    goto LABEL_13;
  }

  workoutSwimmingLocationType = [embeddingCopy workoutSwimmingLocationType];
  if (workoutSwimmingLocationType == 1)
  {
    v17 = @"Pool %@";
  }

  else
  {
    if (workoutSwimmingLocationType != 2)
    {
      goto LABEL_13;
    }

    v17 = @"Open Water %@";
  }

  v18 = MEMORY[0x1E696AEC0];
  activityType5 = [embeddingCopy activityType];
  v20 = [v18 stringWithFormat:v17, activityType5];

  activityType = v20;
LABEL_13:
  [v4 setObject:activityType forKeyedSubscript:@"activityType"];
  sourceBundleIdentifier = [embeddingCopy sourceBundleIdentifier];
  [v4 setObject:sourceBundleIdentifier forKeyedSubscript:@"sourceBundleIdentifier"];

  hkObjectIdentifier = [embeddingCopy hkObjectIdentifier];
  uUIDString = [hkObjectIdentifier UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"hkObjectUUID"];

  v24 = MEMORY[0x1E696AD98];
  startDate = [embeddingCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v26 = [v24 numberWithDouble:?];
  [v4 setObject:v26 forKeyedSubscript:@"startTimeCFAbsolute"];

  return v4;
}

- (id)extractTimeContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v5 = objc_opt_new();
  localStartDate = [embeddingCopy localStartDate];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [currentCalendar setTimeZone:systemTimeZone];

  embeddingType = self->_embeddingType;
  if (embeddingType == 3)
  {
    v33 = __sincos_stret([currentCalendar component:4096 fromDate:localStartDate] * 6.28318531 / 5.0);
    v34 = __sincos_stret([currentCalendar component:8 fromDate:localStartDate] * 6.28318531 / 12.0);
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
    [embeddingCopy duration];
    v11 = v10 / 86400.0;
    v12 = [currentCalendar components:96 fromDate:localStartDate];
    v13 = __sincos_stret(([v12 minute] / 60.0 + objc_msgSend(v12, "hour")) * 6.28318531 / 24.0);
    v14 = [currentCalendar component:512 fromDate:localStartDate];
    v15 = v14;
    v16 = __sincos_stret(v14 * 6.28318531 / 7.0);
    v18 = v14 == 1 || v14 == 7;
    v19 = [currentCalendar component:0x2000 fromDate:localStartDate];
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
    localStartDate2 = [embeddingCopy localStartDate];
    localEndDate = [embeddingCopy localEndDate];
    v29 = [v26 numberWithUnsignedInteger:{+[PCTime simpleTimetagFromStartDate:endDate:](PCTime, "simpleTimetagFromStartDate:endDate:", localStartDate2, localEndDate)}];
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

- (id)extractLocationContextEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v4 = objc_opt_new();
  placeName = [embeddingCopy placeName];
  v6 = [placeName length];

  if (v6)
  {
    placeName2 = [embeddingCopy placeName];
    [v4 setObject:placeName2 forKeyedSubscript:@"placeName"];
  }

  enclosingArea = [embeddingCopy enclosingArea];
  v9 = [enclosingArea length];

  if (v9)
  {
    enclosingArea2 = [embeddingCopy enclosingArea];
    [v4 setObject:enclosingArea2 forKeyedSubscript:@"enclosingAreaName"];
  }

  if ([embeddingCopy placeType] == 1 || objc_msgSend(embeddingCopy, "placeType") == 2)
  {
    poiCategory = [embeddingCopy poiCategory];
    v12 = [poiCategory length];

    if (v12)
    {
      poiCategory2 = [embeddingCopy poiCategory];
      [v4 setObject:poiCategory2 forKeyedSubscript:@"combinedPlaceType"];
    }
  }

  if ([embeddingCopy placeUserType])
  {
    placeUserType = [embeddingCopy placeUserType];
    if (placeUserType >= 5)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", placeUserType];
    }

    else
    {
      v15 = off_1E83B8320[placeUserType];
    }

    [v4 setObject:v15 forKeyedSubscript:@"combinedPlaceType"];
  }

  location = [embeddingCopy location];

  if (location)
  {
    location2 = [embeddingCopy location];
    v18 = MEMORY[0x1E696AD98];
    [location2 locationLatitudeDeg];
    v19 = [v18 numberWithDouble:?];
    [v4 setObject:v19 forKeyedSubscript:@"placeLatitude"];

    v20 = MEMORY[0x1E696AD98];
    [location2 locationLongitudeDeg];
    v21 = [v20 numberWithDouble:?];
    [v4 setObject:v21 forKeyedSubscript:@"placeLongitude"];
  }

  return v4;
}

- (id)extractActivityContextEmbeddingFromProtobufEquivalent:(id)equivalent
{
  activityContext = [equivalent activityContext];
  if (activityContext)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([activityContext hasActivityType])
    {
      activityType = [activityContext activityType];
      [dictionary setObject:activityType forKeyedSubscript:@"activityType"];
    }

    if ([activityContext hasHkObjectUUID])
    {
      hkObjectUUID = [activityContext hkObjectUUID];
      [dictionary setObject:hkObjectUUID forKeyedSubscript:@"hkObjectUUID"];
    }

    if ([activityContext hasStartTimeCFAbsolute])
    {
      v7 = MEMORY[0x1E696AD98];
      [activityContext startTimeCFAbsolute];
      v8 = [v7 numberWithDouble:?];
      [dictionary setObject:v8 forKeyedSubscript:@"startTimeCFAbsolute"];
    }

    if ([activityContext hasSourceBundleIdentifier])
    {
      sourceBundleIdentifier = [activityContext sourceBundleIdentifier];
      [dictionary setObject:sourceBundleIdentifier forKeyedSubscript:@"sourceBundleIdentifier"];
    }

    if ([dictionary count])
    {
      v10 = [dictionary copy];
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

- (id)extractLocationContextEmbeddingFromProtobufEquivalent:(id)equivalent
{
  locationContext = [equivalent locationContext];
  if (locationContext)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([locationContext hasPlaceName])
    {
      placeName = [locationContext placeName];
      [dictionary setObject:placeName forKeyedSubscript:@"placeName"];
    }

    if ([locationContext hasPlaceType])
    {
      placeType = [locationContext placeType];
      [dictionary setObject:placeType forKeyedSubscript:@"combinedPlaceType"];
    }

    if ([locationContext hasPlaceLocation])
    {
      placeLocation = [locationContext placeLocation];
      v8 = MEMORY[0x1E696AD98];
      [placeLocation locationLatitudeDeg];
      v9 = [v8 numberWithDouble:?];
      v10 = MEMORY[0x1E696AD98];
      [placeLocation locationLatitudeDeg];
      v11 = [v10 numberWithDouble:?];
      [dictionary setObject:v11 forKeyedSubscript:@"placeLatitude"];

      v12 = MEMORY[0x1E696AD98];
      [placeLocation locationLongitudeDeg];
      v13 = [v12 numberWithDouble:?];
      [dictionary setObject:v13 forKeyedSubscript:@"placeLongitude"];
    }

    if ([dictionary count])
    {
      v14 = [dictionary copy];
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

- (id)extractTimeContextEmbeddingFromProtobufEquivalent:(id)equivalent
{
  timeContext = [equivalent timeContext];
  if (timeContext)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([timeContext hasNormalizedDuration])
    {
      v5 = MEMORY[0x1E696AD98];
      [timeContext normalizedDuration];
      v6 = [v5 numberWithDouble:?];
      [dictionary setObject:v6 forKeyedSubscript:@"normalizedDuration"];
    }

    if ([timeContext hasTimeOfDayCos])
    {
      v7 = MEMORY[0x1E696AD98];
      [timeContext timeOfDayCos];
      v8 = [v7 numberWithDouble:?];
      [dictionary setObject:v8 forKeyedSubscript:@"timeOfDayCos"];
    }

    if ([timeContext hasTimeOfDaySin])
    {
      v9 = MEMORY[0x1E696AD98];
      [timeContext timeOfDaySin];
      v10 = [v9 numberWithDouble:?];
      [dictionary setObject:v10 forKeyedSubscript:@"timeOfDaySin"];
    }

    if ([timeContext hasTimeOfDayCos] && objc_msgSend(timeContext, "hasTimeOfDaySin"))
    {
      v11 = MEMORY[0x1E696AD98];
      [timeContext timeOfDayCos];
      v13 = v12;
      [timeContext timeOfDaySin];
      v15 = [v11 numberWithUnsignedInteger:{+[PCTime timeTagFromTimeOfDayCos:timeOfDaySin:](PCTime, "timeTagFromTimeOfDayCos:timeOfDaySin:", v13, v14)}];
      [dictionary setObject:v15 forKeyedSubscript:@"timeTag"];
    }

    if ([timeContext hasDayOfWeekCos])
    {
      v16 = MEMORY[0x1E696AD98];
      [timeContext dayOfWeekCos];
      v17 = [v16 numberWithDouble:?];
      [dictionary setObject:v17 forKeyedSubscript:@"dayOfWeekCos"];
    }

    if ([timeContext hasDayOfWeekSin])
    {
      v18 = MEMORY[0x1E696AD98];
      [timeContext dayOfWeekSin];
      v19 = [v18 numberWithDouble:?];
      [dictionary setObject:v19 forKeyedSubscript:@"dayOfWeekSin"];
    }

    if ([timeContext hasIsWeekend])
    {
      v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(timeContext, "isWeekend")}];
      [dictionary setObject:v20 forKeyedSubscript:@"isWeekend"];
    }

    if ([timeContext hasWeekOfYear])
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(timeContext, "weekOfYear")}];
      [dictionary setObject:v21 forKeyedSubscript:@"weekOfYear"];
    }

    if ([dictionary count])
    {
      v22 = [dictionary copy];
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
  bundleIdentifier = [(PCEmbedding *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"bundleID"];

  suggestionID = [(PCEmbedding *)self suggestionID];
  [v3 setObject:suggestionID forKeyedSubscript:@"suggestionID"];

  activityContextEmbedding = [(PCEmbedding *)self activityContextEmbedding];
  [v3 addEntriesFromDictionary:activityContextEmbedding];

  timeContextEmbedding = [(PCEmbedding *)self timeContextEmbedding];
  v8 = [timeContextEmbedding objectForKeyedSubscript:@"normalizedDuration"];

  if (v8)
  {
    timeContextEmbedding2 = [(PCEmbedding *)self timeContextEmbedding];
    v10 = [timeContextEmbedding2 objectForKeyedSubscript:@"normalizedDuration"];
    [v3 setObject:v10 forKeyedSubscript:@"normalizedDuration"];
  }

  timeContextEmbedding3 = [(PCEmbedding *)self timeContextEmbedding];
  v12 = [timeContextEmbedding3 objectForKeyedSubscript:@"timeTag"];

  if (v12)
  {
    timeContextEmbedding4 = [(PCEmbedding *)self timeContextEmbedding];
    v14 = [timeContextEmbedding4 objectForKeyedSubscript:@"timeTag"];
    [v3 setObject:v14 forKeyedSubscript:@"timeTag"];
  }

  timeContextEmbedding5 = [(PCEmbedding *)self timeContextEmbedding];
  v16 = [timeContextEmbedding5 objectForKeyedSubscript:@"dayOfWeek"];

  if (v16)
  {
    timeContextEmbedding6 = [(PCEmbedding *)self timeContextEmbedding];
    v18 = [timeContextEmbedding6 objectForKeyedSubscript:@"dayOfWeek"];
    v19 = -[PCEmbedding dayOfWeekString:](self, "dayOfWeekString:", [v18 unsignedLongValue]);
    [v3 setObject:v19 forKeyedSubscript:@"dayOfWeek"];
  }

  timeContextEmbedding7 = [(PCEmbedding *)self timeContextEmbedding];
  v21 = [timeContextEmbedding7 objectForKeyedSubscript:@"weekOfYear"];

  if (v21)
  {
    timeContextEmbedding8 = [(PCEmbedding *)self timeContextEmbedding];
    v23 = [timeContextEmbedding8 objectForKeyedSubscript:@"weekOfYear"];
    [v3 setObject:v23 forKeyedSubscript:@"weekOfYear"];
  }

  timeContextEmbedding9 = [(PCEmbedding *)self timeContextEmbedding];
  v25 = [timeContextEmbedding9 objectForKeyedSubscript:@"isWeekend"];

  if (v25)
  {
    timeContextEmbedding10 = [(PCEmbedding *)self timeContextEmbedding];
    v27 = [timeContextEmbedding10 objectForKeyedSubscript:@"isWeekend"];
    [v3 setObject:v27 forKeyedSubscript:@"isWeekend"];
  }

  locationContextEmbedding = [(PCEmbedding *)self locationContextEmbedding];
  v29 = [locationContextEmbedding objectForKeyedSubscript:@"placeName"];

  if (v29)
  {
    locationContextEmbedding2 = [(PCEmbedding *)self locationContextEmbedding];
    v31 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeName"];
    [v3 setObject:v31 forKeyedSubscript:@"placeName"];
  }

  locationContextEmbedding3 = [(PCEmbedding *)self locationContextEmbedding];
  v33 = [locationContextEmbedding3 objectForKeyedSubscript:@"combinedPlaceType"];

  if (v33)
  {
    locationContextEmbedding4 = [(PCEmbedding *)self locationContextEmbedding];
    v35 = [locationContextEmbedding4 objectForKeyedSubscript:@"combinedPlaceType"];
    [v3 setObject:v35 forKeyedSubscript:@"combinedPlaceType"];
  }

  locationContextEmbedding5 = [(PCEmbedding *)self locationContextEmbedding];
  v37 = [locationContextEmbedding5 objectForKeyedSubscript:@"enclosingAreaName"];

  if (v37)
  {
    locationContextEmbedding6 = [(PCEmbedding *)self locationContextEmbedding];
    v39 = [locationContextEmbedding6 objectForKeyedSubscript:@"enclosingAreaName"];
    [v3 setObject:v39 forKeyedSubscript:@"enclosingAreaName"];
  }

  return v3;
}

- (id)dayOfWeekString:(unint64_t)string
{
  if (string - 1 > 6)
  {
    return @"undefined";
  }

  else
  {
    return off_1E83B8348[string - 1];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(PCEmbedding *)self bundleIdentifier];
  suggestionID = [(PCEmbedding *)self suggestionID];
  embeddingType = [(PCEmbedding *)self embeddingType];
  activityContextEmbedding = [(PCEmbedding *)self activityContextEmbedding];
  timeContextEmbedding = [(PCEmbedding *)self timeContextEmbedding];
  v11 = [v3 stringWithFormat:@"<%@ bundleID:%@, suggestionID:%@, embeddingType:%lu, activityContextEmbedding:%@, timeContextEmbedding:%@>", v5, bundleIdentifier, suggestionID, embeddingType, activityContextEmbedding, timeContextEmbedding];

  return v11;
}

- (id)sensitiveDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PCEmbedding *)self description];
  locationContextEmbedding = [(PCEmbedding *)self locationContextEmbedding];
  v6 = [v3 stringWithFormat:@"%@ <locationContextEmbedding:%@>", v4, locationContextEmbedding];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(PCEmbedding);
  bundleIdentifier = [(PCEmbedding *)self bundleIdentifier];
  [(PCEmbedding *)v4 setBundleIdentifier:bundleIdentifier];

  suggestionID = [(PCEmbedding *)self suggestionID];
  [(PCEmbedding *)v4 setSuggestionID:suggestionID];

  [(PCEmbedding *)v4 setEmbeddingType:[(PCEmbedding *)self embeddingType]];
  activityContextEmbedding = [(PCEmbedding *)self activityContextEmbedding];

  v51 = v4;
  if (activityContextEmbedding)
  {
    activityContextEmbedding2 = [(PCEmbedding *)self activityContextEmbedding];
    v9 = [activityContextEmbedding2 mutableCopy];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    activityContextEmbedding3 = [(PCEmbedding *)self activityContextEmbedding];
    allKeys = [activityContextEmbedding3 allKeys];

    v12 = [allKeys countByEnumeratingWithState:&v60 objects:v66 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v16 = *(*(&v60 + 1) + 8 * v15);
          activityContextEmbedding4 = [(PCEmbedding *)self activityContextEmbedding];
          v18 = [activityContextEmbedding4 objectForKeyedSubscript:v16];

          if ([v18 conformsToProtocol:&unk_1F4BE09A8])
          {
            v19 = [v18 copy];
            [v9 setObject:v19 forKeyedSubscript:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [allKeys countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v13);
    }

    v20 = [v9 copy];
    v4 = v51;
    [(PCEmbedding *)v51 setActivityContextEmbedding:v20];
  }

  timeContextEmbedding = [(PCEmbedding *)self timeContextEmbedding];

  if (timeContextEmbedding)
  {
    timeContextEmbedding2 = [(PCEmbedding *)self timeContextEmbedding];
    v23 = [timeContextEmbedding2 mutableCopy];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    timeContextEmbedding3 = [(PCEmbedding *)self timeContextEmbedding];
    allKeys2 = [timeContextEmbedding3 allKeys];

    v26 = [allKeys2 countByEnumeratingWithState:&v56 objects:v65 count:16];
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
            objc_enumerationMutation(allKeys2);
          }

          v30 = *(*(&v56 + 1) + 8 * v29);
          timeContextEmbedding4 = [(PCEmbedding *)self timeContextEmbedding];
          v32 = [timeContextEmbedding4 objectForKeyedSubscript:v30];

          if ([v32 conformsToProtocol:&unk_1F4BE09A8])
          {
            v33 = [v32 copy];
            [v23 setObject:v33 forKeyedSubscript:v30];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [allKeys2 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v27);
    }

    v34 = [v23 copy];
    v4 = v51;
    [(PCEmbedding *)v51 setTimeContextEmbedding:v34];
  }

  locationContextEmbedding = [(PCEmbedding *)self locationContextEmbedding];

  if (locationContextEmbedding)
  {
    locationContextEmbedding2 = [(PCEmbedding *)self locationContextEmbedding];
    v37 = [locationContextEmbedding2 mutableCopy];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    locationContextEmbedding3 = [(PCEmbedding *)self locationContextEmbedding];
    allKeys3 = [locationContextEmbedding3 allKeys];

    v40 = [allKeys3 countByEnumeratingWithState:&v52 objects:v64 count:16];
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
            objc_enumerationMutation(allKeys3);
          }

          v44 = *(*(&v52 + 1) + 8 * v43);
          locationContextEmbedding4 = [(PCEmbedding *)self locationContextEmbedding];
          v46 = [locationContextEmbedding4 objectForKeyedSubscript:v44];

          if ([v46 conformsToProtocol:&unk_1F4BE09A8])
          {
            v47 = [v46 copy];
            [v37 setObject:v47 forKeyedSubscript:v44];
          }

          ++v43;
        }

        while (v41 != v43);
        v41 = [allKeys3 countByEnumeratingWithState:&v52 objects:v64 count:16];
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

+ (id)embeddingObjectsFromProtobuf:(id)protobuf
{
  v21 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = protobufCopy;
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

+ (double)secondsFromTimeOfDay:(id)day toTimeOfDay:(id)ofDay
{
  v23 = *MEMORY[0x1E69E9840];
  dayCopy = day;
  ofDayCopy = ofDay;
  v7 = ofDayCopy;
  v8 = -1.0;
  if (dayCopy && ofDayCopy)
  {
    hour = [dayCopy hour];
    v10 = ([dayCopy minute] * 60.0) + (hour * 3600.0);
    v11 = (v10 + [dayCopy second]);
    hour2 = [v7 hour];
    v13 = ([v7 minute] * 60.0) + (hour2 * 3600.0);
    second = [v7 second];
    v15 = (v13 + second) - v11;
    if (v15 < 0.0 || v15 > 86400.0)
    {
      if (v15 >= 0.0 || v15 < -86400.0)
      {
        v16 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = 138412546;
          v20 = dayCopy;
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
      v8 = (v13 + second) - v11;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

@end