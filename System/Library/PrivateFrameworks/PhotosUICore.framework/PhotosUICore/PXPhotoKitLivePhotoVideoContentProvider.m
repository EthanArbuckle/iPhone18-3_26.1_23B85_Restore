@interface PXPhotoKitLivePhotoVideoContentProvider
+ (NSOperationQueue)postProcessingOperationQueue;
- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7;
- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7 resourceReclamationController:(id)a8;
- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 spec:(id)a7 resourceReclamationController:(id)a8;
- (void)_handleStabilizeOperationFinishedWithProcessingCompletionHandler:(id)a3;
- (void)cancelLoading;
- (void)dealloc;
- (void)postprocessPlayerItem:(id)a3 completionHandler:(id)a4;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXPhotoKitLivePhotoVideoContentProvider

- (void)cancelLoading
{
  v3.receiver = self;
  v3.super_class = PXPhotoKitLivePhotoVideoContentProvider;
  [(PXDisplayAssetVideoContentProvider *)&v3 cancelLoading];
  [(PXVideoStabilizeOperation *)self->_stabilizeOperation cancel];
}

- (void)dealloc
{
  [(PXVideoStabilizeOperation *)self->_stabilizeOperation cancel];
  v3.receiver = self;
  v3.super_class = PXPhotoKitLivePhotoVideoContentProvider;
  [(PXPhotoKitLivePhotoVideoContentProvider *)&v3 dealloc];
}

- (void)_handleStabilizeOperationFinishedWithProcessingCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PXVideoStabilizeOperation *)self->_stabilizeOperation isFinished])
  {
    v5 = [(PXVideoProcessingOperation *)self->_stabilizeOperation result];
    v6 = [v5 outputVideoAsset];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E69880B0]);
      v8 = [v5 outputVideoAsset];
      v9 = [v7 initWithAsset:v8];

      v10 = [v5 outputVideoComposition];
      [v9 setVideoComposition:v10];

      v11 = [v5 outputAudioMix];
      [v9 setAudioMix:v11];

      v12 = MEMORY[0x1E696AEC0];
      v13 = PXVideoStabilizeAnalysisTypeDescription([v5 analysisType]);
      v14 = [v12 stringWithFormat:@"Processed: [%@]", v13];

      v4[2](v4, v9, v14);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = [(PXVideoProcessingOperation *)self->_stabilizeOperation result];
        v20 = [v19 error];
        *buf = 138412546;
        v22 = self;
        v23 = 2112;
        v24 = v20;
        _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ failed to create stabilized video player item with error %@", buf, 0x16u);
      }

      v15 = MEMORY[0x1E6988168];
      v16 = [(PXVideoProcessingOperation *)self->_stabilizeOperation spec];
      v17 = [v16 inputVideoURL];
      v9 = [v15 assetWithURL:v17];

      v14 = [objc_alloc(MEMORY[0x1E69880B0]) initWithAsset:v9];
      v4[2](v4, v14, @"Processed: Unstabilized Loop");
    }
  }

  stabilizeOperation = self->_stabilizeOperation;
  self->_stabilizeOperation = 0;
}

- (void)postprocessPlayerItem:(id)a3 completionHandler:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v30 = [(PXDisplayAssetVideoContentProvider *)self asset];
    v10 = [v6 asset];
    v11 = [v10 URL];

    v12 = +[PXInlineVideoStabilizationSettings sharedInstance];
    v13 = [v12 useMediaAnalysisRecipe];

    if (v13)
    {
      v14 = MEMORY[0x1E69C0708];
      v15 = [v6 asset];
      v16 = [v14 tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v15];
      v17 = [v16 firstObject];
      [v17 naturalSize];
      v19 = v18;
      v21 = v20;

      v22 = [[PXMediaAnalysisVideoStabilizationRecipeSource alloc] initWithAsset:v30 videoDimensions:v19, v21];
    }

    else
    {
      v22 = [[PXURLVideoStabilizationRecipeSource alloc] initWithVideoURL:v11];
    }

    v23 = v22;
    v24 = self->_spec;
    v25 = objc_alloc_init(PXVideoStabilizeOperationSpec);
    [(PXVideoProcessingOperationSpec *)v25 setInputVideoURL:v11];
    if (v24)
    {
      [(PXPhotoKitLivePhotoVideoContentProviderSpec *)v24 loopStartTime];
      *location = v39;
      location[2] = v40;
      [(PXVideoStabilizeOperationSpec *)v25 setStartTime:location];
      [(PXPhotoKitLivePhotoVideoContentProviderSpec *)v24 loopTimeRange];
      *location = v36;
      *&location[2] = v37;
      v42 = v38;
      [(PXVideoStabilizeOperationSpec *)v25 setTimeRange:location];
      [(PXPhotoKitLivePhotoVideoContentProviderSpec *)v24 crossfadeDuration];
    }

    else
    {
      v39 = 0uLL;
      v40 = 0;
      memset(location, 0, 24);
      [(PXVideoStabilizeOperationSpec *)v25 setStartTime:location];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v42 = 0u;
      memset(location, 0, sizeof(location));
      [(PXVideoStabilizeOperationSpec *)v25 setTimeRange:location];
      v35 = 0;
      v34 = 0uLL;
    }

    *location = v34;
    location[2] = v35;
    [(PXVideoStabilizeOperationSpec *)v25 setCrossfadeDuration:location];
    [(PXVideoStabilizeOperationSpec *)v25 setRecipeSource:v23];
    [(PXVideoStabilizeOperationSpec *)v25 setPerformStabilization:[(PXPhotoKitLivePhotoVideoContentProviderSpec *)v24 stabilizeIfPossible]];
    [(PXVideoStabilizeOperationSpec *)v25 setWantsAudio:[(PXPhotoKitLivePhotoVideoContentProviderSpec *)v24 wantsAudio]];
    v26 = [[PXVideoStabilizeOperation alloc] initWithSpec:v25];
    stabilizeOperation = self->_stabilizeOperation;
    self->_stabilizeOperation = v26;

    objc_initWeak(location, self);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __83__PXPhotoKitLivePhotoVideoContentProvider_postprocessPlayerItem_completionHandler___block_invoke;
    v31[3] = &unk_1E774AA30;
    objc_copyWeak(&v33, location);
    v32 = v7;
    [(PXVideoStabilizeOperation *)self->_stabilizeOperation setCompletionBlock:v31];
    v28 = [objc_opt_class() postProcessingOperationQueue];
    [v28 addOperation:self->_stabilizeOperation];

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = [v6 asset];
      LODWORD(location[0]) = 138412546;
      *(location + 4) = self;
      WORD2(location[1]) = 2112;
      *(&location[1] + 6) = v29;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@: Unable to post process Live Photo asset %@", location, 0x16u);
    }

    (*(v7 + 2))(v7, v6, @"Processed: Unstabilized Loop");
  }
}

void __83__PXPhotoKitLivePhotoVideoContentProvider_postprocessPlayerItem_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleStabilizeOperationFinishedWithProcessingCompletionHandler:*(a1 + 32)];
}

- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7 resourceReclamationController:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXPhotoKitVideoContentProvider.m" lineNumber:133 description:{@"%s is not available as initializer", "-[PXPhotoKitLivePhotoVideoContentProvider initWithAsset:mediaProvider:deliveryStrategies:audioSessionKind:requestURLOnly:resourceReclamationController:]"}];

  abort();
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = +[PXCuratedLibrarySettings sharedInstance];

  if (v7 == v6)
  {
    v8 = [v9 isEqualToString:@"stabilizeLivePhotos"];

    if (v8)
    {
      [(PXDisplayAssetVideoContentProvider *)self reloadContent];
    }
  }

  else
  {
  }
}

- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 spec:(id)a7 resourceReclamationController:(id)a8
{
  v14 = a3;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = PXPhotoKitLivePhotoVideoContentProvider;
  v16 = [(PXPhotoKitVideoContentProvider *)&v19 initWithAsset:v14 mediaProvider:a4 deliveryStrategies:a5 audioSessionKind:a6 requestURLOnly:0 resourceReclamationController:a8];
  if (v16)
  {
    v16->_assetPlaybackStyle = [v14 playbackStyle];
    objc_storeStrong(&v16->_spec, a7);
    v17 = +[PXCuratedLibrarySettings sharedInstance];
    [v17 addDeferredKeyObserver:v16];
  }

  return v16;
}

- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7
{
  v7 = a7;
  v12 = MEMORY[0x1E69C1AC8];
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v12);
  v17 = [(PXPhotoKitLivePhotoVideoContentProvider *)self initWithAsset:v15 mediaProvider:v14 deliveryStrategies:v13 audioSessionKind:a6 requestURLOnly:v7 resourceReclamationController:v16];

  return v17;
}

+ (NSOperationQueue)postProcessingOperationQueue
{
  if (postProcessingOperationQueue_onceToken != -1)
  {
    dispatch_once(&postProcessingOperationQueue_onceToken, &__block_literal_global_247795);
  }

  v3 = postProcessingOperationQueue_queue;

  return v3;
}

uint64_t __71__PXPhotoKitLivePhotoVideoContentProvider_postProcessingOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = postProcessingOperationQueue_queue;
  postProcessingOperationQueue_queue = v0;

  [postProcessingOperationQueue_queue setQualityOfService:25];
  v2 = postProcessingOperationQueue_queue;

  return [v2 setMaxConcurrentOperationCount:1];
}

@end