@interface PHAWallpaperSuggestionRefreshSession
+ (id)lastGalleryRefreshDate;
+ (void)refreshPosterConfigurationWithPosterService:(id)a3 retryCount:(int64_t)a4 configuration:(id)a5 sessionInfo:(id)a6 log:(id)a7 completion:(id)a8;
+ (void)saveLastGalleryRefreshDate:(id)a3 loggingConnection:(id)a4;
- (BOOL)_prepareWithError:(id *)a3;
- (BOOL)prepareWithError:(id *)a3;
- (BOOL)reloadWallpaperSuggestionsForUUIDs:(id)a3 progress:(id)a4 error:(id *)a5;
- (BOOL)saveMessagesBackdropPreviewResourcesForAsset:(id)a3 atURL:(id)a4 withClassification:(unint64_t)a5 error:(id *)a6;
- (BOOL)saveOnboardingPreviewSegmentationResourcesForAsset:(id)a3 atURL:(id)a4 withClassification:(unint64_t)a5 style:(id)a6 enableSpatialPhoto:(BOOL)a7 error:(id *)a8;
- (BOOL)savePreviewSegmentationResourcesForAsset:(id)a3 atURL:(id)a4 withClassification:(unint64_t)a5 styleCategory:(id)a6 enableSettlingEffect:(BOOL)a7 enableSpatialPhoto:(BOOL)a8 error:(id *)a9;
- (BOOL)saveSegmentationResourcesForAsset:(id)a3 atURL:(id)a4 withOptions:(id)a5 classification:(unint64_t)a6 error:(id *)a7;
- (BOOL)saveShuffleSegmentationResourcesForAsset:(id)a3 atURL:(id)a4 withClassification:(unint64_t)a5 style:(id)a6 enableSpatialPhoto:(BOOL)a7 error:(id *)a8;
- (PHAWallpaperSuggestionRefreshSession)initWithGraphManager:(id)a3;
- (id)consolidatedShuffleConfigurationFromPosterConfigurations:(id)a3;
- (id)createAndExportMediaForSuggestionLocalIdentifiers:(id)a3 editConfiguration:(id)a4 toURL:(id)a5 error:(id *)a6;
- (id)currentlyFeaturedSuggestionUUIDsForTop:(BOOL)a3;
- (id)featuredPhotoDescriptorsForDonationWithSuggestionUUIDsToAvoid:(id)a3 count:(unint64_t)a4;
- (id)fetchSuggestionsForGalleryDonationWithSuggestionUUIDsToAvoid:(id)a3;
- (id)keyAssetBySuggestionUUIDFromSuggestions:(id)a3;
- (id)posterDescriptorOfType:(int64_t)a3 withSuggestion:(id)a4 assetBySuggestionUUID:(id)a5;
- (id)randomizeSuggestions:(id)a3;
- (id)randomizedWallpaperSuggesstionWithSubtype:(unsigned __int16)a3 suggestionUUIDsToAvoid:(id)a4;
- (id)settlingEffectDescriptorsForDonationWithSuggestionUUIDsToAvoid:(id)a3;
- (id)spatialPhotoDescriptorsForDonationWithSuggestionUUIDsToAvoid:(id)a3;
- (id)suggestionUUIDsForPosterDescriptors:(id)a3;
- (id)suggestionsForGalleryDonationWithSuggestionUUIDsToAvoid:(id)a3;
- (id)updateIfNeededPosterDescriptors:(id)a3 fromCurrentPosterDescriptors:(id)a4 partialErrors:(id *)a5 progressReporter:(id)a6;
- (id)updatedPosterDescriptorsFromSuggestions:(id)a3;
- (id)uuidsOfSuggestions:(id)a3;
- (void)_cleanup;
- (void)_removeIfNeededFeaturedContent:(id)a3 withCompletion:(id)a4;
- (void)cleanup;
- (void)dealloc;
- (void)enumerateRefreshableShufflePosterConfigurationsIn:(id)a3 usingBlock:(id)a4;
- (void)refreshAmbientDescriptorsWithProgressReporter:(id)a3 completion:(id)a4;
- (void)refreshPosterConfigurationsForNightlyRefresh:(BOOL)a3 progressReporter:(id)a4 passingFilter:(id)a5 withCompletion:(id)a6;
- (void)refreshPosterDescriptorsWithProgressReporter:(id)a3 completion:(id)a4;
- (void)sendHasSmartShuffleWallpaperBiomeEvent;
- (void)updateSuggestionFeaturedStateWithNewSuggestionUUIDs:(id)a3 oldSuggestionUUIDs:(id)a4;
@end

@implementation PHAWallpaperSuggestionRefreshSession

- (void)refreshAmbientDescriptorsWithProgressReporter:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (PNStandbyModeAvailable())
  {
    v8 = v6;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v9 = [v8 isCancelledWithProgress:0.0];
    *(v21 + 24) = v9;
    loggingConnection = self->_loggingConnection;
    v11 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Ambient Descriptors refresh was canceled", buf, 2u);
      }

      v12 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      v7[2](v7, 0, v12);
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Start refreshing ambient poster descriptors", buf, 2u);
      }

      posterService = self->_posterService;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __97__PHAWallpaperSuggestionRefreshSession_refreshAmbientDescriptorsWithProgressReporter_completion___block_invoke;
      v14[3] = &unk_2788B2A40;
      v18 = &v20;
      v15 = v8;
      v16 = self;
      v17 = v7;
      [(PRSService *)posterService refreshPosterDescriptorsForExtension:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider" completion:v14];

      v12 = v15;
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v7[2](v7, MEMORY[0x277CBEC10], 0);
  }
}

void __97__PHAWallpaperSuggestionRefreshSession_refreshAmbientDescriptorsWithProgressReporter_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) isCancelledWithProgress:0.5];
    v7 = *(*(a1 + 56) + 8);
  }

  *(v7 + 24) = v8;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v9 = *(*(a1 + 40) + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Ambient Descriptors refresh was canceled", buf, 2u);
    }

    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    if (v6)
    {
      v12 = *(*(a1 + 40) + 56);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29[0] = v6;
        _os_log_error_impl(&dword_22FA28000, v12, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to refresh poster descriptors: %@", buf, 0xCu);
      }

      v13 = v6;
      v11 = 0;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v5;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v24 + 1) + 8 * i) identifier];
            [v14 addObject:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v17);
      }

      v30 = @"posterDescriptorIdentifiers";
      v31 = v14;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v21 = *(*(a1 + 40) + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = [v15 count];
        *buf = 67109378;
        LODWORD(v29[0]) = v23;
        WORD2(v29[0]) = 2112;
        *(v29 + 6) = v14;
        _os_log_impl(&dword_22FA28000, v22, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully refreshed %d ambient poster descriptors: %@", buf, 0x12u);
      }

      v13 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)suggestionUUIDsForPosterDescriptors:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) media];
        v11 = [v10 firstObject];

        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 suggestionUUID];
            [v4 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)uuidsOfSuggestions:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) uuid];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)currentlyFeaturedSuggestionUUIDsForTop:(BOOL)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  if (a3)
  {
    [MEMORY[0x277CD99E0] predicateForAllTopWallpaperSuggestions];
  }

  else
  {
    [MEMORY[0x277CD99E0] predicateForAllShuffleWallpaperSuggestions];
  }
  v7 = ;
  [v6 setPredicate:v7];

  v8 = [MEMORY[0x277CD99E0] fetchWallpaperSuggestionsWithFeaturedState:1 withOptions:v6];
  v9 = [(PHAWallpaperSuggestionRefreshSession *)self uuidsOfSuggestions:v8];

  objc_autoreleasePoolPop(v5);

  return v9;
}

- (void)updateSuggestionFeaturedStateWithNewSuggestionUUIDs:(id)a3 oldSuggestionUUIDs:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB58];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithSet:v8];
  [v9 minusSet:v7];
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];

  [v10 minusSet:v8];
  v11 = [v9 setByAddingObjectsFromSet:v10];
  if ([v11 count])
  {
    v12 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"uuid", v11];
    [v12 setPredicate:v13];

    v14 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:v12];
    if ([v14 count])
    {
      photoLibrary = self->_photoLibrary;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __111__PHAWallpaperSuggestionRefreshSession_updateSuggestionFeaturedStateWithNewSuggestionUUIDs_oldSuggestionUUIDs___block_invoke;
      v21[3] = &unk_2788B2C00;
      v22 = v14;
      v16 = v9;
      v23 = v16;
      v20 = 0;
      v17 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v21 error:&v20];
      v18 = v20;
      loggingConnection = self->_loggingConnection;
      if (v17)
      {
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v16;
          _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully updated all suggestions featured state.\n\tFeature: %@", buf, 0xCu);
          loggingConnection = self->_loggingConnection;
        }

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v10;
          _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Unfeature: %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v18;
        _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to update featured state of suggestions: %@", buf, 0xCu);
      }
    }
  }
}

void __111__PHAWallpaperSuggestionRefreshSession_updateSuggestionFeaturedStateWithNewSuggestionUUIDs_oldSuggestionUUIDs___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:{v7, v12}];
        v9 = *(a1 + 40);
        v10 = [v7 uuid];
        v11 = [v9 containsObject:v10];

        [v8 setFeaturedState:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)sendHasSmartShuffleWallpaperBiomeEvent
{
  v3 = BiomeLibrary();
  v4 = [v3 Discoverability];
  v5 = [v4 Signals];

  v6 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.photoanalysisd.has-smart-shuffle-wallpaper" context:0 osBuild:0 userInfo:0];
  v7 = [v5 source];
  [v7 sendEvent:v6];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Sent has-smart-shuffle-wallpaper Biome event", v9, 2u);
  }
}

- (id)createAndExportMediaForSuggestionLocalIdentifiers:(id)a3 editConfiguration:(id)a4 toURL:(id)a5 error:(id *)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v42 = a4;
  v40 = self;
  v41 = a5;
  v11 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"localIdentifier", v10];
  [v11 setPredicate:v12];

  v13 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:v11];
  v49 = 0;
  v14 = [MEMORY[0x277D3C808] mediaFromSuggestions:v13 assetBySuggestionUUID:&v49];
  v43 = v49;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v15)
  {
    v16 = v15;
    v35 = v13;
    v36 = v11;
    v37 = a6;
    v38 = v10;
    v17 = 0;
    v18 = *v46;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [v20 suggestionUUID];
        v23 = [v43 objectForKeyedSubscript:v22];

        if (v23)
        {
          v24 = [v20 subpath];
          v25 = [v41 URLByAppendingPathComponent:v24];

          v26 = [MEMORY[0x277D3C810] posterClassificationForSuggestionMedia:v20];
          v27 = [v42 isSpatialPhotoEnabled];
          v28 = [v42 style];
          v44 = v17;
          LODWORD(v26) = [(PHAWallpaperSuggestionRefreshSession *)v40 saveShuffleSegmentationResourcesForAsset:v23 atURL:v25 withClassification:v26 style:v28 enableSpatialPhoto:v27 error:&v44];
          v29 = v44;

          if (!v26)
          {

            objc_autoreleasePoolPop(v21);
            v30 = 0;
            goto LABEL_13;
          }

          v17 = v29;
        }

        objc_autoreleasePoolPop(v21);
      }

      v16 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v30 = 1;
    v29 = v17;
LABEL_13:
    a6 = v37;
    v10 = v38;
    v13 = v35;
    v11 = v36;
  }

  else
  {
    v29 = 0;
    v30 = 1;
  }

  if (a6)
  {
    v31 = v29;
    *a6 = v29;
  }

  if (v30)
  {
    v32 = obj;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  return v32;
}

- (id)consolidatedShuffleConfigurationFromPosterConfigurations:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) shuffleConfiguration];
        v13 = [v12 personLocalIdentifiers];
        [v4 unionSet:v13];

        v14 = [v12 albumCloudIdentifiers];
        [v5 unionSet:v14];

        v9 |= [v12 shuffleSmartAlbums];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = [objc_alloc(MEMORY[0x277D3B4B8]) initWithShuffleType:0];
  [v15 setPersonLocalIdentifiers:v4];
  [v15 setAlbumCloudIdentifiers:v5];
  [v15 setShuffleSmartAlbums:v9];

  return v15;
}

- (void)enumerateRefreshableShufflePosterConfigurationsIn:(id)a3 usingBlock:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v24;
    *&v9 = 138412546;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = MEMORY[0x277D3B490];
        v15 = [v13 assetDirectory];
        v22 = 0;
        v16 = [v14 loadFromURL:v15 error:&v22];
        v17 = v22;

        if (v16)
        {
          if ([v16 configurationType] == 1)
          {
            v18 = [v16 shuffleConfiguration];
            if ([v18 shuffleType] != 1)
            {
              if (v18)
              {
                buf[0] = 0;
                v21[2](v21, v13, v16, buf);
                if (buf[0])
                {

                  goto LABEL_19;
                }
              }

              goto LABEL_16;
            }

LABEL_15:

            v18 = 0;
          }

          else
          {
            v18 = 0;
            if ([0 shuffleType] == 1)
            {
              goto LABEL_15;
            }
          }

LABEL_16:

          goto LABEL_17;
        }

        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = v20;
          v28 = v13;
          v29 = 2112;
          v30 = v17;
          _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "Error unarchiving poster configuration %@: %@", buf, 0x16u);
        }

LABEL_17:
      }

      v10 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v10);
  }

LABEL_19:
}

- (BOOL)reloadWallpaperSuggestionsForUUIDs:(id)a3 progress:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isCancelledWithProgress:0.0])
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Wallpaper suggestions refresh was canceled", buf, 2u);
    }

    if (a5)
    {
      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_34;
  }

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  *buf = 0;
  v58 = buf;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__6732;
  v61 = __Block_byref_object_dispose__6733;
  v62 = 0;
  v14 = [v9 progressReportersForParallelOperationsWithCount:3];
  if (v8 && ![v8 count])
  {
    v35 = self->_loggingConnection;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *v49 = 0;
      _os_log_impl(&dword_22FA28000, v35, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Empty suggestionUUIDs, bypassing refreshPosterConfigurations", v49, 2u);
    }
  }

  else
  {
    dispatch_group_enter(v12);
    v15 = [v14 firstObject];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v9;
    }

    v18 = v17;

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __90__PHAWallpaperSuggestionRefreshSession_reloadWallpaperSuggestionsForUUIDs_progress_error___block_invoke;
    v55[3] = &unk_2788B29F0;
    v56 = v8;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __90__PHAWallpaperSuggestionRefreshSession_reloadWallpaperSuggestionsForUUIDs_progress_error___block_invoke_2;
    v50[3] = &unk_2788B2A18;
    v54 = buf;
    v51 = v13;
    v52 = self;
    v53 = v12;
    [(PHAWallpaperSuggestionRefreshSession *)self refreshPosterConfigurationsForNightlyRefresh:0 progressReporter:v18 passingFilter:v55 withCompletion:v50];
  }

  dispatch_group_enter(v12);
  if ([v14 count] < 2)
  {
    v19 = v9;
  }

  else
  {
    v19 = [v14 objectAtIndexedSubscript:1];
  }

  v20 = v19;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __90__PHAWallpaperSuggestionRefreshSession_reloadWallpaperSuggestionsForUUIDs_progress_error___block_invoke_438;
  v44[3] = &unk_2788B2A18;
  v21 = v13;
  v48 = buf;
  v45 = v21;
  v46 = self;
  v22 = v12;
  v47 = v22;
  [(PHAWallpaperSuggestionRefreshSession *)self refreshPosterDescriptorsWithProgressReporter:v20 completion:v44];
  dispatch_group_enter(v22);
  if ([v14 count] < 3)
  {
    v23 = v9;
  }

  else
  {
    v23 = [v14 objectAtIndexedSubscript:2];
  }

  v24 = v23;
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __90__PHAWallpaperSuggestionRefreshSession_reloadWallpaperSuggestionsForUUIDs_progress_error___block_invoke_439;
  v39 = &unk_2788B2A18;
  v25 = v21;
  v43 = buf;
  v40 = v25;
  v41 = self;
  v26 = v22;
  v42 = v26;
  [(PHAWallpaperSuggestionRefreshSession *)self refreshAmbientDescriptorsWithProgressReporter:v24 completion:&v36];
  dispatch_group_leave(v26);
  v27 = dispatch_time(0, 300000000000);
  v28 = dispatch_group_wait(v26, v27);
  if ([v9 isCancelledWithProgress:{1.0, v36, v37, v38, v39}])
  {
    [v25 lock];
    if (!*(v58 + 5))
    {
      v29 = self->_loggingConnection;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        _os_log_impl(&dword_22FA28000, v29, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Wallpaper suggestions refresh was canceled", v49, 2u);
      }

      v30 = 16;
LABEL_28:
      v32 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:v30];
      v33 = *(v58 + 5);
      *(v58 + 5) = v32;

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v28)
  {
    [v25 lock];
    if (!*(v58 + 5))
    {
      v31 = self->_loggingConnection;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *v49 = 0;
        _os_log_error_impl(&dword_22FA28000, v31, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Timed out reloading wallpaper suggestions", v49, 2u);
      }

      v30 = 23;
      goto LABEL_28;
    }

LABEL_29:
    [v25 unlock];
  }

  if (a5)
  {
    *a5 = *(v58 + 5);
  }

  v11 = *(v58 + 5) == 0;

  _Block_object_dispose(buf, 8);
LABEL_34:

  return v11;
}

uint64_t __90__PHAWallpaperSuggestionRefreshSession_reloadWallpaperSuggestionsForUUIDs_progress_error___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 media];
    v6 = [v5 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v4 media];
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(a1 + 32);
            v14 = [*(*(&v17 + 1) + 8 * v12) suggestionUUID];
            LOBYTE(v13) = [v13 containsObject:v14];

            if (v13)
            {
              v15 = 1;
              goto LABEL_15;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v15 = 0;
LABEL_15:
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

void __90__PHAWallpaperSuggestionRefreshSession_reloadWallpaperSuggestionsForUUIDs_progress_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [*(a1 + 32) lock];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = *(*(a1 + 40) + 56);
    if (a2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] refreshPosterConfigurations succeeded", &v8, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] refreshPosterConfigurations failed: %@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 48));
}

void __90__PHAWallpaperSuggestionRefreshSession_reloadWallpaperSuggestionsForUUIDs_progress_error___block_invoke_438(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [*(a1 + 32) lock];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = *(*(a1 + 40) + 56);
    if (a2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully refreshed poster descriptors", &v8, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to refresh poster descriptors: %@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 48));
}

void __90__PHAWallpaperSuggestionRefreshSession_reloadWallpaperSuggestionsForUUIDs_progress_error___block_invoke_439(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [*(a1 + 32) lock];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = *(*(a1 + 40) + 56);
    if (a2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully refreshed ambient poster descriptors", &v8, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to refresh ambient poster descriptors: %@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 48));
}

- (void)_removeIfNeededFeaturedContent:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [a3 count];
  loggingConnection = self->_loggingConnection;
  v9 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Featured content is not allowed and there are existing poster descriptors, attempting to remove them", buf, 2u);
    }

    v10 = objc_alloc_init(MEMORY[0x277D3E9E8]);
    v11 = [(NSURL *)self->_refreshSessionURL path];
    [v10 setIdentifier:v11];

    posterService = self->_posterService;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__PHAWallpaperSuggestionRefreshSession__removeIfNeededFeaturedContent_withCompletion___block_invoke;
    v13[3] = &unk_2788B29C8;
    v13[4] = self;
    v14 = v6;
    [(PRSService *)posterService refreshPosterDescriptorsForExtension:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" sessionInfo:v10 completion:v13];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Not allowed to feature content, and no existing poster descriptors", buf, 2u);
    }

    (*(v6 + 2))(v6, MEMORY[0x277CBEC10], 0);
  }
}

void __86__PHAWallpaperSuggestionRefreshSession__removeIfNeededFeaturedContent_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 56);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully removed all existing poster descriptors", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to remove existing poster descriptors: %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)saveSegmentationResourcesForAsset:(id)a3 atURL:(id)a4 withOptions:(id)a5 classification:(unint64_t)a6 error:(id *)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__6732;
  v45 = __Block_byref_object_dispose__6733;
  v46 = 0;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = os_signpost_id_generate(self->_loggingConnection);
  v16 = self->_loggingConnection;
  v17 = v16;
  spid = v15;
  v18 = v15 - 1;
  if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "saveSegmentation", "", buf, 2u);
  }

  v19 = [MEMORY[0x277D3C810] mediaAnalysisTypeForPosterClassification:a6];
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D26828]];
  if (v13)
  {
    [v20 addEntriesFromDictionary:v13];
  }

  v21 = self->_loggingConnection;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v31 = [v11 uuid];
    *buf = 138412546;
    v53 = v31;
    v54 = 2112;
    v55 = v20;
    _os_log_debug_impl(&dword_22FA28000, v21, OS_LOG_TYPE_DEBUG, "[PHAWallpaperSuggestionRefreshSession] Requesting analysis for asset %@ with options %@", buf, 0x16u);
  }

  mediaAnalysisService = self->_mediaAnalysisService;
  v51 = v11;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __113__PHAWallpaperSuggestionRefreshSession_saveSegmentationResourcesForAsset_atURL_withOptions_classification_error___block_invoke_2;
  v34[3] = &unk_2788B29A0;
  v24 = v11;
  v39 = &v47;
  v35 = v24;
  v36 = self;
  v25 = v12;
  v37 = v25;
  v40 = &v41;
  v26 = v14;
  v38 = v26;
  [(VCPMediaAnalysisService *)mediaAnalysisService requestAnalysisTypes:v19 | 0x8000000000 forAssets:v23 withOptions:v20 progressHandler:&__block_literal_global_6740 andCompletionHandler:v34];

  dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  v27 = self->_loggingConnection;
  v28 = v27;
  if (v18 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v28, OS_SIGNPOST_INTERVAL_END, spid, "saveSegmentation", "", buf, 2u);
  }

  if (a7)
  {
    *a7 = v42[5];
  }

  v29 = *(v48 + 24);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v29 & 1;
}

void __113__PHAWallpaperSuggestionRefreshSession_saveSegmentationResourcesForAsset_atURL_withOptions_classification_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) uuid];
  *(*(*(a1 + 64) + 8) + 24) = v5 != 0;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v8 = [*(a1 + 32) localIdentifier];
    v9 = [v5 objectForKeyedSubscript:v8];

    v10 = [v9 objectForKey:*MEMORY[0x277D267D0]];
    v11 = [v10 firstObject];

    v12 = *(a1 + 40);
    v13 = *(v12 + 56);
    if (v11)
    {
      v40 = v6;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v44 = v7;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully exported wallpaper for asset %@ to temporary directory at %@", buf, 0x16u);
      }

      v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v11];
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = [*(a1 + 48) path];
      v17 = [v15 fileExistsAtPath:v16];

      if (v17)
      {
        v18 = [MEMORY[0x277CCAA00] defaultManager];
        v19 = *(a1 + 48);
        v42 = 0;
        v20 = [v18 removeItemAtURL:v19 error:&v42];
        v21 = v42;

        if ((v20 & 1) == 0)
        {
          v22 = *(*(a1 + 40) + 56);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v39 = *(a1 + 48);
            *buf = 138413058;
            v44 = v7;
            v45 = 2112;
            v46 = v14;
            v47 = 2112;
            v48 = v39;
            v49 = 2112;
            v50 = v21;
            _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to remove existing file so it can be overwritten when exporting wallpaper for asset %@ from %@ to %@: %@", buf, 0x2Au);
          }
        }
      }

      v23 = [MEMORY[0x277CCAA00] defaultManager];
      v24 = *(a1 + 48);
      v41 = 0;
      v25 = [v23 copyItemAtURL:v14 toURL:v24 error:&v41];
      v26 = v41;
      v27 = v41;
      *(*(*(a1 + 64) + 8) + 24) = v25;

      v28 = *(*(a1 + 40) + 56);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        v6 = v40;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1 + 48);
          *buf = 138412802;
          v44 = v7;
          v45 = 2112;
          v46 = v14;
          v47 = 2112;
          v48 = v29;
          _os_log_impl(&dword_22FA28000, v28, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully copied exported wallpaper for asset %@ from %@ to %@", buf, 0x20u);
        }
      }

      else
      {
        v6 = v40;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v38 = *(a1 + 48);
          *buf = 138413058;
          v44 = v7;
          v45 = 2112;
          v46 = v14;
          v47 = 2112;
          v48 = v38;
          v49 = 2112;
          v50 = v27;
          _os_log_error_impl(&dword_22FA28000, v28, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to copy exported wallpaper for asset %@ from %@ to %@: %@", buf, 0x2Au);
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v26);
      }
    }

    else
    {
      if (os_log_type_enabled(*(v12 + 56), OS_LOG_TYPE_ERROR))
      {
        v37 = *(a1 + 48);
        *buf = 138412546;
        v44 = v7;
        v45 = 2112;
        v46 = v37;
        _os_log_error_impl(&dword_22FA28000, v13, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to export wallpaper for asset %@ to directory at %@: MAD reported success but no exported file path", buf, 0x16u);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v34 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9];
      v35 = *(*(a1 + 72) + 8);
      v14 = *(v35 + 40);
      *(v35 + 40) = v34;
    }

LABEL_27:
    goto LABEL_28;
  }

  v30 = *(*(a1 + 40) + 56);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v36 = *(a1 + 48);
    *buf = 138412802;
    v44 = v7;
    v45 = 2112;
    v46 = v36;
    v47 = 2112;
    v48 = v6;
    _os_log_error_impl(&dword_22FA28000, v30, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to export wallpaper for asset %@ to directory at %@: %@", buf, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v31 = *(*(a1 + 40) + 56);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v31, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Missing error while onDemandAnalysis is nil.", buf, 2u);
    }

    v32 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:-100 localizedDescription:@"Missing error while onDemandAnalysis is nil."];
    v33 = *(*(a1 + 72) + 8);
    v9 = *(v33 + 40);
    *(v33 + 40) = v32;
    goto LABEL_27;
  }

LABEL_28:
  dispatch_group_leave(*(a1 + 56));
}

- (BOOL)saveOnboardingPreviewSegmentationResourcesForAsset:(id)a3 atURL:(id)a4 withClassification:(unint64_t)a5 style:(id)a6 enableSpatialPhoto:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  if (a6)
  {
    a6 = [MEMORY[0x277D3B480] dictionaryWithStyle:a6];
  }

  v16 = [MEMORY[0x277D3B530] deviceSupportsLandscapeConfiguration];
  v17 = 8;
  if (v16)
  {
    v17 = 136;
  }

  if (v9)
  {
    v18 = v17 | 0x500;
  }

  else
  {
    v18 = v17;
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v19 setObject:v20 forKeyedSubscript:@"Classification"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
  [v19 setObject:v21 forKeyedSubscript:@"LayerStackOptions"];

  [v19 setObject:a6 forKeyedSubscript:@"Style"];
  [v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"OutOfProcess"];
  [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SpatialPhoto"];
  v22 = [(PHAWallpaperSuggestionRefreshSession *)self saveSegmentationResourcesForAsset:v14 atURL:v15 withOptions:v19 classification:a5 error:a8];

  return v22;
}

- (BOOL)saveShuffleSegmentationResourcesForAsset:(id)a3 atURL:(id)a4 withClassification:(unint64_t)a5 style:(id)a6 enableSpatialPhoto:(BOOL)a7 error:(id *)a8
{
  v8 = a7;
  v13 = a6;
  v14 = MEMORY[0x277CBEB38];
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(v14);
  if (v13)
  {
    v18 = [MEMORY[0x277D3B480] dictionaryWithStyle:v13];
  }

  else
  {
    v18 = 0;
  }

  if (PFPosterWantsLowLuminanceContent())
  {
    v19 = 5;
  }

  else
  {
    v19 = 1;
  }

  v20 = [MEMORY[0x277D3B530] deviceSupportsLandscapeConfiguration];
  v21 = v19 | 0x22;
  if (!v20)
  {
    v21 = v19;
  }

  if (v8)
  {
    v22 = v21 | 0x100;
  }

  else
  {
    v22 = v21;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v17 setObject:v23 forKeyedSubscript:@"Classification"];

  [v17 setObject:v18 forKeyedSubscript:@"Style"];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [v17 setObject:v24 forKeyedSubscript:@"LayerStackOptions"];

  [v17 setObject:&unk_2844CC9D8 forKeyedSubscript:@"Priority"];
  [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SpatialPhoto"];
  v25 = [(PHAWallpaperSuggestionRefreshSession *)self saveSegmentationResourcesForAsset:v16 atURL:v15 withOptions:v17 classification:a5 error:a8];

  return v25;
}

- (BOOL)saveMessagesBackdropPreviewResourcesForAsset:(id)a3 atURL:(id)a4 withClassification:(unint64_t)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CBEB38];
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v13 setObject:v14 forKeyedSubscript:@"Classification"];

  [v13 setObject:&unk_2844CC9C0 forKeyedSubscript:@"LayerStackOptions"];
  v15 = MEMORY[0x277CBEC28];
  [v13 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"EnableSettlingEffect"];
  [v13 setObject:v15 forKeyedSubscript:@"OutOfProcess"];
  [v13 setObject:&unk_2844CC9A8 forKeyedSubscript:@"SettlingEffectGatingLevel"];
  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"DisableSegmentation"];
  LOBYTE(a6) = [(PHAWallpaperSuggestionRefreshSession *)self saveSegmentationResourcesForAsset:v12 atURL:v11 withOptions:v13 classification:a5 error:a6];

  return a6;
}

- (BOOL)savePreviewSegmentationResourcesForAsset:(id)a3 atURL:(id)a4 withClassification:(unint64_t)a5 styleCategory:(id)a6 enableSettlingEffect:(BOOL)a7 enableSpatialPhoto:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v10 = a7;
  v15 = MEMORY[0x277D3B530];
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [v15 deviceSupportsLandscapeConfiguration];
  v20 = 8;
  if (v19)
  {
    v20 = 136;
  }

  if (v10)
  {
    v20 |= 0x40uLL;
  }

  if (v9)
  {
    v21 = v20 | 0x500;
  }

  else
  {
    v21 = v20;
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v22 setObject:v23 forKeyedSubscript:@"Classification"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
  [v22 setObject:v24 forKeyedSubscript:@"LayerStackOptions"];

  v25 = MEMORY[0x277CBEC38];
  [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"EnableSettlingEffect"];
  [v22 setObject:v16 forKeyedSubscript:@"StyleCategory"];

  v26 = MEMORY[0x277CBEC28];
  [v22 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"OutOfProcess"];
  [v22 setObject:&unk_2844CC9A8 forKeyedSubscript:@"SettlingEffectGatingLevel"];
  [v22 setObject:v26 forKeyedSubscript:@"EnableSettlingEffect"];
  [v22 setObject:v25 forKeyedSubscript:@"SpatialPhoto"];
  v27 = [(PHAWallpaperSuggestionRefreshSession *)self saveSegmentationResourcesForAsset:v18 atURL:v17 withOptions:v22 classification:a5 error:a9];

  return v27;
}

- (id)updateIfNeededPosterDescriptors:(id)a3 fromCurrentPosterDescriptors:(id)a4 partialErrors:(id *)a5 progressReporter:(id)a6
{
  v51[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v13 = [v12 isCancelledWithProgress:0.0];
  *(v46 + 24) = v13;
  if (v13)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", buf, 2u);
    }

    if (!a5)
    {
      v16 = 0;
      goto LABEL_21;
    }

    v15 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
    v51[0] = v15;
    [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    *a5 = v16 = 0;
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *buf = 0;
    v42 = buf;
    v43 = 0x2020000000;
    v44 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v40[3] = 0;
    v19 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v20 = *MEMORY[0x277CD9B10];
    v50[0] = *MEMORY[0x277CD9AD0];
    v50[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    [v19 addFetchPropertySets:v21];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __132__PHAWallpaperSuggestionRefreshSession_updateIfNeededPosterDescriptors_fromCurrentPosterDescriptors_partialErrors_progressReporter___block_invoke;
    v30[3] = &unk_2788B2958;
    v37 = &v45;
    v38 = v40;
    v31 = v12;
    v32 = self;
    v22 = v18;
    v33 = v22;
    v34 = v11;
    v23 = v19;
    v35 = v23;
    v39 = buf;
    v15 = v17;
    v36 = v15;
    [v10 enumerateKeysAndObjectsUsingBlock:v30];
    if (*(v46 + 24) == 1)
    {
      v24 = self->_loggingConnection;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_22FA28000, v24, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", v29, 2u);
      }

      if (a5)
      {
        v25 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
        v49 = v25;
        *a5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
      }

      v16 = 0;
    }

    else
    {
      if (a5)
      {
        v26 = v22;
        *a5 = v22;
      }

      if (v42[24] == 1)
      {
        v27 = v15;
      }

      else
      {
        v27 = [MEMORY[0x277CBEB98] set];
      }

      v16 = v27;
    }

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(buf, 8);
  }

LABEL_21:
  _Block_object_dispose(&v45, 8);

  return v16;
}

void __132__PHAWallpaperSuggestionRefreshSession_updateIfNeededPosterDescriptors_fromCurrentPosterDescriptors_partialErrors_progressReporter___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v109 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(*(a1 + 80) + 8);
  if (*(v9 + 24))
  {
    v10 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) isCancelledWithProgress:0.5];
    v9 = *(*(a1 + 80) + 8);
  }

  *(v9 + 24) = v10;
  if (*(*(*(a1 + 80) + 8) + 24) != 1)
  {
    if ([v8 descriptorType] == 1)
    {
      v11 = PFParallaxStyleFrequencyTable();
      v12 = [v11 objectAtIndexedSubscript:{*(*(*(a1 + 88) + 8) + 24) % objc_msgSend(v11, "count")}];
      [v8 setStyleCategory:v12];

      v13 = *(*(a1 + 40) + 56);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v15 = [v8 styleCategory];
        v16 = [v8 identifier];
        *buf = 138412546;
        v106 = v15;
        v107 = 2112;
        v108 = v16;
        _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Applied Style: '%@' to descriptor %@", buf, 0x16u);
      }

      ++*(*(*(a1 + 88) + 8) + 24);
    }

    v17 = [*(*(a1 + 40) + 16) URLByAppendingPathComponent:v7];
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v101 = 0;
    v19 = [v18 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v101];
    v20 = v101;

    v21 = *(*(a1 + 40) + 56);
    if (!v19)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v106 = v17;
        v107 = 2112;
        v108 = v20;
        _os_log_error_impl(&dword_22FA28000, v21, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to create poster descriptor directory at %@: %@", buf, 0x16u);
      }

      [*(a1 + 48) addObject:v20];
      goto LABEL_92;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v106 = v17;
      _os_log_impl(&dword_22FA28000, v21, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully created poster descriptor directory at %@", buf, 0xCu);
    }

    v22 = *(*(a1 + 80) + 8);
    if (*(v22 + 24))
    {
      v23 = 1;
    }

    else
    {
      v23 = [*(a1 + 32) isCancelledWithProgress:0.5];
      v22 = *(*(a1 + 80) + 8);
    }

    *(v22 + 24) = v23;
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      *a4 = 1;
LABEL_92:

      goto LABEL_93;
    }

    v100 = v20;
    v24 = [v8 saveToURL:v17 error:&v100];
    v25 = v100;

    v26 = *(*(a1 + 40) + 56);
    if (!v24)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v106 = v17;
        v107 = 2112;
        v108 = v25;
        _os_log_error_impl(&dword_22FA28000, v26, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to save poster descriptor to directory at %@: %@", buf, 0x16u);
      }

      [*(a1 + 48) addObject:v25];
      goto LABEL_91;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v106 = v17;
      _os_log_impl(&dword_22FA28000, v26, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully saved poster descriptor to directory at %@", buf, 0xCu);
    }

    v27 = *(*(a1 + 80) + 8);
    if (*(v27 + 24))
    {
      v28 = 1;
    }

    else
    {
      v28 = [*(a1 + 32) isCancelledWithProgress:0.5];
      v27 = *(*(a1 + 80) + 8);
    }

    *(v27 + 24) = v28;
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      *a4 = 1;
LABEL_91:
      v20 = v25;
      goto LABEL_92;
    }

    v29 = [*(a1 + 56) objectForKeyedSubscript:v7];
    v30 = v29;
    if (v29)
    {
      v31 = MEMORY[0x277D3B498];
      v32 = [v29 assetDirectory];
      v99 = v25;
      v82 = [v31 loadFromURL:v32 error:&v99];
      v33 = v99;

      v25 = v33;
    }

    else
    {
      v82 = 0;
    }

    v34 = *(*(a1 + 80) + 8);
    if (*(v34 + 24))
    {
      v35 = 1;
    }

    else
    {
      v35 = [*(a1 + 32) isCancelledWithProgress:0.5];
      v34 = *(*(a1 + 80) + 8);
    }

    *(v34 + 24) = v35;
    v36 = *(*(*(a1 + 80) + 8) + 24);
    if (v36 == 1)
    {
      goto LABEL_45;
    }

    if (!v82)
    {
      goto LABEL_43;
    }

    if ([v8 isEqual:v82])
    {
      goto LABEL_83;
    }

    v37 = *(*(a1 + 80) + 8);
    if (*(v37 + 24))
    {
      v38 = 1;
    }

    else
    {
LABEL_43:
      v38 = [*(a1 + 32) isCancelledWithProgress:0.5];
      v37 = *(*(a1 + 80) + 8);
    }

    *(v37 + 24) = v38;
    v36 = *(*(*(a1 + 80) + 8) + 24);
    if (v36 == 1)
    {
LABEL_45:
      *a4 = v36;
LABEL_90:

      goto LABEL_91;
    }

    v83 = v25;
    v74 = a4;
    v75 = v30;
    v78 = v17;
    v76 = v7;
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v40 = [v8 media];
    v41 = [v40 countByEnumeratingWithState:&v95 objects:v104 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v96;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v96 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = MEMORY[0x277CD97A8];
          v46 = [*(*(&v95 + 1) + 8 * i) assetUUID];
          v47 = [v45 localIdentifierWithUUID:v46];

          if (v47)
          {
            [v39 addObject:v47];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v95 objects:v104 count:16];
      }

      while (v42);
    }

    v48 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v39 options:*(a1 + 64)];
    v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v50 = v48;
    v51 = [v50 countByEnumeratingWithState:&v91 objects:v103 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v92;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v92 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v91 + 1) + 8 * j);
          v56 = [v55 uuid];
          [v49 setObject:v55 forKeyedSubscript:v56];
        }

        v52 = [v50 countByEnumeratingWithState:&v91 objects:v103 count:16];
      }

      while (v52);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = [v8 media];
    v80 = [obj countByEnumeratingWithState:&v87 objects:v102 count:16];
    if (v80)
    {
      v79 = *v88;
      while (2)
      {
        for (k = 0; k != v80; ++k)
        {
          if (*v88 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v87 + 1) + 8 * k);
          v59 = objc_autoreleasePoolPush();
          v60 = *(*(a1 + 80) + 8);
          if (*(v60 + 24))
          {
            v61 = 1;
          }

          else
          {
            v61 = [*(a1 + 32) isCancelledWithProgress:0.5];
            v60 = *(*(a1 + 80) + 8);
          }

          *(v60 + 24) = v61;
          if (*(*(*(a1 + 80) + 8) + 24) == 1)
          {
            objc_autoreleasePoolPop(v59);
            goto LABEL_80;
          }

          v62 = [v58 assetUUID];
          v63 = [v49 objectForKeyedSubscript:v62];

          if (v63)
          {
            v64 = [v58 subpath];
            v85 = [v78 URLByAppendingPathComponent:v64];

            [MEMORY[0x277D3C810] posterClassificationForMedia:v58 descriptorType:{objc_msgSend(v8, "descriptorType")}];
            [v8 descriptorType];
            [v8 descriptorType];
            v65 = *(a1 + 40);
            v66 = [v8 styleCategory];
            v67 = v63;
            v68 = v66;
            v86 = v83;
            v84 = v67;
            LODWORD(v65) = [v65 savePreviewSegmentationResourcesForAsset:&v86 atURL:? withClassification:? styleCategory:? enableSettlingEffect:? enableSpatialPhoto:? error:?];
            v81 = v86;

            v69 = *(*(a1 + 40) + 56);
            if (!v65)
            {
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                v72 = v69;
                v73 = [v84 uuid];
                *buf = 138412546;
                v106 = v73;
                v107 = 2112;
                v108 = v81;
                _os_log_error_impl(&dword_22FA28000, v72, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to save preview segmentation resources for asset %@: %@", buf, 0x16u);
              }

              v17 = v78;
              if (v81)
              {
                [*(a1 + 48) addObject:v81];
              }

              objc_autoreleasePoolPop(v59);
              v83 = v81;
              goto LABEL_89;
            }

            if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
            {
              v70 = v69;
              v71 = [v84 uuid];
              *buf = 138412290;
              v106 = v71;
              _os_log_impl(&dword_22FA28000, v70, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully saved preview segmentation resources for asset %@", buf, 0xCu);
            }

            v83 = v81;
            v63 = v84;
          }

          objc_autoreleasePoolPop(v59);
        }

        v80 = [obj countByEnumeratingWithState:&v87 objects:v102 count:16];
        if (v80)
        {
          continue;
        }

        break;
      }
    }

LABEL_80:

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      *v74 = 1;
      v17 = v78;
LABEL_89:

      v30 = v75;
      v7 = v76;
      v25 = v83;
      goto LABEL_90;
    }

    *(*(*(a1 + 96) + 8) + 24) = 1;

    v30 = v75;
    v7 = v76;
    v17 = v78;
    v25 = v83;
LABEL_83:
    [*(a1 + 72) addObject:v7];
    goto LABEL_90;
  }

  *a4 = 1;
LABEL_93:
}

- (id)posterDescriptorOfType:(int64_t)a3 withSuggestion:(id)a4 assetBySuggestionUUID:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = [v8 uuid];
  v10 = [v7 objectForKeyedSubscript:v9];

  v11 = [v10 uuid];

  v12 = objc_alloc(MEMORY[0x277D3B4A8]);
  v13 = [v8 subtype];

  v14 = [v12 initWithAssetUUID:v11 suggestionUUID:v9 suggestionSubtype:v13];
  v15 = objc_alloc(MEMORY[0x277D3B498]);
  v19[0] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v17 = [v15 initWithDescriptorType:a3 media:v16];

  return v17;
}

- (id)spatialPhotoDescriptorsForDonationWithSuggestionUUIDsToAvoid:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D3C810] fetchFeaturedGyroPosterSuggestionsInPhotoLibrary:self->_photoLibrary avoiding:a3 limit:&unk_2844CC990];
  v5 = [(PHAWallpaperSuggestionRefreshSession *)self keyAssetBySuggestionUUIDFromSuggestions:v4];
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    *&v7 = 138412546;
    v27 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [(PHAWallpaperSuggestionRefreshSession *)self posterDescriptorOfType:5 withSuggestion:v11 assetBySuggestionUUID:v5, v27];
        v13 = MEMORY[0x277D3B498];
        v14 = [v11 uuid];
        v36 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        v16 = [v13 descriptorIdentifierForDescriptorType:5 uuids:v15];
        [v12 setIdentifier:v16];

        v17 = [v11 uuid];
        v18 = [v5 objectForKeyedSubscript:v17];

        v19 = [MEMORY[0x277D3C810] wallpaperGalleryPosterTitleForSuggestion:v11 withAsset:v18];
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          v21 = loggingConnection;
          v22 = [v11 uuid];
          *buf = v27;
          *v35 = v22;
          *&v35[8] = 2112;
          *&v35[10] = v19;
          _os_log_impl(&dword_22FA28000, v21, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Spatial Poster Suggestion UUID: %@. Selected localized poster title %@.", buf, 0x16u);
        }

        if (v19)
        {
          [v12 setDisplayNameLocalizationKey:v19];
        }

        [v29 addObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v8);
  }

  v23 = self->_loggingConnection;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    v25 = [v29 count];
    *buf = 67109378;
    *v35 = v25;
    *&v35[4] = 2112;
    *&v35[6] = v29;
    _os_log_impl(&dword_22FA28000, v24, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Created %d Spatial3D poster descriptors: %@", buf, 0x12u);
  }

  return v29;
}

- (id)settlingEffectDescriptorsForDonationWithSuggestionUUIDsToAvoid:(id)a3
{
  v79[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = MEMORY[0x277CCA920];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"state", 4];
  v79[0] = v7;
  v8 = [MEMORY[0x277CD99E0] predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper];
  v79[1] = v8;
  v61 = v4;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"uuid", v4];
  v79[2] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %d", @"subtype", 602];
  v79[3] = v10;
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %d", @"subtype", 605];
  v79[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:5];
  v13 = [v6 andPredicateWithSubpredicates:v12];
  [v5 setPredicate:v13];

  v60 = v5;
  v14 = [MEMORY[0x277D3C810] fetchSettlingEffectSuggestionsWithOptions:v5];
  v15 = [(PHAWallpaperSuggestionRefreshSession *)self randomizeSuggestions:v14];
  v65 = self;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v17 = loggingConnection;
    *buf = 67109120;
    *v77 = [v15 count];
    _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Found %d settling effect suggestions", buf, 8u);
  }

  v64 = [(PHAWallpaperSuggestionRefreshSession *)self keyAssetBySuggestionUUIDFromSuggestions:v15];
  v18 = [objc_alloc(MEMORY[0x277D3BC50]) initWithType:5 loggingConnection:self->_loggingConnection];
  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  v22 = *v71;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v71 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v70 + 1) + 8 * i);
      v25 = [v24 subtype];
      v26 = PHSuggestionStringWithSubtype();
      if ((v25 & 0xFFFE) == 0x25A)
      {
        v27 = [v24 uuid];
        v28 = [v64 objectForKeyedSubscript:v27];

        if ([v18 assetIsUsingHeadroom:v28])
        {
          v29 = v65->_loggingConnection;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            v31 = [v24 uuid];
            *buf = 138412290;
            *v77 = v31;
            _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Skip suggestion %@ for settling effect descriptor donation because it's using headroom", buf, 0xCu);
          }

          goto LABEL_17;
        }
      }

      v32 = v65->_loggingConnection;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        v34 = [v24 uuid];
        *buf = 138412546;
        *v77 = v26;
        *&v77[8] = 2112;
        *&v77[10] = v34;
        _os_log_impl(&dword_22FA28000, v33, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Select (%@) suggestion %@ for settling effect descriptor donation", buf, 0x16u);
      }

      [v63 addObject:v24];
      if ([v63 count] >= 3)
      {

        goto LABEL_21;
      }

LABEL_17:
    }

    v21 = [v19 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v35 = v63;
  if ([v63 count])
  {
    v59 = v19;
    v62 = v18;
    v36 = [(PHAWallpaperSuggestionRefreshSession *)v65 uuidsOfSuggestions:v63];
    v37 = v65->_loggingConnection;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      v39 = [v63 count];
      *buf = 67109378;
      *v77 = v39;
      *&v77[4] = 2112;
      *&v77[6] = v36;
      _os_log_impl(&dword_22FA28000, v38, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Refreshing gallery with %d settling effect suggestions %@", buf, 0x12u);
    }

    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v41 = v63;
    v42 = [v41 countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v67;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v67 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v66 + 1) + 8 * j);
          v47 = [(PHAWallpaperSuggestionRefreshSession *)v65 posterDescriptorOfType:3 withSuggestion:v46 assetBySuggestionUUID:v64];
          v48 = MEMORY[0x277D3B498];
          v49 = [v46 uuid];
          v74 = v49;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
          v51 = [v48 descriptorIdentifierForDescriptorType:3 uuids:v50];
          [v47 setIdentifier:v51];

          [v40 addObject:v47];
        }

        v43 = [v41 countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v43);
    }

    v52 = v65->_loggingConnection;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v52;
      v54 = [v40 count];
      *buf = 67109378;
      *v77 = v54;
      *&v77[4] = 2112;
      *&v77[6] = v40;
      _os_log_impl(&dword_22FA28000, v53, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Created %d SettlingEffect poster descriptors: %@", buf, 0x12u);
    }

    v55 = v60;
    v56 = v61;
    v18 = v62;
    v19 = v59;
    v35 = v63;
  }

  else
  {
    v57 = v65->_loggingConnection;
    v56 = v61;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v57, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] No settling effect suggestions found to refresh gallery", buf, 2u);
    }

    v40 = MEMORY[0x277CBEBF8];
    v55 = v60;
  }

  return v40;
}

- (id)updatedPosterDescriptorsFromSuggestions:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PHAWallpaperSuggestionRefreshSession *)self keyAssetBySuggestionUUIDFromSuggestions:v4];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = v4;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4];
  v8 = [v7 lastObject];
  if (v8)
  {
    v9 = [(PHAWallpaperSuggestionRefreshSession *)self posterDescriptorOfType:2 withSuggestion:v8 assetBySuggestionUUID:v5];
    v10 = [MEMORY[0x277D3B498] descriptorTypeStringWithType:2];
    [v9 setIdentifier:v10];

    [v6 addObject:v9];
    [v7 removeLastObject];
  }

  v25 = v8;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v28 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = v6;
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [(PHAWallpaperSuggestionRefreshSession *)self posterDescriptorOfType:1 withSuggestion:v15 assetBySuggestionUUID:v5, v25];
        v17 = [v15 uuid];
        [v16 setIdentifier:v17];

        v18 = [v15 uuid];
        v19 = [v5 objectForKeyedSubscript:v18];

        v20 = [MEMORY[0x277D3C810] wallpaperGalleryPosterTitleForSuggestion:v15 withAsset:v19];
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          v22 = loggingConnection;
          v23 = [v15 uuid];
          *buf = 138412546;
          v34 = v23;
          v35 = 2112;
          v36 = v20;
          _os_log_impl(&dword_22FA28000, v22, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Featured Poster Suggestion UUID: %@. Selected localized poster title %@.", buf, 0x16u);
        }

        if (v20)
        {
          [v16 setDisplayNameLocalizationKey:v20];
        }

        v6 = v14;
        [v14 addObject:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v12);
  }

  return v6;
}

- (id)keyAssetBySuggestionUUIDFromSuggestions:(id)a3
{
  photoLibrary = self->_photoLibrary;
  v5 = a3;
  v6 = [(PHPhotoLibrary *)photoLibrary librarySpecificFetchOptions];
  v7 = [MEMORY[0x277D3BC60] assetFetchPropertySetsIncludingGating:1];
  [v6 setFetchPropertySets:v7];

  v8 = [objc_alloc(MEMORY[0x277CD98D0]) initWithObjects:v5 photoLibrary:self->_photoLibrary fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  v9 = [MEMORY[0x277CD97A8] fetchKeyAssetBySuggestionUUIDForSuggestions:v8 options:v6];

  return v9;
}

- (id)randomizeSuggestions:(id)a3
{
  v3 = MEMORY[0x277D3C810];
  v4 = a3;
  v5 = [v3 randomNumberGeneratorForWallpaperDonation];
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = [v4 fetchedObjects];

  v8 = [v6 initWithArray:v7];
  PFMutableArrayShuffleWithRandomNumberGenerator();

  return v8;
}

- (id)randomizedWallpaperSuggesstionWithSubtype:(unsigned __int16)a3 suggestionUUIDsToAvoid:(id)a4
{
  v4 = a3;
  v26[3] = *MEMORY[0x277D85DE8];
  photoLibrary = self->_photoLibrary;
  v7 = a4;
  v8 = [(PHPhotoLibrary *)photoLibrary librarySpecificFetchOptions];
  v9 = MEMORY[0x277CCA920];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"state", 4];
  v26[0] = v10;
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"subtype", v4];
  v26[1] = v11;
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"uuid", v7];

  v26[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v14 = [v9 andPredicateWithSubpredicates:v13];
  [v8 setPredicate:v14];

  v15 = [MEMORY[0x277CD99E0] fetchAllFeaturedStateEnabledSuggestionsWithOptions:v8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v17 = loggingConnection;
    v18 = [v15 count];
    v19 = PHSuggestionStringWithSubtype();
    *buf = 134218242;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] found %lu %@ suggestions", buf, 0x16u);
  }

  v20 = [(PHAWallpaperSuggestionRefreshSession *)self randomizeSuggestions:v15];

  return v20;
}

- (id)fetchSuggestionsForGalleryDonationWithSuggestionUUIDsToAvoid:(id)a3
{
  v62[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_loggingConnection;
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  v42 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FetchGalleryDonation", "", buf, 2u);
  }

  spid = v6;
  v41 = v8;

  v39 = mach_absolute_time();
  v9 = [(PHAWallpaperSuggestionRefreshSession *)self randomizedWallpaperSuggesstionWithSubtype:602 suggestionUUIDsToAvoid:v4];
  v10 = [v9 objectEnumerator];
  v62[0] = v10;
  v11 = [(PHAWallpaperSuggestionRefreshSession *)self randomizedWallpaperSuggesstionWithSubtype:603 suggestionUUIDsToAvoid:v4];
  v12 = [v11 objectEnumerator];
  v62[1] = v12;
  v13 = [(PHAWallpaperSuggestionRefreshSession *)self randomizedWallpaperSuggesstionWithSubtype:604 suggestionUUIDsToAvoid:v4];
  v14 = [v13 objectEnumerator];
  v62[2] = v14;
  v40 = self;
  v43 = v4;
  v15 = [(PHAWallpaperSuggestionRefreshSession *)self randomizedWallpaperSuggesstionWithSubtype:605 suggestionUUIDsToAvoid:v4];
  v16 = [v15 objectEnumerator];
  v62[3] = v16;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0.0;
  do
  {
    if ([v17 count] > 0xA)
    {
      break;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = v44;
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v61 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v47;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = [*(*(&v46 + 1) + 8 * i) nextObject];
          if (v27)
          {
            [v17 addObject:v27];
            v28 = [v27 subtype];
            if (v28 > 603)
            {
              if (v28 == 604)
              {
                ++v18;
              }

              else if (v28 == 605)
              {
                ++v45;
              }
            }

            else if (v28 == 602)
            {
              ++*&v20;
            }

            else if (v28 == 603)
            {
              ++v19;
            }

            if ([v17 count] >= 0xB)
            {

              goto LABEL_29;
            }
          }

          else
          {
            ++v24;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v46 objects:v61 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_29:
  }

  while (v24 < [v21 count]);
  loggingConnection = v40->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v30 = loggingConnection;
    v31 = [v17 count];
    *buf = 134219008;
    v52 = v31;
    v53 = 2048;
    v54 = v20;
    v55 = 2048;
    v56 = v19;
    v57 = 2048;
    v58 = v18;
    v59 = 2048;
    v60 = v45;
    _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] found %lu suggestions to donate to Featured Photos. TopPeople(%lu), TopPet(%lu), TopLandscape(%lu), TopCityscape(%lu)", buf, 0x34u);
  }

  v32 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v35 = v41;
  v36 = v35;
  if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v36, OS_SIGNPOST_INTERVAL_END, spid, "FetchGalleryDonation", "", buf, 2u);
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v52 = "FetchGalleryDonation";
    v53 = 2048;
    v54 = ((((v32 - v39) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v17;
}

- (id)suggestionsForGalleryDonationWithSuggestionUUIDsToAvoid:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_loggingConnection;
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "WallpaperFeaturedPhotoDonation", "", buf, 2u);
  }

  v10 = mach_absolute_time();
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Start Wallpaper Gallery donation", buf, 2u);
  }

  if (PLIsFeaturedContentAllowed())
  {
    v12 = [(PHAWallpaperSuggestionRefreshSession *)self fetchSuggestionsForGalleryDonationWithSuggestionUUIDsToAvoid:v4];
    v13 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v16 = v8;
    v17 = v16;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v17, OS_SIGNPOST_INTERVAL_END, v6, "WallpaperFeaturedPhotoDonation", "", buf, 2u);
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "WallpaperFeaturedPhotoDonation";
      v30 = 2048;
      v31 = ((((v13 - v10) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v18 = self->_loggingConnection;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Featured Content not allowed. Clearing featuredState for existing top wallpaper suggestions.", buf, 2u);
    }

    v19 = [(PHAWallpaperSuggestionRefreshSession *)self currentlyFeaturedSuggestionUUIDsForTop:1];
    v20 = [MEMORY[0x277CBEB98] set];
    [(PHAWallpaperSuggestionRefreshSession *)self updateSuggestionFeaturedStateWithNewSuggestionUUIDs:v20 oldSuggestionUUIDs:v19];

    v21 = mach_absolute_time();
    v23 = info.numer;
    v22 = info.denom;
    v24 = v8;
    v25 = v24;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v25, OS_SIGNPOST_INTERVAL_END, v6, "WallpaperFeaturedPhotoDonation", "", buf, 2u);
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "WallpaperFeaturedPhotoDonation";
      v30 = 2048;
      v31 = ((((v21 - v10) * v23) / v22) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v25, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)featuredPhotoDescriptorsForDonationWithSuggestionUUIDsToAvoid:(id)a3 count:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(PHAWallpaperSuggestionRefreshSession *)self suggestionsForGalleryDonationWithSuggestionUUIDsToAvoid:a3];
  if ([v6 count])
  {
    v7 = [(PHAWallpaperSuggestionRefreshSession *)self uuidsOfSuggestions:v6];
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = loggingConnection;
      v19 = 67109378;
      v20 = [v6 count];
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Refreshing gallery with %d suggestions %@", &v19, 0x12u);
    }

    v10 = [v6 count];
    if (v10 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v6 subarrayWithRange:{0, v11}];
    v13 = [(PHAWallpaperSuggestionRefreshSession *)self updatedPosterDescriptorsFromSuggestions:v12];
    v14 = self->_loggingConnection;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v13 count];
      v19 = 67109378;
      v20 = v16;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_22FA28000, v15, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Created %d FeaturedPhoto poster descriptors: %@", &v19, 0x12u);
    }
  }

  else
  {
    v17 = self->_loggingConnection;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] No featured photo suggestions found to refresh gallery", &v19, 2u);
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (void)refreshPosterConfigurationsForNightlyRefresh:(BOOL)a3 progressReporter:(id)a4 passingFilter:(id)a5 withCompletion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self->_refreshSessionIdentifier)
  {
    v13 = v10;
    *v33 = 0;
    v34 = v33;
    v35 = 0x2020000000;
    v36 = 0;
    v14 = [v13 isCancelledWithProgress:0.0];
    v34[24] = v14;
    if (v14)
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Configurations refresh was canceled", buf, 2u);
      }

      v16 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      v12[2](v12, 0, v16);
    }

    else
    {
      v18 = self->_posterService;
      v19 = self->_photoLibrary;
      v20 = self->_loggingConnection;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke;
      v23[3] = &unk_2788B2908;
      v23[4] = self;
      v28 = v12;
      v30 = v33;
      v24 = v13;
      v29 = v11;
      v21 = v19;
      v25 = v21;
      v22 = v20;
      v26 = v22;
      v31 = a3;
      v16 = v18;
      v27 = v16;
      [(PRSService *)v16 fetchPosterConfigurationsForExtension:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" completion:v23];
    }

    _Block_object_dispose(v33, 8);
  }

  else
  {
    v17 = self->_loggingConnection;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_error_impl(&dword_22FA28000, v17, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] refreshPosterConfigurations called while refresh session has not been started", v33, 2u);
    }

    v13 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:2];
    v12[2](v12, 0, v13);
  }
}

void __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 56);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      *buf = 67109378;
      v30[0] = [v5 count];
      LOWORD(v30[1]) = 2112;
      *(&v30[1] + 2) = v5;
      _os_log_impl(&dword_22FA28000, v8, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully fetched %d current poster configurations: %@", buf, 0x12u);
    }

    v9 = *(*(a1 + 88) + 8);
    if (*(v9 + 24))
    {
      v10 = 1;
    }

    else
    {
      v10 = [*(a1 + 40) isCancelledWithProgress:0.2];
      v9 = *(*(a1 + 88) + 8);
    }

    *(v9 + 24) = v10;
    v11 = *(a1 + 32);
    if (*(*(*(a1 + 88) + 8) + 24) == 1)
    {
      v12 = *(v11 + 56);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Configurations refresh was canceled", buf, 2u);
      }

      v13 = *(a1 + 72);
      v14 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      (*(v13 + 16))(v13, 0, v14);
    }

    else
    {
      v15 = *(v11 + 64);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke_370;
      v21[3] = &unk_2788B28E0;
      v21[4] = v11;
      v16 = *(a1 + 72);
      v27 = *(a1 + 88);
      v22 = *(a1 + 40);
      v23 = v5;
      v26 = *(a1 + 80);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v28 = *(a1 + 96);
      *&v19 = *(a1 + 64);
      *(&v19 + 1) = v16;
      *&v20 = v17;
      *(&v20 + 1) = v18;
      v24 = v20;
      v25 = v19;
      dispatch_async(v15, v21);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v30 = v6;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to fetch current poster configurations: %@", buf, 0xCu);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke_370(uint64_t a1)
{
  v202 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 8))
  {
    v5 = *(v2 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v5, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Refresh session has been cleaned up, bailing", buf, 2u);
    }

    goto LABEL_10;
  }

  v3 = *(*(a1 + 96) + 8);
  if (*(v3 + 24))
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 40) isCancelledWithProgress:0.25];
    v3 = *(*(a1 + 96) + 8);
  }

  *(v3 + 24) = v4;
  if (*(*(*(a1 + 96) + 8) + 24) != 1)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v189[0] = MEMORY[0x277D85DD0];
    v189[1] = 3221225472;
    v189[2] = __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke_371;
    v189[3] = &unk_2788B2860;
    v193 = *(a1 + 88);
    v8 = v9;
    v190 = v8;
    v13 = v10;
    v14 = *(a1 + 32);
    v142 = v13;
    v191 = v13;
    v192 = v14;
    [v11 enumerateRefreshableShufflePosterConfigurationsIn:v12 usingBlock:v189];
    v15 = [v8 count];
    v16 = *(a1 + 32);
    v17 = v16[7];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] No poster configurations eligible for update", buf, 2u);
        v16 = *(a1 + 32);
      }

      v21 = [v16 currentlyFeaturedSuggestionUUIDsForTop:0];
      v22 = *(a1 + 32);
      v23 = [MEMORY[0x277CBEB98] set];
      [v22 updateSuggestionFeaturedStateWithNewSuggestionUUIDs:v23 oldSuggestionUUIDs:v21];

      v24 = *(*(a1 + 80) + 16);
      goto LABEL_24;
    }

    if (v18)
    {
      *buf = 67109378;
      *v196 = v15;
      *&v196[4] = 2112;
      *&v196[6] = v8;
      _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Found %d poster configurations eligible for update: %@", buf, 0x12u);
      v16 = *(a1 + 32);
    }

    [v16 sendHasSmartShuffleWallpaperBiomeEvent];
    v19 = *(*(a1 + 96) + 8);
    if (*(v19 + 24))
    {
      v20 = 1;
    }

    else
    {
      v20 = [*(a1 + 40) isCancelledWithProgress:0.3];
      v19 = *(*(a1 + 96) + 8);
    }

    *(v19 + 24) = v20;
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      v25 = *(*(a1 + 32) + 56);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v25, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Configurations refresh was canceled", buf, 2u);
      }

      v26 = *(a1 + 80);
      v21 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      v24 = *(v26 + 16);
LABEL_24:
      v24();
LABEL_128:

      goto LABEL_129;
    }

    v133 = v8;
    v143 = [MEMORY[0x277CBEAA8] date];
    v27 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v196 = v143;
      _os_log_impl(&dword_22FA28000, v27, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Date is %@", buf, 0xCu);
    }

    v28 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:*(a1 + 56)];
    v155 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    v131 = v28;
    v29 = [v28 personUUIDsWithNegativeFeedback];
    v30 = [v29 countByEnumeratingWithState:&v185 objects:v201 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v186;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v186 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [MEMORY[0x277CD9938] localIdentifierWithUUID:*(*(&v185 + 1) + 8 * i)];
          if (v34)
          {
            [v155 addObject:v34];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v185 objects:v201 count:16];
      }

      while (v31);
    }

    v35 = *(a1 + 32);
    v36 = v35[7];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = v36;
      v38 = [v155 count];
      *buf = 67109378;
      *v196 = v38;
      *&v196[4] = 2112;
      *&v196[6] = v155;
      _os_log_impl(&dword_22FA28000, v37, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Found %d rejected person local identifiers: %@", buf, 0x12u);

      v35 = *(a1 + 32);
    }

    v39 = v142;
    v40 = [v142 allValues];
    v41 = [v35 consolidatedShuffleConfigurationFromPosterConfigurations:v40];

    v42 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v196 = v41;
      _os_log_impl(&dword_22FA28000, v42, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Consolidated shuffle configuration: %@", buf, 0xCu);
    }

    v130 = v41;
    v147 = [MEMORY[0x277D3C808] suggestionLocalIdentifiersByFeatureForPosterConfiguration:v41 atDate:v143 inPhotoLibrary:*(a1 + 56)];
    v43 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = v43;
      v45 = [v147 count];
      *buf = 67109120;
      *v196 = v45;
      _os_log_impl(&dword_22FA28000, v44, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Found %d features with suggestions", buf, 8u);
    }

    v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v140 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v47 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v15];
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = dispatch_group_create();
    dispatch_group_enter(v49);
    v50 = *(*(a1 + 32) + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke_378;
    block[3] = &unk_2788B2888;
    v184 = *(a1 + 96);
    v51 = *(a1 + 40);
    v52 = *(a1 + 32);
    v178 = v51;
    v179 = v52;
    v183 = *(a1 + 80);
    v138 = v46;
    v180 = v138;
    v139 = v48;
    v181 = v139;
    v136 = v47;
    group = v49;
    v182 = v136;
    dispatch_group_notify(v49, v50, block);
    v53 = objc_alloc_init(MEMORY[0x277D3E9E8]);
    v54 = [*(*(a1 + 32) + 16) path];
    v135 = v53;
    [v53 setIdentifier:v54];

    v129 = [objc_alloc(MEMORY[0x277D3BC40]) initWithPhotoLibrary:*(a1 + 56)];
    v134 = [[PHAWallpaperSuggestionAnalyticsSender alloc] initWithGraphManager:*(*(a1 + 32) + 40) libraryAnalysisSummary:v129];
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    obj = v133;
    v21 = v143;
    v146 = [obj countByEnumeratingWithState:&v173 objects:v200 count:16];
    if (!v146)
    {
LABEL_127:

      dispatch_group_leave(group);
      v8 = v133;
      goto LABEL_128;
    }

    v144 = *v174;
LABEL_44:
    v55 = 0;
    while (1)
    {
      if (*v174 != v144)
      {
        objc_enumerationMutation(obj);
      }

      v56 = *(*(&v173 + 1) + 8 * v55);
      v57 = *(*(a1 + 96) + 8);
      if (*(v57 + 24))
      {
        v58 = 1;
      }

      else
      {
        v58 = [*(a1 + 40) isCancelledWithProgress:0.5];
        v57 = *(*(a1 + 96) + 8);
      }

      *(v57 + 24) = v58;
      if (*(*(*(a1 + 96) + 8) + 24))
      {
        goto LABEL_127;
      }

      v148 = v55;
      v59 = [v56 assetDirectory];
      v60 = [v39 objectForKeyedSubscript:v59];

      v154 = [v60 shuffleConfiguration];
      v61 = *(*(a1 + 32) + 56);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v196 = v56;
        *&v196[8] = 2112;
        *&v196[10] = v60;
        _os_log_impl(&dword_22FA28000, v61, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Handling poster configuration %@, PFPosterConfiguration %@", buf, 0x16u);
        v61 = *(*(a1 + 32) + 56);
      }

      v145 = v56;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v196 = v154;
        _os_log_impl(&dword_22FA28000, v61, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Handling PFPosterShuffleConfiguration: %@", buf, 0xCu);
      }

      v62 = MEMORY[0x277D3C808];
      v63 = [v60 shuffleConfiguration];
      v64 = [v62 chosenSuggestionLocalIdentifiersForPosterConfiguration:v63 fromSuggestionLocalIdentifiersByFeature:v147 atDate:v21 usingStrategy:1 withRejectedPersonLocalIdentifiers:v155];

      v65 = *(*(a1 + 32) + 56);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = v65;
        v67 = [v64 count];
        *buf = 67109120;
        *v196 = v67;
        _os_log_impl(&dword_22FA28000, v66, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Found %d suggestions", buf, 8u);
      }

      v68 = MEMORY[0x277CD99E0];
      v69 = [MEMORY[0x277CBEB98] setWithArray:v64];
      v151 = [v68 uuidsFromLocalIdentifiers:v69];

      v153 = [v60 identifier];
      v150 = v60;
      v70 = [v60 media];
      v71 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v152 = v64;
      v149 = v70;
      if (!v70)
      {
        break;
      }

      v72 = v70;
      v73 = [v70 count];
      v74 = [v64 count];
      v75 = *(a1 + 64);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v196 = v73;
        *&v196[4] = 2112;
        *&v196[6] = v72;
        _os_log_impl(&dword_22FA28000, v75, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] %d previousMedia: %@", buf, 0x12u);
        v75 = *(a1 + 64);
      }

      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v196 = v74;
        *&v196[4] = 2112;
        *&v196[6] = v152;
        _os_log_impl(&dword_22FA28000, v75, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] %d updatedSuggestionLocalIdentifiers: %@", buf, 0x12u);
      }

      v77 = v73 > v74 && v74 < 2;
      v78 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v79 = [v78 BOOLForKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnough"];

      v80 = [v154 shuffleType];
      v81 = v80;
      if (v77)
      {
        v82 = (*(a1 + 104) | ~v79) & (v80 != 2);
      }

      else
      {
        v82 = 0;
      }

      v102 = *(a1 + 64);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = v102;
        v104 = NSStringFromBOOL();
        NSStringFromBOOL();
        v106 = v105 = v82;
        v107 = NSStringFromBOOL();
        v108 = NSStringFromBOOL();
        *buf = 138413058;
        *v196 = v104;
        *&v196[8] = 2112;
        *&v196[10] = v106;
        *&v196[18] = 2112;
        v197 = v107;
        v198 = 2112;
        v199 = v108;
        _os_log_impl(&dword_22FA28000, v103, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] notEnoughContent:%@, isNightlyRefresh:%@, libraryIsProcessedEnough:%@, isUserAlbumShuffle:%@", buf, 0x2Au);

        v21 = v143;
        v82 = v105;
        v39 = v142;
      }

      v109 = v152;
      if (![v152 count] && v81 != 2)
      {
        v110 = *(a1 + 64);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          *v196 = v154;
          _os_log_fault_impl(&dword_22FA28000, v110, OS_LOG_TYPE_FAULT, "[PHAWallpaperSuggestionRefreshSession] Found 0 suggestions for PFPosterShuffleConfiguration: %@. Skip refresh. This is unexpected because user must have enough content to create the first shuffle poster. If the library is processed enough please file a radar.", buf, 0xCu);
        }

LABEL_91:
        v111 = *(a1 + 64);
        v112 = v149;
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          v113 = v111;
          v114 = [v149 count];
          v115 = [v152 count];
          *buf = 138412802;
          *v196 = v153;
          *&v196[8] = 1024;
          *&v196[10] = v114;
          *&v196[14] = 1024;
          *&v196[16] = v115;
          _os_log_impl(&dword_22FA28000, v113, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Special case. Poster configuration %@ has %d media and new shuffle has %d. Skip updating.", buf, 0x18u);
        }

        goto LABEL_125;
      }

      if (v82)
      {
        goto LABEL_91;
      }

      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v116 = v149;
      v117 = [v116 countByEnumeratingWithState:&v169 objects:v194 count:16];
      if (v117)
      {
        v118 = v117;
        v119 = *v170;
        do
        {
          for (j = 0; j != v118; ++j)
          {
            if (*v170 != v119)
            {
              objc_enumerationMutation(v116);
            }

            v121 = *(*(&v169 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v122 = v121;
              v123 = [v122 suggestionUUID];
              [v71 addObject:v123];
            }

            else
            {
              v124 = *(a1 + 64);
              if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v196 = v121;
                _os_log_error_impl(&dword_22FA28000, v124, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Error: previous medium has unexpected class: %@.", buf, 0xCu);
              }
            }
          }

          v118 = [v116 countByEnumeratingWithState:&v169 objects:v194 count:16];
        }

        while (v118);
      }

      v125 = [v71 isEqualToSet:v151];
      v126 = *(a1 + 64);
      v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
      if (v125)
      {
        v39 = v142;
        v21 = v143;
        if (v127)
        {
          *buf = 138412546;
          *v196 = v153;
          *&v196[8] = 2112;
          *&v196[10] = v151;
          _os_log_impl(&dword_22FA28000, v126, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster configuration %@ is unchanged, %@", buf, 0x16u);
        }

        [v138 unionSet:v151];
        v109 = v152;
        v112 = v149;
        goto LABEL_125;
      }

      v39 = v142;
      if (v127)
      {
        *buf = 138412546;
        *v196 = v153;
        *&v196[8] = 2112;
        *&v196[10] = v71;
        _os_log_impl(&dword_22FA28000, v126, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster configuration %@ has changed from %@", buf, 0x16u);
        v126 = *(a1 + 64);
      }

      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v196 = v151;
        v84 = v126;
        v85 = "[PHAWallpaperSuggestionRefreshSession] To %@";
        v86 = 12;
LABEL_72:
        _os_log_impl(&dword_22FA28000, v84, OS_LOG_TYPE_DEFAULT, v85, buf, v86);
      }

LABEL_73:
      v87 = [*(*(a1 + 32) + 16) URLByAppendingPathComponent:v153];
      v88 = [MEMORY[0x277CCAA00] defaultManager];
      v168 = 0;
      v89 = [v88 createDirectoryAtURL:v87 withIntermediateDirectories:1 attributes:0 error:&v168];
      v90 = v168;

      v91 = *(a1 + 32);
      v92 = v91[7];
      if (!v89)
      {
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v196 = v87;
          *&v196[8] = 2112;
          *&v196[10] = v90;
          _os_log_error_impl(&dword_22FA28000, v92, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to create poster configuration directory at %@: %@\nSkipping configuration", buf, 0x16u);
        }

        [v140 lock];
        [v139 addObject:v90];
        [v140 unlock];
        goto LABEL_124;
      }

      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v196 = v87;
        _os_log_impl(&dword_22FA28000, v92, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully created poster configuration directory at %@", buf, 0xCu);
        v91 = *(a1 + 32);
      }

      v93 = [v150 editConfiguration];
      v167 = v90;
      v94 = [v91 createAndExportMediaForSuggestionLocalIdentifiers:v152 editConfiguration:v93 toURL:v87 error:&v167];
      v95 = v167;

      if (v94)
      {
        [v150 setMedia:v94];
        v96 = *(a1 + 64);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v196 = v153;
          *&v196[8] = 2112;
          *&v196[10] = v94;
          _os_log_impl(&dword_22FA28000, v96, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully created/exported media for poster configuration %@: %@", buf, 0x16u);
        }

        v166 = v95;
        v97 = [v150 saveToURL:v87 error:&v166];
        v90 = v166;

        v98 = *(a1 + 64);
        if (v97)
        {
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v196 = v153;
            _os_log_impl(&dword_22FA28000, v98, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully saved updated poster configuration %@", buf, 0xCu);
          }

          dispatch_group_enter(group);
          v99 = objc_opt_class();
          v100 = *(a1 + 64);
          v132 = *(a1 + 72);
          v156[0] = MEMORY[0x277D85DD0];
          v156[1] = 3221225472;
          v156[2] = __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke_384;
          v156[3] = &unk_2788B28B8;
          v101 = v100;
          v157 = v101;
          v158 = v145;
          v159 = v136;
          v160 = v138;
          v161 = v151;
          v162 = v139;
          v163 = v71;
          v164 = v140;
          v165 = group;
          [v99 refreshPosterConfigurationWithPosterService:v132 retryCount:3 configuration:v145 sessionInfo:v135 log:v101 completion:v156];
          [(PHAWallpaperSuggestionAnalyticsSender *)v134 sendRefreshSummaryEventWithPosterConfiguration:v150];

          v39 = v142;
        }

        else
        {
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v196 = v153;
            *&v196[8] = 2112;
            *&v196[10] = v90;
            _os_log_error_impl(&dword_22FA28000, v98, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to save updated poster configuration %@: %@\nSkipping configuration", buf, 0x16u);
          }

          [v140 lock];
          [v139 addObject:v90];
          [v140 unlock];
        }

        goto LABEL_123;
      }

      v128 = *(a1 + 64);
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v196 = v153;
        *&v196[8] = 2112;
        *&v196[10] = v95;
        _os_log_error_impl(&dword_22FA28000, v128, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to create/export media for poster configuration %@: %@\nSkipping configuration", buf, 0x16u);
        if (!v95)
        {
LABEL_122:
          v90 = 0;
          goto LABEL_123;
        }
      }

      else if (!v95)
      {
        goto LABEL_122;
      }

      [v140 lock];
      [v139 addObject:v95];
      [v140 unlock];
      v90 = v95;
LABEL_123:

LABEL_124:
      v109 = v152;
      v112 = v149;
      v21 = v143;
LABEL_125:

      v55 = v148 + 1;
      if (v148 + 1 == v146)
      {
        v146 = [obj countByEnumeratingWithState:&v173 objects:v200 count:16];
        if (v146)
        {
          goto LABEL_44;
        }

        goto LABEL_127;
      }
    }

    v83 = *(a1 + 64);
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 138412546;
    *v196 = v153;
    *&v196[8] = 2112;
    *&v196[10] = v151;
    v84 = v83;
    v85 = "[PHAWallpaperSuggestionRefreshSession] Poster configuration %@ is new, %@";
    v86 = 22;
    goto LABEL_72;
  }

  v6 = *(*(a1 + 32) + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Configurations refresh was canceled", buf, 2u);
  }

LABEL_10:
  v7 = *(a1 + 80);
  v8 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
  (*(v7 + 16))(v7, 0, v8);
LABEL_129:
}

void __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke_371(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if (!v7 || (*(v7 + 16))(v7, v6))
  {
    [*(a1 + 32) addObject:v5];
    v8 = *(a1 + 40);
    v9 = [v5 assetDirectory];
    [v8 setObject:v6 forKeyedSubscript:v9];

    v10 = *(*(a1 + 48) + 56);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster configurations eligible for update: %@", &v11, 0xCu);
    }
  }
}

void __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke_378(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 80) + 8);
  if (*(v2 + 24))
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(a1 + 32) isCancelledWithProgress:0.95];
    v2 = *(*(a1 + 80) + 8);
  }

  *(v2 + 24) = v3;
  v4 = *(a1 + 40);
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v5 = v4[7];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_22FA28000, v5, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Configurations refresh was canceled", v16, 2u);
    }

    v6 = *(a1 + 72);
    v7 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    v7 = [v4 currentlyFeaturedSuggestionUUIDsForTop:0];
    [*(a1 + 40) updateSuggestionFeaturedStateWithNewSuggestionUUIDs:*(a1 + 48) oldSuggestionUUIDs:v7];
    v8 = *(*(a1 + 80) + 8);
    if (*(v8 + 24))
    {
      v9 = 1;
    }

    else
    {
      v9 = [*(a1 + 32) isCancelledWithProgress:1.0];
      v8 = *(*(a1 + 80) + 8);
    }

    *(v8 + 24) = v9;
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v10 = *(*(a1 + 40) + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Configurations refresh was canceled", v16, 2u);
      }

      v11 = *(a1 + 72);
      v12 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      (*(v11 + 16))(v11, 0, v12);
    }

    else
    {
      if (![*(a1 + 56) count])
      {
        (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 64), 0);
        goto LABEL_19;
      }

      v13 = MEMORY[0x277CCA9B8];
      v14 = *(a1 + 56);
      v17 = *MEMORY[0x277CCA578];
      v18[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v12 = [v13 pl_analysisErrorWithCode:25 userInfo:v15];

      (*(*(a1 + 72) + 16))(*(a1 + 72), 0, v12);
    }
  }

LABEL_19:
}

void __131__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationsForNightlyRefresh_progressReporter_passingFilter_withCompletion___block_invoke_384(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully refreshed poster configuration %@ to %@", buf, 0x16u);
    }

    v9 = *(a1 + 48);
    v10 = [v5 assetDirectory];
    v11 = [v10 path];
    [v9 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:v11];

    v12 = 64;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138412546;
      v21 = v17;
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Error refreshing poster configuration %@: %@", buf, 0x16u);
    }

    v18 = @"error";
    v19 = v6;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = *(a1 + 48);
    v15 = [*(a1 + 40) assetDirectory];
    v16 = [v15 path];
    [v14 setObject:v13 forKeyedSubscript:v16];

    [*(a1 + 72) addObject:v6];
    v12 = 80;
  }

  [*(a1 + 56) unionSet:*(a1 + v12)];
  [*(a1 + 88) unlock];
  dispatch_group_leave(*(a1 + 96));
}

- (void)refreshPosterDescriptorsWithProgressReporter:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_refreshSessionIdentifier)
  {
    v8 = v6;
    *v21 = 0;
    v22 = v21;
    v23 = 0x2020000000;
    v24 = 0;
    v9 = [v8 isCancelledWithProgress:0.0];
    v22[24] = v9;
    loggingConnection = self->_loggingConnection;
    if (v9)
    {
      if (os_log_type_enabled(self->_loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", buf, 2u);
      }

      v11 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      v7[2](v7, 0, v11);
    }

    else
    {
      v13 = loggingConnection;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_opt_class() lastGalleryRefreshDate];
        *buf = 138412290;
        v26 = v14;
        _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] LastGalleryRefreshDate: %@", buf, 0xCu);
      }

      posterService = self->_posterService;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __96__PHAWallpaperSuggestionRefreshSession_refreshPosterDescriptorsWithProgressReporter_completion___block_invoke;
      v16[3] = &unk_2788B2838;
      v16[4] = self;
      v19 = v7;
      v20 = v21;
      v17 = v8;
      v18 = v17;
      [(PRSService *)posterService fetchPosterDescriptorsForExtension:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" completion:v16];
    }

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v12 = self->_loggingConnection;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_22FA28000, v12, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] refreshPosterDescriptors called while refresh session has not been started", v21, 2u);
    }

    v8 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:2];
    v7[2](v7, 0, v8);
  }
}

void __96__PHAWallpaperSuggestionRefreshSession_refreshPosterDescriptorsWithProgressReporter_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 67109378;
      v32[0] = [v5 count];
      LOWORD(v32[1]) = 2112;
      *(&v32[1] + 2) = v5;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully fetched %d current poster descriptors: %@", buf, 0x12u);
    }

    v10 = *(*(a1 + 64) + 8);
    if (*(v10 + 24))
    {
      v11 = 1;
    }

    else
    {
      v11 = [*(a1 + 40) isCancelledWithProgress:0.2];
      v10 = *(*(a1 + 64) + 8);
    }

    *(v10 + 24) = v11;
    v16 = *(a1 + 32);
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v17 = *(v16 + 56);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", buf, 2u);
      }

      v18 = *(a1 + 56);
      v19 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      (*(v18 + 16))(v18, 0, v19);
    }

    else
    {
      v20 = *(v16 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__PHAWallpaperSuggestionRefreshSession_refreshPosterDescriptorsWithProgressReporter_completion___block_invoke_350;
      block[3] = &unk_2788B2810;
      block[4] = v16;
      v21 = *(a1 + 56);
      v28 = v5;
      *&v22 = v21;
      *(&v22 + 1) = *(a1 + 64);
      v26 = v22;
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      *&v25 = v23;
      *(&v25 + 1) = v24;
      v29 = v25;
      v30 = v26;
      dispatch_async(v20, block);
    }
  }

  else
  {
    v12 = [v6 code];
    v13 = *(a1 + 32);
    v14 = *(v13 + 56);
    if (v12 == -2218)
    {
      if (os_log_type_enabled(*(v13 + 56), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v32 = v7;
        _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] PosterDescriptor dataStore is not initialized, currentPosterDescriptors is empty, received fetchError: %@. Proceed with refreshSession.", buf, 0xCu);
      }

      v15 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (os_log_type_enabled(*(v13 + 56), OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v32 = v7;
        _os_log_error_impl(&dword_22FA28000, v14, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to fetch current poster descriptors: %@", buf, 0xCu);
      }

      v15 = *(*(a1 + 56) + 16);
    }

    v15();
  }
}

void __96__PHAWallpaperSuggestionRefreshSession_refreshPosterDescriptorsWithProgressReporter_completion___block_invoke_350(uint64_t a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 8))
  {
    v5 = *(v2 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v5, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Refresh session has been cleaned up, bailing", buf, 2u);
    }

    goto LABEL_7;
  }

  if (PLIsFeaturedContentAllowed())
  {
    v3 = *(*(a1 + 72) + 8);
    if (*(v3 + 24))
    {
      v4 = 1;
    }

    else
    {
      v4 = [*(a1 + 48) isCancelledWithProgress:0.25];
      v3 = *(*(a1 + 72) + 8);
    }

    *(v3 + 24) = v4;
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v11 = *(*(a1 + 32) + 56);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v11, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", buf, 2u);
      }

LABEL_7:
      v6 = *(a1 + 64);
      v7 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      (*(v6 + 16))(v6, 0, v7);

      return;
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([MEMORY[0x277D3C810] wallpaperDemoModeEnabled])
    {
      v14 = *(*(a1 + 32) + 56);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Wallpaper Demo Mode ON", buf, 2u);
      }

      v15 = [[PHAWallpaperGalleryDemoHelper alloc] initWithPhotoLibrary:*(*(a1 + 32) + 48) loggingConnection:*(*(a1 + 32) + 56)];
      v16 = [(PHAWallpaperGalleryDemoHelper *)v15 demoDescriptors];
      [v12 addObjectsFromArray:v16];
    }

    else
    {
      v15 = [[PHAWallpaperShuffleDescriptorGenerator alloc] initWithPhotoLibrary:*(*(a1 + 32) + 48) loggingConnection:*(*(a1 + 32) + 56)];
      v16 = [(PHAWallpaperGalleryDemoHelper *)v15 shuffleDescriptorsForDonation];
      [v12 addObjectsFromArray:v16];
      v17 = [*(a1 + 32) suggestionUUIDsForPosterDescriptors:v16];
      [v13 unionSet:v17];

      v18 = [*(a1 + 32) settlingEffectDescriptorsForDonationWithSuggestionUUIDsToAvoid:v13];
      [v12 addObjectsFromArray:v18];
      v19 = [*(a1 + 32) suggestionUUIDsForPosterDescriptors:v18];
      [v13 unionSet:v19];

      v20 = [*(a1 + 32) spatialPhotoDescriptorsForDonationWithSuggestionUUIDsToAvoid:v13];
      [v12 addObjectsFromArray:v20];
      v21 = [*(a1 + 32) suggestionUUIDsForPosterDescriptors:v20];
      [v13 unionSet:v21];

      v22 = [*(a1 + 32) featuredPhotoDescriptorsForDonationWithSuggestionUUIDsToAvoid:v13 count:{11 - objc_msgSend(v18, "count")}];
      [v12 addObjectsFromArray:v22];
      v23 = [*(a1 + 32) suggestionUUIDsForPosterDescriptors:v22];
      [v13 unionSet:v23];
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v25 = v12;
    v26 = [v25 countByEnumeratingWithState:&v118 objects:v129 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v119;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v119 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v118 + 1) + 8 * i);
          v31 = [v30 identifier];
          [v24 setObject:v30 forKeyedSubscript:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v118 objects:v129 count:16];
      }

      while (v27);
    }

    v32 = [*(a1 + 32) currentlyFeaturedSuggestionUUIDsForTop:1];
    [*(a1 + 32) updateSuggestionFeaturedStateWithNewSuggestionUUIDs:v13 oldSuggestionUUIDs:v32];
    v33 = [v24 allKeys];
    v34 = [v24 count];
    v35 = *(*(a1 + 32) + 56);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (v36)
      {
        v37 = v35;
        v38 = [v24 count];
        *buf = 67109378;
        *v128 = v38;
        *&v128[4] = 2112;
        *&v128[6] = v33;
        _os_log_impl(&dword_22FA28000, v37, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Refreshing gallery with %d suggestions %@", buf, 0x12u);
      }

      v39 = *(*(a1 + 72) + 8);
      if (*(v39 + 24))
      {
        v40 = 1;
      }

      else
      {
        v40 = [*(a1 + 48) isCancelledWithProgress:0.3];
        v39 = *(*(a1 + 72) + 8);
      }

      *(v39 + 24) = v40;
      if (*(*(*(a1 + 72) + 8) + 24) == 1)
      {
        v41 = *(*(a1 + 32) + 56);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, v41, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", buf, 2u);
        }

        v42 = *(a1 + 64);
        v43 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
        (*(v42 + 16))(v42, 0, v43);
      }

      else
      {
        v102 = v32;
        v103 = v33;
        v104 = v13;
        v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v45 = *(a1 + 40);
        v46 = [v45 countByEnumeratingWithState:&v114 objects:v126 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v115;
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v115 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v114 + 1) + 8 * j);
              v51 = [v50 identifier];
              [v44 setObject:v50 forKeyedSubscript:v51];
            }

            v47 = [v45 countByEnumeratingWithState:&v114 objects:v126 count:16];
          }

          while (v47);
        }

        v52 = [*(a1 + 56) childProgressReporterFromStart:0.3 toEnd:0.8];
        v53 = *(a1 + 32);
        v113 = 0;
        v54 = [v53 updateIfNeededPosterDescriptors:v24 fromCurrentPosterDescriptors:v44 partialErrors:&v113 progressReporter:v52];
        v55 = v113;
        if (v54)
        {
          v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v55];
          v13 = v104;
          v101 = v56;
          if ([v54 count])
          {
            v57 = *(*(a1 + 72) + 8);
            v58 = v52;
            if (*(v57 + 24))
            {
              v59 = 1;
            }

            else
            {
              v59 = [*(a1 + 48) isCancelledWithProgress:0.85];
              v57 = *(*(a1 + 72) + 8);
            }

            *(v57 + 24) = v59;
            v69 = *(*(*(a1 + 72) + 8) + 24);
            v70 = *(a1 + 32);
            v71 = *(v70 + 56);
            v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
            if (v69 == 1)
            {
              v52 = v58;
              if (v72)
              {
                *buf = 0;
                _os_log_impl(&dword_22FA28000, v71, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", buf, 2u);
              }

              v73 = *(a1 + 64);
              v74 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
              (*(v73 + 16))(v73, 0, v74);
              v13 = v104;
              v62 = v101;
            }

            else
            {
              v99 = v55;
              v52 = v58;
              if (v72)
              {
                v75 = v71;
                v76 = [v54 count];
                *buf = 67109120;
                *v128 = v76;
                _os_log_impl(&dword_22FA28000, v75, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] %d poster descriptors changed, needs actual refresh", buf, 8u);

                v70 = *(a1 + 32);
              }

              v74 = [*(v70 + 16) URLByAppendingPathComponent:@"UpdatedPosterDescriptorIdentifiers"];
              v77 = [v54 allObjects];
              v78 = [v77 sortedArrayUsingSelector:sel_compare_];

              v112 = 0;
              v95 = v78;
              LODWORD(v77) = [v78 writeToURL:v74 error:&v112];
              v94 = v112;
              v79 = *(*(a1 + 32) + 56);
              if (v77)
              {
                v13 = v104;
                if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v128 = v95;
                  _os_log_impl(&dword_22FA28000, v79, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully persisted updated poster descriptor identifiers: %@", buf, 0xCu);
                }

                v80 = *(*(a1 + 72) + 8);
                if (*(v80 + 24))
                {
                  v81 = 1;
                }

                else
                {
                  v81 = [*(a1 + 48) isCancelledWithProgress:0.9];
                  v80 = *(*(a1 + 72) + 8);
                }

                v55 = v99;
                *(v80 + 24) = v81;
                if (*(*(*(a1 + 72) + 8) + 24) == 1)
                {
                  v97 = v52;
                  v85 = v74;
                  v86 = *(*(a1 + 32) + 56);
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22FA28000, v86, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", buf, 2u);
                  }

                  v87 = *(a1 + 64);
                  v88 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:{16, v94}];
                  (*(v87 + 16))(v87, 0, v88);

                  v62 = v101;
                  v74 = v85;
                  v52 = v97;
                }

                else
                {
                  v100 = objc_alloc_init(MEMORY[0x277D3E9E8]);
                  v89 = [*(*(a1 + 32) + 16) path];
                  [v100 setIdentifier:v89];

                  v90 = *(*(a1 + 32) + 24);
                  v105[0] = MEMORY[0x277D85DD0];
                  v105[1] = 3221225472;
                  v105[2] = __96__PHAWallpaperSuggestionRefreshSession_refreshPosterDescriptorsWithProgressReporter_completion___block_invoke_368;
                  v105[3] = &unk_2788B27E8;
                  v111 = *(a1 + 72);
                  v91 = *(a1 + 48);
                  v92 = *(a1 + 32);
                  v106 = v91;
                  v107 = v92;
                  v110 = *(a1 + 64);
                  v108 = v101;
                  v109 = v103;
                  v93 = v90;
                  v62 = v101;
                  [v93 refreshPosterDescriptorsForExtension:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" sessionInfo:v100 completion:v105];
                }

                v83 = v94;
              }

              else
              {
                v13 = v104;
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v128 = v94;
                  _os_log_error_impl(&dword_22FA28000, v79, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to persist updated poster descriptor identifiers: %@", buf, 0xCu);
                }

                v82 = *(*(a1 + 64) + 16);
                v83 = v94;
                v82();
                v55 = v99;
                v62 = v101;
              }
            }
          }

          else
          {
            v63 = *(*(a1 + 32) + 56);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22FA28000, v63, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] No poster descriptors changed, no actual refresh needed", buf, 2u);
            }

            v96 = v52;
            v98 = v55;
            if ([v56 count])
            {
              v64 = v56;
              v65 = MEMORY[0x277CCA9B8];
              v122 = *MEMORY[0x277CCA578];
              v123 = v64;
              v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
              v67 = [v65 pl_analysisErrorWithCode:24 userInfo:v66];
              v68 = 0;
            }

            else
            {
              v124 = @"posterDescriptorIdentifiers";
              v125 = v103;
              v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
              v84 = objc_opt_class();
              v66 = [MEMORY[0x277CBEAA8] date];
              [v84 saveLastGalleryRefreshDate:v66 loggingConnection:*(*(a1 + 32) + 56)];
              v67 = 0;
            }

            (*(*(a1 + 64) + 16))();
            v55 = v98;
            v62 = v101;
            v74 = v68;
            v52 = v96;
          }
        }

        else
        {
          v60 = *(*(a1 + 32) + 56);
          v13 = v104;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22FA28000, v60, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", buf, 2u);
          }

          v61 = *(a1 + 64);
          v62 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
          (*(v61 + 16))(v61, 0, v62);
        }

        v32 = v102;
        v33 = v103;
      }
    }

    else
    {
      if (v36)
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v35, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] No poster descriptors to refresh gallery, bailing", buf, 2u);
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);

    [v8 _removeIfNeededFeaturedContent:v9 withCompletion:v10];
  }
}

void __96__PHAWallpaperSuggestionRefreshSession_refreshPosterDescriptorsWithProgressReporter_completion___block_invoke_368(uint64_t a1, void *a2, void *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 72) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) isCancelledWithProgress:0.95];
    v7 = *(*(a1 + 72) + 8);
  }

  *(v7 + 24) = v8;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v9 = *(*(a1 + 40) + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", &v26, 2u);
    }

    v10 = *(a1 + 64);
    v11 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    v12 = *(*(a1 + 40) + 56);
    if (v5)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v26 = 67109120;
        LODWORD(v27) = [v5 count];
        _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Successfully refreshed %d poster descriptors", &v26, 8u);
      }

      if ([*(a1 + 48) count])
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = *(a1 + 48);
        v28 = *MEMORY[0x277CCA578];
        v29 = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v17 = [v14 pl_analysisErrorWithCode:24 userInfo:v16];

        v11 = 0;
      }

      else
      {
        v18 = *(a1 + 56);
        v30 = @"posterDescriptorIdentifiers";
        v31[0] = v18;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        v17 = 0;
      }

      v19 = objc_opt_class();
      v20 = [MEMORY[0x277CBEAA8] date];
      [v19 saveLastGalleryRefreshDate:v20 loggingConnection:*(*(a1 + 40) + 56)];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412290;
        v27 = v6;
        _os_log_error_impl(&dword_22FA28000, v12, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to refresh poster descriptors: %@", &v26, 0xCu);
      }

      v17 = v6;
      v11 = 0;
    }

    v21 = *(*(a1 + 72) + 8);
    if (*(v21 + 24))
    {
      v22 = 1;
    }

    else
    {
      v22 = [*(a1 + 32) isCancelledWithProgress:1.0];
      v21 = *(*(a1 + 72) + 8);
    }

    *(v21 + 24) = v22;
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v23 = *(*(a1 + 40) + 56);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_22FA28000, v23, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Poster Descriptors refresh was canceled", &v26, 2u);
      }

      v24 = *(a1 + 64);
      v25 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
      (*(v24 + 16))(v24, 0, v25);
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

- (void)_cleanup
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_refreshSessionIdentifier)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    refreshSessionURL = self->_refreshSessionURL;
    v12 = 0;
    v5 = [v3 removeItemAtURL:refreshSessionURL error:&v12];
    v6 = v12;

    loggingConnection = self->_loggingConnection;
    if (v5)
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        refreshSessionIdentifier = self->_refreshSessionIdentifier;
        *buf = 138412290;
        v14 = refreshSessionIdentifier;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully removed refresh session '%@' directory", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_refreshSessionIdentifier;
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to remove refresh session '%@' directory: %@", buf, 0x16u);
    }

    v10 = self->_refreshSessionIdentifier;
    self->_refreshSessionIdentifier = 0;
  }

  else
  {
    v9 = self->_loggingConnection;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22FA28000, v9, OS_LOG_TYPE_FAULT, "[PHAWallpaperSuggestionRefreshSession] Failed to close refresh session, session was not started or already closed", buf, 2u);
    }
  }
}

- (void)cleanup
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PHAWallpaperSuggestionRefreshSession_cleanup__block_invoke;
  block[3] = &unk_2788B2E78;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (BOOL)_prepareWithError:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  refreshSessionIdentifier = self->_refreshSessionIdentifier;
  if (refreshSessionIdentifier)
  {
    if (a3)
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = refreshSessionIdentifier;
        _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to begin refresh session, session already inflight with identifier '%@'", buf, 0xCu);
      }

      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:2];
      *a3 = LOBYTE(v7) = 0;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    v10 = self->_refreshSessionIdentifier;
    self->_refreshSessionIdentifier = v9;

    v11 = self->_loggingConnection;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_refreshSessionIdentifier;
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&dword_22FA28000, v11, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Starting refresh session with identifier '%@'", buf, 0xCu);
    }

    v13 = NSTemporaryDirectory();
    v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v13 isDirectory:1];
    v15 = [v14 URLByAppendingPathComponent:@"RefreshSessions"];

    v16 = [v15 URLByAppendingPathComponent:self->_refreshSessionIdentifier];
    refreshSessionURL = self->_refreshSessionURL;
    self->_refreshSessionURL = v16;

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = self->_refreshSessionURL;
    v27 = 0;
    v7 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v27];
    v20 = v27;

    v21 = self->_loggingConnection;
    if (v7)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = self->_refreshSessionURL;
        *buf = 138412290;
        v29 = v22;
        _os_log_impl(&dword_22FA28000, v21, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionRefreshSession] Successfully created refresh session directory at url '%@'", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v26 = self->_refreshSessionURL;
        *buf = 138412546;
        v29 = v26;
        v30 = 2112;
        v31 = v20;
        _os_log_error_impl(&dword_22FA28000, v21, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Failed to create refresh session directory at url '%@': %@", buf, 0x16u);
      }

      v23 = self->_refreshSessionIdentifier;
      self->_refreshSessionIdentifier = 0;

      if (a3)
      {
        v24 = v20;
        *a3 = v20;
      }
    }
  }

  return v7;
}

- (BOOL)prepareWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6732;
  v12 = __Block_byref_object_dispose__6733;
  v13 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PHAWallpaperSuggestionRefreshSession_prepareWithError___block_invoke;
  block[3] = &unk_2788B27C0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(workQueue, block);
  if (a3)
  {
    *a3 = v9[5];
  }

  v5 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

void __57__PHAWallpaperSuggestionRefreshSession_prepareWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  obj = 0;
  v3 = [v2 _prepareWithError:&obj];
  v4 = obj;
  *(*(a1[5] + 8) + 24) = v3;
  objc_storeStrong((*(a1[6] + 8) + 40), v4);
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  refreshSessionIdentifier = self->_refreshSessionIdentifier;
  if (refreshSessionIdentifier)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v7 = refreshSessionIdentifier;
      _os_log_fault_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_FAULT, "[PHAWallpaperSuggestionRefreshSession] Refresh session %@ deallocated while still in-flight, did you forget to call cleanup?", buf, 0xCu);
    }

    [(PHAWallpaperSuggestionRefreshSession *)self cleanup];
  }

  v5.receiver = self;
  v5.super_class = PHAWallpaperSuggestionRefreshSession;
  [(PHAWallpaperSuggestionRefreshSession *)&v5 dealloc];
}

- (PHAWallpaperSuggestionRefreshSession)initWithGraphManager:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = PHAWallpaperSuggestionRefreshSession;
  v6 = [(PHAWallpaperSuggestionRefreshSession *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphManager, a3);
    v8 = [v5 photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = v8;

    v10 = objc_alloc_init(MEMORY[0x277D3EA00]);
    posterService = v7->_posterService;
    v7->_posterService = v10;

    v12 = [MEMORY[0x277D267E8] analysisService];
    mediaAnalysisService = v7->_mediaAnalysisService;
    v7->_mediaAnalysisService = v12;

    v14 = [v5 workingContext];
    v15 = [v14 loggingConnection];
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_UTILITY, 0);

    v19 = dispatch_queue_create("com.apple.PHAWallpaperSuggestionRefreshSession", v18);
    workQueue = v7->_workQueue;
    v7->_workQueue = v19;

    v21 = [v5 analytics];
    analytics = v7->_analytics;
    v7->_analytics = v21;
  }

  return v7;
}

+ (id)lastGalleryRefreshDate
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"PHAWallpaperSuggestionLastGalleryRefreshDate"];

  return v3;
}

+ (void)saveLastGalleryRefreshDate:(id)a3 loggingConnection:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 setObject:v5 forKey:@"PHAWallpaperSuggestionLastGalleryRefreshDate"];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionRefreshSession] Saved lastGalleryRefreshDate: %@", &v8, 0xCu);
  }
}

+ (void)refreshPosterConfigurationWithPosterService:(id)a3 retryCount:(int64_t)a4 configuration:(id)a5 sessionInfo:(id)a6 log:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __136__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationWithPosterService_retryCount_configuration_sessionInfo_log_completion___block_invoke;
  v24[3] = &unk_2788B2930;
  v25 = v17;
  v26 = v15;
  v30 = a4;
  v31 = a1;
  v27 = v14;
  v28 = v16;
  v29 = v18;
  v19 = v18;
  v20 = v16;
  v21 = v14;
  v22 = v15;
  v23 = v17;
  [v21 refreshPosterConfiguration:v22 sessionInfo:v20 completion:v24];
}

void __136__PHAWallpaperSuggestionRefreshSession_refreshPosterConfigurationWithPosterService_retryCount_configuration_sessionInfo_log_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 || (v7 = *(a1 + 72), v7 < 1))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_error_impl(&dword_22FA28000, v8, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionRefreshSession] Error refreshing poster configuration %@: %@ retries left: %ld", &v10, 0x20u);
      v7 = *(a1 + 72);
      v8 = *(a1 + 32);
    }

    [*(a1 + 80) refreshPosterConfigurationWithPosterService:*(a1 + 48) retryCount:v7 - 1 configuration:*(a1 + 40) sessionInfo:*(a1 + 56) log:v8 completion:*(a1 + 64)];
  }
}

@end