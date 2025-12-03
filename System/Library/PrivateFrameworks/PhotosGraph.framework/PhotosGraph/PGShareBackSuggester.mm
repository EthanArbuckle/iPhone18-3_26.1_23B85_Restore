@interface PGShareBackSuggester
+ (id)momentUUIDsForExtendedUniversalDateInterval:(id)interval suggesterInputs:(id)inputs momentFetchOptions:(id)options;
+ (id)shareBackSuggesterForCMMWithLoggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph;
+ (id)shareBackSuggesterForExternalAssetProcessingWithLoggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph serviceManager:(id)manager;
+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)connection syndicationPhotoLibrary:(id)library systemPhotoLibrary:(id)photoLibrary graph:(id)graph faceIdentification:(id)identification serviceManager:(id)manager;
+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)connection syndicationPhotoLibrary:(id)library systemPhotoLibrary:(id)photoLibrary graph:(id)graph serviceManager:(id)manager;
- (PGShareBackSuggester)initWithSources:(id)sources positiveProcessingValue:(unsigned __int16)value loggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph;
- (id)suggesterResultsForInputs:(id)inputs inGraph:(id)graph error:(id *)error;
- (id)suggesterResultsForUnclusteredSuggesterInputs:(id)inputs inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackSuggester

- (id)suggesterResultsForUnclusteredSuggesterInputs:(id)inputs inGraph:(id)graph error:(id *)error
{
  v38[2] = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  graphCopy = graph;
  v28 = inputsCopy;
  v8 = [PGShareBackLocationSource suggesterInputsByDateIntervalForInputs:inputsCopy];
  allKeys = [v8 allKeys];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v38[0] = v10;
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:1];
  v38[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v13 = [allKeys sortedArrayUsingDescriptors:v12];

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
        v23 = [(PGShareBackSuggester *)self suggesterResultsForInputs:v22 inGraph:graphCopy error:&v32];
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

  if (error)
  {
    v24 = v16;
    *error = v16;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)suggesterResultsForInputs:(id)inputs inGraph:(id)graph error:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  graphCopy = graph;
  v10 = self->_loggingConnection;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [inputsCopy mutableCopy];
  v13 = [PGShareBackSuggesterInput universalDateIntervalForSuggesterInputs:inputsCopy withTimeIntervalPadding:7200.0];
  photoLibrary = self->_photoLibrary;
  errorCopy = error;
  if (photoLibrary)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)photoLibrary librarySpecificFetchOptions];
    v16 = [PGShareBackSuggester momentUUIDsForExtendedUniversalDateInterval:v13 suggesterInputs:inputsCopy momentFetchOptions:librarySpecificFetchOptions];

    v17 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v16 inGraph:graphCopy];
    v47 = [v17 set];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[PGShareBackSuggester] No photo library available, this should only be hit during unit testing", buf, 2u);
    }

    v16 = [PGShareBackSuggesterInput localDateIntervalForSuggesterInputs:inputsCopy withTimeIntervalPadding:7200.0];
    v47 = [graphCopy momentNodesOverlappingLocalDateInterval:v16];
  }

  lastObject = [(NSArray *)self->_sources lastObject];
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
    v38 = inputsCopy;
    v41 = v11;
    v42 = graphCopy;
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
      v22 = [v19 suggesterResultsForInputs:v21 momentNodes:v47 inGraph:graphCopy error:&v53];
      v23 = v53;
      if (v23)
      {
        break;
      }

      [v11 addObjectsFromArray:v22];
      if (v19 != lastObject)
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
                suggesterInputs = [v29 suggesterInputs];
                [v12 removeObjectsInArray:suggesterInputs];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v49 objects:v58 count:16];
          }

          while (v26);
        }

        v11 = v41;
        graphCopy = v42;
        v20 = context;
        if (![v12 count])
        {
          v31 = 0;
          v22 = v24;
          v10 = oslog;
          inputsCopy = v38;
          goto LABEL_30;
        }
      }

      objc_autoreleasePoolPop(v20);
      if (++v18 == v45)
      {
        v10 = oslog;
        inputsCopy = v38;
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
      inputsCopy = v38;
      v60 = v38;
      v61 = 2112;
      v62 = v31;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Stopping due to error for suggester inputs: %@ - %@", buf, 0x16u);
    }

    else
    {
      inputsCopy = v38;
    }

LABEL_30:

    objc_autoreleasePoolPop(context);
    v13 = v39;
    if (!v31)
    {
      goto LABEL_33;
    }

    if (errorCopy)
    {
      v32 = v31;
      v33 = 0;
      *errorCopy = v31;
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
      v34 = [[PGShareBackSuggesterResult alloc] initWithInputs:inputsCopy processingValue:1 momentNodes:v47];
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
      v60 = inputsCopy;
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

- (PGShareBackSuggester)initWithSources:(id)sources positiveProcessingValue:(unsigned __int16)value loggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph
{
  v39 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  connectionCopy = connection;
  libraryCopy = library;
  graphCopy = graph;
  v35.receiver = self;
  v35.super_class = PGShareBackSuggester;
  v16 = [(PGShareBackSuggester *)&v35 init];
  v17 = v16;
  if (v16)
  {
    v29 = libraryCopy;
    objc_storeStrong(&v16->_photoLibrary, library);
    v17->_positiveProcessingValue = value;
    objc_storeStrong(&v17->_loggingConnection, connection);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = sourcesCopy;
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Initialized suggester with sources: %@", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = sourcesCopy;
    v19 = sourcesCopy;
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
          if ([v24 prepareSourceWithGraph:graphCopy])
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

    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v18;
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Available sources: %@", buf, 0xCu);
    }

    sources = v17->_sources;
    v17->_sources = v18;

    libraryCopy = v29;
    sourcesCopy = v30;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)momentUUIDsForExtendedUniversalDateInterval:(id)interval suggesterInputs:(id)inputs momentFetchOptions:(id)options
{
  v31[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  optionsCopy = options;
  v8 = MEMORY[0x277CCAC30];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v11 = [v8 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"endDate", startDate, @"startDate", endDate];

  v12 = [MEMORY[0x277D3ACF0] fetchPredicateForExcludingOriginatorState:24];
  v13 = MEMORY[0x277CCA920];
  v31[0] = v11;
  v31[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  [optionsCopy setInternalPredicate:v15];

  v16 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:optionsCopy];
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

        uuid = [*(*(&v26 + 1) + 8 * i) uuid];
        [v17 addObject:uuid];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)shareBackSuggesterForCMMWithLoggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph
{
  v16[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  libraryCopy = library;
  connectionCopy = connection;
  v11 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:connectionCopy];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v13 = [[self alloc] initWithSources:v12 positiveProcessingValue:18 loggingConnection:connectionCopy photoLibrary:libraryCopy graph:graphCopy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)shareBackSuggesterForExternalAssetProcessingWithLoggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph serviceManager:(id)manager
{
  v10 = MEMORY[0x277CBEB18];
  managerCopy = manager;
  graphCopy = graph;
  libraryCopy = library;
  connectionCopy = connection;
  v15 = objc_alloc_init(v10);
  v16 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:connectionCopy];
  [v15 addObject:v16];

  v17 = [(PGShareBackSource *)[PGShareBackSignificantLocationSource alloc] initWithLoggingConnection:connectionCopy];
  [v15 addObject:v17];

  v18 = [PGShareBackCoreRoutineSource alloc];
  routineService = [managerCopy routineService];

  v20 = [(PGShareBackCoreRoutineSource *)v18 initWithRoutineService:routineService loggingConnection:connectionCopy];
  [v15 addObject:v20];

  v21 = [[PGShareBackSceneprintSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy];
  [v15 addObject:v21];

  v22 = objc_alloc_init(MEMORY[0x277D276B0]);
  v23 = [[PGShareBackFacesSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:v22];
  [v15 addObject:v23];

  v24 = [[PGShareBackPetSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:v22];
  [v15 addObject:v24];

  v25 = [[self alloc] initWithSources:v15 positiveProcessingValue:15601 loggingConnection:connectionCopy photoLibrary:libraryCopy graph:graphCopy];

  return v25;
}

+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)connection syndicationPhotoLibrary:(id)library systemPhotoLibrary:(id)photoLibrary graph:(id)graph faceIdentification:(id)identification serviceManager:(id)manager
{
  v14 = MEMORY[0x277CBEB18];
  managerCopy = manager;
  identificationCopy = identification;
  graphCopy = graph;
  photoLibraryCopy = photoLibrary;
  libraryCopy = library;
  connectionCopy = connection;
  v21 = objc_alloc_init(v14);
  v22 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:connectionCopy];
  [v21 addObject:v22];

  v23 = [(PGShareBackSource *)[PGShareBackSignificantLocationSource alloc] initWithLoggingConnection:connectionCopy];
  [v21 addObject:v23];

  v24 = [PGShareBackCoreRoutineSource alloc];
  routineService = [managerCopy routineService];

  v26 = [(PGShareBackCoreRoutineSource *)v24 initWithRoutineService:routineService loggingConnection:connectionCopy];
  [v21 addObject:v26];

  v27 = [[PGShareBackSceneprintSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:photoLibraryCopy];
  [v21 addObject:v27];

  v28 = [[PGShareBackFacesSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:identificationCopy];
  [v21 addObject:v28];

  v29 = [[PGShareBackPetSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:identificationCopy];
  [v21 addObject:v29];

  v30 = [[self alloc] initWithSources:v21 positiveProcessingValue:32496 loggingConnection:connectionCopy photoLibrary:photoLibraryCopy graph:graphCopy];

  return v30;
}

+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)connection syndicationPhotoLibrary:(id)library systemPhotoLibrary:(id)photoLibrary graph:(id)graph serviceManager:(id)manager
{
  v12 = MEMORY[0x277D276B0];
  managerCopy = manager;
  graphCopy = graph;
  photoLibraryCopy = photoLibrary;
  libraryCopy = library;
  connectionCopy = connection;
  v18 = objc_alloc_init(v12);
  v19 = [self shareBackSuggesterForSyndicationWithLoggingConnection:connectionCopy syndicationPhotoLibrary:libraryCopy systemPhotoLibrary:photoLibraryCopy graph:graphCopy faceIdentification:v18 serviceManager:managerCopy];

  return v19;
}

@end