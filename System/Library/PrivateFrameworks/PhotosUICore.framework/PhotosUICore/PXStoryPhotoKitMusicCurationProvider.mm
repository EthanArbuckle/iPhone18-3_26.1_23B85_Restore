@interface PXStoryPhotoKitMusicCurationProvider
+ (id)sharedInstance;
- (NSArray)recentlyUsedAppleMusicSongIDs;
- (NSArray)recentlyUsedFlexSongIDs;
- (PXStoryPhotoKitMusicCurationProvider)init;
- (id)_cachedResultForAssetContainer:(id)container options:(id)options;
- (id)_performRequestForAssetContainer:(id)container options:(id)options resultHandler:(id)handler;
- (id)requestMusicCurationForAssetContainer:(id)container options:(id)options resultHandler:(id)handler;
- (void)_handleMusicCurationResult:(id)result forAssetContainer:(id)container options:(id)options;
- (void)_removeRejectedSong:(id)song fromCachedResultForAssetContainer:(id)container;
- (void)_replaceSongWithSong:(id)song inCachedResultForAssetContainer:(id)container;
- (void)_saveNegativeFeedbackForSongIdentifier:(id)identifier assetContainer:(id)container;
- (void)applyNegativeFeedbackToSong:(id)song forAssetContainer:(id)container;
- (void)setRecentlyUsedAppleMusicSongIDs:(id)ds;
- (void)setRecentlyUsedFlexSongIDs:(id)ds;
- (void)updateAudioAsset:(id)asset forAssetContainer:(id)container;
@end

@implementation PXStoryPhotoKitMusicCurationProvider

- (void)_saveNegativeFeedbackForSongIdentifier:(id)identifier assetContainer:(id)container
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  containerCopy = container;
  container = [containerCopy container];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = container;

    if (v9)
    {
      workQueue = [(PXStoryPhotoKitMusicCurationProvider *)self workQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __94__PXStoryPhotoKitMusicCurationProvider__saveNegativeFeedbackForSongIdentifier_assetContainer___block_invoke;
      v13[3] = &unk_1E774C620;
      v11 = v9;
      v14 = v11;
      v15 = identifierCopy;
      dispatch_async(workQueue, v13);

      v12 = v14;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = PLStoryGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = containerCopy;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurationManager) Failed to save negative feedback for asset container of unsupported type: %@", buf, 0xCu);
  }

  v11 = 0;
LABEL_9:
}

void __94__PXStoryPhotoKitMusicCurationProvider__saveNegativeFeedbackForSongIdentifier_assetContainer___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];
  v32[0] = *MEMORY[0x1E6978F08];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [v3 setFetchPropertySets:v4];

  [v3 setIncludePendingMemories:1];
  [v3 setIncludeRejectedMemories:1];
  [v3 setIncludeLocalMemories:1];
  [v3 setIncludeStoryMemories:1];
  v5 = [*(a1 + 32) localIdentifier];
  v6 = MEMORY[0x1E6978650];
  v31 = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v8 = [v6 fetchAssetCollectionsWithType:4 localIdentifiers:v7 options:v3];

  if ([v8 count])
  {
    v9 = [v8 firstObject];
    v10 = MEMORY[0x1E6978B00];
    v11 = *(a1 + 40);
    v12 = [v9 userFeedbackProperties];
    v13 = [v12 userFeedback];
    v14 = [v10 negativeUserFeedbackForMemoryMusicWithSongIdentifier:v11 existingFeedback:v13];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __94__PXStoryPhotoKitMusicCurationProvider__saveNegativeFeedbackForSongIdentifier_assetContainer___block_invoke_202;
    v22[3] = &unk_1E774C620;
    v15 = v9;
    v23 = v15;
    v16 = v14;
    v24 = v16;
    v21 = 0;
    LOBYTE(v12) = [v2 performChangesAndWait:v22 error:&v21];
    v17 = v21;
    if ((v12 & 1) == 0)
    {
      v18 = PLStoryGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 138412802;
        v26 = v5;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurationManager) Failed to save negative feedback for song identifier %@ in memory %@ error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v15 = PLStoryGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      *buf = 138412546;
      v26 = v5;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurationManager) Failed to find memory %@ when saving negative feedback for song %@", buf, 0x16u);
    }
  }
}

void __94__PXStoryPhotoKitMusicCurationProvider__saveNegativeFeedbackForSongIdentifier_assetContainer___block_invoke_202(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978900] changeRequestForMemory:*(a1 + 32)];
  [v2 setUserFeedback:*(a1 + 40)];
}

- (void)_replaceSongWithSong:(id)song inCachedResultForAssetContainer:(id)container
{
  songCopy = song;
  containerCopy = container;
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PXStoryPhotoKitMusicCurationProvider__replaceSongWithSong_inCachedResultForAssetContainer___block_invoke;
  block[3] = &unk_1E774A1B8;
  block[4] = self;
  v12 = containerCopy;
  v13 = songCopy;
  v9 = songCopy;
  v10 = containerCopy;
  dispatch_async(stateQueue, block);
}

void __93__PXStoryPhotoKitMusicCurationProvider__replaceSongWithSong_inCachedResultForAssetContainer___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) stateQueue_cache];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v2 allKeys];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = AssetContainerFromCacheKey(v6);
        LODWORD(v7) = [v7 isEqual:v8];

        if (v7)
        {
          v9 = [v2 objectForKeyedSubscript:v6];
          v18 = 0;
          v19 = &v18;
          v20 = 0x2020000000;
          v21 = 0x7FFFFFFFFFFFFFFFLL;
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __93__PXStoryPhotoKitMusicCurationProvider__replaceSongWithSong_inCachedResultForAssetContainer___block_invoke_2;
          v15[3] = &unk_1E772DA68;
          v16 = *(a1 + 48);
          v17 = &v18;
          [v9 enumerateObjectsUsingBlock:v15];
          if (v19[3] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v9, "count")}];
            v11 = [v9 objectsAtIndexes:v10];
            v12 = [v11 mutableCopy];

            [v12 replaceObjectAtIndex:v19[3] withObject:*(a1 + 48)];
            v13 = PXAudioAssetFetchResultWithArray(v12);
            [v2 setObject:v13 forKeyedSubscript:v6];
          }

          _Block_object_dispose(&v18, 8);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v3);
  }
}

void __93__PXStoryPhotoKitMusicCurationProvider__replaceSongWithSong_inCachedResultForAssetContainer___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [*(a1 + 32) identifier];

  if (v7 == v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)_removeRejectedSong:(id)song fromCachedResultForAssetContainer:(id)container
{
  songCopy = song;
  containerCopy = container;
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PXStoryPhotoKitMusicCurationProvider__removeRejectedSong_fromCachedResultForAssetContainer___block_invoke;
  block[3] = &unk_1E774A1B8;
  block[4] = self;
  v12 = containerCopy;
  v13 = songCopy;
  v9 = songCopy;
  v10 = containerCopy;
  dispatch_async(stateQueue, block);
}

void __94__PXStoryPhotoKitMusicCurationProvider__removeRejectedSong_fromCachedResultForAssetContainer___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) stateQueue_cache];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = v19 = 0u;
  v2 = [v15 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = AssetContainerFromCacheKey(v7);
        LODWORD(v8) = [v8 isEqual:v9];

        if (v8)
        {
          v10 = [v15 objectForKeyedSubscript:v7];
          if ([v10 containsObject:*(a1 + 48)])
          {
            v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v10, "count")}];
            v12 = [v10 objectsAtIndexes:v11];
            v13 = [v12 mutableCopy];

            [v13 removeObject:*(a1 + 48)];
            v14 = PXAudioAssetFetchResultWithArray(v13);
            [v15 setObject:v14 forKeyedSubscript:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (id)_cachedResultForAssetContainer:(id)container options:(id)options
{
  containerCopy = container;
  categories = [options categories];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(categories, "count")}];
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __79__PXStoryPhotoKitMusicCurationProvider__cachedResultForAssetContainer_options___block_invoke;
  v21 = &unk_1E7744F50;
  v10 = categories;
  v22 = v10;
  v11 = v8;
  v23 = v11;
  selfCopy = self;
  v12 = containerCopy;
  v25 = v12;
  dispatch_sync(stateQueue, &v18);

  v13 = [v11 count];
  if (v13 == [v10 count])
  {
    v14 = [PXMusicCurationConcreteResult alloc];
    v15 = [v11 copy];
    v16 = [(PXMusicCurationConcreteResult *)v14 initWithSongsByCategory:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __79__PXStoryPhotoKitMusicCurationProvider__cachedResultForAssetContainer_options___block_invoke(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [a1[6] stateQueue_cache];
        v9 = CacheKey(a1[7], v7);
        v10 = [v8 objectForKeyedSubscript:v9];
        [a1[5] setObject:v10 forKeyedSubscript:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_handleMusicCurationResult:(id)result forAssetContainer:(id)container options:(id)options
{
  resultCopy = result;
  containerCopy = container;
  optionsCopy = options;
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PXStoryPhotoKitMusicCurationProvider__handleMusicCurationResult_forAssetContainer_options___block_invoke;
  v15[3] = &unk_1E7744F50;
  v16 = resultCopy;
  selfCopy = self;
  v18 = containerCopy;
  v19 = optionsCopy;
  v12 = optionsCopy;
  v13 = containerCopy;
  v14 = resultCopy;
  dispatch_async(stateQueue, v15);
}

void __93__PXStoryPhotoKitMusicCurationProvider__handleMusicCurationResult_forAssetContainer_options___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] songsByCategory];
  v3 = [a1[5] stateQueue_cache];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:{v9, v14}];
        v11 = CacheKey(a1[6], v9);
        [v3 setObject:v10 forKey:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [a1[5] stateQueue_requests];
  v13 = RequestCacheKey(a1[6], a1[7]);
  [v12 setObject:0 forKeyedSubscript:v13];
}

- (id)_performRequestForAssetContainer:(id)container options:(id)options resultHandler:(id)handler
{
  containerCopy = container;
  optionsCopy = options;
  handlerCopy = handler;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__3748;
  v54 = __Block_byref_object_dispose__3749;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__3748;
  v48 = __Block_byref_object_dispose__3749;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__3748;
  v42 = __Block_byref_object_dispose__3749;
  v43 = 0;
  v11 = RequestCacheKey(containerCopy, optionsCopy);
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PXStoryPhotoKitMusicCurationProvider__performRequestForAssetContainer_options_resultHandler___block_invoke;
  block[3] = &unk_1E772DA18;
  v35 = &v50;
  block[4] = self;
  v13 = v11;
  v34 = v13;
  v36 = &v44;
  v37 = &v38;
  dispatch_sync(stateQueue, block);

  v14 = v51[5];
  if (!v14)
  {
    objc_initWeak(&location, self);
    v15 = [_PXStoryMusicCurationProviderRequest alloc];
    v16 = v45[5];
    v17 = v39[5];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __95__PXStoryPhotoKitMusicCurationProvider__performRequestForAssetContainer_options_resultHandler___block_invoke_2;
    v28[3] = &unk_1E772DA40;
    objc_copyWeak(&v31, &location);
    v29 = containerCopy;
    v30 = optionsCopy;
    v18 = [(_PXStoryMusicCurationProviderRequest *)v15 initWithAssetContainer:v29 options:v30 recentlyUsedFlexSongIDs:v16 recentlyUsedAppleMusicSongIDs:v17 completion:v28];
    v19 = v51[5];
    v51[5] = v18;

    stateQueue2 = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __95__PXStoryPhotoKitMusicCurationProvider__performRequestForAssetContainer_options_resultHandler___block_invoke_3;
    v25[3] = &unk_1E7746448;
    v25[4] = self;
    v26 = v13;
    v27 = &v50;
    dispatch_sync(stateQueue2, v25);

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    v14 = v51[5];
  }

  [v14 appendResultHandler:handlerCopy];
  workQueue = [(PXStoryPhotoKitMusicCurationProvider *)self workQueue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__PXStoryPhotoKitMusicCurationProvider__performRequestForAssetContainer_options_resultHandler___block_invoke_4;
  v24[3] = &unk_1E774BD00;
  v24[4] = &v50;
  dispatch_async(workQueue, v24);

  progress = [v51[5] progress];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);

  return progress;
}

void __95__PXStoryPhotoKitMusicCurationProvider__performRequestForAssetContainer_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateQueue_requests];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) stateQueue_recentlyUsedFlexSongIDs];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) stateQueue_recentlyUsedAppleMusicSongIDs];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __95__PXStoryPhotoKitMusicCurationProvider__performRequestForAssetContainer_options_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleMusicCurationResult:v3 forAssetContainer:*(a1 + 32) options:*(a1 + 40)];
}

void __95__PXStoryPhotoKitMusicCurationProvider__performRequestForAssetContainer_options_resultHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) stateQueue_requests];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)updateAudioAsset:(id)asset forAssetContainer:(id)container
{
  v13 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  containerCopy = container;
  v8 = PLStoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = assetCopy;
    v11 = 2112;
    v12 = containerCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurationManager) Received request to update song: %@ in asset container: %@", &v9, 0x16u);
  }

  [(PXStoryPhotoKitMusicCurationProvider *)self _replaceSongWithSong:assetCopy inCachedResultForAssetContainer:containerCopy];
}

- (void)applyNegativeFeedbackToSong:(id)song forAssetContainer:(id)container
{
  v14 = *MEMORY[0x1E69E9840];
  songCopy = song;
  containerCopy = container;
  v8 = PLStoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = songCopy;
    v12 = 2112;
    v13 = containerCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurationManager) Received request to apply negative feedback for song: %@ in asset container: %@", &v10, 0x16u);
  }

  [(PXStoryPhotoKitMusicCurationProvider *)self _removeRejectedSong:songCopy fromCachedResultForAssetContainer:containerCopy];
  identifier = [songCopy identifier];
  [(PXStoryPhotoKitMusicCurationProvider *)self _saveNegativeFeedbackForSongIdentifier:identifier assetContainer:containerCopy];
}

- (id)requestMusicCurationForAssetContainer:(id)container options:(id)options resultHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [(PXStoryPhotoKitMusicCurationProvider *)self log];
  v12 = os_signpost_id_make_with_pointer(v11, self);
  v13 = v11;
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 134217984;
    logContext = [optionsCopy logContext];
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PXStoryMusicCurationManagerResultDelivery", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
  }

  spid = v12;

  if (optionsCopy)
  {
    v16 = [optionsCopy copy];
  }

  else
  {
    v16 = objc_alloc_init(PXStoryMusicCurationProviderOptions);
  }

  v17 = v16;
  categories = [(PXStoryMusicCurationProviderOptions *)v16 categories];
  if ([categories count])
  {
    [(PXStoryMusicCurationProviderOptions *)v17 categories];
  }

  else
  {
    PXAllMusicCurationCategories();
  }
  v19 = ;
  [(PXStoryMusicCurationProviderOptions *)v17 setCategories:v19];

  v20 = +[PXStorySettings sharedInstance];
  LOBYTE(v19) = [v20 isAppleMusicAllowed];

  if ((v19 & 1) == 0)
  {
    categories2 = [(PXStoryMusicCurationProviderOptions *)v17 categories];
    v22 = PXAppleMusicCurationCategories();
    v23 = PXSetSubtract(categories2, v22);
    [(PXStoryMusicCurationProviderOptions *)v17 setCategories:v23];
  }

  v24 = PLStoryGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    identifier = [containerCopy identifier];
    categories3 = [(PXStoryMusicCurationProviderOptions *)v17 categories];
    *buf = 138412546;
    logContext = identifier;
    v46 = 2112;
    v47 = categories3;
    _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurationManager) Received request for music curation for asset container: %@; categories: %@", buf, 0x16u);
  }

  v27 = [(PXStoryPhotoKitMusicCurationProvider *)self _cachedResultForAssetContainer:containerCopy options:v17];
  isComplete = [v27 isComplete];
  v29 = PLStoryGetLog();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
  if (isComplete)
  {
    if (v30)
    {
      identifier2 = [containerCopy identifier];
      *buf = 138412290;
      logContext = identifier2;
      _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurationManager) Cached music curation result found for asset container: %@.", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, v27);
    v32 = v14;
    v33 = v32;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      logContext2 = [optionsCopy logContext];
      *buf = 134218242;
      logContext = logContext2;
      v46 = 2114;
      v47 = v27;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v33, OS_SIGNPOST_INTERVAL_END, spid, "PXStoryMusicCurationManagerResultDelivery", "Context=%{signpost.telemetry:string2}lu %{public}@", buf, 0x16u);
    }

    v35 = 0;
  }

  else
  {
    if (v30)
    {
      identifier3 = [containerCopy identifier];
      *buf = 138412290;
      logContext = identifier3;
      _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurationManager) No music curation result found. Starting new request for asset container: %@", buf, 0xCu);
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __100__PXStoryPhotoKitMusicCurationProvider_requestMusicCurationForAssetContainer_options_resultHandler___block_invoke;
    v39[3] = &unk_1E772D9F0;
    v40 = v14;
    v43 = spid;
    v41 = optionsCopy;
    v42 = handlerCopy;
    v35 = [(PXStoryPhotoKitMusicCurationProvider *)self _performRequestForAssetContainer:containerCopy options:v17 resultHandler:v39];

    v33 = v40;
  }

  return v35;
}

void __100__PXStoryPhotoKitMusicCurationProvider_requestMusicCurationForAssetContainer_options_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [*(a1 + 40) logContext];
    v8 = 134218242;
    v9 = v7;
    v10 = 2114;
    v11 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PXStoryMusicCurationManagerResultDelivery", "Context=%{signpost.telemetry:string2}lu %{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)setRecentlyUsedAppleMusicSongIDs:(id)ds
{
  v4 = [ds copy];
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PXStoryPhotoKitMusicCurationProvider_setRecentlyUsedAppleMusicSongIDs___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSArray)recentlyUsedAppleMusicSongIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3748;
  v11 = __Block_byref_object_dispose__3749;
  v12 = 0;
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PXStoryPhotoKitMusicCurationProvider_recentlyUsedAppleMusicSongIDs__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __69__PXStoryPhotoKitMusicCurationProvider_recentlyUsedAppleMusicSongIDs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateQueue_recentlyUsedAppleMusicSongIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setRecentlyUsedFlexSongIDs:(id)ds
{
  v4 = [ds copy];
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PXStoryPhotoKitMusicCurationProvider_setRecentlyUsedFlexSongIDs___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSArray)recentlyUsedFlexSongIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3748;
  v11 = __Block_byref_object_dispose__3749;
  v12 = 0;
  stateQueue = [(PXStoryPhotoKitMusicCurationProvider *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PXStoryPhotoKitMusicCurationProvider_recentlyUsedFlexSongIDs__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __63__PXStoryPhotoKitMusicCurationProvider_recentlyUsedFlexSongIDs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateQueue_recentlyUsedFlexSongIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (PXStoryPhotoKitMusicCurationProvider)init
{
  v3.receiver = self;
  v3.super_class = PXStoryPhotoKitMusicCurationProvider;
  if ([(PXStoryPhotoKitMusicCurationProvider *)&v3 init])
  {
    px_dispatch_queue_create_serial();
  }

  return 0;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3800 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3800, &__block_literal_global_3801);
  }

  v3 = sharedInstance_sharedInstance_3802;

  return v3;
}

void __54__PXStoryPhotoKitMusicCurationProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXStoryPhotoKitMusicCurationProvider);
  v1 = sharedInstance_sharedInstance_3802;
  sharedInstance_sharedInstance_3802 = v0;
}

@end