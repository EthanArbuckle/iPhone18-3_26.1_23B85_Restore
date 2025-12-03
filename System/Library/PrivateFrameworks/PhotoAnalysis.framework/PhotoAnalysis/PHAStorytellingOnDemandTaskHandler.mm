@interface PHAStorytellingOnDemandTaskHandler
- (BOOL)hasRemainingOperations;
- (BOOL)isQuiescent;
- (PHAJobTimeHandlerProtocol)jobTimeHandler;
- (PHAStorytellingOnDemandTaskHandler)initWithGraphManager:(id)manager jobTimeHandler:(id)handler;
- (PHAStorytellingOnDemandTaskHandlerDelegate)delegate;
- (id)nextOperation;
- (void)_runCachingCPAnalyticsTestWithOptions:(id)options reply:(id)reply;
- (void)_runEnrichmentTestWithOptions:(id)options reply:(id)reply;
- (void)cacheCPAnalyticsPropertiesWithContext:(id)context reply:(id)reply;
- (void)cancelCurrentOperation;
- (void)dequeueOperationsIfNeeded;
- (void)forceCancellationIfShutdown;
- (void)generateMemoriesWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)generateSuggestionsWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)handleOperation:(id)operation;
- (void)reportMetricsWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestAssetRevGeocodingForAssetLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestAssetRevGeocodingWithContext:(id)context reply:(id)reply;
- (void)requestEnrichmentWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestExternalAssetRelevanceProcessingWithContext:(id)context reply:(id)reply;
- (void)requestGenerateQuestionsWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestHighlightCollectionEnrichmentWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestHighlightEnrichmentWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestOnDemandTasksWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestRelationshipInferencesForPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestRevGeocodingSyndicationLibraryWithContext:(id)context reply:(id)reply;
- (void)requestSuggestedContributionsForAssetsMetadata:(id)metadata options:(id)options context:(id)context reply:(id)reply;
- (void)requestSuggestedPersonsWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestSuggestedRecipientsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers options:(id)options context:(id)context reply:(id)reply;
- (void)requestSyndicationProcessingWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)runPerformanceTest:(id)test options:(id)options context:(id)context reply:(id)reply;
- (void)shutdown;
@end

@implementation PHAStorytellingOnDemandTaskHandler

- (PHAStorytellingOnDemandTaskHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PHAJobTimeHandlerProtocol)jobTimeHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);

  return WeakRetained;
}

- (void)requestSuggestedPersonsWithOptions:(id)options context:(id)context reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  graphManager = self->_graphManager;
  v18 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = [optionsCopy objectForKey:@"PHPeopleSuggestionClientKey"];
    v13 = v12;
    if (v12)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      v15 = 0;
      if (unsignedIntegerValue <= 1)
      {
        if (unsignedIntegerValue)
        {
          if (unsignedIntegerValue == 1)
          {
            suggestedPersonsForHome = [(PGManager *)self->_graphManager suggestedPersonsForHome];
            goto LABEL_14;
          }

LABEL_15:
          replyCopy[2](replyCopy, v15, v11);

          goto LABEL_16;
        }
      }

      else if ((unsignedIntegerValue - 2) >= 2)
      {
        if (unsignedIntegerValue == 4)
        {
          suggestedPersonsForHome = [(PGManager *)self->_graphManager suggestedPersonsForSharedLibraryParticipants];
          goto LABEL_14;
        }

        if (unsignedIntegerValue == 5)
        {
          suggestedPersonsForHome = [(PGManager *)self->_graphManager suggestedPersonsForSharedLibraryContentInclusion];
LABEL_14:
          v15 = suggestedPersonsForHome;
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    v17 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:17 localizedDescription:@"-[PHAOnDiskGraphServiceWorker requestSuggestedPersonsWithOptions:context:reply:] does not support the passed in client"];

    v15 = 0;
    v11 = v17;
    goto LABEL_15;
  }

  replyCopy[2](replyCopy, 0, v11);
LABEL_16:
}

- (void)requestRelationshipInferencesForPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = self->_graphManager;
  v13 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v13];
  v11 = v13;
  if (v10)
  {
    v12 = [(PGManager *)self->_graphManager relationshipInferencesForPersonLocalIdentifiers:identifiersCopy];
    replyCopy[2](replyCopy, v12, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestSuggestedRecipientsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers options:(id)options context:(id)context reply:(id)reply
{
  v42 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  localIdentifiersCopy = localIdentifiers;
  optionsCopy = options;
  replyCopy = reply;
  graphManager = self->_graphManager;
  v40 = 0;
  LOBYTE(reply) = [(PGManager *)graphManager isReadyWithError:&v40];
  v16 = v40;
  if (reply)
  {
    v17 = [optionsCopy objectForKey:@"PHPeopleSuggestionClientKey"];
    v18 = v17;
    if (v17)
    {
      unsignedIntegerValue = [v17 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v20 = [MEMORY[0x277D3BBD8] optionsForClient:unsignedIntegerValue];
    v21 = [optionsCopy objectForKey:@"PHSuggestedRecipientsSharingStreamKey"];
    v22 = v21;
    if (v21)
    {
      [v20 setSharingStream:{objc_msgSend(v21, "unsignedIntegerValue")}];
    }

    v23 = [(PGManager *)self->_graphManager suggestedRecipientsForAssetLocalIdentifiers:identifiersCopy momentLocalIdentifiers:localIdentifiersCopy sharingOptions:v20];
    if ([v23 count])
    {
      v31 = v22;
      v32 = v20;
      v33 = v18;
      v34 = localIdentifiersCopy;
      v35 = identifiersCopy;
      v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v23, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v25);
            }

            dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
            [v24 addObject:dictionaryRepresentation];
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v27);
      }

      replyCopy[2](replyCopy, v24, 0);
      localIdentifiersCopy = v34;
      identifiersCopy = v35;
      v20 = v32;
      v18 = v33;
      v22 = v31;
    }

    else
    {
      replyCopy[2](replyCopy, MEMORY[0x277CBEBF8], 0);
    }
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v16);
  }
}

- (void)requestSuggestedContributionsForAssetsMetadata:(id)metadata options:(id)options context:(id)context reply:(id)reply
{
  metadataCopy = metadata;
  replyCopy = reply;
  graphManager = self->_graphManager;
  v14 = 0;
  v11 = [(PGManager *)graphManager isReadyWithError:&v14];
  v12 = v14;
  if (v11)
  {
    v13 = [(PGManager *)self->_graphManager suggestedContributionsForAssetsMetadata:metadataCopy];
    replyCopy[2](replyCopy, v13, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v12);
  }
}

- (void)_runEnrichmentTestWithOptions:(id)options reply:(id)reply
{
  v31[5] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v7 = objc_alloc_init(PHAPeopleSuggestionEnrichmentTask);
  v31[0] = v7;
  v8 = objc_alloc_init(PHAHighlightCollectionEnrichmentTask);
  v31[1] = v8;
  v9 = objc_alloc_init(PHASearchEnrichmentTask);
  v31[2] = v9;
  v10 = objc_alloc_init(PHAAssetRevGeocodeEnrichmentTask);
  v31[3] = v10;
  v11 = objc_alloc_init(PHAPortraitDonationEnrichmentTask);
  v31[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v27;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        if ([v19 currentPlatformIsSupported] && objc_msgSend(v19, "shouldRunWithGraphManager:", self->_graphManager))
        {
          name = [v19 name];
          [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

          graphManager = self->_graphManager;
          onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
          v25 = v16;
          LODWORD(graphManager) = [v19 runWithGraphManager:graphManager progressReporter:onDemandTaskProgressReporter error:&v25];
          v23 = v25;

          if (!graphManager)
          {
            replyCopy[2](replyCopy, 0, v23);

            goto LABEL_16;
          }

          v16 = v23;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

  replyCopy[2](replyCopy, 1, 0);
  v23 = v16;
LABEL_16:
}

- (void)_runCachingCPAnalyticsTestWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  v6 = objc_alloc_init(PHACachingCPAnalyticsPropertiesTask);
  name = [(PHACachingCPAnalyticsPropertiesTask *)v6 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

  graphManager = self->_graphManager;
  onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v12 = 0;
  v10 = [(PHACachingCPAnalyticsPropertiesTask *)v6 runWithGraphManager:graphManager progressReporter:onDemandTaskProgressReporter error:&v12];
  v11 = v12;

  replyCopy[2](replyCopy, v10, v11);
}

- (void)runPerformanceTest:(id)test options:(id)options context:(id)context reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  testCopy = test;
  optionsCopy = options;
  replyCopy = reply;
  if ((PFOSVariantHasInternalDiagnostics() & 1) == 0)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "Performance test is only available on Apple internal.", &v17, 2u);
    }

    v13 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:3];
    replyCopy[2](replyCopy, 0, v13);
  }

  v14 = self->_loggingConnection;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = testCopy;
    _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_DEFAULT, "Running Performance Test: %@", &v17, 0xCu);
  }

  if ([testCopy isEqualToString:@"CachingCPAnalytics"])
  {
    [(PHAStorytellingOnDemandTaskHandler *)self _runCachingCPAnalyticsTestWithOptions:optionsCopy reply:replyCopy];
  }

  else if ([testCopy isEqualToString:@"Enrichment"])
  {
    [(PHAStorytellingOnDemandTaskHandler *)self _runEnrichmentTestWithOptions:optionsCopy reply:replyCopy];
  }

  else
  {
    v15 = self->_loggingConnection;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = testCopy;
    }

    v16 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:3];
    replyCopy[2](replyCopy, 0, v16);
  }
}

- (void)requestRevGeocodingSyndicationLibraryWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = self->_graphManager;
  v19 = 0;
  v7 = [(PGManager *)graphManager isReadyWithError:&v19];
  v8 = v19;
  if (v7)
  {
    v9 = objc_alloc_init(PHARevGeocodeSyndicationTask);
    name = [(PHARevGeocodeSyndicationTask *)v9 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

    v11 = self->_graphManager;
    onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v18 = v8;
    v13 = [(PHARevGeocodeSyndicationTask *)v9 runWithGraphManager:v11 progressReporter:onDemandTaskProgressReporter error:&v18];
    v14 = v18;

    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
      date = [MEMORY[0x277CBEAA8] date];
      name2 = [(PHARevGeocodeSyndicationTask *)v9 name];
      [WeakRetained setLibraryScopedWorkerPreferencesValue:date forKey:name2];
    }

    replyCopy[2](replyCopy, v13, v14);
  }

  else
  {
    replyCopy[2](replyCopy, 0, v8);
    v14 = v8;
  }
}

- (void)requestAssetRevGeocodingForAssetLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  v7 = MEMORY[0x277D3BBA8];
  graphManager = self->_graphManager;
  replyCopy = reply;
  identifiersCopy = identifiers;
  workingContext = [(PGManager *)graphManager workingContext];
  photoLibrary = [workingContext photoLibrary];
  v19 = [v7 reverseGeoFetchOptionsForPhotoLibrary:photoLibrary];

  v13 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:identifiersCopy options:v19];

  v14 = objc_alloc(MEMORY[0x277D3BBA8]);
  photoLibrary2 = [(PGManager *)self->_graphManager photoLibrary];
  loggingConnection = self->_loggingConnection;
  locationCache = [(PGManager *)self->_graphManager locationCache];
  v18 = [v14 initWithPhotoLibrary:photoLibrary2 homeLocations:MEMORY[0x277CBEBF8] loggingConnection:loggingConnection locationCache:locationCache];

  [v18 revGeocodeAssets:v13 progressBlock:&__block_literal_global_2774];
  replyCopy[2](replyCopy, 0);
}

- (void)requestAssetRevGeocodingWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  v6 = objc_alloc_init(PHAAssetRevGeocodeEnrichmentTask);
  name = [(PHAEnrichmentTask *)v6 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

  graphManager = self->_graphManager;
  onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v15 = 0;
  v10 = [(PHAEnrichmentTask *)v6 runWithGraphManager:graphManager progressReporter:onDemandTaskProgressReporter error:&v15];
  v11 = v15;

  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    date = [MEMORY[0x277CBEAA8] date];
    name2 = [(PHAEnrichmentTask *)v6 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:date forKey:name2];
  }

  replyCopy[2](replyCopy, v11);
}

- (void)requestHighlightCollectionEnrichmentWithOptions:(id)options context:(id)context reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  v9 = [[PHAHighlightCollectionEnrichmentTask alloc] initWithOptions:optionsCopy];

  name = [(PHAEnrichmentTask *)v9 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

  graphManager = self->_graphManager;
  onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v18 = 0;
  v13 = [(PHAEnrichmentTask *)v9 runWithGraphManager:graphManager progressReporter:onDemandTaskProgressReporter error:&v18];
  v14 = v18;

  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    date = [MEMORY[0x277CBEAA8] date];
    name2 = [(PHAEnrichmentTask *)v9 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:date forKey:name2];
  }

  replyCopy[2](replyCopy, v14);
}

- (void)requestHighlightEnrichmentWithOptions:(id)options context:(id)context reply:(id)reply
{
  v41 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = optionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v11)
  {

    v19 = 255;
    goto LABEL_35;
  }

  v12 = v11;
  selfCopy = self;
  v13 = 0;
  v14 = 0;
  v15 = *v36;
  do
  {
    v16 = 0;
    do
    {
      if (*v36 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v35 + 1) + 8 * v16);
      if ([v17 isEqualToString:{@"force", selfCopy}])
      {
        v14 |= 0x40000000uLL;
        goto LABEL_25;
      }

      if ([v17 isEqualToString:@"ignoreRequirements"])
      {
        v14 |= 0xFFFFFFFF80000000;
        goto LABEL_25;
      }

      if ([v17 isEqualToString:@"curation"])
      {
        v14 |= 0x10uLL;
LABEL_24:
        v13 = 1;
        goto LABEL_25;
      }

      if ([v17 isEqualToString:@"keyAsset"])
      {
        v14 |= 8uLL;
        goto LABEL_24;
      }

      if ([v17 isEqualToString:@"title"])
      {
        v14 |= 6uLL;
        goto LABEL_24;
      }

      if ([v17 isEqualToString:@"promotionScore"])
      {
        v14 |= 1uLL;
        goto LABEL_24;
      }

      if ([v17 isEqualToString:@"momentTitles"])
      {
        v14 |= 0x20uLL;
        goto LABEL_24;
      }

      if ([v17 isEqualToString:@"visibilityScore"])
      {
        v14 |= 0x40uLL;
        goto LABEL_24;
      }

      if ([v17 isEqualToString:@"momentLocations"])
      {
        v14 |= 0x80uLL;
        goto LABEL_24;
      }

      v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v17];

      if (!v32)
      {
        v30 = [MEMORY[0x277CCA9B8] pl_analysisErrorForInvalidParameterValue:v17 named:@"option"];
        replyCopy[2](replyCopy, v30);

        v24 = v10;
        goto LABEL_41;
      }

      [v9 addObject:v17];
LABEL_25:
      ++v16;
    }

    while (v12 != v16);
    v18 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    v12 = v18;
  }

  while (v18);

  if (v13)
  {
    v19 = v14;
  }

  else
  {
    v19 = v14 | 0xFF;
  }

  self = selfCopy;
LABEL_35:
  if ([v9 count])
  {
    v20 = [objc_alloc(MEMORY[0x277D3B9A0]) initWithHighlightTailorOptions:v19];
    v39 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];

    WeakRetained = [objc_alloc(MEMORY[0x277D3B928]) initWithManager:self->_graphManager enrichmentProcessors:v21];
    ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
    v34 = 0;
    [WeakRetained enrichDataModelForHighlightUUIDs:v9 progressReporter:ignoreProgress error:&v34];
    v24 = v34;
    goto LABEL_39;
  }

  v21 = objc_alloc_init(PHAHighlightEnrichmentTask);
  [(PHAHighlightEnrichmentTask *)v21 setTailorOptions:v19];
  name = [(PHAEnrichmentTask *)v21 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

  graphManager = self->_graphManager;
  onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v33 = 0;
  v28 = [(PHAHighlightEnrichmentTask *)v21 runWithGraphManager:graphManager progressReporter:onDemandTaskProgressReporter error:&v33];
  v24 = v33;

  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    ignoreProgress = [MEMORY[0x277CBEAA8] date];
    name2 = [(PHAEnrichmentTask *)v21 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:ignoreProgress forKey:name2];

LABEL_39:
  }

  replyCopy[2](replyCopy, v24);
LABEL_41:
}

- (void)requestEnrichmentWithOptions:(id)options context:(id)context reply:(id)reply
{
  v61[7] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  v9 = objc_alloc_init(PHAPeopleSuggestionEnrichmentTask);
  v61[0] = v9;
  v10 = objc_alloc_init(PHAForcedHighlightEnrichmentTask);
  v61[1] = v10;
  v11 = objc_alloc_init(PHAHighlightCollectionEnrichmentTask);
  v61[2] = v11;
  v12 = objc_alloc_init(PHASearchEnrichmentTask);
  v61[3] = v12;
  v13 = objc_alloc_init(PHAAssetRevGeocodeEnrichmentTask);
  v61[4] = v13;
  v14 = objc_alloc_init(PHAPortraitDonationEnrichmentTask);
  v61[5] = v14;
  v15 = [[PHAMemoriesEnrichmentTask alloc] initWithOptions:optionsCopy];
  v61[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:7];

  v47 = optionsCopy;
  v17 = [optionsCopy objectForKeyedSubscript:@"processor"];
  lowercaseString = [v17 lowercaseString];

  if (lowercaseString)
  {
    if (([lowercaseString isEqualToString:@"force-all"] & 1) == 0)
    {
      v19 = [lowercaseString stringByReplacingOccurrencesOfString:@"backgroundjob" withString:&stru_2844B1BF0];

      v20 = [v19 stringByReplacingOccurrencesOfString:@"background" withString:&stru_2844B1BF0];

      v21 = [v20 stringByReplacingOccurrencesOfString:@"processor" withString:&stru_2844B1BF0];

      lowercaseString = [v21 stringByReplacingOccurrencesOfString:@"enrichment" withString:&stru_2844B1BF0];

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v22 = v16;
      v23 = [v22 countByEnumeratingWithState:&v54 objects:v60 count:16];
      v16 = v22;
      if (v23)
      {
        v24 = v23;
        v25 = *v55;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v55 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v54 + 1) + 8 * i);
            name = [v27 name];
            lowercaseString2 = [name lowercaseString];

            if ([lowercaseString2 containsString:lowercaseString])
            {
              v59 = v27;
              v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];

              goto LABEL_13;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v54 objects:v60 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }

        v16 = v22;
      }

LABEL_13:
    }

    if (![v16 count])
    {
      v30 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:19];
      replyCopy[2](replyCopy, v30);
    }
  }

  v45 = lowercaseString;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v31 = v16;
  v32 = [v31 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v51;
    while (2)
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v50 + 1) + 8 * j);
        if ([v37 currentPlatformIsSupported] && objc_msgSend(v37, "shouldRunWithGraphManager:", self->_graphManager))
        {
          name2 = [v37 name];
          [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name2];

          graphManager = self->_graphManager;
          onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
          v49 = v34;
          LODWORD(graphManager) = [v37 runWithGraphManager:graphManager progressReporter:onDemandTaskProgressReporter error:&v49];
          v41 = v49;

          if (!graphManager)
          {
            replyCopy[2](replyCopy, v41);
            v34 = v41;
            goto LABEL_30;
          }

          WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
          date = [MEMORY[0x277CBEAA8] date];
          name3 = [v37 name];
          [WeakRetained setLibraryScopedWorkerPreferencesValue:date forKey:name3];

          v34 = v41;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v34 = 0;
  }

LABEL_30:

  replyCopy[2](replyCopy, 0);
}

- (void)cacheCPAnalyticsPropertiesWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  v6 = objc_alloc_init(PHACachingCPAnalyticsPropertiesTask);
  name = [(PHACachingCPAnalyticsPropertiesTask *)v6 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

  graphManager = self->_graphManager;
  onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v15 = 0;
  v10 = [(PHACachingCPAnalyticsPropertiesTask *)v6 runWithGraphManager:graphManager progressReporter:onDemandTaskProgressReporter error:&v15];
  v11 = v15;

  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    date = [MEMORY[0x277CBEAA8] date];
    name2 = [(PHACachingCPAnalyticsPropertiesTask *)v6 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:date forKey:name2];
  }

  replyCopy[2](replyCopy, v10, v11);
}

- (void)requestExternalAssetRelevanceProcessingWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = self->_graphManager;
  v20 = 0;
  v7 = [(PGManager *)graphManager isReadyWithError:&v20];
  v8 = v20;
  if (v7)
  {
    v9 = objc_alloc_init(PHAExternalAssetsTask);
    name = [(PHAExternalAssetsTask *)v9 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

    v11 = self->_graphManager;
    onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v19 = v8;
    v13 = [(PHAExternalAssetsTask *)v9 runWithGraphManager:v11 progressReporter:onDemandTaskProgressReporter error:&v19];
    v14 = v19;

    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
      date = [MEMORY[0x277CBEAA8] date];
      name2 = [(PHAExternalAssetsTask *)v9 name];
      [WeakRetained setLibraryScopedWorkerPreferencesValue:date forKey:name2];
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    replyCopy[2](replyCopy, v18, v14);
  }

  else
  {
    replyCopy[2](replyCopy, 0, v8);
    v14 = v8;
  }
}

- (void)requestSyndicationProcessingWithOptions:(id)options context:(id)context reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  graphManager = self->_graphManager;
  v29 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v29];
  v11 = v29;
  if (v10)
  {
    v12 = objc_alloc_init(PHASyndicationTask);
    v13 = MEMORY[0x277D3B0E8];
    v14 = MEMORY[0x277D3B0E0];
    if (optionsCopy)
    {
      v15 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3B0E0]];
      -[PHASyndicationTask setPerformCurationJob:](v12, "setPerformCurationJob:", [v15 BOOLValue]);

      v16 = [optionsCopy objectForKeyedSubscript:*v13];
      -[PHASyndicationTask setPerformGuestInferenceJob:](v12, "setPerformGuestInferenceJob:", [v16 BOOLValue]);
    }

    name = [(PHASyndicationTask *)v12 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

    v18 = self->_graphManager;
    onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v28 = v11;
    v20 = [(PHASyndicationTask *)v12 runWithGraphManager:v18 progressReporter:onDemandTaskProgressReporter error:&v28];
    v21 = v28;

    if (v20)
    {
      WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
      date = [MEMORY[0x277CBEAA8] date];
      name2 = [(PHASyndicationTask *)v12 name];
      [WeakRetained setLibraryScopedWorkerPreferencesValue:date forKey:name2];
    }

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(PHASyndicationTask *)v12 performCurationJob])
    {
      v26 = [MEMORY[0x277CCABB0] numberWithBool:v20];
      [v25 setObject:v26 forKeyedSubscript:*v14];
    }

    if ([(PHASyndicationTask *)v12 performGuestInferenceJob])
    {
      v27 = [MEMORY[0x277CCABB0] numberWithBool:v20];
      [v25 setObject:v27 forKeyedSubscript:*v13];
    }

    replyCopy[2](replyCopy, v25, v21);
  }

  else
  {
    replyCopy[2](replyCopy, 0, v11);
    v21 = v11;
  }
}

- (void)requestGenerateQuestionsWithOptions:(id)options context:(id)context reply:(id)reply
{
  v62[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  graphManager = self->_graphManager;
  v54 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v54];
  v11 = v54;
  if ((v10 & 1) == 0)
  {
    replyCopy[2](replyCopy, 0, v11);
    goto LABEL_5;
  }

  v12 = *MEMORY[0x277D3AFC0];
  v13 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AFC0]];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    v15 = [PHAPhotosChallengeTask currentQuestionsKVSDataFromGraphManager:self->_graphManager];
    v61 = v12;
    v62[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    (replyCopy)[2](replyCopy, v16, 0);

    goto LABEL_5;
  }

  v17 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AFA0]];
  bOOLValue2 = [v17 BOOLValue];

  if (bOOLValue2)
  {
    [PHAPhotosChallengeTask removeCurrentKVSDataFromGraphManager:self->_graphManager];
    replyCopy[2](replyCopy, MEMORY[0x277CBEC10], 0);
    goto LABEL_5;
  }

  v19 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AFD8]];
  bOOLValue3 = [v19 BOOLValue];

  if (bOOLValue3)
  {
    v21 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AF98]];
    v22 = v21;
    if (v21)
    {
      date = v21;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v45 = date;

    v46 = [PHAPhotosChallengeTask postSubmissionNotificationIfNeededWithGraphManager:self->_graphManager notificationDate:v45];
    v59 = *MEMORY[0x277D3AFB0];
    v47 = [MEMORY[0x277CCABB0] numberWithBool:v46];
    v60 = v47;
    v48 = MEMORY[0x277CBEAC0];
    v49 = &v60;
    v50 = &v59;
LABEL_25:
    v52 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:1];
    (replyCopy)[2](replyCopy, v52, 0);

    goto LABEL_5;
  }

  v24 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AFD0]];
  bOOLValue4 = [v24 BOOLValue];

  if (bOOLValue4)
  {
    v26 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AF98]];
    v27 = v26;
    if (v26)
    {
      date2 = v26;
    }

    else
    {
      date2 = [MEMORY[0x277CBEAA8] date];
    }

    v45 = date2;

    v51 = [PHAPhotosChallengeTask postNewQuestionsNotificationIfNeededWithGraphManager:self->_graphManager notificationDate:v45];
    v57 = *MEMORY[0x277D3AFA8];
    v47 = [MEMORY[0x277CCABB0] numberWithBool:v51];
    v58 = v47;
    v48 = MEMORY[0x277CBEAC0];
    v49 = &v58;
    v50 = &v57;
    goto LABEL_25;
  }

  v29 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AFC8]];
  unsignedIntegerValue = [v29 unsignedIntegerValue];

  v31 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AF90]];
  integerValue = [v31 integerValue];

  v33 = objc_alloc_init(PHAPhotosChallengeTask);
  v34 = v33;
  if (integerValue)
  {
    [(PHAPhotosChallengeTask *)v33 setLimit:integerValue];
  }

  if (unsignedIntegerValue)
  {
    [(PHAPhotosChallengeTask *)v34 setQuestionOptions:unsignedIntegerValue];
  }

  name = [(PHAPhotosChallengeTask *)v34 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

  v36 = self->_graphManager;
  onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v53 = v11;
  v38 = [(PHAPhotosChallengeTask *)v34 runWithGraphManager:v36 progressReporter:onDemandTaskProgressReporter error:&v53];
  v39 = v53;

  if (v38)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    date3 = [MEMORY[0x277CBEAA8] date];
    name2 = [(PHAPhotosChallengeTask *)v34 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:date3 forKey:name2];
  }

  v55 = *MEMORY[0x277D3AFB8];
  v43 = [MEMORY[0x277CCABB0] numberWithBool:v38];
  v56 = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  (replyCopy)[2](replyCopy, v44, v39);

  v11 = v39;
LABEL_5:
}

- (void)reportMetricsWithOptions:(id)options context:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = self->_graphManager;
  v20 = 0;
  v8 = [(PGManager *)graphManager isReadyWithError:&v20];
  v9 = v20;
  if (v8)
  {
    v10 = objc_alloc_init(PHAMetricReportingTask);
    name = [(PHAMetricReportingTask *)v10 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

    v12 = self->_graphManager;
    onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v19 = v9;
    v14 = [(PHAMetricReportingTask *)v10 runWithGraphManager:v12 progressReporter:onDemandTaskProgressReporter error:&v19];
    v15 = v19;

    if (v14)
    {
      WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
      date = [MEMORY[0x277CBEAA8] date];
      name2 = [(PHAMetricReportingTask *)v10 name];
      [WeakRetained setLibraryScopedWorkerPreferencesValue:date forKey:name2];
    }

    replyCopy[2](replyCopy, v14, v15);
  }

  else
  {
    replyCopy[2](replyCopy, 0, v9);
    v15 = v9;
  }
}

- (void)generateSuggestionsWithOptions:(id)options context:(id)context reply:(id)reply
{
  v55[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  graphManager = self->_graphManager;
  v51 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v51];
  v11 = v51;
  if (v10)
  {
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __83__PHAStorytellingOnDemandTaskHandler_generateSuggestionsWithOptions_context_reply___block_invoke;
    v46 = &unk_2788B1FE0;
    v12 = optionsCopy;
    v47 = v12;
    selfCopy = self;
    v13 = replyCopy;
    v50 = v13;
    v11 = v11;
    v49 = v11;
    v14 = _Block_copy(&v43);
    v15 = [v12 objectForKeyedSubscript:{*MEMORY[0x277D3B0C8], v43, v44, v45, v46}];
    integerValue = [v15 integerValue];

    if (integerValue > 7u)
    {
      if (integerValue == 8)
      {
        v31 = [PHAWallpaperSuggestionGenerationWeeklyTask alloc];
        v32 = 8;
        goto LABEL_26;
      }

      if (integerValue == 11)
      {
        v21 = objc_alloc_init(PGCameraStyleableSuggestionGenerator);
        v22 = self->_graphManager;
        ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
        v24 = [(PGCameraStyleableSuggestionGenerator *)v21 generateSuggestionsWithGraphManager:v22 progressReporter:ignoreProgress];

        v54 = *MEMORY[0x277D3B0D8];
        v55[0] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
        (*(v13 + 2))(v13, v25, v11);

        goto LABEL_28;
      }
    }

    else
    {
      if (integerValue == 1)
      {
        v20 = PHASharingSuggestionGenerationTask;
        goto LABEL_17;
      }

      if (integerValue == 6)
      {
        v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277D3B0B8]];
        integerValue2 = [v17 integerValue];

        v19 = integerValue2;
        if (integerValue2 == 680)
        {
          v20 = PHAWallpaperSettlingEffectGenerationTask;
LABEL_17:
          v33 = objc_alloc_init(v20);
LABEL_27:
          v42 = v33;
          v14[2](v14, v33);

          goto LABEL_28;
        }

        allTopWallpaperSuggestionSubtypes = [MEMORY[0x277CD99E0] allTopWallpaperSuggestionSubtypes];
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:integerValue2];
        v36 = [allTopWallpaperSuggestionSubtypes containsObject:v35];

        if (v36)
        {
          v37 = 2;
        }

        else
        {
          allShuffleWallpaperSuggestionSubtypes = [MEMORY[0x277CD99E0] allShuffleWallpaperSuggestionSubtypes];
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:integerValue2];
          v40 = [allShuffleWallpaperSuggestionSubtypes containsObject:v39];

          v41 = 19;
          if (v19 == 901)
          {
            v41 = 16;
          }

          if (v40)
          {
            v37 = 1;
          }

          else
          {
            v37 = v41;
          }
        }

        v31 = [PHAWallpaperSuggestionGenerationWeeklyTask alloc];
        v32 = v37;
LABEL_26:
        v33 = [(PHAWallpaperSuggestionGenerationWeeklyTask *)v31 initWithGenerationOptions:v32];
        goto LABEL_27;
      }
    }

    v26 = [v12 objectForKeyedSubscript:*MEMORY[0x277D3B080]];
    bOOLValue = [v26 BOOLValue];

    if (integerValue || bOOLValue)
    {
      v20 = PHASuggestionGenerationTask;
      goto LABEL_17;
    }

    v28 = MEMORY[0x277CCA9B8];
    v52 = @"Unsupported generate suggestions options";
    v53 = v12;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v30 = [v28 errorWithDomain:@"com.apple.photoanalysis" code:17 userInfo:v29];

    (*(v13 + 2))(v13, 0, v30);
    v11 = v30;
LABEL_28:

    goto LABEL_29;
  }

  (*(replyCopy + 2))(replyCopy, 0, v11);
LABEL_29:
}

void __83__PHAStorytellingOnDemandTaskHandler_generateSuggestionsWithOptions_context_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setSuggestionOptionsDictionary:v3];
  v5 = [v4 name];
  [*(a1[5] + 40) setTaskName:v5];

  v6 = a1[5];
  v7 = v6[1];
  v8 = [v6 onDemandTaskProgressReporter];
  v11 = 0;
  v9 = [v4 generateSuggestionsWithGraphManager:v7 progressReporter:v8 error:&v11];

  v10 = v11;
  (*(a1[7] + 16))();
}

- (void)generateMemoriesWithOptions:(id)options context:(id)context reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  graphManager = self->_graphManager;
  v43 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v43];
  v11 = v43;
  v12 = v11;
  if (v10)
  {
    v40 = v11;
    v13 = objc_alloc_init(PHAMemoryElectionTask);
    name = [(PHAMemoryElectionTask *)v13 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:name];

    v15 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
    if (v15)
    {
      [(PHAMemoryElectionTask *)v13 setUniversalDate:v15];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(PHAMemoryElectionTask *)v13 setUniversalDate:date];
    }

    v17 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionLocationKey"];
    [(PHAMemoryElectionTask *)v13 setLocation:v17];

    v18 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionExtraParametersKey"];
    v19 = [v18 objectForKeyedSubscript:@"notification"];
    -[PHAMemoryElectionTask setForceNotification:](v13, "setForceNotification:", [v19 BOOLValue]);

    v20 = [v18 objectForKeyedSubscript:@"PHMemoryOptionRequestedCategoryKey"];
    v21 = v20;
    if (v20)
    {
      -[PHAMemoryElectionTask setRequestedCategory:](v13, "setRequestedCategory:", [v20 unsignedIntegerValue]);
    }

    v22 = [v18 objectForKeyedSubscript:{@"PHMemoryOptionRequestedTriggerKey", v21}];
    v23 = v22;
    if (v22)
    {
      -[PHAMemoryElectionTask setRequestedTriggerType:](v13, "setRequestedTriggerType:", [v22 unsignedIntegerValue]);
    }

    v24 = [v18 objectForKeyedSubscript:@"PHMemoryOptionRequestedFeatureTypeKey"];
    v25 = v24;
    if (v24)
    {
      v26 = MEMORY[0x277D3B6C8];
      unsignedIntegerValue = [v24 unsignedIntegerValue];
      v28 = [v18 objectForKeyedSubscript:@"PHMemoryOptionRequestedFeatureIdentifierKey"];
      v29 = [v26 featureWithType:unsignedIntegerValue name:v28];
      [(PHAMemoryElectionTask *)v13 setRequestedFeature:v29];
    }

    v30 = [v18 objectForKeyedSubscript:@"PHMemoryOptionRequestedUniqueMemoryIdentifierKey"];
    [(PHAMemoryElectionTask *)v13 setRequestedUniqueMemoryIdentifier:v30];

    v31 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionReasonKey"];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 unsignedIntegerValue] == 1;
    }

    else
    {
      v33 = 1;
    }

    [(PHAMemoryElectionTask *)v13 setUserInitiated:v33];
    v34 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionCommitChangesKey"];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 BOOLValue] ^ 1;
    }

    else
    {
      v36 = 0;
    }

    [(PHAMemoryElectionTask *)v13 setCreateTransientMemories:v36];
    v37 = self->_graphManager;
    onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __80__PHAStorytellingOnDemandTaskHandler_generateMemoriesWithOptions_context_reply___block_invoke;
    v41[3] = &unk_2788B1FB8;
    v42 = replyCopy;
    [(PHAMemoryElectionTask *)v13 runWithGraphManager:v37 progressReporter:onDemandTaskProgressReporter reply:v41];

    v12 = v40;
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v11);
  }
}

- (void)requestOnDemandTasksWithOptions:(id)options context:(id)context reply:(id)reply
{
  v53[3] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v8 = [options objectForKeyedSubscript:*MEMORY[0x277D3AF08]];
  if ([v8 isEqualToString:@"contentGeneration"])
  {
    v9 = objc_alloc_init(PHAMemoryElectionTask);
    v53[0] = v9;
    v10 = objc_alloc_init(PHASuggestionGenerationTask);
    v53[1] = v10;
    v11 = [[PHAWallpaperSuggestionGenerationWeeklyTask alloc] initWithGenerationOptions:27];
    v53[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
  }

  else
  {
    if ([v8 isEqualToString:@"reportActiveUserFeature"])
    {
      v9 = objc_alloc_init(PHAFeaturesUsageReportingTask);
      v52 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v52;
    }

    else if ([v8 isEqualToString:@"sharedLibrarySuggestionsDaily"])
    {
      v9 = [[PHASharedLibrarySuggestionGenerationTask alloc] initWithTaskType:0];
      v51 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v51;
    }

    else if ([v8 isEqualToString:@"sharedLibrarySuggestionsWeekly"])
    {
      v9 = [[PHASharedLibrarySuggestionGenerationTask alloc] initWithTaskType:1];
      v50 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v50;
    }

    else if ([v8 isEqualToString:@"removeFeaturedContent"])
    {
      v9 = objc_alloc_init(PHARemoveFeaturedContentTask);
      v49 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v49;
    }

    else if ([v8 isEqualToString:@"photosChallenge"])
    {
      v9 = objc_alloc_init(PHAPhotosChallengeTask);
      v48 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v48;
    }

    else if ([v8 isEqualToString:@"wallpaperNightly"])
    {
      v9 = objc_alloc_init(PHAWallpaperSuggestionGenerationNightlyTask);
      v47 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v47;
    }

    else if ([v8 isEqualToString:@"wallpaperWeeklySettlingEffectOnly"])
    {
      v9 = objc_alloc_init(PHAWallpaperSettlingEffectGenerationTask);
      v46 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v46;
    }

    else if ([v8 hasPrefix:@"wallpaperWeekly"])
    {
      if ([v8 isEqualToString:@"wallpaperWeekly"])
      {
        v15 = 27;
      }

      else if ([v8 isEqualToString:@"wallpaperWeeklyShuffleOnly"])
      {
        v15 = 1;
      }

      else if ([v8 isEqualToString:@"wallpaperWeeklyTopOnly"])
      {
        v15 = 2;
      }

      else if ([v8 isEqualToString:@"wallpaperWeeklyAmbientOnly"])
      {
        v15 = 8;
      }

      else
      {
        if (![v8 isEqualToString:@"wallpaperWeeklyMe"])
        {
          v35 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:3 localizedDescription:@"Task not supported returned NO"];
          replyCopy[2](replyCopy, 0, v35);

          goto LABEL_54;
        }

        v15 = 16;
      }

      v9 = [[PHAWallpaperSuggestionGenerationWeeklyTask alloc] initWithGenerationOptions:v15];
      v45 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v45;
    }

    else if ([v8 isEqualToString:@"userAnalyticsBiomeWeekly"])
    {
      v9 = [[PHAUserAnalyticsBiomeTask alloc] initWithTaskType:1];
      v44 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v44;
    }

    else
    {
      if (![v8 isEqualToString:@"userAnalyticsBiomeDaily"])
      {
        v12 = 0;
        goto LABEL_36;
      }

      v9 = [[PHAUserAnalyticsBiomeTask alloc] initWithTaskType:0];
      v43 = v9;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v43;
    }

    v12 = [v13 arrayWithObjects:v14 count:1];
  }

LABEL_36:
  if ([v12 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v36 = replyCopy;
      v19 = 0;
      v20 = *v39;
      while (2)
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v38 + 1) + 8 * v21);
          if (![v23 shouldRunWithGraphManager:self->_graphManager])
          {
            v30 = MEMORY[0x277CCA9B8];
            v31 = MEMORY[0x277CCACA8];
            name = [v23 name];
            v33 = [v31 stringWithFormat:@"%@'s shouldRunWithGraphManager returned NO", name];
            v34 = [v30 pl_analysisErrorWithCode:14 localizedDescription:v33];
            replyCopy = v36;
            v36[2](v36, 0, v34);

            goto LABEL_53;
          }

          graphManager = self->_graphManager;
          onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
          v37 = v22;
          LODWORD(graphManager) = [v23 runWithGraphManager:graphManager progressReporter:onDemandTaskProgressReporter error:&v37];
          v19 = v37;

          if (!graphManager)
          {
            v26 = 0;
            goto LABEL_51;
          }

          ++v21;
          v22 = v19;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v26 = 1;
LABEL_51:
      replyCopy = v36;
    }

    else
    {
      v19 = 0;
      v26 = 1;
    }

    replyCopy[2](replyCopy, v26, v19);
LABEL_53:
  }

  else
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"No tasks to run for %@", v8];
    v29 = [v27 pl_analysisErrorWithCode:19 localizedDescription:v28];
    replyCopy[2](replyCopy, 0, v29);
  }

LABEL_54:
}

- (void)shutdown
{
  onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  [onDemandTaskProgressReporter cancelOperation];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_operationsToRun removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  self->_isShutdown = 1;
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PHAStorytellingOnDemandTaskHandler_shutdown__block_invoke;
  block[3] = &unk_2788B2E78;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

void __46__PHAStorytellingOnDemandTaskHandler_shutdown__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

- (void)forceCancellationIfShutdown
{
  if (self->_isShutdown)
  {
    onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    [onDemandTaskProgressReporter cancelOperation];
  }
}

- (void)cancelCurrentOperation
{
  onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  [onDemandTaskProgressReporter cancelOperation];
}

- (BOOL)isQuiescent
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_operationsToRun count])
  {
    v3 = 0;
  }

  else
  {
    onDemandTaskProgressReporter = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v3 = onDemandTaskProgressReporter == 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)dequeueOperationsIfNeeded
{
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PHAStorytellingOnDemandTaskHandler_dequeueOperationsIfNeeded__block_invoke;
  block[3] = &unk_2788B2E78;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

void __63__PHAStorytellingOnDemandTaskHandler_dequeueOperationsIfNeeded__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) nextOperation];
  if (v2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = os_log_create("com.apple.photoanalysisd", "taskProgress");
    v4 = [v2 progressBlock];
    v5 = [objc_alloc(MEMORY[0x277D3BB60]) initWithTaskName:@"OnDemandTask" loggingConnection:v3];
    v6 = objc_alloc(MEMORY[0x277D22C98]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63__PHAStorytellingOnDemandTaskHandler_dequeueOperationsIfNeeded__block_invoke_2;
    v21[3] = &unk_2788B1F68;
    v7 = v4;
    v23 = v7;
    objc_copyWeak(&v24, &location);
    v8 = v5;
    v22 = v8;
    v9 = [v6 initWithProgressBlock:v21];
    [*(a1 + 32) setOnDemandTaskProgressReporter:v9];

    objc_storeStrong((*(a1 + 32) + 40), v5);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__PHAStorytellingOnDemandTaskHandler_dequeueOperationsIfNeeded__block_invoke_3;
    v19[3] = &unk_2788B1F90;
    objc_copyWeak(&v20, &location);
    [v2 setCancellationBlock:v19];
    v10 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v2 invocation];
      v12 = qos_class_self();
      v13 = PHADescriptionForQoS(v12);
      *buf = 138412546;
      v27 = v11;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_DEFAULT, "Running task '%@' at QoS %@", buf, 0x16u);
    }

    [v2 runOperation];
    [*(a1 + 32) setOnDemandTaskProgressReporter:0];
    v14 = *(a1 + 32);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    v16 = [*(a1 + 32) hasRemainingOperations];
    v17 = *(a1 + 32);
    if (v16)
    {
      [v17 dequeueOperationsIfNeeded];
    }

    else
    {
      v18 = [v17 delegate];
      [v18 onDemandTaskHandlerDidFinishOperation:*(a1 + 32)];
    }

    objc_destroyWeak(&v20);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __63__PHAStorytellingOnDemandTaskHandler_dequeueOperationsIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v5 = 0;
    (*(v2 + 16))(v2, &v5);
    if (v5 == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained cancelCurrentOperation];
    }
  }

  else
  {
    [*(a1 + 32) checkCallsWithProgress:0 stop:?];
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 forceCancellationIfShutdown];
}

void __63__PHAStorytellingOnDemandTaskHandler_dequeueOperationsIfNeeded__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained onDemandTaskProgressReporter];
  [v1 cancelOperation];
}

- (BOOL)hasRemainingOperations
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_operationsToRun count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)nextOperation
{
  os_unfair_lock_lock(&self->_lock);
  firstObject = [(NSMutableArray *)self->_operationsToRun firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_operationsToRun removeObjectAtIndex:0];
  }

  os_unfair_lock_unlock(&self->_lock);

  return firstObject;
}

- (void)handleOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_operationsToRun addObject:operationCopy];

  os_unfair_lock_unlock(&self->_lock);
  delegate = [(PHAStorytellingOnDemandTaskHandler *)self delegate];
  [delegate onDemandTaskHandlerStartingOperation:self];

  [(PHAStorytellingOnDemandTaskHandler *)self dequeueOperationsIfNeeded];
}

- (PHAStorytellingOnDemandTaskHandler)initWithGraphManager:(id)manager jobTimeHandler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = PHAStorytellingOnDemandTaskHandler;
  v9 = [(PHAStorytellingOnDemandTaskHandler *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graphManager, manager);
    workingContext = [(PGManager *)v10->_graphManager workingContext];
    photoLibrary = [workingContext photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = photoLibrary;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.photoanalysis.ondemandtask", v14);
    executionQueue = v10->_executionQueue;
    v10->_executionQueue = v15;

    v10->_isShutdown = 0;
    array = [MEMORY[0x277CBEB18] array];
    operationsToRun = v10->_operationsToRun;
    v10->_operationsToRun = array;

    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v10->_jobTimeHandler, handlerCopy);
    v19 = os_log_create("com.apple.photoanalysisd", "ondemandtaskhandler");
    loggingConnection = v10->_loggingConnection;
    v10->_loggingConnection = v19;
  }

  return v10;
}

@end