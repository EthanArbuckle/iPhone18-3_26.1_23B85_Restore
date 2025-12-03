@interface PUOneUpVisualImageAnalyzingController
+ (BOOL)canPerformAnalysisWithEnabled:(BOOL)enabled browsingViewModel:(id)model assetViewModel:(id)viewModel;
+ (void)_clearImageAnalysisFromAssetViewModel:(id)model;
+ (void)_setVisualImageAnalysis:(id)analysis forAssetViewModel:(id)model;
- (PUOneUpVisualImageAnalyzingController)init;
- (PUOneUpVisualImageAnalyzingController)initWithBrowsingViewModel:(id)model;
- (void)_cancelCurrentAnalysis;
- (void)_cancelVKImageAnalysisForAssetViewModel:(id)model;
- (void)_discardCurrentAnalysis;
- (void)_handleAnalysisResult:(id)result error:(id)error forAssetViewModel:(id)model requestID:(int)d;
- (void)_handleAssetViewModelChange:(id)change;
- (void)_handleBrowsingViewModelChange:(id)change;
- (void)_handleVideoFrameImage:(id)image pixelBufferRef:(__CVBuffer *)ref preferredTransform:(CGAffineTransform *)transform forAssetViewModel:(id)model requestID:(int64_t)d;
- (void)_invalidateAnalysisSuspended;
- (void)_invalidateAssetViewModel;
- (void)_invalidateCanPerformAnalysis;
- (void)_invalidateCurrentAnalysis;
- (void)_requestAnalysisForVideoFrameOfAssetViewModel:(id)model asset:(id)asset playerLayer:(id)layer preferredTransform:(CGAffineTransform *)transform;
- (void)_requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel:(id)model;
- (void)_requestVKImageAnalysisForAssetViewModel:(id)model;
- (void)_setNeedsUpdate;
- (void)_updateAnalysisSuspended;
- (void)_updateAssetViewModel;
- (void)_updateCanPerformAnalysis;
- (void)_updateCurrentAnalysis;
- (void)setAssetViewModel:(id)model;
- (void)setCanPerformAnalysis:(BOOL)analysis;
- (void)setIsEnabled:(BOOL)enabled;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUOneUpVisualImageAnalyzingController

- (void)_cancelVKImageAnalysisForAssetViewModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (modelCopy && [modelCopy visualIntelligenceAnalyzeRequestID])
  {
    visualImageManager = [(PUOneUpVisualImageAnalyzingController *)self visualImageManager];
    [visualImageManager cancelRequestByID:{objc_msgSend(v5, "visualIntelligenceAnalyzeRequestID")}];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__PUOneUpVisualImageAnalyzingController__cancelVKImageAnalysisForAssetViewModel___block_invoke;
    v7[3] = &unk_1E7B80DD0;
    v8 = v5;
    [v8 performChanges:v7];
  }
}

- (void)_handleAnalysisResult:(id)result error:(id)error forAssetViewModel:(id)model requestID:(int)d
{
  resultCopy = result;
  errorCopy = error;
  modelCopy = model;
  if (modelCopy)
  {
    assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
    v13 = assetViewModel;
    if (assetViewModel == modelCopy)
    {
      currentAnalysisRequestID = [(PUOneUpVisualImageAnalyzingController *)self currentAnalysisRequestID];

      if (currentAnalysisRequestID == d)
      {
        [PUOneUpVisualImageAnalyzingController _setVisualImageAnalysis:resultCopy forAssetViewModel:modelCopy];
      }
    }

    else
    {
    }
  }
}

- (void)_handleVideoFrameImage:(id)image pixelBufferRef:(__CVBuffer *)ref preferredTransform:(CGAffineTransform *)transform forAssetViewModel:(id)model requestID:(int64_t)d
{
  imageCopy = image;
  modelCopy = model;
  assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
  v15 = assetViewModel;
  if (assetViewModel == modelCopy)
  {
    videoFrameRequestID = [(PUOneUpVisualImageAnalyzingController *)self videoFrameRequestID];

    if (videoFrameRequestID == d)
    {
      objc_initWeak(&location, modelCopy);
      objc_initWeak(&from, self);
      asset = [modelCopy asset];
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      visualImageManager = [(PUOneUpVisualImageAnalyzingController *)self visualImageManager];
      v19 = *&transform->c;
      v29 = *&transform->a;
      v30 = v19;
      v31 = *&transform->tx;
      v20 = PXVKImageOrientationFromPreferredTransform();
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __126__PUOneUpVisualImageAnalyzingController__handleVideoFrameImage_pixelBufferRef_preferredTransform_forAssetViewModel_requestID___block_invoke;
      v26[3] = &unk_1E7B73D88;
      objc_copyWeak(&v27, &from);
      objc_copyWeak(&v28, &location);
      v21 = [visualImageManager requestVKImageAnalysisForAsset:asset pixelBuffer:ref orientation:v20 resultHandler:v26];

      v35 = v21;
      [(PUOneUpVisualImageAnalyzingController *)self setCurrentAnalysisRequestID:*(v33 + 6)];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __126__PUOneUpVisualImageAnalyzingController__handleVideoFrameImage_pixelBufferRef_preferredTransform_forAssetViewModel_requestID___block_invoke_3;
      v22[3] = &unk_1E7B7FFC0;
      v23 = modelCopy;
      v25 = &v32;
      v24 = imageCopy;
      [v23 performChanges:v22];

      _Block_object_dispose(&v32, 8);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&v27);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __126__PUOneUpVisualImageAnalyzingController__handleVideoFrameImage_pixelBufferRef_preferredTransform_forAssetViewModel_requestID___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  objc_copyWeak(&v11, (a1 + 32));
  v9 = v7;
  v10 = v8;
  objc_copyWeak(&v12, (a1 + 40));
  v13 = a2;
  px_dispatch_on_main_queue();
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v11);
}

uint64_t __126__PUOneUpVisualImageAnalyzingController__handleVideoFrameImage_pixelBufferRef_preferredTransform_forAssetViewModel_requestID___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setVisualIntelligenceAnalyzeRequestID:*(*(*(a1 + 48) + 8) + 24)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setBestImage:v3];
}

void __126__PUOneUpVisualImageAnalyzingController__handleVideoFrameImage_pixelBufferRef_preferredTransform_forAssetViewModel_requestID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleAnalysisResult:v2 error:v3 forAssetViewModel:v4 requestID:*(a1 + 64)];
}

- (void)_requestAnalysisForVideoFrameOfAssetViewModel:(id)model asset:(id)asset playerLayer:(id)layer preferredTransform:(CGAffineTransform *)transform
{
  v30 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  assetCopy = asset;
  layerCopy = layer;
  if (modelCopy && assetCopy)
  {
    [(PUOneUpVisualImageAnalyzingController *)self setVideoFrameRequestID:[(PUOneUpVisualImageAnalyzingController *)self videoFrameRequestID]+ 1];
    videoFrameRequestID = [(PUOneUpVisualImageAnalyzingController *)self videoFrameRequestID];
    if (layerCopy && (v14 = videoFrameRequestID, (v15 = [layerCopy copyDisplayedPixelBuffer]) != 0))
    {
      v16 = v15;
      imageOut = 0;
      VTCreateCGImageFromCVPixelBuffer(v15, 0, &imageOut);
      if (imageOut)
      {
        v17 = *&transform->c;
        *buf = *&transform->a;
        *&buf[16] = v17;
        v29 = *&transform->tx;
        v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:imageOut scale:PXVKImageOrientationFromPreferredTransform() orientation:1.0];
        CGImageRelease(imageOut);
        imageOut = 0;
      }

      else
      {
        v18 = 0;
      }

      objc_initWeak(buf, self);
      objc_copyWeak(v22, buf);
      v19 = v18;
      v22[1] = v16;
      v20 = *&transform->c;
      v23 = *&transform->a;
      v24 = v20;
      v25 = *&transform->tx;
      v21 = modelCopy;
      v26 = v14;
      px_dispatch_on_main_queue();

      objc_destroyWeak(v22);
      objc_destroyWeak(buf);
    }

    else
    {
      v19 = PLVisualIntelligenceGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = assetCopy;
        *&buf[12] = 2112;
        *&buf[14] = layerCopy;
        _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Unable to produce analysis for video frame of asset: %@, playerLayer: %@", buf, 0x16u);
      }
    }
  }
}

void __124__PUOneUpVisualImageAnalyzingController__requestAnalysisForVideoFrameOfAssetViewModel_asset_playerLayer_preferredTransform___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 112);
  v7 = *(a1 + 80);
  v8[0] = *(a1 + 64);
  v8[1] = v7;
  v8[2] = *(a1 + 96);
  [WeakRetained _handleVideoFrameImage:v4 pixelBufferRef:v3 preferredTransform:v8 forAssetViewModel:v5 requestID:v6];

  CVPixelBufferRelease(*(a1 + 56));
}

- (void)_requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"assetViewModel != nil"}];
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  videoPlayer = [modelCopy videoPlayer];
  videoSession = [videoPlayer videoSession];
  v8 = videoSession;
  if (videoSession)
  {
    [videoSession preferredTransform];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
  }

  primaryVideoLayerSource = [modelCopy primaryVideoLayerSource];
  playerLayer = [primaryVideoLayerSource playerLayer];

  asset = [modelCopy asset];
  [objc_opt_class() _clearImageAnalysisFromAssetViewModel:modelCopy];
  objc_initWeak(&location, modelCopy);
  objc_initWeak(&from, self);
  loadVideoFrameQueue = [(PUOneUpVisualImageAnalyzingController *)self loadVideoFrameQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel___block_invoke;
  block[3] = &unk_1E7B73D10;
  objc_copyWeak(&v19, &from);
  objc_copyWeak(&v20, &location);
  v17 = asset;
  v18 = playerLayer;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v13 = playerLayer;
  v14 = asset;
  dispatch_async(loadVideoFrameQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __101__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7[0] = *(a1 + 64);
  v7[1] = v6;
  v7[2] = *(a1 + 96);
  [WeakRetained _requestAnalysisForVideoFrameOfAssetViewModel:v3 asset:v4 playerLayer:v5 preferredTransform:v7];
}

- (void)_requestVKImageAnalysisForAssetViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"assetViewModel != nil"}];
  }

  visualImageAnalysis = [modelCopy visualImageAnalysis];

  if (!visualImageAnalysis)
  {
    asset = [modelCopy asset];
    playbackStyle = [asset playbackStyle];

    if (playbackStyle == 4)
    {
      [(PUOneUpVisualImageAnalyzingController *)self _requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel:modelCopy];
    }

    else
    {
      objc_initWeak(&location, modelCopy);
      visualImageManager = [(PUOneUpVisualImageAnalyzingController *)self visualImageManager];
      asset2 = [modelCopy asset];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __82__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisForAssetViewModel___block_invoke;
      v16[3] = &unk_1E7B73CE8;
      objc_copyWeak(&v17, &location);
      v11 = [visualImageManager requestVKImageAnalysisForAsset:asset2 resultHandler:v16];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __82__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisForAssetViewModel___block_invoke_4;
      v13[3] = &unk_1E7B761F0;
      v14 = modelCopy;
      v15 = v11;
      [v14 performChanges:v13];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __82__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisForAssetViewModel___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  objc_copyWeak(&v10, (a1 + 32));
  v11 = a2;
  v9 = v7;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v10);
}

void __82__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisForAssetViewModel___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained visualIntelligenceAnalyzeRequestID];
  v4 = *(a1 + 48);

  if (v3 == v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisForAssetViewModel___block_invoke_3;
    v6[3] = &unk_1E7B80610;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 performChanges:v6];

    objc_destroyWeak(&v8);
  }
}

void __82__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisForAssetViewModel___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setVisualImageAnalysis:v2];

  v4 = *(a1 + 32) == 0;
  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setHasVisualAnalysisFailed:v4];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setVisualIntelligenceAnalyzeRequestID:0];
}

- (void)_handleAssetViewModelChange:(id)change
{
  changeCopy = change;
  if ([changeCopy assetContentChanged])
  {
    [(PUOneUpVisualImageAnalyzingController *)self _discardCurrentAnalysis];
  }

  if (([changeCopy focusValueChanged] & 1) != 0 || (objc_msgSend(changeCopy, "videoPlayerDidChange") & 1) != 0 || (objc_msgSend(changeCopy, "assetChanged") & 1) != 0 || objc_msgSend(changeCopy, "visualImageAnalysisChanged"))
  {
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];
  }

  videoPlayerChange = [changeCopy videoPlayerChange];

  v5 = changeCopy;
  if (videoPlayerChange)
  {
    videoPlayerChange2 = [changeCopy videoPlayerChange];
    if ([videoPlayerChange2 desiredPlayStateDidChange])
    {
      [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];
      assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
      videoPlayer = [assetViewModel videoPlayer];
      isPlaybackDesired = [videoPlayer isPlaybackDesired];

      if (isPlaybackDesired)
      {
        v10 = objc_opt_class();
        assetViewModel2 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
        [v10 _clearImageAnalysisFromAssetViewModel:assetViewModel2];
      }
    }

    v5 = changeCopy;
  }
}

- (void)_handleBrowsingViewModelChange:(id)change
{
  changeCopy = change;
  if (([changeCopy isScrollingDidChange] & 1) != 0 || (objc_msgSend(changeCopy, "isScrubbingDidChange") & 1) != 0 || objc_msgSend(changeCopy, "livePhotoShouldPlayDidChange"))
  {
    goto LABEL_4;
  }

  if ([changeCopy isInteractingWithVideoScrubberDidChange])
  {
    browsingViewModel = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];
    isInteractingWithVideoScrubber = [browsingViewModel isInteractingWithVideoScrubber];

    if (!isInteractingWithVideoScrubber)
    {
LABEL_4:
      [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];
      goto LABEL_5;
    }

    v6 = objc_opt_class();
    assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
    [v6 _clearImageAnalysisFromAssetViewModel:assetViewModel];
  }

LABEL_5:
  if ([changeCopy currentAssetDidChange])
  {
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateAssetViewModel];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  browsingViewModel = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];

  if (browsingViewModel == modelCopy)
  {
    [(PUOneUpVisualImageAnalyzingController *)self _handleBrowsingViewModelChange:changeCopy];
  }

  else
  {
    assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];

    if (assetViewModel == modelCopy)
    {
      [(PUOneUpVisualImageAnalyzingController *)self _handleAssetViewModelChange:changeCopy];
    }
  }
}

- (void)_updateAnalysisSuspended
{
  browsingViewModel = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];
  if ([browsingViewModel isScrubbing] & 1) != 0 || (objc_msgSend(browsingViewModel, "livePhotoShouldPlay") & 1) != 0 || (objc_msgSend(browsingViewModel, "isScrolling"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [(PUOneUpVisualImageAnalyzingController *)self isEnabled]^ 1;
  }

  visualImageManager = [(PUOneUpVisualImageAnalyzingController *)self visualImageManager];
  [visualImageManager setAnalysisSuspended:v3];
}

- (void)_invalidateAnalysisSuspended
{
  updater = [(PUOneUpVisualImageAnalyzingController *)self updater];
  [updater setNeedsUpdateOf:sel__updateAnalysisSuspended];
}

- (void)_updateCurrentAnalysis
{
  if ([(PUOneUpVisualImageAnalyzingController *)self canPerformAnalysis]&& ![(PUOneUpVisualImageAnalyzingController *)self currentAnalysisRequestID])
  {
    assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
    [(PUOneUpVisualImageAnalyzingController *)self _requestVKImageAnalysisForAssetViewModel:assetViewModel];
  }
}

- (void)_discardCurrentAnalysis
{
  v3 = objc_opt_class();
  assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
  [v3 _clearImageAnalysisFromAssetViewModel:assetViewModel];

  [(PUOneUpVisualImageAnalyzingController *)self _invalidateCurrentAnalysis];
}

- (void)_invalidateCurrentAnalysis
{
  [(PUOneUpVisualImageAnalyzingController *)self setCurrentAnalysisRequestID:0];
  updater = [(PUOneUpVisualImageAnalyzingController *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentAnalysis];
}

- (void)_updateCanPerformAnalysis
{
  v3 = objc_opt_class();
  isEnabled = [(PUOneUpVisualImageAnalyzingController *)self isEnabled];
  browsingViewModel = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];
  assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
  -[PUOneUpVisualImageAnalyzingController setCanPerformAnalysis:](self, "setCanPerformAnalysis:", [v3 canPerformAnalysisWithEnabled:isEnabled browsingViewModel:browsingViewModel assetViewModel:assetViewModel]);
}

- (void)_invalidateCanPerformAnalysis
{
  updater = [(PUOneUpVisualImageAnalyzingController *)self updater];
  [updater setNeedsUpdateOf:sel__updateCanPerformAnalysis];
}

- (void)_updateAssetViewModel
{
  browsingViewModel = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];
  assetViewModelForCurrentAssetReference = [browsingViewModel assetViewModelForCurrentAssetReference];
  [(PUOneUpVisualImageAnalyzingController *)self setAssetViewModel:assetViewModelForCurrentAssetReference];
}

- (void)_invalidateAssetViewModel
{
  updater = [(PUOneUpVisualImageAnalyzingController *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssetViewModel];
}

- (void)_cancelCurrentAnalysis
{
  assetViewModel = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
  [(PUOneUpVisualImageAnalyzingController *)self _cancelVKImageAnalysisForAssetViewModel:assetViewModel];
}

- (void)_setNeedsUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUOneUpVisualImageAnalyzingController__setNeedsUpdate__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__PUOneUpVisualImageAnalyzingController__setNeedsUpdate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 updateIfNeeded];
}

- (void)setCanPerformAnalysis:(BOOL)analysis
{
  if (self->_canPerformAnalysis != analysis)
  {
    self->_canPerformAnalysis = analysis;
    if (!analysis)
    {
      [(PUOneUpVisualImageAnalyzingController *)self _cancelCurrentAnalysis];
    }

    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCurrentAnalysis];
  }
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  if (self->_assetViewModel != modelCopy)
  {
    v6 = modelCopy;
    [(PUOneUpVisualImageAnalyzingController *)self _cancelCurrentAnalysis];
    [(PUAssetViewModel *)self->_assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCurrentAnalysis];
    modelCopy = v6;
  }
}

- (void)setIsEnabled:(BOOL)enabled
{
  if (self->_isEnabled != enabled)
  {
    self->_isEnabled = enabled;
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];

    [(PUOneUpVisualImageAnalyzingController *)self _invalidateAnalysisSuspended];
  }
}

- (PUOneUpVisualImageAnalyzingController)initWithBrowsingViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"browsingViewModel != nil"}];
  }

  v17.receiver = self;
  v17.super_class = PUOneUpVisualImageAnalyzingController;
  v7 = [(PUOneUpVisualImageAnalyzingController *)&v17 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v8;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateAssetViewModel needsUpdate:1];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateAnalysisSuspended needsUpdate:1];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateCanPerformAnalysis needsUpdate:1];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateCurrentAnalysis needsUpdate:1];
    v7->_isEnabled = 0;
    objc_storeStrong(&v7->_browsingViewModel, model);
    [(PUBrowsingViewModel *)v7->_browsingViewModel registerChangeObserver:v7];
    mEMORY[0x1E69C3C88] = [MEMORY[0x1E69C3C88] sharedManager];
    visualImageManager = v7->_visualImageManager;
    v7->_visualImageManager = mEMORY[0x1E69C3C88];

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.1UpVisualImageAnalyzing.loadCurrentVideoFrame", v12);
    loadVideoFrameQueue = v7->_loadVideoFrameQueue;
    v7->_loadVideoFrameQueue = v13;

    PXVKSetUpResourcePurgingWhenApplicationIsHidden();
  }

  return v7;
}

- (PUOneUpVisualImageAnalyzingController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PUOneUpVisualImageAnalyzingController init]"}];

  abort();
}

+ (void)_setVisualImageAnalysis:(id)analysis forAssetViewModel:(id)model
{
  analysisCopy = analysis;
  modelCopy = model;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:370 description:{@"%s must be called on the main thread", "+[PUOneUpVisualImageAnalyzingController _setVisualImageAnalysis:forAssetViewModel:]"}];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PUOneUpVisualImageAnalyzingController__setVisualImageAnalysis_forAssetViewModel___block_invoke;
  v12[3] = &unk_1E7B80C38;
  v13 = modelCopy;
  v14 = analysisCopy;
  v9 = analysisCopy;
  v10 = modelCopy;
  [v10 performChanges:v12];
}

uint64_t __83__PUOneUpVisualImageAnalyzingController__setVisualImageAnalysis_forAssetViewModel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasVisualAnalysisFailed:*(a1 + 40) == 0];
  [*(a1 + 32) setVisualImageAnalysis:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setVisualIntelligenceAnalyzeRequestID:0];
}

+ (void)_clearImageAnalysisFromAssetViewModel:(id)model
{
  modelCopy = model;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PUOneUpVisualImageAnalyzingController__clearImageAnalysisFromAssetViewModel___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = modelCopy;
  v4 = modelCopy;
  [v4 performChanges:v5];
}

uint64_t __79__PUOneUpVisualImageAnalyzingController__clearImageAnalysisFromAssetViewModel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVisualImageAnalysis:0];
  [*(a1 + 32) setHasVisualAnalysisFailed:0];
  v2 = *(a1 + 32);

  return [v2 setVisualIntelligenceAnalyzeRequestID:0];
}

+ (BOOL)canPerformAnalysisWithEnabled:(BOOL)enabled browsingViewModel:(id)model assetViewModel:(id)viewModel
{
  enabledCopy = enabled;
  modelCopy = model;
  viewModelCopy = viewModel;
  if (enabledCopy)
  {
    if ([modelCopy isScrolling])
    {
LABEL_3:
      LOBYTE(enabledCopy) = 0;
      goto LABEL_4;
    }

    isScrubbing = [modelCopy isScrubbing];
    LOBYTE(enabledCopy) = 0;
    if (viewModelCopy && (isScrubbing & 1) == 0)
    {
      asset = [viewModelCopy asset];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_3;
      }

      [viewModelCopy focusValue];
      if (fabs(v13) > 1.0)
      {
        goto LABEL_3;
      }

      visualImageAnalysis = [viewModelCopy visualImageAnalysis];

      if (visualImageAnalysis)
      {
        goto LABEL_3;
      }

      asset2 = [viewModelCopy asset];
      playbackStyle = [asset2 playbackStyle];

      if (playbackStyle == 4)
      {
        videoPlayer = [viewModelCopy videoPlayer];
        isPlaybackDesired = [videoPlayer isPlaybackDesired];

        if (isPlaybackDesired & 1) != 0 || ![viewModelCopy isFullyInFocus] || (objc_msgSend(modelCopy, "isInteractingWithVideoScrubber"))
        {
          goto LABEL_3;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69C3C88];
        asset3 = [viewModelCopy asset];
        enabledCopy = [v19 canRequestVKImageAnalysisForAsset:asset3];

        if (!enabledCopy)
        {
          goto LABEL_4;
        }
      }

      LOBYTE(enabledCopy) = 1;
    }
  }

LABEL_4:

  return enabledCopy;
}

@end