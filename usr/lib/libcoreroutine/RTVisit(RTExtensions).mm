@interface RTVisit(RTExtensions)
+ (__CFString)stringFromVisitSource:()RTExtensions;
+ (id)visits:()RTExtensions withLoiIdentifier:;
+ (id)visitsWithExit:()RTExtensions beforeDate:;
+ (id)visitsWithExit:()RTExtensions dateInterval:;
- (id)dictionaryOutForBluePOIReplayWithBluePOIQueries:()RTExtensions;
- (id)initWithLearnedVisit:()RTExtensions;
- (id)initWithLearnedVisit:()RTExtensions inferredMapItem:finerGranularityInferredMapItem:userPlaceType:userPlaceTypeSource:loiIdentifier:;
@end

@implementation RTVisit(RTExtensions)

- (id)initWithLearnedVisit:()RTExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    creationDate = [v4 creationDate];
    exitDate = [v5 exitDate];
    if (exitDate)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    location = [v5 location];
    v9Location = [location location];
    entryDate = [v5 entryDate];
    exitDate2 = [v5 exitDate];
    location2 = [v5 location];
    dataPointCount = [location2 dataPointCount];
    self = [self initWithDate:creationDate type:v8 location:v9Location entry:entryDate exit:exitDate2 dataPointCount:dataPointCount confidence:*MEMORY[0x277D01470] placeInference:0];

    selfCopy = self;
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedVisit", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initWithLearnedVisit:()RTExtensions inferredMapItem:finerGranularityInferredMapItem:userPlaceType:userPlaceTypeSource:loiIdentifier:
{
  v12 = a3;
  v13 = a5;
  v14 = MEMORY[0x277D011D8];
  v15 = a8;
  v16 = a4;
  mapItem = [v16 mapItem];
  v18 = [v14 placeInferencePlaceTypeFromMapItem:mapItem userType:a6 source:{objc_msgSend(v12, "placeSource")}];

  mapItem2 = [v16 mapItem];

  v20 = [mapItem2 copy];
  if (v20)
  {
    [v20 setSource:{objc_msgSend(v12, "placeSource")}];
  }

  mapItem3 = [v13 mapItem];
  v22 = [mapItem3 copy];

  if (v22)
  {
    [v22 setSource:{objc_msgSend(v13, "source")}];
  }

  v23 = objc_alloc(MEMORY[0x277D011D8]);
  [v12 location];
  v24 = v13;
  v25 = v40 = v13;
  location = [v25 location];
  [v12 placeConfidence];
  v28 = v27;
  [v24 confidence];
  v30 = [v23 initWithMapItem:v20 finerGranularityMapItem:v22 userType:a6 userTypeSource:a7 placeType:v18 referenceLocation:location confidence:v28 finerGranularityMapItemConfidence:v29 loiIdentifier:v15];

  creationDate = [v12 creationDate];
  location2 = [v12 location];
  v32Location = [location2 location];
  entryDate = [v12 entryDate];
  exitDate = [v12 exitDate];
  location3 = [v12 location];
  v42 = v20;
  dataPointCount = [location3 dataPointCount];
  [v12 placeConfidence];
  v38 = [self initWithDate:creationDate type:3 location:v32Location entry:entryDate exit:exitDate dataPointCount:dataPointCount confidence:v30 placeInference:3 source:?];

  return v38;
}

- (id)dictionaryOutForBluePOIReplayWithBluePOIQueries:()RTExtensions
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CCABB0];
  date = [self date];
  [date timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [dictionary setValue:v8 forKey:@"date"];

  date2 = [self date];
  getFormattedDateString = [date2 getFormattedDateString];
  [dictionary setValue:getFormattedDateString forKey:@"dateAsString"];

  v11 = MEMORY[0x277CCABB0];
  entry = [self entry];
  [entry timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  [dictionary setValue:v13 forKey:@"entry"];

  date3 = [self date];
  getFormattedDateString2 = [date3 getFormattedDateString];
  [dictionary setValue:getFormattedDateString2 forKey:@"entryDateAsString"];

  v16 = MEMORY[0x277CCABB0];
  entry2 = [self entry];
  [entry2 timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [dictionary setValue:v18 forKey:@"exit"];

  date4 = [self date];
  getFormattedDateString3 = [date4 getFormattedDateString];
  [dictionary setValue:getFormattedDateString3 forKey:@"exitDateAsString"];

  location = [self location];
  v22 = [location description];
  [dictionary setValue:v22 forKey:@"location"];

  v23 = [MEMORY[0x277D01428] stringFromVisitSource:{objc_msgSend(self, "source")}];
  [dictionary setValue:v23 forKey:@"source"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  placeInference = [self placeInference];
  mapItem = [placeInference mapItem];
  v27 = [mapItem description];
  [dictionary2 setValue:v27 forKey:@"mapItem"];

  v28 = MEMORY[0x277CCABB0];
  placeInference2 = [self placeInference];
  [placeInference2 confidence];
  v30 = [v28 numberWithDouble:?];
  [dictionary2 setValue:v30 forKey:@"confidence"];

  placeInference3 = [self placeInference];
  finerGranularityMapItem = [placeInference3 finerGranularityMapItem];
  v33 = [finerGranularityMapItem description];
  [dictionary2 setValue:v33 forKey:@"finerGranularityMapItem"];

  v34 = MEMORY[0x277CCABB0];
  placeInference4 = [self placeInference];
  [placeInference4 finerGranularityMapItemConfidence];
  v36 = [v34 numberWithDouble:?];
  [dictionary2 setValue:v36 forKey:@"finerGranularityMapItemConfidence"];

  v37 = MEMORY[0x277D011D8];
  placeInference5 = [self placeInference];
  v39 = [v37 userSpecificPlaceTypeToString:{objc_msgSend(placeInference5, "userType")}];
  [dictionary2 setValue:v39 forKey:@"userType"];

  v40 = MEMORY[0x277D011D8];
  placeInference6 = [self placeInference];
  v42 = [v40 userSpecificPlaceTypeSourceToString:{objc_msgSend(placeInference6, "userTypeSource")}];
  [dictionary2 setValue:v42 forKey:@"userTypeSource"];

  v43 = MEMORY[0x277D011D8];
  placeInference7 = [self placeInference];
  v45 = [v43 placeTypeToString:{objc_msgSend(placeInference7, "placeType")}];
  [dictionary2 setValue:v45 forKey:@"placeType"];

  placeInference8 = [self placeInference];
  preferredName = [placeInference8 preferredName];
  [dictionary2 setValue:preferredName forKey:@"preferredName"];

  placeInference9 = [self placeInference];
  loiIdentifier = [placeInference9 loiIdentifier];
  uUIDString = [loiIdentifier UUIDString];
  [dictionary2 setValue:uUIDString forKey:@"loiIdentifier"];

  [dictionary setValue:dictionary2 forKey:@"label"];
  v51 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v52 = v4;
  v53 = [v52 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v60;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v60 != v55)
        {
          objc_enumerationMutation(v52);
        }

        outputToDictionary = [*(*(&v59 + 1) + 8 * i) outputToDictionary];
        [v51 addObject:outputToDictionary];
      }

      v54 = [v52 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v54);
  }

  [dictionary setValue:v51 forKey:@"bluePOIQueries"];

  return dictionary;
}

+ (id)visitsWithExit:()RTExtensions dateInterval:
{
  v5 = a4;
  v6 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__RTVisit_RTExtensions__visitsWithExit_dateInterval___block_invoke;
  v12[3] = &unk_2788C86C0;
  v13 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 predicateWithBlock:v12];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  return v10;
}

+ (id)visitsWithExit:()RTExtensions beforeDate:
{
  v5 = a4;
  v6 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__RTVisit_RTExtensions__visitsWithExit_beforeDate___block_invoke;
  v12[3] = &unk_2788C86C0;
  v13 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 predicateWithBlock:v12];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  return v10;
}

+ (id)visits:()RTExtensions withLoiIdentifier:
{
  v5 = a4;
  v6 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__RTVisit_RTExtensions__visits_withLoiIdentifier___block_invoke;
  v12[3] = &unk_2788C86C0;
  v13 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 predicateWithBlock:v12];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  return v10;
}

+ (__CFString)stringFromVisitSource:()RTExtensions
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D1418[a3 - 1];
  }
}

@end