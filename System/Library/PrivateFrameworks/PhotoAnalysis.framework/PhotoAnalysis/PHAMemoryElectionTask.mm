@interface PHAMemoryElectionTask
+ (BOOL)_reloadWidgetTimelineForWidgetKind:(id)kind loggingConnection:(id)connection error:(id *)error;
+ (BOOL)reloadForYouWidgetTimelineWithLoggingConnection:(id)connection error:(id *)error;
+ (id)_filterMemoriesWithAcceptableUserFeedback:(id)feedback allMemoriesFetchResult:(id)result photoLibrary:(id)library;
+ (id)_filterSuggestionsToFeatureBasedOnUserFeedbackForSuggestionsToFeature:(id)feature sugestionsFetchResult:(id)result photoLibrary:(id)library;
+ (id)_userFeedbackCalculatorWithPhotoLibrary:(id)library;
+ (void)findAndSetFeaturedStateForMemoriesAndSuggestionsIfNeededInPhotoLibrary:(id)library loggingConnection:(id)connection;
+ (void)findMemoriesAndSetFeaturedStateIfNeededInPhotoLibrary:(id)library loggingConnection:(id)connection;
+ (void)findMemoriesAndSetNeverFeatureStateIfNeededInPhotoLibrary:(id)library loggingConnection:(id)connection;
+ (void)findSuggestionsAndSetFeaturedStateIfNeededInPhotoLibrary:(id)library loggingConnection:(id)connection;
+ (void)sendElectedMemoriesPipelineAnalyticsEventWithCountsOfMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics;
+ (void)sendGeneratedMemoriesPipelineAnalyticsEventWithCountsOfMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics;
+ (void)sendMemoryTriggersAnalyticsEventWithElectedMemoryType:(id)type triggerType:(id)triggerType loggingConnection:(id)connection analytics:(id)analytics;
+ (void)sendNotifiedMemoriesPipelineAnalyticsEventWithMemoryType:(id)type loggingConnection:(id)connection analytics:(id)analytics;
+ (void)sendTriggeredMemoriesPipelineAnalyticsEventWithCountsOfMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics;
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (PHAMemoryElectionTask)init;
- (id)_electorConfigurationForExistingMemories:(id)memories graphManager:(id)manager loggingConnection:(id)connection;
- (id)_recentlySuggestedMoodsFromExistingMemoriesSortedByCreationDate:(id)date;
- (id)taskClassDependencies;
- (void)collectMetricsOnElectedEnrichedMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics;
- (void)collectMetricsOnExistingMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics;
- (void)collectMetricsOnMemoriesInGraphWithWorkingContext:(id)context loggingConnection:(id)connection analytics:(id)analytics;
- (void)handleNotificationsForMemories:(id)memories graphManager:(id)manager userFeedbackCalculator:(id)calculator loggingConnection:(id)connection;
- (void)runWithGraphManager:(id)manager progressReporter:(id)reporter reply:(id)reply;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAMemoryElectionTask

- (void)handleNotificationsForMemories:(id)memories graphManager:(id)manager userFeedbackCalculator:(id)calculator loggingConnection:(id)connection
{
  v40 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  managerCopy = manager;
  calculatorCopy = calculator;
  connectionCopy = connection;
  if ([MEMORY[0x277D3BC38] isMemoriesNotificationDisabled])
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "[PHAMemoryElectionTask] Not firing memories notification: disabled in settings";
LABEL_11:
      _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, v14, buf, 2u);
    }
  }

  else if (PLIsFeaturedContentAllowed())
  {
    v30 = objc_alloc_init(MEMORY[0x277D3BBA0]);
    v31 = managerCopy;
    if (([v30 BOOLValueForKey:@"com.apple.photos.graphservice.forcedailynotifications" withFallbackValue:0] & 1) != 0 || -[PHAMemoryElectionTask forceNotification](self, "forceNotification"))
    {
      v15 = 1;
      if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v39 = 1;
        _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] Memory notifications will be forced: %d", buf, 8u);
      }
    }

    else
    {
      if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] Handling notifications for memories", buf, 2u);
      }

      v15 = 0;
    }

    v29 = v15;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = memoriesCopy;
    v18 = memoriesCopy;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          v24 = MEMORY[0x277CCABB0];
          [v23 score];
          v25 = [v24 numberWithDouble:?];
          [v16 addObject:v25];

          localIdentifier = [v23 localIdentifier];
          [v17 addObject:localIdentifier];
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v20);
    }

    managerCopy = v31;
    v27 = [[PHANotificationController alloc] initWithGraphManager:v31 userFeedbackCalculator:calculatorCopy];
    v28 = v27;
    if ((v29 & 1) != 0 || [(PHANotificationController *)v27 shouldFireNotificationForMemoriesWithScores:v16 withCreationReason:2])
    {
      [(PHANotificationController *)v28 fireNotificationForMemoryIdentifiers:v17 withCreationReason:2];
    }

    memoriesCopy = v32;
  }

  else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v14 = "[PHAMemoryElectionTask] Not firing memories notification: featured content is disabled in settings";
    goto LABEL_11;
  }
}

- (id)_electorConfigurationForExistingMemories:(id)memories graphManager:(id)manager loggingConnection:(id)connection
{
  v26 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  managerCopy = manager;
  connectionCopy = connection;
  v11 = objc_alloc_init(MEMORY[0x277D3BA60]);
  [v11 setRequestedMemoryCategory:self->_requestedCategory];
  [v11 setRequestedTriggerType:self->_requestedTriggerType];
  if (self->_requestedFeature)
  {
    [v11 setRequestedFeature:?];
  }

  if (self->_requestedUniqueMemoryIdentifier)
  {
    [v11 setRequestedUniqueMemoryIdentifier:?];
  }

  if (self->_universalDate)
  {
    v12 = [MEMORY[0x277D27690] localDateFromUniversalDate:?];
    [v11 setLocalDate:v12];
  }

  if (self->_location)
  {
    v13 = [MEMORY[0x277D27690] timeZoneFromLocation:?];
    [v11 setTimeZone:v13];
  }

  [v11 setShouldPersist:0];
  v14 = [objc_alloc(MEMORY[0x277D3BBA0]) initWithTrialNamespace:1 onDiskResourceFile:0];
  v15 = [v14 longValueForKey:@"com.apple.photos.memories.election.minimumTargetNumberOfMemories" withFallbackValue:3];
  v16 = [v14 longValueForKey:@"com.apple.photos.memories.election.maximumTargetNumberOfMemories" withFallbackValue:5];
  v17 = [v14 BOOLValueForKey:@"com.apple.photos.memories.election.useMaximumTargetNumberOfMemories" withFallbackValue:0];
  [v11 setMinimumTargetNumberOfMemories:v15];
  [v11 setMaximumTargetNumberOfMemories:v16];
  [v11 setUseMaximumTargetNumberOfMemories:v17];
  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    v24 = 134217984;
    v25 = v15;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] ElectionConfiguration: minimumTargetNumberOfMemories:%lu", &v24, 0xCu);
  }

  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    v24 = 134217984;
    v25 = v16;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] ElectionConfiguration: maximumTargetNumberOfMemories:%lu", &v24, 0xCu);
  }

  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    v24 = 67109120;
    LODWORD(v25) = v17;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] ElectionConfiguration: useMaximumTargetNumberOfMemories:%d", &v24, 8u);
  }

  if (self->_requestedCategory)
  {
    v18 = [[PHASuggestionController alloc] initWithGraphManager:managerCopy];
    v19 = objc_alloc_init(MEMORY[0x277D3BBF0]);
    v20 = [MEMORY[0x277D27690] localDateFromUniversalDate:self->_universalDate];
    [v19 setLocalToday:v20];

    [v19 setDefaultStartAndEndDatesIfNeeded];
    [(PHASuggestionController *)v18 ingestExistingSuggestionsWithOptions:v19];
    v21 = [(PHASuggestionController *)v18 collidableSuggestionsWithOptions:v19];
    [v11 setCollidableSuggestions:v21];
  }

  v22 = [(PHAMemoryElectionTask *)self _recentlySuggestedMoodsFromExistingMemoriesSortedByCreationDate:memoriesCopy];
  [v11 setMoodHistory:v22];

  return v11;
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAMemoryElectionTask timeoutFatal:]", "PHAMemoryElectionTask.m", 357, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAMemoryElectionTask is stuck", v3, 2u);
  }
}

- (id)_recentlySuggestedMoodsFromExistingMemoriesSortedByCreationDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  reverseObjectEnumerator = [dateCopy reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      if ([v4 count] > 9)
      {
        break;
      }

      if ([v10 pendingState] != 1)
      {
        photosGraphProperties = [v10 photosGraphProperties];
        v12 = photosGraphProperties;
        if (photosGraphProperties)
        {
          v13 = [photosGraphProperties objectForKeyedSubscript:@"suggestedMood"];
          v14 = PHMemoryMoodForString();

          if (v14 != 16)
          {
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
            [v4 addObject:v15];
          }
        }
      }

      if (v7 == ++v9)
      {
        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v4;
}

- (void)runWithGraphManager:(id)manager progressReporter:(id)reporter reply:(id)reply
{
  v91[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  replyCopy = reply;
  analytics = [managerCopy analytics];
  v9 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
  v46 = [v9 childProgressReporterToCheckpoint:0.25];
  v45 = [v9 childProgressReporterToCheckpoint:0.5];
  v44 = [v9 childProgressReporterToCheckpoint:0.75];
  v43 = [v9 childProgressReporterToCheckpoint:1.0];
  workingContextForMemories = [managerCopy workingContextForMemories];
  photoLibrary = [workingContextForMemories photoLibrary];
  loggingConnection = [workingContextForMemories loggingConnection];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v91[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v13];

  v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  fetchedObjects = [v14 fetchedObjects];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v15 = loggingConnection;
    *buf = 67109120;
    *&buf[4] = [fetchedObjects count];
    _os_log_impl(&dword_22FA28000, v15, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] Found %d existing memories.", buf, 8u);
  }

  if ([reporterCopy isCancelled])
  {
    (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEC10], 0);
  }

  else
  {
    selfCopy2 = self;
    userInitiated = self->_userInitiated;
    if (!userInitiated)
    {
      [(PHAMemoryElectionTask *)self collectMetricsOnExistingMemories:fetchedObjects loggingConnection:loggingConnection analytics:analytics];
      workingContext = [managerCopy workingContext];
      [(PHAMemoryElectionTask *)self collectMetricsOnMemoriesInGraphWithWorkingContext:workingContext loggingConnection:loggingConnection analytics:analytics];

      selfCopy2 = self;
    }

    v19 = [(PHAMemoryElectionTask *)selfCopy2 _electorConfigurationForExistingMemories:fetchedObjects graphManager:managerCopy loggingConnection:loggingConnection];
    *buf = 0;
    v86 = buf;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__2111;
    v89 = __Block_byref_object_dispose__2112;
    v90 = 0;
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__2111;
    v79 = __Block_byref_object_dispose__2112;
    v80 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 1;
    v20 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:photoLibrary];
    workingContext2 = [managerCopy workingContext];
    v22 = !userInitiated;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __68__PHAMemoryElectionTask_runWithGraphManager_progressReporter_reply___block_invoke;
    v53[3] = &unk_2788B1DD0;
    v37 = managerCopy;
    v54 = v37;
    v23 = v20;
    v55 = v23;
    v38 = v19;
    v56 = v38;
    v57 = v46;
    v58 = reporterCopy;
    v39 = replyCopy;
    v66 = v39;
    selfCopy3 = self;
    v24 = photoLibrary;
    v60 = v24;
    v61 = v45;
    v25 = loggingConnection;
    v62 = v25;
    v63 = v44;
    v67 = &v75;
    v68 = buf;
    v64 = v43;
    v69 = &v71;
    v41 = v40;
    v65 = v41;
    v70 = v22;
    [workingContext2 performSynchronousConcurrentGraphReadUsingBlock:v53];

    if (v72[3])
    {
      if ([*(v86 + 5) count])
      {
        v52 = 0;
        v26 = [PHAMemoryElectionTask reloadForYouWidgetTimelineWithLoggingConnection:v25 error:&v52];
        v36 = v52;
        if (!v26 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v83 = 138412290;
          *v84 = v36;
          _os_log_error_impl(&dword_22FA28000, v25, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask] Error calling reloadForYouWidgetTimelineWithLoggingConnection (%@)", v83, 0xCu);
        }

        librarySpecificFetchOptions2 = [v24 librarySpecificFetchOptions];
        [librarySpecificFetchOptions2 setIncludePendingMemories:1];
        v28 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 localIdentifiers:*(v86 + 5) options:librarySpecificFetchOptions2];
        fetchedObjects2 = [v28 fetchedObjects];
        [(PHAMemoryElectionTask *)self handleNotificationsForMemories:fetchedObjects2 graphManager:v37 userFeedbackCalculator:v23 loggingConnection:v25];
      }

      v30 = v25;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v41 count];
        v32 = [v41 description];
        *v83 = 67109378;
        *v84 = v31;
        *&v84[4] = 2112;
        *&v84[6] = v32;
        _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_INFO, "Persisted %d memories: %@", v83, 0x12u);
      }

      v33 = *(v86 + 5);
      if (!v33)
      {
        v33 = MEMORY[0x277CBEBF8];
      }

      v81[0] = @"PHMemoryIdentifiersKey";
      v81[1] = @"PHMemoryDescriptionsKey";
      v82[0] = v33;
      v82[1] = v41;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
      (*(v39 + 2))(v39, v34, 0);
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v35 = v76[5];
        *v83 = 138412290;
        *v84 = v35;
        _os_log_impl(&dword_22FA28000, v25, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] memoryLocalIdentifiersFromPersistingEnrichedMemories failed (%@)", v83, 0xCu);
      }

      (*(v39 + 2))(v39, 0, v76[5]);
    }

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v75, 8);

    _Block_object_dispose(buf, 8);
  }
}

void __68__PHAMemoryElectionTask_runWithGraphManager_progressReporter_reply___block_invoke(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = objc_alloc(MEMORY[0x277D3BA58]);
  v5 = [*(a1 + 32) workingContext];
  v6 = [v4 initWithWorkingContext:v5 userFeedbackCalculator:*(a1 + 40)];

  v7 = [v6 generateEnrichedMemoriesWithConfiguration:*(a1 + 48) graph:v3 progressReporter:*(a1 + 56)];
  if ([*(a1 + 64) isCancelled])
  {
    (*(*(a1 + 128) + 16))();
    goto LABEL_49;
  }

  v8 = [v7 count];
  v9 = v8;
  if ((*(*(a1 + 72) + 9) & 1) == 0 && v8)
  {
    v10 = [objc_alloc(MEMORY[0x277D3BAC0]) initForMemoryEnrichment];
    v11 = *(a1 + 32);
    v72 = 0;
    v12 = [v11 musicCuratorContextWithCurationOptions:v10 error:&v72];
    v58 = v72;
    v60 = v3;
    v13 = v7;
    v14 = MEMORY[0x277D3B690];
    v16 = *(a1 + 80);
    v15 = *(a1 + 88);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __68__PHAMemoryElectionTask_runWithGraphManager_progressReporter_reply___block_invoke_2;
    v70[3] = &unk_2788B1D80;
    v71 = *(a1 + 96);
    v17 = v14;
    v7 = v13;
    v18 = v16;
    v3 = v60;
    [v17 requestFlexMusicCurationForEnrichedMemories:v13 context:v12 photoLibrary:v18 graph:v60 progressReporter:v15 resultHandler:v70];
    if ([*(a1 + 64) isCancelled])
    {
      goto LABEL_11;
    }

    if (v12)
    {
      v19 = MEMORY[0x277D3B690];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __68__PHAMemoryElectionTask_runWithGraphManager_progressReporter_reply___block_invoke_243;
      v68[3] = &unk_2788B1DA8;
      v20 = *(a1 + 104);
      v69 = *(a1 + 96);
      [v19 requestMusicCurationForEnrichedMemories:v13 context:v12 graph:v60 progressReporter:v20 resultHandler:v68];
    }

    else
    {
      v21 = *(a1 + 96);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v54 = *(*(*(a1 + 136) + 8) + 40);
        *buf = 138412290;
        v75 = v54;
        _os_log_error_impl(&dword_22FA28000, v21, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask] (MemoriesMusic) Failed to build music curation context with error: %@", buf, 0xCu);
      }
    }

    v7 = v13;
    if ([*(a1 + 64) isCancelled])
    {
LABEL_11:
      (*(*(a1 + 128) + 16))();

      goto LABEL_49;
    }

    v56 = [objc_alloc(MEMORY[0x277D3BA80]) initWithPhotoLibrary:*(a1 + 80)];
    v22 = *(*(a1 + 72) + 8);
    if (v22)
    {
      v23 = v22 ^ 1u;
    }

    else if ([MEMORY[0x277D3BC38] isMemoriesLivingOnFeedbackEnabled])
    {
      v24 = *(a1 + 96);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v24, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] Forcing memories to be non pending since user default isMemoriesLivingOnFeedbackEnabled is enabled", buf, 2u);
      }

      v23 = 0;
      v7 = v13;
    }

    else
    {
      v23 = 1;
    }

    v25 = *(a1 + 112);
    v26 = *(*(a1 + 136) + 8);
    obj = *(v26 + 40);
    v27 = v56;
    v28 = [v56 memoryLocalIdentifiersFromPersistingEnrichedMemories:v7 withPendingState:v23 graph:v60 progressReporter:v25 error:&obj];
    objc_storeStrong((v26 + 40), obj);
    v29 = *(*(a1 + 144) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    *(*(*(a1 + 152) + 8) + 24) = *(*(*(a1 + 144) + 8) + 40) != 0;
    *(*(a1 + 72) + 11) = *(*(*(a1 + 152) + 8) + 24);
    if (*(*(*(a1 + 152) + 8) + 24) == 1)
    {
      v31 = [objc_alloc(MEMORY[0x277D3BAB8]) initWithInflationActionSource:0];
      v32 = *(a1 + 32);
      v66 = 0;
      v33 = [v32 musicCurationInflationContextWithInflationOptions:v31 error:&v66];
      v34 = v66;
      if (v33)
      {
        v35 = v31;
        v36 = v34;
        v37 = [objc_alloc(MEMORY[0x277D3BA80]) initWithPhotoLibrary:*(a1 + 80)];
        [v37 cacheMusicAudioAndArtworkForEnrichedMemories:v13 inflationContext:v33 photoLibrary:*(a1 + 80)];

        v34 = v36;
        v31 = v35;
        v27 = v56;
      }

      else
      {
        log = *(a1 + 96);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v75 = v34;
          _os_log_error_impl(&dword_22FA28000, log, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask] Failed to generate inflationContextError, error: %{public}@", buf, 0xCu);
        }
      }

      v3 = v60;
    }

    v7 = v13;
  }

  if (*(*(*(a1 + 152) + 8) + 24) != 1 || v9 == 0)
  {
    if (!*(*(*(a1 + 152) + 8) + 24))
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v59 = v6;
  v61 = v3;
  v39 = [*(*(*(a1 + 144) + 8) + 40) count];
  v40 = v39;
  if ((*(*(a1 + 72) + 9) & 1) == 0 && v39 != [v7 count])
  {
    v41 = *(a1 + 96);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v41, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask] persistedMemoryLocalIdentifiers.count is expected to be equal to electedEnrichedMemories.count when _createTransientMemories == NO", buf, 2u);
    }
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v57 = v7;
  v42 = v7;
  v43 = [v42 countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = 0;
    v46 = *v63;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v63 != v46)
        {
          objc_enumerationMutation(v42);
        }

        v48 = [*(*(&v62 + 1) + 8 * i) enrichedDescription];
        if (v45 < v40)
        {
          v49 = [*(*(*(a1 + 144) + 8) + 40) objectAtIndexedSubscript:v45];
          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v49, v48];

          v48 = v50;
        }

        [*(a1 + 120) addObject:v48];
        ++v45;
      }

      v44 = [v42 countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v44);
  }

  v6 = v59;
  v3 = v61;
  v7 = v57;
  if (*(*(*(a1 + 152) + 8) + 24))
  {
LABEL_47:
    if (*(a1 + 160) == 1)
    {
      v51 = *(a1 + 72);
      v52 = *(a1 + 96);
      v53 = [*(a1 + 32) analytics];
      [v51 collectMetricsOnElectedEnrichedMemories:v7 loggingConnection:v52 analytics:v53];
    }
  }

LABEL_49:
}

void __68__PHAMemoryElectionTask_runWithGraphManager_progressReporter_reply___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    [v7 setFlexMusicCuration:v8];
  }

  else
  {
    v10 = *(a1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_error_impl(&dword_22FA28000, v10, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask] (MemoriesMusic) Failed to curate flex music for enriched memory with error: %@", &v11, 0xCu);
    }
  }
}

void __68__PHAMemoryElectionTask_runWithGraphManager_progressReporter_reply___block_invoke_243(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    [v7 setMusicCuration:v8];
  }

  else
  {
    v10 = *(a1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_error_impl(&dword_22FA28000, v10, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask] (MemoriesMusic) Failed to curate apple music for enriched memory with error: %@", &v11, 0xCu);
    }
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  managerCopy = manager;
  reporterCopy = reporter;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2111;
  v21 = __Block_byref_object_dispose__2112;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__PHAMemoryElectionTask_runWithGraphManager_progressReporter_error___block_invoke;
  v13[3] = &unk_2788B1D58;
  v15 = &v23;
  v16 = &v17;
  v10 = reporterCopy;
  v14 = v10;
  [(PHAMemoryElectionTask *)self runWithGraphManager:managerCopy progressReporter:v10 reply:v13];
  if (error)
  {
    *error = v18[5];
  }

  v11 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __68__PHAMemoryElectionTask_runWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = v9 != 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v6 = [*(a1 + 32) throughputReportBlock];

  if (v6)
  {
    v7 = [*(a1 + 32) throughputReportBlock];
    v8 = [v9 objectForKeyedSubscript:@"PHMemoryIdentifiersKey"];
    v7[2](v7, [v8 count], 0);
  }
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  v39[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v35 = 0;
  v5 = [managerCopy isReadyWithError:&v35];
  v6 = v35;
  if (v5)
  {
    workingContextForMemories = [managerCopy workingContextForMemories];
    photoLibrary = [workingContextForMemories photoLibrary];
    loggingConnection = [workingContextForMemories loggingConnection];
    if ([MEMORY[0x277D3BC38] isMemoryElectionDisabled])
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "PHAMemoryElectionTask is disabled via user defaults";
LABEL_19:
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      }
    }

    else
    {
      if (PLIsFeaturedContentAllowed())
      {
        currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
        v11 = 1;
        [librarySpecificFetchOptions setIncludePendingMemories:1];
        [librarySpecificFetchOptions setFetchLimit:10];
        [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
        v14 = v30 = photoLibrary;
        v39[0] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
        [librarySpecificFetchOptions setSortDescriptors:v15];

        v29 = librarySpecificFetchOptions;
        [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = v34 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v38 count:16];
        if (v17)
        {
          v18 = v17;
          oslog = loggingConnection;
          v28 = v6;
          v19 = *v32;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v31 + 1) + 8 * i);
              [v21 photosGraphVersion];
              if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() >= 0x301)
              {
                universalDate = self->_universalDate;
                creationDate = [v21 creationDate];
                v24 = [currentCalendar compareDate:universalDate toDate:creationDate toUnitGranularity:16];

                if (v24 != 1)
                {
                  loggingConnection = oslog;
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
                  {
                    v25 = self->_universalDate;
                    *buf = 138412290;
                    v37 = v25;
                    _os_log_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask] Already generated memories for universal date %@", buf, 0xCu);
                  }

                  v11 = 0;
                  v6 = v28;
                  goto LABEL_24;
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v31 objects:v38 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }

          v11 = 1;
          loggingConnection = oslog;
          v6 = v28;
LABEL_24:
          photoLibrary = v30;
          librarySpecificFetchOptions = v29;
        }

        else
        {
          photoLibrary = v30;
        }

        goto LABEL_27;
      }

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "[PHAMemoryElectionTask] featured content is disabled in settings";
        goto LABEL_19;
      }
    }

    v11 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v11 = 0;
LABEL_28:

  return v11;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (PHAMemoryElectionTask)init
{
  v6.receiver = self;
  v6.super_class = PHAMemoryElectionTask;
  v2 = [(PHAMemoryElectionTask *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    universalDate = v2->_universalDate;
    v2->_universalDate = date;

    *&v2->_userInitiated = 0;
    v2->_requestedCategory = 0;
    v2->_requestedTriggerType = 0;
    v2->_featureCode = 101;
  }

  return v2;
}

+ (id)_userFeedbackCalculatorWithPhotoLibrary:(id)library
{
  v3 = MEMORY[0x277CD99F8];
  libraryCopy = library;
  v5 = [[v3 alloc] initWithPhotoLibrary:libraryCopy];

  return v5;
}

+ (id)_filterSuggestionsToFeatureBasedOnUserFeedbackForSuggestionsToFeature:(id)feature sugestionsFetchResult:(id)result photoLibrary:(id)library
{
  v61 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  resultCopy = result;
  libraryCopy = library;
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([featureCopy count])
  {
    v11 = MEMORY[0x277CD97A8];
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v46 = resultCopy;
    v50 = [v11 fetchKeyAssetBySuggestionUUIDForSuggestions:resultCopy options:librarySpecificFetchOptions];

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v47 = featureCopy;
    v14 = featureCopy;
    v15 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          uuid = [v19 uuid];
          v21 = [v50 objectForKeyedSubscript:uuid];

          if (v21)
          {
            uuid2 = [v21 uuid];
            uuid3 = [v19 uuid];
            [v13 setObject:uuid2 forKeyedSubscript:uuid3];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v16);
    }

    librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_2844CCB58];
    v25 = MEMORY[0x277CD9938];
    allValues = [v13 allValues];
    v44 = librarySpecificFetchOptions2;
    v49 = [v25 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:allValues options:librarySpecificFetchOptions2];

    v45 = libraryCopy;
    v27 = [self _userFeedbackCalculatorWithPhotoLibrary:libraryCopy];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v28 = v14;
    v29 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v52;
      v32 = *MEMORY[0x277CD9CB8];
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v52 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v51 + 1) + 8 * j);
          uuid4 = [v34 uuid];
          v36 = [v13 objectForKeyedSubscript:uuid4];

          if (v36)
          {
            v37 = [v49 objectForKeyedSubscript:v36];
            v38 = v37;
            v39 = MEMORY[0x277CBEBF8];
            if (v37)
            {
              v39 = v37;
            }

            v40 = v39;

            [v27 scoreForKeyAssetUUID:v36 personsUUIDsInKeyAsset:v40 memoryFeatures:0];
            v42 = v41;

            if ([MEMORY[0x277CD99F8] score:v42 meetsScoreThreshold:v32])
            {
              [v48 addObject:v34];
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v30);
    }

    resultCopy = v46;
    featureCopy = v47;
    libraryCopy = v45;
  }

  return v48;
}

+ (void)findSuggestionsAndSetFeaturedStateIfNeededInPhotoLibrary:(id)library loggingConnection:(id)connection
{
  v91[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  v7 = os_signpost_id_generate(connectionCopy);
  info = 0;
  mach_timebase_info(&info);
  v8 = connectionCopy;
  v9 = v8;
  v68 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FindSuggestionsAndSetFeaturedState", "", buf, 2u);
  }

  spid = v7;

  v66 = mach_absolute_time();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v12 = [currentCalendar startOfDayForDate:v11];

  v74 = v12;
  v13 = [v12 dateByAddingTimeInterval:-60.0];
  v73 = libraryCopy;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v91[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v16];

  predicateForAllFeaturedStateEnabledSuggestionTypesForWidget = [MEMORY[0x277CD99E0] predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(state == %d || state == %d)", 1, 0];
  v72 = v13;
  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate > %@ OR featuredState == %d", v13, 1];
  v20 = MEMORY[0x277CCA920];
  v69 = v18;
  v70 = predicateForAllFeaturedStateEnabledSuggestionTypesForWidget;
  v90[0] = predicateForAllFeaturedStateEnabledSuggestionTypesForWidget;
  v90[1] = v18;
  v90[2] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:3];
  v22 = [v20 andPredicateWithSubpredicates:v21];
  [librarySpecificFetchOptions setPredicate:v22];

  v71 = librarySpecificFetchOptions;
  v23 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  if ([v23 count])
  {
    v24 = v9;
    firstObject = [v23 firstObject];
    creationDate = [firstObject creationDate];

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v28 = [currentCalendar startOfDayForDate:creationDate];
    v64 = currentCalendar;
    if ([v28 compare:v12] == -1)
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];

      creationDate = 0;
      v28 = distantFuture;
    }

    v61 = v23;
    v62 = v19;
    oslog = v24;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v30 = v23;
    v31 = [v30 countByEnumeratingWithState:&v80 objects:v85 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v81;
      while (1)
      {
        v35 = 0;
        do
        {
          if (*v81 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v80 + 1) + 8 * v35);
          if ([v36 featuredState] == 1)
          {
            ++v33;
          }

          creationDate2 = [v36 creationDate];
          if ([creationDate2 compare:v28] != -1 || creationDate && (objc_msgSend(creationDate, "timeIntervalSinceDate:", creationDate2), v39 < 2.0))
          {
            if (![v36 featuredState])
            {
              [array addObject:v36];
            }

            v38 = creationDate2;
            goto LABEL_18;
          }

          if ([v36 featuredState] == 1)
          {
            [array2 addObject:v36];
            v38 = 0;
LABEL_18:

            creationDate = v38;
          }

          ++v35;
        }

        while (v32 != v35);
        v40 = [v30 countByEnumeratingWithState:&v80 objects:v85 count:16];
        v32 = v40;
        if (!v40)
        {
          goto LABEL_35;
        }
      }
    }

    v33 = 0;
LABEL_35:

    v48 = v73;
    v49 = [self _filterSuggestionsToFeatureBasedOnUserFeedbackForSuggestionsToFeature:array sugestionsFetchResult:v30 photoLibrary:v73];

    v50 = [v49 count];
    v51 = [array2 count];
    v52 = v51 <= 0 && v50 <= 0;
    if (v52 || (v53 = *&v51, v50 + v33 - v51 < 1))
    {
      v42 = oslog;
      v23 = v61;
      v19 = v62;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEBUG, "[PHAMemoryElectionTask+WidgetTimeline] Update featured suggestions - up to date", buf, 2u);
      }
    }

    else
    {
      v42 = oslog;
      v19 = v62;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v87 = v50;
        v88 = 2048;
        v89 = v53;
        _os_log_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+WidgetTimeline] Update featured suggestions - add: %zd, remove: %zd", buf, 0x16u);
      }

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v87 = v49;
        _os_log_debug_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEBUG, "[PHAMemoryElectionTask+WidgetTimeline] Suggestions to add featured state: %@", buf, 0xCu);
      }

      v23 = v61;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v87 = array2;
        _os_log_debug_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEBUG, "[PHAMemoryElectionTask+WidgetTimeline] Suggestions to remove featured state: %@", buf, 0xCu);
      }

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __116__PHAMemoryElectionTask_WidgetTimeline__findSuggestionsAndSetFeaturedStateIfNeededInPhotoLibrary_loggingConnection___block_invoke;
      v77[3] = &unk_2788B2C00;
      v78 = v49;
      v79 = array2;
      v76 = 0;
      v54 = [v73 performChangesAndWait:v77 error:&v76];
      v55 = v76;
      if ((v54 & 1) == 0 && os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v87 = v55;
        _os_log_error_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask+WidgetTimeline] Update featured suggestions - failed: %@", buf, 0xCu);
      }
    }

    v56 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v59 = v42;
    v60 = v59;
    if (v68 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v60, OS_SIGNPOST_INTERVAL_END, spid, "FindSuggestionsAndSetFeaturedState", "", buf, 2u);
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v87 = "FindSuggestionsAndSetFeaturedState";
      v88 = 2048;
      v89 = ((((v56 - v66) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v60, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    currentCalendar = v64;
    v41 = v74;
  }

  else
  {
    v41 = v12;
    v42 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+WidgetTimeline] Update featured suggestions - found 0 suggestions", buf, 2u);
    }

    v43 = mach_absolute_time();
    v44 = info.numer;
    v45 = info.denom;
    v46 = v9;
    v47 = v46;
    v48 = v73;
    if (v68 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v47, OS_SIGNPOST_INTERVAL_END, spid, "FindSuggestionsAndSetFeaturedState", "", buf, 2u);
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v87 = "FindSuggestionsAndSetFeaturedState";
      v88 = 2048;
      v89 = ((((v43 - v66) * v44) / v45) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v47, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }
}

void __116__PHAMemoryElectionTask_WidgetTimeline__findSuggestionsAndSetFeaturedStateIfNeededInPhotoLibrary_loggingConnection___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:*(*(&v18 + 1) + 8 * v6)];
        [v7 setFeaturedState:1];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:{*(*(&v14 + 1) + 8 * v12), v14}];
        [v13 setFeaturedState:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }
}

+ (id)_filterMemoriesWithAcceptableUserFeedback:(id)feedback allMemoriesFetchResult:(id)result photoLibrary:(id)library
{
  v71 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  resultCopy = result;
  libraryCopy = library;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([feedbackCopy count])
  {
    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v50 = feedbackCopy;
    v12 = feedbackCopy;
    v13 = [v12 countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v65;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v65 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v64 + 1) + 8 * i);
          if ([v17 isUserCreated])
          {
            [v11 addObject:v17];
          }

          else
          {
            objectID = [v17 objectID];
            [v53 addObject:objectID];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v14);
    }

    v52 = v11;

    v49 = resultCopy;
    v19 = [objc_alloc(MEMORY[0x277CD9888]) initWithExistingFetchResult:resultCopy filteredObjectIDs:v53];
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844CCB40];
    v51 = librarySpecificFetchOptions;
    v21 = [MEMORY[0x277CD97A8] fetchKeyAssetByMemoryUUIDForMemories:v19 options:librarySpecificFetchOptions];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v61;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v61 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [v23 objectForKeyedSubscript:*(*(&v60 + 1) + 8 * j)];
          uuid = [v28 uuid];
          [v22 addObject:uuid];
        }

        v25 = [v23 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v25);
    }

    v55 = [MEMORY[0x277CD9938] fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v22 options:v51];
    v48 = libraryCopy;
    v30 = [self _userFeedbackCalculatorWithPhotoLibrary:libraryCopy];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v19;
    v31 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v57;
      v34 = *MEMORY[0x277CD9CB8];
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v57 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v56 + 1) + 8 * k);
          uuid2 = [v36 uuid];
          v38 = [v23 objectForKeyedSubscript:uuid2];
          uuid3 = [v38 uuid];

          if (uuid3)
          {
            v40 = [v55 objectForKeyedSubscript:uuid3];
            v41 = v40;
            v42 = MEMORY[0x277CBEBF8];
            if (v40)
            {
              v42 = v40;
            }

            v43 = v42;

            blockableFeatures = [v36 blockableFeatures];
            [v30 scoreForKeyAssetUUID:uuid3 personsUUIDsInKeyAsset:v43 memoryFeatures:blockableFeatures];
            v46 = v45;

            if ([MEMORY[0x277CD99F8] score:v46 meetsScoreThreshold:v34])
            {
              [v52 addObject:v36];
            }
          }
        }

        v32 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v32);
    }

    resultCopy = v49;
    feedbackCopy = v50;
    v11 = v52;
    libraryCopy = v48;
  }

  return v11;
}

+ (void)findMemoriesAndSetFeaturedStateIfNeededInPhotoLibrary:(id)library loggingConnection:(id)connection
{
  v80[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  v7 = os_signpost_id_generate(connectionCopy);
  info = 0;
  mach_timebase_info(&info);
  v8 = connectionCopy;
  v9 = v8;
  v63 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FindMemoriesAndSetFeaturedState", "", buf, 2u);
  }

  spid = v7;

  v61 = mach_absolute_time();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v12 = [currentCalendar startOfDayForDate:v11];

  v13 = [v12 dateByAddingTimeInterval:-60.0];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(creationDate > %@ OR featuredState == %d) AND userCreated == NO AND featuredState != %d", v13, 1, -1];
  [librarySpecificFetchOptions setPredicate:v15];

  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v80[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v17];

  v18 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v64 = v18;
  if ([v18 count])
  {
    v55 = librarySpecificFetchOptions;
    v56 = v13;
    firstObject = [v18 firstObject];
    creationDate = [firstObject creationDate];

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v22 = [currentCalendar startOfDayForDate:creationDate];
    v23 = v12;
    v24 = v22;
    v57 = v23;
    v58 = currentCalendar;
    if ([v22 compare:?] == -1)
    {
      [MEMORY[0x277CBEAA8] distantFuture];
      v26 = v25 = v18;

      creationDate = 0;
      v24 = v26;
      v18 = v25;
    }

    oslog = v9;
    v60 = libraryCopy;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v27 = v18;
    v28 = [v27 countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (!v28)
    {
      v30 = 0;
      goto LABEL_35;
    }

    v29 = v28;
    v30 = 0;
    v31 = *v71;
    while (1)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v71 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v70 + 1) + 8 * i);
        if ([v33 featuredState] == 1)
        {
          ++v30;
        }

        creationDate2 = [v33 creationDate];
        if ([creationDate2 compare:v24] == -1 && (!creationDate || (objc_msgSend(creationDate, "timeIntervalSinceDate:", creationDate2), v36 >= 2.0)) || (objc_msgSend(v33, "photosGraphVersion"), PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() < 0x301))
        {
          if ([v33 featuredState] != 1)
          {
            goto LABEL_24;
          }

          [array2 addObject:v33];
          v35 = 0;
        }

        else
        {
          if (![v33 featuredState])
          {
            [array addObject:v33];
          }

          v35 = creationDate2;
        }

        creationDate = v35;
LABEL_24:
      }

      v29 = [v27 countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (!v29)
      {
LABEL_35:

        libraryCopy = v60;
        v42 = [self _filterMemoriesWithAcceptableUserFeedback:array allMemoriesFetchResult:v27 photoLibrary:v60];

        v43 = [v42 count];
        v44 = [array2 count];
        v45 = v44 <= 0 && v43 <= 0;
        if (v45 || (v46 = *&v44, v43 + v30 - v44 < 1))
        {
          v9 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEBUG, "[PHAMemoryElectionTask+WidgetTimeline] Update featured memories - up to date", buf, 2u);
          }
        }

        else
        {
          v9 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v77 = v43;
            v78 = 2048;
            v79 = v46;
            _os_log_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+WidgetTimeline] Update featured memories - add: %zd, remove: %zd", buf, 0x16u);
          }

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v77 = v42;
            _os_log_debug_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEBUG, "[PHAMemoryElectionTask+WidgetTimeline] Memories to add featured state: %@", buf, 0xCu);
          }

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v77 = array2;
            _os_log_debug_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEBUG, "[PHAMemoryElectionTask+WidgetTimeline] Memories to remove featured state: %@", buf, 0xCu);
          }

          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __113__PHAMemoryElectionTask_WidgetTimeline__findMemoriesAndSetFeaturedStateIfNeededInPhotoLibrary_loggingConnection___block_invoke;
          v67[3] = &unk_2788B2C00;
          v68 = v42;
          v69 = array2;
          v66 = 0;
          v47 = [v60 performChangesAndWait:v67 error:&v66];
          v48 = v66;
          if ((v47 & 1) == 0 && os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v77 = v48;
            _os_log_error_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask+WidgetTimeline] Update featured memories - failed: %@", buf, 0xCu);
          }
        }

        v49 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v52 = v9;
        v53 = v52;
        if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22FA28000, v53, OS_SIGNPOST_INTERVAL_END, spid, "FindMemoriesAndSetFeaturedState", "", buf, 2u);
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v77 = "FindMemoriesAndSetFeaturedState";
          v78 = 2048;
          v79 = ((((v49 - v61) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22FA28000, v53, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v12 = v57;
        currentCalendar = v58;
        librarySpecificFetchOptions = v55;
        v13 = v56;
        goto LABEL_58;
      }
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+WidgetTimeline] Update featured memories - found 0 memories", buf, 2u);
  }

  v37 = mach_absolute_time();
  v39 = info.numer;
  v38 = info.denom;
  v40 = v9;
  v41 = v40;
  if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v41, OS_SIGNPOST_INTERVAL_END, spid, "FindMemoriesAndSetFeaturedState", "", buf, 2u);
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v77 = "FindMemoriesAndSetFeaturedState";
    v78 = 2048;
    v79 = ((((v37 - v61) * v39) / v38) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v41, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

LABEL_58:
}

void __113__PHAMemoryElectionTask_WidgetTimeline__findMemoriesAndSetFeaturedStateIfNeededInPhotoLibrary_loggingConnection___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x277CD98E8] changeRequestForMemory:*(*(&v18 + 1) + 8 * v6)];
        [v7 setFeaturedState:1];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CD98E8] changeRequestForMemory:{*(*(&v14 + 1) + 8 * v12), v14}];
        [v13 setFeaturedState:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }
}

+ (void)findMemoriesAndSetNeverFeatureStateIfNeededInPhotoLibrary:(id)library loggingConnection:(id)connection
{
  v53[2] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  v8 = os_signpost_id_generate(connectionCopy);
  info = 0;
  mach_timebase_info(&info);
  v9 = connectionCopy;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FindMemoriesAndSetNeverFeatureState", "", buf, 2u);
  }

  v12 = mach_absolute_time();
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:13];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"rejected == NO AND userCreated == NO AND featuredState != %d", -1];
  [librarySpecificFetchOptions setPredicate:v14];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v53[0] = v15;
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:0];
  v53[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v17];

  v18 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  fetchedObjects = [v18 fetchedObjects];
  if ([fetchedObjects count])
  {
    spid = v8;
    v44 = [self _filterMemoriesWithAcceptableUserFeedback:fetchedObjects allMemoriesFetchResult:v18 photoLibrary:libraryCopy];
    v20 = [MEMORY[0x277CBEB98] setWithArray:?];
    v21 = [MEMORY[0x277CBEB58] setWithArray:fetchedObjects];
    v43 = v20;
    [v21 minusSet:v20];
    if ([v21 count])
    {
      v41 = v12;
      v22 = v10;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v21 count];
        *buf = 134217984;
        v50 = v23;
        _os_log_impl(&dword_22FA28000, v22, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+WidgetTimeline] Update never feature memories - add: %zd", buf, 0xCu);
      }

      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __117__PHAMemoryElectionTask_WidgetTimeline__findMemoriesAndSetNeverFeatureStateIfNeededInPhotoLibrary_loggingConnection___block_invoke;
      v46[3] = &unk_2788B2E78;
      v47 = v21;
      v45 = 0;
      v24 = [libraryCopy performChangesAndWait:v46 error:&v45];
      v25 = v45;
      if ((v24 & 1) == 0 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = v25;
        _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask+WidgetTimeline] Update never feature memories - failed: %@", buf, 0xCu);
      }

      v26 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v29 = v22;
      v30 = v29;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22FA28000, v30, OS_SIGNPOST_INTERVAL_END, spid, "FindMemoriesAndSetNeverFeatureState", "", buf, 2u);
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v50 = "FindMemoriesAndSetNeverFeatureState";
        v51 = 2048;
        v52 = ((((v26 - v41) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22FA28000, v10, OS_LOG_TYPE_DEBUG, "[PHAMemoryElectionTask+WidgetTimeline] Update never feature memories - up to date", buf, 2u);
      }

      v36 = mach_absolute_time();
      v38 = info.numer;
      v37 = info.denom;
      v39 = v10;
      v40 = v39;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22FA28000, v40, OS_SIGNPOST_INTERVAL_END, spid, "FindMemoriesAndSetNeverFeatureState", "", buf, 2u);
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v50 = "FindMemoriesAndSetNeverFeatureState";
        v51 = 2048;
        v52 = ((((v36 - v12) * v38) / v37) / 1000000.0);
        _os_log_impl(&dword_22FA28000, v40, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+WidgetTimeline] Update never featured memories - found 0 memories", buf, 2u);
    }

    v31 = mach_absolute_time();
    v33 = info.numer;
    v32 = info.denom;
    v34 = v10;
    v35 = v34;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v35, OS_SIGNPOST_INTERVAL_END, v8, "FindMemoriesAndSetNeverFeatureState", "", buf, 2u);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "FindMemoriesAndSetNeverFeatureState";
      v51 = 2048;
      v52 = ((((v31 - v12) * v33) / v32) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }
}

void __117__PHAMemoryElectionTask_WidgetTimeline__findMemoriesAndSetNeverFeatureStateIfNeededInPhotoLibrary_loggingConnection___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x277CD98E8] changeRequestForMemory:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setFeaturedState:-1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

+ (void)findAndSetFeaturedStateForMemoriesAndSuggestionsIfNeededInPhotoLibrary:(id)library loggingConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  libraryCopy = library;
  v8 = os_signpost_id_generate(connectionCopy);
  info = 0;
  mach_timebase_info(&info);
  v9 = connectionCopy;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FindAndSetFeaturedStateForMemoriesAndSuggestions", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  [self findMemoriesAndSetNeverFeatureStateIfNeededInPhotoLibrary:libraryCopy loggingConnection:v10];
  [self findMemoriesAndSetFeaturedStateIfNeededInPhotoLibrary:libraryCopy loggingConnection:v10];
  [self findSuggestionsAndSetFeaturedStateIfNeededInPhotoLibrary:libraryCopy loggingConnection:v10];

  v12 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v15 = v10;
  v16 = v15;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v16, OS_SIGNPOST_INTERVAL_END, v8, "FindAndSetFeaturedStateForMemoriesAndSuggestions", "", buf, 2u);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "FindAndSetFeaturedStateForMemoriesAndSuggestions";
    v20 = 2048;
    v21 = ((((v12 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v16, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

+ (BOOL)_reloadWidgetTimelineForWidgetKind:(id)kind loggingConnection:(id)connection error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  connectionCopy = connection;
  v9 = [objc_alloc(MEMORY[0x277CFA320]) initWithExtensionBundleIdentifier:@"com.apple.mobileslideshow.PhotosReliveWidget" kind:kindCopy];
  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = kindCopy;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+%@] Calling reloadTimeline on CHSTimelineController", &v13, 0xCu);
  }

  v10 = [v9 reloadTimelineWithReason:@"WidgetAssetChanged"];
  if (v10)
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = kindCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_error_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask+%@] CHSTimelineController reloadTimeline error: %@", &v13, 0x16u);
      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    if (error)
    {
LABEL_6:
      v11 = v10;
      *error = v10;
    }
  }

  else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = kindCopy;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+%@] CHSTimelineController reloadTimeline completed", &v13, 0xCu);
  }

LABEL_9:

  return v10 == 0;
}

+ (BOOL)reloadForYouWidgetTimelineWithLoggingConnection:(id)connection error:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [objc_alloc(MEMORY[0x277CFA320]) initWithExtensionBundleIdentifier:@"com.apple.mobileslideshow.PhotosReliveWidget" kind:@"com.apple.mobileslideshow.PhotosReliveWidget"];
  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+ForYouWidgetTimeline] Calling reloadTimeline on CHSTimelineController", &v10, 2u);
  }

  v7 = [v6 reloadTimelineWithReason:@"WidgetAssetChanged"];
  if (v7)
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_ERROR, "[PHAMemoryElectionTask+ForYouWidgetTimeline] CHSTimelineController reloadTimeline error: %@", &v10, 0xCu);
      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    if (error)
    {
LABEL_6:
      v8 = v7;
      *error = v7;
    }
  }

  else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHAMemoryElectionTask+ForYouWidgetTimeline] CHSTimelineController reloadTimeline completed", &v10, 2u);
  }

LABEL_9:

  return v7 == 0;
}

- (void)collectMetricsOnElectedEnrichedMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics
{
  v49 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  connectionCopy = connection;
  analyticsCopy = analytics;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = objc_alloc_init(MEMORY[0x277CCA940]);
  v30 = objc_alloc_init(MEMORY[0x277CCA940]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = memoriesCopy;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 += [*(*(&v43 + 1) + 8 * i) featuresGuestAssets];
      }

      v11 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  [v8 setValue:v15 forKey:@"numberOfMemoriesWithGuestAsset"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  [v8 setValue:v16 forKey:@"newMemoriesCount"];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v39 + 1) + 8 * j);
        memoryCategorySubcategory = [v22 memoryCategorySubcategory];
        v24 = MEMORY[0x277D3B958];
        memoryFeatureNodes = [v22 memoryFeatureNodes];
        v26 = [v24 fullMemoryTypeStringWithMemoryCategorySubcategory:memoryCategorySubcategory featureNodes:memoryFeatureNodes];

        [v34 addObject:v26];
        triggerTypes = [v22 triggerTypes];
        v28 = [triggerTypes count];

        if (v28)
        {
          [v30 addObject:v26];
          triggerTypes2 = [v22 triggerTypes];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __102__PHAMemoryElectionTask_Metrics__collectMetricsOnElectedEnrichedMemories_loggingConnection_analytics___block_invoke;
          v35[3] = &unk_2788B2B08;
          v35[4] = self;
          v36 = v26;
          v37 = connectionCopy;
          v38 = analyticsCopy;
          [triggerTypes2 enumerateIndexesUsingBlock:v35];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v19);
  }

  [analyticsCopy sendEvent:@"com.apple.Photos.memories.generation" withPayload:v8];
  [objc_opt_class() sendElectedMemoriesPipelineAnalyticsEventWithCountsOfMemories:v34 loggingConnection:connectionCopy analytics:analyticsCopy];
  [objc_opt_class() sendTriggeredMemoriesPipelineAnalyticsEventWithCountsOfMemories:v30 loggingConnection:connectionCopy analytics:analyticsCopy];
}

void __102__PHAMemoryElectionTask_Metrics__collectMetricsOnElectedEnrichedMemories_loggingConnection_analytics___block_invoke(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CD98D8] stringForTriggerType:a2];
  [objc_opt_class() sendMemoryTriggersAnalyticsEventWithElectedMemoryType:a1[5] triggerType:v3 loggingConnection:a1[6] analytics:a1[7]];
}

- (void)collectMetricsOnMemoriesInGraphWithWorkingContext:(id)context loggingConnection:(id)connection analytics:(id)analytics
{
  v7 = MEMORY[0x277CCA940];
  analyticsCopy = analytics;
  connectionCopy = connection;
  contextCopy = context;
  v11 = objc_alloc_init(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __112__PHAMemoryElectionTask_Metrics__collectMetricsOnMemoriesInGraphWithWorkingContext_loggingConnection_analytics___block_invoke;
  v13[3] = &unk_2788B2AD0;
  v14 = v11;
  v12 = v11;
  [contextCopy performSynchronousConcurrentGraphReadUsingBlock:v13];

  [objc_opt_class() sendGeneratedMemoriesPipelineAnalyticsEventWithCountsOfMemories:v12 loggingConnection:connectionCopy analytics:analyticsCopy];
}

void __112__PHAMemoryElectionTask_Metrics__collectMetricsOnMemoriesInGraphWithWorkingContext_loggingConnection_analytics___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [MEMORY[0x277D3B960] nodesInGraph:v3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __112__PHAMemoryElectionTask_Metrics__collectMetricsOnMemoriesInGraphWithWorkingContext_loggingConnection_analytics___block_invoke_2;
  v6[3] = &unk_2788B2AA8;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 enumerateMemoryCategorySubcategoriesUsingBlock:v6];
}

void __112__PHAMemoryElectionTask_Metrics__collectMetricsOnMemoriesInGraphWithWorkingContext_loggingConnection_analytics___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x277D3B960]);
  v7 = *(a1 + 32);
  v8 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
  v12 = [v6 initWithGraph:v7 elementIdentifiers:v8];

  v9 = MEMORY[0x277D3B958];
  v10 = [v12 featureNodes];
  v11 = [v9 fullMemoryTypeStringWithMemoryCategorySubcategory:a3 featureNodes:v10];

  [*(a1 + 40) addObject:v11];
}

- (void)collectMetricsOnExistingMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics
{
  selfCopy = self;
  v110 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  oslog = connection;
  analyticsCopy = analytics;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v78 = +[PHAMetricsHelper memoryCategoryValueToDataAggregationKeyLookup];
  v9 = +[PHAMetricsHelper memoryBlockableFeatureTypeValueToDataAggregationKeyLookup];
  v75 = +[PHAMetricsHelper memoryBlockedFeatureTypeValueToDataAggregationKeyLookup];
  v10 = [MEMORY[0x277CCA940] set];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = memoriesCopy;
  v79 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
  v11 = 0;
  if (v79)
  {
    v76 = *v102;
    v77 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v102 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v87 = v12;
        v13 = *(*(&v101 + 1) + 8 * v12);
        context = objc_autoreleasePoolPush();
        isFavorite = [v13 isFavorite];
        photosGraphProperties = [v13 photosGraphProperties];
        v14 = [photosGraphProperties objectForKeyedSubscript:@"triggerTypes"];
        v15 = v14;
        v16 = MEMORY[0x277CBEBF8];
        if (v14)
        {
          v16 = v14;
        }

        v17 = v16;

        if ([v17 count] > 1 || objc_msgSend(v17, "count") == 1 && (objc_msgSend(v17, "containsObject:", &unk_2844CC9F0) & 1) == 0)
        {
          v18 = PHAMetrics_MemoriesFeed_TriggeredMemoriesCount;
        }

        else
        {
          v18 = PHAMetrics_MemoriesFeed_RandomMemoriesCount;
        }

        v19 = *v18;
        v20 = [v8 objectForKey:v19];
        v82 = v20;
        if (v20)
        {
          v21 = [v20 unsignedIntegerValue] + 1;
        }

        else
        {
          v21 = 1;
        }

        v85 = v17;
        v88 = v11;
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v21, selfCopy}];
        v83 = v19;
        [v8 setValue:v22 forKey:v19];

        v23 = +[PHAMetricsHelper dataAggregationKeyForCategory:subCategory:lookupTable:](PHAMetricsHelper, "dataAggregationKeyForCategory:subCategory:lookupTable:", [v13 category], 0, v78);
        if (v23)
        {
          v24 = [v8 objectForKey:v23];
          v25 = v24;
          if (v24)
          {
            v26 = [v24 unsignedIntegerValue] + 1;
          }

          else
          {
            v26 = 1;
          }

          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
          [v8 setValue:v27 forKey:v23];
        }

        v80 = v13;
        v81 = v23;
        v28 = v8;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        blockableFeatures = [v13 blockableFeatures];
        v30 = [blockableFeatures countByEnumeratingWithState:&v97 objects:v108 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v98;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v98 != v32)
              {
                objc_enumerationMutation(blockableFeatures);
              }

              type = [*(*(&v97 + 1) + 8 * i) type];
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
              v36 = [v9 objectForKeyedSubscript:v35];

              if (v36)
              {
                v37 = [v28 objectForKey:v36];
                v38 = v37;
                if (v37)
                {
                  v39 = [v37 unsignedIntegerValue] + 1;
                }

                else
                {
                  v39 = 1;
                }

                v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
                [v92 setValue:v40 forKey:v36];
              }

              else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v107 = type;
                _os_log_error_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_ERROR, "[PHAMemoryGenerationTask] Not logging aggregate stats for existing memory blockable feature type %lu", buf, 0xCu);
              }
            }

            v31 = [blockableFeatures countByEnumeratingWithState:&v97 objects:v108 count:16];
          }

          while (v31);
        }

        blacklistedFeature = [v80 blacklistedFeature];
        v42 = blacklistedFeature;
        v8 = v28;
        v10 = v77;
        if (blacklistedFeature)
        {
          type2 = [blacklistedFeature type];
          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type2];
          v45 = [v75 objectForKeyedSubscript:v44];

          if (v45)
          {
            v46 = [v8 objectForKey:v45];
            v47 = v46;
            if (v46)
            {
              v48 = [v46 unsignedIntegerValue] + 1;
            }

            else
            {
              v48 = 1;
            }

            v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
            [v92 setValue:v49 forKey:v45];
          }

          else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v107 = type2;
            _os_log_error_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_ERROR, "[PHAMemoryGenerationTask] Not logging aggregate stats for existing memory blocked feature type %lu", buf, 0xCu);
          }
        }

        v50 = [photosGraphProperties objectForKeyedSubscript:@"moodKeywords"];
        if ([v50 count])
        {
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v51 = v50;
          v52 = [v51 countByEnumeratingWithState:&v93 objects:v105 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v94;
            do
            {
              for (j = 0; j != v53; ++j)
              {
                if (*v94 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                [v77 addObject:*(*(&v93 + 1) + 8 * j)];
              }

              v53 = [v51 countByEnumeratingWithState:&v93 objects:v105 count:16];
            }

            while (v53);
          }
        }

        else
        {
          [v77 addObject:@"None"];
        }

        v11 = v88 + isFavorite;

        objc_autoreleasePoolPop(context);
        v12 = v87 + 1;
      }

      while (v87 + 1 != v79);
      v79 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
    }

    while (v79);
  }

  lastObject = [obj lastObject];
  if (lastObject)
  {
    v89 = v11;
    v57 = v8;
    v58 = objc_alloc(MEMORY[0x277CBEA80]);
    v59 = [v58 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v60 = lastObject;
    creationDate = [lastObject creationDate];
    v62 = [v59 startOfDayForDate:creationDate];

    universalDate = [(PHAMemoryElectionTask *)selfCopy universalDate];
    v64 = [v59 startOfDayForDate:universalDate];

    v65 = [v59 components:16 fromDate:v62 toDate:v64 options:0];
    v66 = [v65 day];
    if (v66 >= 1)
    {
      v67 = [MEMORY[0x277CCABB0] numberWithInteger:v66];
      [v57 setValue:v67 forKey:@"numberOfDaysSinceLastMemoryWasCreated"];
    }

    v8 = v57;
    v11 = v89;
    lastObject = v60;
  }

  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count", selfCopy)}];
  [v8 setValue:v68 forKey:@"totalMemoriesCount"];

  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [v8 setValue:v69 forKey:@"totalFavoritedMemoriesCount"];

  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v71 = [PHAMetricsHelper aggregatedStatsForMoodKeywordCountedSet:v10];
  [v70 addEntriesFromDictionary:v71];

  [analyticsCopy sendEvent:@"com.apple.Photos.memories.feed" withPayload:v8];
  [analyticsCopy sendEvent:@"com.apple.Photos.memories.mood" withPayload:v70];
  [analyticsCopy sendEvent:@"com.apple.Photos.memories.blacklist" withPayload:v92];
}

+ (void)sendMemoryTriggersAnalyticsEventWithElectedMemoryType:(id)type triggerType:(id)triggerType loggingConnection:(id)connection analytics:(id)analytics
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"triggerType";
  v13[1] = @"triggerCount";
  v14[0] = triggerType;
  v14[1] = &unk_2844CCA08;
  v13[2] = @"fullMemoryType";
  v13[3] = @"memoryElected";
  v14[2] = type;
  v14[3] = &unk_2844CCA08;
  v8 = MEMORY[0x277CBEAC0];
  analyticsCopy = analytics;
  triggerTypeCopy = triggerType;
  typeCopy = type;
  v12 = [v8 dictionaryWithObjects:v14 forKeys:v13 count:4];

  [analyticsCopy sendEvent:@"com.apple.Photos.memories.triggers" withPayload:v12];
}

+ (void)sendNotifiedMemoriesPipelineAnalyticsEventWithMemoryType:(id)type loggingConnection:(id)connection analytics:(id)analytics
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"pipelineStage";
  v10[1] = @"fullMemoryType";
  v11[0] = @"notified";
  v11[1] = type;
  v10[2] = @"memoryCount";
  v11[2] = &unk_2844CCA08;
  v6 = MEMORY[0x277CBEAC0];
  analyticsCopy = analytics;
  typeCopy = type;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:3];

  [analyticsCopy sendEvent:@"com.apple.Photos.memories.pipeline" withPayload:v9];
}

+ (void)sendTriggeredMemoriesPipelineAnalyticsEventWithCountsOfMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics
{
  v26 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  connectionCopy = connection;
  analyticsCopy = analytics;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = memoriesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v23[0] = @"pipelineStage";
        v23[1] = @"fullMemoryType";
        v24[0] = @"triggered";
        v24[1] = v14;
        v23[2] = @"memoryCount";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "countForObject:", v14)}];
        v24[2] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

        [analyticsCopy sendEvent:@"com.apple.Photos.memories.pipeline" withPayload:v17];
        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }
}

+ (void)sendElectedMemoriesPipelineAnalyticsEventWithCountsOfMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics
{
  v26 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  connectionCopy = connection;
  analyticsCopy = analytics;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = memoriesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v23[0] = @"pipelineStage";
        v23[1] = @"fullMemoryType";
        v24[0] = @"elected";
        v24[1] = v14;
        v23[2] = @"memoryCount";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "countForObject:", v14)}];
        v24[2] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

        [analyticsCopy sendEvent:@"com.apple.Photos.memories.pipeline" withPayload:v17];
        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }
}

+ (void)sendGeneratedMemoriesPipelineAnalyticsEventWithCountsOfMemories:(id)memories loggingConnection:(id)connection analytics:(id)analytics
{
  v34 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  analyticsCopy = analytics;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  allMemoryTypeStrings = [MEMORY[0x277D3B958] allMemoryTypeStrings];
  v9 = [v7 initWithArray:allMemoryTypeStrings];

  [v9 pha_shuffle];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v9;
  v24 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v24)
  {
    v10 = @"fullMemoryType";
    v11 = @"memoryCount";
    v22 = *v26;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [memoriesCopy countForObject:v13];
        if (v14)
        {
          v31[0] = @"pipelineStage";
          v31[1] = v10;
          v32[0] = @"generated";
          v32[1] = v13;
          v31[2] = v11;
          [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
          v15 = v11;
          v17 = v16 = v10;
          v32[2] = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

          v10 = v16;
          v11 = v15;
          [analyticsCopy sendEvent:@"com.apple.Photos.memories.pipeline" withPayload:v18];
        }

        v29[1] = v11;
        v30[0] = v13;
        v29[0] = v10;
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
        v30[1] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

        [analyticsCopy sendEvent:@"com.apple.Photos.memories.generationByType" withPayload:v20];
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v24);
  }
}

@end