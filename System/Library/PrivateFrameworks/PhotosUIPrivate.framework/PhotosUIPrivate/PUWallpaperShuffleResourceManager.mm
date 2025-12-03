@interface PUWallpaperShuffleResourceManager
- (BOOL)_expectedShuffleSpatialPhotoEnableStateForPosterMedia:(id)media;
- (PUWallpaperShuffleResourceManager)initWithPosterMedia:(id)media style:(id)style assetDirectory:(id)directory persistedStyle:(id)persistedStyle photoLibrary:(id)library shuffleType:(int64_t)type;
- (id)_loadResourceForPosterMedia:(id)media isPreloading:(BOOL)preloading completion:(id)completion;
- (id)segmentationItemLoadingOperationForPosterMedia:(id)media;
- (void)_handleSetStyle:(id)style;
- (void)_preloadNextMedia;
- (void)cancelPreloading;
- (void)exportResourcesForFinalPosterMedia:(id)media options:(unint64_t)options assetDirectory:(id)directory progressHandler:(id)handler completion:(id)completion;
- (void)preloadResourceForPosterMedia:(id)media;
- (void)requestResourceForPosterMedia:(id)media completion:(id)completion;
- (void)setEnabledEffects:(unint64_t)effects;
- (void)setStyle:(id)style;
- (void)startPreloadingResourcesForPosterMedia:(id)media;
- (void)stopPreloadingResources;
- (void)stopPreloadingResourcesWithTimeout:(double)timeout;
@end

@implementation PUWallpaperShuffleResourceManager

- (id)segmentationItemLoadingOperationForPosterMedia:(id)media
{
  mediaCopy = media;
  segmentationLoadingOperationsByAssetUUIDs = [(PUWallpaperShuffleResourceManager *)self segmentationLoadingOperationsByAssetUUIDs];
  assetUUID = [mediaCopy assetUUID];
  v7 = [segmentationLoadingOperationsByAssetUUIDs objectForKeyedSubscript:assetUUID];

  if (!v7)
  {
    v8 = [(PUWallpaperShuffleResourceManager *)self _expectedShuffleSpatialPhotoEnableStateForPosterMedia:mediaCopy];
    v9 = [PUWallpaperShuffleSegmentationLoadingOperation alloc];
    assetDirectory = [(PUWallpaperShuffleResourceManager *)self assetDirectory];
    photoLibrary = [(PUWallpaperShuffleResourceManager *)self photoLibrary];
    LOBYTE(v14) = 0;
    v7 = [(PUWallpaperShuffleSegmentationLoadingOperation *)v9 initWithPosterMedia:mediaCopy assetDirectory:assetDirectory photoLibrary:photoLibrary shuffleType:[(PUWallpaperShuffleResourceManager *)self shuffleType] supportedEffects:[(PUWallpaperShuffleResourceManager *)self supportedEffects] enableSpatialPhoto:v8 isPreloading:v14];

    operationQueue = [(PUWallpaperShuffleResourceManager *)self operationQueue];
    [operationQueue addOperation:v7];
  }

  return v7;
}

- (void)exportResourcesForFinalPosterMedia:(id)media options:(unint64_t)options assetDirectory:(id)directory progressHandler:(id)handler completion:(id)completion
{
  v112 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  directoryCopy = directory;
  handlerCopy = handler;
  completionCopy = completion;
  v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
  style = [(PUWallpaperShuffleResourceManager *)self style];
  v14 = [PUWallpaperExportProgress alloc];
  v15 = PXMap();
  v73 = [(PUWallpaperExportProgress *)v14 initWithAssetUUIDs:v15 progressHandler:handlerCopy];

  enabledEffects = [(PUWallpaperShuffleResourceManager *)self enabledEffects];
  enabledEffects2 = [(PUWallpaperShuffleResourceManager *)self enabledEffects];
  v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = PLWallpaperGetLog();
  v18 = os_signpost_id_generate(v17);
  v19 = v17;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "exportResourcesForFinalPosterMedia", "", buf, 2u);
  }

  v63 = v18;
  v64 = v20;

  info = 0;
  mach_timebase_info(&info);
  v62 = mach_absolute_time();
  v21 = PLWallpaperGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    operationQueue = [(PUWallpaperShuffleResourceManager *)self operationQueue];
    operationQueue2 = [(PUWallpaperShuffleResourceManager *)self operationQueue];
    operations = [operationQueue2 operations];
    *buf = 134218242;
    v109 = operationQueue;
    v110 = 2114;
    v111 = operations;
    _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_INFO, "Starting shuffle export with current operations in the queue %p:\n%{public}@", buf, 0x16u);
  }

  assetDirectory = [(PUWallpaperShuffleResourceManager *)self assetDirectory];
  v74 = directoryCopy;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = mediaCopy;
  v75 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
  if (v75)
  {
    v69 = *v103;
    v67 = (enabledEffects >> 1) & 1;
    do
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v103 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v102 + 1) + 8 * i);
        assetUUID = [v26 assetUUID];
        segmentationLoadingOperationsByAssetUUIDs = [(PUWallpaperShuffleResourceManager *)self segmentationLoadingOperationsByAssetUUIDs];
        v29 = [segmentationLoadingOperationsByAssetUUIDs objectForKeyedSubscript:assetUUID];

        if (!v29)
        {
          v30 = [(PUWallpaperShuffleResourceManager *)self _expectedShuffleSpatialPhotoEnableStateForPosterMedia:v26];
          v31 = [PUWallpaperShuffleSegmentationLoadingOperation alloc];
          photoLibrary = [(PUWallpaperShuffleResourceManager *)self photoLibrary];
          LOBYTE(v61) = 0;
          v29 = [(PUWallpaperShuffleSegmentationLoadingOperation *)v31 initWithPosterMedia:v26 assetDirectory:assetDirectory photoLibrary:photoLibrary shuffleType:[(PUWallpaperShuffleResourceManager *)self shuffleType] supportedEffects:[(PUWallpaperShuffleResourceManager *)self supportedEffects] enableSpatialPhoto:v30 isPreloading:v61];

          [v77 addObject:v29];
        }

        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __122__PUWallpaperShuffleResourceManager_exportResourcesForFinalPosterMedia_options_assetDirectory_progressHandler_completion___block_invoke_60;
        v99[3] = &unk_1E7B76F80;
        v33 = v73;
        v100 = v33;
        v34 = assetUUID;
        v101 = v34;
        [(PUWallpaperShuffleSegmentationLoadingOperation *)v29 setDownloadProgressHandler:v99];
        v35 = objc_alloc_init(PUWallpaperShuffleResourceExportOperation);
        [(PUWallpaperShuffleResourceExportOperation *)v35 setSourceDirectory:assetDirectory];
        [(PUWallpaperShuffleResourceExportOperation *)v35 setExportDirectory:v74];
        initialPosterMediaByAssetUUIDs = [(PUWallpaperShuffleResourceManager *)self initialPosterMediaByAssetUUIDs];
        v37 = [initialPosterMediaByAssetUUIDs objectForKeyedSubscript:v34];
        v38 = v37;
        if (v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v26;
        }

        [(PUWallpaperShuffleResourceExportOperation *)v35 setPosterMedia:v39];

        editConfiguration = [v26 editConfiguration];
        [(PUWallpaperShuffleResourceExportOperation *)v35 setEditConfiguration:editConfiguration];

        [(PUWallpaperShuffleResourceExportOperation *)v35 setStyle:style];
        persistedStyle = [(PUWallpaperShuffleResourceManager *)self persistedStyle];
        [(PUWallpaperShuffleResourceExportOperation *)v35 setPersistedStyle:persistedStyle];

        [(PUWallpaperShuffleResourceManager *)self shuffleType];
        if (PFPosterShuffleTypeIsSmart())
        {
          editConfiguration2 = [(PUWallpaperShuffleResourceExportOperation *)v35 editConfiguration];
          [editConfiguration2 setIsSpatialPhotoEnabled:v67];

          editConfiguration3 = [(PUWallpaperShuffleResourceExportOperation *)v35 editConfiguration];
          [editConfiguration3 setIsDepthEnabled:enabledEffects2 & 1];

          editConfiguration4 = [(PUWallpaperShuffleResourceExportOperation *)v35 editConfiguration];
          [editConfiguration4 setIsLandscapeDepthEnabled:enabledEffects2 & 1];
        }

        editConfiguration5 = [(PUWallpaperShuffleResourceExportOperation *)v35 editConfiguration];
        isSpatialPhotoEnabled = [editConfiguration5 isSpatialPhotoEnabled];

        if (isSpatialPhotoEnabled)
        {
          [(PUWallpaperShuffleResourceManager *)self shuffleType];
          IsSmart = PFPosterShuffleTypeIsSmart();
          v48 = 1280;
          if (IsSmart)
          {
            v48 = 256;
          }

          optionsCopy = v48 | options;
        }

        else
        {
          optionsCopy = options;
        }

        options = optionsCopy;
        [(PUWallpaperShuffleResourceExportOperation *)v35 setOptions:?];
        objc_initWeak(buf, v35);
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __122__PUWallpaperShuffleResourceManager_exportResourcesForFinalPosterMedia_options_assetDirectory_progressHandler_completion___block_invoke_2;
        v94[3] = &unk_1E7B7F478;
        objc_copyWeak(&v98, buf);
        v95 = v71;
        v50 = v33;
        v96 = v50;
        v51 = v34;
        v97 = v51;
        [(PUWallpaperShuffleResourceExportOperation *)v35 setCompletionBlock:v94];
        objc_initWeak(&location, v29);
        v52 = MEMORY[0x1E696AAE0];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __122__PUWallpaperShuffleResourceManager_exportResourcesForFinalPosterMedia_options_assetDirectory_progressHandler_completion___block_invoke_3;
        v88[3] = &unk_1E7B76FA8;
        objc_copyWeak(&v91, buf);
        objc_copyWeak(&v92, &location);
        v89 = v50;
        v53 = v51;
        v90 = v53;
        v54 = [v52 blockOperationWithBlock:v88];
        [v54 addDependency:v29];
        [(PUWallpaperShuffleResourceExportOperation *)v35 addDependency:v54];
        [v77 addObject:v54];
        [v77 addObject:v35];

        objc_destroyWeak(&v92);
        objc_destroyWeak(&v91);
        objc_destroyWeak(&location);

        objc_destroyWeak(&v98);
        objc_destroyWeak(buf);
      }

      v75 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
    }

    while (v75);
  }

  exportOperationQueue = [(PUWallpaperShuffleResourceManager *)self exportOperationQueue];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __122__PUWallpaperShuffleResourceManager_exportResourcesForFinalPosterMedia_options_assetDirectory_progressHandler_completion___block_invoke_4;
  v86[3] = &unk_1E7B80DD0;
  v56 = v73;
  v87 = v56;
  [exportOperationQueue addBarrierBlock:v86];
  [exportOperationQueue addOperations:v77 waitUntilFinished:0];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __122__PUWallpaperShuffleResourceManager_exportResourcesForFinalPosterMedia_options_assetDirectory_progressHandler_completion___block_invoke_5;
  v78[3] = &unk_1E7B76FD0;
  v79 = v56;
  v80 = v64;
  v82 = completionCopy;
  v83 = v62;
  v84 = v63;
  v85 = info;
  v81 = v71;
  v57 = v71;
  v58 = completionCopy;
  v59 = v64;
  v60 = v56;
  [exportOperationQueue addBarrierBlock:v78];
}

void __122__PUWallpaperShuffleResourceManager_exportResourcesForFinalPosterMedia_options_assetDirectory_progressHandler_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained error];

  if (v2)
  {
    v3 = [WeakRetained error];
    v4 = *(a1 + 32);
    v5 = [WeakRetained posterMedia];
    v6 = [v5 assetUUID];
    [v4 setObject:v3 forKeyedSubscript:v6];
  }

  [*(a1 + 40) reportProcessingProgress:*(a1 + 48) forAssetUUID:1.0];
}

void __122__PUWallpaperShuffleResourceManager_exportResourcesForFinalPosterMedia_options_assetDirectory_progressHandler_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  v3 = [v2 segmentationItem];

  if (v3)
  {
    v4 = [v2 segmentationItem];
    [WeakRetained setSegmentationItem:v4];
  }

  else
  {
    v4 = [v2 error];
    [WeakRetained setError:v4];
  }

  [*(a1 + 32) reportDownloadProgress:*(a1 + 40) forAssetUUID:1.0];
}

void __122__PUWallpaperShuffleResourceManager_exportResourcesForFinalPosterMedia_options_assetDirectory_progressHandler_completion___block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) finish];
  v2 = mach_absolute_time();
  v3 = *(a1 + 64);
  v5 = *(a1 + 80);
  v4 = *(a1 + 84);
  v6 = *(a1 + 40);
  v7 = v6;
  v8 = *(a1 + 72);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "exportResourcesForFinalPosterMedia", "", buf, 2u);
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "exportResourcesForFinalPosterMedia";
    v14 = 2048;
    v15 = ((((v2 - v3) * v5) / v4) / 1000000.0);
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  px_dispatch_on_main_queue();
}

- (void)preloadResourceForPosterMedia:(id)media
{
  v23 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  [(PUWallpaperShuffleResourceManager *)self cancelPreloading];
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    assetUUID = [mediaCopy assetUUID];
    *buf = 138543362;
    *&buf[4] = assetUUID;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "Preloading shuffle asset %{public}@", buf, 0xCu);
  }

  v7 = PLWallpaperGetLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "preloadResourceForPosterMedia", "", buf, 2u);
  }

  *buf = 0;
  mach_timebase_info(buf);
  v11 = mach_absolute_time();
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __67__PUWallpaperShuffleResourceManager_preloadResourceForPosterMedia___block_invoke;
  v17 = &unk_1E7B76F38;
  v18 = v10;
  v19 = v11;
  v20 = v8;
  v21 = *buf;
  v12 = v10;
  v13 = [(PUWallpaperShuffleResourceManager *)self _loadResourceForPosterMedia:mediaCopy isPreloading:1 completion:&v14];
  [(PUWallpaperShuffleResourceManager *)self setNextLayerStackOperation:v13, v14, v15, v16, v17];
}

void __67__PUWallpaperShuffleResourceManager_preloadResourceForPosterMedia___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = mach_absolute_time();
  v6 = *(a1 + 56);
  v5 = *(a1 + 60);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_INTERVAL_END, v10, "preloadResourceForPosterMedia", "", &v16, 2u);
  }

  v11 = *(a1 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "preloadResourceForPosterMedia";
    v18 = 2048;
    v19 = ((((v4 - v7) * v6) / v5) / 1000000.0);
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v16, 0x16u);
  }

  v12 = [v3 layerStack];
  if (!v12)
  {
    if ([v3 isCancelled])
    {
      goto LABEL_8;
    }

    v12 = PLWallpaperGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v3 posterMedia];
      v14 = [v13 assetUUID];
      v15 = [v3 error];
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = *&v15;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Failed to preload shuffle asset %{public}@, error: %{public}@", &v16, 0x16u);
    }
  }

LABEL_8:
}

- (void)cancelPreloading
{
  v11 = *MEMORY[0x1E69E9840];
  nextLayerStackOperation = [(PUWallpaperShuffleResourceManager *)self nextLayerStackOperation];

  if (nextLayerStackOperation)
  {
    v4 = PLWallpaperGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      nextLayerStackOperation2 = [(PUWallpaperShuffleResourceManager *)self nextLayerStackOperation];
      posterMedia = [nextLayerStackOperation2 posterMedia];
      assetUUID = [posterMedia assetUUID];
      v9 = 138543362;
      v10 = assetUUID;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_INFO, "Canceling preloading for shuffle asset %{public}@", &v9, 0xCu);
    }

    nextLayerStackOperation3 = [(PUWallpaperShuffleResourceManager *)self nextLayerStackOperation];
    [nextLayerStackOperation3 cancel];

    [(PUWallpaperShuffleResourceManager *)self setNextLayerStackOperation:0];
  }
}

- (id)_loadResourceForPosterMedia:(id)media isPreloading:(BOOL)preloading completion:(id)completion
{
  v61 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  completionCopy = completion;
  initialPosterMediaByAssetUUIDs = [(PUWallpaperShuffleResourceManager *)self initialPosterMediaByAssetUUIDs];
  assetUUID = [mediaCopy assetUUID];
  v10 = [initialPosterMediaByAssetUUIDs objectForKeyedSubscript:assetUUID];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = mediaCopy;
  }

  v49 = v12;

  v13 = [(PUWallpaperShuffleResourceManager *)self _expectedShuffleSpatialPhotoEnableStateForPosterMedia:mediaCopy];
  segmentationLoadingOperationsByAssetUUIDs = [(PUWallpaperShuffleResourceManager *)self segmentationLoadingOperationsByAssetUUIDs];
  assetUUID2 = [mediaCopy assetUUID];
  v16 = [segmentationLoadingOperationsByAssetUUIDs objectForKeyedSubscript:assetUUID2];

  if (v13 == [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 enableSpatialPhoto])
  {
    if (v16)
    {
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 cancel];
  }

  v18 = [PUWallpaperShuffleSegmentationLoadingOperation alloc];
  assetDirectory = [(PUWallpaperShuffleResourceManager *)self assetDirectory];
  photoLibrary = [(PUWallpaperShuffleResourceManager *)self photoLibrary];
  LOBYTE(v45) = preloading;
  v16 = [(PUWallpaperShuffleSegmentationLoadingOperation *)v18 initWithPosterMedia:v49 assetDirectory:assetDirectory photoLibrary:photoLibrary shuffleType:[(PUWallpaperShuffleResourceManager *)self shuffleType] supportedEffects:[(PUWallpaperShuffleResourceManager *)self supportedEffects] enableSpatialPhoto:v13 isPreloading:v45];

  v17 = 1;
LABEL_9:
  HIDWORD(v46) = v17;
  if (!preloading)
  {
    [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 setQueuePriority:8];
    [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 setQualityOfService:25];
  }

  [(PUWallpaperShuffleResourceManager *)self shuffleType];
  if (PFPosterShuffleTypeIsSmart())
  {
    v21 = 3;
  }

  else
  {
    v21 = 1;
  }

  v22 = [PUWallpaperShuffleLayerStackLoadingOperation alloc];
  editConfiguration = [mediaCopy editConfiguration];
  assetDirectory2 = [(PUWallpaperShuffleResourceManager *)self assetDirectory];
  style = [(PUWallpaperShuffleResourceManager *)self style];
  persistedStyle = [(PUWallpaperShuffleResourceManager *)self persistedStyle];
  LOBYTE(v46) = preloading;
  LOBYTE(v45) = v13;
  v27 = [(PUWallpaperShuffleLayerStackLoadingOperation *)v22 initWithPosterMedia:v49 editConfiguration:editConfiguration assetDirectory:assetDirectory2 style:style persistedStyle:persistedStyle allowedLayoutStrategies:v21 enableSpatialPhoto:v45 shuffleType:[(PUWallpaperShuffleResourceManager *)self shuffleType] isPreloading:v46];

  objc_initWeak(&location, v27);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __89__PUWallpaperShuffleResourceManager__loadResourceForPosterMedia_isPreloading_completion___block_invoke;
  v55[3] = &unk_1E7B7B3B0;
  objc_copyWeak(&v57, &location);
  v28 = completionCopy;
  v56 = v28;
  [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 setCompletionBlock:v55];
  if (!preloading)
  {
    [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 setQueuePriority:8];
    [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 setQualityOfService:25];
  }

  if ((v47 & 1) != 0 || ![(PXAsyncOperation *)v16 isFinished])
  {
    if ([(PUWallpaperShuffleSegmentationLoadingOperation *)v16 tryLoadSegmentationFromDirectory]&& [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 tryLoadLayerStackFromDirectory])
    {
      v34 = PLWallpaperGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        assetUUID3 = [mediaCopy assetUUID];
        *buf = 138543362;
        v60 = assetUUID3;
        _os_log_impl(&dword_1B36F3000, v34, OS_LOG_TYPE_INFO, "Shuffle poster media was loaded from directory: %{public}@", buf, 0xCu);
      }

      segmentationItem = [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 segmentationItem];
      [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 setSegmentationItem:segmentationItem];

      goto LABEL_32;
    }

    requestOperationQueue = [(PUWallpaperShuffleResourceManager *)self requestOperationQueue];
    if (v47)
    {
      segmentationLoadingOperationsByAssetUUIDs2 = [(PUWallpaperShuffleResourceManager *)self segmentationLoadingOperationsByAssetUUIDs];
      assetUUID4 = [mediaCopy assetUUID];
      [segmentationLoadingOperationsByAssetUUIDs2 setObject:v16 forKeyedSubscript:assetUUID4];

      [requestOperationQueue addOperation:v16];
    }

    objc_initWeak(buf, v16);
    objc_initWeak(&from, v27);
    v40 = MEMORY[0x1E696AAE0];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __89__PUWallpaperShuffleResourceManager__loadResourceForPosterMedia_isPreloading_completion___block_invoke_53;
    v51[3] = &unk_1E7B76F10;
    objc_copyWeak(&v52, buf);
    objc_copyWeak(&v53, &from);
    v41 = [v40 blockOperationWithBlock:v51];
    [v41 addDependency:v16];
    [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 addDependency:v41];
    [requestOperationQueue addOperation:v41];
    [requestOperationQueue addOperation:v27];
    v42 = v27;

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&from);
    objc_destroyWeak(buf);
  }

  else
  {
    v29 = PLWallpaperGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      assetUUID5 = [mediaCopy assetUUID];
      *buf = 138543362;
      v60 = assetUUID5;
      _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_INFO, "Shuffle poster media already segmented: %{public}@", buf, 0xCu);
    }

    segmentationItem2 = [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 segmentationItem];
    [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 setSegmentationItem:segmentationItem2];

    segmentationItem3 = [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 segmentationItem];
    LOBYTE(segmentationItem2) = segmentationItem3 == 0;

    if (segmentationItem2)
    {
      error = [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 error];
      [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 setError:error];
    }

    else
    {
      error = [(PUWallpaperShuffleSegmentationLoadingOperation *)v16 segmentationItem];
      [(PUWallpaperShuffleLayerStackLoadingOperation *)v27 setSegmentationItem:error];
    }

    if ([(PUWallpaperShuffleLayerStackLoadingOperation *)v27 tryLoadLayerStackFromDirectory])
    {
LABEL_32:
      (*(v28 + 2))(v28, v27);
      v42 = 0;
      goto LABEL_34;
    }

    requestOperationQueue2 = [(PUWallpaperShuffleResourceManager *)self requestOperationQueue];
    [requestOperationQueue2 addOperation:v27];

    v42 = v27;
  }

LABEL_34:

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);

  return v42;
}

void __89__PUWallpaperShuffleResourceManager__loadResourceForPosterMedia_isPreloading_completion___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = *(a1 + 32);
  v3 = objc_loadWeakRetained(&to);
  (*(v2 + 16))(v2, v3);

  objc_destroyWeak(&to);
}

void __89__PUWallpaperShuffleResourceManager__loadResourceForPosterMedia_isPreloading_completion___block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained segmentationItem];

  if (v3)
  {
    v4 = [WeakRetained segmentationItem];
    [v2 setSegmentationItem:v4];
  }

  else
  {
    v4 = [WeakRetained error];
    [v2 setError:v4];
  }
}

- (BOOL)_expectedShuffleSpatialPhotoEnableStateForPosterMedia:(id)media
{
  mediaCopy = media;
  [(PUWallpaperShuffleResourceManager *)self shuffleType];
  if (PFPosterShuffleTypeIsSmart())
  {
    v5 = ([(PUWallpaperShuffleResourceManager *)self enabledEffects]>> 1) & 1;
  }

  else
  {
    editConfiguration = [mediaCopy editConfiguration];
    LOBYTE(v5) = [editConfiguration isSpatialPhotoEnabled];
  }

  return v5;
}

- (void)requestResourceForPosterMedia:(id)media completion:(id)completion
{
  v70 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  completionCopy = completion;
  v7 = PLWallpaperGetLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "requestResourceForPosterMedia", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v11 = mach_absolute_time();
  style = [(PUWallpaperShuffleResourceManager *)self style];
  bakedStyle = [style bakedStyle];

  shuffleType = [(PUWallpaperShuffleResourceManager *)self shuffleType];
  v15 = [(PUWallpaperShuffleResourceManager *)self enabledEffects]& 1;
  enabledEffects = [(PUWallpaperShuffleResourceManager *)self enabledEffects];
  v17 = enabledEffects;
  v18 = (enabledEffects >> 1) & 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PUWallpaperShuffleResourceManager_requestResourceForPosterMedia_completion___block_invoke;
  aBlock[3] = &unk_1E7B76EE8;
  v57 = v11;
  v60 = info;
  v48 = v10;
  v54 = v48;
  v58 = v8;
  v59 = shuffleType;
  v61 = v15;
  v62 = v18;
  v46 = bakedStyle;
  v55 = v46;
  v47 = completionCopy;
  v56 = v47;
  v45 = _Block_copy(aBlock);
  nextLayerStackOperation = [(PUWallpaperShuffleResourceManager *)self nextLayerStackOperation];
  posterMedia = [nextLayerStackOperation posterMedia];
  assetUUID = [posterMedia assetUUID];
  v22 = mediaCopy;
  assetUUID2 = [mediaCopy assetUUID];
  if (assetUUID != assetUUID2 && ![assetUUID isEqual:assetUUID2])
  {
    goto LABEL_15;
  }

  style2 = [nextLayerStackOperation style];
  style3 = [(PUWallpaperShuffleResourceManager *)self style];
  if (style2 != style3 && ![style2 isEqual:style3])
  {

LABEL_15:
LABEL_16:
    [(PUWallpaperShuffleResourceManager *)self cancelPreloading];
    v34 = PLWallpaperGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      assetUUID3 = [v22 assetUUID];
      if ([nextLayerStackOperation enableSpatialPhoto])
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v37 = v36;
      v38 = v37;
      *buf = 138543874;
      if ((v17 & 2) != 0)
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v22 = mediaCopy;
      v65 = assetUUID3;
      v66 = 2112;
      v67 = v37;
      v68 = 2112;
      v69 = v39;
      v40 = v39;
      _os_log_impl(&dword_1B36F3000, v34, OS_LOG_TYPE_INFO, "Shuffle asset was NOT preloaded %{public}@ layerStackOperation.enableSpatialPhoto:%@ spatialPhotoEnabled:%@", buf, 0x20u);
    }

    v33 = v45;
    v41 = [(PUWallpaperShuffleResourceManager *)self _loadResourceForPosterMedia:v22 isPreloading:0 completion:v45];
    [(PUWallpaperShuffleResourceManager *)self setCurrentLayerStackOperation:v41];

    goto LABEL_25;
  }

  enableSpatialPhoto = [nextLayerStackOperation enableSpatialPhoto];
  v27 = [(PUWallpaperShuffleResourceManager *)self _expectedShuffleSpatialPhotoEnableStateForPosterMedia:mediaCopy];

  v28 = enableSpatialPhoto == v27;
  v22 = mediaCopy;
  if (!v28)
  {
    goto LABEL_16;
  }

  isFinished = [nextLayerStackOperation isFinished];
  v30 = PLWallpaperGetLog();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (isFinished)
  {
    if (v31)
    {
      assetUUID4 = [mediaCopy assetUUID];
      *buf = 138543362;
      v65 = assetUUID4;
      _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_INFO, "Shuffle asset was preloaded %{public}@", buf, 0xCu);
    }

    v33 = v45;
    (*(v45 + 2))(v45, nextLayerStackOperation);
  }

  else
  {
    if (v31)
    {
      assetUUID5 = [mediaCopy assetUUID];
      *buf = 138543362;
      v65 = assetUUID5;
      _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_INFO, "Shuffle asset is still preloading %{public}@", buf, 0xCu);
    }

    requestOperationQueue = [(PUWallpaperShuffleResourceManager *)self requestOperationQueue];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __78__PUWallpaperShuffleResourceManager_requestResourceForPosterMedia_completion___block_invoke_50;
    v50[3] = &unk_1E7B80B48;
    v33 = v45;
    v52 = v45;
    v44 = nextLayerStackOperation;
    v51 = v44;
    [requestOperationQueue addBarrierBlock:v50];

    [(PUWallpaperShuffleResourceManager *)self setCurrentLayerStackOperation:v44];
    [(PUWallpaperShuffleResourceManager *)self setNextLayerStackOperation:0];
  }

LABEL_25:
}

void __78__PUWallpaperShuffleResourceManager_requestResourceForPosterMedia_completion___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = mach_absolute_time();
  v5 = *(a1 + 56);
  v7 = *(a1 + 80);
  v6 = *(a1 + 84);
  v8 = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_INTERVAL_END, v10, "requestResourceForPosterMedia", "", buf, 2u);
  }

  v11 = *(a1 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v45 = "requestResourceForPosterMedia";
    v46 = 2048;
    v47 = ((((v4 - v5) * v7) / v6) / 1000000.0);
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v12 = [v3 segmentationItem];
  v13 = [v3 layerStack];
  v14 = [v3 error];
  if (!v13 && ([v3 isCancelled] & 1) == 0)
  {
    v15 = PLWallpaperGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v3 posterMedia];
      v17 = [v16 assetUUID];
      v18 = [v3 error];
      *buf = 138543618;
      v45 = v17;
      v46 = 2114;
      v47 = *&v18;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Failed to load shuffle asset %{public}@, error: %{public}@", buf, 0x16u);
    }
  }

  v19 = [v3 editConfiguration];
  if (PFPosterShuffleTypeIsSmart())
  {
    v20 = [v13 compoundLayerStackByUpdatingPortraitDepthEnabled:*(a1 + 88) landscapeDepthEnabled:*(a1 + 88)];

    [v19 setIsDepthEnabled:*(a1 + 88)];
    v13 = [v20 compoundLayerStackByUpdatingSpatialPhotoEnabled:*(a1 + 89)];

    [v19 setIsSpatialPhotoEnabled:*(a1 + 89)];
  }

  if (v13 && !v19)
  {
    v19 = objc_alloc_init(MEMORY[0x1E69C07F8]);
    v21 = [v13 layout];
    v22 = [v21 portraitLayout];
    __78__PUWallpaperShuffleResourceManager_requestResourceForPosterMedia_completion___block_invoke_44(v22);
    PXRectFlippedVertically();
    [v19 setNormalizedVisibleFrame:?];

    v23 = [v13 layout];
    v24 = [v23 landscapeLayout];
    __78__PUWallpaperShuffleResourceManager_requestResourceForPosterMedia_completion___block_invoke_44(v24);
    PXRectFlippedVertically();
    [v19 setNormalizedLandscapeVisibleFrame:?];

    v25 = [v13 layout];
    v26 = [v25 portraitLayout];
    [v26 normalizedAdaptiveVisibleFrame];
    PXRectFlippedVertically();
    [v19 setNormalizedAdaptiveVisibleFrame:?];

    v27 = [v13 layout];
    v28 = [v27 landscapeLayout];
    [v28 normalizedAdaptiveVisibleFrame];
    PXRectFlippedVertically();
    [v19 setNormalizedLandscapeAdaptiveVisibleFrame:?];

    v29 = [v13 layout];
    v30 = [v29 portraitLayout];
    [v30 normalizedAdaptiveTimeFrame];
    PXRectFlippedVertically();
    [v19 setNormalizedAdaptiveTimeFrame:?];

    v31 = [v13 layout];
    v32 = [v31 landscapeLayout];
    [v32 normalizedAdaptiveTimeFrame];
    PXRectFlippedVertically();
    [v19 setNormalizedLandscapeAdaptiveTimeFrame:?];

    v33 = [v13 portraitLayerStack];
    [v19 setIsDepthEnabled:{objc_msgSend(v33, "depthEnabled")}];

    v34 = [v13 landscapeLayerStack];
    [v19 setIsLandscapeDepthEnabled:{objc_msgSend(v34, "depthEnabled")}];

    [v19 setIsSpatialPhotoEnabled:*(a1 + 89)];
  }

  v35 = [v12 adjustedStyleForHeadroom:*(a1 + 40)];
  [v19 setStyle:v35];

  v42 = v14;
  v43 = *(a1 + 48);
  v40 = v12;
  v41 = v13;
  v36 = v14;
  v37 = v19;
  v38 = v13;
  v39 = v12;
  px_dispatch_on_main_queue();
}

double __78__PUWallpaperShuffleResourceManager_requestResourceForPosterMedia_completion___block_invoke_44(void *a1)
{
  v1 = a1;
  [v1 visibleFrame];
  if ([v1 layoutVariant] == 2)
  {
    [v1 visibleFrame];
    [v1 adaptiveVisibleFrame];
    PXRectWithSizeAlignedToRectEdges();
  }

  [v1 originalImageExtent];
  PXRectNormalize();
  v3 = v2;

  return v3;
}

- (void)_preloadNextMedia
{
  nextLayerStackOperation = [(PUWallpaperShuffleResourceManager *)self nextLayerStackOperation];

  if (nextLayerStackOperation)
  {
    nextLayerStackOperation2 = [(PUWallpaperShuffleResourceManager *)self nextLayerStackOperation];
    posterMedia = [nextLayerStackOperation2 posterMedia];

    [(PUWallpaperShuffleResourceManager *)self preloadResourceForPosterMedia:posterMedia];
  }
}

- (void)setEnabledEffects:(unint64_t)effects
{
  if (self->_enabledEffects != effects)
  {
    self->_enabledEffects = effects;
    objc_initWeak(&location, self);
    operationQueue = [(PUWallpaperShuffleResourceManager *)self operationQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__PUWallpaperShuffleResourceManager_setEnabledEffects___block_invoke;
    v6[3] = &unk_1E7B804A8;
    objc_copyWeak(v7, &location);
    v7[1] = effects;
    [operationQueue addBarrierBlock:v6];

    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __55__PUWallpaperShuffleResourceManager_setEnabledEffects___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEffectsEnabledForAllMedia:*(a1 + 40)];
}

- (void)_handleSetStyle:(id)style
{
  styleCopy = style;
  style = [(PUWallpaperShuffleResourceManager *)self style];
  v5 = style;
  if (style == styleCopy)
  {

    goto LABEL_5;
  }

  v6 = [style isEqual:?];

  if (v6)
  {
LABEL_5:
    [(PUWallpaperShuffleResourceManager *)self _preloadNextMedia];
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  v6 = self->_style;
  v7 = v6;
  if (v6 == styleCopy)
  {
  }

  else
  {
    v8 = [(PIParallaxStyle *)v6 isEqual:styleCopy];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_style, style);
      objc_initWeak(&location, self);
      operationQueue = [(PUWallpaperShuffleResourceManager *)self operationQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __46__PUWallpaperShuffleResourceManager_setStyle___block_invoke;
      v10[3] = &unk_1E7B80610;
      objc_copyWeak(&v12, &location);
      v11 = styleCopy;
      [operationQueue addBarrierBlock:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __46__PUWallpaperShuffleResourceManager_setStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSetStyle:*(a1 + 32)];
}

- (void)stopPreloadingResources
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  requestOperationQueue = [(PUWallpaperShuffleResourceManager *)self requestOperationQueue];
  [requestOperationQueue cancelAllOperations];

  requestOperationQueue2 = [(PUWallpaperShuffleResourceManager *)self requestOperationQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__PUWallpaperShuffleResourceManager_stopPreloadingResources__block_invoke;
  v17[3] = &unk_1E7B80DD0;
  v6 = v3;
  v18 = v6;
  [requestOperationQueue2 addBarrierBlock:v17];

  dispatch_group_enter(v6);
  operationQueue = [(PUWallpaperShuffleResourceManager *)self operationQueue];
  [operationQueue cancelAllOperations];

  operationQueue2 = [(PUWallpaperShuffleResourceManager *)self operationQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__PUWallpaperShuffleResourceManager_stopPreloadingResources__block_invoke_2;
  v15[3] = &unk_1E7B80DD0;
  v9 = v6;
  v16 = v9;
  [operationQueue2 addBarrierBlock:v15];

  dispatch_group_enter(v9);
  exportOperationQueue = [(PUWallpaperShuffleResourceManager *)self exportOperationQueue];
  [exportOperationQueue cancelAllOperations];

  exportOperationQueue2 = [(PUWallpaperShuffleResourceManager *)self exportOperationQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PUWallpaperShuffleResourceManager_stopPreloadingResources__block_invoke_3;
  v13[3] = &unk_1E7B80DD0;
  v14 = v9;
  v12 = v9;
  [exportOperationQueue2 addBarrierBlock:v13];

  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], &__block_literal_global_24211);
}

- (void)stopPreloadingResourcesWithTimeout:(double)timeout
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = PLWallpaperGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "stopPreloadingResourcesWithTimeout", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  v10 = dispatch_group_create();
  v11 = PLWallpaperGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    operationQueue = [(PUWallpaperShuffleResourceManager *)self operationQueue];
    operationCount = [operationQueue operationCount];
    requestOperationQueue = [(PUWallpaperShuffleResourceManager *)self requestOperationQueue];
    operationCount2 = [requestOperationQueue operationCount];
    *buf = 134217984;
    v40 = (operationCount2 + operationCount);
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_INFO, "Cancelling %lu shuffle operations...", buf, 0xCu);
  }

  dispatch_group_enter(v10);
  requestOperationQueue2 = [(PUWallpaperShuffleResourceManager *)self requestOperationQueue];
  [requestOperationQueue2 cancelAllOperations];

  requestOperationQueue3 = [(PUWallpaperShuffleResourceManager *)self requestOperationQueue];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __72__PUWallpaperShuffleResourceManager_stopPreloadingResourcesWithTimeout___block_invoke;
  v36[3] = &unk_1E7B80DD0;
  v18 = v10;
  v37 = v18;
  [requestOperationQueue3 addBarrierBlock:v36];

  dispatch_group_enter(v18);
  operationQueue2 = [(PUWallpaperShuffleResourceManager *)self operationQueue];
  [operationQueue2 cancelAllOperations];

  operationQueue3 = [(PUWallpaperShuffleResourceManager *)self operationQueue];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __72__PUWallpaperShuffleResourceManager_stopPreloadingResourcesWithTimeout___block_invoke_2;
  v34[3] = &unk_1E7B80DD0;
  v21 = v18;
  v35 = v21;
  [operationQueue3 addBarrierBlock:v34];

  dispatch_group_enter(v21);
  exportOperationQueue = [(PUWallpaperShuffleResourceManager *)self exportOperationQueue];
  [exportOperationQueue cancelAllOperations];

  exportOperationQueue2 = [(PUWallpaperShuffleResourceManager *)self exportOperationQueue];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __72__PUWallpaperShuffleResourceManager_stopPreloadingResourcesWithTimeout___block_invoke_3;
  v32[3] = &unk_1E7B80DD0;
  v24 = v21;
  v33 = v24;
  [exportOperationQueue2 addBarrierBlock:v32];

  v25 = dispatch_time(0, (timeout * 1000000000.0));
  if (dispatch_group_wait(v24, v25))
  {
    v26 = PLWallpaperGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_FAULT, "Timed out waiting for shuffle operations", buf, 2u);
    }
  }

  v27 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v30 = v8;
  v31 = v30;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v31, OS_SIGNPOST_INTERVAL_END, v6, "stopPreloadingResourcesWithTimeout", "", buf, 2u);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v40 = "stopPreloadingResourcesWithTimeout";
    v41 = 2048;
    v42 = ((((v27 - v9) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1B36F3000, v31, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (void)startPreloadingResourcesForPosterMedia:(id)media
{
  v57 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  v5 = PLWallpaperGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "startPreloadingResourcesForPosterMedia", "", buf, 2u);
  }

  v33 = v8;
  v34 = v6;

  info = 0;
  mach_timebase_info(&info);
  v32 = mach_absolute_time();
  [MEMORY[0x1E69BDF28] ensureResources];
  v9 = [mediaCopy count];
  v10 = PLWallpaperGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v56 = v9;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_INFO, "Started preloading resources for %ld shuffle assets.", buf, 0xCu);
  }

  photoLibrary = [(PUWallpaperShuffleResourceManager *)self photoLibrary];
  assetDirectory = [(PUWallpaperShuffleResourceManager *)self assetDirectory];
  operationQueue = [(PUWallpaperShuffleResourceManager *)self operationQueue];
  segmentationLoadingOperationsByAssetUUIDs = [(PUWallpaperShuffleResourceManager *)self segmentationLoadingOperationsByAssetUUIDs];
  v12 = [segmentationLoadingOperationsByAssetUUIDs mutableCopy];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = mediaCopy;
  v13 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        assetUUID = [v17 assetUUID];
        v19 = [segmentationLoadingOperationsByAssetUUIDs objectForKeyedSubscript:assetUUID];

        if (!v19)
        {
          LOBYTE(v31) = 1;
          v19 = [[PUWallpaperShuffleSegmentationLoadingOperation alloc] initWithPosterMedia:v17 assetDirectory:assetDirectory photoLibrary:photoLibrary shuffleType:[(PUWallpaperShuffleResourceManager *)self shuffleType] supportedEffects:[(PUWallpaperShuffleResourceManager *)self supportedEffects] enableSpatialPhoto:[(PUWallpaperShuffleResourceManager *)self _expectedShuffleSpatialPhotoEnableStateForPosterMedia:v17] isPreloading:v31];
          [(PUWallpaperShuffleSegmentationLoadingOperation *)v19 setQueuePriority:-4];
          [(PUWallpaperShuffleSegmentationLoadingOperation *)v19 setQualityOfService:17];
          assetUUID2 = [v17 assetUUID];
          [segmentationLoadingOperationsByAssetUUIDs setObject:v19 forKeyedSubscript:assetUUID2];

          [operationQueue addOperation:v19];
        }

        assetUUID3 = [v17 assetUUID];
        [v12 removeObjectForKey:assetUUID3];
      }

      v14 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v14);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = v12;
  v23 = [v22 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v45;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v44 + 1) + 8 * j);
        v28 = [v22 objectForKeyedSubscript:v27];
        [v28 cancel];

        [segmentationLoadingOperationsByAssetUUIDs setObject:0 forKeyedSubscript:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v24);
  }

  operationQueue2 = [(PUWallpaperShuffleResourceManager *)self operationQueue];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __76__PUWallpaperShuffleResourceManager_startPreloadingResourcesForPosterMedia___block_invoke;
  v39[3] = &unk_1E7B7F720;
  v40 = v33;
  v41 = v32;
  v42 = v34;
  v43 = info;
  v30 = v33;
  [operationQueue2 addBarrierBlock:v39];
}

void __76__PUWallpaperShuffleResourceManager_startPreloadingResourcesForPosterMedia___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v4 = *(a1 + 56);
  v3 = *(a1 + 60);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "startPreloadingResourcesForPosterMedia", "", &v10, 2u);
  }

  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "startPreloadingResourcesForPosterMedia";
    v12 = 2048;
    v13 = ((((v2 - v5) * v4) / v3) / 1000000.0);
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v10, 0x16u);
  }
}

- (PUWallpaperShuffleResourceManager)initWithPosterMedia:(id)media style:(id)style assetDirectory:(id)directory persistedStyle:(id)persistedStyle photoLibrary:(id)library shuffleType:(int64_t)type
{
  v52 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  styleCopy = style;
  directoryCopy = directory;
  persistedStyleCopy = persistedStyle;
  libraryCopy = library;
  v50.receiver = self;
  v50.super_class = PUWallpaperShuffleResourceManager;
  v18 = [(PUWallpaperShuffleResourceManager *)&v50 init];
  v19 = v18;
  if (v18)
  {
    v42 = persistedStyleCopy;
    v43 = directoryCopy;
    v44 = styleCopy;
    v18->_shuffleType = type;
    objc_storeStrong(&v18->_style, style);
    objc_storeStrong(&v19->_assetDirectory, directory);
    objc_storeStrong(&v19->_persistedStyle, persistedStyle);
    v19->_supportedEffects = 3;
    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(mediaCopy, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v21 = mediaCopy;
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v47;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v46 + 1) + 8 * i);
          v27 = [v26 copy];
          assetUUID = [v26 assetUUID];
          [v20 setObject:v27 forKeyedSubscript:assetUUID];
        }

        v23 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v23);
    }

    v29 = [v20 copy];
    initialPosterMediaByAssetUUIDs = v19->_initialPosterMediaByAssetUUIDs;
    v19->_initialPosterMediaByAssetUUIDs = v29;

    objc_storeStrong(&v19->_photoLibrary, library);
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    segmentationLoadingOperationsByAssetUUIDs = v19->_segmentationLoadingOperationsByAssetUUIDs;
    v19->_segmentationLoadingOperationsByAssetUUIDs = v31;

    v33 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(NSOperationQueue *)v33 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v33 setName:@"com.apple.photos.wallpaper-shuffle-loading"];
    operationQueue = v19->_operationQueue;
    v19->_operationQueue = v33;
    v35 = v33;

    v36 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(NSOperationQueue *)v36 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v36 setName:@"com.apple.photos.wallpaper-shuffle-requests"];
    requestOperationQueue = v19->_requestOperationQueue;
    v19->_requestOperationQueue = v36;
    v38 = v36;

    v39 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(NSOperationQueue *)v39 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v39 setName:@"com.apple.photos.wallpaper-shuffle-export"];
    exportOperationQueue = v19->_exportOperationQueue;
    v19->_exportOperationQueue = v39;

    directoryCopy = v43;
    styleCopy = v44;
    persistedStyleCopy = v42;
  }

  return v19;
}

@end