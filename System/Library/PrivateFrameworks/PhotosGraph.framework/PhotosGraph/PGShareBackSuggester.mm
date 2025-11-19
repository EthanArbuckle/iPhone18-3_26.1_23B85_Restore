@interface PGShareBackSuggester
+ (id)momentUUIDsForExtendedUniversalDateInterval:(id)a3 suggesterInputs:(id)a4 momentFetchOptions:(id)a5;
+ (id)shareBackSuggesterForCMMWithLoggingConnection:(id)a3 photoLibrary:(id)a4 graph:(id)a5;
+ (id)shareBackSuggesterForExternalAssetProcessingWithLoggingConnection:(id)a3 photoLibrary:(id)a4 graph:(id)a5 serviceManager:(id)a6;
+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)a3 syndicationPhotoLibrary:(id)a4 systemPhotoLibrary:(id)a5 graph:(id)a6 faceIdentification:(id)a7 serviceManager:(id)a8;
+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)a3 syndicationPhotoLibrary:(id)a4 systemPhotoLibrary:(id)a5 graph:(id)a6 serviceManager:(id)a7;
- (PGShareBackSuggester)initWithSources:(id)a3 positiveProcessingValue:(unsigned __int16)a4 loggingConnection:(id)a5 photoLibrary:(id)a6 graph:(id)a7;
- (id)suggesterResultsForInputs:(id)a3 inGraph:(id)a4 error:(id *)a5;
- (id)suggesterResultsForUnclusteredSuggesterInputs:(id)a3 inGraph:(id)a4 error:(id *)a5;
@end

@implementation PGShareBackSuggester

- (id)suggesterResultsForUnclusteredSuggesterInputs:(id)a3 inGraph:(id)a4 error:(id *)a5
{
  v38[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v31 = a4;
  v28 = v7;
  v8 = [PGShareBackLocationSource suggesterInputsByDateIntervalForInputs:v7];
  v9 = [v8 allKeys];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v38[0] = v10;
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:1];
  v38[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v13 = [v9 sortedArrayUsingDescriptors:v12];

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v34;
    do
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v33 + 1) + 8 * v18);
        v21 = objc_autoreleasePoolPush();
        v22 = [v8 objectForKeyedSubscript:v20];
        v32 = v19;
        v23 = [(PGShareBackSuggester *)self suggesterResultsForInputs:v22 inGraph:v31 error:&v32];
        v16 = v32;

        if (v23)
        {
          [v30 addObjectsFromArray:v23];
        }

        objc_autoreleasePoolPop(v21);
        ++v18;
        v19 = v16;
      }

      while (v15 != v18);
      v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  if (a5)
  {
    v24 = v16;
    *a5 = v16;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)suggesterResultsForInputs:(id)a3 inGraph:(id)a4 error:(id *)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = self->_loggingConnection;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [v8 mutableCopy];
  v13 = [PGShareBackSuggesterInput universalDateIntervalForSuggesterInputs:v8 withTimeIntervalPadding:7200.0];
  photoLibrary = self->_photoLibrary;
  v40 = a5;
  if (photoLibrary)
  {
    v15 = [(PHPhotoLibrary *)photoLibrary librarySpecificFetchOptions];
    v16 = [PGShareBackSuggester momentUUIDsForExtendedUniversalDateInterval:v13 suggesterInputs:v8 momentFetchOptions:v15];

    v17 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v16 inGraph:v9];
    v47 = [v17 set];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[PGShareBackSuggester] No photo library available, this should only be hit during unit testing", buf, 2u);
    }

    v16 = [PGShareBackSuggesterInput localDateIntervalForSuggesterInputs:v8 withTimeIntervalPadding:7200.0];
    v47 = [v9 momentNodesOverlappingLocalDateInterval:v16];
  }

  v46 = [(NSArray *)self->_sources lastObject];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = self->_sources;
  v45 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v45)
  {
    v44 = *v55;
    oslog = v10;
    v38 = v8;
    v41 = v11;
    v42 = v9;
    v39 = v13;
LABEL_8:
    v18 = 0;
    while (1)
    {
      if (*v55 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v54 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      v21 = [v19 validInputsForSource:v12 givenSuggesterResults:v11];
      v53 = 0;
      v22 = [v19 suggesterResultsForInputs:v21 momentNodes:v47 inGraph:v9 error:&v53];
      v23 = v53;
      if (v23)
      {
        break;
      }

      [v11 addObjectsFromArray:v22];
      if (v19 != v46)
      {
        context = v20;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v50;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v50 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v49 + 1) + 8 * i);
              if ((self->_positiveProcessingValue & [v29 processingValue]) != 0)
              {
                v30 = [v29 suggesterInputs];
                [v12 removeObjectsInArray:v30];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v49 objects:v58 count:16];
          }

          while (v26);
        }

        v11 = v41;
        v9 = v42;
        v20 = context;
        if (![v12 count])
        {
          v31 = 0;
          v22 = v24;
          v10 = oslog;
          v8 = v38;
          goto LABEL_30;
        }
      }

      objc_autoreleasePoolPop(v20);
      if (++v18 == v45)
      {
        v10 = oslog;
        v8 = v38;
        v13 = v39;
        v45 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (v45)
        {
          goto LABEL_8;
        }

        goto LABEL_25;
      }
    }

    v31 = v23;
    context = v20;
    v10 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v8 = v38;
      v60 = v38;
      v61 = 2112;
      v62 = v31;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Stopping due to error for suggester inputs: %@ - %@", buf, 0x16u);
    }

    else
    {
      v8 = v38;
    }

LABEL_30:

    objc_autoreleasePoolPop(context);
    v13 = v39;
    if (!v31)
    {
      goto LABEL_33;
    }

    if (v40)
    {
      v32 = v31;
      v33 = 0;
      *v40 = v31;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
LABEL_25:

LABEL_33:
    if (![v11 count] && !objc_msgSend(v47, "count"))
    {
      v34 = [[PGShareBackSuggesterResult alloc] initWithInputs:v8 processingValue:1 momentNodes:v47];
      [v11 addObject:v34];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v13;
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGShareBackLocationSource] No moments for universal date interval %@", buf, 0xCu);
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v60 = v8;
      v61 = 2112;
      v62 = v11;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Results for suggester inputs: %@ - %@", buf, 0x16u);
    }

    v33 = v11;
    v31 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

- (PGShareBackSuggester)initWithSources:(id)a3 positiveProcessingValue:(unsigned __int16)a4 loggingConnection:(id)a5 photoLibrary:(id)a6 graph:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v35.receiver = self;
  v35.super_class = PGShareBackSuggester;
  v16 = [(PGShareBackSuggester *)&v35 init];
  v17 = v16;
  if (v16)
  {
    v29 = v14;
    objc_storeStrong(&v16->_photoLibrary, a6);
    v17->_positiveProcessingValue = a4;
    objc_storeStrong(&v17->_loggingConnection, a5);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Initialized suggester with sources: %@", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = v12;
    v19 = v12;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        v23 = 0;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * v23);
          v25 = objc_autoreleasePoolPush();
          if ([v24 prepareSourceWithGraph:v15])
          {
            [(NSArray *)v18 addObject:v24];
          }

          objc_autoreleasePoolPop(v25);
          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v21);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v18;
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Available sources: %@", buf, 0xCu);
    }

    sources = v17->_sources;
    v17->_sources = v18;

    v14 = v29;
    v12 = v30;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)momentUUIDsForExtendedUniversalDateInterval:(id)a3 suggesterInputs:(id)a4 momentFetchOptions:(id)a5
{
  v31[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = MEMORY[0x277CCAC30];
  v9 = [v6 startDate];
  v10 = [v6 endDate];
  v11 = [v8 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"endDate", v9, @"startDate", v10];

  v12 = [MEMORY[0x277D3ACF0] fetchPredicateForExcludingOriginatorState:24];
  v13 = MEMORY[0x277CCA920];
  v31[0] = v11;
  v31[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  [v7 setInternalPredicate:v15];

  v16 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:v7];
  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * i) uuid];
        [v17 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)shareBackSuggesterForCMMWithLoggingConnection:(id)a3 photoLibrary:(id)a4 graph:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:v10];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v13 = [[a1 alloc] initWithSources:v12 positiveProcessingValue:18 loggingConnection:v10 photoLibrary:v9 graph:v8];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)shareBackSuggesterForExternalAssetProcessingWithLoggingConnection:(id)a3 photoLibrary:(id)a4 graph:(id)a5 serviceManager:(id)a6
{
  v10 = MEMORY[0x277CBEB18];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v10);
  v16 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:v14];
  [v15 addObject:v16];

  v17 = [(PGShareBackSource *)[PGShareBackSignificantLocationSource alloc] initWithLoggingConnection:v14];
  [v15 addObject:v17];

  v18 = [PGShareBackCoreRoutineSource alloc];
  v19 = [v11 routineService];

  v20 = [(PGShareBackCoreRoutineSource *)v18 initWithRoutineService:v19 loggingConnection:v14];
  [v15 addObject:v20];

  v21 = [[PGShareBackSceneprintSource alloc] initWithLoggingConnection:v14 photoLibrary:v13];
  [v15 addObject:v21];

  v22 = objc_alloc_init(MEMORY[0x277D276B0]);
  v23 = [[PGShareBackFacesSource alloc] initWithLoggingConnection:v14 photoLibrary:v13 faceIdentification:v22];
  [v15 addObject:v23];

  v24 = [[PGShareBackPetSource alloc] initWithLoggingConnection:v14 photoLibrary:v13 faceIdentification:v22];
  [v15 addObject:v24];

  v25 = [[a1 alloc] initWithSources:v15 positiveProcessingValue:15601 loggingConnection:v14 photoLibrary:v13 graph:v12];

  return v25;
}

+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)a3 syndicationPhotoLibrary:(id)a4 systemPhotoLibrary:(id)a5 graph:(id)a6 faceIdentification:(id)a7 serviceManager:(id)a8
{
  v14 = MEMORY[0x277CBEB18];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(v14);
  v22 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:v20];
  [v21 addObject:v22];

  v23 = [(PGShareBackSource *)[PGShareBackSignificantLocationSource alloc] initWithLoggingConnection:v20];
  [v21 addObject:v23];

  v24 = [PGShareBackCoreRoutineSource alloc];
  v25 = [v15 routineService];

  v26 = [(PGShareBackCoreRoutineSource *)v24 initWithRoutineService:v25 loggingConnection:v20];
  [v21 addObject:v26];

  v27 = [[PGShareBackSceneprintSource alloc] initWithLoggingConnection:v20 photoLibrary:v18];
  [v21 addObject:v27];

  v28 = [[PGShareBackFacesSource alloc] initWithLoggingConnection:v20 photoLibrary:v19 faceIdentification:v16];
  [v21 addObject:v28];

  v29 = [[PGShareBackPetSource alloc] initWithLoggingConnection:v20 photoLibrary:v19 faceIdentification:v16];
  [v21 addObject:v29];

  v30 = [[a1 alloc] initWithSources:v21 positiveProcessingValue:32496 loggingConnection:v20 photoLibrary:v18 graph:v17];

  return v30;
}

+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)a3 syndicationPhotoLibrary:(id)a4 systemPhotoLibrary:(id)a5 graph:(id)a6 serviceManager:(id)a7
{
  v12 = MEMORY[0x277D276B0];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v12);
  v19 = [a1 shareBackSuggesterForSyndicationWithLoggingConnection:v17 syndicationPhotoLibrary:v16 systemPhotoLibrary:v15 graph:v14 faceIdentification:v18 serviceManager:v13];

  return v19;
}

@end