@interface PGShareBackSuggesterInput
+ (id)localDateIntervalForSuggesterInputs:(id)a3 withTimeIntervalPadding:(double)a4;
+ (id)suggesterInputsWithDictionaries:(id)a3;
+ (id)universalDateIntervalForSuggesterInputs:(id)a3 withTimeIntervalPadding:(double)a4;
- (CLLocation)location;
- (NSDate)localCreationDate;
- (PGShareBackSuggesterInput)initWithDictionary:(id)a3;
@end

@implementation PGShareBackSuggesterInput

- (NSDate)localCreationDate
{
  v3 = [(PGShareBackSuggesterInput *)self creationDate];
  v4 = [(PGShareBackSuggesterInput *)self timeZone];
  if (v4)
  {
    v5 = [MEMORY[0x277D27690] localDateFromUniversalDate:v3 inTimeZone:v4];
  }

  else
  {
    v6 = [(PGShareBackSuggesterInput *)self location];
    if (v6)
    {
      [MEMORY[0x277D27690] localDateFromUniversalDate:v3 atLocation:v6];
    }

    else
    {
      [MEMORY[0x277D27690] localDateFromUniversalDate:v3];
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
    v11 = [(PGShareBackSuggesterInput *)self creationDate];
    v12 = [v8 initWithCoordinate:v11 altitude:latitude horizontalAccuracy:longitude verticalAccuracy:0.0 timestamp:{v10, 0.0}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PGShareBackSuggesterInput)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PGShareBackSuggesterInput;
  v5 = [(PGShareBackSuggesterInput *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataCreationDateKey"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v8 = [v4 objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataTimeZoneKey"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v10 = [v4 objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLatitudeKey"];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v5->_latitude = v12;
      v13 = [v4 objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLongitudeKey"];
      [v13 doubleValue];
    }

    else
    {
      v15 = MEMORY[0x277CE4278];
      v5->_latitude = *MEMORY[0x277CE4278];
      v13 = [v4 objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLongitudeKey"];
      v14 = *(v15 + 8);
    }

    v5->_longitude = v14;
    v16 = [v4 objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataHorizontalAccuracyKey"];
    [v16 doubleValue];
    v5->_horizontalAccuracy = v17;

    v18 = [v4 objectForKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLocalIdentifierKey"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v18;
  }

  return v5;
}

+ (id)universalDateIntervalForSuggesterInputs:(id)a3 withTimeIntervalPadding:(double)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v23 + 1) + 8 * i) creationDate];
      v13 = v12;
      if (v9)
      {
        v14 = [v9 earlierDate:v12];

        v9 = v14;
        if (v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = v12;
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

    v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  }

  while (v7);
  if (v9 && v8)
  {
    v16 = [v9 dateByAddingTimeInterval:-a4];
    v17 = [v8 dateByAddingTimeInterval:a4];
    v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v17];

    goto LABEL_20;
  }

LABEL_17:
  v19 = +[PGLogging sharedLogging];
  v20 = [v19 loggingConnection];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "+[PGShareBackSuggesterInput universalDateIntervalForSuggesterInputs:withTimeIntervalPadding:]";
    v29 = 2112;
    v30 = v5;
    _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "%s: Start or endDate nil for %@", buf, 0x16u);
  }

  v18 = objc_alloc_init(MEMORY[0x277CCA970]);
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)localDateIntervalForSuggesterInputs:(id)a3 withTimeIntervalPadding:(double)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v23 + 1) + 8 * i) localCreationDate];
      v13 = v12;
      if (v9)
      {
        v14 = [v9 earlierDate:v12];

        v9 = v14;
        if (v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = v12;
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

    v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  }

  while (v7);
  if (v9 && v8)
  {
    v16 = [v9 dateByAddingTimeInterval:-a4];
    v17 = [v8 dateByAddingTimeInterval:a4];
    v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v17];

    goto LABEL_20;
  }

LABEL_17:
  v19 = +[PGLogging sharedLogging];
  v20 = [v19 loggingConnection];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "+[PGShareBackSuggesterInput localDateIntervalForSuggesterInputs:withTimeIntervalPadding:]";
    v29 = 2112;
    v30 = v5;
    _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "%s: Start or endDate nil for %@", buf, 0x16u);
  }

  v18 = objc_alloc_init(MEMORY[0x277CCA970]);
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)suggesterInputsWithDictionaries:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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