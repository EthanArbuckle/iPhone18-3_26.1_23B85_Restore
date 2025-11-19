@interface PHAStorytellingOnDemandTaskHandler
- (BOOL)hasRemainingOperations;
- (BOOL)isQuiescent;
- (PHAJobTimeHandlerProtocol)jobTimeHandler;
- (PHAStorytellingOnDemandTaskHandler)initWithGraphManager:(id)a3 jobTimeHandler:(id)a4;
- (PHAStorytellingOnDemandTaskHandlerDelegate)delegate;
- (id)nextOperation;
- (void)_runCachingCPAnalyticsTestWithOptions:(id)a3 reply:(id)a4;
- (void)_runEnrichmentTestWithOptions:(id)a3 reply:(id)a4;
- (void)cacheCPAnalyticsPropertiesWithContext:(id)a3 reply:(id)a4;
- (void)cancelCurrentOperation;
- (void)dequeueOperationsIfNeeded;
- (void)forceCancellationIfShutdown;
- (void)generateMemoriesWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)generateSuggestionsWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)handleOperation:(id)a3;
- (void)reportMetricsWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestAssetRevGeocodingForAssetLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestAssetRevGeocodingWithContext:(id)a3 reply:(id)a4;
- (void)requestEnrichmentWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestExternalAssetRelevanceProcessingWithContext:(id)a3 reply:(id)a4;
- (void)requestGenerateQuestionsWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestHighlightCollectionEnrichmentWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestHighlightEnrichmentWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestOnDemandTasksWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestRelationshipInferencesForPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestRevGeocodingSyndicationLibraryWithContext:(id)a3 reply:(id)a4;
- (void)requestSuggestedContributionsForAssetsMetadata:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestSuggestedPersonsWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestSuggestedRecipientsForAssetLocalIdentifiers:(id)a3 momentLocalIdentifiers:(id)a4 options:(id)a5 context:(id)a6 reply:(id)a7;
- (void)requestSyndicationProcessingWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)runPerformanceTest:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
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

- (void)requestSuggestedPersonsWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  graphManager = self->_graphManager;
  v18 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = [v7 objectForKey:@"PHPeopleSuggestionClientKey"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 unsignedIntegerValue];
      v15 = 0;
      if (v14 <= 1)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            v16 = [(PGManager *)self->_graphManager suggestedPersonsForHome];
            goto LABEL_14;
          }

LABEL_15:
          v8[2](v8, v15, v11);

          goto LABEL_16;
        }
      }

      else if ((v14 - 2) >= 2)
      {
        if (v14 == 4)
        {
          v16 = [(PGManager *)self->_graphManager suggestedPersonsForSharedLibraryParticipants];
          goto LABEL_14;
        }

        if (v14 == 5)
        {
          v16 = [(PGManager *)self->_graphManager suggestedPersonsForSharedLibraryContentInclusion];
LABEL_14:
          v15 = v16;
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

  v8[2](v8, 0, v11);
LABEL_16:
}

- (void)requestRelationshipInferencesForPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  graphManager = self->_graphManager;
  v13 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v13];
  v11 = v13;
  if (v10)
  {
    v12 = [(PGManager *)self->_graphManager relationshipInferencesForPersonLocalIdentifiers:v7];
    v8[2](v8, v12, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestSuggestedRecipientsForAssetLocalIdentifiers:(id)a3 momentLocalIdentifiers:(id)a4 options:(id)a5 context:(id)a6 reply:(id)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  graphManager = self->_graphManager;
  v40 = 0;
  LOBYTE(a7) = [(PGManager *)graphManager isReadyWithError:&v40];
  v16 = v40;
  if (a7)
  {
    v17 = [v13 objectForKey:@"PHPeopleSuggestionClientKey"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 unsignedIntegerValue];
    }

    else
    {
      v19 = 0;
    }

    v20 = [MEMORY[0x277D3BBD8] optionsForClient:v19];
    v21 = [v13 objectForKey:@"PHSuggestedRecipientsSharingStreamKey"];
    v22 = v21;
    if (v21)
    {
      [v20 setSharingStream:{objc_msgSend(v21, "unsignedIntegerValue")}];
    }

    v23 = [(PGManager *)self->_graphManager suggestedRecipientsForAssetLocalIdentifiers:v11 momentLocalIdentifiers:v12 sharingOptions:v20];
    if ([v23 count])
    {
      v31 = v22;
      v32 = v20;
      v33 = v18;
      v34 = v12;
      v35 = v11;
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

            v30 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
            [v24 addObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v27);
      }

      v14[2](v14, v24, 0);
      v12 = v34;
      v11 = v35;
      v20 = v32;
      v18 = v33;
      v22 = v31;
    }

    else
    {
      v14[2](v14, MEMORY[0x277CBEBF8], 0);
    }
  }

  else
  {
    (v14)[2](v14, 0, v16);
  }
}

- (void)requestSuggestedContributionsForAssetsMetadata:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v8 = a3;
  v9 = a6;
  graphManager = self->_graphManager;
  v14 = 0;
  v11 = [(PGManager *)graphManager isReadyWithError:&v14];
  v12 = v14;
  if (v11)
  {
    v13 = [(PGManager *)self->_graphManager suggestedContributionsForAssetsMetadata:v8];
    v9[2](v9, v13, 0);
  }

  else
  {
    (v9)[2](v9, 0, v12);
  }
}

- (void)_runEnrichmentTestWithOptions:(id)a3 reply:(id)a4
{
  v31[5] = *MEMORY[0x277D85DE8];
  v24 = a3;
  v6 = a4;
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
          v20 = [v19 name];
          [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v20];

          graphManager = self->_graphManager;
          v22 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
          v25 = v16;
          LODWORD(graphManager) = [v19 runWithGraphManager:graphManager progressReporter:v22 error:&v25];
          v23 = v25;

          if (!graphManager)
          {
            v6[2](v6, 0, v23);

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

  v6[2](v6, 1, 0);
  v23 = v16;
LABEL_16:
}

- (void)_runCachingCPAnalyticsTestWithOptions:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(PHACachingCPAnalyticsPropertiesTask);
  v7 = [(PHACachingCPAnalyticsPropertiesTask *)v6 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v7];

  graphManager = self->_graphManager;
  v9 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v12 = 0;
  v10 = [(PHACachingCPAnalyticsPropertiesTask *)v6 runWithGraphManager:graphManager progressReporter:v9 error:&v12];
  v11 = v12;

  v5[2](v5, v10, v11);
}

- (void)runPerformanceTest:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ((PFOSVariantHasInternalDiagnostics() & 1) == 0)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "Performance test is only available on Apple internal.", &v17, 2u);
    }

    v13 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:3];
    v11[2](v11, 0, v13);
  }

  v14 = self->_loggingConnection;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v9;
    _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_DEFAULT, "Running Performance Test: %@", &v17, 0xCu);
  }

  if ([v9 isEqualToString:@"CachingCPAnalytics"])
  {
    [(PHAStorytellingOnDemandTaskHandler *)self _runCachingCPAnalyticsTestWithOptions:v10 reply:v11];
  }

  else if ([v9 isEqualToString:@"Enrichment"])
  {
    [(PHAStorytellingOnDemandTaskHandler *)self _runEnrichmentTestWithOptions:v10 reply:v11];
  }

  else
  {
    v15 = self->_loggingConnection;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v9;
    }

    v16 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:3];
    v11[2](v11, 0, v16);
  }
}

- (void)requestRevGeocodingSyndicationLibraryWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  graphManager = self->_graphManager;
  v19 = 0;
  v7 = [(PGManager *)graphManager isReadyWithError:&v19];
  v8 = v19;
  if (v7)
  {
    v9 = objc_alloc_init(PHARevGeocodeSyndicationTask);
    v10 = [(PHARevGeocodeSyndicationTask *)v9 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v10];

    v11 = self->_graphManager;
    v12 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v18 = v8;
    v13 = [(PHARevGeocodeSyndicationTask *)v9 runWithGraphManager:v11 progressReporter:v12 error:&v18];
    v14 = v18;

    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
      v16 = [MEMORY[0x277CBEAA8] date];
      v17 = [(PHARevGeocodeSyndicationTask *)v9 name];
      [WeakRetained setLibraryScopedWorkerPreferencesValue:v16 forKey:v17];
    }

    v5[2](v5, v13, v14);
  }

  else
  {
    v5[2](v5, 0, v8);
    v14 = v8;
  }
}

- (void)requestAssetRevGeocodingForAssetLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = MEMORY[0x277D3BBA8];
  graphManager = self->_graphManager;
  v9 = a5;
  v10 = a3;
  v11 = [(PGManager *)graphManager workingContext];
  v12 = [v11 photoLibrary];
  v19 = [v7 reverseGeoFetchOptionsForPhotoLibrary:v12];

  v13 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v10 options:v19];

  v14 = objc_alloc(MEMORY[0x277D3BBA8]);
  v15 = [(PGManager *)self->_graphManager photoLibrary];
  loggingConnection = self->_loggingConnection;
  v17 = [(PGManager *)self->_graphManager locationCache];
  v18 = [v14 initWithPhotoLibrary:v15 homeLocations:MEMORY[0x277CBEBF8] loggingConnection:loggingConnection locationCache:v17];

  [v18 revGeocodeAssets:v13 progressBlock:&__block_literal_global_2774];
  v9[2](v9, 0);
}

- (void)requestAssetRevGeocodingWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(PHAAssetRevGeocodeEnrichmentTask);
  v7 = [(PHAEnrichmentTask *)v6 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v7];

  graphManager = self->_graphManager;
  v9 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v15 = 0;
  v10 = [(PHAEnrichmentTask *)v6 runWithGraphManager:graphManager progressReporter:v9 error:&v15];
  v11 = v15;

  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [(PHAEnrichmentTask *)v6 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:v13 forKey:v14];
  }

  v5[2](v5, v11);
}

- (void)requestHighlightCollectionEnrichmentWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[PHAHighlightCollectionEnrichmentTask alloc] initWithOptions:v8];

  v10 = [(PHAEnrichmentTask *)v9 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v10];

  graphManager = self->_graphManager;
  v12 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v18 = 0;
  v13 = [(PHAEnrichmentTask *)v9 runWithGraphManager:graphManager progressReporter:v12 error:&v18];
  v14 = v18;

  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    v16 = [MEMORY[0x277CBEAA8] date];
    v17 = [(PHAEnrichmentTask *)v9 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:v16 forKey:v17];
  }

  v7[2](v7, v14);
}

- (void)requestHighlightEnrichmentWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v11)
  {

    v19 = 255;
    goto LABEL_35;
  }

  v12 = v11;
  v31 = self;
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
      if ([v17 isEqualToString:{@"force", v31}])
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
        v8[2](v8, v30);

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

  self = v31;
LABEL_35:
  if ([v9 count])
  {
    v20 = [objc_alloc(MEMORY[0x277D3B9A0]) initWithHighlightTailorOptions:v19];
    v39 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];

    WeakRetained = [objc_alloc(MEMORY[0x277D3B928]) initWithManager:self->_graphManager enrichmentProcessors:v21];
    v23 = [MEMORY[0x277D22C80] ignoreProgress];
    v34 = 0;
    [WeakRetained enrichDataModelForHighlightUUIDs:v9 progressReporter:v23 error:&v34];
    v24 = v34;
    goto LABEL_39;
  }

  v21 = objc_alloc_init(PHAHighlightEnrichmentTask);
  [(PHAHighlightEnrichmentTask *)v21 setTailorOptions:v19];
  v25 = [(PHAEnrichmentTask *)v21 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v25];

  graphManager = self->_graphManager;
  v27 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v33 = 0;
  v28 = [(PHAHighlightEnrichmentTask *)v21 runWithGraphManager:graphManager progressReporter:v27 error:&v33];
  v24 = v33;

  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    v23 = [MEMORY[0x277CBEAA8] date];
    v29 = [(PHAEnrichmentTask *)v21 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:v23 forKey:v29];

LABEL_39:
  }

  v8[2](v8, v24);
LABEL_41:
}

- (void)requestEnrichmentWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v61[7] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = a4;
  v48 = a5;
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
  v15 = [[PHAMemoriesEnrichmentTask alloc] initWithOptions:v8];
  v61[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:7];

  v47 = v8;
  v17 = [v8 objectForKeyedSubscript:@"processor"];
  v18 = [v17 lowercaseString];

  if (v18)
  {
    if (([v18 isEqualToString:@"force-all"] & 1) == 0)
    {
      v19 = [v18 stringByReplacingOccurrencesOfString:@"backgroundjob" withString:&stru_2844B1BF0];

      v20 = [v19 stringByReplacingOccurrencesOfString:@"background" withString:&stru_2844B1BF0];

      v21 = [v20 stringByReplacingOccurrencesOfString:@"processor" withString:&stru_2844B1BF0];

      v18 = [v21 stringByReplacingOccurrencesOfString:@"enrichment" withString:&stru_2844B1BF0];

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
            v28 = [v27 name];
            v29 = [v28 lowercaseString];

            if ([v29 containsString:v18])
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
      v48[2](v48, v30);
    }
  }

  v45 = v18;
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
          v38 = [v37 name];
          [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v38];

          graphManager = self->_graphManager;
          v40 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
          v49 = v34;
          LODWORD(graphManager) = [v37 runWithGraphManager:graphManager progressReporter:v40 error:&v49];
          v41 = v49;

          if (!graphManager)
          {
            v48[2](v48, v41);
            v34 = v41;
            goto LABEL_30;
          }

          WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
          v43 = [MEMORY[0x277CBEAA8] date];
          v44 = [v37 name];
          [WeakRetained setLibraryScopedWorkerPreferencesValue:v43 forKey:v44];

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

  v48[2](v48, 0);
}

- (void)cacheCPAnalyticsPropertiesWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(PHACachingCPAnalyticsPropertiesTask);
  v7 = [(PHACachingCPAnalyticsPropertiesTask *)v6 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v7];

  graphManager = self->_graphManager;
  v9 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v15 = 0;
  v10 = [(PHACachingCPAnalyticsPropertiesTask *)v6 runWithGraphManager:graphManager progressReporter:v9 error:&v15];
  v11 = v15;

  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [(PHACachingCPAnalyticsPropertiesTask *)v6 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:v13 forKey:v14];
  }

  v5[2](v5, v10, v11);
}

- (void)requestExternalAssetRelevanceProcessingWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  graphManager = self->_graphManager;
  v20 = 0;
  v7 = [(PGManager *)graphManager isReadyWithError:&v20];
  v8 = v20;
  if (v7)
  {
    v9 = objc_alloc_init(PHAExternalAssetsTask);
    v10 = [(PHAExternalAssetsTask *)v9 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v10];

    v11 = self->_graphManager;
    v12 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v19 = v8;
    v13 = [(PHAExternalAssetsTask *)v9 runWithGraphManager:v11 progressReporter:v12 error:&v19];
    v14 = v19;

    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
      v16 = [MEMORY[0x277CBEAA8] date];
      v17 = [(PHAExternalAssetsTask *)v9 name];
      [WeakRetained setLibraryScopedWorkerPreferencesValue:v16 forKey:v17];
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    v5[2](v5, v18, v14);
  }

  else
  {
    v5[2](v5, 0, v8);
    v14 = v8;
  }
}

- (void)requestSyndicationProcessingWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  graphManager = self->_graphManager;
  v29 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v29];
  v11 = v29;
  if (v10)
  {
    v12 = objc_alloc_init(PHASyndicationTask);
    v13 = MEMORY[0x277D3B0E8];
    v14 = MEMORY[0x277D3B0E0];
    if (v7)
    {
      v15 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3B0E0]];
      -[PHASyndicationTask setPerformCurationJob:](v12, "setPerformCurationJob:", [v15 BOOLValue]);

      v16 = [v7 objectForKeyedSubscript:*v13];
      -[PHASyndicationTask setPerformGuestInferenceJob:](v12, "setPerformGuestInferenceJob:", [v16 BOOLValue]);
    }

    v17 = [(PHASyndicationTask *)v12 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v17];

    v18 = self->_graphManager;
    v19 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v28 = v11;
    v20 = [(PHASyndicationTask *)v12 runWithGraphManager:v18 progressReporter:v19 error:&v28];
    v21 = v28;

    if (v20)
    {
      WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
      v23 = [MEMORY[0x277CBEAA8] date];
      v24 = [(PHASyndicationTask *)v12 name];
      [WeakRetained setLibraryScopedWorkerPreferencesValue:v23 forKey:v24];
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

    v8[2](v8, v25, v21);
  }

  else
  {
    v8[2](v8, 0, v11);
    v21 = v11;
  }
}

- (void)requestGenerateQuestionsWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v62[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  graphManager = self->_graphManager;
  v54 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v54];
  v11 = v54;
  if ((v10 & 1) == 0)
  {
    v8[2](v8, 0, v11);
    goto LABEL_5;
  }

  v12 = *MEMORY[0x277D3AFC0];
  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AFC0]];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = [PHAPhotosChallengeTask currentQuestionsKVSDataFromGraphManager:self->_graphManager];
    v61 = v12;
    v62[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    (v8)[2](v8, v16, 0);

    goto LABEL_5;
  }

  v17 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AFA0]];
  v18 = [v17 BOOLValue];

  if (v18)
  {
    [PHAPhotosChallengeTask removeCurrentKVSDataFromGraphManager:self->_graphManager];
    v8[2](v8, MEMORY[0x277CBEC10], 0);
    goto LABEL_5;
  }

  v19 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AFD8]];
  v20 = [v19 BOOLValue];

  if (v20)
  {
    v21 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AF98]];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [MEMORY[0x277CBEAA8] date];
    }

    v45 = v23;

    v46 = [PHAPhotosChallengeTask postSubmissionNotificationIfNeededWithGraphManager:self->_graphManager notificationDate:v45];
    v59 = *MEMORY[0x277D3AFB0];
    v47 = [MEMORY[0x277CCABB0] numberWithBool:v46];
    v60 = v47;
    v48 = MEMORY[0x277CBEAC0];
    v49 = &v60;
    v50 = &v59;
LABEL_25:
    v52 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:1];
    (v8)[2](v8, v52, 0);

    goto LABEL_5;
  }

  v24 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AFD0]];
  v25 = [v24 BOOLValue];

  if (v25)
  {
    v26 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AF98]];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = [MEMORY[0x277CBEAA8] date];
    }

    v45 = v28;

    v51 = [PHAPhotosChallengeTask postNewQuestionsNotificationIfNeededWithGraphManager:self->_graphManager notificationDate:v45];
    v57 = *MEMORY[0x277D3AFA8];
    v47 = [MEMORY[0x277CCABB0] numberWithBool:v51];
    v58 = v47;
    v48 = MEMORY[0x277CBEAC0];
    v49 = &v58;
    v50 = &v57;
    goto LABEL_25;
  }

  v29 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AFC8]];
  v30 = [v29 unsignedIntegerValue];

  v31 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AF90]];
  v32 = [v31 integerValue];

  v33 = objc_alloc_init(PHAPhotosChallengeTask);
  v34 = v33;
  if (v32)
  {
    [(PHAPhotosChallengeTask *)v33 setLimit:v32];
  }

  if (v30)
  {
    [(PHAPhotosChallengeTask *)v34 setQuestionOptions:v30];
  }

  v35 = [(PHAPhotosChallengeTask *)v34 name];
  [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v35];

  v36 = self->_graphManager;
  v37 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  v53 = v11;
  v38 = [(PHAPhotosChallengeTask *)v34 runWithGraphManager:v36 progressReporter:v37 error:&v53];
  v39 = v53;

  if (v38)
  {
    WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
    v41 = [MEMORY[0x277CBEAA8] date];
    v42 = [(PHAPhotosChallengeTask *)v34 name];
    [WeakRetained setLibraryScopedWorkerPreferencesValue:v41 forKey:v42];
  }

  v55 = *MEMORY[0x277D3AFB8];
  v43 = [MEMORY[0x277CCABB0] numberWithBool:v38];
  v56 = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  (v8)[2](v8, v44, v39);

  v11 = v39;
LABEL_5:
}

- (void)reportMetricsWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v6 = a5;
  graphManager = self->_graphManager;
  v20 = 0;
  v8 = [(PGManager *)graphManager isReadyWithError:&v20];
  v9 = v20;
  if (v8)
  {
    v10 = objc_alloc_init(PHAMetricReportingTask);
    v11 = [(PHAMetricReportingTask *)v10 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v11];

    v12 = self->_graphManager;
    v13 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v19 = v9;
    v14 = [(PHAMetricReportingTask *)v10 runWithGraphManager:v12 progressReporter:v13 error:&v19];
    v15 = v19;

    if (v14)
    {
      WeakRetained = objc_loadWeakRetained(&self->_jobTimeHandler);
      v17 = [MEMORY[0x277CBEAA8] date];
      v18 = [(PHAMetricReportingTask *)v10 name];
      [WeakRetained setLibraryScopedWorkerPreferencesValue:v17 forKey:v18];
    }

    v6[2](v6, v14, v15);
  }

  else
  {
    v6[2](v6, 0, v9);
    v15 = v9;
  }
}

- (void)generateSuggestionsWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v55[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
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
    v12 = v7;
    v47 = v12;
    v48 = self;
    v13 = v8;
    v50 = v13;
    v11 = v11;
    v49 = v11;
    v14 = _Block_copy(&v43);
    v15 = [v12 objectForKeyedSubscript:{*MEMORY[0x277D3B0C8], v43, v44, v45, v46}];
    v16 = [v15 integerValue];

    if (v16 > 7u)
    {
      if (v16 == 8)
      {
        v31 = [PHAWallpaperSuggestionGenerationWeeklyTask alloc];
        v32 = 8;
        goto LABEL_26;
      }

      if (v16 == 11)
      {
        v21 = objc_alloc_init(PGCameraStyleableSuggestionGenerator);
        v22 = self->_graphManager;
        v23 = [MEMORY[0x277D22C80] ignoreProgress];
        v24 = [(PGCameraStyleableSuggestionGenerator *)v21 generateSuggestionsWithGraphManager:v22 progressReporter:v23];

        v54 = *MEMORY[0x277D3B0D8];
        v55[0] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
        (*(v13 + 2))(v13, v25, v11);

        goto LABEL_28;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v20 = PHASharingSuggestionGenerationTask;
        goto LABEL_17;
      }

      if (v16 == 6)
      {
        v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277D3B0B8]];
        v18 = [v17 integerValue];

        v19 = v18;
        if (v18 == 680)
        {
          v20 = PHAWallpaperSettlingEffectGenerationTask;
LABEL_17:
          v33 = objc_alloc_init(v20);
LABEL_27:
          v42 = v33;
          v14[2](v14, v33);

          goto LABEL_28;
        }

        v34 = [MEMORY[0x277CD99E0] allTopWallpaperSuggestionSubtypes];
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
        v36 = [v34 containsObject:v35];

        if (v36)
        {
          v37 = 2;
        }

        else
        {
          v38 = [MEMORY[0x277CD99E0] allShuffleWallpaperSuggestionSubtypes];
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
          v40 = [v38 containsObject:v39];

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
    v27 = [v26 BOOLValue];

    if (v16 || v27)
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

  (*(v8 + 2))(v8, 0, v11);
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

- (void)generateMemoriesWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  graphManager = self->_graphManager;
  v43 = 0;
  v10 = [(PGManager *)graphManager isReadyWithError:&v43];
  v11 = v43;
  v12 = v11;
  if (v10)
  {
    v40 = v11;
    v13 = objc_alloc_init(PHAMemoryElectionTask);
    v14 = [(PHAMemoryElectionTask *)v13 name];
    [(PGProgressCallChecker *)self->_progressCallChecker setTaskName:v14];

    v15 = [v7 objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
    if (v15)
    {
      [(PHAMemoryElectionTask *)v13 setUniversalDate:v15];
    }

    else
    {
      v16 = [MEMORY[0x277CBEAA8] date];
      [(PHAMemoryElectionTask *)v13 setUniversalDate:v16];
    }

    v17 = [v7 objectForKeyedSubscript:@"PHMemoryOptionLocationKey"];
    [(PHAMemoryElectionTask *)v13 setLocation:v17];

    v18 = [v7 objectForKeyedSubscript:@"PHMemoryOptionExtraParametersKey"];
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
      v27 = [v24 unsignedIntegerValue];
      v28 = [v18 objectForKeyedSubscript:@"PHMemoryOptionRequestedFeatureIdentifierKey"];
      v29 = [v26 featureWithType:v27 name:v28];
      [(PHAMemoryElectionTask *)v13 setRequestedFeature:v29];
    }

    v30 = [v18 objectForKeyedSubscript:@"PHMemoryOptionRequestedUniqueMemoryIdentifierKey"];
    [(PHAMemoryElectionTask *)v13 setRequestedUniqueMemoryIdentifier:v30];

    v31 = [v7 objectForKeyedSubscript:@"PHMemoryOptionReasonKey"];
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
    v34 = [v7 objectForKeyedSubscript:@"PHMemoryOptionCommitChangesKey"];
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
    v38 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __80__PHAStorytellingOnDemandTaskHandler_generateMemoriesWithOptions_context_reply___block_invoke;
    v41[3] = &unk_2788B1FB8;
    v42 = v8;
    [(PHAMemoryElectionTask *)v13 runWithGraphManager:v37 progressReporter:v38 reply:v41];

    v12 = v40;
  }

  else
  {
    (*(v8 + 2))(v8, 0, v11);
  }
}

- (void)requestOnDemandTasksWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v53[3] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a3 objectForKeyedSubscript:*MEMORY[0x277D3AF08]];
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
          v7[2](v7, 0, v35);

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
      v36 = v7;
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
            v32 = [v23 name];
            v33 = [v31 stringWithFormat:@"%@'s shouldRunWithGraphManager returned NO", v32];
            v34 = [v30 pl_analysisErrorWithCode:14 localizedDescription:v33];
            v7 = v36;
            v36[2](v36, 0, v34);

            goto LABEL_53;
          }

          graphManager = self->_graphManager;
          v25 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
          v37 = v22;
          LODWORD(graphManager) = [v23 runWithGraphManager:graphManager progressReporter:v25 error:&v37];
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
      v7 = v36;
    }

    else
    {
      v19 = 0;
      v26 = 1;
    }

    v7[2](v7, v26, v19);
LABEL_53:
  }

  else
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"No tasks to run for %@", v8];
    v29 = [v27 pl_analysisErrorWithCode:19 localizedDescription:v28];
    v7[2](v7, 0, v29);
  }

LABEL_54:
}

- (void)shutdown
{
  v3 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  [v3 cancelOperation];

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
    v3 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    [v3 cancelOperation];
  }
}

- (void)cancelCurrentOperation
{
  v2 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
  [v2 cancelOperation];
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
    v4 = [(PHAStorytellingOnDemandTaskHandler *)self onDemandTaskProgressReporter];
    v3 = v4 == 0;
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
  v3 = [(NSMutableArray *)self->_operationsToRun firstObject];
  if (v3)
  {
    [(NSMutableArray *)self->_operationsToRun removeObjectAtIndex:0];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)handleOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_operationsToRun addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  v5 = [(PHAStorytellingOnDemandTaskHandler *)self delegate];
  [v5 onDemandTaskHandlerStartingOperation:self];

  [(PHAStorytellingOnDemandTaskHandler *)self dequeueOperationsIfNeeded];
}

- (PHAStorytellingOnDemandTaskHandler)initWithGraphManager:(id)a3 jobTimeHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PHAStorytellingOnDemandTaskHandler;
  v9 = [(PHAStorytellingOnDemandTaskHandler *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graphManager, a3);
    v11 = [(PGManager *)v10->_graphManager workingContext];
    v12 = [v11 photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.photoanalysis.ondemandtask", v14);
    executionQueue = v10->_executionQueue;
    v10->_executionQueue = v15;

    v10->_isShutdown = 0;
    v17 = [MEMORY[0x277CBEB18] array];
    operationsToRun = v10->_operationsToRun;
    v10->_operationsToRun = v17;

    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v10->_jobTimeHandler, v8);
    v19 = os_log_create("com.apple.photoanalysisd", "ondemandtaskhandler");
    loggingConnection = v10->_loggingConnection;
    v10->_loggingConnection = v19;
  }

  return v10;
}

@end