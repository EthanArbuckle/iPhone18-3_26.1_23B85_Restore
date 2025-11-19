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
    v6 = [v4 creationDate];
    v7 = [v5 exitDate];
    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    v9 = [v5 location];
    v10 = [v9 location];
    v11 = [v5 entryDate];
    v12 = [v5 exitDate];
    v13 = [v5 location];
    v14 = [v13 dataPointCount];
    a1 = [a1 initWithDate:v6 type:v8 location:v10 entry:v11 exit:v12 dataPointCount:v14 confidence:*MEMORY[0x277D01470] placeInference:0];

    v15 = a1;
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedVisit", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (id)initWithLearnedVisit:()RTExtensions inferredMapItem:finerGranularityInferredMapItem:userPlaceType:userPlaceTypeSource:loiIdentifier:
{
  v12 = a3;
  v13 = a5;
  v14 = MEMORY[0x277D011D8];
  v15 = a8;
  v16 = a4;
  v17 = [v16 mapItem];
  v18 = [v14 placeInferencePlaceTypeFromMapItem:v17 userType:a6 source:{objc_msgSend(v12, "placeSource")}];

  v19 = [v16 mapItem];

  v20 = [v19 copy];
  if (v20)
  {
    [v20 setSource:{objc_msgSend(v12, "placeSource")}];
  }

  v21 = [v13 mapItem];
  v22 = [v21 copy];

  if (v22)
  {
    [v22 setSource:{objc_msgSend(v13, "source")}];
  }

  v23 = objc_alloc(MEMORY[0x277D011D8]);
  [v12 location];
  v24 = v13;
  v25 = v40 = v13;
  v26 = [v25 location];
  [v12 placeConfidence];
  v28 = v27;
  [v24 confidence];
  v30 = [v23 initWithMapItem:v20 finerGranularityMapItem:v22 userType:a6 userTypeSource:a7 placeType:v18 referenceLocation:v26 confidence:v28 finerGranularityMapItemConfidence:v29 loiIdentifier:v15];

  v31 = [v12 creationDate];
  v32 = [v12 location];
  v33 = [v32 location];
  v34 = [v12 entryDate];
  v35 = [v12 exitDate];
  v36 = [v12 location];
  v42 = v20;
  v37 = [v36 dataPointCount];
  [v12 placeConfidence];
  v38 = [a1 initWithDate:v31 type:3 location:v33 entry:v34 exit:v35 dataPointCount:v37 confidence:v30 placeInference:3 source:?];

  return v38;
}

- (id)dictionaryOutForBluePOIReplayWithBluePOIQueries:()RTExtensions
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CCABB0];
  v7 = [a1 date];
  [v7 timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v5 setValue:v8 forKey:@"date"];

  v9 = [a1 date];
  v10 = [v9 getFormattedDateString];
  [v5 setValue:v10 forKey:@"dateAsString"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [a1 entry];
  [v12 timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  [v5 setValue:v13 forKey:@"entry"];

  v14 = [a1 date];
  v15 = [v14 getFormattedDateString];
  [v5 setValue:v15 forKey:@"entryDateAsString"];

  v16 = MEMORY[0x277CCABB0];
  v17 = [a1 entry];
  [v17 timeIntervalSince1970];
  v18 = [v16 numberWithDouble:?];
  [v5 setValue:v18 forKey:@"exit"];

  v19 = [a1 date];
  v20 = [v19 getFormattedDateString];
  [v5 setValue:v20 forKey:@"exitDateAsString"];

  v21 = [a1 location];
  v22 = [v21 description];
  [v5 setValue:v22 forKey:@"location"];

  v23 = [MEMORY[0x277D01428] stringFromVisitSource:{objc_msgSend(a1, "source")}];
  [v5 setValue:v23 forKey:@"source"];

  v24 = [MEMORY[0x277CBEB38] dictionary];
  v25 = [a1 placeInference];
  v26 = [v25 mapItem];
  v27 = [v26 description];
  [v24 setValue:v27 forKey:@"mapItem"];

  v28 = MEMORY[0x277CCABB0];
  v29 = [a1 placeInference];
  [v29 confidence];
  v30 = [v28 numberWithDouble:?];
  [v24 setValue:v30 forKey:@"confidence"];

  v31 = [a1 placeInference];
  v32 = [v31 finerGranularityMapItem];
  v33 = [v32 description];
  [v24 setValue:v33 forKey:@"finerGranularityMapItem"];

  v34 = MEMORY[0x277CCABB0];
  v35 = [a1 placeInference];
  [v35 finerGranularityMapItemConfidence];
  v36 = [v34 numberWithDouble:?];
  [v24 setValue:v36 forKey:@"finerGranularityMapItemConfidence"];

  v37 = MEMORY[0x277D011D8];
  v38 = [a1 placeInference];
  v39 = [v37 userSpecificPlaceTypeToString:{objc_msgSend(v38, "userType")}];
  [v24 setValue:v39 forKey:@"userType"];

  v40 = MEMORY[0x277D011D8];
  v41 = [a1 placeInference];
  v42 = [v40 userSpecificPlaceTypeSourceToString:{objc_msgSend(v41, "userTypeSource")}];
  [v24 setValue:v42 forKey:@"userTypeSource"];

  v43 = MEMORY[0x277D011D8];
  v44 = [a1 placeInference];
  v45 = [v43 placeTypeToString:{objc_msgSend(v44, "placeType")}];
  [v24 setValue:v45 forKey:@"placeType"];

  v46 = [a1 placeInference];
  v47 = [v46 preferredName];
  [v24 setValue:v47 forKey:@"preferredName"];

  v48 = [a1 placeInference];
  v49 = [v48 loiIdentifier];
  v50 = [v49 UUIDString];
  [v24 setValue:v50 forKey:@"loiIdentifier"];

  [v5 setValue:v24 forKey:@"label"];
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

        v57 = [*(*(&v59 + 1) + 8 * i) outputToDictionary];
        [v51 addObject:v57];
      }

      v54 = [v52 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v54);
  }

  [v5 setValue:v51 forKey:@"bluePOIQueries"];

  return v5;
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