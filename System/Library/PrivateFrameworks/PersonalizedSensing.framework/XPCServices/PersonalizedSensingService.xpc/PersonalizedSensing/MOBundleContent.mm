@interface MOBundleContent
- (BOOL)isEqual:(id)equal;
- (MOBundleContent)initWithBundleContentIdentifier:(id)identifier;
- (MOBundleContent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)metadataDict;
- (unint64_t)compareMetadataWith:(id)with;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOBundleContent

- (MOBundleContent)initWithBundleContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MOBundleContent;
  v6 = [(MOBundleContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleContentIdentifier, identifier);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  bundleContentIdentifier = self->_bundleContentIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleContentIdentifier forKey:@"bundleContentIdentifier"];
  [coderCopy encodeInteger:self->_patternType forKey:@"patternType"];
  [coderCopy encodeInteger:self->_placeType forKey:@"placeType"];
  [coderCopy encodeInteger:self->_bundleType forKey:@"bundleType"];
  [coderCopy encodeInteger:self->_peopleClassification forKey:@"peopleClassification"];
  [coderCopy encodeInteger:self->_time forKey:@"time"];
  [coderCopy encodeInteger:self->_activityType forKey:@"activityType"];
  v5 = [MODictionaryEncoder encodeDictionary:self->_llmInputDictionary];
  [coderCopy encodeObject:v5 forKey:@"llmInputDictionary"];

  [coderCopy encodeBool:self->_hasPersonName forKey:@"hasPersonName"];
  [coderCopy encodeBool:self->_hasPlaceName forKey:@"hasPlaceName"];
  [coderCopy encodeBool:self->_hasCityName forKey:@"hasCityName"];
  [coderCopy encodeBool:self->_hasTimeReference forKey:@"hasTimeReference"];
  [coderCopy encodeObject:self->_personNames forKey:@"personNames"];
  [coderCopy encodeObject:self->_placeName forKey:@"placeName"];
  [coderCopy encodeObject:self->_cityName forKey:@"cityName"];
  [coderCopy encodeObject:self->_timeReference forKey:@"timeReference"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_musicSuggestionSongTitle forKey:@"musicSuggestionSongTitle"];
  [coderCopy encodeObject:self->_musicSuggestionArtistName forKey:@"musicSuggestionArtistName"];
  [coderCopy encodeObject:self->_musicSuggestionTrackID forKey:@"musicSuggestionTrackID"];
  [coderCopy encodeObject:self->_musicSuggestionContentRating forKey:@"musicSuggestionContentRating"];
  [coderCopy encodeObject:self->_suggestionLabel forKey:@"suggestionLabel"];
  [coderCopy encodeObject:self->_associatedBundleID forKey:@"associatedBundleID"];
  [coderCopy encodeObject:self->_associatedSuggestionID forKey:@"associatedSuggestionID"];
  [coderCopy encodeObject:self->_bundleContentIdentifier forKey:@"bundleContentIdentifier"];
  [coderCopy encodeInteger:self->_photoTrait forKey:@"photoTrait"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
}

- (MOBundleContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = MOBundleContent;
  v5 = [(MOBundleContent *)&v44 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleContentIdentifier"];
    bundleContentIdentifier = v5->_bundleContentIdentifier;
    v5->_bundleContentIdentifier = v6;

    v5->_patternType = [coderCopy decodeIntegerForKey:@"patternType"];
    v5->_placeType = [coderCopy decodeIntegerForKey:@"placeType"];
    v5->_bundleType = [coderCopy decodeIntegerForKey:@"bundleType"];
    v5->_peopleClassification = [coderCopy decodeIntegerForKey:@"peopleClassification"];
    v5->_time = [coderCopy decodeIntegerForKey:@"time"];
    v5->_activityType = [coderCopy decodeIntegerForKey:@"activityType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"llmInputDictionary"];
    v9 = [MODictionaryEncoder decodeToDictionary:v8];
    llmInputDictionary = v5->_llmInputDictionary;
    v5->_llmInputDictionary = v9;

    v5->_hasPersonName = [coderCopy decodeBoolForKey:@"hasPersonName"];
    v5->_hasPlaceName = [coderCopy decodeBoolForKey:@"hasPlaceName"];
    v5->_hasCityName = [coderCopy decodeBoolForKey:@"hasCityName"];
    v5->_hasTimeReference = [coderCopy decodeBoolForKey:@"hasTimeReference"];
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"personNames"];
    personNames = v5->_personNames;
    v5->_personNames = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeName"];
    placeName = v5->_placeName;
    v5->_placeName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cityName"];
    cityName = v5->_cityName;
    v5->_cityName = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeReference"];
    timeReference = v5->_timeReference;
    v5->_timeReference = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicSuggestionSongTitle"];
    musicSuggestionSongTitle = v5->_musicSuggestionSongTitle;
    v5->_musicSuggestionSongTitle = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicSuggestionArtistName"];
    musicSuggestionArtistName = v5->_musicSuggestionArtistName;
    v5->_musicSuggestionArtistName = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicSuggestionTrackID"];
    musicSuggestionTrackID = v5->_musicSuggestionTrackID;
    v5->_musicSuggestionTrackID = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicSuggestionContentRating"];
    musicSuggestionContentRating = v5->_musicSuggestionContentRating;
    v5->_musicSuggestionContentRating = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionLabel"];
    suggestionLabel = v5->_suggestionLabel;
    v5->_suggestionLabel = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleID"];
    associatedBundleID = v5->_associatedBundleID;
    v5->_associatedBundleID = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedSuggestionID"];
    associatedSuggestionID = v5->_associatedSuggestionID;
    v5->_associatedSuggestionID = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleContentIdentifier"];
    v40 = v5->_bundleContentIdentifier;
    v5->_bundleContentIdentifier = v39;

    v5->_photoTrait = [coderCopy decodeIntegerForKey:@"photoTrait"];
    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v41;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOBundleContent);
  objc_storeStrong(&v4->_bundleContentIdentifier, self->_bundleContentIdentifier);
  v4->_patternType = self->_patternType;
  v4->_placeType = self->_placeType;
  v4->_bundleType = self->_bundleType;
  v4->_peopleClassification = self->_peopleClassification;
  v4->_time = self->_time;
  v4->_activityType = self->_activityType;
  objc_storeStrong(&v4->_llmInputDictionary, self->_llmInputDictionary);
  v4->_hasPersonName = self->_hasPersonName;
  v4->_hasPlaceName = self->_hasPlaceName;
  v4->_hasCityName = self->_hasCityName;
  v4->_hasTimeReference = self->_hasTimeReference;
  objc_storeStrong(&v4->_suggestionLabel, self->_suggestionLabel);
  objc_storeStrong(&v4->_associatedBundleID, self->_associatedBundleID);
  objc_storeStrong(&v4->_associatedSuggestionID, self->_associatedSuggestionID);
  objc_storeStrong(&v4->_bundleContentIdentifier, self->_bundleContentIdentifier);
  objc_storeStrong(&v4->_personNames, self->_personNames);
  objc_storeStrong(&v4->_placeName, self->_placeName);
  objc_storeStrong(&v4->_cityName, self->_cityName);
  objc_storeStrong(&v4->_timeReference, self->_timeReference);
  v4->_photoTrait = self->_photoTrait;
  objc_storeStrong(&v4->_musicSuggestionSongTitle, self->_musicSuggestionSongTitle);
  objc_storeStrong(&v4->_musicSuggestionArtistName, self->_musicSuggestionArtistName);
  objc_storeStrong(&v4->_musicSuggestionContentRating, self->_musicSuggestionContentRating);
  objc_storeStrong(&v4->_location, self->_location);
  objc_storeStrong(&v4->_startDate, self->_startDate);
  objc_storeStrong(&v4->_endDate, self->_endDate);
  return v4;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"bundle Content Identifier, %@, associated bundleID, %@, associated suggestionID, %@, bundleType %ld, placeType %ld, activityType %ld, photoTrait %ld, peopleClassification %ld, hasPersonName %d, hasPlaceName %d, hasCityName %d, hasTimeReference %d, patternType %ld", self->_bundleContentIdentifier, self->_associatedBundleID, self->_associatedSuggestionID, self->_bundleType, self->_placeType, self->_activityType, self->_photoTrait, self->_peopleClassification, self->_hasPersonName, self->_hasPlaceName, self->_hasCityName, self->_hasTimeReference, self->_patternType];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        bundleContentIdentifier = [(MOBundleContent *)self bundleContentIdentifier];
        if (bundleContentIdentifier || ([(MOBundleContent *)v8 bundleContentIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          bundleContentIdentifier2 = [(MOBundleContent *)self bundleContentIdentifier];
          bundleContentIdentifier3 = [(MOBundleContent *)v8 bundleContentIdentifier];
          v11 = [bundleContentIdentifier2 isEqual:bundleContentIdentifier3];

          if (bundleContentIdentifier)
          {
LABEL_12:

            associatedBundleID = [(MOBundleContent *)self associatedBundleID];
            if (associatedBundleID || ([(MOBundleContent *)v8 associatedBundleID], (bundleContentIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              associatedBundleID2 = [(MOBundleContent *)self associatedBundleID];
              associatedBundleID3 = [(MOBundleContent *)v8 associatedBundleID];
              v16 = [associatedBundleID2 isEqual:associatedBundleID3];

              if (associatedBundleID)
              {
LABEL_18:

                associatedSuggestionID = [(MOBundleContent *)self associatedSuggestionID];
                if (associatedSuggestionID || ([(MOBundleContent *)v8 associatedSuggestionID], (bundleContentIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  associatedSuggestionID2 = [(MOBundleContent *)self associatedSuggestionID];
                  associatedSuggestionID3 = [(MOBundleContent *)v8 associatedSuggestionID];
                  v20 = [associatedSuggestionID2 isEqual:associatedSuggestionID3];

                  if (associatedSuggestionID)
                  {
LABEL_24:

                    v12 = v11 & v16 & v20;
                    goto LABEL_25;
                  }
                }

                else
                {
                  v20 = 1;
                }

                goto LABEL_24;
              }
            }

            else
            {
              v16 = 1;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v12 = 0;
  }

LABEL_25:

  return v12;
}

- (unint64_t)compareMetadataWith:(id)with
{
  withCopy = with;
  if (!withCopy)
  {
    v22 = 0;
    goto LABEL_40;
  }

  metadataDict = [(MOBundleContent *)self metadataDict];
  v28 = withCopy;
  metadataDict2 = [withCopy metadataDict];
  v27 = [metadataDict count];
  v26 = [metadataDict2 count];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = metadataDict;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v30;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v29 + 1) + 8 * i);
      if ([&off_1000C9B20 containsObject:v13])
      {
        v14 = [metadataDict2 objectForKeyedSubscript:v13];
        if (!v14)
        {
          continue;
        }

        v15 = v14;
        v16 = [v7 objectForKeyedSubscript:v13];
        v17 = [metadataDict2 objectForKeyedSubscript:v13];
        v18 = [v16 isEqualToNumber:v17];
        goto LABEL_16;
      }

      if ([&off_1000C9B38 containsObject:v13])
      {
        v19 = [metadataDict2 objectForKeyedSubscript:v13];
        if (!v19)
        {
          continue;
        }

        v15 = v19;
        v16 = [v7 objectForKeyedSubscript:v13];
        v17 = [metadataDict2 objectForKeyedSubscript:v13];
        v18 = [v16 isEqualToString:v17];
        goto LABEL_16;
      }

      if ([&off_1000C9B50 containsObject:v13])
      {
        v20 = [metadataDict2 objectForKeyedSubscript:v13];
        if (v20)
        {
          v15 = v20;
          v16 = [v7 objectForKeyedSubscript:v13];
          v17 = [metadataDict2 objectForKeyedSubscript:v13];
          v18 = [v16 isEqualToSet:v17];
LABEL_16:
          v21 = v18;

          v10 += v21 & 1;
          continue;
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v29 objects:v43 count:16];
  }

  while (v9);
LABEL_22:

  v23 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v34 = v7;
    v35 = 2112;
    v36 = metadataDict2;
    v37 = 2048;
    v38 = v27;
    v39 = 2048;
    v40 = v26;
    v41 = 2048;
    v42 = v10;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "selfMetadata %@ otherMetadata %@: selfMetadataCount %lu,otherMetadataCount %lu,overlappedMetadataCount %lu", buf, 0x34u);
  }

  if (v10 == v27 && v10 == v26)
  {
    v22 = 1;
  }

  else if (v10 >= v27 || v10 >= v26)
  {
    if (v10 == v27 && v10 < v26)
    {
      v22 = 4;
    }

    else if (v10 < v27 && v10 == v26)
    {
      v22 = 3;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 2;
  }

  withCopy = v28;
LABEL_40:

  return v22;
}

- (id)metadataDict
{
  v3 = objc_opt_new();
  if ([(MOBundleContent *)self patternType])
  {
    v4 = [NSNumber numberWithUnsignedInteger:[(MOBundleContent *)self patternType]];
    [v3 setObject:v4 forKeyedSubscript:@"patternType"];
  }

  if ([(MOBundleContent *)self activityType])
  {
    v5 = [NSNumber numberWithUnsignedInteger:[(MOBundleContent *)self activityType]];
    [v3 setObject:v5 forKeyedSubscript:@"activityType"];
  }

  if ([(MOBundleContent *)self placeType])
  {
    v6 = [NSNumber numberWithUnsignedInteger:[(MOBundleContent *)self placeType]];
    [v3 setObject:v6 forKeyedSubscript:@"placeType"];
  }

  if ([(MOBundleContent *)self bundleType])
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(MOBundleContent *)self bundleType]];
    [v3 setObject:v7 forKeyedSubscript:@"bundleType"];
  }

  if ([(MOBundleContent *)self peopleClassification])
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(MOBundleContent *)self peopleClassification]];
    [v3 setObject:v8 forKeyedSubscript:@"peopleClassification"];
  }

  if ([(MOBundleContent *)self hasPersonName])
  {
    personNames = [(MOBundleContent *)self personNames];
    v10 = [NSSet setWithArray:personNames];
    [v3 setObject:v10 forKeyedSubscript:@"personNames"];
  }

  if ([(MOBundleContent *)self hasPlaceName])
  {
    placeName = [(MOBundleContent *)self placeName];
    [v3 setObject:placeName forKeyedSubscript:@"placeName"];
  }

  if ([(MOBundleContent *)self hasCityName])
  {
    cityName = [(MOBundleContent *)self cityName];
    [v3 setObject:cityName forKeyedSubscript:@"cityName"];
  }

  if ([(MOBundleContent *)self hasLocation])
  {
    location = [(MOBundleContent *)self location];
    [v3 setObject:location forKeyedSubscript:@"location"];
  }

  if ([(MOBundleContent *)self photoTrait])
  {
    v14 = [NSNumber numberWithUnsignedInteger:[(MOBundleContent *)self photoTrait]];
    [v3 setObject:v14 forKeyedSubscript:@"photoTrait"];
  }

  musicSuggestionArtistName = [(MOBundleContent *)self musicSuggestionArtistName];

  if (musicSuggestionArtistName)
  {
    musicSuggestionArtistName2 = [(MOBundleContent *)self musicSuggestionArtistName];
    [v3 setObject:musicSuggestionArtistName2 forKeyedSubscript:@"musicSuggestionArtistName"];
  }

  return v3;
}

@end