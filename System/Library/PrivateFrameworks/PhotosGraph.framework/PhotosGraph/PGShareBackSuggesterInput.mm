@interface PGShareBackSuggesterInput
+ (id)localDateIntervalForSuggesterInputs:(id)inputs withTimeIntervalPadding:(double)padding;
+ (id)suggesterInputsWithDictionaries:(id)dictionaries;
+ (id)universalDateIntervalForSuggesterInputs:(id)inputs withTimeIntervalPadding:(double)padding;
- (CLLocation)location;
- (NSDate)localCreationDate;
- (PGShareBackSuggesterInput)initWithDictionary:(id)dictionary;
@end

@implementation PGShareBackSuggesterInput

- (NSDate)localCreationDate
{
  creationDate = [(PGShareBackSuggesterInput *)self creationDate];
  timeZone = [(PGShareBackSuggesterInput *)self timeZone];
  if (timeZone)
  {
    v5 = [MEMORY[0x277D27690] localDateFromUniversalDate:creationDate inTimeZone:timeZone];
  }

  else
  {
    location = [(PGShareBackSuggesterInput *)self location];
    if (location)
    {
      [MEMORY[0x277D27690] localDateFromUniversalDate:creationDate atLocation:location];
    }

    else
    {
      [MEMORY[0x277D27690] localDateFromUniversalDate:creationDate];
    }
    v5 = ;
  }

  return v5;
}

- (CLLocation)location
{
  [(PGShareBackSuggesterInput *)self latitude];
  v4 = v3;
  [(PGShareBackSuggesterInput *)self longitude];
  v15 = CLLocationCoordinate2DMake(v4, v5);
  latitude = v15.latitude;
  longitude = v15.longitude;
  if (CLLocationCoordinate2DIsValid(v15))
  {
    v8 = objc_alloc(MEMORY[0x277CE41F8]);
    [(PGShareBackSuggesterInput *)self horizontalAccuracy];
    v10 = v9;
    creationDate = [(PGShareBackSuggesterInput *)self creationDate];
    v12 = [v8 initWithCoordinate:creationDate altitude:latitude horizontalAccuracy:longitude verticalAccuracy:0.0 timestamp:{v10, 0.0}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PGShareBackSuggesterInput)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = PGShareBackSuggesterInput;
  v5 = [(PGShareBackSuggesterInput *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataCreationDateKey"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataTimeZoneKey"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLatitudeKey"];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v5->_latitude = v12;
      v13 = [dictionaryCopy objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLongitudeKey"];
      [v13 doubleValue];
    }

    else
    {
      v15 = MEMORY[0x277CE4278];
      v5->_latitude = *MEMORY[0x277CE4278];
      v13 = [dictionaryCopy objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLongitudeKey"];
      v14 = *(v15 + 8);
    }

    v5->_longitude = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataHorizontalAccuracyKey"];
    [v16 doubleValue];
    v5->_horizontalAccuracy = v17;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLocalIdentifierKey"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v18;
  }

  return v5;
}

+ (id)universalDateIntervalForSuggesterInputs:(id)inputs withTimeIntervalPadding:(double)padding
{
  v32 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [inputsCopy countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v24;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(inputsCopy);
      }

      creationDate = [*(*(&v23 + 1) + 8 * i) creationDate];
      v13 = creationDate;
      if (v9)
      {
        v14 = [v9 earlierDate:creationDate];

        v9 = v14;
        if (v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = creationDate;
        if (v8)
        {
LABEL_8:
          v15 = [v8 laterDate:v13];

          v8 = v15;
          goto LABEL_11;
        }
      }

      v8 = v13;
LABEL_11:
    }

    v7 = [inputsCopy countByEnumeratingWithState:&v23 objects:v31 count:16];
  }

  while (v7);
  if (v9 && v8)
  {
    v16 = [v9 dateByAddingTimeInterval:-padding];
    v17 = [v8 dateByAddingTimeInterval:padding];
    v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v17];

    goto LABEL_20;
  }

LABEL_17:
  v19 = +[PGLogging sharedLogging];
  loggingConnection = [v19 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "+[PGShareBackSuggesterInput universalDateIntervalForSuggesterInputs:withTimeIntervalPadding:]";
    v29 = 2112;
    v30 = inputsCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s: Start or endDate nil for %@", buf, 0x16u);
  }

  v18 = objc_alloc_init(MEMORY[0x277CCA970]);
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)localDateIntervalForSuggesterInputs:(id)inputs withTimeIntervalPadding:(double)padding
{
  v32 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [inputsCopy countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v24;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(inputsCopy);
      }

      localCreationDate = [*(*(&v23 + 1) + 8 * i) localCreationDate];
      v13 = localCreationDate;
      if (v9)
      {
        v14 = [v9 earlierDate:localCreationDate];

        v9 = v14;
        if (v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = localCreationDate;
        if (v8)
        {
LABEL_8:
          v15 = [v8 laterDate:v13];

          v8 = v15;
          goto LABEL_11;
        }
      }

      v8 = v13;
LABEL_11:
    }

    v7 = [inputsCopy countByEnumeratingWithState:&v23 objects:v31 count:16];
  }

  while (v7);
  if (v9 && v8)
  {
    v16 = [v9 dateByAddingTimeInterval:-padding];
    v17 = [v8 dateByAddingTimeInterval:padding];
    v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v17];

    goto LABEL_20;
  }

LABEL_17:
  v19 = +[PGLogging sharedLogging];
  loggingConnection = [v19 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "+[PGShareBackSuggesterInput localDateIntervalForSuggesterInputs:withTimeIntervalPadding:]";
    v29 = 2112;
    v30 = inputsCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s: Start or endDate nil for %@", buf, 0x16u);
  }

  v18 = objc_alloc_init(MEMORY[0x277CCA970]);
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)suggesterInputsWithDictionaries:(id)dictionaries
{
  v20 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [PGShareBackSuggesterInput alloc];
        v12 = [(PGShareBackSuggesterInput *)v11 initWithDictionary:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end