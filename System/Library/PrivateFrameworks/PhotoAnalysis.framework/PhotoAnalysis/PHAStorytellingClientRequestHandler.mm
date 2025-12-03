@interface PHAStorytellingClientRequestHandler
+ (BOOL)_isMeaningInferenceFromEventLabelingModel:(id)model meaningEdgeDomain:(unsigned __int16)domain configuration:(id)configuration;
+ (id)_aggregateErrorWithErrorDescriptions:(id)descriptions;
+ (id)_descriptionForMeaningNode:(id)node meaningEdge:(id)edge configuration:(id)configuration;
+ (id)_fetchOptionsForMusicCurationWithPhotoLibrary:(id)library;
+ (unint64_t)_sceneTypeForPosterClassification:(unint64_t)classification;
- (BOOL)validateOperation:(id)operation forConnection:(id)connection;
- (BOOL)validateSelector:(SEL)selector forConnection:(id)connection;
- (PHAStorytellingClientRequestHandler)initWithGraphManager:(id)manager;
- (id)_asssetLocalIdentifiersByCityNameForKeyAssetOnly:(BOOL)only;
- (id)_collectionListForLocalIdentifier:(id)identifier;
- (id)_defaultImageCreationOptions;
- (id)_generateFaceCropForFaceCropSourceDescriptors:(id)descriptors;
- (id)_pvFaceFromPHFace:(id)face copyPropertiesOption:(int64_t)option;
- (id)_pvImageForAsset:(id)asset targetSize:(CGSize)size error:(id *)error;
- (id)_utilityAssetLocalIdentifiersForKeyAssetOnly:(BOOL)only;
- (id)informationDictionaryForAsset:(id)asset;
- (int64_t)_titleTupleFormatForPhotoAnalysisTitleFormat:(int64_t)format;
- (unint64_t)_validatedMemoryNotificationState:(int)state;
- (void)_cacheAllSongSourcesWithCompletionHandler:(id)handler;
- (void)exportWallpaperForAssets:(id)assets options:(id)options context:(id)context reply:(id)reply;
- (void)handleOperation:(id)operation;
- (void)notifyWhenGraphReadyWithCoalescingIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)recordFeatureUsageFromCounts:(id)counts context:(id)context reply:(id)reply;
- (void)reloadAlbumWidgetTimelineWithContext:(id)context reply:(id)reply;
- (void)reloadForYouWidgetTimelineWithContext:(id)context reply:(id)reply;
- (void)reloadWallpaperSuggestionsWithSuggestionUUIDs:(id)ds context:(id)context reply:(id)reply;
- (void)requestAllSocialGroupsForMemberLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply;
- (void)requestAssetCollectionsForPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestAssetLocalIdentifiersByCityNameWithContext:(id)context reply:(id)reply;
- (void)requestAssetsForPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestAvailableSuggestionTypeInfosWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID:(id)d options:(id)options context:(id)context reply:(id)reply;
- (void)requestCacheSongSourceWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestCameraSmartSharingProcessingForLibraryScopeWithUUID:(id)d withOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestClearMusicCacheWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestComposabilityScoresOfAssetsForLocalIdentifiers:(id)identifiers options:(id)options context:(id)context reply:(id)reply;
- (void)requestConfidenceByMomentLocalIdentifierForMeaning:(id)meaning useAlternativeMeaningEdge:(BOOL)edge onlyHighPrecision:(BOOL)precision context:(id)context reply:(id)reply;
- (void)requestCuratedAssetForAssetCollectionWithLocalIdentifier:(id)identifier referenceAssetLocalIdentifier:(id)localIdentifier options:(id)options context:(id)context reply:(id)reply;
- (void)requestCuratedAssetsForAssetCollectionWithLocalIdentifier:(id)identifier duration:(unint64_t)duration options:(id)options context:(id)context reply:(id)reply;
- (void)requestCurationDebugInformationForAsset:(id)asset context:(id)context reply:(id)reply;
- (void)requestCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply;
- (void)requestCurationOfLength:(unint64_t)length forMemoryForLocalIdentifier:(id)identifier withOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestCurationScoreByAssetUUIDForAssetUUIDs:(id)ds context:(id)context reply:(id)reply;
- (void)requestDefaultsObjectForKey:(id)key context:(id)context reply:(id)reply;
- (void)requestExportGraphServiceForPurpose:(id)purpose context:(id)context reply:(id)reply;
- (void)requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)requestFlexMusicCurationDebugInformationForSongWithUID:(id)d context:(id)context reply:(id)reply;
- (void)requestFlexMusicCurationForAssetCollectionLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply;
- (void)requestFlexMusicCurationForAssetLocalIdentifiers:(id)identifiers options:(id)options context:(id)context reply:(id)reply;
- (void)requestFlexMusicCurationWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)identifier withOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestGeoHashForAssetLocalIdentifiers:(id)identifiers geoHashSize:(id)size context:(id)context reply:(id)reply;
- (void)requestGraphInferencesSummaryWithDateInterval:(id)interval context:(id)context reply:(id)reply;
- (void)requestGraphInferencesSummaryWithMomentLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestGraphModelResultWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestGraphMomentLocalIdentifiersWithDateInterval:(id)interval context:(id)context reply:(id)reply;
- (void)requestGraphRebuildFractionCompletedWithContext:(id)context reply:(id)reply;
- (void)requestGraphServicePerformsQueryWithContext:(id)context query:(id)query reply:(id)reply;
- (void)requestGraphServiceStatisticsWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestGraphServiceStatusWithContext:(id)context reply:(id)reply;
- (void)requestHighlightDebugInformationForHighlightWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)requestHighlightEstimatesWithContext:(id)context reply:(id)reply;
- (void)requestIconicSceneScoreForAssetLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestInferredMePersonLocalIdentifierWithErrorForContext:(id)context reply:(id)reply;
- (void)requestInvalidateServicePersistentCachesWithContext:(id)context reply:(id)reply;
- (void)requestInvalidateServiceTransientCachesWithContext:(id)context reply:(id)reply;
- (void)requestKeyAssetLocalIdentifierForPrototypeCategory:(id)category context:(id)context reply:(id)reply;
- (void)requestMaestroSongsWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestMeaningScoreDebugDescriptionForMomentLocalIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)requestMemoryDebugInformationForMemoryWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)requestMusicCacheStatusWithContext:(id)context reply:(id)reply;
- (void)requestMusicCatalogAdamIDsForPurchasedSongID:(id)d options:(id)options context:(id)context reply:(id)reply;
- (void)requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)requestMusicCurationDebugInformationForSongWithAdamID:(id)d context:(id)context reply:(id)reply;
- (void)requestMusicCurationForAssetCollectionLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply;
- (void)requestMusicCurationForAssetLocalIdentifiers:(id)identifiers options:(id)options context:(id)context reply:(id)reply;
- (void)requestMusicCurationWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestNightlySuggestionsForPosterConfiguration:(id)configuration atDate:(id)date context:(id)context reply:(id)reply;
- (void)requestOnDemandFaceCropsForFaceLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestPeopleForWallpaperSuggestionsWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestPrecachingOfAudioDataForAdamIDs:(id)ds context:(id)context reply:(id)reply;
- (void)requestRecentlyUsedSongsWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestRelatedMomentsForPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply;
- (void)requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext:(id)context reply:(id)reply;
- (void)requestRunPFLWithAttachments:(id)attachments recipeUserInfo:(id)info context:(id)context resultBlock:(id)block;
- (void)requestSetDefaultsObject:(id)object forKey:(id)key context:(id)context reply:(id)reply;
- (void)requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)requestSignalModelInfosWithContext:(id)context reply:(id)reply;
- (void)requestSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestSongsForAdamIDs:(id)ds options:(id)options context:(id)context reply:(id)reply;
- (void)requestSortedArrayOfPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestStartSharedLibrarySuggestionResultWithContext:(id)context reply:(id)reply;
- (void)requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)identifiers withOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestSuggestionInfosWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestSummaryCurationForHighlightLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply;
- (void)requestTextFeaturesForMomentLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)requestTitleForAssetCollectionWithLocalIdentifier:(id)identifier format:(int64_t)format context:(id)context reply:(id)reply;
- (void)requestTitleForCollectionMomentListWithLocalIdentifier:(id)identifier format:(int64_t)format context:(id)context reply:(id)reply;
- (void)requestTitleForPersonLocalIdentifiers:(id)identifiers format:(int64_t)format context:(id)context reply:(id)reply;
- (void)requestTrendsByIdentifierWithCadence:(id)cadence forYear:(unint64_t)year context:(id)context reply:(id)reply;
- (void)requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply;
- (void)requestUpNextMemoriesWithOptions:(id)options context:(id)context reply:(id)reply;
- (void)requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs:(id)ds context:(id)context reply:(id)reply;
- (void)requestUtilityAssetInformationWithContext:(id)context reply:(id)reply;
- (void)requestUtilityAssetLocalIdentifiersWithContext:(id)context reply:(id)reply;
- (void)requestWallpaperPropertiesForAssets:(id)assets options:(id)options context:(id)context reply:(id)reply;
- (void)runCurationWithItems:(id)items options:(id)options context:(id)context reply:(id)reply;
- (void)runShadowEvaluationWithRecipe:(id)recipe models:(id)models trialDeploymentID:(id)d trialExperimentID:(id)iD trialTreatmentID:(id)treatmentID context:(id)context resultBlock:(id)block;
- (void)simulateMemoriesNotificationWithOptions:(id)options context:(id)context reply:(id)reply;
@end

@implementation PHAStorytellingClientRequestHandler

- (void)notifyWhenGraphReadyWithCoalescingIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  [graphManager registerCoalescingBlockWhenGraphAnalysisFinishes:replyCopy];
}

- (void)requestGraphMomentLocalIdentifiersWithDateInterval:(id)interval context:(id)context reply:(id)reply
{
  intervalCopy = interval;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v10 = [graphManager isReadyWithError:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v15 = v11;
    v13 = [graphManager momentLocalIdentifiersInDateInterval:intervalCopy error:&v15];
    v14 = v15;

    replyCopy[2](replyCopy, v13, v14);
    v12 = v14;
  }

  else
  {
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)requestGraphInferencesSummaryWithMomentLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v10 = [graphManager isReadyWithError:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v15 = v11;
    v13 = [graphManager summaryOfInferencesPerMomentByLocalIdentifiers:identifiersCopy error:&v15];
    v14 = v15;

    replyCopy[2](replyCopy, v13, v14);
    v12 = v14;
  }

  else
  {
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)requestGraphInferencesSummaryWithDateInterval:(id)interval context:(id)context reply:(id)reply
{
  intervalCopy = interval;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v10 = [graphManager isReadyWithError:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v15 = v11;
    v13 = [graphManager summaryOfInferencesPerMomentInDateInterval:intervalCopy error:&v15];
    v14 = v15;

    replyCopy[2](replyCopy, v13, v14);
    v12 = v14;
  }

  else
  {
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)requestExportGraphServiceForPurpose:(id)purpose context:(id)context reply:(id)reply
{
  purposeCopy = purpose;
  replyCopy = reply;
  if (replyCopy)
  {
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v18 = 0;
    v10 = [graphManager isReadyWithError:&v18];
    v11 = v18;
    if ((v10 & 1) == 0)
    {
      replyCopy[2](replyCopy, 0, v11);
LABEL_16:

      goto LABEL_17;
    }

    if ([purposeCopy isEqualToString:*MEMORY[0x277D3AE18]])
    {
      v12 = [graphManager snapshotOuputFilePathURLForKey:*MEMORY[0x277D3BE80]];
      if (v12)
      {
        v13 = v12;
        if (([graphManager copyGraphToURL:v12] & 1) == 0)
        {
LABEL_6:
          v14 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:10];
LABEL_14:
          path = v14;
          replyCopy[2](replyCopy, 0, v14);
          goto LABEL_15;
        }

LABEL_11:
        path = [v13 path];
        (replyCopy)[2](replyCopy, path, 0);
LABEL_15:

        goto LABEL_16;
      }

LABEL_13:
      v13 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"Graph URL creation was not successful."];
      v14 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9 localizedDescription:v13];
      goto LABEL_14;
    }

    if ([purposeCopy isEqualToString:@"snapshot"])
    {
      v13 = [graphManager snapshotOuputFilePathURLForKey:*MEMORY[0x277D3BE88]];
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = MEMORY[0x277CBEBC0];
      defaultGraphExportFullPath = [graphManager defaultGraphExportFullPath];
      v13 = [v16 fileURLWithPath:defaultGraphExportFullPath];

      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (![graphManager saveGraphToURL:v13])
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_17:
}

- (void)requestGraphRebuildFractionCompletedWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  libraryAnalysisState = [graphManager libraryAnalysisState];
  if (libraryAnalysisState == 1)
  {
    v10 = MEMORY[0x277CCABB0];
    rebuildProgress = [graphManager rebuildProgress];
    [rebuildProgress fractionCompleted];
    v9 = [v10 numberWithDouble:?];
  }

  else if (libraryAnalysisState)
  {
    v9 = 0;
  }

  else
  {
    isReady = [graphManager isReady];
    v8 = &unk_2844CC2B0;
    if (isReady)
    {
      v8 = &unk_2844CC2A0;
    }

    v9 = v8;
  }

  replyCopy[2](replyCopy, v9, 0);
}

- (void)requestGraphServicePerformsQueryWithContext:(id)context query:(id)query reply:(id)reply
{
  queryCopy = query;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [graphManager isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __102__PHAStorytellingClientRequestHandler_Graph__requestGraphServicePerformsQueryWithContext_query_reply___block_invoke;
    v12[3] = &unk_2788B1FB8;
    v13 = replyCopy;
    [graphManager matchWithVisualFormat:queryCopy usingBlock:v12];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v11);
  }
}

- (void)requestInvalidateServicePersistentCachesWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v13 = 0;
  v7 = [graphManager isReadyWithError:&v13];
  v8 = v13;
  if (v7)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "Invalidate Persistent Caches", buf, 2u);
    }

    [graphManager invalidatePersistentCaches];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __104__PHAStorytellingClientRequestHandler_Graph__requestInvalidateServicePersistentCachesWithContext_reply___block_invoke;
    v10[3] = &unk_2788B1630;
    v11 = replyCopy;
    [graphManager waitUntilFinishedUsingBlock:v10];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, v8);
  }
}

- (void)requestInvalidateServiceTransientCachesWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v13 = 0;
  v7 = [graphManager isReadyWithError:&v13];
  v8 = v13;
  if (v7)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "Invalidate Transient Caches", buf, 2u);
    }

    [graphManager invalidateTransientCaches];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __103__PHAStorytellingClientRequestHandler_Graph__requestInvalidateServiceTransientCachesWithContext_reply___block_invoke;
    v10[3] = &unk_2788B1630;
    v11 = replyCopy;
    [graphManager waitUntilFinishedUsingBlock:v10];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, v8);
  }
}

- (void)requestGraphServiceStatisticsWithOptions:(id)options context:(id)context reply:(id)reply
{
  v37[8] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v35 = 0;
  v10 = [graphManager isReadyWithError:&v35];
  v11 = v35;
  if (v10)
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"types"];
    graphManager2 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v14 = [graphManager2 statisticsWithTypeStrings:v12];

    if (v14 && [v14 length])
    {
      v26 = v14;
      v27 = v12;
      v28 = v11;
      v29 = replyCopy;
      v30 = optionsCopy;
      string = [MEMORY[0x277CCAB68] string];
      [string appendFormat:@"### PhotoAnalysis ###\n\n"];
      [string appendFormat:@"Defaults Writes Status:\n"];
      v37[0] = @"PhotoAnalysisGraphBackgroundActivitiesDisabled";
      v37[1] = @"PhotoAnalysisShouldTriggerNotificationEveryDay";
      v37[2] = @"PhotoAnalysisShouldOverrideUserIsActivelyUsingPhotos";
      v37[3] = @"PhotoAnalysisShouldForceTriggerNotification";
      v16 = *MEMORY[0x277D3BE50];
      v37[4] = @"PhotoAnalysisNotificationSimulationDelayOverride";
      v37[5] = v16;
      v17 = *MEMORY[0x277D3BE58];
      v37[6] = *MEMORY[0x277D3BE60];
      v37[7] = v17;
      [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:8];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v34 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v31 + 1) + 8 * i);
            standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
            v25 = [standardUserDefaults valueForKey:v23];
            [string appendFormat:@"\t%@: %@\n", v23, v25];
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v20);
      }

      [string appendFormat:@"\n\n### PhotoGraph ###\n\n"];
      v14 = v26;
      [string appendString:v26];
      replyCopy = v29;
      (v29)[2](v29, string, 0);

      optionsCopy = v30;
      v11 = v28;
      v12 = v27;
    }

    else
    {
      string = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:2 localizedDescription:@"invalid type options to graph statistics command"];
      replyCopy[2](replyCopy, 0, string);
    }
  }

  else
  {
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)requestGraphServiceStatusWithContext:(id)context reply:(id)reply
{
  v22[2] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  string = [MEMORY[0x277CCAB68] string];
  libraryAnalysisState = [graphManager libraryAnalysisState];
  if (libraryAnalysisState == 1)
  {
    [string appendString:@"Library analysis: Running"];
    rebuildProgress = [graphManager rebuildProgress];
    [rebuildProgress fractionCompleted];
    v11 = v10 * 100.0;

    [string appendFormat:@"\nProgress: %0.1f%%", fmin(v11, 100.0)];
  }

  else if (!libraryAnalysisState)
  {
    [string appendString:@"Library analysis: Not Running"];
  }

  v20 = 0;
  v12 = [graphManager isReadyWithError:&v20];
  v13 = v20;
  if (v12)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [string appendFormat:@"\nReady: %@", v14];
  if ((v12 & 1) == 0)
  {
    localizedDescription = [v13 localizedDescription];
    [string appendFormat:@", %@", localizedDescription];
  }

  if ([graphManager isBusy])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [string appendFormat:@"\nBusy: %@", v16];
  v17 = *MEMORY[0x277D3AE60];
  v21[0] = *MEMORY[0x277D3AE58];
  v21[1] = v17;
  v22[0] = string;
  v18 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v22[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  replyCopy[2](replyCopy, v19, 0);
}

- (void)requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs:(id)ds context:(id)context reply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  v9 = [PHAUserFeedbackUpdater alloc];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = [(PHAUserFeedbackUpdater *)v9 initWithGraphManager:graphManager];

  v14 = 0;
  v12 = [(PHAUserFeedbackUpdater *)v11 updateFeatureContentWithPersonUUIDs:dsCopy error:&v14];

  v13 = v14;
  replyCopy[2](replyCopy, v12, v13);
}

- (void)requestGraphModelResultWithOptions:(id)options context:(id)context reply:(id)reply
{
  v21[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v19 = 0;
  v10 = [graphManager isReadyWithError:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AE48]];
    v13 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AE40]];
    if ([v12 isEqualToString:*MEMORY[0x277D3AE38]] && objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277D3AE50]))
    {
      v18 = 0;
      v14 = [graphManager requestGraleSemanticLabelPropagationWithError:&v18];
      v15 = v18;
      replyCopy[2](replyCopy, v14, v15);
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported request - modelIdentifier: %@, inferenceKind: %@", v12, v13];
      v16 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v15;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v14 = [v16 errorWithDomain:@"com.apple.PhotoAnalysis.PHAStorytellingClientRequestHandler_MLModel" code:0 userInfo:v17];

      replyCopy[2](replyCopy, 0, v14);
    }
  }

  else
  {
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)requestRelatedMomentsForPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [graphManager isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    v13 = [graphManager assetCollectionsForPersonLocalIdentifiers:v12];

    replyCopy[2](replyCopy, v13, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestInferredMePersonLocalIdentifierWithErrorForContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v21 = 0;
  v9 = [graphManager isReadyWithError:&v21];
  v10 = v21;
  if (v9)
  {
    objc_initWeak(&location, self);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    workingContext = [graphManager workingContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __111__PHAStorytellingClientRequestHandler_Person__requestInferredMePersonLocalIdentifierWithErrorForContext_reply___block_invoke;
    v12[3] = &unk_2788B1780;
    v12[4] = &v14;
    objc_copyWeak(&v13, &location);
    [workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];

    replyCopy[2](replyCopy, v15[5], 0);
    objc_destroyWeak(&v13);
    _Block_object_dispose(&v14, 8);

    objc_destroyWeak(&location);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v10);
  }
}

void __111__PHAStorytellingClientRequestHandler_Person__requestInferredMePersonLocalIdentifierWithErrorForContext_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [v3 meNode];
  v5 = [v4 inferredPersonNode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 localIdentifier];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_22FA28000, v10, OS_LOG_TYPE_ERROR, "The meNode.inferredPersonNode is not of type PGGraphPersonNode", v11, 2u);
    }
  }
}

- (void)requestAssetsForPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [graphManager isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    v13 = [graphManager assetIdentifiersForPersonLocalIdentifiers:v12];

    replyCopy[2](replyCopy, v13, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestAssetCollectionsForPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v15 = 0;
  v10 = [graphManager isReadyWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    v13 = [graphManager assetCollectionsForPersonLocalIdentifiers:v12];

    v14 = [v13 valueForKey:@"localIdentifier"];
    replyCopy[2](replyCopy, v14, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [graphManager isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    v13 = [graphManager socialGroupsOverlappingMemberLocalIdentifiers:v12];

    replyCopy[2](replyCopy, v13, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestAllSocialGroupsForMemberLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply
{
  identifierCopy = identifier;
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v13 = [graphManager isReadyWithError:&v16];
  v14 = v16;
  if (v13)
  {
    v15 = [graphManager allSocialGroupsForMemberLocalIdentifier:identifierCopy options:optionsCopy];
    replyCopy[2](replyCopy, v15, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v14);
  }
}

- (void)requestSortedArrayOfPersonLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [graphManager isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    v13 = [graphManager sortedArrayForPersonLocalIdentifiers:v12];

    replyCopy[2](replyCopy, v13, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestComposabilityScoresOfAssetsForLocalIdentifiers:(id)identifiers options:(id)options context:(id)context reply:(id)reply
{
  v9 = MEMORY[0x277D3B618];
  replyCopy = reply;
  optionsCopy = options;
  identifiersCopy = identifiers;
  v13 = [v9 alloc];
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v16 = [v13 initWithPhotoLibrary:photoLibrary options:optionsCopy];

  v15 = [v16 composabilityScoresOfAssetsForLocalIdentifiers:identifiersCopy];

  replyCopy[2](replyCopy, v15, 0);
}

- (void)requestSignalModelInfosWithContext:(id)context reply:(id)reply
{
  v4 = MEMORY[0x277D3C798];
  replyCopy = reply;
  initForTesting = [[v4 alloc] initForTesting];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__PHAStorytellingClientRequestHandler_Curation__requestSignalModelInfosWithContext_reply___block_invoke;
  v9[3] = &unk_2788B17A8;
  v10 = v7;
  v8 = v7;
  [initForTesting enumerateClassificationBasedSignalModelsUsingBlock:v9];
  replyCopy[2](replyCopy, v8, 0);
}

void __90__PHAStorytellingClientRequestHandler_Curation__requestSignalModelInfosWithContext_reply___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 modelInfo];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() name];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

- (void)runCurationWithItems:(id)items options:(id)options context:(id)context reply:(id)reply
{
  v31[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  replyCopy = reply;
  v12 = [optionsCopy objectForKeyedSubscript:@"curationType"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"extended";
  }

  v15 = v14;

  if ([(__CFString *)v15 isEqualToString:@"extended"])
  {
    v16 = [objc_alloc(MEMORY[0x277D3B680]) initWithSimilarityModelClass:objc_opt_class()];
    v17 = [optionsCopy objectForKeyedSubscript:@"verifiedPersonLocalIdentifiers"];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v17];
      [v16 setVerifiedPersonLocalIdentifiers:v18];
    }

    v28 = 0;
    v19 = [v16 dejunkedDedupedItemIdentifiersWithItems:itemsCopy options:optionsCopy debugInfo:&v28];
    v20 = v28;
  }

  else
  {
    if ([(__CFString *)v15 isEqualToString:@"curation"])
    {
      v16 = objc_alloc_init(MEMORY[0x277D3B668]);
      v27 = 0;
      v19 = [v16 bestItemIdentifiersWithItems:itemsCopy options:optionsCopy debugInfo:&v27];
      v20 = v27;
      goto LABEL_11;
    }

    if (![(__CFString *)v15 isEqualToString:@"keyAsset"])
    {
      v19 = MEMORY[0x277CBEBF8];
      v20 = MEMORY[0x277CBEC10];
      goto LABEL_12;
    }

    v22 = objc_alloc(MEMORY[0x277D3BA20]);
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    curationManager = [graphManager curationManager];
    curationCriteriaFactory = [curationManager curationCriteriaFactory];
    v16 = [v22 initWithCurationCriteriaFactory:curationCriteriaFactory];

    v26 = 0;
    v17 = [v16 keyItemIdentifierWithItems:itemsCopy options:optionsCopy debugInfo:&v26];
    v20 = v26;
    if (v17)
    {
      v31[0] = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }
  }

LABEL_11:
LABEL_12:
  v29[0] = @"bestItemIdentifiers";
  v29[1] = @"debugInfo";
  v30[0] = v19;
  v30[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  replyCopy[2](replyCopy, v21, 0);
}

- (void)requestCurationScoreByAssetUUIDForAssetUUIDs:(id)ds context:(id)context reply:(id)reply
{
  v47 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  contextCopy = context;
  replyCopy = reply;
  if (dsCopy && ![dsCopy count])
  {
    (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEC10], 0);
  }

  else
  {
    photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    assetPropertySetsForCuration = [MEMORY[0x277D3B658] assetPropertySetsForCuration];
    [librarySpecificFetchOptions setFetchPropertySets:assetPropertySetsForCuration];

    [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    [librarySpecificFetchOptions setChunkSizeForFetch:1000];
    [librarySpecificFetchOptions setCacheSizeForFetch:1000];
    v36 = contextCopy;
    v37 = dsCopy;
    v35 = replyCopy;
    v33 = librarySpecificFetchOptions;
    if (dsCopy)
    {
      [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:dsCopy options:librarySpecificFetchOptions];
    }

    else
    {
      [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
    }
    v14 = ;
    v15 = [v14 count];
    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v15];
    v34 = photoLibrary;
    v40 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
    v17 = objc_alloc_init(MEMORY[0x277D3C788]);
    [v17 setViewCountThreshold:1.79769313e308];
    [v17 setPlayCountThreshold:1.79769313e308];
    [v17 setShouldEmphasizeShared:1];
    v18 = objc_alloc(MEMORY[0x277D3CAA8]);
    v32 = [v18 initWithSceneAnalysisVersion:*MEMORY[0x277D26848]];
    [v32 aestheticScoreThresholdToBeAwesome];
    [v17 setAestheticScoreThresholdToBeAwesome:?];
    if (v15)
    {
      v19 = 0;
      v38 = v15;
      v39 = v14;
      do
      {
        context = objc_autoreleasePoolPush();
        if (v15 - v19 >= 0x3E8)
        {
          v20 = 1000;
        }

        else
        {
          v20 = v15 - v19;
        }

        v21 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v19, v20}];
        v22 = [v14 objectsAtIndexes:v21];

        [MEMORY[0x277CD97A8] prefetchOnAssets:v22 options:13 curationContext:v40];
        curationSession = [v40 curationSession];
        [curationSession prepareAssets:v22];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v43;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v43 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v42 + 1) + 8 * i);
              [v29 scoreInContext:v17];
              v30 = [MEMORY[0x277CCABB0] numberWithDouble:?];
              uuid = [v29 uuid];
              [v16 setObject:v30 forKeyedSubscript:uuid];
            }

            v26 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
          }

          while (v26);
        }

        objc_autoreleasePoolPop(context);
        v19 += 1000;
        v15 = v38;
        v14 = v39;
      }

      while (v19 < v38);
    }

    replyCopy = v35;
    (*(v35 + 2))(v35, v16, 0);

    contextCopy = v36;
    dsCopy = v37;
  }
}

- (void)requestGeoHashForAssetLocalIdentifiers:(id)identifiers geoHashSize:(id)size context:(id)context reply:(id)reply
{
  v47 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  sizeCopy = size;
  contextCopy = context;
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  if (identifiersCopy)
  {
    [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:identifiersCopy options:librarySpecificFetchOptions];
  }

  else
  {
    [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  }
  v16 = ;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v16)
  {
    v33 = librarySpecificFetchOptions;
    v34 = replyCopy;
    v35 = contextCopy;
    v37 = identifiersCopy;
    v39 = [v16 count];
    v36 = sizeCopy;
    integerValue = [sizeCopy integerValue];
    if ((v39 + 199) >= 0xC8)
    {
      v19 = integerValue;
      v20 = 0;
      v38 = v16;
      do
      {
        context = objc_autoreleasePoolPush();
        v40 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:?];
        v21 = [v16 objectsAtIndexes:?];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v43;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v43 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v42 + 1) + 8 * i);
              v27 = MEMORY[0x277CD97E8];
              [v26 locationCoordinate];
              v29 = v28;
              [v26 locationCoordinate];
              v30 = [v27 poiGeoHashWithGeoHashSize:v19 latitude:v29 longitude:?];
              if (v30)
              {
                uuid = [v26 uuid];
                [v17 setObject:v30 forKeyedSubscript:uuid];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v42 objects:v46 count:16];
          }

          while (v23);
        }

        objc_autoreleasePoolPop(context);
        ++v20;
        v16 = v38;
      }

      while (v20 != (v39 + 199) / 0xC8uLL);
    }

    replyCopy = v34;
    (v34)[2](v34, v17, 0);
    sizeCopy = v36;
    identifiersCopy = v37;
    contextCopy = v35;
    librarySpecificFetchOptions = v33;
  }

  else
  {
    v32 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    replyCopy[2](replyCopy, 0, v32);
  }
}

- (void)requestIconicSceneScoreForAssetLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  v46[3] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  contextCopy = context;
  replyCopy = reply;
  v11 = objc_alloc_init(MEMORY[0x277D3B4C0]);
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v14 = *MEMORY[0x277CD9B10];
  v46[0] = *MEMORY[0x277CD9A80];
  v46[1] = v14;
  v46[2] = *MEMORY[0x277CD9AD0];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  [librarySpecificFetchOptions setFetchPropertySets:v15];

  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  if ([identifiersCopy count])
  {
    [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:identifiersCopy options:librarySpecificFetchOptions];
  }

  else
  {
    [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  }
  v16 = ;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v16)
  {
    v32 = librarySpecificFetchOptions;
    v33 = replyCopy;
    v34 = contextCopy;
    v35 = identifiersCopy;
    v18 = objc_alloc_init(MEMORY[0x277D3C7A0]);
    v19 = [v16 count];
    if ((v19 + 199) >= 0xC8)
    {
      v20 = 0;
      v36 = (v19 + 199) / 0xC8uLL;
      v37 = v18;
      v38 = v16;
      do
      {
        context = objc_autoreleasePoolPush();
        v39 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:v32];
        v21 = [v16 objectsAtIndexes:?];
        [v18 prepareAssets:v21];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v42;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v41 + 1) + 8 * i);
              v28 = MEMORY[0x277CCABB0];
              [v27 clsIconicSceneScoreWithSceneGeography:v11];
              v29 = [v28 numberWithDouble:?];
              [v29 floatValue];
              if (v30 > 0.0)
              {
                uuid = [v27 uuid];
                [v17 setObject:v29 forKeyedSubscript:uuid];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v24);
        }

        objc_autoreleasePoolPop(context);
        ++v20;
        v18 = v37;
        v16 = v38;
      }

      while (v20 != v36);
    }

    replyCopy = v33;
    (v33)[2](v33, v17, 0);
    contextCopy = v34;
    identifiersCopy = v35;
    librarySpecificFetchOptions = v32;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    replyCopy[2](replyCopy, 0, v18);
  }
}

- (void)requestCurationDebugInformationForAsset:(id)asset context:(id)context reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v8 = MEMORY[0x277CD97A8];
  v20 = assetCopy;
  v9 = MEMORY[0x277CBEA60];
  replyCopy = reply;
  v11 = [v9 arrayWithObjects:&v20 count:1];
  v12 = [(PHAStorytellingClientRequestHandler *)self photoLibrary:v20];
  librarySpecificFetchOptions = [v12 librarySpecificFetchOptions];
  v14 = [v8 fetchAssetsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];
  firstObject = [v14 firstObject];

  if (firstObject)
  {
    v16 = objc_alloc(MEMORY[0x277D3C790]);
    photoLibrary = [firstObject photoLibrary];
    v18 = [v16 initWithPhotoLibrary:photoLibrary];

    v19 = [MEMORY[0x277D3B620] debugInformationForAsset:firstObject curationContext:v18];
    replyCopy[2](replyCopy, v19, 0);

    replyCopy = v19;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (replyCopy)[2](replyCopy, 0, v18);
  }
}

- (void)requestUtilityAssetInformationWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  utilityAssetInformation = [graphManager utilityAssetInformation];

  if (utilityAssetInformation)
  {
    replyCopy[2](replyCopy, utilityAssetInformation, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (replyCopy)[2](replyCopy, 0, v7);
  }
}

- (void)requestCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v23 = 0;
  v13 = [graphManager isReadyWithError:&v23];
  v14 = v23;
  if (v13)
  {
    photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v17 = MEMORY[0x277CD97B8];
    v24[0] = identifierCopy;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v19 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:librarySpecificFetchOptions];
    firstObject = [v19 firstObject];

    if (firstObject)
    {
      v21 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
      v22 = [graphManager curationDebugInformationForAssetCollection:firstObject options:optionsCopy curationContext:v21];
      replyCopy[2](replyCopy, v22, 0);
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
      (replyCopy)[2](replyCopy, 0, v21);
    }
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v14);
  }
}

- (void)requestSummaryCurationForHighlightLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply
{
  v17[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v12 = MEMORY[0x277CD97B8];
  v17[0] = identifierCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];
  firstObject = [v14 firstObject];

  if (firstObject && [firstObject assetCollectionType] == 6)
  {
    v16 = [MEMORY[0x277D3BA40] summaryCurationForHighlight:firstObject];
    replyCopy[2](replyCopy, v16, 0);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (replyCopy)[2](replyCopy, 0, v16);
  }
}

- (void)requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply
{
  v56 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  replyCopy = reply;
  loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v13 = os_signpost_id_generate(loggingConnection);
  info = 0;
  mach_timebase_info(&info);
  v14 = loggingConnection;
  v15 = v14;
  v44 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "RepresentativeAssetsRequest", "", buf, 2u);
  }

  v43 = mach_absolute_time();
  loggingConnection2 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    allKeys = [optionsCopy allKeys];
    [allKeys componentsJoinedByString:{@", "}];
    v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412546;
    v53 = identifierCopy;
    v54 = 2112;
    v55 = v18;
    _os_log_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_INFO, "Representative Assets Request: collectionID:%@ options:%@", buf, 0x16u);
  }

  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v20 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:identifierCopy options:optionsCopy photoLibrary:photoLibrary];
  if (v20)
  {
    spid = v13;
    v40 = replyCopy;
    v45 = v15;
    v41 = optionsCopy;
    v42 = identifierCopy;
    v21 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
    v22 = [MEMORY[0x277D3B658] representativeAssetsForAssetCollection:v20 curationContext:v21 progressBlock:0];
    array = [MEMORY[0x277CBEB18] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v47;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v47 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [(PHAStorytellingClientRequestHandler *)self informationDictionaryForAsset:*(*(&v46 + 1) + 8 * i)];
          [array addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v26);
    }

    loggingConnection3 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
    {
      v31 = [array count];
      v32 = COERCE_DOUBLE([v20 estimatedAssetCount]);
      *buf = 134218240;
      v53 = v31;
      v54 = 2048;
      v55 = v32;
      _os_log_impl(&dword_22FA28000, loggingConnection3, OS_LOG_TYPE_INFO, "Representative Assets Reply: representativeAssetsCount:%ld collectionAssetsCount:%ld", buf, 0x16u);
    }

    v33 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v36 = v45;
    v37 = v36;
    replyCopy = v40;
    if (v44 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v37, OS_SIGNPOST_INTERVAL_END, spid, "RepresentativeAssetsRequest", "", buf, 2u);
    }

    optionsCopy = v41;
    identifierCopy = v42;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v53 = "RepresentativeAssetsRequest";
      v54 = 2048;
      v55 = ((((v33 - v43) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v37, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    (v40)[2](v40, array, 0);

    v15 = v45;
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    loggingConnection4 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = identifierCopy;
      _os_log_error_impl(&dword_22FA28000, loggingConnection4, OS_LOG_TYPE_ERROR, "Representative Assets Error: Failed to lookup collectionID:%@", buf, 0xCu);
    }

    replyCopy[2](replyCopy, 0, v21);
  }
}

- (void)requestCuratedAssetsForAssetCollectionWithLocalIdentifier:(id)identifier duration:(unint64_t)duration options:(id)options context:(id)context reply:(id)reply
{
  v66 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  curationManager = [graphManager curationManager];

  loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v16 = os_signpost_id_generate(loggingConnection);
  info = 0;
  mach_timebase_info(&info);
  v17 = loggingConnection;
  v18 = v17;
  v52 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CuratedAssetsRequest", "", buf, 2u);
  }

  spid = v16;

  v49 = mach_absolute_time();
  loggingConnection2 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    [MEMORY[0x277D3BA40] stringFromPGDuration:{duration, v16}];
    v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    allKeys = [optionsCopy allKeys];
    v22 = [allKeys componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v61 = identifierCopy;
    v62 = 2112;
    v63 = v20;
    v64 = 2112;
    v65 = v22;
    _os_log_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_INFO, "Curated Assets Request: collectionID:%@ duration:%@ options:%@", buf, 0x20u);
  }

  v23 = [optionsCopy objectForKeyedSubscript:@"PHPhotosGraphOptionPersonLocalIdentifiersToFocus"];
  if ([v23 count] == 1)
  {
    v50 = replyCopy;
    v51 = identifierCopy;
    firstObject = [v23 firstObject];
    v25 = [curationManager curatedAssetsForPersonLocalIdentifier:firstObject progressBlock:0];
LABEL_20:

    array = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    firstObject = v25;
    v36 = [firstObject countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v55;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(firstObject);
          }

          spid = [(PHAStorytellingClientRequestHandler *)self informationDictionaryForAsset:*(*(&v54 + 1) + 8 * i), spid];
          [array addObject:spid];
        }

        v37 = [firstObject countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v37);
    }

    v41 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v44 = v18;
    v45 = v44;
    if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v45, OS_SIGNPOST_INTERVAL_END, spid, "CuratedAssetsRequest", "", buf, 2u);
    }

    replyCopy = v50;
    identifierCopy = v51;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v61 = "CuratedAssetsRequest";
      v62 = 2048;
      v63 = ((((v41 - v49) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v45, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    loggingConnection3 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
    {
      v47 = [array count];
      *buf = 134217984;
      v61 = v47;
      _os_log_impl(&dword_22FA28000, loggingConnection3, OS_LOG_TYPE_INFO, "Curated Assets Reply: collectionAssetsCount:%lu", buf, 0xCu);
    }

    (v50)[2](v50, array, 0);
    goto LABEL_35;
  }

  firstObject = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v26 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:identifierCopy options:optionsCopy photoLibrary:firstObject];
  if (v26)
  {
    v27 = v26;
    v50 = replyCopy;
    v51 = identifierCopy;
    v28 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:firstObject];
    v29 = [curationManager optimalDurationForAssetCollection:v27 duration:duration options:optionsCopy curationContext:v28];
    v30 = [objc_alloc(MEMORY[0x277D3B660]) initWithDuration:v29];
    if (v23 && [v23 count] >= 2)
    {
      v31 = [MEMORY[0x277CBEB98] setWithArray:v23];
      v25 = [curationManager curatedAssetsForAssetCollection:v27 duration:v29 referencePersonLocalIdentifiers:v31 curationContext:v28 progressBlock:0];
    }

    else
    {
      v32 = [optionsCopy objectForKeyedSubscript:{@"PHPhotosGraphOptionCurationTypeDedupe", spid}];
      bOOLValue = [v32 BOOLValue];

      if (bOOLValue)
      {
        [curationManager dejunkAndDedupeAssetsInAssetCollection:v27 options:optionsCopy curationContext:v28 progressBlock:0];
      }

      else
      {
        [v30 setIncludesAllFaces:1];
        [curationManager curatedAssetsForAssetCollection:v27 options:v30 curationContext:v28 progressBlock:0];
      }
      v25 = ;
    }

    goto LABEL_20;
  }

  array = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
  loggingConnection4 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v61 = identifierCopy;
    _os_log_error_impl(&dword_22FA28000, loggingConnection4, OS_LOG_TYPE_ERROR, "Curated Assets Error: Failed to lookup collectionID:%@", buf, 0xCu);
  }

  replyCopy[2](replyCopy, 0, array);
LABEL_35:
}

- (void)requestCuratedAssetForAssetCollectionWithLocalIdentifier:(id)identifier referenceAssetLocalIdentifier:(id)localIdentifier options:(id)options context:(id)context reply:(id)reply
{
  v86 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  localIdentifierCopy = localIdentifier;
  optionsCopy = options;
  replyCopy = reply;
  loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v16 = os_signpost_id_generate(loggingConnection);
  info = 0;
  mach_timebase_info(&info);
  v17 = loggingConnection;
  v18 = v17;
  v71 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CuratedKeyAssetRequest", "", buf, 2u);
  }

  spid = v16;

  v70 = mach_absolute_time();
  loggingConnection2 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    allKeys = [optionsCopy allKeys];
    v21 = [allKeys componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v81 = identifierCopy;
    v82 = 2112;
    v83 = *&localIdentifierCopy;
    v84 = 2112;
    v85 = v21;
    _os_log_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_INFO, "Curated Key Asset Request: collectionID:%@ referenceAssetID:%@ options:%@", buf, 0x20u);
  }

  v73 = v18;

  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v23 = [optionsCopy objectForKeyedSubscript:@"PHPhotosGraphOptionPersonLocalIdentifiersToFocus"];
  v74 = photoLibrary;
  v72 = v23;
  if ([v23 count] != 1)
  {
    photoLibrary2 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    librarySpecificFetchOptions2 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:identifierCopy options:optionsCopy photoLibrary:photoLibrary2];

    if (!librarySpecificFetchOptions2)
    {
      firstObject4 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
      loggingConnection3 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      v47 = v18;
      if (!os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
LABEL_46:

        replyCopy[2](replyCopy, 0, firstObject4);
        goto LABEL_47;
      }

      *buf = 138412290;
      v81 = identifierCopy;
      v48 = "Curated Key Asset Error: Failed to lookup collectionID:%@";
      v49 = loggingConnection3;
      v50 = 12;
LABEL_49:
      _os_log_error_impl(&dword_22FA28000, v49, OS_LOG_TYPE_ERROR, v48, buf, v50);
      goto LABEL_46;
    }

    if (localIdentifierCopy)
    {
      v66 = optionsCopy;
      v38 = MEMORY[0x277CD97A8];
      v76 = localIdentifierCopy;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
      v40 = v74;
      librarySpecificFetchOptions = [v74 librarySpecificFetchOptions];
      v42 = [v38 fetchAssetsWithLocalIdentifiers:v39 options:librarySpecificFetchOptions];
      firstObject = [v42 firstObject];

      if (!firstObject)
      {
        loggingConnection4 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v81 = localIdentifierCopy;
          _os_log_error_impl(&dword_22FA28000, loggingConnection4, OS_LOG_TYPE_ERROR, "Curated Key Asset Error: Failed to lookup referenceAssetID:%@", buf, 0xCu);
        }
      }

      loggingConnection5 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      optionsCopy = v66;
      if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v81 = identifierCopy;
        v82 = 2112;
        v83 = *&firstObject;
        _os_log_impl(&dword_22FA28000, loggingConnection5, OS_LOG_TYPE_INFO, "Curated Key Asset Request: referenceAssetID:%@ is referenceAsset:%@", buf, 0x16u);
      }
    }

    else
    {
      firstObject = 0;
      v40 = v74;
    }

    v51 = [optionsCopy objectForKeyedSubscript:@"PHPhotosGraphOptionPersonLocalIdentifiersToFocus"];
    firstObject3 = v51;
    v67 = identifierCopy;
    v69 = localIdentifierCopy;
    v64 = firstObject;
    if (v51 && [v51 count])
    {
      librarySpecificFetchOptions3 = objc_alloc_init(MEMORY[0x277D3BA18]);
      v52 = [MEMORY[0x277CBEB98] setWithArray:firstObject3];
      [librarySpecificFetchOptions3 setReferencePersonLocalIdentifiers:v52];

      [librarySpecificFetchOptions3 setFocusOnPeople:1];
      [librarySpecificFetchOptions3 setComplete:1];
    }

    else
    {
      if (firstObject)
      {
        v53 = [objc_alloc(MEMORY[0x277D3BA18]) initWithReferenceAsset:firstObject];
      }

      else
      {
        v53 = objc_alloc_init(MEMORY[0x277D3BA18]);
      }

      librarySpecificFetchOptions3 = v53;
    }

    [librarySpecificFetchOptions3 setAllowContextualTrip:0];
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v34 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v40];
    if ([graphManager isReady])
    {
      firstObject4 = [graphManager curatedKeyAssetForAssetCollection:librarySpecificFetchOptions2 curatedAssetCollection:0 options:librarySpecificFetchOptions3 curationContext:v34];
    }

    else
    {
      [graphManager curationManager];
      v54 = replyCopy;
      v56 = v55 = optionsCopy;
      firstObject4 = [v56 curatedKeyAssetForAssetCollection:librarySpecificFetchOptions2 curatedAssetCollection:0 options:librarySpecificFetchOptions3 criteria:0 curationContext:v34];

      optionsCopy = v55;
      replyCopy = v54;
    }

    goto LABEL_34;
  }

  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_2844CCA80];
  v25 = [MEMORY[0x277CD9938] fetchPersonsWithLocalIdentifiers:v23 options:librarySpecificFetchOptions2];
  firstObject2 = [v25 firstObject];

  if (!firstObject2)
  {
    firstObject4 = 0;
    goto LABEL_36;
  }

  v65 = optionsCopy;
  v69 = localIdentifierCopy;
  librarySpecificFetchOptions3 = [photoLibrary librarySpecificFetchOptions];
  v79 = *MEMORY[0x277CD9BD0];
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  [librarySpecificFetchOptions3 setFetchPropertySets:v28];

  [librarySpecificFetchOptions3 setIncludedDetectionTypes:&unk_2844CCA80];
  v29 = [MEMORY[0x277CD9868] fetchKeyFaceForPerson:firstObject2 options:librarySpecificFetchOptions3];
  firstObject3 = [v29 firstObject];

  if (firstObject3)
  {
    v64 = firstObject2;
    v67 = identifierCopy;
    graphManager = [photoLibrary librarySpecificFetchOptions];
    v78 = *MEMORY[0x277CD9AA8];
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    [graphManager setFetchPropertySets:v32];

    v33 = MEMORY[0x277CD97A8];
    v77 = firstObject3;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    v35 = [v33 fetchAssetsForFaces:v34 options:graphManager];
    firstObject4 = [v35 firstObject];

    optionsCopy = v65;
LABEL_34:

    identifierCopy = v67;
    firstObject2 = v64;
    goto LABEL_35;
  }

  firstObject4 = 0;
LABEL_35:

  localIdentifierCopy = v69;
LABEL_36:

  if (!firstObject4)
  {
    firstObject4 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9];
    loggingConnection3 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    v47 = v73;
    if (!os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v48 = "Curated Key Asset Error: Failed to process curated key asset";
    v49 = loggingConnection3;
    v50 = 2;
    goto LABEL_49;
  }

  v57 = [(PHAStorytellingClientRequestHandler *)self informationDictionaryForAsset:firstObject4];
  v58 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v47 = v73;
  v61 = v73;
  v62 = v61;
  if (v71 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v62, OS_SIGNPOST_INTERVAL_END, spid, "CuratedKeyAssetRequest", "", buf, 2u);
  }

  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v81 = "CuratedKeyAssetRequest";
    v82 = 2048;
    v83 = ((((v58 - v70) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v62, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  loggingConnection6 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v81 = firstObject4;
    _os_log_impl(&dword_22FA28000, loggingConnection6, OS_LOG_TYPE_INFO, "Curated Key Asset Reply: curatedKeyAsset:%@", buf, 0xCu);
  }

  (replyCopy)[2](replyCopy, v57, 0);
LABEL_47:
}

- (id)informationDictionaryForAsset:(id)asset
{
  v3 = MEMORY[0x277CBEB38];
  assetCopy = asset;
  dictionary = [v3 dictionary];
  localIdentifier = [assetCopy localIdentifier];

  [dictionary setObject:localIdentifier forKeyedSubscript:@"PHRelatedAssetIdentifierKey"];

  return dictionary;
}

- (void)requestUpNextMemoriesWithOptions:(id)options context:(id)context reply:(id)reply
{
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v20 = 0;
  v12 = [graphManager isReadyWithError:&v20];
  v13 = v20;
  if (v12)
  {
    objc_initWeak(&location, self);
    musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__PHAStorytellingClientRequestHandler_UpNext__requestUpNextMemoriesWithOptions_context_reply___block_invoke;
    block[3] = &unk_2788B1810;
    objc_copyWeak(&v18, &location);
    v16 = optionsCopy;
    v17 = replyCopy;
    dispatch_async(musicRequestQueue, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v13);
  }
}

void __94__PHAStorytellingClientRequestHandler_UpNext__requestUpNextMemoriesWithOptions_context_reply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v14 = 0;
    v4 = [MEMORY[0x277D3BC30] requestWithDictionaryRepresentation:v3 error:&v14];
    v5 = v14;
    if (!v4)
    {
      (*(*(a1 + 40) + 16))();
    }

    v6 = [objc_alloc(MEMORY[0x277D3BAC0]) initForUpNextMemoryRequestWithOptionsDictionary:*(a1 + 32)];
    v7 = [WeakRetained graphManager];
    v8 = [v7 workingContextForUpNext];
    v13 = v5;
    v9 = [v4 fetchMemoryLocalIdentifiersWithWorkingContext:v8 musicCurationOptions:v6 error:&v13];
    v10 = v13;

    if (v10)
    {
      v11 = [WeakRetained loggingConnection];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v10;
        _os_log_error_impl(&dword_22FA28000, v11, OS_LOG_TYPE_ERROR, "Up Next Memories Generation Error:%{public}@", buf, 0xCu);
      }
    }

    v12 = [v9 dictionaryRepresentation];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_defaultImageCreationOptions
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD3678];
  v5[0] = *MEMORY[0x277CD3670];
  v5[1] = v2;
  v6[0] = MEMORY[0x277CBEC38];
  v6[1] = MEMORY[0x277CBEC28];
  v5[2] = *MEMORY[0x277CD3648];
  v6[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

- (id)_pvFaceFromPHFace:(id)face copyPropertiesOption:(int64_t)option
{
  v15 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  v7 = [PVFace alloc];
  localIdentifier = [faceCopy localIdentifier];
  v9 = [(PVObject *)v7 initWithLocalIdentifier:localIdentifier];

  if (option)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = option;
      _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "pvFaceFromPHFace option not supported: %d", v14, 8u);
    }
  }

  else
  {
    personLocalIdentifier = [faceCopy personLocalIdentifier];
    [(PVFace *)v9 setPersonLocalIdentifier:personLocalIdentifier];

    -[PVFace setSourceWidth:](v9, "setSourceWidth:", [faceCopy sourceWidth]);
    -[PVFace setSourceHeight:](v9, "setSourceHeight:", [faceCopy sourceHeight]);
    [faceCopy centerX];
    [(PVFace *)v9 setCenterX:?];
    [faceCopy centerY];
    [(PVFace *)v9 setCenterY:?];
    [faceCopy size];
    [(PVFace *)v9 setSize:?];
    -[PVFace setHasSmile:](v9, "setHasSmile:", [faceCopy hasSmile]);
    [faceCopy blurScore];
    [(PVFace *)v9 setBlurScore:?];
    -[PVFace setIsLeftEyeClosed:](v9, "setIsLeftEyeClosed:", [faceCopy isLeftEyeClosed]);
    -[PVFace setIsRightEyeClosed:](v9, "setIsRightEyeClosed:", [faceCopy isRightEyeClosed]);
    [faceCopy poseYaw];
    [(PVFace *)v9 setPoseYaw:?];
    -[PVFace setFaceAlgorithmVersion:](v9, "setFaceAlgorithmVersion:", [faceCopy faceAlgorithmVersion]);
    -[PVFace setQualityMeasure:](v9, "setQualityMeasure:", [faceCopy qualityMeasure]);
    -[PVFace setHidden:](v9, "setHidden:", [faceCopy isHidden]);
    -[PVFace setIsInTrash:](v9, "setIsInTrash:", [faceCopy isInTrash]);
    -[PVFace setManual:](v9, "setManual:", [faceCopy manual]);
    adjustmentVersion = [faceCopy adjustmentVersion];
    [(PVFace *)v9 setAdjustmentVersion:adjustmentVersion];

    -[PVFace setNameSource:](v9, "setNameSource:", [faceCopy nameSource]);
    -[PVFace setTrainingType:](v9, "setTrainingType:", [faceCopy trainingType]);
    -[PVFace setClusterSequenceNumber:](v9, "setClusterSequenceNumber:", [faceCopy clusterSequenceNumber]);
  }

  return v9;
}

- (id)_generateFaceCropForFaceCropSourceDescriptors:(id)descriptors
{
  v27 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  if ([descriptorsCopy count])
  {
    v5 = objc_alloc_init(PVCanceler);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1194;
    v23 = __Block_byref_object_dispose__1195;
    v24 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __91__PHAStorytellingClientRequestHandler_Face___generateFaceCropForFaceCropSourceDescriptors___block_invoke;
    v16 = &unk_2788B1960;
    v18 = &v19;
    v6 = v5;
    v17 = v6;
    v7 = [PVFaceCropGenerator generateFaceCropsFromSourceDescriptors:descriptorsCopy withProgressBlock:0 failureBlock:&v13 canceler:v6];
    v8 = v7;
    if (v20[5])
    {
      v9 = [(PHAStorytellingClientRequestHandler *)self loggingConnection:v13];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = v20[5];
        *buf = 138412290;
        v26 = v12;
        _os_log_error_impl(&dword_22FA28000, v9, OS_LOG_TYPE_ERROR, "Error generating facecrop: %@", buf, 0xCu);
      }

      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __91__PHAStorytellingClientRequestHandler_Face___generateFaceCropForFaceCropSourceDescriptors___block_invoke(uint64_t a1, int a2, int a3, int a4, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v7 = obj;
  [*(a1 + 32) setCanceled:1];
}

- (id)_pvImageForAsset:(id)asset targetSize:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  v9 = objc_alloc_init(MEMORY[0x277CD98A0]);
  [v9 setNetworkAccessAllowed:1];
  [v9 setSynchronous:1];
  [v9 setLoadingMode:0x10000];
  [v9 setResizeMode:1];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1194;
  v21 = __Block_byref_object_dispose__1195;
  v22 = 0;
  defaultManager = [MEMORY[0x277CD9898] defaultManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__PHAStorytellingClientRequestHandler_Face___pvImageForAsset_targetSize_error___block_invoke;
  v14[3] = &unk_2788B1938;
  v16 = &v17;
  v14[4] = self;
  v11 = assetCopy;
  v15 = v11;
  [defaultManager requestNewCGImageForAsset:v11 targetSize:0 contentMode:v9 options:v14 resultHandler:{width, height}];

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

void __79__PHAStorytellingClientRequestHandler_Face___pvImageForAsset_targetSize_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD9C00]];
  if (v4)
  {
    v11 = *MEMORY[0x277CBF3A8];
    PLGetOrientationAndUntransformedSizeFromImageURL();
    v5 = [*(a1 + 32) _defaultImageCreationOptions];
    v6 = [*(a1 + 40) adjustmentVersion];
    v7 = [*(a1 + 40) creationDate];
    v8 = [PVImage imageWithURL:v4 assetWidth:*&v11 assetHeight:*(&v11 + 1) imageCreationOptions:v5 adjustmentVersion:v6 creationDate:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)requestOnDemandFaceCropsForFaceLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  v83 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  contextCopy = context;
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v12 = photoLibrary;
  if (!photoLibrary)
  {
    v51 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:13];
    replyCopy[2](replyCopy, 0, v51);

    goto LABEL_49;
  }

  v54 = photoLibrary;
  v55 = replyCopy;
  v56 = contextCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  photoLibrary2 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeTrashedAssets:1];
  v67 = librarySpecificFetchOptions;
  [librarySpecificFetchOptions setIncludeHiddenAssets:1];
  photoLibrary3 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions2 = [photoLibrary3 librarySpecificFetchOptions];

  v57 = identifiersCopy;
  v17 = [MEMORY[0x277CD9868] fetchFacesWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions2];
  v53 = librarySpecificFetchOptions2;
  v18 = [MEMORY[0x277CD9870] fetchFaceCropByFaceLocalIdentifierForFaces:v17 fetchOptions:librarySpecificFetchOptions2];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v19 = v17;
  v70 = [v19 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (!v70)
  {
    goto LABEL_47;
  }

  v21 = *v73;
  *&v20 = 138412546;
  v52 = v20;
  selfCopy = self;
  v65 = v19;
  v66 = v18;
  v64 = *v73;
  do
  {
    v22 = 0;
    do
    {
      if (*v73 != v21)
      {
        objc_enumerationMutation(v19);
      }

      v23 = *(*(&v72 + 1) + 8 * v22);
      v24 = objc_autoreleasePoolPush();
      localIdentifier = [v23 localIdentifier];
      v26 = [v18 objectForKeyedSubscript:localIdentifier];

      if (v26)
      {
        resourceData = [v26 resourceData];
        if (resourceData)
        {
          v28 = resourceData;
          uuid = [v26 uuid];
          [dictionary setObject:v28 forKeyedSubscript:uuid];
          goto LABEL_42;
        }

        uuid = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
        if (os_log_type_enabled(uuid, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v77 = v23;
          v46 = uuid;
          v47 = "Error persisted facecrop is nil for PHFace: %@";
          goto LABEL_45;
        }

        goto LABEL_23;
      }

      v30 = [(PHAStorytellingClientRequestHandler *)self _pvFaceFromPHFace:v23 copyPropertiesOption:0];
      if (!v30)
      {
        uuid = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
        if (os_log_type_enabled(uuid, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v77 = v23;
          v46 = uuid;
          v47 = "Error getting PVFace from PHFace: %@";
LABEL_45:
          _os_log_error_impl(&dword_22FA28000, v46, OS_LOG_TYPE_ERROR, v47, buf, 0xCu);
        }

LABEL_23:
        v28 = 0;
        goto LABEL_42;
      }

      v28 = v30;
      v31 = MEMORY[0x277CD97A8];
      v81 = v23;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
      uuid = [v31 fetchAssetsForFaces:v32 options:v67];

      if ([uuid count])
      {
        firstObject = [uuid firstObject];
        pixelWidth = [firstObject pixelWidth];
        pixelHeight = [firstObject pixelHeight];
        if (pixelWidth <= pixelHeight)
        {
          pixelWidth = pixelHeight;
        }

        [v23 size];
        v37 = 128.0 / v36;
        if (v37 >= pixelWidth)
        {
          v37 = pixelWidth;
        }

        v71 = 0;
        v38 = [(PHAStorytellingClientRequestHandler *)self _pvImageForAsset:firstObject targetSize:&v71 error:v37, v37];
        v68 = v71;
        if (v38)
        {
          v59 = v38;
          v62 = [PVFaceCropSourceDescriptor descriptorForFace:v28 image:v38];
          v80 = v62;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
          [(PHAStorytellingClientRequestHandler *)self _generateFaceCropForFaceCropSourceDescriptors:v39];
          v41 = v40 = self;

          v61 = v41;
          firstObject2 = [v41 firstObject];
          if (firstObject2)
          {
            cloudIdentifier = [firstObject cloudIdentifier];
            v44 = cloudIdentifier;
            if (cloudIdentifier)
            {
              uuid2 = cloudIdentifier;
            }

            else
            {
              uuid2 = [firstObject uuid];
            }

            log = uuid2;
            v38 = v59;

            faceCropData = [firstObject2 faceCropData];
            if (faceCropData)
            {
              [dictionary setObject:faceCropData forKeyedSubscript:log];
            }

            else
            {
              loggingConnection = [(PHAStorytellingClientRequestHandler *)selfCopy loggingConnection];
              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = v52;
                v77 = v23;
                v78 = 2112;
                v79 = firstObject;
                _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "Error generated facecrop is nil for PHFace: %@, PHAsset: %@", buf, 0x16u);
              }
            }

            self = selfCopy;
            loggingConnection2 = v62;
          }

          else
          {
            log = [(PHAStorytellingClientRequestHandler *)v40 loggingConnection];
            self = v40;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v77 = firstObject;
              _os_log_error_impl(&dword_22FA28000, log, OS_LOG_TYPE_ERROR, "Error getting PVFaceCrop from PHAsset: %@", buf, 0xCu);
            }

            loggingConnection2 = v62;
            v38 = v59;
          }
        }

        else
        {
          loggingConnection2 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v77 = firstObject;
            _os_log_error_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_ERROR, "Error getting PVImage from PHAsset: %@", buf, 0xCu);
          }
        }

        v18 = v66;
      }

      else
      {
        firstObject = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v77 = v23;
          _os_log_error_impl(&dword_22FA28000, firstObject, OS_LOG_TYPE_ERROR, "No corresponding asset for PHFace: %@", buf, 0xCu);
        }

        v18 = v66;
      }

      v19 = v65;

      v21 = v64;
LABEL_42:

      objc_autoreleasePoolPop(v24);
      ++v22;
    }

    while (v70 != v22);
    v50 = [v19 countByEnumeratingWithState:&v72 objects:v82 count:16];
    v70 = v50;
  }

  while (v50);
LABEL_47:

  replyCopy = v55;
  (v55)[2](v55, dictionary, 0);

  contextCopy = v56;
  identifiersCopy = v57;
  v12 = v54;
LABEL_49:
}

- (void)_cacheAllSongSourcesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__1640;
  v22[4] = __Block_byref_object_dispose__1641;
  v23 = @"MusicForTopic";
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke;
  v21[3] = &unk_2788B1CB0;
  v21[4] = self;
  v21[5] = v24;
  v21[6] = v22;
  v21[7] = 0x4018000000000000;
  v5 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:v21];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v7 = MEMORY[0x277D3BAE8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_238;
  v11[3] = &unk_2788B1D00;
  v16 = v19;
  v8 = array;
  v17 = v24;
  v18 = v22;
  v12 = v8;
  selfCopy = self;
  v9 = v5;
  v14 = v9;
  v10 = handlerCopy;
  v15 = v10;
  [v7 prefetchCuratedSongLibraryAssetsWithProgressReporter:v9 completionHandler:v11];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);
}

void __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke(uint64_t a1, double a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 32) loggingConnection];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    v11 = (v4 + a2) / v5;
    _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[MemoriesMusic] Caching music for source (%@): %f", &v8, 0x16u);
  }
}

void __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_238(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v5;
      _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "\nMusicForTopic prefetch failed with error: %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCACA8];
    v8 = [v5 description];
    v9 = [v7 stringWithFormat:@"MusicForTopic prefetch failed (%@)", v8];
    [v6 addObject:v9];
  }

  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + 1.0;
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = @"MusicForArtist";

  v12 = MEMORY[0x277D3BAC8];
  v13 = [*(a1 + 40) photoLibrary];
  v14 = [*(a1 + 40) graphManager];
  v15 = *(a1 + 48);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_245;
  v22[3] = &unk_2788B1D00;
  v25 = *(a1 + 64);
  v16 = *(a1 + 32);
  v26 = *(a1 + 72);
  *&v17 = v16;
  *(&v17 + 1) = *(a1 + 40);
  v21 = v17;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *&v20 = v18;
  *(&v20 + 1) = v19;
  v23 = v21;
  v24 = v20;
  [v12 cacheMusicForMomentsInPhotoLibrary:v13 graphManager:v14 progressReporter:v15 completionHandler:v22];
}

void __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_245(uint64_t a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "\nMusicForArtist caching failed with error: %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCACA8];
    v8 = [v5 description];
    v9 = [v7 stringWithFormat:@"MusicForArtist caching failed (%@)", v8];
    [v6 addObject:v9];
  }

  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + 1.0;
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = @"MusicForMoment";

  v12 = MEMORY[0x277D3BAD0];
  v13 = [*(a1 + 40) photoLibrary];
  v14 = *(a1 + 48);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_252;
  v21[3] = &unk_2788B1D00;
  v24 = *(a1 + 64);
  v15 = *(a1 + 32);
  v25 = *(a1 + 72);
  *&v16 = v15;
  *(&v16 + 1) = *(a1 + 40);
  v20 = v16;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v22 = v20;
  v23 = v19;
  [v12 cacheMusicForMomentsInPhotoLibrary:v13 progressReporter:v14 completionHandler:v21];
}

void __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_252(uint64_t a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "\nMusicForMoment caching failed with error: %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCACA8];
    v8 = [v5 description];
    v9 = [v7 stringWithFormat:@"MusicForMoment caching failed (%@)", v8];
    [v6 addObject:v9];
  }

  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + 1.0;
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = @"MusicForYou";

  v12 = MEMORY[0x277D3BAF0];
  v13 = [*(a1 + 40) photoLibrary];
  v14 = *(a1 + 48);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_259;
  v21[3] = &unk_2788B1D00;
  v24 = *(a1 + 64);
  v15 = *(a1 + 32);
  v25 = *(a1 + 72);
  *&v16 = v15;
  *(&v16 + 1) = *(a1 + 40);
  v20 = v16;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v22 = v20;
  v23 = v19;
  [v12 cacheMusicForMomentsInPhotoLibrary:v13 progressReporter:v14 completionHandler:v21];
}

void __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_259(uint64_t a1, char a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "\nMusicForYou caching failed with error: %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCACA8];
    v8 = [v5 description];
    v9 = [v7 stringWithFormat:@"MusicForYou caching failed (%@)", v8];
    [v6 addObject:v9];
  }

  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + 1.0;
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = @"MusicForTimeBackfill";

  v12 = MEMORY[0x277D3BAD8];
  v13 = [*(a1 + 40) photoLibrary];
  v14 = *(a1 + 48);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_266;
  v19[3] = &unk_2788B1D00;
  v22 = *(a1 + 64);
  *&v15 = *(a1 + 32);
  *(&v15 + 1) = *(a1 + 40);
  v18 = v15;
  v16 = *(a1 + 56);
  v23 = *(a1 + 72);
  *&v17 = *(a1 + 48);
  *(&v17 + 1) = v16;
  v20 = v18;
  v21 = v17;
  [v12 cacheMusicForMomentsInPhotoLibrary:v13 progressReporter:v14 completionHandler:v19];
}

void __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_266(uint64_t a1, char a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + 1.0;
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = @"MusicForTimeFrontfill";

    v8 = MEMORY[0x277D3BAE0];
    v9 = [*(a1 + 40) photoLibrary];
    v10 = *(a1 + 48);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_273;
    v22[3] = &unk_2788B1CD8;
    v11 = *(a1 + 64);
    *&v12 = *(a1 + 32);
    *(&v12 + 1) = *(a1 + 40);
    v21 = v12;
    *&v13 = *(a1 + 56);
    *(&v13 + 1) = v11;
    v23 = v21;
    v24 = v13;
    [v8 cacheMusicForMomentsInPhotoLibrary:v9 progressReporter:v10 completionHandler:v22];

    v14 = v23;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "\nMusicForTimeBackfill caching failed with error: %@", buf, 0xCu);
    }

    v15 = v5;
    v14 = v15;
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v16 = *(a1 + 32);
      v17 = MEMORY[0x277CCACA8];
      v18 = [v15 description];
      v19 = [v17 stringWithFormat:@"MusicForTimeBackfill caching failed (%@)", v18];
      [v16 addObject:v19];

      v20 = [objc_opt_class() _aggregateErrorWithErrorDescriptions:*(a1 + 32)];

      v14 = v20;
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_273(void *a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "\nMusicForTimeFrontfill caching failed with error: %@", buf, 0xCu);
    }

    *(*(a1[7] + 8) + 24) = 1;
    v6 = a1[4];
    v7 = MEMORY[0x277CCACA8];
    v8 = [v5 description];
    v9 = [v7 stringWithFormat:@"MusicForTimeFrontfill caching failed (%@)", v8];
    [v6 addObject:v9];
  }

  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v10 = [objc_opt_class() _aggregateErrorWithErrorDescriptions:a1[4]];
  }

  else
  {
    v10 = 0;
  }

  (*(a1[6] + 16))();
}

- (void)requestMaestroSongsWithOptions:(id)options context:(id)context reply:(id)reply
{
  location[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v24 = 0;
  v12 = [graphManager isReadyWithError:&v24];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[MemoriesMusic] requestMaestroSongsWithOptions requested when graph not ready. Request will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__PHAStorytellingClientRequestHandler_Music__requestMaestroSongsWithOptions_context_reply___block_invoke;
  block[3] = &unk_2788B1C88;
  objc_copyWeak(&v23, location);
  v21 = graphManager;
  v22 = replyCopy;
  v20 = optionsCopy;
  v16 = graphManager;
  v17 = optionsCopy;
  v18 = replyCopy;
  dispatch_async(musicRequestQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

void __91__PHAStorytellingClientRequestHandler_Music__requestMaestroSongsWithOptions_context_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [MEMORY[0x277D3BB08] requestMaestroSongsWithOptions:*(a1 + 32) graphManager:*(a1 + 40) reply:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v2 + 16))(v2, 0, v3);
  }
}

- (void)requestRecentlyUsedSongsWithOptions:(id)options context:(id)context reply:(id)reply
{
  location[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v24 = 0;
  v12 = [graphManager isReadyWithError:&v24];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[MemoriesMusic] requestRecentlyUsedSongsWithOptions requested when graph not ready. Request will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__PHAStorytellingClientRequestHandler_Music__requestRecentlyUsedSongsWithOptions_context_reply___block_invoke;
  block[3] = &unk_2788B1C88;
  objc_copyWeak(&v23, location);
  v21 = graphManager;
  v22 = replyCopy;
  v20 = optionsCopy;
  v16 = graphManager;
  v17 = optionsCopy;
  v18 = replyCopy;
  dispatch_async(musicRequestQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

void __96__PHAStorytellingClientRequestHandler_Music__requestRecentlyUsedSongsWithOptions_context_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [MEMORY[0x277D3BB08] requestRecentlyUsedSongsWithOptions:*(a1 + 32) graphManager:*(a1 + 40) reply:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v2 + 16))(v2, 0, v3);
  }
}

- (void)requestFlexMusicCurationWithOptions:(id)options context:(id)context reply:(id)reply
{
  location[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v24 = 0;
  v12 = [graphManager isReadyWithError:&v24];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Flex Music Curation with options requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationWithOptions_context_reply___block_invoke;
  block[3] = &unk_2788B1C88;
  objc_copyWeak(&v23, location);
  v21 = graphManager;
  v22 = replyCopy;
  v20 = optionsCopy;
  v16 = graphManager;
  v17 = optionsCopy;
  v18 = replyCopy;
  dispatch_async(musicRequestQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

void __96__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationWithOptions_context_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D3BAC0]);
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = MEMORY[0x277CBEC10];
    }

    v4 = [v2 initWithOptionsDictionary:v3];
    [MEMORY[0x277D3BB08] requestFlexMusicCurationWithCurationOptions:v4 graphManager:*(a1 + 40) reply:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v5 + 16))(v5, 0, v4);
  }
}

- (void)requestMusicCurationWithOptions:(id)options context:(id)context reply:(id)reply
{
  location[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v24 = 0;
  v12 = [graphManager isReadyWithError:&v24];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Apple Music Curation with options requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__PHAStorytellingClientRequestHandler_Music__requestMusicCurationWithOptions_context_reply___block_invoke;
  block[3] = &unk_2788B1C88;
  objc_copyWeak(&v23, location);
  v21 = graphManager;
  v22 = replyCopy;
  v20 = optionsCopy;
  v16 = graphManager;
  v17 = optionsCopy;
  v18 = replyCopy;
  dispatch_async(musicRequestQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

void __92__PHAStorytellingClientRequestHandler_Music__requestMusicCurationWithOptions_context_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D3BAC0]);
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = MEMORY[0x277CBEC10];
    }

    v4 = [v2 initWithOptionsDictionary:v3];
    [MEMORY[0x277D3BB08] requestMusicCurationWithCurationOptions:v4 graphManager:*(a1 + 40) reply:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v5 + 16))(v5, 0, v4);
  }
}

- (void)requestCacheSongSourceWithOptions:(id)options context:(id)context reply:(id)reply
{
  replyCopy = reply;
  v8 = [options objectForKeyedSubscript:*MEMORY[0x277D3B048]];
  v9 = MEMORY[0x277D22C80];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__PHAStorytellingClientRequestHandler_Music__requestCacheSongSourceWithOptions_context_reply___block_invoke;
  v22[3] = &unk_2788B1C38;
  v22[4] = self;
  v10 = v8;
  v23 = v10;
  v11 = [v9 progressReporterWithProgressBlock:v22];
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  if (![v10 isEqualToString:*MEMORY[0x277D3B018]])
  {
    if ([v10 isEqualToString:*MEMORY[0x277D3B038]])
    {
      [MEMORY[0x277D3BAE8] prefetchCuratedSongLibraryAssetsWithProgressReporter:v11 completionHandler:replyCopy];
      goto LABEL_13;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D3B020]])
    {
      v13 = MEMORY[0x277D3BAC8];
      graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
      [v13 cacheMusicForMomentsInPhotoLibrary:photoLibrary graphManager:graphManager progressReporter:v11 completionHandler:replyCopy];
LABEL_7:

      goto LABEL_13;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D3B028]])
    {
      v15 = MEMORY[0x277D3BAD0];
    }

    else
    {
      if (![v10 isEqualToString:*MEMORY[0x277D3B040]])
      {
        if ([v10 isEqualToString:*MEMORY[0x277D3B030]])
        {
          v16 = MEMORY[0x277D3BAD8];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __94__PHAStorytellingClientRequestHandler_Music__requestCacheSongSourceWithOptions_context_reply___block_invoke_228;
          v18[3] = &unk_2788B1C60;
          v21 = replyCopy;
          v19 = photoLibrary;
          v20 = v11;
          [v16 cacheMusicForMomentsInPhotoLibrary:v19 progressReporter:v20 completionHandler:v18];

          goto LABEL_13;
        }

        graphManager = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown song source type: %@", v10];
        v17 = [MEMORY[0x277D3B698] errorWithCode:0 description:graphManager];
        (*(replyCopy + 2))(replyCopy, 0, v17);

        goto LABEL_7;
      }

      v15 = MEMORY[0x277D3BAF0];
    }

    [v15 cacheMusicForMomentsInPhotoLibrary:photoLibrary progressReporter:v11 completionHandler:replyCopy];
    goto LABEL_13;
  }

  [(PHAStorytellingClientRequestHandler *)self _cacheAllSongSourcesWithCompletionHandler:replyCopy];
LABEL_13:
}

void __94__PHAStorytellingClientRequestHandler_Music__requestCacheSongSourceWithOptions_context_reply___block_invoke(uint64_t a1, double a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) loggingConnection];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_22FA28000, v4, OS_LOG_TYPE_INFO, "[MemoriesMusic] Caching music for source (%@): %f", &v6, 0x16u);
  }
}

uint64_t __94__PHAStorytellingClientRequestHandler_Music__requestCacheSongSourceWithOptions_context_reply___block_invoke_228(void *a1, char a2)
{
  if (a2)
  {
    return [MEMORY[0x277D3BAE0] cacheMusicForMomentsInPhotoLibrary:a1[4] progressReporter:a1[5] completionHandler:a1[6]];
  }

  else
  {
    return (*(a1[6] + 16))();
  }
}

- (void)requestMusicCatalogAdamIDsForPurchasedSongID:(id)d options:(id)options context:(id)context reply:(id)reply
{
  dCopy = d;
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__PHAStorytellingClientRequestHandler_Music__requestMusicCatalogAdamIDsForPurchasedSongID_options_context_reply___block_invoke;
  v29[3] = &unk_2788B2258;
  v29[4] = self;
  v14 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:v29];
  v15 = [objc_alloc(MEMORY[0x277D3BAB8]) initWithRequestOptionsDictionary:optionsCopy inflationActionSource:2];
  objc_initWeak(&location, self);
  musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __113__PHAStorytellingClientRequestHandler_Music__requestMusicCatalogAdamIDsForPurchasedSongID_options_context_reply___block_invoke_220;
  v21[3] = &unk_2788B1BE8;
  objc_copyWeak(&v27, &location);
  v25 = v14;
  v26 = replyCopy;
  v22 = v15;
  selfCopy = self;
  v24 = dCopy;
  v17 = v14;
  v18 = dCopy;
  v19 = v15;
  v20 = replyCopy;
  dispatch_async(musicRequestQueue, v21);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __113__PHAStorytellingClientRequestHandler_Music__requestMusicCatalogAdamIDsForPurchasedSongID_options_context_reply___block_invoke(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) loggingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_22FA28000, v3, OS_LOG_TYPE_INFO, "[MemoriesMusic] Request Songs For Purchased ID Progress: %f", &v4, 0xCu);
  }
}

void __113__PHAStorytellingClientRequestHandler_Music__requestMusicCatalogAdamIDsForPurchasedSongID_options_context_reply___block_invoke_220(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained graphManager];
    v5 = *(a1 + 32);
    v16 = 0;
    v6 = [v4 musicCurationInflationContextWithInflationOptions:v5 error:&v16];
    v7 = v16;

    if (v6)
    {
      v8 = MEMORY[0x277D3BB08];
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __113__PHAStorytellingClientRequestHandler_Music__requestMusicCatalogAdamIDsForPurchasedSongID_options_context_reply___block_invoke_221;
      v14[3] = &unk_2788B1C10;
      v15 = *(a1 + 64);
      [v8 fetchMusicCatalogAdamIDsForPurchasedSongID:v9 inflationContext:v6 progressReporter:v10 completionHandler:v14];
      v11 = v15;
    }

    else
    {
      v13 = [*(a1 + 40) loggingConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v7;
        _os_log_error_impl(&dword_22FA28000, v13, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to create inflation context when requesting adam IDs for purchased ID, error: %{public}@", buf, 0xCu);
      }

      v11 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v7];
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v12 = *(a1 + 64);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v12 + 16))(v12, 0, v7);
  }
}

void __113__PHAStorytellingClientRequestHandler_Music__requestMusicCatalogAdamIDsForPurchasedSongID_options_context_reply___block_invoke_221(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D3B698];
  v6 = a2;
  v7 = [v5 xpcSafeErrorWithError:a3];
  (*(*(a1 + 32) + 16))();
}

- (void)requestClearMusicCacheWithOptions:(id)options context:(id)context reply:(id)reply
{
  v6 = MEMORY[0x277D3BB08];
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = 0;
  [v6 cacheRemoveAllForPhotoLibrary:photoLibrary error:&v11];
  v9 = v11;

  v10 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v9];

  replyCopy[2](replyCopy, v10);
}

- (void)requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v9 = objc_opt_class();
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = [v9 _fetchOptionsForMusicCurationWithPhotoLibrary:photoLibrary];

  v12 = MEMORY[0x277CD97B8];
  v26[0] = identifierCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v11];
  firstObject = [v14 firstObject];

  if (firstObject)
  {
    v16 = MEMORY[0x277D3BB08];
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
    v23 = 0;
    identifierCopy = [v16 generateFlexMusicCurationDebugInformationForAssetCollection:firstObject graphManager:graphManager progressReporter:ignoreProgress error:&v23];
    v20 = v23;

    v21 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v20];

    replyCopy[2](replyCopy, identifierCopy, v21);
  }

  else
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Flex music curation metadata for asset collection requested but no asset collections could be fetched from the specified local identifier: %@", identifierCopy];
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Metadata Request Error: %@", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:identifierCopy];
    replyCopy[2](replyCopy, 0, v21);
  }
}

- (void)requestFlexMusicCurationDebugInformationForSongWithUID:(id)d context:(id)context reply:(id)reply
{
  v7 = MEMORY[0x277D3BB08];
  replyCopy = reply;
  dCopy = d;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
  v15 = 0;
  v12 = [v7 generateFlexMusicCurationDebugInformationForSongWithUID:dCopy graphManager:graphManager progressReporter:ignoreProgress error:&v15];

  v13 = v15;
  v14 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v13];

  replyCopy[2](replyCopy, v12, v14);
}

- (void)requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v9 = objc_opt_class();
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = [v9 _fetchOptionsForMusicCurationWithPhotoLibrary:photoLibrary];

  v12 = MEMORY[0x277CD97B8];
  v26[0] = identifierCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v11];
  firstObject = [v14 firstObject];

  if (firstObject)
  {
    v16 = MEMORY[0x277D3BB08];
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
    v23 = 0;
    identifierCopy = [v16 generateMusicCurationDebugInformationForAssetCollection:firstObject graphManager:graphManager progressReporter:ignoreProgress error:&v23];
    v20 = v23;

    v21 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v20];

    replyCopy[2](replyCopy, identifierCopy, v21);
  }

  else
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Music curation metadata for asset collection requested but no asset collections could be fetched from the specified local identifier: %@", identifierCopy];
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Music Curation Metadata Request Error: %@", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:identifierCopy];
    replyCopy[2](replyCopy, 0, v21);
  }
}

- (void)requestMusicCurationDebugInformationForSongWithAdamID:(id)d context:(id)context reply:(id)reply
{
  v7 = MEMORY[0x277D3BB08];
  replyCopy = reply;
  dCopy = d;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
  v15 = 0;
  v12 = [v7 generateMusicCurationDebugInformationForSongWithAdamID:dCopy graphManager:graphManager progressReporter:ignoreProgress error:&v15];

  v13 = v15;
  v14 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v13];

  replyCopy[2](replyCopy, v12, v14);
}

- (void)requestPrecachingOfAudioDataForAdamIDs:(id)ds context:(id)context reply:(id)reply
{
  v6 = MEMORY[0x277D3BAA0];
  v7 = MEMORY[0x277D22C80];
  replyCopy = reply;
  dsCopy = ds;
  ignoreProgress = [v7 ignoreProgress];
  [v6 cacheSongAudioForAdamIDs:dsCopy progressReporter:ignoreProgress completionHandler:replyCopy];
}

- (void)requestMusicCacheStatusWithContext:(id)context reply:(id)reply
{
  v5 = MEMORY[0x277D3BB08];
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = 0;
  v8 = [v5 cacheStatusWithPhotoLibrary:photoLibrary error:&v11];
  v9 = v11;

  v10 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v9];

  replyCopy[2](replyCopy, v8, v10);
}

- (void)requestSongsForAdamIDs:(id)ds options:(id)options context:(id)context reply:(id)reply
{
  dsCopy = ds;
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke;
  v30[3] = &unk_2788B2258;
  v30[4] = self;
  v14 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:v30];
  v15 = [objc_alloc(MEMORY[0x277D3BAB8]) initWithRequestOptionsDictionary:optionsCopy inflationActionSource:2];
  objc_initWeak(&location, self);
  musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke_209;
  v22[3] = &unk_2788B1BE8;
  objc_copyWeak(&v28, &location);
  v26 = v14;
  v27 = replyCopy;
  v23 = v15;
  v24 = dsCopy;
  v25 = optionsCopy;
  v17 = v14;
  v18 = optionsCopy;
  v19 = dsCopy;
  v20 = v15;
  v21 = replyCopy;
  dispatch_async(musicRequestQueue, v22);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) loggingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_22FA28000, v3, OS_LOG_TYPE_INFO, "[MemoriesMusic] Request Songs For Adam IDs Progress: %f", &v4, 0xCu);
  }
}

void __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke_209(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained graphManager];
    v5 = *(a1 + 32);
    v19 = 0;
    v6 = [v4 musicCurationInflationContextWithInflationOptions:v5 error:&v19];
    v7 = v19;

    if (v6)
    {
      v8 = MEMORY[0x277D3BB08];
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke_211;
      v16[3] = &unk_2788B1BC0;
      objc_copyWeak(&v18, (a1 + 72));
      v17 = *(a1 + 64);
      [v8 fetchSongMetadataJSONForAdamIDs:v9 options:v10 inflationContext:v6 progressReporter:v11 completionHandler:v16];

      objc_destroyWeak(&v18);
    }

    else
    {
      v14 = [v3 loggingConnection];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v7;
        _os_log_error_impl(&dword_22FA28000, v14, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to create inflation context when requesting songs for adamIDs , error: %{public}@", buf, 0xCu);
      }

      v15 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v7];
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v12 + 16))(v12, 0, v13);
  }
}

void __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained musicRequestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke_2;
    block[3] = &unk_2788B1B98;
    v13 = v6;
    v15 = *(a1 + 32);
    v14 = v5;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v10 + 16))(v10, 0, v11);
  }
}

void __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

- (void)requestFlexMusicCurationForAssetLocalIdentifiers:(id)identifiers options:(id)options context:(id)context reply:(id)reply
{
  location[3] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v31 = 0;
  v17 = [graphManager isReadyWithError:&v31];
  v18 = v31;
  if ((v17 & 1) == 0)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v18;
      _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Flex Music curation requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationForAssetLocalIdentifiers_options_context_reply___block_invoke;
  block[3] = &unk_2788B1B70;
  v29 = graphManager;
  v30 = replyCopy;
  block[4] = self;
  v27 = optionsCopy;
  v28 = v15;
  v21 = graphManager;
  v22 = v15;
  v23 = optionsCopy;
  v24 = replyCopy;
  dispatch_async(musicRequestQueue, block);

  objc_destroyWeak(location);
}

void __117__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationForAssetLocalIdentifiers_options_context_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = MEMORY[0x277D3BAC0];
    v4 = v2;
    v5 = [v3 alloc];
    if (a1[5])
    {
      v6 = a1[5];
    }

    else
    {
      v6 = MEMORY[0x277CBEC10];
    }

    v8 = [v5 initWithOptionsDictionary:v6];
    [MEMORY[0x277D3BB08] requestFlexMusicCurationForAssetFetchResult:a1[6] curationOptions:? graphManager:? reply:?];
  }

  else
  {
    v7 = a1[8];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v7 + 16))(v7, 0);
  }
}

- (void)requestFlexMusicCurationForAssetCollectionLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply
{
  v36[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  v14 = objc_opt_class();
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v16 = [v14 _fetchOptionsForMusicCurationWithPhotoLibrary:photoLibrary];

  v17 = MEMORY[0x277CD97B8];
  v36[0] = identifierCopy;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v19 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:v16];
  firstObject = [v19 firstObject];

  if (firstObject)
  {
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v34 = 0;
    v22 = [graphManager isReadyWithError:&v34];
    v23 = v34;
    if ((v22 & 1) == 0)
    {
      loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v23;
        _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Flex Music curation requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
      }
    }

    objc_initWeak(location, self);
    musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __126__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationForAssetCollectionLocalIdentifier_options_context_reply___block_invoke;
    block[3] = &unk_2788B1B48;
    objc_copyWeak(&v33, location);
    v32 = replyCopy;
    v29 = optionsCopy;
    v30 = firstObject;
    v31 = graphManager;
    identifierCopy = graphManager;
    dispatch_async(musicRequestQueue, block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"flex music curation requested but no asset collection could be fetched from the specified local identifier: %@", identifierCopy];
    loggingConnection2 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = identifierCopy;
      _os_log_error_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Error: %@", location, 0xCu);
    }

    v23 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:identifierCopy];
    (*(replyCopy + 2))(replyCopy, 0, v23);
  }
}

void __126__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationForAssetCollectionLocalIdentifier_options_context_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D3BAC0]);
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = MEMORY[0x277CBEC10];
    }

    v4 = [v2 initWithOptionsDictionary:v3];
    [MEMORY[0x277D3BB08] requestFlexMusicCurationForAssetCollection:*(a1 + 40) curationOptions:v4 graphManager:*(a1 + 48) reply:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 56);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v5 + 16))(v5, 0, v4);
  }
}

- (void)requestMusicCurationForAssetLocalIdentifiers:(id)identifiers options:(id)options context:(id)context reply:(id)reply
{
  location[3] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v31 = 0;
  v17 = [graphManager isReadyWithError:&v31];
  v18 = v31;
  if ((v17 & 1) == 0)
  {
    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v18;
      _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Music Curation requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__PHAStorytellingClientRequestHandler_Music__requestMusicCurationForAssetLocalIdentifiers_options_context_reply___block_invoke;
  block[3] = &unk_2788B1B48;
  objc_copyWeak(&v30, location);
  v26 = optionsCopy;
  v27 = v15;
  selfCopy = self;
  v29 = replyCopy;
  v21 = v15;
  v22 = optionsCopy;
  v23 = replyCopy;
  dispatch_async(musicRequestQueue, block);

  objc_destroyWeak(&v30);
  objc_destroyWeak(location);
}

void __113__PHAStorytellingClientRequestHandler_Music__requestMusicCurationForAssetLocalIdentifiers_options_context_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D3BAC0]);
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = MEMORY[0x277CBEC10];
    }

    v4 = [v2 initWithOptionsDictionary:v3];
    v5 = MEMORY[0x277D3BB08];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) graphManager];
    [v5 requestMusicCurationForAssetFetchResult:v6 curationOptions:v4 graphManager:v7 reply:*(a1 + 56)];
  }

  else
  {
    v8 = *(a1 + 56);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v8 + 16))(v8, 0, v4);
  }
}

- (void)requestMusicCurationForAssetCollectionLocalIdentifier:(id)identifier options:(id)options context:(id)context reply:(id)reply
{
  v36[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  v14 = objc_opt_class();
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v16 = [v14 _fetchOptionsForMusicCurationWithPhotoLibrary:photoLibrary];

  v17 = MEMORY[0x277CD97B8];
  v36[0] = identifierCopy;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v19 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:v16];
  firstObject = [v19 firstObject];

  if (firstObject)
  {
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v34 = 0;
    v22 = [graphManager isReadyWithError:&v34];
    v23 = v34;
    if ((v22 & 1) == 0)
    {
      loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v23;
        _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Music Curation requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
      }
    }

    objc_initWeak(location, self);
    musicRequestQueue = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__PHAStorytellingClientRequestHandler_Music__requestMusicCurationForAssetCollectionLocalIdentifier_options_context_reply___block_invoke;
    block[3] = &unk_2788B1B48;
    objc_copyWeak(&v33, location);
    v32 = replyCopy;
    v29 = optionsCopy;
    v30 = firstObject;
    v31 = graphManager;
    identifierCopy = graphManager;
    dispatch_async(musicRequestQueue, block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"music curation requested but no asset collections could be fetched from the specified local identifier: %@", identifierCopy];
    loggingConnection2 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = identifierCopy;
      _os_log_error_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Music Curation Error: %@", location, 0xCu);
    }

    v23 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:identifierCopy];
    (*(replyCopy + 2))(replyCopy, 0, v23);
  }
}

void __122__PHAStorytellingClientRequestHandler_Music__requestMusicCurationForAssetCollectionLocalIdentifier_options_context_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D3BAC0]);
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = MEMORY[0x277CBEC10];
    }

    v4 = [v2 initWithOptionsDictionary:v3];
    [MEMORY[0x277D3BB08] requestMusicCurationForAssetCollection:*(a1 + 40) curationOptions:v4 graphManager:*(a1 + 48) reply:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 56);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.photoanalysis" code:15 userInfo:MEMORY[0x277CBEC10]];
    (*(v5 + 16))(v5, 0, v4);
  }
}

+ (id)_aggregateErrorWithErrorDescriptions:(id)descriptions
{
  v3 = [descriptions componentsJoinedByString:@"\n"];
  v4 = [MEMORY[0x277D3B698] errorWithCode:-1 description:v3];

  return v4;
}

+ (id)_fetchOptionsForMusicCurationWithPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setIncludeStoryMemories:1];

  return librarySpecificFetchOptions;
}

- (void)requestHighlightEstimatesWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v7 = [graphManager isReadyWithError:&v16];
  v8 = v16;
  if (v7)
  {
    workingContext = [graphManager workingContext];
    v10 = [objc_alloc(MEMORY[0x277D3B9D8]) initWithWorkingContext:workingContext];
    v11 = objc_alloc(MEMORY[0x277D3C790]);
    photoLibrary = [graphManager photoLibrary];
    v13 = [v11 initWithPhotoLibrary:photoLibrary];

    v14 = [v10 highlightEstimatesDictionaryWithCurationContext:v13];
    v15 = [v10 highlightEstimatesDescriptionWithCurationContext:v13];
    replyCopy[2](replyCopy, v14, v15, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, 0, v8);
  }
}

- (void)requestHighlightDebugInformationForHighlightWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier == %@", identifierCopy];

  [librarySpecificFetchOptions setPredicate:identifierCopy];
  v11 = [MEMORY[0x277CD9958] fetchHighlightsWithOptions:librarySpecificFetchOptions];
  firstObject = [v11 firstObject];
  if (firstObject)
  {
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v14 = [graphManager highlightDebugInformationWithHighlight:firstObject];

    replyCopy[2](replyCopy, v14, 0);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (replyCopy)[2](replyCopy, 0, v14);
  }
}

- (void)requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress)
  {
    [requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress cancelOperation];
  }

  v9 = [objc_alloc(MEMORY[0x277D22C98]) initWithProgressBlock:&__block_literal_global_3201];
  objc_storeStrong(&requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress, v9);
  objc_sync_exit(selfCopy);

  graphManager = [(PHAStorytellingClientRequestHandler *)selfCopy graphManager];
  v11 = objc_opt_class();
  objc_sync_enter(v11);
  v24 = 0;
  v12 = [PHASharedLibrarySuggestionGenerationTask resetSuggestionsWithGraphManager:graphManager error:&v24];
  v13 = v24;
  if (!v12)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if (!PLIsSharedLibrarySuggestionsEnabled())
  {
    v14 = 1;
    goto LABEL_16;
  }

  v23 = 0;
  v14 = [graphManager isReadyWithError:&v23];
  v15 = v23;
  if (v9 == requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    v17 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
    v14 = 0;
LABEL_14:

    v15 = v17;
    goto LABEL_15;
  }

  if (v14)
  {
    v18 = [[PHASharedLibrarySuggestionGenerationTask alloc] initWithTaskType:0];
    v22 = v15;
    v14 = [(PHASharedLibrarySuggestionGenerationTask *)v18 runWithGraphManager:graphManager progressReporter:v9 error:&v22];
    v21 = v18;
    v17 = v22;

    v15 = v21;
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  objc_sync_exit(v11);

  v19 = selfCopy;
  objc_sync_enter(v19);
  v20 = requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress;
  if (requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress == v9)
  {
    requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress = 0;
  }

  objc_sync_exit(v19);

  replyCopy[2](replyCopy, v14, v13);
}

- (void)requestCameraSmartSharingProcessingForLibraryScopeWithUUID:(id)d withOptions:(id)options context:(id)context reply:(id)reply
{
  v20[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = objc_alloc_init(PHACameraSmartSharingTask);
  if (dCopy)
  {
    v12 = [MEMORY[0x277CD98A8] localIdentifierWithUUID:dCopy];
    [(PHACameraSmartSharingTask *)v11 setLibraryScopeLocalIdentifier:v12];
  }

  ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
  v18 = 0;
  v14 = [(PHACameraSmartSharingTask *)v11 runWithGraphManager:graphManager progressReporter:ignoreProgress error:&v18];
  v15 = v18;

  v19 = @"result";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v20[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  replyCopy[2](replyCopy, v17, v15);
}

- (void)requestStartSharedLibrarySuggestionResultWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v13 = 0;
  v7 = [graphManager isReadyWithError:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v12 = v8;
    v10 = [graphManager suggestsToStartSharedLibraryWithError:&v12];
    v11 = v12;

    replyCopy[2](replyCopy, v10, v11);
    v9 = v11;
  }

  else
  {
    replyCopy[2](replyCopy, 0, v8);
  }
}

- (void)requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)identifiers withOptions:(id)options context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v19 = 0;
  v13 = [graphManager isReadyWithError:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v18 = v14;
    v16 = [graphManager suggestedMomentLocalIdentifiersForPersonLocalIdentifiers:identifiersCopy withOptions:optionsCopy error:&v18];
    v17 = v18;

    replyCopy[2](replyCopy, v16, v17);
    v15 = v17;
  }

  else
  {
    replyCopy[2](replyCopy, 0, v14);
  }
}

- (void)requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)identifier withOptions:(id)options context:(id)context reply:(id)reply
{
  identifierCopy = identifier;
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v19 = 0;
  v13 = [graphManager isReadyWithError:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v18 = v14;
    v16 = [graphManager generateDefaultRulesForLibraryScopeWithLocalIdentifier:identifierCopy withOptions:optionsCopy error:&v18];
    v17 = v18;

    replyCopy[2](replyCopy, v16, v17);
    v15 = v17;
  }

  else
  {
    replyCopy[2](replyCopy, 0, v14);
  }
}

- (void)requestTextFeaturesForMomentLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v13 = 0;
  v10 = [graphManager isReadyWithError:&v13];
  v11 = v13;
  if (v10)
  {
    v12 = [graphManager textFeaturesForMomentLocalIdentifiers:identifiersCopy];
    replyCopy[2](replyCopy, v12, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v15 = 0;
  v10 = [graphManager isReadyWithError:&v15];
  v11 = v15;
  if (v10)
  {
    photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v13 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:identifierCopy options:0 photoLibrary:photoLibrary];

    v14 = [graphManager sharingMessageSuggestionDebugInformationForAssetCollection:v13];
    replyCopy[2](replyCopy, v14, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  v25[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v22 = 0;
  v10 = [graphManager isReadyWithError:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = MEMORY[0x277CD97B8];
    v25[0] = identifierCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v16 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];

    firstObject = [v16 firstObject];
    v18 = firstObject;
    if (firstObject && [firstObject assetCollectionType] == 8)
    {
      identifierCopy = [graphManager sharingSuggestionDebugInformationForSuggestion:v18];
      replyCopy[2](replyCopy, identifierCopy, 0);
    }

    else
    {
      identifierCopy = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"No matching asset collection (PHSuggestion) found for local identifier: %@", identifierCopy];
      v20 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:identifierCopy];
      loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = identifierCopy;
        _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
      }

      (replyCopy)[2](replyCopy, 0, v20);
    }
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID:(id)d options:(id)options context:(id)context reply:(id)reply
{
  dCopy = d;
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v28 = 0;
  v13 = [graphManager isReadyWithError:&v28];
  v14 = v28;
  if (v13)
  {
    v15 = [optionsCopy objectForKey:@"PHPeopleSuggestionClientKey"];
    v16 = v15;
    if (v15)
    {
      unsignedIntegerValue = [v15 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v18 = [MEMORY[0x277D3BBD8] optionsForClient:unsignedIntegerValue];
    v19 = [optionsCopy objectForKey:@"PHSuggestedRecipientsSharingStreamKey"];
    v20 = v19;
    if (v19)
    {
      [v18 setSharingStream:{objc_msgSend(v19, "unsignedIntegerValue")}];
    }

    v21 = objc_opt_new();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __126__PHAStorytellingClientRequestHandler_Sharing__requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID_options_context_reply___block_invoke;
    v24[3] = &unk_2788B2088;
    v25 = graphManager;
    v26 = v18;
    v27 = v21;
    v22 = v21;
    v23 = v18;
    [dCopy enumerateKeysAndObjectsUsingBlock:v24];
    replyCopy[2](replyCopy, v22, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v14);
  }
}

void __126__PHAStorytellingClientRequestHandler_Sharing__requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID_options_context_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v21 = v5;
  v7 = [MEMORY[0x277CD97A8] localIdentifierWithUUID:v5];
  v8 = [MEMORY[0x277CD98F8] localIdentifierWithUUID:v6];
  v9 = *(a1 + 32);
  v28[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v27 = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v12 = [v9 suggestedRecipientsForAssetLocalIdentifiers:v10 momentLocalIdentifiers:v11 sharingOptions:*(a1 + 40)];

  v13 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) dictionaryRepresentation];
        [v13 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  [*(a1 + 48) setObject:v13 forKeyedSubscript:v7];
  objc_autoreleasePoolPop(context);
}

- (int64_t)_titleTupleFormatForPhotoAnalysisTitleFormat:(int64_t)format
{
  if ((format - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return format;
  }
}

- (id)_collectionListForLocalIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    identifierCopy = identifier;
    photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v7 = MEMORY[0x277CD9848];
    v12[0] = identifierCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [v7 fetchCollectionListsWithLocalIdentifiers:v8 options:librarySpecificFetchOptions];

    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)requestTitleForPersonLocalIdentifiers:(id)identifiers format:(int64_t)format context:(id)context reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v21 = 0;
  v12 = [graphManager isReadyWithError:&v21];
  v13 = v21;
  if (v12)
  {
    v20 = v13;
    v14 = [graphManager titleTupleForPersonLocalIdentifiers:identifiersCopy format:-[PHAStorytellingClientRequestHandler _titleTupleFormatForPhotoAnalysisTitleFormat:](self error:{"_titleTupleFormatForPhotoAnalysisTitleFormat:", format), &v20}];
    v15 = v20;

    title = [v14 title];
    stringValue = [title stringValue];
    subtitle = [v14 subtitle];
    stringValue2 = [subtitle stringValue];
    replyCopy[2](replyCopy, stringValue, stringValue2, v15);

    v13 = v15;
  }

  else
  {
    replyCopy[2](replyCopy, 0, 0, v13);
  }
}

- (void)requestTitleForAssetCollectionWithLocalIdentifier:(id)identifier format:(int64_t)format context:(id)context reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v12 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:identifierCopy options:0 photoLibrary:photoLibrary];

  v13 = [(PHAStorytellingClientRequestHandler *)self _titleTupleFormatForPhotoAnalysisTitleFormat:format];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v21 = 0;
  v15 = [graphManager titleTupleForAssetCollection:v12 format:v13 error:&v21];
  v16 = v21;

  title = [v15 title];
  stringValue = [title stringValue];
  subtitle = [v15 subtitle];
  stringValue2 = [subtitle stringValue];
  replyCopy[2](replyCopy, stringValue, stringValue2, v16);
}

- (void)requestTitleForCollectionMomentListWithLocalIdentifier:(id)identifier format:(int64_t)format context:(id)context reply:(id)reply
{
  replyCopy = reply;
  v10 = [(PHAStorytellingClientRequestHandler *)self _collectionListForLocalIdentifier:identifier];
  v11 = [(PHAStorytellingClientRequestHandler *)self _titleTupleFormatForPhotoAnalysisTitleFormat:format];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v19 = 0;
  v13 = [graphManager titleTupleForMomentList:v10 format:v11 error:&v19];
  v14 = v19;

  title = [v13 title];
  stringValue = [title stringValue];
  subtitle = [v13 subtitle];
  stringValue2 = [subtitle stringValue];
  replyCopy[2](replyCopy, stringValue, stringValue2, v14);
}

- (void)reloadAlbumWidgetTimelineWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v9 = 0;
  v7 = [PHAMemoryElectionTask reloadAlbumWidgetTimelineWithLoggingConnection:loggingConnection error:&v9];
  v8 = v9;

  replyCopy[2](replyCopy, v7, v8);
}

- (void)reloadForYouWidgetTimelineWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  if (PLIsFeaturedContentAllowed())
  {
    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    workingContext = [graphManager workingContext];
    photoLibrary = [workingContext photoLibrary];

    loggingConnection = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    [PHAMemoryElectionTask findAndSetFeaturedStateForMemoriesAndSuggestionsIfNeededInPhotoLibrary:photoLibrary loggingConnection:loggingConnection];
  }

  else
  {
    loggingConnection2 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_INFO, "Featured content is disabled when reloading widget", buf, 2u);
    }
  }

  loggingConnection3 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v14 = 0;
  v12 = [PHAMemoryElectionTask reloadForYouWidgetTimelineWithLoggingConnection:loggingConnection3 error:&v14];
  v13 = v14;

  replyCopy[2](replyCopy, v12, v13);
}

- (void)requestCurationOfLength:(unint64_t)length forMemoryForLocalIdentifier:(id)identifier withOptions:(id)options context:(id)context reply:(id)reply
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:1];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  [librarySpecificFetchOptions setIncludeRejectedMemories:1];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setIncludeStoryMemories:1];
  v16 = objc_alloc(MEMORY[0x277D3C790]);
  photoLibrary2 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v18 = [v16 initWithPhotoLibrary:photoLibrary2];

  v19 = MEMORY[0x277CD97B8];
  v28[0] = identifierCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v21 = [v19 fetchAssetCollectionsWithLocalIdentifiers:v20 options:librarySpecificFetchOptions];
  firstObject = [v21 firstObject];

  if (firstObject)
  {
    v23 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CD9C20]];
    [v23 doubleValue];
    v25 = v24;

    graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v27 = [graphManager curationOfLength:length forMemory:firstObject customDuration:1 useAssetEligibility:v18 curationContext:v25];

    replyCopy[2](replyCopy, v27, 0);
  }

  else
  {
    v27 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (replyCopy)[2](replyCopy, 0, v27);
  }
}

- (void)requestMemoryDebugInformationForMemoryWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v32 = 0;
  v10 = [graphManager isReadyWithError:&v32];
  v11 = v32;
  if (v10)
  {
    photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier == %@", identifierCopy];
    [librarySpecificFetchOptions setPredicate:identifierCopy];

    [librarySpecificFetchOptions setIncludePendingMemories:1];
    v15 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
    firstObject = [v15 firstObject];
    if (firstObject)
    {
      v28 = v15;
      v29 = photoLibrary;
      v30 = v11;
      v31 = identifierCopy;
      librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
      v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
      v33[0] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      [librarySpecificFetchOptions2 setSortDescriptors:v19];

      v27 = [MEMORY[0x277CD97B8] fetchMomentsBackingMemory:firstObject options:librarySpecificFetchOptions2];
      fetchedObjects = [v27 fetchedObjects];
      photosGraphProperties = [firstObject photosGraphProperties];
      v22 = photosGraphProperties;
      if (photosGraphProperties)
      {
        v23 = [photosGraphProperties objectForKeyedSubscript:@"info"];
        v24 = [v23 objectForKeyedSubscript:@"meaningLabels"];
      }

      else
      {
        v24 = 0;
      }

      v25 = [MEMORY[0x277CBEB98] setWithArray:v24];
      v26 = [graphManager memoryDebugInformationWithMoments:fetchedObjects meaningLabels:v25];

      replyCopy[2](replyCopy, v26, 0);
      v11 = v30;
      identifierCopy = v31;
      v15 = v28;
      photoLibrary = v29;
    }

    else
    {
      librarySpecificFetchOptions2 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
      (replyCopy)[2](replyCopy, 0, librarySpecificFetchOptions2);
    }
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (unint64_t)_validatedMemoryNotificationState:(int)state
{
  if (state >= 3)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

- (void)simulateMemoriesNotificationWithOptions:(id)options context:(id)context reply:(id)reply
{
  v74[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  selfCopy = self;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v74[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v10];

  [librarySpecificFetchOptions setIncludePendingMemories:0];
  [librarySpecificFetchOptions setIncludeRejectedMemories:0];
  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v12 = objc_opt_new();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v66;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v65 + 1) + 8 * i);
        creationDate = [v20 creationDate];
        if (!v17)
        {
          v17 = [currentCalendar startOfDayForDate:creationDate];
        }

        if ([v17 compare:creationDate] != 1)
        {
          [v12 addObject:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  if ([v12 count])
  {
    firstObject = [v12 firstObject];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v23 = [standardUserDefaults objectForKey:@"PhotoAnalysisNotificationSimulationDelayOverride"];

    v24 = optionsCopy;
    v25 = replyCopy;
    v51 = v23;
    if (v23)
    {
      [v23 doubleValue];
      v27 = v26;
      v28 = selfCopy;
      loggingConnection = [(PHAStorytellingClientRequestHandler *)selfCopy loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v70 = v27;
        v71 = 2112;
        v72 = @"PhotoAnalysisNotificationSimulationDelayOverride";
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[Memories Notification] Simulation: overriding notification delay with time interval %.2f because of user defaults %@", buf, 0x16u);
      }

      v30 = (v27 * 1000000000.0);
    }

    else
    {
      v30 = 5000000000;
      v28 = selfCopy;
    }

    v50 = librarySpecificFetchOptions;
    if (!optionsCopy)
    {
      v42 = 1;
LABEL_31:
      v43 = dispatch_time(0, v30);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__PHAStorytellingClientRequestHandler_Memory__simulateMemoriesNotificationWithOptions_context_reply___block_invoke;
      block[3] = &unk_2788B2230;
      v32 = photoLibrary;
      v60 = photoLibrary;
      v61 = firstObject;
      v64 = v42;
      v62 = selfCopy;
      v63 = v25;
      v44 = firstObject;
      dispatch_after(v43, MEMORY[0x277D85CD0], block);

      librarySpecificFetchOptions = v50;
      v31 = v51;
      goto LABEL_32;
    }

    v33 = [optionsCopy objectForKey:@"notificationState"];
    v49 = [(PHAStorytellingClientRequestHandler *)v28 _validatedMemoryNotificationState:[(PHANotificationController *)v33 intValue]];
    v34 = [optionsCopy objectForKeyedSubscript:@"checkEligibility"];
    if (!v34)
    {
      goto LABEL_27;
    }

    v35 = v34;
    bOOLValue = [v34 BOOLValue];

    if (!bOOLValue)
    {
      v24 = optionsCopy;
      goto LABEL_30;
    }

    v48 = v30;
    v37 = [PHANotificationController alloc];
    graphManager = [(PHAStorytellingClientRequestHandler *)v28 graphManager];
    v33 = [(PHANotificationController *)v37 initWithGraphManager:graphManager];

    v39 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:photoLibrary];
    blockableFeatures = [firstObject blockableFeatures];
    v41 = [(PHANotificationController *)v33 userFeedbackScoreIsAcceptableForAssetCollection:firstObject memoryFeatures:blockableFeatures userFeedbackCalculator:v39];

    if (v41)
    {

      v24 = optionsCopy;
      v30 = v48;
LABEL_27:

LABEL_30:
      v25 = replyCopy;
      v42 = v49;
      goto LABEL_31;
    }

    v56 = v39;
    loggingConnection2 = [(PHAStorytellingClientRequestHandler *)v28 loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      localIdentifier = [firstObject localIdentifier];
      *buf = 138412290;
      v70 = *&localIdentifier;
      _os_log_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_INFO, "[Memories Notification] Not firing notification for memory %@: user feedback score is lower than acceptable.", buf, 0xCu);
    }

    v47 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16 localizedDescription:@"Latest memory is not eligible for notification"];
    v25 = replyCopy;
    (*(replyCopy + 2))(replyCopy, 0, v47);

    v31 = firstObject;
  }

  else
  {
    v31 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:@"No memories are available for simulating notification"];
    v25 = replyCopy;
    (*(replyCopy + 2))(replyCopy, 0, v31);
  }

  v24 = optionsCopy;
  v32 = photoLibrary;
LABEL_32:
}

void __101__PHAStorytellingClientRequestHandler_Memory__simulateMemoriesNotificationWithOptions_context_reply___block_invoke(uint64_t a1)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__PHAStorytellingClientRequestHandler_Memory__simulateMemoriesNotificationWithOptions_context_reply___block_invoke_2;
  v10[3] = &unk_2788B3038;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v11 = v3;
  v12 = v4;
  v9 = 0;
  [v2 performChangesAndWait:v10 error:&v9];
  v5 = v9;
  if (*(a1 + 64) == 1)
  {
    v6 = [PHANotificationController alloc];
    v7 = [*(a1 + 48) graphManager];
    v8 = [(PHANotificationController *)v6 initWithGraphManager:v7];

    [(PHANotificationController *)v8 postNotificationForMemory:*(a1 + 40) withCreationReason:0 forceImmediateDelivery:1];
  }

  (*(*(a1 + 56) + 16))();
}

void __101__PHAStorytellingClientRequestHandler_Memory__simulateMemoriesNotificationWithOptions_context_reply___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CD98E8] changeRequestForMemory:*(a1 + 32)];
  [v2 setNotificationState:*(a1 + 40)];
}

- (void)requestMeaningScoreDebugDescriptionForMomentLocalIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v22 = 0;
  v10 = [graphManager isReadyWithError:&v22];
  v11 = v22;

  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v13 = objc_alloc_init(MEMORY[0x277D3B6A0]);
    graphManager2 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    workingContext = [graphManager2 workingContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __124__PHAStorytellingClientRequestHandler_Prototype__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_context_reply___block_invoke;
    v18[3] = &unk_2788B2768;
    v19 = identifierCopy;
    v20 = v12;
    v21 = v13;
    v16 = v13;
    v17 = v12;
    [workingContext performSynchronousConcurrentGraphReadUsingBlock:v18];

    replyCopy[2](replyCopy, v17, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

void __124__PHAStorytellingClientRequestHandler_Prototype__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_context_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 graph];
  v5 = MEMORY[0x277D3B978];
  v6 = [MEMORY[0x277CD98F8] uuidFromLocalIdentifier:*(a1 + 32)];
  v7 = [v5 momentNodeForUUID:v6 inGraph:v4];
  v8 = [v7 anyNode];

  [*(a1 + 40) appendString:@"Meaning Edges"];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v9 = *MEMORY[0x277D3BE70];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __124__PHAStorytellingClientRequestHandler_Prototype__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_context_reply___block_invoke_2;
  v22[3] = &unk_2788B2740;
  v23 = *(a1 + 48);
  v24 = *(a1 + 40);
  v25 = &v26;
  [v8 enumerateMeaningEdgesAndNodesWithDomain:v9 block:v22];
  if ((v27[3] & 1) == 0)
  {
    [*(a1 + 40) appendString:@"\n    None"];
  }

  [*(a1 + 40) appendString:@"\n\nAlternative Meaning Edges"];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = *MEMORY[0x277D3BE68];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __124__PHAStorytellingClientRequestHandler_Prototype__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_context_reply___block_invoke_3;
  v14 = &unk_2788B2740;
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v17 = &v18;
  [v8 enumerateMeaningEdgesAndNodesWithDomain:v10 block:&v11];
  if ((v19[3] & 1) == 0)
  {
    [*(a1 + 40) appendString:{@"\n    None", v11, v12, v13, v14, v15}];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v26, 8);
}

void __124__PHAStorytellingClientRequestHandler_Prototype__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_context_reply___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [PHAStorytellingClientRequestHandler _descriptionForMeaningNode:a3 meaningEdge:a2 configuration:*(a1 + 32)];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n    %@", v5];
  [*(a1 + 40) appendString:v4];
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __124__PHAStorytellingClientRequestHandler_Prototype__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_context_reply___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [PHAStorytellingClientRequestHandler _descriptionForMeaningNode:a3 meaningEdge:a2 configuration:*(a1 + 32)];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n    %@", v5];
  [*(a1 + 40) appendString:v4];
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

- (id)_asssetLocalIdentifiersByCityNameForKeyAssetOnly:(BOOL)only
{
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6237;
  v15 = __Block_byref_object_dispose__6238;
  v16 = 0;
  workingContext = [graphManager workingContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__PHAStorytellingClientRequestHandler_Prototype___asssetLocalIdentifiersByCityNameForKeyAssetOnly___block_invoke;
  v8[3] = &unk_2788B2718;
  v5 = graphManager;
  v9 = v5;
  v10 = &v11;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __99__PHAStorytellingClientRequestHandler_Prototype___asssetLocalIdentifiersByCityNameForKeyAssetOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 interestingCityNodes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__PHAStorytellingClientRequestHandler_Prototype___asssetLocalIdentifiersByCityNameForKeyAssetOnly___block_invoke_2;
  v10[3] = &unk_2788B26F0;
  v11 = *(a1 + 32);
  v6 = v4;
  v12 = v6;
  [v5 enumerateIdentifiersAsCollectionsWithBlock:v10];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;
}

void __99__PHAStorytellingClientRequestHandler_Prototype___asssetLocalIdentifiersByCityNameForKeyAssetOnly___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(a1 + 32) photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = MEMORY[0x277CCAC30];
  v8 = [v4 momentNodes];
  v9 = [v8 uuids];
  v10 = [v7 predicateWithFormat:@"uuid in %@", v9];
  [v6 setInternalPredicate:v10];

  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:3 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  v12 = [*(a1 + 32) photoLibrary];
  v13 = [v12 librarySpecificFetchOptions];

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v34[0] = v14;
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v34[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  [v13 setInternalSortDescriptors:v16];

  v28 = v11;
  v17 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollections:v11 options:v13];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v29 + 1) + 8 * v23) localIdentifier];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v21);
  }

  v25 = *(a1 + 40);
  v26 = [v4 names];
  v27 = [v26 firstObject];
  [v25 setObject:v18 forKeyedSubscript:v27];
}

- (void)requestAssetLocalIdentifiersByCityNameWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v10 = 0;
  v7 = [graphManager isReadyWithError:&v10];
  v8 = v10;
  if (v7)
  {
    v9 = [(PHAStorytellingClientRequestHandler *)self _asssetLocalIdentifiersByCityNameForKeyAssetOnly:0];
    replyCopy[2](replyCopy, v9, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v8);
  }
}

- (void)requestConfidenceByMomentLocalIdentifierForMeaning:(id)meaning useAlternativeMeaningEdge:(BOOL)edge onlyHighPrecision:(BOOL)precision context:(id)context reply:(id)reply
{
  meaningCopy = meaning;
  contextCopy = context;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v30 = 0;
  v16 = [graphManager isReadyWithError:&v30];
  v17 = v30;
  if (v16)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__6237;
    v28 = __Block_byref_object_dispose__6238;
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    workingContext = [graphManager workingContext];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __159__PHAStorytellingClientRequestHandler_Prototype__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_context_reply___block_invoke;
    v19[3] = &unk_2788B26C8;
    precisionCopy = precision;
    v20 = meaningCopy;
    v21 = &v24;
    edgeCopy = edge;
    [workingContext performSynchronousConcurrentGraphReadUsingBlock:v19];

    replyCopy[2](replyCopy, v25[5], 0);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v17);
  }
}

void __159__PHAStorytellingClientRequestHandler_Prototype__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_context_reply___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = MEMORY[0x277D3B948];
  v9[0] = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v4 meaningNodesWithMeaningLabels:v5 inGraph:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __159__PHAStorytellingClientRequestHandler_Prototype__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_context_reply___block_invoke_2;
  v7[3] = &unk_2788B26A0;
  v8 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  [v6 enumerateNodesUsingBlock:v7];
}

void __159__PHAStorytellingClientRequestHandler_Prototype__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_context_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __159__PHAStorytellingClientRequestHandler_Prototype__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_context_reply___block_invoke_3;
  v8 = &unk_2788B2678;
  LOBYTE(v10) = *(a1 + 40);
  v9 = *(a1 + 32);
  v3 = a2;
  v4 = _Block_copy(&v5);
  if (*(a1 + 41) == 1)
  {
    [v3 enumerateMomentAlternativeEdgesAndNodesUsingBlock:{v4, v5, v6, v7, v8, v9, v10}];
  }

  else
  {
    [v3 enumerateMomentEdgesAndNodesUsingBlock:{v4, v5, v6, v7, v8, v9, v10}];
  }
}

void __159__PHAStorytellingClientRequestHandler_Prototype__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_context_reply___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!*(a1 + 40) || [v10 isHighPrecision])
  {
    v6 = MEMORY[0x277CCABB0];
    [v10 confidence];
    v7 = [v6 numberWithDouble:?];
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [v5 localIdentifier];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }
}

- (id)_utilityAssetLocalIdentifiersForKeyAssetOnly:(BOOL)only
{
  onlyCopy = only;
  v72[2] = *MEMORY[0x277D85DE8];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  photoLibrary = [graphManager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v72[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v72[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  [librarySpecificFetchOptions setInternalSortDescriptors:v8];

  v9 = *MEMORY[0x277CD9AD0];
  v71[0] = *MEMORY[0x277CD9B10];
  v71[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  [librarySpecificFetchOptions setFetchPropertySets:v10];

  v11 = objc_alloc(MEMORY[0x277CBEA60]);
  v43 = librarySpecificFetchOptions;
  v12 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  fetchedObjects = [v12 fetchedObjects];
  v14 = [v11 initWithArray:fetchedObjects];

  v42 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  [v42 prepareAssets:v14];
  [MEMORY[0x277CD97A8] prefetchScenesOnAssets:v14];
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v14;
  v53 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v53)
  {
    v52 = *v64;
    do
    {
      v15 = 0;
      do
      {
        if (*v64 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v63 + 1) + 8 * v15);
        curationModel = [v16 curationModel];
        sceneModel = [curationModel sceneModel];
        sceneClassifications = [v16 sceneClassifications];
        v56 = [sceneModel sceneNamesFromSceneClassifications:sceneClassifications passingThresholdOfType:2];

        curationModel2 = [v16 curationModel];
        LODWORD(sceneClassifications) = [curationModel2 isMemeExclusiveWithAsset:v16];

        if (sceneClassifications)
        {
          localIdentifier = [v16 localIdentifier];
          [v49 addObject:localIdentifier];
        }

        v55 = v15;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        sceneClassifications2 = [v16 sceneClassifications];
        v22 = [sceneClassifications2 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          v25 = 0;
          v58 = *v60;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v60 != v58)
              {
                objc_enumerationMutation(sceneClassifications2);
              }

              v27 = *(*(&v59 + 1) + 8 * i);
              [v16 curationModel];
              v29 = v28 = v16;
              junkClassificationModel = [v29 junkClassificationModel];
              receiptOrDocumentNode = [junkClassificationModel receiptOrDocumentNode];
              v32 = [receiptOrDocumentNode passesHighPrecisionWithSignal:v27];

              v16 = v28;
              v25 |= v32;
              curationModel3 = [v28 curationModel];
              junkClassificationModel2 = [curationModel3 junkClassificationModel];
              screenshotNode = [junkClassificationModel2 screenshotNode];
              LOBYTE(v27) = [screenshotNode passesHighPrecisionWithSignal:v27];

              v24 |= v27;
            }

            v23 = [sceneClassifications2 countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v23);
        }

        else
        {
          v24 = 0;
          v25 = 0;
        }

        if (([v56 containsObject:@"whiteboard"] & 1) != 0 || objc_msgSend(v56, "containsObject:", @"chalkboard"))
        {
          localIdentifier2 = [v16 localIdentifier];
          v37 = v51;
          goto LABEL_20;
        }

        if (([v56 containsObject:@"ticket"] & 1) != 0 || objc_msgSend(v56, "containsObject:", @"coupon"))
        {
          localIdentifier2 = [v16 localIdentifier];
          v37 = v48;
          goto LABEL_20;
        }

        if ([v56 containsObject:@"menu"])
        {
          localIdentifier2 = [v16 localIdentifier];
          v37 = v47;
          goto LABEL_20;
        }

        if ([v56 containsObject:@"recipe"])
        {
          localIdentifier2 = [v16 localIdentifier];
          v37 = v46;
          goto LABEL_20;
        }

        if (v24)
        {
          localIdentifier2 = [v16 localIdentifier];
          v37 = v45;
          goto LABEL_20;
        }

        if (v25)
        {
          localIdentifier2 = [v16 localIdentifier];
          v37 = v44;
LABEL_20:
          [v37 addObject:localIdentifier2];

          if (onlyCopy)
          {
            goto LABEL_38;
          }

          goto LABEL_21;
        }

        if (onlyCopy)
        {
LABEL_38:

          goto LABEL_39;
        }

LABEL_21:

        v15 = v55 + 1;
      }

      while (v55 + 1 != v53);
      v38 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      v53 = v38;
    }

    while (v38);
  }

LABEL_39:

  v67[0] = @"receipt";
  v67[1] = @"document";
  v68[0] = v41;
  v68[1] = v44;
  v67[2] = @"whiteboard";
  v67[3] = @"screenCapture";
  v68[2] = v51;
  v68[3] = v45;
  v67[4] = @"ticket";
  v67[5] = @"menu";
  v68[4] = v48;
  v68[5] = v47;
  v67[6] = @"receipe";
  v67[7] = @"meme";
  v68[6] = v46;
  v68[7] = v49;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:8];

  return v39;
}

- (void)requestUtilityAssetLocalIdentifiersWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  v7 = [(PHAStorytellingClientRequestHandler *)self _utilityAssetLocalIdentifiersForKeyAssetOnly:0];
  (*(reply + 2))(replyCopy, v7, 0);
}

- (void)requestTrendsByIdentifierWithCadence:(id)cadence forYear:(unint64_t)year context:(id)context reply:(id)reply
{
  v45[1] = *MEMORY[0x277D85DE8];
  cadenceCopy = cadence;
  contextCopy = context;
  replyCopy = reply;
  v13 = [cadenceCopy isEqualToString:@"daily"];
  if (year == 2022 || v13)
  {
    v36 = replyCopy;
    v37 = contextCopy;
    v38 = cadenceCopy;
    photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v45[0] = *MEMORY[0x277CD9AA8];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v16];

    v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
    v44 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v18];

    [librarySpecificFetchOptions setFetchLimit:250];
    v35 = librarySpecificFetchOptions;
    v19 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        v26 = 0;
        do
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v39 + 1) + 8 * v26);
          if ([v21 count] > 0x18)
          {
            uUID = [MEMORY[0x277CCAD78] UUID];
            uUIDString = [uUID UUIDString];
            [v20 setObject:v21 forKeyedSubscript:uUIDString];

            v31 = MEMORY[0x277CBEB18];
            localIdentifier = [v27 localIdentifier];
            v32 = [v31 arrayWithObject:localIdentifier];

            v21 = v32;
          }

          else
          {
            localIdentifier = [v27 localIdentifier];
            [v21 addObject:localIdentifier];
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    if ([v21 count])
    {
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      uUIDString2 = [uUID2 UUIDString];
      [v20 setObject:v21 forKeyedSubscript:uUIDString2];
    }

    replyCopy = v36;
    (*(v36 + 2))(v36, v20, 0);

    contextCopy = v37;
    cadenceCopy = v38;
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEC10], 0);
  }
}

- (void)requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier:(id)identifier context:(id)context reply:(id)reply
{
  v26[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v26[0] = *MEMORY[0x277CD9AA8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v9];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v25 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v11];

  [librarySpecificFetchOptions setFetchLimit:10];
  v12 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        localIdentifier = [*(*(&v20 + 1) + 8 * v18) localIdentifier];
        [v13 addObject:localIdentifier];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  replyCopy[2](replyCopy, v13, 0);
}

- (void)requestKeyAssetLocalIdentifierForPrototypeCategory:(id)category context:(id)context reply:(id)reply
{
  v30 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  replyCopy = reply;
  if ([categoryCopy isEqualToString:@"Utility"])
  {
    v9 = [(PHAStorytellingClientRequestHandler *)self _utilityAssetLocalIdentifiersForKeyAssetOnly:1];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    allValues = [v9 allValues];
    firstObject = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (firstObject)
    {
      v12 = *v25;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if ([v14 count])
        {
          break;
        }

        if (firstObject == ++v13)
        {
          firstObject = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (firstObject)
          {
            goto LABEL_4;
          }

          goto LABEL_22;
        }
      }

LABEL_21:
      firstObject = [v14 firstObject];
    }
  }

  else
  {
    if (![categoryCopy isEqualToString:@"Places"])
    {
      v17 = MEMORY[0x277CCA9B8];
      categoryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s does not support category: %@", "-[PHAStorytellingClientRequestHandler(Prototype) requestKeyAssetLocalIdentifierForPrototypeCategory:context:reply:]", categoryCopy];
      v19 = [v17 pl_analysisErrorWithCode:2 localizedDescription:categoryCopy];
      replyCopy[2](replyCopy, 0, v19);

      firstObject = 0;
      goto LABEL_24;
    }

    v9 = [(PHAStorytellingClientRequestHandler *)self _asssetLocalIdentifiersByCityNameForKeyAssetOnly:1];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    allValues = [v9 allValues];
    firstObject = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (firstObject)
    {
      v15 = *v21;
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v20 + 1) + 8 * v16);
        if ([v14 count])
        {
          goto LABEL_21;
        }

        if (firstObject == ++v16)
        {
          firstObject = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (firstObject)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

LABEL_22:

LABEL_24:
  (replyCopy)[2](replyCopy, firstObject, 0);
}

+ (BOOL)_isMeaningInferenceFromEventLabelingModel:(id)model meaningEdgeDomain:(unsigned __int16)domain configuration:(id)configuration
{
  domainCopy = domain;
  modelCopy = model;
  configurationCopy = configuration;
  if ([MEMORY[0x277D3B6A0] isEventLabelingEnabled])
  {
    if ([MEMORY[0x277D3B6A0] usePrimaryMeaningDomainForEventLabelingMeanings])
    {
      meaningLabelsForEventLabeling = [configurationCopy meaningLabelsForEventLabeling];
      v10 = [meaningLabelsForEventLabeling containsObject:modelCopy];
      if (domainCopy == *MEMORY[0x277D3BE70])
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = *MEMORY[0x277D3BE68] == domainCopy;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_descriptionForMeaningNode:(id)node meaningEdge:(id)edge configuration:(id)configuration
{
  configurationCopy = configuration;
  edgeCopy = edge;
  label = [node label];
  [edgeCopy confidence];
  v11 = v10;
  domain = [edgeCopy domain];

  if ([PHAStorytellingClientRequestHandler _isMeaningInferenceFromEventLabelingModel:label meaningEdgeDomain:domain configuration:configurationCopy])
  {
    [configurationCopy highPrecisionThresholdForMeaningLabel:label];
    v14 = v13;
    [configurationCopy highRecallThresholdForMeaningLabel:label];
    v16 = @"🌅";
  }

  else
  {
    v16 = @"🏙";
    v15 = 0;
    v14 = 0x3FE51EB851EB851FLL;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ (conf: %.2f, p: %.2f, r: %.2f)", v16, label, v11, v14, v15];

  return v17;
}

- (BOOL)validateSelector:(SEL)selector forConnection:(id)connection
{
  if (sel_requestGraphInferencesSummaryWithMomentLocalIdentifiers_context_reply_ != selector && sel_requestGraphMomentLocalIdentifiersWithDateInterval_context_reply_ != selector && sel_requestGraphInferencesSummaryWithDateInterval_context_reply_ != selector && sel_requestCurationScoreByAssetUUIDForAssetUUIDs_context_reply_ != selector)
  {
    return 1;
  }

  v7 = [connection valueForEntitlement:@"com.apple.private.photos.storytelling.inferenceSummary"];
  v8 = v7;
  v9 = v7 && ([v7 BOOLValue] & 1) != 0;

  return v9;
}

- (BOOL)validateOperation:(id)operation forConnection:(id)connection
{
  connectionCopy = connection;
  invocation = [operation invocation];
  selector = [invocation selector];

  LOBYTE(invocation) = [(PHAStorytellingClientRequestHandler *)self validateSelector:selector forConnection:connectionCopy];
  return invocation;
}

- (void)handleOperation:(id)operation
{
  operationCopy = operation;
  executionQueue = self->_executionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PHAStorytellingClientRequestHandler_handleOperation___block_invoke;
  v7[3] = &unk_2788B2C00;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  dispatch_async(executionQueue, v7);
}

uint64_t __55__PHAStorytellingClientRequestHandler_handleOperation___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 invocation];
    v6 = qos_class_self();
    v7 = PHADescriptionForQoS(v6);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22FA28000, v4, OS_LOG_TYPE_DEFAULT, "Running task '%@' at QoS %@", &v9, 0x16u);
  }

  return [*(a1 + 40) runOperation];
}

- (PHAStorytellingClientRequestHandler)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = PHAStorytellingClientRequestHandler;
  v6 = [(PHAStorytellingClientRequestHandler *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphManager, manager);
    workingContext = [(PGManager *)v7->_graphManager workingContext];
    photoLibrary = [workingContext photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;

    v11 = MEMORY[0x277D85CD8];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.photoanalysisd.storytellinghandler", v12);
    executionQueue = v7->_executionQueue;
    v7->_executionQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    progressReporterByQueryID = v7->_progressReporterByQueryID;
    v7->_progressReporterByQueryID = v15;

    v17 = os_log_create("com.apple.photoanalysisd", "clientqueryhandler");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.photoanalysisd.storytellinghandler.music", v19);
    musicRequestQueue = v7->_musicRequestQueue;
    v7->_musicRequestQueue = v20;
  }

  return v7;
}

- (void)runShadowEvaluationWithRecipe:(id)recipe models:(id)models trialDeploymentID:(id)d trialExperimentID:(id)iD trialTreatmentID:(id)treatmentID context:(id)context resultBlock:(id)block
{
  blockCopy = block;
  treatmentIDCopy = treatmentID;
  iDCopy = iD;
  dCopy = d;
  modelsCopy = models;
  recipeCopy = recipe;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v27 = 0;
  v23 = [PHACurareShadowEvaluationRecipeDecoder decodeRecipeUserInfo:recipeCopy models:modelsCopy photoLibrary:photoLibrary graphManager:graphManager trialDeploymentID:dCopy trialExperimentID:iDCopy trialTreatmentID:treatmentIDCopy decodingError:&v27];

  v24 = v27;
  v26 = v24;
  [v23 runWithError:&v26];
  v25 = v26;

  blockCopy[2](blockCopy, v25);
}

- (void)requestRunPFLWithAttachments:(id)attachments recipeUserInfo:(id)info context:(id)context resultBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  attachmentsCopy = attachments;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v26 = 0;
  v14 = [PHAPrivateFederatedLearningRecipeDecoder decodeRecipeUserInfo:infoCopy attachmentURLs:attachmentsCopy photoLibrary:photoLibrary graphManager:graphManager decodingError:&v26];

  v15 = v26;
  options = [v14 options];
  learningFramework = [options learningFramework];
  LODWORD(infoCopy) = [learningFramework isEqualToString:@"coreML"];

  if (infoCopy)
  {
    v25 = v15;
    v18 = &v25;
    v19 = [v14 runCoreMLModelWithError:&v25];
  }

  else
  {
    v24 = v15;
    v18 = &v24;
    v19 = [v14 runWithError:&v24];
  }

  v20 = v19;
  v21 = *v18;

  dataPackage = [v20 dataPackage];
  trainingMetrics = [v20 trainingMetrics];
  blockCopy[2](blockCopy, dataPackage, trainingMetrics, v21);
}

- (void)recordFeatureUsageFromCounts:(id)counts context:(id)context reply:(id)reply
{
  replyCopy = reply;
  countsCopy = counts;
  v9 = objc_alloc_init(PHAFeaturesUsageReportingTask);
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  workingContext = [graphManager workingContext];

  photoLibrary = [workingContext photoLibrary];
  loggingConnection = [workingContext loggingConnection];
  v16 = 0;
  v14 = [(PHAFeaturesUsageReportingTask *)v9 recordFeatureUsageFromCounts:countsCopy forPhotoLibrary:photoLibrary loggingConnection:loggingConnection error:&v16];

  v15 = v16;
  replyCopy[2](replyCopy, v14, v15);
}

- (void)requestSetDefaultsObject:(id)object forKey:(id)key context:(id)context reply:(id)reply
{
  replyCopy = reply;
  v8 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  objectCopy = object;
  standardUserDefaults = [v8 standardUserDefaults];
  [standardUserDefaults setObject:objectCopy forKey:keyCopy];

  v12 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, 0);
    v12 = replyCopy;
  }
}

- (void)requestDefaultsObjectForKey:(id)key context:(id)context reply:(id)reply
{
  replyCopy = reply;
  v6 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  standardUserDefaults = [v6 standardUserDefaults];
  v9 = [standardUserDefaults objectForKey:keyCopy];

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v9, 0);
  }
}

- (void)exportWallpaperForAssets:(id)assets options:(id)options context:(id)context reply:(id)reply
{
  v50[2] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  optionsCopy = options;
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v13 = *MEMORY[0x277CD9B10];
  v50[0] = *MEMORY[0x277CD9AD0];
  v50[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  [librarySpecificFetchOptions setFetchPropertySets:v14];

  v38 = librarySpecificFetchOptions;
  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:assetsCopy options:librarySpecificFetchOptions];
  v16 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3B150]];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v17 = MEMORY[0x277CBEBC0];
  v18 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3B160]];
  v43 = [v17 fileURLWithPath:v18];

  v19 = [PHAWallpaperSuggestionRefreshSession alloc];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v42 = [(PHAWallpaperSuggestionRefreshSession *)v19 initWithGraphManager:graphManager];

  v21 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3B158]];
  bOOLValue = [v21 BOOLValue];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v15;
  v23 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v23)
  {
    v24 = v23;
    v36 = optionsCopy;
    v37 = assetsCopy;
    v25 = 0;
    v26 = *v46;
    v27 = *MEMORY[0x277D3B580];
    while (2)
    {
      v28 = 0;
      v29 = v25;
      do
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v45 + 1) + 8 * v28);
        uuid = [v30 uuid];
        v32 = [v43 URLByAppendingPathComponent:uuid];
        v33 = [v32 URLByAppendingPathExtension:@"wallpaper"];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtURL:v33 error:0];

        v44 = v29;
        LODWORD(defaultManager) = [(PHAWallpaperSuggestionRefreshSession *)v42 savePreviewSegmentationResourcesForAsset:v30 atURL:v33 withClassification:unsignedIntegerValue styleCategory:v27 enableSettlingEffect:bOOLValue enableSpatialPhoto:0 error:&v44];
        v25 = v44;

        if (!defaultManager)
        {
          v35 = 0;
          goto LABEL_11;
        }

        ++v28;
        v29 = v25;
      }

      while (v24 != v28);
      v24 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }

    v35 = 1;
LABEL_11:
    optionsCopy = v36;
    assetsCopy = v37;
  }

  else
  {
    v25 = 0;
    v35 = 1;
  }

  replyCopy[2](replyCopy, v35, v25);
}

- (void)requestWallpaperPropertiesForAssets:(id)assets options:(id)options context:(id)context reply:(id)reply
{
  v45[1] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  optionsCopy = options;
  replyCopy = reply;
  photoLibrary = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v45[0] = *MEMORY[0x277CD9B10];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v13];

  v36 = librarySpecificFetchOptions;
  v14 = [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:assetsCopy options:librarySpecificFetchOptions];
  v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v16 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3B158]];
  LOBYTE(librarySpecificFetchOptions) = [v16 BOOLValue];

  if (librarySpecificFetchOptions)
  {
    v17 = 5;
  }

  else
  {
    v18 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3B150]];
    unsignedIntegerValue = [v18 unsignedIntegerValue];

    v17 = [objc_opt_class() _sceneTypeForPosterClassification:unsignedIntegerValue];
  }

  v20 = objc_alloc(MEMORY[0x277D3BC50]);
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  workingContextForSuggestions = [graphManager workingContextForSuggestions];
  loggingConnection = [workingContextForSuggestions loggingConnection];
  v24 = [v20 initWithType:v17 loggingConnection:loggingConnection];

  [v24 setIsUserInitiated:1];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v14;
  v25 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v34 = optionsCopy;
    v35 = assetsCopy;
    v27 = 0;
    v28 = *v41;
    while (2)
    {
      v29 = 0;
      v30 = v27;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v40 + 1) + 8 * v29);
        v39 = v30;
        v32 = [v24 requestWallpaperPropertiesForAsset:v31 progressBlock:&__block_literal_global_9012 error:{&v39, v34, v35}];
        v27 = v39;

        if (!v32)
        {

          v15 = 0;
          goto LABEL_14;
        }

        uuid = [v31 uuid];
        [v15 setObject:v32 forKeyedSubscript:uuid];

        ++v29;
        v30 = v27;
      }

      while (v26 != v29);
      v26 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

LABEL_14:
    optionsCopy = v34;
    assetsCopy = v35;
  }

  else
  {
    v27 = 0;
  }

  replyCopy[2](replyCopy, v15, v27);
}

- (void)requestPeopleForWallpaperSuggestionsWithOptions:(id)options context:(id)context reply:(id)reply
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D3BC58];
  replyCopy = reply;
  optionsCopy = options;
  v10 = [v7 alloc];
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  workingContextForSuggestions = [graphManager workingContextForSuggestions];
  v13 = [v10 initWithWorkingContext:workingContextForSuggestions];

  v14 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3CA20]];

  bOOLValue = [v14 BOOLValue];
  v16 = [v13 personLocalIdentifiersForTopPeople:bOOLValue];
  v22 = *MEMORY[0x277D3CA18];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v21 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v19 = [v16 sortedArrayUsingDescriptors:v18];
  v23[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  replyCopy[2](replyCopy, v20, 0);
}

- (void)reloadWallpaperSuggestionsWithSuggestionUUIDs:(id)ds context:(id)context reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  workingContextForSuggestions = [graphManager workingContextForSuggestions];
  loggingConnection = [workingContextForSuggestions loggingConnection];

  v12 = [PHAWallpaperSuggestionRefreshSession alloc];
  graphManager2 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = [(PHAWallpaperSuggestionRefreshSession *)v12 initWithGraphManager:graphManager2];

  v25 = 0;
  LODWORD(graphManager2) = [(PHAWallpaperSuggestionRefreshSession *)v14 prepareWithError:&v25];
  v15 = v25;
  if (graphManager2)
  {
    v16 = [objc_alloc(MEMORY[0x277D3BB60]) initWithTaskName:@"ReloadWallpaperSuggestions" loggingConnection:loggingConnection];
    v17 = objc_alloc(MEMORY[0x277D22C98]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __111__PHAStorytellingClientRequestHandler_Suggestion__reloadWallpaperSuggestionsWithSuggestionUUIDs_context_reply___block_invoke;
    v23[3] = &unk_2788B2FB8;
    v24 = v16;
    v18 = v16;
    v19 = [v17 initWithProgressBlock:v23];
    v22 = v15;
    v20 = [(PHAWallpaperSuggestionRefreshSession *)v14 reloadWallpaperSuggestionsForUUIDs:dsCopy progress:v19 error:&v22];
    v21 = v22;

    [(PHAWallpaperSuggestionRefreshSession *)v14 cleanup];
    v15 = v21;
  }

  else
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "Failed to prepare wallpaper suggestion refresh session: %@", buf, 0xCu);
    }

    v20 = 0;
  }

  replyCopy[2](replyCopy, v20, v15);
}

- (void)requestNightlySuggestionsForPosterConfiguration:(id)configuration atDate:(id)date context:(id)context reply:(id)reply
{
  v30[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v10 = MEMORY[0x277D3B4B8];
  replyCopy = reply;
  dateCopy = date;
  v13 = [[v10 alloc] initWithShuffleType:0];
  [v13 setShuffleSmartAlbums:0];
  v14 = [configurationCopy objectForKeyedSubscript:@"personLocalIdentifiers"];
  if ([v14 count])
  {
    v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
    [v13 setPersonLocalIdentifiers:v15];

    [v13 setShuffleSmartAlbums:{objc_msgSend(v13, "shuffleSmartAlbums") | 1}];
  }

  v16 = [configurationCopy objectForKeyedSubscript:@"includePets"];
  bOOLValue = [v16 BOOLValue];

  v18 = [configurationCopy objectForKeyedSubscript:@"includeLandscapes"];
  bOOLValue2 = [v18 BOOLValue];

  v20 = [configurationCopy objectForKeyedSubscript:@"includeCityscapes"];
  bOOLValue3 = [v20 BOOLValue];

  if (!bOOLValue)
  {
    if (!bOOLValue2)
    {
      goto LABEL_5;
    }

LABEL_9:
    [v13 setShuffleSmartAlbums:{objc_msgSend(v13, "shuffleSmartAlbums") | 4}];
    if (!bOOLValue3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v13 setShuffleSmartAlbums:{objc_msgSend(v13, "shuffleSmartAlbums") | 2}];
  if (bOOLValue2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (bOOLValue3)
  {
LABEL_6:
    [v13 setShuffleSmartAlbums:{objc_msgSend(v13, "shuffleSmartAlbums") | 8}];
  }

LABEL_7:
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  photoLibrary = [graphManager photoLibrary];

  v24 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:photoLibrary];
  personUUIDsWithNegativeFeedback = [v24 personUUIDsWithNegativeFeedback];
  v26 = [MEMORY[0x277D3C808] suggestionLocalIdentifiersByFeatureForPosterConfiguration:v13 atDate:dateCopy inPhotoLibrary:photoLibrary];
  v27 = [MEMORY[0x277D3C808] chosenSuggestionLocalIdentifiersForPosterConfiguration:v13 fromSuggestionLocalIdentifiersByFeature:v26 atDate:dateCopy usingStrategy:0 withRejectedPersonLocalIdentifiers:personUUIDsWithNegativeFeedback];

  v29 = *MEMORY[0x277D3B0D8];
  v30[0] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  replyCopy[2](replyCopy, v28, 0);
}

- (void)requestSuggestionInfosWithOptions:(id)options context:(id)context reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [graphManager isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [[PHASuggestionController alloc] initWithGraphManager:graphManager];
    v13 = [(PHASuggestionController *)v12 suggestionInfosWithOptions:optionsCopy];
    replyCopy[2](replyCopy, v13, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v11);
  }
}

- (void)requestAvailableSuggestionTypeInfosWithOptions:(id)options context:(id)context reply:(id)reply
{
  replyCopy = reply;
  graphManager = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = 0;
  v8 = [graphManager isReadyWithError:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [PHASuggestionController availableSuggestionTypeInfosWithProfile:0];
    replyCopy[2](replyCopy, v10, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v9);
  }
}

+ (unint64_t)_sceneTypeForPosterClassification:(unint64_t)classification
{
  if (classification > 5)
  {
    return 2;
  }

  else
  {
    return qword_22FCDE6D0[classification];
  }
}

@end