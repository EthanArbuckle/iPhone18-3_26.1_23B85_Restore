@interface PHAStorytellingClientRequestHandler
+ (BOOL)_isMeaningInferenceFromEventLabelingModel:(id)a3 meaningEdgeDomain:(unsigned __int16)a4 configuration:(id)a5;
+ (id)_aggregateErrorWithErrorDescriptions:(id)a3;
+ (id)_descriptionForMeaningNode:(id)a3 meaningEdge:(id)a4 configuration:(id)a5;
+ (id)_fetchOptionsForMusicCurationWithPhotoLibrary:(id)a3;
+ (unint64_t)_sceneTypeForPosterClassification:(unint64_t)a3;
- (BOOL)validateOperation:(id)a3 forConnection:(id)a4;
- (BOOL)validateSelector:(SEL)a3 forConnection:(id)a4;
- (PHAStorytellingClientRequestHandler)initWithGraphManager:(id)a3;
- (id)_asssetLocalIdentifiersByCityNameForKeyAssetOnly:(BOOL)a3;
- (id)_collectionListForLocalIdentifier:(id)a3;
- (id)_defaultImageCreationOptions;
- (id)_generateFaceCropForFaceCropSourceDescriptors:(id)a3;
- (id)_pvFaceFromPHFace:(id)a3 copyPropertiesOption:(int64_t)a4;
- (id)_pvImageForAsset:(id)a3 targetSize:(CGSize)a4 error:(id *)a5;
- (id)_utilityAssetLocalIdentifiersForKeyAssetOnly:(BOOL)a3;
- (id)informationDictionaryForAsset:(id)a3;
- (int64_t)_titleTupleFormatForPhotoAnalysisTitleFormat:(int64_t)a3;
- (unint64_t)_validatedMemoryNotificationState:(int)a3;
- (void)_cacheAllSongSourcesWithCompletionHandler:(id)a3;
- (void)exportWallpaperForAssets:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)handleOperation:(id)a3;
- (void)notifyWhenGraphReadyWithCoalescingIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)recordFeatureUsageFromCounts:(id)a3 context:(id)a4 reply:(id)a5;
- (void)reloadAlbumWidgetTimelineWithContext:(id)a3 reply:(id)a4;
- (void)reloadForYouWidgetTimelineWithContext:(id)a3 reply:(id)a4;
- (void)reloadWallpaperSuggestionsWithSuggestionUUIDs:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestAllSocialGroupsForMemberLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestAssetCollectionsForPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestAssetLocalIdentifiersByCityNameWithContext:(id)a3 reply:(id)a4;
- (void)requestAssetsForPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestAvailableSuggestionTypeInfosWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestCacheSongSourceWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestCameraSmartSharingProcessingForLibraryScopeWithUUID:(id)a3 withOptions:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestClearMusicCacheWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestComposabilityScoresOfAssetsForLocalIdentifiers:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestConfidenceByMomentLocalIdentifierForMeaning:(id)a3 useAlternativeMeaningEdge:(BOOL)a4 onlyHighPrecision:(BOOL)a5 context:(id)a6 reply:(id)a7;
- (void)requestCuratedAssetForAssetCollectionWithLocalIdentifier:(id)a3 referenceAssetLocalIdentifier:(id)a4 options:(id)a5 context:(id)a6 reply:(id)a7;
- (void)requestCuratedAssetsForAssetCollectionWithLocalIdentifier:(id)a3 duration:(unint64_t)a4 options:(id)a5 context:(id)a6 reply:(id)a7;
- (void)requestCurationDebugInformationForAsset:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestCurationOfLength:(unint64_t)a3 forMemoryForLocalIdentifier:(id)a4 withOptions:(id)a5 context:(id)a6 reply:(id)a7;
- (void)requestCurationScoreByAssetUUIDForAssetUUIDs:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestDefaultsObjectForKey:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestExportGraphServiceForPurpose:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestFlexMusicCurationDebugInformationForSongWithUID:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestFlexMusicCurationForAssetCollectionLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestFlexMusicCurationForAssetLocalIdentifiers:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestFlexMusicCurationWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)a3 withOptions:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestGeoHashForAssetLocalIdentifiers:(id)a3 geoHashSize:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestGraphInferencesSummaryWithDateInterval:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestGraphInferencesSummaryWithMomentLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestGraphModelResultWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestGraphMomentLocalIdentifiersWithDateInterval:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestGraphRebuildFractionCompletedWithContext:(id)a3 reply:(id)a4;
- (void)requestGraphServicePerformsQueryWithContext:(id)a3 query:(id)a4 reply:(id)a5;
- (void)requestGraphServiceStatisticsWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestGraphServiceStatusWithContext:(id)a3 reply:(id)a4;
- (void)requestHighlightDebugInformationForHighlightWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestHighlightEstimatesWithContext:(id)a3 reply:(id)a4;
- (void)requestIconicSceneScoreForAssetLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestInferredMePersonLocalIdentifierWithErrorForContext:(id)a3 reply:(id)a4;
- (void)requestInvalidateServicePersistentCachesWithContext:(id)a3 reply:(id)a4;
- (void)requestInvalidateServiceTransientCachesWithContext:(id)a3 reply:(id)a4;
- (void)requestKeyAssetLocalIdentifierForPrototypeCategory:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestMaestroSongsWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestMeaningScoreDebugDescriptionForMomentLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestMemoryDebugInformationForMemoryWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestMusicCacheStatusWithContext:(id)a3 reply:(id)a4;
- (void)requestMusicCatalogAdamIDsForPurchasedSongID:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestMusicCurationDebugInformationForSongWithAdamID:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestMusicCurationForAssetCollectionLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestMusicCurationForAssetLocalIdentifiers:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestMusicCurationWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestNightlySuggestionsForPosterConfiguration:(id)a3 atDate:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestOnDemandFaceCropsForFaceLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestPeopleForWallpaperSuggestionsWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestPrecachingOfAudioDataForAdamIDs:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestRecentlyUsedSongsWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestRelatedMomentsForPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext:(id)a3 reply:(id)a4;
- (void)requestRunPFLWithAttachments:(id)a3 recipeUserInfo:(id)a4 context:(id)a5 resultBlock:(id)a6;
- (void)requestSetDefaultsObject:(id)a3 forKey:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestSignalModelInfosWithContext:(id)a3 reply:(id)a4;
- (void)requestSocialGroupsOverlappingMemberLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestSongsForAdamIDs:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestSortedArrayOfPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestStartSharedLibrarySuggestionResultWithContext:(id)a3 reply:(id)a4;
- (void)requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)a3 withOptions:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestSuggestionInfosWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestSummaryCurationForHighlightLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)requestTextFeaturesForMomentLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestTitleForAssetCollectionWithLocalIdentifier:(id)a3 format:(int64_t)a4 context:(id)a5 reply:(id)a6;
- (void)requestTitleForCollectionMomentListWithLocalIdentifier:(id)a3 format:(int64_t)a4 context:(id)a5 reply:(id)a6;
- (void)requestTitleForPersonLocalIdentifiers:(id)a3 format:(int64_t)a4 context:(id)a5 reply:(id)a6;
- (void)requestTrendsByIdentifierWithCadence:(id)a3 forYear:(unint64_t)a4 context:(id)a5 reply:(id)a6;
- (void)requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestUpNextMemoriesWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs:(id)a3 context:(id)a4 reply:(id)a5;
- (void)requestUtilityAssetInformationWithContext:(id)a3 reply:(id)a4;
- (void)requestUtilityAssetLocalIdentifiersWithContext:(id)a3 reply:(id)a4;
- (void)requestWallpaperPropertiesForAssets:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)runCurationWithItems:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6;
- (void)runShadowEvaluationWithRecipe:(id)a3 models:(id)a4 trialDeploymentID:(id)a5 trialExperimentID:(id)a6 trialTreatmentID:(id)a7 context:(id)a8 resultBlock:(id)a9;
- (void)simulateMemoriesNotificationWithOptions:(id)a3 context:(id)a4 reply:(id)a5;
@end

@implementation PHAStorytellingClientRequestHandler

- (void)notifyWhenGraphReadyWithCoalescingIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  [v7 registerCoalescingBlockWhenGraphAnalysisFinishes:v6];
}

- (void)requestGraphMomentLocalIdentifiersWithDateInterval:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v10 = [v9 isReadyWithError:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v15 = v11;
    v13 = [v9 momentLocalIdentifiersInDateInterval:v7 error:&v15];
    v14 = v15;

    v8[2](v8, v13, v14);
    v12 = v14;
  }

  else
  {
    v8[2](v8, 0, v11);
  }
}

- (void)requestGraphInferencesSummaryWithMomentLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v10 = [v9 isReadyWithError:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v15 = v11;
    v13 = [v9 summaryOfInferencesPerMomentByLocalIdentifiers:v7 error:&v15];
    v14 = v15;

    v8[2](v8, v13, v14);
    v12 = v14;
  }

  else
  {
    v8[2](v8, 0, v11);
  }
}

- (void)requestGraphInferencesSummaryWithDateInterval:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v10 = [v9 isReadyWithError:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v15 = v11;
    v13 = [v9 summaryOfInferencesPerMomentInDateInterval:v7 error:&v15];
    v14 = v15;

    v8[2](v8, v13, v14);
    v12 = v14;
  }

  else
  {
    v8[2](v8, 0, v11);
  }
}

- (void)requestExportGraphServiceForPurpose:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v18 = 0;
    v10 = [v9 isReadyWithError:&v18];
    v11 = v18;
    if ((v10 & 1) == 0)
    {
      v8[2](v8, 0, v11);
LABEL_16:

      goto LABEL_17;
    }

    if ([v7 isEqualToString:*MEMORY[0x277D3AE18]])
    {
      v12 = [v9 snapshotOuputFilePathURLForKey:*MEMORY[0x277D3BE80]];
      if (v12)
      {
        v13 = v12;
        if (([v9 copyGraphToURL:v12] & 1) == 0)
        {
LABEL_6:
          v14 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:10];
LABEL_14:
          v15 = v14;
          v8[2](v8, 0, v14);
          goto LABEL_15;
        }

LABEL_11:
        v15 = [v13 path];
        (v8)[2](v8, v15, 0);
LABEL_15:

        goto LABEL_16;
      }

LABEL_13:
      v13 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"Graph URL creation was not successful."];
      v14 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9 localizedDescription:v13];
      goto LABEL_14;
    }

    if ([v7 isEqualToString:@"snapshot"])
    {
      v13 = [v9 snapshotOuputFilePathURLForKey:*MEMORY[0x277D3BE88]];
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = MEMORY[0x277CBEBC0];
      v17 = [v9 defaultGraphExportFullPath];
      v13 = [v16 fileURLWithPath:v17];

      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (![v9 saveGraphToURL:v13])
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_17:
}

- (void)requestGraphRebuildFractionCompletedWithContext:(id)a3 reply:(id)a4
{
  v12 = a4;
  v5 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v6 = [v5 libraryAnalysisState];
  if (v6 == 1)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [v5 rebuildProgress];
    [v11 fractionCompleted];
    v9 = [v10 numberWithDouble:?];
  }

  else if (v6)
  {
    v9 = 0;
  }

  else
  {
    v7 = [v5 isReady];
    v8 = &unk_2844CC2B0;
    if (v7)
    {
      v8 = &unk_2844CC2A0;
    }

    v9 = v8;
  }

  v12[2](v12, v9, 0);
}

- (void)requestGraphServicePerformsQueryWithContext:(id)a3 query:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [v9 isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __102__PHAStorytellingClientRequestHandler_Graph__requestGraphServicePerformsQueryWithContext_query_reply___block_invoke;
    v12[3] = &unk_2788B1FB8;
    v13 = v8;
    [v9 matchWithVisualFormat:v7 usingBlock:v12];
  }

  else
  {
    (*(v8 + 2))(v8, 0, v11);
  }
}

- (void)requestInvalidateServicePersistentCachesWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v13 = 0;
  v7 = [v6 isReadyWithError:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_INFO, "Invalidate Persistent Caches", buf, 2u);
    }

    [v6 invalidatePersistentCaches];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __104__PHAStorytellingClientRequestHandler_Graph__requestInvalidateServicePersistentCachesWithContext_reply___block_invoke;
    v10[3] = &unk_2788B1630;
    v11 = v5;
    [v6 waitUntilFinishedUsingBlock:v10];
  }

  else
  {
    (*(v5 + 2))(v5, v8);
  }
}

- (void)requestInvalidateServiceTransientCachesWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v13 = 0;
  v7 = [v6 isReadyWithError:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_INFO, "Invalidate Transient Caches", buf, 2u);
    }

    [v6 invalidateTransientCaches];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __103__PHAStorytellingClientRequestHandler_Graph__requestInvalidateServiceTransientCachesWithContext_reply___block_invoke;
    v10[3] = &unk_2788B1630;
    v11 = v5;
    [v6 waitUntilFinishedUsingBlock:v10];
  }

  else
  {
    (*(v5 + 2))(v5, v8);
  }
}

- (void)requestGraphServiceStatisticsWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v37[8] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v35 = 0;
  v10 = [v9 isReadyWithError:&v35];
  v11 = v35;
  if (v10)
  {
    v12 = [v7 objectForKeyedSubscript:@"types"];
    v13 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v14 = [v13 statisticsWithTypeStrings:v12];

    if (v14 && [v14 length])
    {
      v26 = v14;
      v27 = v12;
      v28 = v11;
      v29 = v8;
      v30 = v7;
      v15 = [MEMORY[0x277CCAB68] string];
      [v15 appendFormat:@"### PhotoAnalysis ###\n\n"];
      [v15 appendFormat:@"Defaults Writes Status:\n"];
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
            v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
            v25 = [v24 valueForKey:v23];
            [v15 appendFormat:@"\t%@: %@\n", v23, v25];
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v20);
      }

      [v15 appendFormat:@"\n\n### PhotoGraph ###\n\n"];
      v14 = v26;
      [v15 appendString:v26];
      v8 = v29;
      (v29)[2](v29, v15, 0);

      v7 = v30;
      v11 = v28;
      v12 = v27;
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:2 localizedDescription:@"invalid type options to graph statistics command"];
      v8[2](v8, 0, v15);
    }
  }

  else
  {
    v8[2](v8, 0, v11);
  }
}

- (void)requestGraphServiceStatusWithContext:(id)a3 reply:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = [v6 libraryAnalysisState];
  if (v8 == 1)
  {
    [v7 appendString:@"Library analysis: Running"];
    v9 = [v6 rebuildProgress];
    [v9 fractionCompleted];
    v11 = v10 * 100.0;

    [v7 appendFormat:@"\nProgress: %0.1f%%", fmin(v11, 100.0)];
  }

  else if (!v8)
  {
    [v7 appendString:@"Library analysis: Not Running"];
  }

  v20 = 0;
  v12 = [v6 isReadyWithError:&v20];
  v13 = v20;
  if (v12)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v7 appendFormat:@"\nReady: %@", v14];
  if ((v12 & 1) == 0)
  {
    v15 = [v13 localizedDescription];
    [v7 appendFormat:@", %@", v15];
  }

  if ([v6 isBusy])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v7 appendFormat:@"\nBusy: %@", v16];
  v17 = *MEMORY[0x277D3AE60];
  v21[0] = *MEMORY[0x277D3AE58];
  v21[1] = v17;
  v22[0] = v7;
  v18 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v22[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v5[2](v5, v19, 0);
}

- (void)requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [PHAUserFeedbackUpdater alloc];
  v10 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = [(PHAUserFeedbackUpdater *)v9 initWithGraphManager:v10];

  v14 = 0;
  v12 = [(PHAUserFeedbackUpdater *)v11 updateFeatureContentWithPersonUUIDs:v8 error:&v14];

  v13 = v14;
  v7[2](v7, v12, v13);
}

- (void)requestGraphModelResultWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v19 = 0;
  v10 = [v9 isReadyWithError:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AE48]];
    v13 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AE40]];
    if ([v12 isEqualToString:*MEMORY[0x277D3AE38]] && objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277D3AE50]))
    {
      v18 = 0;
      v14 = [v9 requestGraleSemanticLabelPropagationWithError:&v18];
      v15 = v18;
      v8[2](v8, v14, v15);
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported request - modelIdentifier: %@, inferenceKind: %@", v12, v13];
      v16 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v15;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v14 = [v16 errorWithDomain:@"com.apple.PhotoAnalysis.PHAStorytellingClientRequestHandler_MLModel" code:0 userInfo:v17];

      v8[2](v8, 0, v14);
    }
  }

  else
  {
    v8[2](v8, 0, v11);
  }
}

- (void)requestRelatedMomentsForPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [v9 isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v13 = [v9 assetCollectionsForPersonLocalIdentifiers:v12];

    v8[2](v8, v13, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestInferredMePersonLocalIdentifierWithErrorForContext:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v21 = 0;
  v9 = [v8 isReadyWithError:&v21];
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
    v11 = [v8 workingContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __111__PHAStorytellingClientRequestHandler_Person__requestInferredMePersonLocalIdentifierWithErrorForContext_reply___block_invoke;
    v12[3] = &unk_2788B1780;
    v12[4] = &v14;
    objc_copyWeak(&v13, &location);
    [v11 performSynchronousConcurrentGraphReadUsingBlock:v12];

    v7[2](v7, v15[5], 0);
    objc_destroyWeak(&v13);
    _Block_object_dispose(&v14, 8);

    objc_destroyWeak(&location);
  }

  else
  {
    (v7)[2](v7, 0, v10);
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

- (void)requestAssetsForPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [v9 isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v13 = [v9 assetIdentifiersForPersonLocalIdentifiers:v12];

    v8[2](v8, v13, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestAssetCollectionsForPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v15 = 0;
  v10 = [v9 isReadyWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v13 = [v9 assetCollectionsForPersonLocalIdentifiers:v12];

    v14 = [v13 valueForKey:@"localIdentifier"];
    v8[2](v8, v14, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestSocialGroupsOverlappingMemberLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [v9 isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v13 = [v9 socialGroupsOverlappingMemberLocalIdentifiers:v12];

    v8[2](v8, v13, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestAllSocialGroupsForMemberLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v13 = [v12 isReadyWithError:&v16];
  v14 = v16;
  if (v13)
  {
    v15 = [v12 allSocialGroupsForMemberLocalIdentifier:v9 options:v10];
    v11[2](v11, v15, 0);
  }

  else
  {
    (v11)[2](v11, 0, v14);
  }
}

- (void)requestSortedArrayOfPersonLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [v9 isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v13 = [v9 sortedArrayForPersonLocalIdentifiers:v12];

    v8[2](v8, v13, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestComposabilityScoresOfAssetsForLocalIdentifiers:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v9 = MEMORY[0x277D3B618];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v9 alloc];
  v14 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v16 = [v13 initWithPhotoLibrary:v14 options:v11];

  v15 = [v16 composabilityScoresOfAssetsForLocalIdentifiers:v12];

  v10[2](v10, v15, 0);
}

- (void)requestSignalModelInfosWithContext:(id)a3 reply:(id)a4
{
  v4 = MEMORY[0x277D3C798];
  v5 = a4;
  v6 = [[v4 alloc] initForTesting];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__PHAStorytellingClientRequestHandler_Curation__requestSignalModelInfosWithContext_reply___block_invoke;
  v9[3] = &unk_2788B17A8;
  v10 = v7;
  v8 = v7;
  [v6 enumerateClassificationBasedSignalModelsUsingBlock:v9];
  v5[2](v5, v8, 0);
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

- (void)runCurationWithItems:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v31[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 objectForKeyedSubscript:@"curationType"];
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
    v17 = [v10 objectForKeyedSubscript:@"verifiedPersonLocalIdentifiers"];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v17];
      [v16 setVerifiedPersonLocalIdentifiers:v18];
    }

    v28 = 0;
    v19 = [v16 dejunkedDedupedItemIdentifiersWithItems:v9 options:v10 debugInfo:&v28];
    v20 = v28;
  }

  else
  {
    if ([(__CFString *)v15 isEqualToString:@"curation"])
    {
      v16 = objc_alloc_init(MEMORY[0x277D3B668]);
      v27 = 0;
      v19 = [v16 bestItemIdentifiersWithItems:v9 options:v10 debugInfo:&v27];
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
    v23 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v24 = [v23 curationManager];
    v25 = [v24 curationCriteriaFactory];
    v16 = [v22 initWithCurationCriteriaFactory:v25];

    v26 = 0;
    v17 = [v16 keyItemIdentifierWithItems:v9 options:v10 debugInfo:&v26];
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
  v11[2](v11, v21, 0);
}

- (void)requestCurationScoreByAssetUUIDForAssetUUIDs:(id)a3 context:(id)a4 reply:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && ![v8 count])
  {
    (*(v10 + 2))(v10, MEMORY[0x277CBEC10], 0);
  }

  else
  {
    v11 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v12 = [v11 librarySpecificFetchOptions];
    v13 = [MEMORY[0x277D3B658] assetPropertySetsForCuration];
    [v12 setFetchPropertySets:v13];

    [v12 setWantsIncrementalChangeDetails:0];
    [v12 setIncludeGuestAssets:1];
    [v12 setChunkSizeForFetch:1000];
    [v12 setCacheSizeForFetch:1000];
    v36 = v9;
    v37 = v8;
    v35 = v10;
    v33 = v12;
    if (v8)
    {
      [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v8 options:v12];
    }

    else
    {
      [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v12];
    }
    v14 = ;
    v15 = [v14 count];
    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v15];
    v34 = v11;
    v40 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v11];
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
        v23 = [v40 curationSession];
        [v23 prepareAssets:v22];

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
              v31 = [v29 uuid];
              [v16 setObject:v30 forKeyedSubscript:v31];
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

    v10 = v35;
    (*(v35 + 2))(v35, v16, 0);

    v9 = v36;
    v8 = v37;
  }
}

- (void)requestGeoHashForAssetLocalIdentifiers:(id)a3 geoHashSize:(id)a4 context:(id)a5 reply:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v15 = [v14 librarySpecificFetchOptions];

  [v15 setChunkSizeForFetch:200];
  if (v10)
  {
    [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v10 options:v15];
  }

  else
  {
    [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v15];
  }
  v16 = ;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v16)
  {
    v33 = v15;
    v34 = v13;
    v35 = v12;
    v37 = v10;
    v39 = [v16 count];
    v36 = v11;
    v18 = [v11 integerValue];
    if ((v39 + 199) >= 0xC8)
    {
      v19 = v18;
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
                v31 = [v26 uuid];
                [v17 setObject:v30 forKeyedSubscript:v31];
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

    v13 = v34;
    (v34)[2](v34, v17, 0);
    v11 = v36;
    v10 = v37;
    v12 = v35;
    v15 = v33;
  }

  else
  {
    v32 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    v13[2](v13, 0, v32);
  }
}

- (void)requestIconicSceneScoreForAssetLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v46[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277D3B4C0]);
  v12 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v13 = [v12 librarySpecificFetchOptions];

  v14 = *MEMORY[0x277CD9B10];
  v46[0] = *MEMORY[0x277CD9A80];
  v46[1] = v14;
  v46[2] = *MEMORY[0x277CD9AD0];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  [v13 setFetchPropertySets:v15];

  [v13 setChunkSizeForFetch:200];
  if ([v8 count])
  {
    [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v8 options:v13];
  }

  else
  {
    [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v13];
  }
  v16 = ;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v16)
  {
    v32 = v13;
    v33 = v10;
    v34 = v9;
    v35 = v8;
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
                v31 = [v27 uuid];
                [v17 setObject:v29 forKeyedSubscript:v31];
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

    v10 = v33;
    (v33)[2](v33, v17, 0);
    v9 = v34;
    v8 = v35;
    v13 = v32;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    v10[2](v10, 0, v18);
  }
}

- (void)requestCurationDebugInformationForAsset:(id)a3 context:(id)a4 reply:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277CD97A8];
  v20 = v7;
  v9 = MEMORY[0x277CBEA60];
  v10 = a5;
  v11 = [v9 arrayWithObjects:&v20 count:1];
  v12 = [(PHAStorytellingClientRequestHandler *)self photoLibrary:v20];
  v13 = [v12 librarySpecificFetchOptions];
  v14 = [v8 fetchAssetsWithLocalIdentifiers:v11 options:v13];
  v15 = [v14 firstObject];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277D3C790]);
    v17 = [v15 photoLibrary];
    v18 = [v16 initWithPhotoLibrary:v17];

    v19 = [MEMORY[0x277D3B620] debugInformationForAsset:v15 curationContext:v18];
    v10[2](v10, v19, 0);

    v10 = v19;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (v10)[2](v10, 0, v18);
  }
}

- (void)requestUtilityAssetInformationWithContext:(id)a3 reply:(id)a4
{
  v8 = a4;
  v5 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v6 = [v5 utilityAssetInformation];

  if (v6)
  {
    v8[2](v8, v6, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (v8)[2](v8, 0, v7);
  }
}

- (void)requestCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v23 = 0;
  v13 = [v12 isReadyWithError:&v23];
  v14 = v23;
  if (v13)
  {
    v15 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v16 = [v15 librarySpecificFetchOptions];
    v17 = MEMORY[0x277CD97B8];
    v24[0] = v9;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v19 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:v16];
    v20 = [v19 firstObject];

    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v15];
      v22 = [v12 curationDebugInformationForAssetCollection:v20 options:v10 curationContext:v21];
      v11[2](v11, v22, 0);
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
      (v11)[2](v11, 0, v21);
    }
  }

  else
  {
    (v11)[2](v11, 0, v14);
  }
}

- (void)requestSummaryCurationForHighlightLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v10 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];
  v12 = MEMORY[0x277CD97B8];
  v17[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v11];
  v15 = [v14 firstObject];

  if (v15 && [v15 assetCollectionType] == 6)
  {
    v16 = [MEMORY[0x277D3BA40] summaryCurationForHighlight:v15];
    v9[2](v9, v16, 0);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (v9)[2](v9, 0, v16);
  }
}

- (void)requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v13 = os_signpost_id_generate(v12);
  info = 0;
  mach_timebase_info(&info);
  v14 = v12;
  v15 = v14;
  v44 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "RepresentativeAssetsRequest", "", buf, 2u);
  }

  v43 = mach_absolute_time();
  v16 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v10 allKeys];
    [v17 componentsJoinedByString:{@", "}];
    v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412546;
    v53 = v9;
    v54 = 2112;
    v55 = v18;
    _os_log_impl(&dword_22FA28000, v16, OS_LOG_TYPE_INFO, "Representative Assets Request: collectionID:%@ options:%@", buf, 0x16u);
  }

  v19 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v20 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:v9 options:v10 photoLibrary:v19];
  if (v20)
  {
    spid = v13;
    v40 = v11;
    v45 = v15;
    v41 = v10;
    v42 = v9;
    v21 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v19];
    v22 = [MEMORY[0x277D3B658] representativeAssetsForAssetCollection:v20 curationContext:v21 progressBlock:0];
    v23 = [MEMORY[0x277CBEB18] array];
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
          [v23 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v26);
    }

    v30 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [v23 count];
      v32 = COERCE_DOUBLE([v20 estimatedAssetCount]);
      *buf = 134218240;
      v53 = v31;
      v54 = 2048;
      v55 = v32;
      _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_INFO, "Representative Assets Reply: representativeAssetsCount:%ld collectionAssetsCount:%ld", buf, 0x16u);
    }

    v33 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v36 = v45;
    v37 = v36;
    v11 = v40;
    if (v44 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v37, OS_SIGNPOST_INTERVAL_END, spid, "RepresentativeAssetsRequest", "", buf, 2u);
    }

    v10 = v41;
    v9 = v42;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v53 = "RepresentativeAssetsRequest";
      v54 = 2048;
      v55 = ((((v33 - v43) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v37, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    (v40)[2](v40, v23, 0);

    v15 = v45;
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    v38 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v9;
      _os_log_error_impl(&dword_22FA28000, v38, OS_LOG_TYPE_ERROR, "Representative Assets Error: Failed to lookup collectionID:%@", buf, 0xCu);
    }

    v11[2](v11, 0, v21);
  }
}

- (void)requestCuratedAssetsForAssetCollectionWithLocalIdentifier:(id)a3 duration:(unint64_t)a4 options:(id)a5 context:(id)a6 reply:(id)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v53 = [v14 curationManager];

  v15 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v16 = os_signpost_id_generate(v15);
  info = 0;
  mach_timebase_info(&info);
  v17 = v15;
  v18 = v17;
  v52 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CuratedAssetsRequest", "", buf, 2u);
  }

  spid = v16;

  v49 = mach_absolute_time();
  v19 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    [MEMORY[0x277D3BA40] stringFromPGDuration:{a4, v16}];
    v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v21 = [v12 allKeys];
    v22 = [v21 componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v61 = v11;
    v62 = 2112;
    v63 = v20;
    v64 = 2112;
    v65 = v22;
    _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_INFO, "Curated Assets Request: collectionID:%@ duration:%@ options:%@", buf, 0x20u);
  }

  v23 = [v12 objectForKeyedSubscript:@"PHPhotosGraphOptionPersonLocalIdentifiersToFocus"];
  if ([v23 count] == 1)
  {
    v50 = v13;
    v51 = v11;
    v24 = [v23 firstObject];
    v25 = [v53 curatedAssetsForPersonLocalIdentifier:v24 progressBlock:0];
LABEL_20:

    v34 = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v24 = v25;
    v36 = [v24 countByEnumeratingWithState:&v54 objects:v59 count:16];
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
            objc_enumerationMutation(v24);
          }

          v40 = [(PHAStorytellingClientRequestHandler *)self informationDictionaryForAsset:*(*(&v54 + 1) + 8 * i), spid];
          [v34 addObject:v40];
        }

        v37 = [v24 countByEnumeratingWithState:&v54 objects:v59 count:16];
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

    v13 = v50;
    v11 = v51;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v61 = "CuratedAssetsRequest";
      v62 = 2048;
      v63 = ((((v41 - v49) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v45, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v46 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = [v34 count];
      *buf = 134217984;
      v61 = v47;
      _os_log_impl(&dword_22FA28000, v46, OS_LOG_TYPE_INFO, "Curated Assets Reply: collectionAssetsCount:%lu", buf, 0xCu);
    }

    (v50)[2](v50, v34, 0);
    goto LABEL_35;
  }

  v24 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v26 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:v11 options:v12 photoLibrary:v24];
  if (v26)
  {
    v27 = v26;
    v50 = v13;
    v51 = v11;
    v28 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v24];
    v29 = [v53 optimalDurationForAssetCollection:v27 duration:a4 options:v12 curationContext:v28];
    v30 = [objc_alloc(MEMORY[0x277D3B660]) initWithDuration:v29];
    if (v23 && [v23 count] >= 2)
    {
      v31 = [MEMORY[0x277CBEB98] setWithArray:v23];
      v25 = [v53 curatedAssetsForAssetCollection:v27 duration:v29 referencePersonLocalIdentifiers:v31 curationContext:v28 progressBlock:0];
    }

    else
    {
      v32 = [v12 objectForKeyedSubscript:{@"PHPhotosGraphOptionCurationTypeDedupe", spid}];
      v33 = [v32 BOOLValue];

      if (v33)
      {
        [v53 dejunkAndDedupeAssetsInAssetCollection:v27 options:v12 curationContext:v28 progressBlock:0];
      }

      else
      {
        [v30 setIncludesAllFaces:1];
        [v53 curatedAssetsForAssetCollection:v27 options:v30 curationContext:v28 progressBlock:0];
      }
      v25 = ;
    }

    goto LABEL_20;
  }

  v34 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
  v35 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v61 = v11;
    _os_log_error_impl(&dword_22FA28000, v35, OS_LOG_TYPE_ERROR, "Curated Assets Error: Failed to lookup collectionID:%@", buf, 0xCu);
  }

  v13[2](v13, 0, v34);
LABEL_35:
}

- (void)requestCuratedAssetForAssetCollectionWithLocalIdentifier:(id)a3 referenceAssetLocalIdentifier:(id)a4 options:(id)a5 context:(id)a6 reply:(id)a7
{
  v86 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v16 = os_signpost_id_generate(v15);
  info = 0;
  mach_timebase_info(&info);
  v17 = v15;
  v18 = v17;
  v71 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CuratedKeyAssetRequest", "", buf, 2u);
  }

  spid = v16;

  v70 = mach_absolute_time();
  v19 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v13 allKeys];
    v21 = [v20 componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v81 = v11;
    v82 = 2112;
    v83 = *&v12;
    v84 = 2112;
    v85 = v21;
    _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_INFO, "Curated Key Asset Request: collectionID:%@ referenceAssetID:%@ options:%@", buf, 0x20u);
  }

  v73 = v18;

  v22 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v23 = [v13 objectForKeyedSubscript:@"PHPhotosGraphOptionPersonLocalIdentifiersToFocus"];
  v74 = v22;
  v72 = v23;
  if ([v23 count] != 1)
  {
    v37 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v24 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:v11 options:v13 photoLibrary:v37];

    if (!v24)
    {
      v36 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
      v46 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      v47 = v18;
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
LABEL_46:

        v14[2](v14, 0, v36);
        goto LABEL_47;
      }

      *buf = 138412290;
      v81 = v11;
      v48 = "Curated Key Asset Error: Failed to lookup collectionID:%@";
      v49 = v46;
      v50 = 12;
LABEL_49:
      _os_log_error_impl(&dword_22FA28000, v49, OS_LOG_TYPE_ERROR, v48, buf, v50);
      goto LABEL_46;
    }

    if (v12)
    {
      v66 = v13;
      v38 = MEMORY[0x277CD97A8];
      v76 = v12;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
      v40 = v74;
      v41 = [v74 librarySpecificFetchOptions];
      v42 = [v38 fetchAssetsWithLocalIdentifiers:v39 options:v41];
      v43 = [v42 firstObject];

      if (!v43)
      {
        v44 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v81 = v12;
          _os_log_error_impl(&dword_22FA28000, v44, OS_LOG_TYPE_ERROR, "Curated Key Asset Error: Failed to lookup referenceAssetID:%@", buf, 0xCu);
        }
      }

      v45 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      v13 = v66;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v81 = v11;
        v82 = 2112;
        v83 = *&v43;
        _os_log_impl(&dword_22FA28000, v45, OS_LOG_TYPE_INFO, "Curated Key Asset Request: referenceAssetID:%@ is referenceAsset:%@", buf, 0x16u);
      }
    }

    else
    {
      v43 = 0;
      v40 = v74;
    }

    v51 = [v13 objectForKeyedSubscript:@"PHPhotosGraphOptionPersonLocalIdentifiersToFocus"];
    v30 = v51;
    v67 = v11;
    v69 = v12;
    v64 = v43;
    if (v51 && [v51 count])
    {
      v27 = objc_alloc_init(MEMORY[0x277D3BA18]);
      v52 = [MEMORY[0x277CBEB98] setWithArray:v30];
      [v27 setReferencePersonLocalIdentifiers:v52];

      [v27 setFocusOnPeople:1];
      [v27 setComplete:1];
    }

    else
    {
      if (v43)
      {
        v53 = [objc_alloc(MEMORY[0x277D3BA18]) initWithReferenceAsset:v43];
      }

      else
      {
        v53 = objc_alloc_init(MEMORY[0x277D3BA18]);
      }

      v27 = v53;
    }

    [v27 setAllowContextualTrip:0];
    v31 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v34 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v40];
    if ([v31 isReady])
    {
      v36 = [v31 curatedKeyAssetForAssetCollection:v24 curatedAssetCollection:0 options:v27 curationContext:v34];
    }

    else
    {
      [v31 curationManager];
      v54 = v14;
      v56 = v55 = v13;
      v36 = [v56 curatedKeyAssetForAssetCollection:v24 curatedAssetCollection:0 options:v27 criteria:0 curationContext:v34];

      v13 = v55;
      v14 = v54;
    }

    goto LABEL_34;
  }

  v24 = [v22 librarySpecificFetchOptions];
  [v24 setIncludedDetectionTypes:&unk_2844CCA80];
  v25 = [MEMORY[0x277CD9938] fetchPersonsWithLocalIdentifiers:v23 options:v24];
  v26 = [v25 firstObject];

  if (!v26)
  {
    v36 = 0;
    goto LABEL_36;
  }

  v65 = v13;
  v69 = v12;
  v27 = [v22 librarySpecificFetchOptions];
  v79 = *MEMORY[0x277CD9BD0];
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  [v27 setFetchPropertySets:v28];

  [v27 setIncludedDetectionTypes:&unk_2844CCA80];
  v29 = [MEMORY[0x277CD9868] fetchKeyFaceForPerson:v26 options:v27];
  v30 = [v29 firstObject];

  if (v30)
  {
    v64 = v26;
    v67 = v11;
    v31 = [v22 librarySpecificFetchOptions];
    v78 = *MEMORY[0x277CD9AA8];
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    [v31 setFetchPropertySets:v32];

    v33 = MEMORY[0x277CD97A8];
    v77 = v30;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    v35 = [v33 fetchAssetsForFaces:v34 options:v31];
    v36 = [v35 firstObject];

    v13 = v65;
LABEL_34:

    v11 = v67;
    v26 = v64;
    goto LABEL_35;
  }

  v36 = 0;
LABEL_35:

  v12 = v69;
LABEL_36:

  if (!v36)
  {
    v36 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9];
    v46 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    v47 = v73;
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v48 = "Curated Key Asset Error: Failed to process curated key asset";
    v49 = v46;
    v50 = 2;
    goto LABEL_49;
  }

  v57 = [(PHAStorytellingClientRequestHandler *)self informationDictionaryForAsset:v36];
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

  v63 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v81 = v36;
    _os_log_impl(&dword_22FA28000, v63, OS_LOG_TYPE_INFO, "Curated Key Asset Reply: curatedKeyAsset:%@", buf, 0xCu);
  }

  (v14)[2](v14, v57, 0);
LABEL_47:
}

- (id)informationDictionaryForAsset:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 localIdentifier];

  [v5 setObject:v6 forKeyedSubscript:@"PHRelatedAssetIdentifierKey"];

  return v5;
}

- (void)requestUpNextMemoriesWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v20 = 0;
  v12 = [v11 isReadyWithError:&v20];
  v13 = v20;
  if (v12)
  {
    objc_initWeak(&location, self);
    v14 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__PHAStorytellingClientRequestHandler_UpNext__requestUpNextMemoriesWithOptions_context_reply___block_invoke;
    block[3] = &unk_2788B1810;
    objc_copyWeak(&v18, &location);
    v16 = v8;
    v17 = v10;
    dispatch_async(v14, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v10 + 2))(v10, 0, v13);
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

- (id)_pvFaceFromPHFace:(id)a3 copyPropertiesOption:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [PVFace alloc];
  v8 = [v6 localIdentifier];
  v9 = [(PVObject *)v7 initWithLocalIdentifier:v8];

  if (a4)
  {
    v10 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = a4;
      _os_log_error_impl(&dword_22FA28000, v10, OS_LOG_TYPE_ERROR, "pvFaceFromPHFace option not supported: %d", v14, 8u);
    }
  }

  else
  {
    v11 = [v6 personLocalIdentifier];
    [(PVFace *)v9 setPersonLocalIdentifier:v11];

    -[PVFace setSourceWidth:](v9, "setSourceWidth:", [v6 sourceWidth]);
    -[PVFace setSourceHeight:](v9, "setSourceHeight:", [v6 sourceHeight]);
    [v6 centerX];
    [(PVFace *)v9 setCenterX:?];
    [v6 centerY];
    [(PVFace *)v9 setCenterY:?];
    [v6 size];
    [(PVFace *)v9 setSize:?];
    -[PVFace setHasSmile:](v9, "setHasSmile:", [v6 hasSmile]);
    [v6 blurScore];
    [(PVFace *)v9 setBlurScore:?];
    -[PVFace setIsLeftEyeClosed:](v9, "setIsLeftEyeClosed:", [v6 isLeftEyeClosed]);
    -[PVFace setIsRightEyeClosed:](v9, "setIsRightEyeClosed:", [v6 isRightEyeClosed]);
    [v6 poseYaw];
    [(PVFace *)v9 setPoseYaw:?];
    -[PVFace setFaceAlgorithmVersion:](v9, "setFaceAlgorithmVersion:", [v6 faceAlgorithmVersion]);
    -[PVFace setQualityMeasure:](v9, "setQualityMeasure:", [v6 qualityMeasure]);
    -[PVFace setHidden:](v9, "setHidden:", [v6 isHidden]);
    -[PVFace setIsInTrash:](v9, "setIsInTrash:", [v6 isInTrash]);
    -[PVFace setManual:](v9, "setManual:", [v6 manual]);
    v12 = [v6 adjustmentVersion];
    [(PVFace *)v9 setAdjustmentVersion:v12];

    -[PVFace setNameSource:](v9, "setNameSource:", [v6 nameSource]);
    -[PVFace setTrainingType:](v9, "setTrainingType:", [v6 trainingType]);
    -[PVFace setClusterSequenceNumber:](v9, "setClusterSequenceNumber:", [v6 clusterSequenceNumber]);
  }

  return v9;
}

- (id)_generateFaceCropForFaceCropSourceDescriptors:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
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
    v7 = [PVFaceCropGenerator generateFaceCropsFromSourceDescriptors:v4 withProgressBlock:0 failureBlock:&v13 canceler:v6];
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

- (id)_pvImageForAsset:(id)a3 targetSize:(CGSize)a4 error:(id *)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
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
  v10 = [MEMORY[0x277CD9898] defaultManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__PHAStorytellingClientRequestHandler_Face___pvImageForAsset_targetSize_error___block_invoke;
  v14[3] = &unk_2788B1938;
  v16 = &v17;
  v14[4] = self;
  v11 = v8;
  v15 = v11;
  [v10 requestNewCGImageForAsset:v11 targetSize:0 contentMode:v9 options:v14 resultHandler:{width, height}];

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

- (void)requestOnDemandFaceCropsForFaceLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v83 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v12 = v11;
  if (!v11)
  {
    v51 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:13];
    v10[2](v10, 0, v51);

    goto LABEL_49;
  }

  v54 = v11;
  v55 = v10;
  v56 = v9;
  v69 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  [v14 setIncludeTrashedAssets:1];
  v67 = v14;
  [v14 setIncludeHiddenAssets:1];
  v15 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v16 = [v15 librarySpecificFetchOptions];

  v57 = v8;
  v17 = [MEMORY[0x277CD9868] fetchFacesWithLocalIdentifiers:v8 options:v16];
  v53 = v16;
  v18 = [MEMORY[0x277CD9870] fetchFaceCropByFaceLocalIdentifierForFaces:v17 fetchOptions:v16];
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
  v58 = self;
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
      v25 = [v23 localIdentifier];
      v26 = [v18 objectForKeyedSubscript:v25];

      if (v26)
      {
        v27 = [v26 resourceData];
        if (v27)
        {
          v28 = v27;
          v29 = [v26 uuid];
          [v69 setObject:v28 forKeyedSubscript:v29];
          goto LABEL_42;
        }

        v29 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v77 = v23;
          v46 = v29;
          v47 = "Error persisted facecrop is nil for PHFace: %@";
          goto LABEL_45;
        }

        goto LABEL_23;
      }

      v30 = [(PHAStorytellingClientRequestHandler *)self _pvFaceFromPHFace:v23 copyPropertiesOption:0];
      if (!v30)
      {
        v29 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v77 = v23;
          v46 = v29;
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
      v29 = [v31 fetchAssetsForFaces:v32 options:v67];

      if ([v29 count])
      {
        v33 = [v29 firstObject];
        v34 = [v33 pixelWidth];
        v35 = [v33 pixelHeight];
        if (v34 <= v35)
        {
          v34 = v35;
        }

        [v23 size];
        v37 = 128.0 / v36;
        if (v37 >= v34)
        {
          v37 = v34;
        }

        v71 = 0;
        v38 = [(PHAStorytellingClientRequestHandler *)self _pvImageForAsset:v33 targetSize:&v71 error:v37, v37];
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
          v42 = [v41 firstObject];
          if (v42)
          {
            v43 = [v33 cloudIdentifier];
            v44 = v43;
            if (v43)
            {
              v45 = v43;
            }

            else
            {
              v45 = [v33 uuid];
            }

            log = v45;
            v38 = v59;

            v49 = [v42 faceCropData];
            if (v49)
            {
              [v69 setObject:v49 forKeyedSubscript:log];
            }

            else
            {
              v60 = [(PHAStorytellingClientRequestHandler *)v58 loggingConnection];
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                *buf = v52;
                v77 = v23;
                v78 = 2112;
                v79 = v33;
                _os_log_error_impl(&dword_22FA28000, v60, OS_LOG_TYPE_ERROR, "Error generated facecrop is nil for PHFace: %@, PHAsset: %@", buf, 0x16u);
              }
            }

            self = v58;
            v48 = v62;
          }

          else
          {
            log = [(PHAStorytellingClientRequestHandler *)v40 loggingConnection];
            self = v40;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v77 = v33;
              _os_log_error_impl(&dword_22FA28000, log, OS_LOG_TYPE_ERROR, "Error getting PVFaceCrop from PHAsset: %@", buf, 0xCu);
            }

            v48 = v62;
            v38 = v59;
          }
        }

        else
        {
          v48 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v77 = v33;
            _os_log_error_impl(&dword_22FA28000, v48, OS_LOG_TYPE_ERROR, "Error getting PVImage from PHAsset: %@", buf, 0xCu);
          }
        }

        v18 = v66;
      }

      else
      {
        v33 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v77 = v23;
          _os_log_error_impl(&dword_22FA28000, v33, OS_LOG_TYPE_ERROR, "No corresponding asset for PHFace: %@", buf, 0xCu);
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

  v10 = v55;
  (v55)[2](v55, v69, 0);

  v9 = v56;
  v8 = v57;
  v12 = v54;
LABEL_49:
}

- (void)_cacheAllSongSourcesWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = MEMORY[0x277D3BAE8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__PHAStorytellingClientRequestHandler_Music___cacheAllSongSourcesWithCompletionHandler___block_invoke_238;
  v11[3] = &unk_2788B1D00;
  v16 = v19;
  v8 = v6;
  v17 = v24;
  v18 = v22;
  v12 = v8;
  v13 = self;
  v9 = v5;
  v14 = v9;
  v10 = v4;
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

- (void)requestMaestroSongsWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  location[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v24 = 0;
  v12 = [v11 isReadyWithError:&v24];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    v14 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_fault_impl(&dword_22FA28000, v14, OS_LOG_TYPE_FAULT, "[MemoriesMusic] requestMaestroSongsWithOptions requested when graph not ready. Request will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  v15 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__PHAStorytellingClientRequestHandler_Music__requestMaestroSongsWithOptions_context_reply___block_invoke;
  block[3] = &unk_2788B1C88;
  objc_copyWeak(&v23, location);
  v21 = v11;
  v22 = v10;
  v20 = v8;
  v16 = v11;
  v17 = v8;
  v18 = v10;
  dispatch_async(v15, block);

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

- (void)requestRecentlyUsedSongsWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  location[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v24 = 0;
  v12 = [v11 isReadyWithError:&v24];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    v14 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_fault_impl(&dword_22FA28000, v14, OS_LOG_TYPE_FAULT, "[MemoriesMusic] requestRecentlyUsedSongsWithOptions requested when graph not ready. Request will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  v15 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__PHAStorytellingClientRequestHandler_Music__requestRecentlyUsedSongsWithOptions_context_reply___block_invoke;
  block[3] = &unk_2788B1C88;
  objc_copyWeak(&v23, location);
  v21 = v11;
  v22 = v10;
  v20 = v8;
  v16 = v11;
  v17 = v8;
  v18 = v10;
  dispatch_async(v15, block);

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

- (void)requestFlexMusicCurationWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  location[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v24 = 0;
  v12 = [v11 isReadyWithError:&v24];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    v14 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_fault_impl(&dword_22FA28000, v14, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Flex Music Curation with options requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  v15 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationWithOptions_context_reply___block_invoke;
  block[3] = &unk_2788B1C88;
  objc_copyWeak(&v23, location);
  v21 = v11;
  v22 = v10;
  v20 = v8;
  v16 = v11;
  v17 = v8;
  v18 = v10;
  dispatch_async(v15, block);

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

- (void)requestMusicCurationWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  location[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v24 = 0;
  v12 = [v11 isReadyWithError:&v24];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    v14 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_fault_impl(&dword_22FA28000, v14, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Apple Music Curation with options requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  v15 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__PHAStorytellingClientRequestHandler_Music__requestMusicCurationWithOptions_context_reply___block_invoke;
  block[3] = &unk_2788B1C88;
  objc_copyWeak(&v23, location);
  v21 = v11;
  v22 = v10;
  v20 = v8;
  v16 = v11;
  v17 = v8;
  v18 = v10;
  dispatch_async(v15, block);

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

- (void)requestCacheSongSourceWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = [a3 objectForKeyedSubscript:*MEMORY[0x277D3B048]];
  v9 = MEMORY[0x277D22C80];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__PHAStorytellingClientRequestHandler_Music__requestCacheSongSourceWithOptions_context_reply___block_invoke;
  v22[3] = &unk_2788B1C38;
  v22[4] = self;
  v10 = v8;
  v23 = v10;
  v11 = [v9 progressReporterWithProgressBlock:v22];
  v12 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  if (![v10 isEqualToString:*MEMORY[0x277D3B018]])
  {
    if ([v10 isEqualToString:*MEMORY[0x277D3B038]])
    {
      [MEMORY[0x277D3BAE8] prefetchCuratedSongLibraryAssetsWithProgressReporter:v11 completionHandler:v7];
      goto LABEL_13;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D3B020]])
    {
      v13 = MEMORY[0x277D3BAC8];
      v14 = [(PHAStorytellingClientRequestHandler *)self graphManager];
      [v13 cacheMusicForMomentsInPhotoLibrary:v12 graphManager:v14 progressReporter:v11 completionHandler:v7];
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
          v21 = v7;
          v19 = v12;
          v20 = v11;
          [v16 cacheMusicForMomentsInPhotoLibrary:v19 progressReporter:v20 completionHandler:v18];

          goto LABEL_13;
        }

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown song source type: %@", v10];
        v17 = [MEMORY[0x277D3B698] errorWithCode:0 description:v14];
        (*(v7 + 2))(v7, 0, v17);

        goto LABEL_7;
      }

      v15 = MEMORY[0x277D3BAF0];
    }

    [v15 cacheMusicForMomentsInPhotoLibrary:v12 progressReporter:v11 completionHandler:v7];
    goto LABEL_13;
  }

  [(PHAStorytellingClientRequestHandler *)self _cacheAllSongSourcesWithCompletionHandler:v7];
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

- (void)requestMusicCatalogAdamIDsForPurchasedSongID:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__PHAStorytellingClientRequestHandler_Music__requestMusicCatalogAdamIDsForPurchasedSongID_options_context_reply___block_invoke;
  v29[3] = &unk_2788B2258;
  v29[4] = self;
  v14 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:v29];
  v15 = [objc_alloc(MEMORY[0x277D3BAB8]) initWithRequestOptionsDictionary:v11 inflationActionSource:2];
  objc_initWeak(&location, self);
  v16 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __113__PHAStorytellingClientRequestHandler_Music__requestMusicCatalogAdamIDsForPurchasedSongID_options_context_reply___block_invoke_220;
  v21[3] = &unk_2788B1BE8;
  objc_copyWeak(&v27, &location);
  v25 = v14;
  v26 = v13;
  v22 = v15;
  v23 = self;
  v24 = v10;
  v17 = v14;
  v18 = v10;
  v19 = v15;
  v20 = v13;
  dispatch_async(v16, v21);

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

- (void)requestClearMusicCacheWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v6 = MEMORY[0x277D3BB08];
  v7 = a5;
  v8 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = 0;
  [v6 cacheRemoveAllForPhotoLibrary:v8 error:&v11];
  v9 = v11;

  v10 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v9];

  v7[2](v7, v10);
}

- (void)requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = [v9 _fetchOptionsForMusicCurationWithPhotoLibrary:v10];

  v12 = MEMORY[0x277CD97B8];
  v26[0] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v11];
  v15 = [v14 firstObject];

  if (v15)
  {
    v16 = MEMORY[0x277D3BB08];
    v17 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v18 = [MEMORY[0x277D22C80] ignoreProgress];
    v23 = 0;
    v19 = [v16 generateFlexMusicCurationDebugInformationForAssetCollection:v15 graphManager:v17 progressReporter:v18 error:&v23];
    v20 = v23;

    v21 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v20];

    v8[2](v8, v19, v21);
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Flex music curation metadata for asset collection requested but no asset collections could be fetched from the specified local identifier: %@", v7];
    v22 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v19;
      _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Metadata Request Error: %@", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:v19];
    v8[2](v8, 0, v21);
  }
}

- (void)requestFlexMusicCurationDebugInformationForSongWithUID:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = MEMORY[0x277D3BB08];
  v8 = a5;
  v9 = a3;
  v10 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = [MEMORY[0x277D22C80] ignoreProgress];
  v15 = 0;
  v12 = [v7 generateFlexMusicCurationDebugInformationForSongWithUID:v9 graphManager:v10 progressReporter:v11 error:&v15];

  v13 = v15;
  v14 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v13];

  v8[2](v8, v12, v14);
}

- (void)requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = [v9 _fetchOptionsForMusicCurationWithPhotoLibrary:v10];

  v12 = MEMORY[0x277CD97B8];
  v26[0] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v11];
  v15 = [v14 firstObject];

  if (v15)
  {
    v16 = MEMORY[0x277D3BB08];
    v17 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v18 = [MEMORY[0x277D22C80] ignoreProgress];
    v23 = 0;
    v19 = [v16 generateMusicCurationDebugInformationForAssetCollection:v15 graphManager:v17 progressReporter:v18 error:&v23];
    v20 = v23;

    v21 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v20];

    v8[2](v8, v19, v21);
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Music curation metadata for asset collection requested but no asset collections could be fetched from the specified local identifier: %@", v7];
    v22 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v19;
      _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Music Curation Metadata Request Error: %@", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:v19];
    v8[2](v8, 0, v21);
  }
}

- (void)requestMusicCurationDebugInformationForSongWithAdamID:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = MEMORY[0x277D3BB08];
  v8 = a5;
  v9 = a3;
  v10 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = [MEMORY[0x277D22C80] ignoreProgress];
  v15 = 0;
  v12 = [v7 generateMusicCurationDebugInformationForSongWithAdamID:v9 graphManager:v10 progressReporter:v11 error:&v15];

  v13 = v15;
  v14 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v13];

  v8[2](v8, v12, v14);
}

- (void)requestPrecachingOfAudioDataForAdamIDs:(id)a3 context:(id)a4 reply:(id)a5
{
  v6 = MEMORY[0x277D3BAA0];
  v7 = MEMORY[0x277D22C80];
  v8 = a5;
  v9 = a3;
  v10 = [v7 ignoreProgress];
  [v6 cacheSongAudioForAdamIDs:v9 progressReporter:v10 completionHandler:v8];
}

- (void)requestMusicCacheStatusWithContext:(id)a3 reply:(id)a4
{
  v5 = MEMORY[0x277D3BB08];
  v6 = a4;
  v7 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v11 = 0;
  v8 = [v5 cacheStatusWithPhotoLibrary:v7 error:&v11];
  v9 = v11;

  v10 = [MEMORY[0x277D3B698] xpcSafeErrorWithError:v9];

  v6[2](v6, v8, v10);
}

- (void)requestSongsForAdamIDs:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke;
  v30[3] = &unk_2788B2258;
  v30[4] = self;
  v14 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:v30];
  v15 = [objc_alloc(MEMORY[0x277D3BAB8]) initWithRequestOptionsDictionary:v11 inflationActionSource:2];
  objc_initWeak(&location, self);
  v16 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__PHAStorytellingClientRequestHandler_Music__requestSongsForAdamIDs_options_context_reply___block_invoke_209;
  v22[3] = &unk_2788B1BE8;
  objc_copyWeak(&v28, &location);
  v26 = v14;
  v27 = v13;
  v23 = v15;
  v24 = v10;
  v25 = v11;
  v17 = v14;
  v18 = v11;
  v19 = v10;
  v20 = v15;
  v21 = v13;
  dispatch_async(v16, v22);

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

- (void)requestFlexMusicCurationForAssetLocalIdentifiers:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  location[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v25 = a5;
  v12 = a6;
  v13 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v10 options:v14];
  v16 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v31 = 0;
  v17 = [v16 isReadyWithError:&v31];
  v18 = v31;
  if ((v17 & 1) == 0)
  {
    v19 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v18;
      _os_log_fault_impl(&dword_22FA28000, v19, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Flex Music curation requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  v20 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationForAssetLocalIdentifiers_options_context_reply___block_invoke;
  block[3] = &unk_2788B1B70;
  v29 = v16;
  v30 = v12;
  block[4] = self;
  v27 = v11;
  v28 = v15;
  v21 = v16;
  v22 = v15;
  v23 = v11;
  v24 = v12;
  dispatch_async(v20, block);

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

- (void)requestFlexMusicCurationForAssetCollectionLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v36[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v16 = [v14 _fetchOptionsForMusicCurationWithPhotoLibrary:v15];

  v17 = MEMORY[0x277CD97B8];
  v36[0] = v10;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v19 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:v16];
  v20 = [v19 firstObject];

  if (v20)
  {
    v21 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v34 = 0;
    v22 = [v21 isReadyWithError:&v34];
    v23 = v34;
    if ((v22 & 1) == 0)
    {
      v24 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v23;
        _os_log_fault_impl(&dword_22FA28000, v24, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Flex Music curation requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
      }
    }

    objc_initWeak(location, self);
    v25 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __126__PHAStorytellingClientRequestHandler_Music__requestFlexMusicCurationForAssetCollectionLocalIdentifier_options_context_reply___block_invoke;
    block[3] = &unk_2788B1B48;
    objc_copyWeak(&v33, location);
    v32 = v13;
    v29 = v11;
    v30 = v20;
    v31 = v21;
    v26 = v21;
    dispatch_async(v25, block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"flex music curation requested but no asset collection could be fetched from the specified local identifier: %@", v10];
    v27 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v26;
      _os_log_error_impl(&dword_22FA28000, v27, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Error: %@", location, 0xCu);
    }

    v23 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:v26];
    (*(v13 + 2))(v13, 0, v23);
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

- (void)requestMusicCurationForAssetLocalIdentifiers:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  location[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v24 = a5;
  v12 = a6;
  v13 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v10 options:v14];
  v16 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v31 = 0;
  v17 = [v16 isReadyWithError:&v31];
  v18 = v31;
  if ((v17 & 1) == 0)
  {
    v19 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v18;
      _os_log_fault_impl(&dword_22FA28000, v19, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Music Curation requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
    }
  }

  objc_initWeak(location, self);
  v20 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__PHAStorytellingClientRequestHandler_Music__requestMusicCurationForAssetLocalIdentifiers_options_context_reply___block_invoke;
  block[3] = &unk_2788B1B48;
  objc_copyWeak(&v30, location);
  v26 = v11;
  v27 = v15;
  v28 = self;
  v29 = v12;
  v21 = v15;
  v22 = v11;
  v23 = v12;
  dispatch_async(v20, block);

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

- (void)requestMusicCurationForAssetCollectionLocalIdentifier:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v36[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v16 = [v14 _fetchOptionsForMusicCurationWithPhotoLibrary:v15];

  v17 = MEMORY[0x277CD97B8];
  v36[0] = v10;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v19 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:v16];
  v20 = [v19 firstObject];

  if (v20)
  {
    v21 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v34 = 0;
    v22 = [v21 isReadyWithError:&v34];
    v23 = v34;
    if ((v22 & 1) == 0)
    {
      v24 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v23;
        _os_log_fault_impl(&dword_22FA28000, v24, OS_LOG_TYPE_FAULT, "[MemoriesMusic] Music Curation requested when graph not ready, curation will proceed, but results may be non-optimal: %@", location, 0xCu);
      }
    }

    objc_initWeak(location, self);
    v25 = [(PHAStorytellingClientRequestHandler *)self musicRequestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__PHAStorytellingClientRequestHandler_Music__requestMusicCurationForAssetCollectionLocalIdentifier_options_context_reply___block_invoke;
    block[3] = &unk_2788B1B48;
    objc_copyWeak(&v33, location);
    v32 = v13;
    v29 = v11;
    v30 = v20;
    v31 = v21;
    v26 = v21;
    dispatch_async(v25, block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"music curation requested but no asset collections could be fetched from the specified local identifier: %@", v10];
    v27 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v26;
      _os_log_error_impl(&dword_22FA28000, v27, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Music Curation Error: %@", location, 0xCu);
    }

    v23 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:v26];
    (*(v13 + 2))(v13, 0, v23);
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

+ (id)_aggregateErrorWithErrorDescriptions:(id)a3
{
  v3 = [a3 componentsJoinedByString:@"\n"];
  v4 = [MEMORY[0x277D3B698] errorWithCode:-1 description:v3];

  return v4;
}

+ (id)_fetchOptionsForMusicCurationWithPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setIncludePendingMemories:1];
  [v3 setIncludeLocalMemories:1];
  [v3 setIncludeStoryMemories:1];

  return v3;
}

- (void)requestHighlightEstimatesWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v16 = 0;
  v7 = [v6 isReadyWithError:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = [v6 workingContext];
    v10 = [objc_alloc(MEMORY[0x277D3B9D8]) initWithWorkingContext:v9];
    v11 = objc_alloc(MEMORY[0x277D3C790]);
    v12 = [v6 photoLibrary];
    v13 = [v11 initWithPhotoLibrary:v12];

    v14 = [v10 highlightEstimatesDictionaryWithCurationContext:v13];
    v15 = [v10 highlightEstimatesDescriptionWithCurationContext:v13];
    v5[2](v5, v14, v15, 0);
  }

  else
  {
    (v5)[2](v5, 0, 0, v8);
  }
}

- (void)requestHighlightDebugInformationForHighlightWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v15 = [v9 librarySpecificFetchOptions];

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier == %@", v8];

  [v15 setPredicate:v10];
  v11 = [MEMORY[0x277CD9958] fetchHighlightsWithOptions:v15];
  v12 = [v11 firstObject];
  if (v12)
  {
    v13 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v14 = [v13 highlightDebugInformationWithHighlight:v12];

    v7[2](v7, v14, 0);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (v7)[2](v7, 0, v14);
  }
}

- (void)requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress)
  {
    [requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress cancelOperation];
  }

  v9 = [objc_alloc(MEMORY[0x277D22C98]) initWithProgressBlock:&__block_literal_global_3201];
  objc_storeStrong(&requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress, v9);
  objc_sync_exit(v8);

  v10 = [(PHAStorytellingClientRequestHandler *)v8 graphManager];
  v11 = objc_opt_class();
  objc_sync_enter(v11);
  v24 = 0;
  v12 = [PHASharedLibrarySuggestionGenerationTask resetSuggestionsWithGraphManager:v10 error:&v24];
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
  v14 = [v10 isReadyWithError:&v23];
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
    v14 = [(PHASharedLibrarySuggestionGenerationTask *)v18 runWithGraphManager:v10 progressReporter:v9 error:&v22];
    v21 = v18;
    v17 = v22;

    v15 = v21;
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  objc_sync_exit(v11);

  v19 = v8;
  objc_sync_enter(v19);
  v20 = requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress;
  if (requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress == v9)
  {
    requestReprocessSuggestionsOnLibraryScopeRulesChangeWithContext_reply__suggestionTaskProgress = 0;
  }

  objc_sync_exit(v19);

  v7[2](v7, v14, v13);
}

- (void)requestCameraSmartSharingProcessingForLibraryScopeWithUUID:(id)a3 withOptions:(id)a4 context:(id)a5 reply:(id)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v10 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = objc_alloc_init(PHACameraSmartSharingTask);
  if (v8)
  {
    v12 = [MEMORY[0x277CD98A8] localIdentifierWithUUID:v8];
    [(PHACameraSmartSharingTask *)v11 setLibraryScopeLocalIdentifier:v12];
  }

  v13 = [MEMORY[0x277D22C80] ignoreProgress];
  v18 = 0;
  v14 = [(PHACameraSmartSharingTask *)v11 runWithGraphManager:v10 progressReporter:v13 error:&v18];
  v15 = v18;

  v19 = @"result";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v20[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v9[2](v9, v17, v15);
}

- (void)requestStartSharedLibrarySuggestionResultWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v13 = 0;
  v7 = [v6 isReadyWithError:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v12 = v8;
    v10 = [v6 suggestsToStartSharedLibraryWithError:&v12];
    v11 = v12;

    v5[2](v5, v10, v11);
    v9 = v11;
  }

  else
  {
    v5[2](v5, 0, v8);
  }
}

- (void)requestSuggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)a3 withOptions:(id)a4 context:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v19 = 0;
  v13 = [v12 isReadyWithError:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v18 = v14;
    v16 = [v12 suggestedMomentLocalIdentifiersForPersonLocalIdentifiers:v9 withOptions:v10 error:&v18];
    v17 = v18;

    v11[2](v11, v16, v17);
    v15 = v17;
  }

  else
  {
    v11[2](v11, 0, v14);
  }
}

- (void)requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)a3 withOptions:(id)a4 context:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v19 = 0;
  v13 = [v12 isReadyWithError:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v18 = v14;
    v16 = [v12 generateDefaultRulesForLibraryScopeWithLocalIdentifier:v9 withOptions:v10 error:&v18];
    v17 = v18;

    v11[2](v11, v16, v17);
    v15 = v17;
  }

  else
  {
    v11[2](v11, 0, v14);
  }
}

- (void)requestTextFeaturesForMomentLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v13 = 0;
  v10 = [v9 isReadyWithError:&v13];
  v11 = v13;
  if (v10)
  {
    v12 = [v9 textFeaturesForMomentLocalIdentifiers:v7];
    v8[2](v8, v12, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestSharingMessageSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v15 = 0;
  v10 = [v9 isReadyWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v13 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:v7 options:0 photoLibrary:v12];

    v14 = [v9 sharingMessageSuggestionDebugInformationForAssetCollection:v13];
    v8[2](v8, v14, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestSharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v22 = 0;
  v10 = [v9 isReadyWithError:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = MEMORY[0x277CD97B8];
    v25[0] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v14 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v15 = [v14 librarySpecificFetchOptions];
    v16 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v15];

    v17 = [v16 firstObject];
    v18 = v17;
    if (v17 && [v17 assetCollectionType] == 8)
    {
      v19 = [v9 sharingSuggestionDebugInformationForSuggestion:v18];
      v8[2](v8, v19, 0);
    }

    else
    {
      v19 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"No matching asset collection (PHSuggestion) found for local identifier: %@", v7];
      v20 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:v19];
      v21 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v19;
        _os_log_error_impl(&dword_22FA28000, v21, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
      }

      (v8)[2](v8, 0, v20);
    }
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v28 = 0;
  v13 = [v12 isReadyWithError:&v28];
  v14 = v28;
  if (v13)
  {
    v15 = [v10 objectForKey:@"PHPeopleSuggestionClientKey"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 unsignedIntegerValue];
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x277D3BBD8] optionsForClient:v17];
    v19 = [v10 objectForKey:@"PHSuggestedRecipientsSharingStreamKey"];
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
    v25 = v12;
    v26 = v18;
    v27 = v21;
    v22 = v21;
    v23 = v18;
    [v9 enumerateKeysAndObjectsUsingBlock:v24];
    v11[2](v11, v22, 0);
  }

  else
  {
    (v11)[2](v11, 0, v14);
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

- (int64_t)_titleTupleFormatForPhotoAnalysisTitleFormat:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (id)_collectionListForLocalIdentifier:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v7 = MEMORY[0x277CD9848];
    v12[0] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [v7 fetchCollectionListsWithLocalIdentifiers:v8 options:v6];

    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)requestTitleForPersonLocalIdentifiers:(id)a3 format:(int64_t)a4 context:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v21 = 0;
  v12 = [v11 isReadyWithError:&v21];
  v13 = v21;
  if (v12)
  {
    v20 = v13;
    v14 = [v11 titleTupleForPersonLocalIdentifiers:v9 format:-[PHAStorytellingClientRequestHandler _titleTupleFormatForPhotoAnalysisTitleFormat:](self error:{"_titleTupleFormatForPhotoAnalysisTitleFormat:", a4), &v20}];
    v15 = v20;

    v16 = [v14 title];
    v17 = [v16 stringValue];
    v18 = [v14 subtitle];
    v19 = [v18 stringValue];
    v10[2](v10, v17, v19, v15);

    v13 = v15;
  }

  else
  {
    v10[2](v10, 0, 0, v13);
  }
}

- (void)requestTitleForAssetCollectionWithLocalIdentifier:(id)a3 format:(int64_t)a4 context:(id)a5 reply:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v12 = [PHAStorytellingClientRequestUtils assetCollectionForLocalIdentifier:v10 options:0 photoLibrary:v11];

  v13 = [(PHAStorytellingClientRequestHandler *)self _titleTupleFormatForPhotoAnalysisTitleFormat:a4];
  v14 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v21 = 0;
  v15 = [v14 titleTupleForAssetCollection:v12 format:v13 error:&v21];
  v16 = v21;

  v17 = [v15 title];
  v18 = [v17 stringValue];
  v19 = [v15 subtitle];
  v20 = [v19 stringValue];
  v9[2](v9, v18, v20, v16);
}

- (void)requestTitleForCollectionMomentListWithLocalIdentifier:(id)a3 format:(int64_t)a4 context:(id)a5 reply:(id)a6
{
  v9 = a6;
  v10 = [(PHAStorytellingClientRequestHandler *)self _collectionListForLocalIdentifier:a3];
  v11 = [(PHAStorytellingClientRequestHandler *)self _titleTupleFormatForPhotoAnalysisTitleFormat:a4];
  v12 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v19 = 0;
  v13 = [v12 titleTupleForMomentList:v10 format:v11 error:&v19];
  v14 = v19;

  v15 = [v13 title];
  v16 = [v15 stringValue];
  v17 = [v13 subtitle];
  v18 = [v17 stringValue];
  v9[2](v9, v16, v18, v14);
}

- (void)reloadAlbumWidgetTimelineWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v9 = 0;
  v7 = [PHAMemoryElectionTask reloadAlbumWidgetTimelineWithLoggingConnection:v6 error:&v9];
  v8 = v9;

  v5[2](v5, v7, v8);
}

- (void)reloadForYouWidgetTimelineWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  if (PLIsFeaturedContentAllowed())
  {
    v6 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v7 = [v6 workingContext];
    v8 = [v7 photoLibrary];

    v9 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    [PHAMemoryElectionTask findAndSetFeaturedStateForMemoriesAndSuggestionsIfNeededInPhotoLibrary:v8 loggingConnection:v9];
  }

  else
  {
    v10 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_INFO, "Featured content is disabled when reloading widget", buf, 2u);
    }
  }

  v11 = [(PHAStorytellingClientRequestHandler *)self loggingConnection];
  v14 = 0;
  v12 = [PHAMemoryElectionTask reloadForYouWidgetTimelineWithLoggingConnection:v11 error:&v14];
  v13 = v14;

  v5[2](v5, v12, v13);
}

- (void)requestCurationOfLength:(unint64_t)a3 forMemoryForLocalIdentifier:(id)a4 withOptions:(id)a5 context:(id)a6 reply:(id)a7
{
  v28[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v15 = [v14 librarySpecificFetchOptions];

  [v15 setFetchLimit:1];
  [v15 setIncludePendingMemories:1];
  [v15 setIncludeRejectedMemories:1];
  [v15 setIncludeLocalMemories:1];
  [v15 setIncludeStoryMemories:1];
  v16 = objc_alloc(MEMORY[0x277D3C790]);
  v17 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v18 = [v16 initWithPhotoLibrary:v17];

  v19 = MEMORY[0x277CD97B8];
  v28[0] = v11;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v21 = [v19 fetchAssetCollectionsWithLocalIdentifiers:v20 options:v15];
  v22 = [v21 firstObject];

  if (v22)
  {
    v23 = [v12 objectForKeyedSubscript:*MEMORY[0x277CD9C20]];
    [v23 doubleValue];
    v25 = v24;

    v26 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v27 = [v26 curationOfLength:a3 forMemory:v22 customDuration:1 useAssetEligibility:v18 curationContext:v25];

    v13[2](v13, v27, 0);
  }

  else
  {
    v27 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
    (v13)[2](v13, 0, v27);
  }
}

- (void)requestMemoryDebugInformationForMemoryWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v32 = 0;
  v10 = [v9 isReadyWithError:&v32];
  v11 = v32;
  if (v10)
  {
    v12 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v13 = [v12 librarySpecificFetchOptions];
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier == %@", v7];
    [v13 setPredicate:v14];

    [v13 setIncludePendingMemories:1];
    v15 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v13];
    v16 = [v15 firstObject];
    if (v16)
    {
      v28 = v15;
      v29 = v12;
      v30 = v11;
      v31 = v7;
      v17 = [v12 librarySpecificFetchOptions];
      v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
      v33[0] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      [v17 setSortDescriptors:v19];

      v27 = [MEMORY[0x277CD97B8] fetchMomentsBackingMemory:v16 options:v17];
      v20 = [v27 fetchedObjects];
      v21 = [v16 photosGraphProperties];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 objectForKeyedSubscript:@"info"];
        v24 = [v23 objectForKeyedSubscript:@"meaningLabels"];
      }

      else
      {
        v24 = 0;
      }

      v25 = [MEMORY[0x277CBEB98] setWithArray:v24];
      v26 = [v9 memoryDebugInformationWithMoments:v20 meaningLabels:v25];

      v8[2](v8, v26, 0);
      v11 = v30;
      v7 = v31;
      v15 = v28;
      v12 = v29;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5];
      (v8)[2](v8, 0, v17);
    }
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (unint64_t)_validatedMemoryNotificationState:(int)a3
{
  if (a3 >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)simulateMemoriesNotificationWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v74[1] = *MEMORY[0x277D85DE8];
  v57 = a3;
  v53 = a4;
  v58 = a5;
  v55 = self;
  v54 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v8 = [v54 librarySpecificFetchOptions];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v74[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  [v8 setSortDescriptors:v10];

  [v8 setIncludePendingMemories:0];
  [v8 setIncludeRejectedMemories:0];
  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v8];
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CBEA80] currentCalendar];
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
        v21 = [v20 creationDate];
        if (!v17)
        {
          v17 = [v13 startOfDayForDate:v21];
        }

        if ([v17 compare:v21] != 1)
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
    v52 = [v12 firstObject];
    v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v23 = [v22 objectForKey:@"PhotoAnalysisNotificationSimulationDelayOverride"];

    v24 = v57;
    v25 = v58;
    v51 = v23;
    if (v23)
    {
      [v23 doubleValue];
      v27 = v26;
      v28 = v55;
      v29 = [(PHAStorytellingClientRequestHandler *)v55 loggingConnection];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v70 = v27;
        v71 = 2112;
        v72 = @"PhotoAnalysisNotificationSimulationDelayOverride";
        _os_log_impl(&dword_22FA28000, v29, OS_LOG_TYPE_INFO, "[Memories Notification] Simulation: overriding notification delay with time interval %.2f because of user defaults %@", buf, 0x16u);
      }

      v30 = (v27 * 1000000000.0);
    }

    else
    {
      v30 = 5000000000;
      v28 = v55;
    }

    v50 = v8;
    if (!v57)
    {
      v42 = 1;
LABEL_31:
      v43 = dispatch_time(0, v30);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__PHAStorytellingClientRequestHandler_Memory__simulateMemoriesNotificationWithOptions_context_reply___block_invoke;
      block[3] = &unk_2788B2230;
      v32 = v54;
      v60 = v54;
      v61 = v52;
      v64 = v42;
      v62 = v55;
      v63 = v25;
      v44 = v52;
      dispatch_after(v43, MEMORY[0x277D85CD0], block);

      v8 = v50;
      v31 = v51;
      goto LABEL_32;
    }

    v33 = [v57 objectForKey:@"notificationState"];
    v49 = [(PHAStorytellingClientRequestHandler *)v28 _validatedMemoryNotificationState:[(PHANotificationController *)v33 intValue]];
    v34 = [v57 objectForKeyedSubscript:@"checkEligibility"];
    if (!v34)
    {
      goto LABEL_27;
    }

    v35 = v34;
    v36 = [v34 BOOLValue];

    if (!v36)
    {
      v24 = v57;
      goto LABEL_30;
    }

    v48 = v30;
    v37 = [PHANotificationController alloc];
    v38 = [(PHAStorytellingClientRequestHandler *)v28 graphManager];
    v33 = [(PHANotificationController *)v37 initWithGraphManager:v38];

    v39 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:v54];
    v40 = [v52 blockableFeatures];
    v41 = [(PHANotificationController *)v33 userFeedbackScoreIsAcceptableForAssetCollection:v52 memoryFeatures:v40 userFeedbackCalculator:v39];

    if (v41)
    {

      v24 = v57;
      v30 = v48;
LABEL_27:

LABEL_30:
      v25 = v58;
      v42 = v49;
      goto LABEL_31;
    }

    v56 = v39;
    v45 = [(PHAStorytellingClientRequestHandler *)v28 loggingConnection];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = [v52 localIdentifier];
      *buf = 138412290;
      v70 = *&v46;
      _os_log_impl(&dword_22FA28000, v45, OS_LOG_TYPE_INFO, "[Memories Notification] Not firing notification for memory %@: user feedback score is lower than acceptable.", buf, 0xCu);
    }

    v47 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16 localizedDescription:@"Latest memory is not eligible for notification"];
    v25 = v58;
    (*(v58 + 2))(v58, 0, v47);

    v31 = v52;
  }

  else
  {
    v31 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:5 localizedDescription:@"No memories are available for simulating notification"];
    v25 = v58;
    (*(v58 + 2))(v58, 0, v31);
  }

  v24 = v57;
  v32 = v54;
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

- (void)requestMeaningScoreDebugDescriptionForMomentLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v22 = 0;
  v10 = [v9 isReadyWithError:&v22];
  v11 = v22;

  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v13 = objc_alloc_init(MEMORY[0x277D3B6A0]);
    v14 = [(PHAStorytellingClientRequestHandler *)self graphManager];
    v15 = [v14 workingContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __124__PHAStorytellingClientRequestHandler_Prototype__requestMeaningScoreDebugDescriptionForMomentLocalIdentifier_context_reply___block_invoke;
    v18[3] = &unk_2788B2768;
    v19 = v7;
    v20 = v12;
    v21 = v13;
    v16 = v13;
    v17 = v12;
    [v15 performSynchronousConcurrentGraphReadUsingBlock:v18];

    v8[2](v8, v17, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
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

- (id)_asssetLocalIdentifiersByCityNameForKeyAssetOnly:(BOOL)a3
{
  v3 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6237;
  v15 = __Block_byref_object_dispose__6238;
  v16 = 0;
  v4 = [v3 workingContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__PHAStorytellingClientRequestHandler_Prototype___asssetLocalIdentifiersByCityNameForKeyAssetOnly___block_invoke;
  v8[3] = &unk_2788B2718;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 performSynchronousConcurrentGraphReadUsingBlock:v8];

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

- (void)requestAssetLocalIdentifiersByCityNameWithContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v10 = 0;
  v7 = [v6 isReadyWithError:&v10];
  v8 = v10;
  if (v7)
  {
    v9 = [(PHAStorytellingClientRequestHandler *)self _asssetLocalIdentifiersByCityNameForKeyAssetOnly:0];
    v5[2](v5, v9, 0);
  }

  else
  {
    (v5)[2](v5, 0, v8);
  }
}

- (void)requestConfidenceByMomentLocalIdentifierForMeaning:(id)a3 useAlternativeMeaningEdge:(BOOL)a4 onlyHighPrecision:(BOOL)a5 context:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v30 = 0;
  v16 = [v15 isReadyWithError:&v30];
  v17 = v30;
  if (v16)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__6237;
    v28 = __Block_byref_object_dispose__6238;
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = [v15 workingContext];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __159__PHAStorytellingClientRequestHandler_Prototype__requestConfidenceByMomentLocalIdentifierForMeaning_useAlternativeMeaningEdge_onlyHighPrecision_context_reply___block_invoke;
    v19[3] = &unk_2788B26C8;
    v22 = a5;
    v20 = v12;
    v21 = &v24;
    v23 = a4;
    [v18 performSynchronousConcurrentGraphReadUsingBlock:v19];

    v14[2](v14, v25[5], 0);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    (v14)[2](v14, 0, v17);
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

- (id)_utilityAssetLocalIdentifiersForKeyAssetOnly:(BOOL)a3
{
  v54 = a3;
  v72[2] = *MEMORY[0x277D85DE8];
  v3 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v4 = [v3 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v72[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v72[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  [v5 setInternalSortDescriptors:v8];

  v9 = *MEMORY[0x277CD9AD0];
  v71[0] = *MEMORY[0x277CD9B10];
  v71[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  [v5 setFetchPropertySets:v10];

  v11 = objc_alloc(MEMORY[0x277CBEA60]);
  v43 = v5;
  v12 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v5];
  v13 = [v12 fetchedObjects];
  v14 = [v11 initWithArray:v13];

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
        v17 = [v16 curationModel];
        v18 = [v17 sceneModel];
        v19 = [v16 sceneClassifications];
        v56 = [v18 sceneNamesFromSceneClassifications:v19 passingThresholdOfType:2];

        v20 = [v16 curationModel];
        LODWORD(v19) = [v20 isMemeExclusiveWithAsset:v16];

        if (v19)
        {
          v21 = [v16 localIdentifier];
          [v49 addObject:v21];
        }

        v55 = v15;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = [v16 sceneClassifications];
        v22 = [v57 countByEnumeratingWithState:&v59 objects:v69 count:16];
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
                objc_enumerationMutation(v57);
              }

              v27 = *(*(&v59 + 1) + 8 * i);
              [v16 curationModel];
              v29 = v28 = v16;
              v30 = [v29 junkClassificationModel];
              v31 = [v30 receiptOrDocumentNode];
              v32 = [v31 passesHighPrecisionWithSignal:v27];

              v16 = v28;
              v25 |= v32;
              v33 = [v28 curationModel];
              v34 = [v33 junkClassificationModel];
              v35 = [v34 screenshotNode];
              LOBYTE(v27) = [v35 passesHighPrecisionWithSignal:v27];

              v24 |= v27;
            }

            v23 = [v57 countByEnumeratingWithState:&v59 objects:v69 count:16];
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
          v36 = [v16 localIdentifier];
          v37 = v51;
          goto LABEL_20;
        }

        if (([v56 containsObject:@"ticket"] & 1) != 0 || objc_msgSend(v56, "containsObject:", @"coupon"))
        {
          v36 = [v16 localIdentifier];
          v37 = v48;
          goto LABEL_20;
        }

        if ([v56 containsObject:@"menu"])
        {
          v36 = [v16 localIdentifier];
          v37 = v47;
          goto LABEL_20;
        }

        if ([v56 containsObject:@"recipe"])
        {
          v36 = [v16 localIdentifier];
          v37 = v46;
          goto LABEL_20;
        }

        if (v24)
        {
          v36 = [v16 localIdentifier];
          v37 = v45;
          goto LABEL_20;
        }

        if (v25)
        {
          v36 = [v16 localIdentifier];
          v37 = v44;
LABEL_20:
          [v37 addObject:v36];

          if (v54)
          {
            goto LABEL_38;
          }

          goto LABEL_21;
        }

        if (v54)
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

- (void)requestUtilityAssetLocalIdentifiersWithContext:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(PHAStorytellingClientRequestHandler *)self _utilityAssetLocalIdentifiersForKeyAssetOnly:0];
  (*(a4 + 2))(v6, v7, 0);
}

- (void)requestTrendsByIdentifierWithCadence:(id)a3 forYear:(unint64_t)a4 context:(id)a5 reply:(id)a6
{
  v45[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 isEqualToString:@"daily"];
  if (a4 == 2022 || v13)
  {
    v36 = v12;
    v37 = v11;
    v38 = v10;
    v14 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
    v15 = [v14 librarySpecificFetchOptions];

    v45[0] = *MEMORY[0x277CD9AA8];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    [v15 setFetchPropertySets:v16];

    v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
    v44 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [v15 setSortDescriptors:v18];

    [v15 setFetchLimit:250];
    v35 = v15;
    v19 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v15];
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
            v29 = [MEMORY[0x277CCAD78] UUID];
            v30 = [v29 UUIDString];
            [v20 setObject:v21 forKeyedSubscript:v30];

            v31 = MEMORY[0x277CBEB18];
            v28 = [v27 localIdentifier];
            v32 = [v31 arrayWithObject:v28];

            v21 = v32;
          }

          else
          {
            v28 = [v27 localIdentifier];
            [v21 addObject:v28];
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
      v33 = [MEMORY[0x277CCAD78] UUID];
      v34 = [v33 UUIDString];
      [v20 setObject:v21 forKeyedSubscript:v34];
    }

    v12 = v36;
    (*(v36 + 2))(v36, v20, 0);

    v11 = v37;
    v10 = v38;
  }

  else
  {
    (*(v12 + 2))(v12, MEMORY[0x277CBEC10], 0);
  }
}

- (void)requestUpNextAssetLocalIdentifiersForAssetWithLocalIdentifier:(id)a3 context:(id)a4 reply:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  v26[0] = *MEMORY[0x277CD9AA8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [v8 setFetchPropertySets:v9];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v25 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v8 setSortDescriptors:v11];

  [v8 setFetchLimit:10];
  v12 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v8];
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

        v19 = [*(*(&v20 + 1) + 8 * v18) localIdentifier];
        [v13 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  v6[2](v6, v13, 0);
}

- (void)requestKeyAssetLocalIdentifierForPrototypeCategory:(id)a3 context:(id)a4 reply:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([v7 isEqualToString:@"Utility"])
  {
    v9 = [(PHAStorytellingClientRequestHandler *)self _utilityAssetLocalIdentifiersForKeyAssetOnly:1];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v9 allValues];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = *v25;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if ([v14 count])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_22;
        }
      }

LABEL_21:
      v11 = [v14 firstObject];
    }
  }

  else
  {
    if (![v7 isEqualToString:@"Places"])
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s does not support category: %@", "-[PHAStorytellingClientRequestHandler(Prototype) requestKeyAssetLocalIdentifierForPrototypeCategory:context:reply:]", v7];
      v19 = [v17 pl_analysisErrorWithCode:2 localizedDescription:v18];
      v8[2](v8, 0, v19);

      v11 = 0;
      goto LABEL_24;
    }

    v9 = [(PHAStorytellingClientRequestHandler *)self _asssetLocalIdentifiersByCityNameForKeyAssetOnly:1];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [v9 allValues];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v11)
    {
      v15 = *v21;
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * v16);
        if ([v14 count])
        {
          goto LABEL_21;
        }

        if (v11 == ++v16)
        {
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
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
  (v8)[2](v8, v11, 0);
}

+ (BOOL)_isMeaningInferenceFromEventLabelingModel:(id)a3 meaningEdgeDomain:(unsigned __int16)a4 configuration:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3B6A0] isEventLabelingEnabled])
  {
    if ([MEMORY[0x277D3B6A0] usePrimaryMeaningDomainForEventLabelingMeanings])
    {
      v9 = [v8 meaningLabelsForEventLabeling];
      v10 = [v9 containsObject:v7];
      if (v6 == *MEMORY[0x277D3BE70])
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
      v11 = *MEMORY[0x277D3BE68] == v6;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_descriptionForMeaningNode:(id)a3 meaningEdge:(id)a4 configuration:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 label];
  [v8 confidence];
  v11 = v10;
  v12 = [v8 domain];

  if ([PHAStorytellingClientRequestHandler _isMeaningInferenceFromEventLabelingModel:v9 meaningEdgeDomain:v12 configuration:v7])
  {
    [v7 highPrecisionThresholdForMeaningLabel:v9];
    v14 = v13;
    [v7 highRecallThresholdForMeaningLabel:v9];
    v16 = @"🌅";
  }

  else
  {
    v16 = @"🏙";
    v15 = 0;
    v14 = 0x3FE51EB851EB851FLL;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ (conf: %.2f, p: %.2f, r: %.2f)", v16, v9, v11, v14, v15];

  return v17;
}

- (BOOL)validateSelector:(SEL)a3 forConnection:(id)a4
{
  if (sel_requestGraphInferencesSummaryWithMomentLocalIdentifiers_context_reply_ != a3 && sel_requestGraphMomentLocalIdentifiersWithDateInterval_context_reply_ != a3 && sel_requestGraphInferencesSummaryWithDateInterval_context_reply_ != a3 && sel_requestCurationScoreByAssetUUIDForAssetUUIDs_context_reply_ != a3)
  {
    return 1;
  }

  v7 = [a4 valueForEntitlement:@"com.apple.private.photos.storytelling.inferenceSummary"];
  v8 = v7;
  v9 = v7 && ([v7 BOOLValue] & 1) != 0;

  return v9;
}

- (BOOL)validateOperation:(id)a3 forConnection:(id)a4
{
  v6 = a4;
  v7 = [a3 invocation];
  v8 = [v7 selector];

  LOBYTE(v7) = [(PHAStorytellingClientRequestHandler *)self validateSelector:v8 forConnection:v6];
  return v7;
}

- (void)handleOperation:(id)a3
{
  v4 = a3;
  executionQueue = self->_executionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PHAStorytellingClientRequestHandler_handleOperation___block_invoke;
  v7[3] = &unk_2788B2C00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (PHAStorytellingClientRequestHandler)initWithGraphManager:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = PHAStorytellingClientRequestHandler;
  v6 = [(PHAStorytellingClientRequestHandler *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphManager, a3);
    v8 = [(PGManager *)v7->_graphManager workingContext];
    v9 = [v8 photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = v9;

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

- (void)runShadowEvaluationWithRecipe:(id)a3 models:(id)a4 trialDeploymentID:(id)a5 trialExperimentID:(id)a6 trialTreatmentID:(id)a7 context:(id)a8 resultBlock:(id)a9
{
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v22 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v27 = 0;
  v23 = [PHACurareShadowEvaluationRecipeDecoder decodeRecipeUserInfo:v20 models:v19 photoLibrary:v21 graphManager:v22 trialDeploymentID:v18 trialExperimentID:v17 trialTreatmentID:v16 decodingError:&v27];

  v24 = v27;
  v26 = v24;
  [v23 runWithError:&v26];
  v25 = v26;

  v15[2](v15, v25);
}

- (void)requestRunPFLWithAttachments:(id)a3 recipeUserInfo:(id)a4 context:(id)a5 resultBlock:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v13 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v26 = 0;
  v14 = [PHAPrivateFederatedLearningRecipeDecoder decodeRecipeUserInfo:v10 attachmentURLs:v11 photoLibrary:v12 graphManager:v13 decodingError:&v26];

  v15 = v26;
  v16 = [v14 options];
  v17 = [v16 learningFramework];
  LODWORD(v10) = [v17 isEqualToString:@"coreML"];

  if (v10)
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

  v22 = [v20 dataPackage];
  v23 = [v20 trainingMetrics];
  v9[2](v9, v22, v23, v21);
}

- (void)recordFeatureUsageFromCounts:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(PHAFeaturesUsageReportingTask);
  v10 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = [v10 workingContext];

  v12 = [v11 photoLibrary];
  v13 = [v11 loggingConnection];
  v16 = 0;
  v14 = [(PHAFeaturesUsageReportingTask *)v9 recordFeatureUsageFromCounts:v8 forPhotoLibrary:v12 loggingConnection:v13 error:&v16];

  v15 = v16;
  v7[2](v7, v14, v15);
}

- (void)requestSetDefaultsObject:(id)a3 forKey:(id)a4 context:(id)a5 reply:(id)a6
{
  v13 = a6;
  v8 = MEMORY[0x277CBEBD0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 standardUserDefaults];
  [v11 setObject:v10 forKey:v9];

  v12 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, 0);
    v12 = v13;
  }
}

- (void)requestDefaultsObjectForKey:(id)a3 context:(id)a4 reply:(id)a5
{
  v10 = a5;
  v6 = MEMORY[0x277CBEBD0];
  v7 = a3;
  v8 = [v6 standardUserDefaults];
  v9 = [v8 objectForKey:v7];

  if (v10)
  {
    v10[2](v10, v9, 0);
  }
}

- (void)exportWallpaperForAssets:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v50[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v39 = a6;
  v11 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v12 = [v11 librarySpecificFetchOptions];

  v13 = *MEMORY[0x277CD9B10];
  v50[0] = *MEMORY[0x277CD9AD0];
  v50[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  [v12 setFetchPropertySets:v14];

  v38 = v12;
  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v9 options:v12];
  v16 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3B150]];
  v41 = [v16 unsignedIntegerValue];

  v17 = MEMORY[0x277CBEBC0];
  v18 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3B160]];
  v43 = [v17 fileURLWithPath:v18];

  v19 = [PHAWallpaperSuggestionRefreshSession alloc];
  v20 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v42 = [(PHAWallpaperSuggestionRefreshSession *)v19 initWithGraphManager:v20];

  v21 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3B158]];
  v22 = [v21 BOOLValue];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v15;
  v23 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v23)
  {
    v24 = v23;
    v36 = v10;
    v37 = v9;
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
        v31 = [v30 uuid];
        v32 = [v43 URLByAppendingPathComponent:v31];
        v33 = [v32 URLByAppendingPathExtension:@"wallpaper"];

        v34 = [MEMORY[0x277CCAA00] defaultManager];
        [v34 removeItemAtURL:v33 error:0];

        v44 = v29;
        LODWORD(v34) = [(PHAWallpaperSuggestionRefreshSession *)v42 savePreviewSegmentationResourcesForAsset:v30 atURL:v33 withClassification:v41 styleCategory:v27 enableSettlingEffect:v22 enableSpatialPhoto:0 error:&v44];
        v25 = v44;

        if (!v34)
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
    v10 = v36;
    v9 = v37;
  }

  else
  {
    v25 = 0;
    v35 = 1;
  }

  v39[2](v39, v35, v25);
}

- (void)requestWallpaperPropertiesForAssets:(id)a3 options:(id)a4 context:(id)a5 reply:(id)a6
{
  v45[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v37 = a6;
  v11 = [(PHAStorytellingClientRequestHandler *)self photoLibrary];
  v12 = [v11 librarySpecificFetchOptions];

  v45[0] = *MEMORY[0x277CD9B10];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  [v12 setFetchPropertySets:v13];

  v36 = v12;
  v14 = [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v9 options:v12];
  v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v16 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3B158]];
  LOBYTE(v12) = [v16 BOOLValue];

  if (v12)
  {
    v17 = 5;
  }

  else
  {
    v18 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3B150]];
    v19 = [v18 unsignedIntegerValue];

    v17 = [objc_opt_class() _sceneTypeForPosterClassification:v19];
  }

  v20 = objc_alloc(MEMORY[0x277D3BC50]);
  v21 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v22 = [v21 workingContextForSuggestions];
  v23 = [v22 loggingConnection];
  v24 = [v20 initWithType:v17 loggingConnection:v23];

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
    v34 = v10;
    v35 = v9;
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

        v33 = [v31 uuid];
        [v15 setObject:v32 forKeyedSubscript:v33];

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
    v10 = v34;
    v9 = v35;
  }

  else
  {
    v27 = 0;
  }

  v37[2](v37, v15, v27);
}

- (void)requestPeopleForWallpaperSuggestionsWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D3BC58];
  v8 = a5;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v12 = [v11 workingContextForSuggestions];
  v13 = [v10 initWithWorkingContext:v12];

  v14 = [v9 objectForKeyedSubscript:*MEMORY[0x277D3CA20]];

  v15 = [v14 BOOLValue];
  v16 = [v13 personLocalIdentifiersForTopPeople:v15];
  v22 = *MEMORY[0x277D3CA18];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v21 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v19 = [v16 sortedArrayUsingDescriptors:v18];
  v23[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v8[2](v8, v20, 0);
}

- (void)reloadWallpaperSuggestionsWithSuggestionUUIDs:(id)a3 context:(id)a4 reply:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v10 = [v9 workingContextForSuggestions];
  v11 = [v10 loggingConnection];

  v12 = [PHAWallpaperSuggestionRefreshSession alloc];
  v13 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = [(PHAWallpaperSuggestionRefreshSession *)v12 initWithGraphManager:v13];

  v25 = 0;
  LODWORD(v13) = [(PHAWallpaperSuggestionRefreshSession *)v14 prepareWithError:&v25];
  v15 = v25;
  if (v13)
  {
    v16 = [objc_alloc(MEMORY[0x277D3BB60]) initWithTaskName:@"ReloadWallpaperSuggestions" loggingConnection:v11];
    v17 = objc_alloc(MEMORY[0x277D22C98]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __111__PHAStorytellingClientRequestHandler_Suggestion__reloadWallpaperSuggestionsWithSuggestionUUIDs_context_reply___block_invoke;
    v23[3] = &unk_2788B2FB8;
    v24 = v16;
    v18 = v16;
    v19 = [v17 initWithProgressBlock:v23];
    v22 = v15;
    v20 = [(PHAWallpaperSuggestionRefreshSession *)v14 reloadWallpaperSuggestionsForUUIDs:v7 progress:v19 error:&v22];
    v21 = v22;

    [(PHAWallpaperSuggestionRefreshSession *)v14 cleanup];
    v15 = v21;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_fault_impl(&dword_22FA28000, v11, OS_LOG_TYPE_FAULT, "Failed to prepare wallpaper suggestion refresh session: %@", buf, 0xCu);
    }

    v20 = 0;
  }

  v8[2](v8, v20, v15);
}

- (void)requestNightlySuggestionsForPosterConfiguration:(id)a3 atDate:(id)a4 context:(id)a5 reply:(id)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = MEMORY[0x277D3B4B8];
  v11 = a6;
  v12 = a4;
  v13 = [[v10 alloc] initWithShuffleType:0];
  [v13 setShuffleSmartAlbums:0];
  v14 = [v9 objectForKeyedSubscript:@"personLocalIdentifiers"];
  if ([v14 count])
  {
    v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
    [v13 setPersonLocalIdentifiers:v15];

    [v13 setShuffleSmartAlbums:{objc_msgSend(v13, "shuffleSmartAlbums") | 1}];
  }

  v16 = [v9 objectForKeyedSubscript:@"includePets"];
  v17 = [v16 BOOLValue];

  v18 = [v9 objectForKeyedSubscript:@"includeLandscapes"];
  v19 = [v18 BOOLValue];

  v20 = [v9 objectForKeyedSubscript:@"includeCityscapes"];
  v21 = [v20 BOOLValue];

  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_5;
    }

LABEL_9:
    [v13 setShuffleSmartAlbums:{objc_msgSend(v13, "shuffleSmartAlbums") | 4}];
    if (!v21)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v13 setShuffleSmartAlbums:{objc_msgSend(v13, "shuffleSmartAlbums") | 2}];
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v21)
  {
LABEL_6:
    [v13 setShuffleSmartAlbums:{objc_msgSend(v13, "shuffleSmartAlbums") | 8}];
  }

LABEL_7:
  v22 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v23 = [v22 photoLibrary];

  v24 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:v23];
  v25 = [v24 personUUIDsWithNegativeFeedback];
  v26 = [MEMORY[0x277D3C808] suggestionLocalIdentifiersByFeatureForPosterConfiguration:v13 atDate:v12 inPhotoLibrary:v23];
  v27 = [MEMORY[0x277D3C808] chosenSuggestionLocalIdentifiersForPosterConfiguration:v13 fromSuggestionLocalIdentifiersByFeature:v26 atDate:v12 usingStrategy:0 withRejectedPersonLocalIdentifiers:v25];

  v29 = *MEMORY[0x277D3B0D8];
  v30[0] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v11[2](v11, v28, 0);
}

- (void)requestSuggestionInfosWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v14 = 0;
  v10 = [v9 isReadyWithError:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [[PHASuggestionController alloc] initWithGraphManager:v9];
    v13 = [(PHASuggestionController *)v12 suggestionInfosWithOptions:v7];
    v8[2](v8, v13, 0);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

- (void)requestAvailableSuggestionTypeInfosWithOptions:(id)a3 context:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [(PHAStorytellingClientRequestHandler *)self graphManager];
  v11 = 0;
  v8 = [v7 isReadyWithError:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [PHASuggestionController availableSuggestionTypeInfosWithProfile:0];
    v6[2](v6, v10, 0);
  }

  else
  {
    (v6)[2](v6, 0, v9);
  }
}

+ (unint64_t)_sceneTypeForPosterClassification:(unint64_t)a3
{
  if (a3 > 5)
  {
    return 2;
  }

  else
  {
    return qword_22FCDE6D0[a3];
  }
}

@end