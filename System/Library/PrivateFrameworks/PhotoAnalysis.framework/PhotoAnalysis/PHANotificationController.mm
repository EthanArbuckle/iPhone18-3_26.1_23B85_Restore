@interface PHANotificationController
- (BOOL)shouldFireNotificationForMemoriesWithScores:(id)scores withCreationReason:(unint64_t)reason;
- (BOOL)userFeedbackScoreIsAcceptableForAssetCollection:(id)collection memoryFeatures:(id)features userFeedbackCalculator:(id)calculator;
- (BOOL)userIsActivelyUsingPhotos;
- (PHANotificationController)initWithGraphManager:(id)manager;
- (PHANotificationController)initWithGraphManager:(id)manager userFeedbackCalculator:(id)calculator;
- (id)_userFeedbackCalculatorWithPhotoLibrary:(id)library;
- (void)fireNotificationForMemoryIdentifiers:(id)identifiers withCreationReason:(unint64_t)reason;
- (void)fireNotificationForSuggestionIdentifiers:(id)identifiers;
- (void)postNotificationForMemory:(id)memory withCreationReason:(unint64_t)reason forceImmediateDelivery:(BOOL)delivery;
- (void)postNotificationForSuggestion:(id)suggestion deliveryDate:(id)date;
@end

@implementation PHANotificationController

- (BOOL)userFeedbackScoreIsAcceptableForAssetCollection:(id)collection memoryFeatures:(id)features userFeedbackCalculator:(id)calculator
{
  v53[1] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  featuresCopy = features;
  calculatorCopy = calculator;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v53[0] = *MEMORY[0x277CD9AA8];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v11];

  v40 = librarySpecificFetchOptions;
  v41 = collectionCopy;
  v12 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v48;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v14);
        }

        uuid = [*(*(&v47 + 1) + 8 * i) uuid];
        [v13 addObject:uuid];
      }

      v16 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v16);
  }

  v39 = v14;

  librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_2844CCB70];
  v38 = librarySpecificFetchOptions2;
  v21 = [MEMORY[0x277CD9938] fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v13 options:librarySpecificFetchOptions2];
  v22 = *MEMORY[0x277CD9CC8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = v13;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    v27 = MEMORY[0x277CBEBF8];
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v43 + 1) + 8 * j);
        v30 = [v21 objectForKeyedSubscript:v29];
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v27;
        }

        v33 = v32;

        [calculatorCopy scoreForKeyAssetUUID:v29 personsUUIDsInKeyAsset:v33 memoryFeatures:featuresCopy];
        v35 = v34;

        if (v35 < v22)
        {
          v22 = v35;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v25);
  }

  v36 = [MEMORY[0x277CD99F8] score:v22 meetsScoreThreshold:*MEMORY[0x277CD9CB8]];
  return v36;
}

- (void)postNotificationForSuggestion:(id)suggestion deliveryDate:(id)date
{
  suggestionCopy = suggestion;
  v6 = +[PHALocalNotificationInterface localNotificationInterface];
  v7 = [[PHANotificationOptions alloc] initWithType:1];
  v8 = MEMORY[0x277CD99E0];
  localIdentifier = [suggestionCopy localIdentifier];
  v10 = [v8 uuidFromLocalIdentifier:localIdentifier];

  [(PHANotificationOptions *)v7 setCollectionUUID:v10];
  bestDateForDeliveringNotification = [(PHANotificationController *)self bestDateForDeliveringNotification];
  [(PHANotificationOptions *)v7 setDeliveryDate:bestDateForDeliveringNotification];

  v12 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:suggestionCopy options:0];

  firstObject = [v12 firstObject];
  [(PHANotificationOptions *)v7 setKeyAsset:firstObject];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__PHANotificationController_postNotificationForSuggestion_deliveryDate___block_invoke;
  v14[3] = &unk_2788B2C60;
  v14[4] = self;
  [v6 fireLocalNotificationWithOptions:v7 completionHandler:v14];
}

uint64_t __72__PHANotificationController_postNotificationForSuggestion_deliveryDate___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 24) sendEvent:@"com.apple.Photos.suggestion.notificationSent" withPayload:MEMORY[0x277CBEC10]];
  }

  return result;
}

- (void)fireNotificationForSuggestionIdentifiers:(id)identifiers
{
  v40[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v5 = [(PHANotificationController *)self _userFeedbackCalculatorWithPhotoLibrary:self->_photoLibrary];
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v40[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v8];

    v28 = identifiersCopy;
    identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier in %@", identifiersCopy];
    [librarySpecificFetchOptions setPredicate:identifiersCopy];

    v27 = librarySpecificFetchOptions;
    [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v36 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      v14 = MEMORY[0x277CBEBF8];
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        if ([(PHANotificationController *)self userFeedbackScoreIsAcceptableForAssetCollection:v16 memoryFeatures:v14 userFeedbackCalculator:v5])
        {
          break;
        }

        if (__PXLoggraph_workerOnceToken != -1)
        {
          dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_297);
        }

        v17 = __PXLoggraph_workerOSLog;
        if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          localIdentifier = [v16 localIdentifier];
          *buf = 138412290;
          v38 = localIdentifier;
          _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_DEFAULT, "[Suggestions Notification] Skipping notification for suggestion %@: user feedback score is lower than acceptable.", buf, 0xCu);
        }

        if (v12 == ++v15)
        {
          v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }

      v20 = v16;

      if (!v20)
      {
        goto LABEL_18;
      }

      photoLibrary = self->_photoLibrary;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __70__PHANotificationController_fireNotificationForSuggestionIdentifiers___block_invoke_301;
      v30[3] = &unk_2788B2C00;
      v31 = v10;
      v22 = v20;
      v32 = v22;
      v29 = 0;
      LOBYTE(photoLibrary) = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v30 error:&v29];
      v23 = v29;
      if (photoLibrary)
      {
        [(PHANotificationController *)self postNotificationForSuggestion:v22 deliveryDate:0];
        v24 = v27;
        identifiersCopy = v28;
      }

      else
      {
        if (__PXLoggraph_workerOnceToken != -1)
        {
          dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_304);
        }

        v24 = v27;
        identifiersCopy = v28;
        v26 = __PXLoggraph_workerOSLog;
        if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v23;
          _os_log_error_impl(&dword_22FA28000, v26, OS_LOG_TYPE_ERROR, "[Suggestions Notification] Failed to persist suggestions, not firing any notifications: %@", buf, 0xCu);
        }
      }
    }

    else
    {
LABEL_14:

LABEL_18:
      if (__PXLoggraph_workerOnceToken != -1)
      {
        dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_300);
      }

      v24 = v27;
      identifiersCopy = v28;
      v25 = __PXLoggraph_workerOSLog;
      if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v28;
        _os_log_impl(&dword_22FA28000, v25, OS_LOG_TYPE_DEFAULT, "[Suggestions Notification] Won't fire notification, bestSuggestionToNotify is nil. %@", buf, 0xCu);
      }
    }
  }
}

void __70__PHANotificationController_fireNotificationForSuggestionIdentifiers___block_invoke_301(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:{v7, v9}];
        [v8 markActive];
        if (v7 == *(a1 + 40))
        {
          [v8 setNotificationState:1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

uint64_t __70__PHANotificationController_fireNotificationForSuggestionIdentifiers___block_invoke_2()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__PHANotificationController_fireNotificationForSuggestionIdentifiers___block_invoke_298()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__PHANotificationController_fireNotificationForSuggestionIdentifiers___block_invoke()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

- (void)postNotificationForMemory:(id)memory withCreationReason:(unint64_t)reason forceImmediateDelivery:(BOOL)delivery
{
  memoryCopy = memory;
  v9 = +[PHALocalNotificationInterface localNotificationInterface];
  v10 = [[PHANotificationOptions alloc] initWithType:0];
  v11 = MEMORY[0x277CD98D8];
  localIdentifier = [memoryCopy localIdentifier];
  v13 = [v11 uuidFromLocalIdentifier:localIdentifier];

  [(PHANotificationOptions *)v10 setCollectionUUID:v13];
  date = [MEMORY[0x277CBEAA8] date];
  [(PHANotificationOptions *)v10 setDeliveryDate:date];

  isMemoriesLivingOnFeedbackEnabled = 0;
  if (reason == 1)
  {
    isMemoriesLivingOnFeedbackEnabled = [MEMORY[0x277D3BC38] isMemoriesLivingOnFeedbackEnabled];
  }

  if (reason != 3 && (isMemoriesLivingOnFeedbackEnabled & 1) == 0 && !delivery)
  {
    bestDateForDeliveringNotification = [(PHANotificationController *)self bestDateForDeliveringNotification];
    [(PHANotificationOptions *)v10 setDeliveryDate:bestDateForDeliveringNotification];
  }

  v17 = [MEMORY[0x277CD97A8] fetchKeyCuratedAssetInAssetCollection:memoryCopy referenceAsset:0];
  firstObject = [v17 firstObject];
  [(PHANotificationOptions *)v10 setKeyAsset:firstObject];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__PHANotificationController_postNotificationForMemory_withCreationReason_forceImmediateDelivery___block_invoke;
  v20[3] = &unk_2788B2C30;
  v20[4] = self;
  v21 = memoryCopy;
  v19 = memoryCopy;
  [v9 fireLocalNotificationWithOptions:v10 completionHandler:v20];
}

void __97__PHANotificationController_postNotificationForMemory_withCreationReason_forceImmediateDelivery___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 24) sendEvent:@"com.apple.Photos.memories.notificationSent" withPayload:MEMORY[0x277CBEC10]];
    v3 = *(a1 + 40);
    v4 = [*(*(a1 + 32) + 32) workingContext];
    v5 = [PHAMetricsHelper fullMemoryTypeStringForMemory:v3 withWorkingContext:v4];

    [PHAMemoryElectionTask sendNotifiedMemoriesPipelineAnalyticsEventWithMemoryType:v5 loggingConnection:*(*(a1 + 32) + 8) analytics:*(*(a1 + 32) + 24)];
  }
}

- (void)fireNotificationForMemoryIdentifiers:(id)identifiers withCreationReason:(unint64_t)reason
{
  v47[2] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    reasonCopy = reason;
    v7 = [(PHANotificationController *)self _userFeedbackCalculatorWithPhotoLibrary:self->_photoLibrary];
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludePendingMemories:1];
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
    v47[0] = v9;
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
    v47[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [librarySpecificFetchOptions setSortDescriptors:v11];

    v35 = librarySpecificFetchOptions;
    v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = v13;
    v34 = identifiersCopy;
    v15 = 0;
    v16 = *v41;
    v17 = 0.0;
    do
    {
      v18 = 0;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v40 + 1) + 8 * v18);
        [v19 score];
        v21 = v20;
        if (!v15 || v20 > v17)
        {
          blockableFeatures = [v19 blockableFeatures];
          v23 = [(PHANotificationController *)self userFeedbackScoreIsAcceptableForAssetCollection:v19 memoryFeatures:blockableFeatures userFeedbackCalculator:v7];

          if (v23)
          {
            v24 = v19;

            v17 = v21;
            v15 = v24;
          }

          else
          {
            if (__PXLoggraph_workerOnceToken != -1)
            {
              dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_276);
            }

            v25 = __PXLoggraph_workerOSLog;
            if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v25;
              localIdentifier = [v19 localIdentifier];
              *buf = 138412290;
              v45 = localIdentifier;
              _os_log_impl(&dword_22FA28000, v26, OS_LOG_TYPE_DEFAULT, "[Memories Notification] Skipping notification for memory %@: user feedback score is lower than acceptable.", buf, 0xCu);
            }
          }
        }

        ++v18;
      }

      while (v14 != v18);
      v14 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v14);
    identifiersCopy = v34;
    if (v15)
    {
      photoLibrary = self->_photoLibrary;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __85__PHANotificationController_fireNotificationForMemoryIdentifiers_withCreationReason___block_invoke_280;
      v37[3] = &unk_2788B2C00;
      v38 = v12;
      v29 = v15;
      v39 = v29;
      v36 = 0;
      LOBYTE(photoLibrary) = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v37 error:&v36];
      v30 = v36;
      if (photoLibrary)
      {
        [(PHANotificationController *)self postNotificationForMemory:v29 withCreationReason:reasonCopy forceImmediateDelivery:0];
      }

      else
      {
        if (__PXLoggraph_workerOnceToken != -1)
        {
          dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_283);
        }

        v32 = __PXLoggraph_workerOSLog;
        if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v45 = v30;
          _os_log_error_impl(&dword_22FA28000, v32, OS_LOG_TYPE_ERROR, "[Memories Notification] Failed to persist memories, not firing any notifications: %@", buf, 0xCu);
        }
      }
    }

    else
    {
LABEL_20:
      if (__PXLoggraph_workerOnceToken != -1)
      {
        dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_279);
      }

      v31 = __PXLoggraph_workerOSLog;
      if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = identifiersCopy;
        _os_log_impl(&dword_22FA28000, v31, OS_LOG_TYPE_DEFAULT, "[Memories Notification] Failed to fire, bestMemoryToPersist is nil. %@", buf, 0xCu);
      }
    }
  }
}

void __85__PHANotificationController_fireNotificationForMemoryIdentifiers_withCreationReason___block_invoke_280(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [MEMORY[0x277CD98E8] changeRequestForMemory:{v7, v9}];
        [v8 setPendingState:0];
        if (v7 == *(a1 + 40))
        {
          [v8 setNotificationState:1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

uint64_t __85__PHANotificationController_fireNotificationForMemoryIdentifiers_withCreationReason___block_invoke_2()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __85__PHANotificationController_fireNotificationForMemoryIdentifiers_withCreationReason___block_invoke_277()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __85__PHANotificationController_fireNotificationForMemoryIdentifiers_withCreationReason___block_invoke()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

- (id)_userFeedbackCalculatorWithPhotoLibrary:(id)library
{
  userFeedbackCalculator = self->_userFeedbackCalculator;
  if (!userFeedbackCalculator)
  {
    v5 = MEMORY[0x277CD99F8];
    libraryCopy = library;
    v7 = [[v5 alloc] initWithPhotoLibrary:libraryCopy];

    v8 = self->_userFeedbackCalculator;
    self->_userFeedbackCalculator = v7;

    userFeedbackCalculator = self->_userFeedbackCalculator;
  }

  return userFeedbackCalculator;
}

- (BOOL)shouldFireNotificationForMemoriesWithScores:(id)scores withCreationReason:(unint64_t)reason
{
  v44 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  if (![scoresCopy count])
  {
    if (__PXLoggraph_workerOnceToken != -1)
    {
      dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_7294);
    }

    v15 = __PXLoggraph_workerOSLog;
    if (!os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v16 = "[Memories Notification] Not firing: No memories";
    goto LABEL_18;
  }

  if (reason == 1 && [MEMORY[0x277D3BC38] isMemoriesLivingOnFeedbackEnabled])
  {
    if (__PXLoggraph_workerOnceToken != -1)
    {
      dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_248);
    }

    v7 = __PXLoggraph_workerOSLog;
    v8 = 1;
    if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "[Memories Notification] Forcing notification trigger because of memories living on feedback is enabled.";
      v10 = v7;
      v11 = 2;
LABEL_13:
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [standardUserDefaults BOOLForKey:@"PhotoAnalysisShouldForceTriggerNotification"];

  if (!v13)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = scoresCopy;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v38;
      v22 = *MEMORY[0x277CD9C30];
      v23 = *MEMORY[0x277CD9C28];
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v37 + 1) + 8 * i) doubleValue];
          if (v25 > v22)
          {

            goto LABEL_43;
          }

          v20 |= v25 > v23;
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v27 = [standardUserDefaults2 BOOLForKey:@"PhotoAnalysisShouldTriggerNotificationEveryDay"];

    if (v27)
    {
      if (__PXLoggraph_workerOnceToken != -1)
      {
        dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_255);
      }

      v28 = __PXLoggraph_workerOSLog;
      if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = @"PhotoAnalysisShouldTriggerNotificationEveryDay";
        _os_log_impl(&dword_22FA28000, v28, OS_LOG_TYPE_INFO, "[Memories Notification] Not checking time interval because of user defaults %@", buf, 0xCu);
      }
    }

    else
    {
      v29 = [MEMORY[0x277D3BA78] nextPossibleNotificationDateWithPhotoLibrary:self->_photoLibrary];
      date = [MEMORY[0x277CBEAA8] date];
      if ([date compare:v29] == -1)
      {
        if (__PXLoggraph_workerOnceToken != -1)
        {
          dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_260);
        }

        v36 = __PXLoggraph_workerOSLog;
        if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v29;
          _os_log_impl(&dword_22FA28000, v36, OS_LOG_TYPE_INFO, "[Memories Notification] Not firing: Too soon to trigger, will be available on %@", buf, 0xCu);
        }

        goto LABEL_19;
      }

      if (__PXLoggraph_workerOnceToken != -1)
      {
        dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_263);
      }

      v31 = __PXLoggraph_workerOSLog;
      if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v29;
        _os_log_impl(&dword_22FA28000, v31, OS_LOG_TYPE_INFO, "[Memories Notification] Next possible date is %@", buf, 0xCu);
      }
    }

    if ((reason == 3) | v20 & 1)
    {
LABEL_43:
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v33 = [MEMORY[0x277D3BA78] lastTriggeredNotificationDateWithPhotoLibrary:self->_photoLibrary];
      if (v33 && [currentCalendar isDateInToday:v33])
      {
        if (__PXLoggraph_workerOnceToken != -1)
        {
          dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_270);
        }

        v34 = __PXLoggraph_workerOSLog;
        if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, v34, OS_LOG_TYPE_INFO, "[Memories Notification] Not firing: User already had a notification today", buf, 2u);
        }

        v8 = 0;
      }

      else
      {
        v8 = 1;
      }

      goto LABEL_52;
    }

    if (__PXLoggraph_workerOnceToken != -1)
    {
      dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_266_7303);
    }

    v15 = __PXLoggraph_workerOSLog;
    if (!os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
    {
LABEL_19:
      v8 = 0;
      goto LABEL_52;
    }

    *buf = 0;
    v16 = "[Memories Notification] Not firing: Generated memories are not worth a notification";
LABEL_18:
    _os_log_impl(&dword_22FA28000, v15, OS_LOG_TYPE_INFO, v16, buf, 2u);
    goto LABEL_19;
  }

  if (__PXLoggraph_workerOnceToken != -1)
  {
    dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_252);
  }

  v14 = __PXLoggraph_workerOSLog;
  v8 = 1;
  if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = @"PhotoAnalysisShouldForceTriggerNotification";
    v9 = "[Memories Notification] Forcing notification trigger because of user defaults %@";
    v10 = v14;
    v11 = 12;
    goto LABEL_13;
  }

LABEL_52:

  return v8;
}

uint64_t __92__PHANotificationController_shouldFireNotificationForMemoriesWithScores_withCreationReason___block_invoke_268()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __92__PHANotificationController_shouldFireNotificationForMemoriesWithScores_withCreationReason___block_invoke_264()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __92__PHANotificationController_shouldFireNotificationForMemoriesWithScores_withCreationReason___block_invoke_261()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __92__PHANotificationController_shouldFireNotificationForMemoriesWithScores_withCreationReason___block_invoke_258()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __92__PHANotificationController_shouldFireNotificationForMemoriesWithScores_withCreationReason___block_invoke_253()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __92__PHANotificationController_shouldFireNotificationForMemoriesWithScores_withCreationReason___block_invoke_250()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __92__PHANotificationController_shouldFireNotificationForMemoriesWithScores_withCreationReason___block_invoke_246()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __92__PHANotificationController_shouldFireNotificationForMemoriesWithScores_withCreationReason___block_invoke()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)userIsActivelyUsingPhotos
{
  if ([PHANotificationCoreDuetHelper userIsActivelyUsingAppWithName:@"com.apple.mobileslideshow" error:0])
  {
    return 1;
  }

  return [PHANotificationCoreDuetHelper userIsActivelyUsingAppWithName:@"com.apple.camera" error:0];
}

- (PHANotificationController)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PHANotificationController;
  v6 = [(PHANotificationController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphManager, manager);
    photoLibrary = [managerCopy photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;

    analytics = [managerCopy analytics];
    analytics = v7->_analytics;
    v7->_analytics = analytics;

    v12 = os_log_create("com.apple.photoanalysisd", "notifications");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v12;
  }

  return v7;
}

- (PHANotificationController)initWithGraphManager:(id)manager userFeedbackCalculator:(id)calculator
{
  calculatorCopy = calculator;
  v8 = [(PHANotificationController *)self initWithGraphManager:manager];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userFeedbackCalculator, calculator);
  }

  return v9;
}

@end