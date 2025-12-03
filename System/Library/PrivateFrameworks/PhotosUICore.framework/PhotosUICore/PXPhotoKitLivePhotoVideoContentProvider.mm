@interface PXPhotoKitLivePhotoVideoContentProvider
+ (NSOperationQueue)postProcessingOperationQueue;
- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind requestURLOnly:(BOOL)only;
- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind requestURLOnly:(BOOL)only resourceReclamationController:(id)controller;
- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind spec:(id)spec resourceReclamationController:(id)controller;
- (void)_handleStabilizeOperationFinishedWithProcessingCompletionHandler:(id)handler;
- (void)cancelLoading;
- (void)dealloc;
- (void)postprocessPlayerItem:(id)item completionHandler:(id)handler;
- (void)settings:(id)settings changedValueForKey:(id)key;
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

- (void)_handleStabilizeOperationFinishedWithProcessingCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(PXVideoStabilizeOperation *)self->_stabilizeOperation isFinished])
  {
    result = [(PXVideoProcessingOperation *)self->_stabilizeOperation result];
    outputVideoAsset = [result outputVideoAsset];

    if (outputVideoAsset)
    {
      v7 = objc_alloc(MEMORY[0x1E69880B0]);
      outputVideoAsset2 = [result outputVideoAsset];
      v9 = [v7 initWithAsset:outputVideoAsset2];

      outputVideoComposition = [result outputVideoComposition];
      [v9 setVideoComposition:outputVideoComposition];

      outputAudioMix = [result outputAudioMix];
      [v9 setAudioMix:outputAudioMix];

      v12 = MEMORY[0x1E696AEC0];
      v13 = PXVideoStabilizeAnalysisTypeDescription([result analysisType]);
      v14 = [v12 stringWithFormat:@"Processed: [%@]", v13];

      handlerCopy[2](handlerCopy, v9, v14);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        result2 = [(PXVideoProcessingOperation *)self->_stabilizeOperation result];
        error = [result2 error];
        *buf = 138412546;
        selfCopy = self;
        v23 = 2112;
        v24 = error;
        _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ failed to create stabilized video player item with error %@", buf, 0x16u);
      }

      v15 = MEMORY[0x1E6988168];
      spec = [(PXVideoProcessingOperation *)self->_stabilizeOperation spec];
      inputVideoURL = [spec inputVideoURL];
      v9 = [v15 assetWithURL:inputVideoURL];

      v14 = [objc_alloc(MEMORY[0x1E69880B0]) initWithAsset:v9];
      handlerCopy[2](handlerCopy, v14, @"Processed: Unstabilized Loop");
    }
  }

  stabilizeOperation = self->_stabilizeOperation;
  self->_stabilizeOperation = 0;
}

- (void)postprocessPlayerItem:(id)item completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  asset = [itemCopy asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    asset2 = [(PXDisplayAssetVideoContentProvider *)self asset];
    asset3 = [itemCopy asset];
    v11 = [asset3 URL];

    v12 = +[PXInlineVideoStabilizationSettings sharedInstance];
    useMediaAnalysisRecipe = [v12 useMediaAnalysisRecipe];

    if (useMediaAnalysisRecipe)
    {
      v14 = MEMORY[0x1E69C0708];
      asset4 = [itemCopy asset];
      v16 = [v14 tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:asset4];
      firstObject = [v16 firstObject];
      [firstObject naturalSize];
      v19 = v18;
      v21 = v20;

      v22 = [[PXMediaAnalysisVideoStabilizationRecipeSource alloc] initWithAsset:asset2 videoDimensions:v19, v21];
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
    v32 = handlerCopy;
    [(PXVideoStabilizeOperation *)self->_stabilizeOperation setCompletionBlock:v31];
    postProcessingOperationQueue = [objc_opt_class() postProcessingOperationQueue];
    [postProcessingOperationQueue addOperation:self->_stabilizeOperation];

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      asset5 = [itemCopy asset];
      LODWORD(location[0]) = 138412546;
      *(location + 4) = self;
      WORD2(location[1]) = 2112;
      *(&location[1] + 6) = asset5;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@: Unable to post process Live Photo asset %@", location, 0x16u);
    }

    (*(handlerCopy + 2))(handlerCopy, itemCopy, @"Processed: Unstabilized Loop");
  }
}

void __83__PXPhotoKitLivePhotoVideoContentProvider_postprocessPlayerItem_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleStabilizeOperationFinishedWithProcessingCompletionHandler:*(a1 + 32)];
}

- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind requestURLOnly:(BOOL)only resourceReclamationController:(id)controller
{
  assetCopy = asset;
  providerCopy = provider;
  strategiesCopy = strategies;
  controllerCopy = controller;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitVideoContentProvider.m" lineNumber:133 description:{@"%s is not available as initializer", "-[PXPhotoKitLivePhotoVideoContentProvider initWithAsset:mediaProvider:deliveryStrategies:audioSessionKind:requestURLOnly:resourceReclamationController:]"}];

  abort();
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  settingsCopy = settings;
  v7 = +[PXCuratedLibrarySettings sharedInstance];

  if (v7 == settingsCopy)
  {
    v8 = [keyCopy isEqualToString:@"stabilizeLivePhotos"];

    if (v8)
    {
      [(PXDisplayAssetVideoContentProvider *)self reloadContent];
    }
  }

  else
  {
  }
}

- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind spec:(id)spec resourceReclamationController:(id)controller
{
  assetCopy = asset;
  specCopy = spec;
  v19.receiver = self;
  v19.super_class = PXPhotoKitLivePhotoVideoContentProvider;
  v16 = [(PXPhotoKitVideoContentProvider *)&v19 initWithAsset:assetCopy mediaProvider:provider deliveryStrategies:strategies audioSessionKind:kind requestURLOnly:0 resourceReclamationController:controller];
  if (v16)
  {
    v16->_assetPlaybackStyle = [assetCopy playbackStyle];
    objc_storeStrong(&v16->_spec, spec);
    v17 = +[PXCuratedLibrarySettings sharedInstance];
    [v17 addDeferredKeyObserver:v16];
  }

  return v16;
}

- (PXPhotoKitLivePhotoVideoContentProvider)initWithAsset:(id)asset mediaProvider:(id)provider deliveryStrategies:(id)strategies audioSessionKind:(int64_t)kind requestURLOnly:(BOOL)only
{
  onlyCopy = only;
  v12 = MEMORY[0x1E69C1AC8];
  strategiesCopy = strategies;
  providerCopy = provider;
  assetCopy = asset;
  v16 = objc_alloc_init(v12);
  v17 = [(PXPhotoKitLivePhotoVideoContentProvider *)self initWithAsset:assetCopy mediaProvider:providerCopy deliveryStrategies:strategiesCopy audioSessionKind:kind requestURLOnly:onlyCopy resourceReclamationController:v16];

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