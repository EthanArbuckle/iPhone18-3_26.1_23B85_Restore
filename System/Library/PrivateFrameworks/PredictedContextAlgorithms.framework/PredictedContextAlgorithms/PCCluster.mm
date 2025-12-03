@interface PCCluster
+ (id)clusterObjectsFromProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (PCCluster)initWithCoder:(id)coder;
- (PCCluster)initWithIdentifier:(id)identifier creationDate:(id)date;
- (PCCluster)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate;
- (PCCluster)initWithProtobufEquivalent:(id)equivalent;
- (id)description;
- (id)sensitiveDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)mapTimePropertiesFromPhenotype:(id)phenotype toDictionary:(id)dictionary;
@end

@implementation PCCluster

- (PCCluster)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  v18.receiver = self;
  v18.super_class = PCCluster;
  v15 = [(PCCluster *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_startDate, date);
    objc_storeStrong(&v16->_endDate, endDate);
    objc_storeStrong(&v16->_creationDate, creationDate);
  }

  return v16;
}

- (PCCluster)initWithIdentifier:(id)identifier creationDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = PCCluster;
  v9 = [(PCCluster *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_creationDate, date);
  }

  return v10;
}

- (PCCluster)initWithProtobufEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v55.receiver = self;
  v55.super_class = PCCluster;
  v5 = [(PCCluster *)&v55 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    identifier = [equivalentCopy identifier];
    v8 = [v6 initWithUUIDString:identifier];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = MEMORY[0x1E695DF00];
    [equivalentCopy startTimeCFAbsolute];
    v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
    startDate = v5->_startDate;
    v5->_startDate = v11;

    v13 = MEMORY[0x1E695DF00];
    [equivalentCopy endTimeCFAbsolute];
    v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
    endDate = v5->_endDate;
    v5->_endDate = v14;

    dominantSourceBundleIdentifier = [equivalentCopy dominantSourceBundleIdentifier];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = dominantSourceBundleIdentifier;

    if ([equivalentCopy embeddingIdentifiersWithPhenotypesCount])
    {
      v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(equivalentCopy, "embeddingIdentifiersWithPhenotypesCount")}];
      if ([equivalentCopy embeddingIdentifiersWithPhenotypesCount])
      {
        v19 = 0;
        do
        {
          v20 = [equivalentCopy embeddingIdentifiersWithPhenotypeAtIndex:v19];
          if (v20)
          {
            [v18 addObject:v20];
          }

          ++v19;
        }

        while ([equivalentCopy embeddingIdentifiersWithPhenotypesCount] > v19);
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    clusterPhenotype = [equivalentCopy clusterPhenotype];
    if ([clusterPhenotype hasActivityType])
    {
      activityType = [clusterPhenotype activityType];
      [dictionary setObject:activityType forKeyedSubscript:@"activityType"];

      activityType2 = [clusterPhenotype activityType];
      activityType = v5->_activityType;
      v5->_activityType = activityType2;
    }

    if ([clusterPhenotype hasPlaceName])
    {
      placeName = [clusterPhenotype placeName];
      [dictionary setObject:placeName forKeyedSubscript:@"placeName"];

      placeName2 = [clusterPhenotype placeName];
      placeName = v5->_placeName;
      v5->_placeName = placeName2;
    }

    if ([clusterPhenotype hasPlaceType])
    {
      placeType = [clusterPhenotype placeType];
      [dictionary setObject:placeType forKeyedSubscript:@"combinedPlaceType"];

      placeType2 = [clusterPhenotype placeType];
      poiCategory = v5->_poiCategory;
      v5->_poiCategory = placeType2;
    }

    if ([clusterPhenotype hasPlaceLocation])
    {
      placeLocation = [clusterPhenotype placeLocation];
      location = v5->_location;
      v5->_location = placeLocation;
    }

    [(PCCluster *)v5 mapTimePropertiesFromPhenotype:clusterPhenotype toDictionary:dictionary];
    if ([clusterPhenotype hasTimeOfDayCircularStd])
    {
      [clusterPhenotype timeOfDayCircularStd];
      v5->_timeOfDayCircularStd = v38;
      v39 = MEMORY[0x1E696AD98];
      [clusterPhenotype timeOfDayCircularStd];
      v40 = [v39 numberWithDouble:?];
      [dictionary setObject:v40 forKeyedSubscript:@"timeOfDayCircularStd"];
    }

    if ([clusterPhenotype hasLatLongCircularStd])
    {
      [clusterPhenotype latLongCircularStd];
      v5->_latLongCircularStd = v41;
      v42 = MEMORY[0x1E696AD98];
      [clusterPhenotype latLongCircularStd];
      v43 = [v42 numberWithDouble:?];
      [dictionary setObject:v43 forKeyedSubscript:@"latLongCircularStd"];
    }

    v44 = [PCClusterMetadata alloc];
    v45 = v5->_identifier;
    v46 = [dictionary copy];
    v47 = [(PCClusterMetadata *)v44 initWithIdentifier:v45 phenoType:v46];

    if ([equivalentCopy embeddingIdentifiersCount])
    {
      v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(equivalentCopy, "embeddingIdentifiersCount")}];
      if ([equivalentCopy embeddingIdentifiersCount])
      {
        v49 = 0;
        do
        {
          v50 = [equivalentCopy embeddingIdentifiersAtIndex:v49];
          if (v50)
          {
            [v48 addObject:v50];
          }

          ++v49;
        }

        while (v49 < [equivalentCopy embeddingIdentifiersCount]);
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

- (void)mapTimePropertiesFromPhenotype:(id)phenotype toDictionary:(id)dictionary
{
  phenotypeCopy = phenotype;
  dictionaryCopy = dictionary;
  if ([phenotypeCopy hasTimeOfDayCos])
  {
    v6 = MEMORY[0x1E696AD98];
    [phenotypeCopy timeOfDayCos];
    v7 = [v6 numberWithDouble:?];
    [dictionaryCopy setObject:v7 forKeyedSubscript:@"timeOfDayCos"];
  }

  if ([phenotypeCopy hasTimeOfDaySin])
  {
    v8 = MEMORY[0x1E696AD98];
    [phenotypeCopy timeOfDaySin];
    v9 = [v8 numberWithDouble:?];
    [dictionaryCopy setObject:v9 forKeyedSubscript:@"timeOfDaySin"];
  }

  if ([phenotypeCopy hasDayOfWeekCos])
  {
    v10 = MEMORY[0x1E696AD98];
    [phenotypeCopy dayOfWeekCos];
    v11 = [v10 numberWithDouble:?];
    [dictionaryCopy setObject:v11 forKeyedSubscript:@"dayOfWeekCos"];
  }

  if ([phenotypeCopy hasDayOfWeekSin])
  {
    v12 = MEMORY[0x1E696AD98];
    [phenotypeCopy dayOfWeekSin];
    v13 = [v12 numberWithDouble:?];
    [dictionaryCopy setObject:v13 forKeyedSubscript:@"dayOfWeekSin"];
  }

  if ([phenotypeCopy hasNormalizedDuration])
  {
    v14 = MEMORY[0x1E696AD98];
    [phenotypeCopy normalizedDuration];
    v15 = [v14 numberWithDouble:?];
    [dictionaryCopy setObject:v15 forKeyedSubscript:@"normalizedDuration"];
  }

  if ([phenotypeCopy hasWeekOfYear])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(phenotypeCopy, "weekOfYear")}];
    [dictionaryCopy setObject:v16 forKeyedSubscript:@"weekOfYear"];
  }

  if ([phenotypeCopy hasIsWeekend])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(phenotypeCopy, "isWeekend")}];
    [dictionaryCopy setObject:v17 forKeyedSubscript:@"isWeekend"];
  }

  if ([phenotypeCopy hasTimeOfDayCircularStd])
  {
    v18 = MEMORY[0x1E696AD98];
    [phenotypeCopy timeOfDayCircularStd];
    v19 = [v18 numberWithDouble:?];
    [dictionaryCopy setObject:v19 forKeyedSubscript:@"timeOfDayCircularStd"];
  }

  if ([phenotypeCopy hasLatLongCircularStd])
  {
    v20 = MEMORY[0x1E696AD98];
    [phenotypeCopy latLongCircularStd];
    v21 = [v20 numberWithDouble:?];
    [dictionaryCopy setObject:v21 forKeyedSubscript:@"latLongCircularStd"];
  }
}

- (PCCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
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
    selfCopy = 0;
  }

  else
  {
    v10 = [(PCCluster *)self initWithIdentifier:v5 creationDate:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v11->_startDate;
      v11->_startDate = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v11->_endDate;
      v11->_endDate = v14;

      v16 = MEMORY[0x1E695DFD8];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"events"];
      events = v11->_events;
      v11->_events = v19;

      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
      time = v11->_time;
      v11->_time = v21;

      v23 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subBundleIDs"];
      subBundleIDs = v11->_subBundleIDs;
      v11->_subBundleIDs = v23;

      v25 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"subSuggestionIDs"];
      subSuggestionIDs = v11->_subSuggestionIDs;
      v11->_subSuggestionIDs = v25;
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeObject:self->_time forKey:@"time"];
  [coderCopy encodeObject:self->_subBundleIDs forKey:@"subBundleIDs"];
  [coderCopy encodeObject:self->_subSuggestionIDs forKey:@"subSuggestionIDs"];
}

- (unint64_t)hash
{
  identifier = [(PCCluster *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(PCCluster *)self identifier];
        if (identifier || ([(PCCluster *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(PCCluster *)self identifier];
          identifier3 = [(PCCluster *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
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
  identifier = [(PCCluster *)self identifier];
  startDate = [(PCCluster *)self startDate];
  v4 = [PCEvent formatDate:startDate];
  endDate = [(PCCluster *)self endDate];
  v5 = [PCEvent formatDate:endDate];
  creationDate = [(PCCluster *)self creationDate];
  v6 = [PCEvent formatDate:creationDate];
  activityType = [(PCCluster *)self activityType];
  poiCategory = [(PCCluster *)self poiCategory];
  clusterMetadata = [(PCCluster *)self clusterMetadata];
  subSuggestionIDsBeforePruning = [clusterMetadata subSuggestionIDsBeforePruning];
  v11 = [subSuggestionIDsBeforePruning count];
  subBundleIDs = [(PCCluster *)self subBundleIDs];
  [(PCCluster *)self timeOfDayCircularStd];
  v14 = v13;
  [(PCCluster *)self latLongCircularStd];
  v21 = [v20 stringWithFormat:@"<%@ identifier:%@, startDate:%@, endDate:%@, creationDate:%@, activityType:%@, poiCategory:%@, subSuggestionIDsBeforePruningCount:%lu, subBundleIDs:%@, timeCircStd:%.6f, locationCircStd:%.6f>", v19, identifier, v4, v5, v6, activityType, poiCategory, v11, subBundleIDs, v14, v15];

  return v21;
}

- (id)sensitiveDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PCCluster *)self description];
  placeName = [(PCCluster *)self placeName];
  enclosingArea = [(PCCluster *)self enclosingArea];
  location = [(PCCluster *)self location];
  v8 = [v3 stringWithFormat:@"%@ <placeName:%@, enclosingArea:%@, location:%@>", v4, placeName, enclosingArea, location];

  return v8;
}

+ (id)clusterObjectsFromProtobuf:(id)protobuf
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