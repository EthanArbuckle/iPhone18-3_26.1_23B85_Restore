@interface PCCluster
+ (id)clusterObjectsFromProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PCCluster)initWithCoder:(id)a3;
- (PCCluster)initWithIdentifier:(id)a3 creationDate:(id)a4;
- (PCCluster)initWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 creationDate:(id)a6;
- (PCCluster)initWithProtobufEquivalent:(id)a3;
- (id)description;
- (id)sensitiveDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)mapTimePropertiesFromPhenotype:(id)a3 toDictionary:(id)a4;
@end

@implementation PCCluster

- (PCCluster)initWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 creationDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PCCluster;
  v15 = [(PCCluster *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_startDate, a4);
    objc_storeStrong(&v16->_endDate, a5);
    objc_storeStrong(&v16->_creationDate, a6);
  }

  return v16;
}

- (PCCluster)initWithIdentifier:(id)a3 creationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PCCluster;
  v9 = [(PCCluster *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_creationDate, a4);
  }

  return v10;
}

- (PCCluster)initWithProtobufEquivalent:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = PCCluster;
  v5 = [(PCCluster *)&v55 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v4 identifier];
    v8 = [v6 initWithUUIDString:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = MEMORY[0x1E695DF00];
    [v4 startTimeCFAbsolute];
    v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
    startDate = v5->_startDate;
    v5->_startDate = v11;

    v13 = MEMORY[0x1E695DF00];
    [v4 endTimeCFAbsolute];
    v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
    endDate = v5->_endDate;
    v5->_endDate = v14;

    v16 = [v4 dominantSourceBundleIdentifier];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v16;

    if ([v4 embeddingIdentifiersWithPhenotypesCount])
    {
      v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "embeddingIdentifiersWithPhenotypesCount")}];
      if ([v4 embeddingIdentifiersWithPhenotypesCount])
      {
        v19 = 0;
        do
        {
          v20 = [v4 embeddingIdentifiersWithPhenotypeAtIndex:v19];
          if (v20)
          {
            [v18 addObject:v20];
          }

          ++v19;
        }

        while ([v4 embeddingIdentifiersWithPhenotypesCount] > v19);
      }

      if ([v18 count])
      {
        v21 = [v18 copy];
        subSuggestionIDs = v5->_subSuggestionIDs;
        v5->_subSuggestionIDs = v21;

        v23 = [v18 copy];
        subBundleIDs = v5->_subBundleIDs;
        v5->_subBundleIDs = v23;
      }
    }

    v25 = [MEMORY[0x1E695DF90] dictionary];
    v26 = [v4 clusterPhenotype];
    if ([v26 hasActivityType])
    {
      v27 = [v26 activityType];
      [v25 setObject:v27 forKeyedSubscript:@"activityType"];

      v28 = [v26 activityType];
      activityType = v5->_activityType;
      v5->_activityType = v28;
    }

    if ([v26 hasPlaceName])
    {
      v30 = [v26 placeName];
      [v25 setObject:v30 forKeyedSubscript:@"placeName"];

      v31 = [v26 placeName];
      placeName = v5->_placeName;
      v5->_placeName = v31;
    }

    if ([v26 hasPlaceType])
    {
      v33 = [v26 placeType];
      [v25 setObject:v33 forKeyedSubscript:@"combinedPlaceType"];

      v34 = [v26 placeType];
      poiCategory = v5->_poiCategory;
      v5->_poiCategory = v34;
    }

    if ([v26 hasPlaceLocation])
    {
      v36 = [v26 placeLocation];
      location = v5->_location;
      v5->_location = v36;
    }

    [(PCCluster *)v5 mapTimePropertiesFromPhenotype:v26 toDictionary:v25];
    if ([v26 hasTimeOfDayCircularStd])
    {
      [v26 timeOfDayCircularStd];
      v5->_timeOfDayCircularStd = v38;
      v39 = MEMORY[0x1E696AD98];
      [v26 timeOfDayCircularStd];
      v40 = [v39 numberWithDouble:?];
      [v25 setObject:v40 forKeyedSubscript:@"timeOfDayCircularStd"];
    }

    if ([v26 hasLatLongCircularStd])
    {
      [v26 latLongCircularStd];
      v5->_latLongCircularStd = v41;
      v42 = MEMORY[0x1E696AD98];
      [v26 latLongCircularStd];
      v43 = [v42 numberWithDouble:?];
      [v25 setObject:v43 forKeyedSubscript:@"latLongCircularStd"];
    }

    v44 = [PCClusterMetadata alloc];
    v45 = v5->_identifier;
    v46 = [v25 copy];
    v47 = [(PCClusterMetadata *)v44 initWithIdentifier:v45 phenoType:v46];

    if ([v4 embeddingIdentifiersCount])
    {
      v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "embeddingIdentifiersCount")}];
      if ([v4 embeddingIdentifiersCount])
      {
        v49 = 0;
        do
        {
          v50 = [v4 embeddingIdentifiersAtIndex:v49];
          if (v50)
          {
            [v48 addObject:v50];
          }

          ++v49;
        }

        while (v49 < [v4 embeddingIdentifiersCount]);
      }

      if ([v48 count])
      {
        v51 = [v48 copy];
        [(PCClusterMetadata *)v47 setSubSuggestionIDsBeforePruning:v51];
      }
    }

    v52 = [(PCClusterMetadata *)v47 copy];
    clusterMetadata = v5->_clusterMetadata;
    v5->_clusterMetadata = v52;
  }

  return v5;
}

- (void)mapTimePropertiesFromPhenotype:(id)a3 toDictionary:(id)a4
{
  v22 = a3;
  v5 = a4;
  if ([v22 hasTimeOfDayCos])
  {
    v6 = MEMORY[0x1E696AD98];
    [v22 timeOfDayCos];
    v7 = [v6 numberWithDouble:?];
    [v5 setObject:v7 forKeyedSubscript:@"timeOfDayCos"];
  }

  if ([v22 hasTimeOfDaySin])
  {
    v8 = MEMORY[0x1E696AD98];
    [v22 timeOfDaySin];
    v9 = [v8 numberWithDouble:?];
    [v5 setObject:v9 forKeyedSubscript:@"timeOfDaySin"];
  }

  if ([v22 hasDayOfWeekCos])
  {
    v10 = MEMORY[0x1E696AD98];
    [v22 dayOfWeekCos];
    v11 = [v10 numberWithDouble:?];
    [v5 setObject:v11 forKeyedSubscript:@"dayOfWeekCos"];
  }

  if ([v22 hasDayOfWeekSin])
  {
    v12 = MEMORY[0x1E696AD98];
    [v22 dayOfWeekSin];
    v13 = [v12 numberWithDouble:?];
    [v5 setObject:v13 forKeyedSubscript:@"dayOfWeekSin"];
  }

  if ([v22 hasNormalizedDuration])
  {
    v14 = MEMORY[0x1E696AD98];
    [v22 normalizedDuration];
    v15 = [v14 numberWithDouble:?];
    [v5 setObject:v15 forKeyedSubscript:@"normalizedDuration"];
  }

  if ([v22 hasWeekOfYear])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v22, "weekOfYear")}];
    [v5 setObject:v16 forKeyedSubscript:@"weekOfYear"];
  }

  if ([v22 hasIsWeekend])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v22, "isWeekend")}];
    [v5 setObject:v17 forKeyedSubscript:@"isWeekend"];
  }

  if ([v22 hasTimeOfDayCircularStd])
  {
    v18 = MEMORY[0x1E696AD98];
    [v22 timeOfDayCircularStd];
    v19 = [v18 numberWithDouble:?];
    [v5 setObject:v19 forKeyedSubscript:@"timeOfDayCircularStd"];
  }

  if ([v22 hasLatLongCircularStd])
  {
    v20 = MEMORY[0x1E696AD98];
    [v22 latLongCircularStd];
    v21 = [v20 numberWithDouble:?];
    [v5 setObject:v21 forKeyedSubscript:@"latLongCircularStd"];
  }
}

- (PCCluster)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(PCCluster *)self initWithIdentifier:v5 creationDate:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v11->_startDate;
      v11->_startDate = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v11->_endDate;
      v11->_endDate = v14;

      v16 = MEMORY[0x1E695DFD8];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [v4 decodeObjectOfClasses:v18 forKey:@"events"];
      events = v11->_events;
      v11->_events = v19;

      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
      time = v11->_time;
      v11->_time = v21;

      v23 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subBundleIDs"];
      subBundleIDs = v11->_subBundleIDs;
      v11->_subBundleIDs = v23;

      v25 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subSuggestionIDs"];
      subSuggestionIDs = v11->_subSuggestionIDs;
      v11->_subSuggestionIDs = v25;
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_events forKey:@"events"];
  [v5 encodeObject:self->_time forKey:@"time"];
  [v5 encodeObject:self->_subBundleIDs forKey:@"subBundleIDs"];
  [v5 encodeObject:self->_subSuggestionIDs forKey:@"subSuggestionIDs"];
}

- (unint64_t)hash
{
  v2 = [(PCCluster *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(PCCluster *)self identifier];
        if (v8 || ([(PCCluster *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(PCCluster *)self identifier];
          v10 = [(PCCluster *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  v18 = [(PCCluster *)self identifier];
  v23 = [(PCCluster *)self startDate];
  v4 = [PCEvent formatDate:v23];
  v22 = [(PCCluster *)self endDate];
  v5 = [PCEvent formatDate:v22];
  v17 = [(PCCluster *)self creationDate];
  v6 = [PCEvent formatDate:v17];
  v7 = [(PCCluster *)self activityType];
  v8 = [(PCCluster *)self poiCategory];
  v9 = [(PCCluster *)self clusterMetadata];
  v10 = [v9 subSuggestionIDsBeforePruning];
  v11 = [v10 count];
  v12 = [(PCCluster *)self subBundleIDs];
  [(PCCluster *)self timeOfDayCircularStd];
  v14 = v13;
  [(PCCluster *)self latLongCircularStd];
  v21 = [v20 stringWithFormat:@"<%@ identifier:%@, startDate:%@, endDate:%@, creationDate:%@, activityType:%@, poiCategory:%@, subSuggestionIDsBeforePruningCount:%lu, subBundleIDs:%@, timeCircStd:%.6f, locationCircStd:%.6f>", v19, v18, v4, v5, v6, v7, v8, v11, v12, v14, v15];

  return v21;
}

- (id)sensitiveDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PCCluster *)self description];
  v5 = [(PCCluster *)self placeName];
  v6 = [(PCCluster *)self enclosingArea];
  v7 = [(PCCluster *)self location];
  v8 = [v3 stringWithFormat:@"%@ <placeName:%@, enclosingArea:%@, location:%@>", v4, v5, v6, v7];

  return v8;
}

+ (id)clusterObjectsFromProtobuf:(id)a3
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
          v11 = [PCCluster alloc];
          v12 = [(PCCluster *)v11 initWithProtobufEquivalent:v10, v16];
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

@end