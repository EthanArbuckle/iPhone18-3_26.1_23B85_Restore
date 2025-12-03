@interface PHAUserFeedbackUpdater
+ (id)_memoriesFetchResultWithObjectIDs:(id)ds existingMemoriesFetchResult:(id)result;
+ (id)_userFeedbackCalculatorWithPhotoLibrary:(id)library;
- (BOOL)_deleteWallpaperTopSuggestionsOfPersonsForLocalIdentifiers:(id)identifiers;
- (BOOL)_demoteFeaturedMemories;
- (BOOL)_neverFeatureMemories:(id)memories error:(id *)error;
- (BOOL)_retireAndUnfeatureSuggestions:(id)suggestions didUnfeatureSuggestions:(BOOL *)unfeatureSuggestions;
- (BOOL)_unfeaturePersonMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs:(id)ds;
- (BOOL)_unfeatureSocialGroupMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs:(id)ds;
- (BOOL)updateFeatureContentWithPersonUUIDs:(id)ds error:(id *)error;
- (PHAUserFeedbackUpdater)initWithGraphManager:(id)manager;
- (double)_userFeedbackScoreForAssetCollection:(id)collection assetsFetchResult:(id)result keyAsset:(id)asset personUUIDsByAssetUUID:(id)d;
- (id)_fetchAssetsWithNegativeFeedbackFrom:(id)from;
- (id)_notRecommendedMemoriesFromMemories:(id)memories;
- (id)_personUUIDsByAssetUUIDFromAssets:(id)assets;
- (id)_suggestionsToRetire;
- (void)_clearEnrichmentStateOfHighlightsWithNegativeFeedback:(id)feedback;
- (void)_demoteNotFeaturedMemories;
- (void)_enrichKeyAssetsforHighlightsWithNegativeFeedbackWithAssets:(id)assets;
- (void)_processWallpaperSuggestionsWithNegativeFeedbackPersonUUIDs:(id)ds;
- (void)_reloadWallpaperSuggestionsWithRejectedPersonsForLocalIdentifiers:(id)identifiers forceReload:(BOOL)reload;
@end

@implementation PHAUserFeedbackUpdater

- (double)_userFeedbackScoreForAssetCollection:(id)collection assetsFetchResult:(id)result keyAsset:(id)asset personUUIDsByAssetUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  resultCopy = result;
  assetCopy = asset;
  dCopy = d;
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(resultCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = resultCopy;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        uuid = [*(*(&v32 + 1) + 8 * v19) uuid];
        [v14 addObject:uuid];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  uuid2 = [assetCopy uuid];
  v22 = [v14 arrayByAddingObject:uuid2];

  v23 = MEMORY[0x277CBEAC0];
  v24 = [dCopy objectsForKeys:v22 notFoundMarker:MEMORY[0x277CBEBF8]];
  v25 = [v23 dictionaryWithObjects:v24 forKeys:v22];

  v26 = [objc_opt_class() _blockableFeaturesForAssetCollection:collectionCopy];
  userFeedbackCalculator = self->_userFeedbackCalculator;
  uuid3 = [assetCopy uuid];
  [(PHUserFeedbackCalculator *)userFeedbackCalculator scoreForAssetUUIDs:v14 keyAssetUUID:uuid3 personsUUIDsByAssetUUIDs:v25 memoryFeatures:v26];
  v30 = v29;

  return v30;
}

- (id)_personUUIDsByAssetUUIDFromAssets:(id)assets
{
  v21 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        uuid = [*(*(&v16 + 1) + 8 * i) uuid];
        [v5 addObject:uuid];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [v5 sortedArrayUsingSelector:sel_compare_];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844CCA68];
  v14 = [MEMORY[0x277CD9938] fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v12 options:librarySpecificFetchOptions];

  return v14;
}

- (void)_clearEnrichmentStateOfHighlightsWithNegativeFeedback:(id)feedback
{
  v39 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] About to mark highlights with negative feedback persons for re-erichment.", buf, 2u);
  }

  v6 = [feedbackCopy count];
  v7 = self->_loggingConnection;
  if (v6)
  {
    v8 = v7;
    v9 = os_signpost_id_generate(v8);
    info = 0;
    mach_timebase_info(&info);
    v10 = v8;
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "UpdateHighlightsWithNegativeFeedbackPersons", "", buf, 2u);
    }

    v12 = mach_absolute_time();
    v13 = self->_loggingConnection;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Initiate fetching highlights for assets.", buf, 2u);
    }

    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"enrichmentState != %ld", 0];
    [librarySpecificFetchOptions setPredicate:v15];

    v16 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:feedbackCopy withType:6 options:librarySpecificFetchOptions];
    v17 = [v16 count];
    v18 = self->_loggingConnection;
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (v19)
      {
        v20 = v18;
        v21 = [v16 count];
        *buf = 67109120;
        LODWORD(v36) = v21;
        _os_log_impl(&dword_22FA28000, v20, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Initiate marking highlights with negative feedback persons to re-enrich. Highlights with assets with persons with negative feedback is %d", buf, 8u);
      }

      photoLibrary = self->_photoLibrary;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __80__PHAUserFeedbackUpdater__clearEnrichmentStateOfHighlightsWithNegativeFeedback___block_invoke;
      v32[3] = &unk_2788B2E78;
      v33 = v16;
      v31 = 0;
      v23 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v32 error:&v31];
      v24 = v31;
      v25 = self->_loggingConnection;
      if (v23)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, v25, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Finished marking highlights with negative feedback persons for re-erichment.", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v24;
        _os_log_error_impl(&dword_22FA28000, v25, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Failed to update highlights with negative feedback: %@", buf, 0xCu);
      }
    }

    else if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] No highlights found with negative feedback persons.", buf, 2u);
    }

    v26 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v29 = v11;
    v30 = v29;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v30, OS_SIGNPOST_INTERVAL_END, v9, "UpdateHighlightsWithNegativeFeedbackPersons", "", buf, 2u);
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "UpdateHighlightsWithNegativeFeedbackPersons";
      v37 = 2048;
      v38 = ((((v26 - v12) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(self->_loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22FA28000, v7, OS_LOG_TYPE_DEBUG, "[PHAUserFeedbackUpdater] No assets with persons with negative feedback, nothing to do", buf, 2u);
  }
}

void __80__PHAUserFeedbackUpdater__clearEnrichmentStateOfHighlightsWithNegativeFeedback___block_invoke(uint64_t a1)
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

        v6 = [MEMORY[0x277CD9960] changeRequestForPhotosHighlight:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setEnrichmentState:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_enrichKeyAssetsforHighlightsWithNegativeFeedbackWithAssets:(id)assets
{
  v53 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] About to initiate enriching key assets for persons with negative feedback.", buf, 2u);
  }

  v6 = [assetsCopy count];
  v7 = self->_loggingConnection;
  if (v6)
  {
    v8 = v7;
    v9 = os_signpost_id_generate(v8);
    info = 0;
    mach_timebase_info(&info);
    v10 = v8;
    v11 = v10;
    v12 = v9 - 1;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "EnrichKeyAssetsUserFeedback", "", buf, 2u);
    }

    spid = v9;
    v46 = v11;

    v13 = mach_absolute_time();
    v14 = self->_loggingConnection;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Initiate fetching highlights for assets.", buf, 2u);
    }

    fetchedObjectIDsSet = [assetsCopy fetchedObjectIDsSet];
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    array = [MEMORY[0x277CBEB18] array];
    v45 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY %K IN %@ OR ANY %K IN %@ OR ANY %K IN %@ OR ANY %K IN %@", @"keyAssetPrivate", fetchedObjectIDsSet, @"keyAssetShared", fetchedObjectIDsSet, @"dayGroupKeyAssetPrivate", fetchedObjectIDsSet, @"dayGroupKeyAssetShared", fetchedObjectIDsSet];
    [array addObject:?];
    v18 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
    [librarySpecificFetchOptions setInternalPredicate:v18];

    v19 = [MEMORY[0x277CD9958] fetchHighlightsWithOptions:librarySpecificFetchOptions];
    if ([v19 count])
    {
      v41 = v12;
      v42 = v13;
      v43 = librarySpecificFetchOptions;
      v20 = [objc_alloc(MEMORY[0x277D3B9A0]) initWithHighlightTailorOptions:24];
      v49 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];

      v40 = v21;
      v22 = [objc_alloc(MEMORY[0x277D3B928]) initWithManager:self->_graphManager enrichmentProcessors:v21];
      v23 = self->_loggingConnection;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = v23;
        v25 = [v19 count];
        *buf = 67109120;
        *&buf[4] = v25;
        _os_log_impl(&dword_22FA28000, v24, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Initiate enriching key assets for persons with negative feedback.Number of highlights with key asset with negative feedback is %d", buf, 8u);
      }

      v26 = MEMORY[0x277CBEB58];
      v27 = v19;
      v28 = objc_alloc_init(v26);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __86__PHAUserFeedbackUpdater__enrichKeyAssetsforHighlightsWithNegativeFeedbackWithAssets___block_invoke_2;
      v51 = &unk_2788B1710;
      v29 = v28;
      v52 = v29;
      [v27 enumerateObjectsUsingBlock:buf];

      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v47 = 0;
      v31 = [v22 enrichDataModelForHighlightUUIDs:v29 progressReporter:ignoreProgress error:&v47];
      v32 = v47;

      v33 = self->_loggingConnection;
      if (v31)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, v33, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Finished enriching key assets for persons with negative feedback.", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v32;
        _os_log_error_impl(&dword_22FA28000, v33, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Failed to enrich key assets for highlights with persons with negative feedback: %@", buf, 0xCu);
      }

      v13 = v42;
      librarySpecificFetchOptions = v43;
      v12 = v41;
    }

    else
    {
      v34 = self->_loggingConnection;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v34, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] No highlights found with negative feedback persons.", buf, 2u);
      }
    }

    v35 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v38 = v46;
    v39 = v38;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v39, OS_SIGNPOST_INTERVAL_END, spid, "EnrichKeyAssetsUserFeedback", "", buf, 2u);
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "EnrichKeyAssetsUserFeedback";
      *&buf[12] = 2048;
      *&buf[14] = ((((v35 - v13) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(self->_loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22FA28000, v7, OS_LOG_TYPE_DEBUG, "[PHAUserFeedbackUpdater] No assets with persons with negative feedback, nothing to do", buf, 2u);
  }
}

void __86__PHAUserFeedbackUpdater__enrichKeyAssetsforHighlightsWithNegativeFeedbackWithAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (id)_fetchAssetsWithNegativeFeedbackFrom:(id)from
{
  v14[1] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Initiate fetching assets for persons with negative feedback.", buf, 2u);
  }

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844CCA50];
  fromCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@)", @"personUUID", fromCopy];
  [librarySpecificFetchOptions setInternalPredicate:fromCopy];

  v8 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v14[0] = *MEMORY[0x277CD9AA8];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [librarySpecificFetchOptions2 setFetchPropertySets:v10];

  v11 = [MEMORY[0x277CD97A8] fetchAssetsForPersons:v8 options:librarySpecificFetchOptions2];

  return v11;
}

- (void)_reloadWallpaperSuggestionsWithRejectedPersonsForLocalIdentifiers:(id)identifiers forceReload:(BOOL)reload
{
  reloadCopy = reload;
  v50 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d AND %K = %d AND %K IN %@", @"subtype", 652, @"featuredState", 1, @"context", identifiersCopy];
  [librarySpecificFetchOptions setPredicate:identifiersCopy];

  v9 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  if ([v9 count])
  {
    v10 = 0;
  }

  else
  {
    v10 = !reloadCopy;
  }

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v12);
          }

          uuid = [*(*(&v40 + 1) + 8 * i) uuid];
          [v11 addObject:uuid];
        }

        v14 = [v12 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v14);
    }

    v18 = [[PHAWallpaperSuggestionRefreshSession alloc] initWithGraphManager:self->_graphManager];
    v39 = 0;
    v19 = [(PHAWallpaperSuggestionRefreshSession *)v18 prepareWithError:&v39];
    v20 = v39;
    if (!v19)
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *v45 = v20;
        _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[PHAUserFeedbackUpdater] Failed to prepare Wallpaper Suggestions refresh session: %@", buf, 0xCu);
      }

      goto LABEL_23;
    }

    v34 = identifiersCopy;
    v21 = [objc_alloc(MEMORY[0x277D3BB60]) initWithTaskName:@"ReloadWallpaperSuggestionsForUserFeedbackUpdater" loggingConnection:self->_loggingConnection];
    v22 = objc_alloc(MEMORY[0x277D22C98]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __104__PHAUserFeedbackUpdater__reloadWallpaperSuggestionsWithRejectedPersonsForLocalIdentifiers_forceReload___block_invoke;
    v37[3] = &unk_2788B2FB8;
    v36 = v21;
    v38 = v36;
    v35 = [v22 initWithProgressBlock:v37];
    v23 = [PHAWallpaperSuggestionRefreshSession reloadWallpaperSuggestionsForUUIDs:v18 progress:"reloadWallpaperSuggestionsForUUIDs:progress:error:" error:v11];
    v24 = v20;

    [(PHAWallpaperSuggestionRefreshSession *)v18 cleanup];
    v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
    v48 = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v27 = [v11 sortedArrayUsingDescriptors:v26];

    v28 = self->_loggingConnection;
    if (v23)
    {
      v20 = v24;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        identifiersCopy = v34;
LABEL_23:

        goto LABEL_24;
      }

      v29 = v28;
      v30 = [v27 count];
      *buf = 67109378;
      *v45 = v30;
      *&v45[4] = 2112;
      *&v45[6] = v27;
      _os_log_impl(&dword_22FA28000, v29, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] Successfully reloaded Wallpaper Suggestions for %d impacted featured Suggestions %@", buf, 0x12u);
    }

    else
    {
      v20 = v24;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v29 = v28;
      v33 = [v27 count];
      *buf = 67109634;
      *v45 = v33;
      *&v45[4] = 2112;
      *&v45[6] = v27;
      v46 = 2112;
      v47 = v24;
      _os_log_error_impl(&dword_22FA28000, v29, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Failed to reload Wallpaper Suggestions for %d impacted featured Suggestions %@: %@", buf, 0x1Cu);
    }

    goto LABEL_22;
  }

  v31 = self->_loggingConnection;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v31, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] No featured Wallpaper Suggestion to reload for", buf, 2u);
  }

LABEL_24:
}

- (BOOL)_deleteWallpaperTopSuggestionsOfPersonsForLocalIdentifiers:(id)identifiers
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  identifiersCopy = identifiers;
  v6 = [v4 sortDescriptorWithKey:@"self" ascending:1];
  v30[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v8 = [identifiersCopy sortedArrayUsingDescriptors:v7];
  v9 = [v8 componentsJoinedByString:{@", "}];

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d AND %K IN %@", @"subtype", 602, @"context", identifiersCopy];

  [librarySpecificFetchOptions setPredicate:identifiersCopy];
  v12 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  if ([v12 count])
  {
    photoLibrary = self->_photoLibrary;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__PHAUserFeedbackUpdater__deleteWallpaperTopSuggestionsOfPersonsForLocalIdentifiers___block_invoke;
    v24[3] = &unk_2788B2E78;
    v14 = v12;
    v25 = v14;
    v23 = 0;
    v15 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v24 error:&v23];
    v16 = v23;
    loggingConnection = self->_loggingConnection;
    if (v15)
    {
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      v18 = loggingConnection;
      v19 = [v14 count];
      *buf = 67109378;
      *v27 = v19;
      *&v27[4] = 2112;
      *&v27[6] = v9;
      _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] Successfully deleted %d Wallpaper Top Suggestions for persons %@", buf, 0x12u);
    }

    else
    {
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v18 = loggingConnection;
      v22 = [v14 count];
      *buf = 67109634;
      *v27 = v22;
      *&v27[4] = 2112;
      *&v27[6] = v9;
      v28 = 2112;
      v29 = v16;
      _os_log_error_impl(&dword_22FA28000, v18, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Failed to delete %d Wallpaper Top Suggestions for persons %@: %@", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  v20 = self->_loggingConnection;
  LOBYTE(v15) = 0;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v27 = v9;
    _os_log_impl(&dword_22FA28000, v20, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] No Wallpaper Top Suggestions for persons %@", buf, 0xCu);
    LOBYTE(v15) = 0;
  }

LABEL_10:

  return v15;
}

- (BOOL)_unfeaturePersonMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs:(id)ds
{
  v30[3] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = dsCopy;
  if (dsCopy && [dsCopy count])
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v7 = MEMORY[0x277CCA920];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"type", 10];
    v30[0] = v8;
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"featuredState", 1];
    v30[1] = v9;
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"relatedCollectionUUID", v5];
    v30[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    v12 = [v7 andPredicateWithSubpredicates:v11];
    [librarySpecificFetchOptions setInternalPredicate:v12];

    v13 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
    if (![v13 count])
    {
      LOBYTE(v17) = 0;
LABEL_12:

      goto LABEL_13;
    }

    firstObject = [v13 firstObject];
    photoLibrary = self->_photoLibrary;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __93__PHAUserFeedbackUpdater__unfeaturePersonMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs___block_invoke;
    v24[3] = &unk_2788B2E78;
    v16 = firstObject;
    v25 = v16;
    v23 = 0;
    v17 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v24 error:&v23];
    v18 = v23;
    loggingConnection = self->_loggingConnection;
    if (v17)
    {
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        goto LABEL_12;
      }

      v20 = loggingConnection;
      relatedCollectionUUID = [v16 relatedCollectionUUID];
      *buf = 138412290;
      v27 = relatedCollectionUUID;
      _os_log_impl(&dword_22FA28000, v20, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] Successfully unfeatured Magic Slot suggestion for person %@", buf, 0xCu);
    }

    else
    {
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v20 = loggingConnection;
      relatedCollectionUUID = [v16 relatedCollectionUUID];
      *buf = 138412546;
      v27 = relatedCollectionUUID;
      v28 = 2112;
      v29 = v18;
      _os_log_error_impl(&dword_22FA28000, v20, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Failed to unfeature Magic Slot suggestion for person %@: %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  LOBYTE(v17) = 0;
LABEL_13:

  return v17;
}

void __93__PHAUserFeedbackUpdater__unfeaturePersonMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:*(a1 + 32)];
  [v1 setFeaturedState:0];
}

- (BOOL)_unfeatureSocialGroupMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs:(id)ds
{
  v44[3] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = MEMORY[0x277CCA920];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"type", 10];
  v44[0] = v7;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"subtype", 916];
  v44[1] = v8;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"featuredState", 1];
  v44[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
  v11 = [v6 andPredicateWithSubpredicates:v10];
  [librarySpecificFetchOptions setInternalPredicate:v11];

  v12 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  if ([v12 count])
  {
    firstObject = [v12 firstObject];
    relatedCollectionUUID = [firstObject relatedCollectionUUID];
    if (relatedCollectionUUID)
    {
      v15 = [MEMORY[0x277CD99D0] localIdentifierWithUUID:relatedCollectionUUID];
      librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v17 = MEMORY[0x277CD99D0];
      v33 = v15;
      v43 = v15;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      v19 = [v17 fetchSocialGroupsWithLocalIdentifiers:v18 options:librarySpecificFetchOptions2];

      if (![v19 count])
      {

        LOBYTE(v19) = 0;
        v27 = v33;
LABEL_15:

        goto LABEL_16;
      }

      v30 = relatedCollectionUUID;
      v31 = firstObject;
      [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v21 = v20 = dsCopy;
      firstObject2 = [v19 firstObject];
      v23 = [MEMORY[0x277CD9938] fetchPersonsInSocialGroup:firstObject2 option:v21];
      v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __98__PHAUserFeedbackUpdater__unfeatureSocialGroupMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs___block_invoke;
      v37[3] = &unk_2788B16E8;
      v38 = v24;
      v25 = v24;
      [v23 enumerateObjectsUsingBlock:v37];
      v32 = v20;
      LODWORD(v20) = [v25 intersectsSet:v20];

      if (v20)
      {
        photoLibrary = self->_photoLibrary;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __98__PHAUserFeedbackUpdater__unfeatureSocialGroupMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs___block_invoke_2;
        v35[3] = &unk_2788B2E78;
        firstObject = v31;
        v36 = v31;
        v34 = 0;
        LODWORD(v19) = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v35 error:&v34];
        v27 = v34;
        loggingConnection = self->_loggingConnection;
        if (v19)
        {
          dsCopy = v32;
          relatedCollectionUUID = v30;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v40 = v30;
            _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] Successfully unfeatured Magic Slot suggestion for social group %@", buf, 0xCu);
          }
        }

        else
        {
          dsCopy = v32;
          relatedCollectionUUID = v30;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v40 = v30;
            v41 = 2112;
            v42 = v27;
            _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Failed to unfeature Magic Slot suggestion for social group %@: %@", buf, 0x16u);
          }
        }

        librarySpecificFetchOptions2 = v36;
        goto LABEL_15;
      }

      LOBYTE(v19) = 0;
      firstObject = v31;
      dsCopy = v32;
      relatedCollectionUUID = v30;
    }

    else
    {
      LOBYTE(v19) = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  LOBYTE(v19) = 0;
LABEL_17:

  return v19;
}

void __98__PHAUserFeedbackUpdater__unfeatureSocialGroupMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

void __98__PHAUserFeedbackUpdater__unfeatureSocialGroupMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:*(a1 + 32)];
  [v1 setFeaturedState:0];
}

- (void)_processWallpaperSuggestionsWithNegativeFeedbackPersonUUIDs:(id)ds
{
  v34 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] About to process Wallpaper Suggestions", buf, 2u);
  }

  if ([dsCopy count])
  {
    v6 = [MEMORY[0x277CD9938] localIdentifiersWithUUIDs:dsCopy];
    v7 = self->_loggingConnection;
    v8 = os_signpost_id_generate(v7);
    info = 0;
    mach_timebase_info(&info);
    v9 = v7;
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "WallpaperTopSuggestionDeletion", "", buf, 2u);
    }

    v11 = mach_absolute_time();
    v12 = [(PHAUserFeedbackUpdater *)self _deleteWallpaperTopSuggestionsOfPersonsForLocalIdentifiers:v6];
    v13 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v16 = v10;
    v17 = v16;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v17, OS_SIGNPOST_INTERVAL_END, v8, "WallpaperTopSuggestionDeletion", "", buf, 2u);
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "WallpaperTopSuggestionDeletion";
      v32 = 2048;
      v33 = ((((v13 - v11) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v18 = self->_loggingConnection;
    v19 = os_signpost_id_generate(v18);
    v28 = 0;
    mach_timebase_info(&v28);
    v20 = v18;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "WallpaperSuggestionReload", "", buf, 2u);
    }

    v22 = mach_absolute_time();
    [(PHAUserFeedbackUpdater *)self _reloadWallpaperSuggestionsWithRejectedPersonsForLocalIdentifiers:v6 forceReload:v12];
    v23 = mach_absolute_time();
    v24 = v28;
    v25 = v21;
    v26 = v25;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v26, OS_SIGNPOST_INTERVAL_END, v19, "WallpaperSuggestionReload", "", buf, 2u);
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "WallpaperSuggestionReload";
      v32 = 2048;
      v33 = ((((v23 - v22) * v24.numer) / v24.denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v26, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v27 = self->_loggingConnection;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v27, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] No person with negative feedback, nothing to do", buf, 2u);
    }
  }
}

- (BOOL)_neverFeatureMemories:(id)memories error:(id *)error
{
  memoriesCopy = memories;
  if ([memoriesCopy count])
  {
    photoLibrary = self->_photoLibrary;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__PHAUserFeedbackUpdater__neverFeatureMemories_error___block_invoke;
    v10[3] = &unk_2788B2E78;
    v11 = memoriesCopy;
    v8 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v10 error:error];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void __54__PHAUserFeedbackUpdater__neverFeatureMemories_error___block_invoke(uint64_t a1)
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

- (id)_notRecommendedMemoriesFromMemories:(id)memories
{
  v31 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v21 = librarySpecificFetchOptions;
  v6 = [MEMORY[0x277CD97A8] fetchKeyAssetByMemoryUUIDForMemories:memoriesCopy options:librarySpecificFetchOptions];
  allValues = [v6 allValues];
  v23 = [(PHAUserFeedbackUpdater *)self _personUUIDsByAssetUUIDFromAssets:allValues];

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = memoriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        uuid = [v13 uuid];
        v16 = [v6 objectForKeyedSubscript:uuid];

        if (v16)
        {
          [(PHAUserFeedbackUpdater *)self _userFeedbackScoreForAssetCollection:v13 assetsFetchResult:0 keyAsset:v16 personUUIDsByAssetUUID:v23];
          if ([MEMORY[0x277CD99F8] score:? meetsScoreThreshold:?])
          {
            [v22 addObject:v13];
          }
        }

        else
        {
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            v18 = loggingConnection;
            uuid2 = [v13 uuid];
            *buf = 138412290;
            v29 = uuid2;
            _os_log_error_impl(&dword_22FA28000, v18, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Key asset is nil for memory with UUID %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  return v22;
}

- (void)_demoteNotFeaturedMemories
{
  selfCopy = self;
  v63[2] = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Started marking memories as never feature based on user feedback.", buf, 2u);
    loggingConnection = selfCopy->_loggingConnection;
  }

  v4 = loggingConnection;
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  v46 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "UnfeatureMemories", "", buf, 2u);
  }

  spid = v5;
  v45 = v7;

  v44 = mach_absolute_time();
  librarySpecificFetchOptions = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:1];
  [librarySpecificFetchOptions setChunkSizeForFetch:13];
  [librarySpecificFetchOptions setCacheSizeForFetch:13];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"rejected = NO AND featuredState == %d", 0];
  [librarySpecificFetchOptions setPredicate:v9];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v63[0] = v10;
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v63[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v12];

  v47 = librarySpecificFetchOptions;
  v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v50 = *v54;
    while (2)
    {
      v19 = 0;
      v20 = v18 + 1;
      v48 = v18 + v17;
      do
      {
        if (*v54 != v50)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v53 + 1) + 8 * v19);
        v22 = objc_autoreleasePoolPush();
        objectID = [v21 objectID];
        [v14 addObject:objectID];

        if ([v14 count] == 13 || v20 >= objc_msgSend(v15, "count"))
        {
          context = v22;
          v24 = v15;
          v25 = [objc_opt_class() _memoriesFetchResultWithObjectIDs:v14 existingMemoriesFetchResult:v15];
          v26 = selfCopy;
          v27 = [(PHAUserFeedbackUpdater *)selfCopy _notRecommendedMemoriesFromMemories:v25];
          [v49 addObjectsFromArray:v27];
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);

          v29 = v20 - [v49 count];
          if (v29 > 4)
          {
            objc_autoreleasePoolPop(context);
            v14 = v28;
            selfCopy = v26;
            v15 = v24;
            goto LABEL_19;
          }

          v14 = v28;
          selfCopy = v26;
          v15 = v24;
          v22 = context;
        }

        objc_autoreleasePoolPop(v22);
        ++v19;
        ++v20;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v53 objects:v62 count:16];
      v18 = v48;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v52 = 0;
  v30 = [(PHAUserFeedbackUpdater *)selfCopy _neverFeatureMemories:v49 error:&v52];
  v31 = v52;
  v32 = selfCopy->_loggingConnection;
  if (v30)
  {
    v34 = v46;
    v33 = v47;
    v35 = v45;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v32;
      v37 = [v49 count];
      *buf = 134217984;
      v59 = v37;
      _os_log_impl(&dword_22FA28000, v36, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] Finished marking memories as never feature based on user feedback. %lu memories marked as never featured.", buf, 0xCu);
    }
  }

  else
  {
    v34 = v46;
    v33 = v47;
    v35 = v45;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v31;
      _os_log_error_impl(&dword_22FA28000, v32, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Marking memories as never featurebased on user feedback failed with error: %@", buf, 0xCu);
    }
  }

  v38 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v41 = v35;
  v42 = v41;
  if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v42, OS_SIGNPOST_INTERVAL_END, spid, "UnfeatureMemories", "", buf, 2u);
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v59 = "UnfeatureMemories";
    v60 = 2048;
    v61 = ((((v38 - v44) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (BOOL)_demoteFeaturedMemories
{
  v31 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Started unfeaturing memories based on user feedback.", buf, 2u);
    loggingConnection = self->_loggingConnection;
  }

  v4 = loggingConnection;
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "UnfeatureMemories", "", buf, 2u);
  }

  v8 = mach_absolute_time();
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"featuredState == %d", 1];
  [librarySpecificFetchOptions setPredicate:v10];

  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v12 = [(PHAUserFeedbackUpdater *)self _notRecommendedMemoriesFromMemories:v11];
  v25 = 0;
  v13 = [(PHAUserFeedbackUpdater *)self _neverFeatureMemories:v12 error:&v25];
  v14 = v25;
  v15 = self->_loggingConnection;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v12 count];
      *buf = 134217984;
      v28 = v17;
      _os_log_impl(&dword_22FA28000, v16, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] Finished unfeaturing memories based on user feedback. %lu memories marked as never featured.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v28 = v14;
    _os_log_error_impl(&dword_22FA28000, v15, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Unfeaturing memories based on user feedback failed with error: %@", buf, 0xCu);
  }

  v18 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v21 = v7;
  v22 = v21;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v22, OS_SIGNPOST_INTERVAL_END, v5, "UnfeatureMemories", "", buf, 2u);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "UnfeatureMemories";
    v29 = 2048;
    v30 = ((((v18 - v8) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v23 = v13 && [v12 count] != 0;

  return v23;
}

- (BOOL)_retireAndUnfeatureSuggestions:(id)suggestions didUnfeatureSuggestions:(BOOL *)unfeatureSuggestions
{
  v40 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  if (![suggestionsCopy count])
  {
    LOBYTE(v15) = 0;
    goto LABEL_23;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Started retiring suggestions.", buf, 2u);
    loggingConnection = self->_loggingConnection;
  }

  v8 = loggingConnection;
  v9 = os_signpost_id_generate(v8);
  info = 0;
  mach_timebase_info(&info);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RetireAndUnfeatureSuggestions", "", buf, 2u);
  }

  v12 = mach_absolute_time();
  *buf = 0;
  v32 = buf;
  v33 = 0x2020000000;
  v34 = 0;
  photoLibrary = self->_photoLibrary;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __81__PHAUserFeedbackUpdater__retireAndUnfeatureSuggestions_didUnfeatureSuggestions___block_invoke;
  v28[3] = &unk_2788B16C0;
  v14 = suggestionsCopy;
  v29 = v14;
  v30 = buf;
  v27 = 0;
  v15 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v28 error:&v27];
  v16 = v27;
  v17 = self->_loggingConnection;
  if (v15)
  {
    v18 = v17;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v14 count];
      *v36 = 134217984;
      v37 = v19;
      _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_DEFAULT, "[PHAUserFeedbackUpdater] %lu suggestion(s) marked as retired.", v36, 0xCu);
    }

    if (!unfeatureSuggestions)
    {
      goto LABEL_17;
    }

    v20 = v32[24];
    goto LABEL_16;
  }

  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (!unfeatureSuggestions)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  *v36 = 138412290;
  v37 = v16;
  _os_log_error_impl(&dword_22FA28000, v17, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Retiring suggestions failed with error: %@", v36, 0xCu);
  if (unfeatureSuggestions)
  {
LABEL_15:
    v20 = 0;
LABEL_16:
    *unfeatureSuggestions = v20;
  }

LABEL_17:
  v21 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v24 = v11;
  v25 = v24;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *v36 = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v25, OS_SIGNPOST_INTERVAL_END, v9, "RetireAndUnfeatureSuggestions", "", v36, 2u);
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *v36 = 136315394;
    v37 = "RetireAndUnfeatureSuggestions";
    v38 = 2048;
    v39 = ((((v21 - v12) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v25, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v36, 0x16u);
  }

  _Block_object_dispose(buf, 8);
LABEL_23:

  return v15;
}

void __81__PHAUserFeedbackUpdater__retireAndUnfeatureSuggestions_didUnfeatureSuggestions___block_invoke(uint64_t a1)
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
        [v8 markRetired];
        if ([v7 featuredState] == 1)
        {
          [v8 setFeaturedState:0];
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)_suggestionsToRetire
{
  v51 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Started fetching suggestions to retire based on user feedback.", buf, 2u);
    loggingConnection = self->_loggingConnection;
  }

  v4 = loggingConnection;
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  v35 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SuggestionsToRetire", "", buf, 2u);
  }

  spid = v5;
  v34 = v7;

  v32 = mach_absolute_time();
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(state == %d || state == %d || state == %d)", 1, 0, 3];
  [librarySpecificFetchOptions setPredicate:v9];

  v37 = librarySpecificFetchOptions;
  v10 = [MEMORY[0x277CD99E0] fetchAllFeaturedStateEnabledSuggestionsWithOptions:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setIncludeGuestAssets:1];
  v36 = librarySpecificFetchOptions2;
  v12 = [MEMORY[0x277CD97A8] fetchKeyAssetBySuggestionUUIDForSuggestions:v10 options:librarySpecificFetchOptions2];
  allValues = [v12 allValues];
  v40 = [(PHAUserFeedbackUpdater *)self _personUUIDsByAssetUUIDFromAssets:?];
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        uuid = [v17 uuid];
        v20 = [v12 objectForKeyedSubscript:uuid];

        if (v20)
        {
          [(PHAUserFeedbackUpdater *)self _userFeedbackScoreForAssetCollection:v17 assetsFetchResult:0 keyAsset:v20 personUUIDsByAssetUUID:v40];
          if ([MEMORY[0x277CD99F8] score:? meetsScoreThreshold:?])
          {
            [v38 addObject:v17];
          }
        }

        else
        {
          v21 = self->_loggingConnection;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            uuid2 = [v17 uuid];
            *buf = 138412290;
            v47 = uuid2;
            _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "[PHAUserFeedbackUpdater] Key asset is nil for suggestion with UUID %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v14);
  }

  v24 = self->_loggingConnection;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v24, OS_LOG_TYPE_INFO, "[PHAUserFeedbackUpdater] Finished fetching suggestions to retire based on user feedback.", buf, 2u);
  }

  v25 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v28 = v34;
  v29 = v28;
  if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v29, OS_SIGNPOST_INTERVAL_END, spid, "SuggestionsToRetire", "", buf, 2u);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v47 = "SuggestionsToRetire";
    v48 = 2048;
    v49 = ((((v25 - v32) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v38;
}

- (BOOL)updateFeatureContentWithPersonUUIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  _suggestionsToRetire = [(PHAUserFeedbackUpdater *)self _suggestionsToRetire];
  v17 = 0;
  v7 = [(PHAUserFeedbackUpdater *)self _retireAndUnfeatureSuggestions:_suggestionsToRetire didUnfeatureSuggestions:&v17];
  [(PHAUserFeedbackUpdater *)self _demoteNotFeaturedMemories];
  _demoteFeaturedMemories = [(PHAUserFeedbackUpdater *)self _demoteFeaturedMemories];
  personUUIDsWithNegativeFeedback = [(PHUserFeedbackCalculator *)self->_userFeedbackCalculator personUUIDsWithNegativeFeedback];
  [(PHAUserFeedbackUpdater *)self _processWallpaperSuggestionsWithNegativeFeedbackPersonUUIDs:personUUIDsWithNegativeFeedback];
  if (dsCopy && [dsCopy count])
  {
    highlighUpdationQueue = self->_highlighUpdationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PHAUserFeedbackUpdater_updateFeatureContentWithPersonUUIDs_error___block_invoke;
    block[3] = &unk_2788B2C00;
    block[4] = self;
    v11 = dsCopy;
    v16 = v11;
    dispatch_async(highlighUpdationQueue, block);
    LODWORD(highlighUpdationQueue) = [(PHAUserFeedbackUpdater *)self _unfeatureSocialGroupMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs:v11];
    v12 = highlighUpdationQueue | [(PHAUserFeedbackUpdater *)self _unfeaturePersonMagicSlotSuggestionWithNegativeFeedbackPersonUUIDs:v11];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    if (!v7)
    {
LABEL_8:
      v13 = _demoteFeaturedMemories | v12;
      goto LABEL_9;
    }
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = 1;
LABEL_9:

  return v13 & 1;
}

void __68__PHAUserFeedbackUpdater_updateFeatureContentWithPersonUUIDs_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchAssetsWithNegativeFeedbackFrom:*(a1 + 40)];
  [*(a1 + 32) _clearEnrichmentStateOfHighlightsWithNegativeFeedback:v2];
  [*(a1 + 32) _enrichKeyAssetsforHighlightsWithNegativeFeedbackWithAssets:v2];
}

- (PHAUserFeedbackUpdater)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = PHAUserFeedbackUpdater;
  v6 = [(PHAUserFeedbackUpdater *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphManager, manager);
    photoLibrary = [managerCopy photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.PHAUserFeedbackHighlightUpdation", v10);
    highlighUpdationQueue = v7->_highlighUpdationQueue;
    v7->_highlighUpdationQueue = v11;

    v13 = objc_opt_class();
    photoLibrary2 = [managerCopy photoLibrary];
    v15 = [v13 _userFeedbackCalculatorWithPhotoLibrary:photoLibrary2];
    userFeedbackCalculator = v7->_userFeedbackCalculator;
    v7->_userFeedbackCalculator = v15;

    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = loggingConnection;
  }

  return v7;
}

+ (id)_memoriesFetchResultWithObjectIDs:(id)ds existingMemoriesFetchResult:(id)result
{
  v5 = MEMORY[0x277CD9888];
  resultCopy = result;
  dsCopy = ds;
  v8 = [[v5 alloc] initWithExistingFetchResult:resultCopy filteredObjectIDs:dsCopy];

  return v8;
}

+ (id)_userFeedbackCalculatorWithPhotoLibrary:(id)library
{
  v3 = MEMORY[0x277CD99F8];
  libraryCopy = library;
  v5 = [[v3 alloc] initWithPhotoLibrary:libraryCopy];

  return v5;
}

@end