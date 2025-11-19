@interface PUOneUpVisualImageAnalyzingController
+ (BOOL)canPerformAnalysisWithEnabled:(BOOL)a3 browsingViewModel:(id)a4 assetViewModel:(id)a5;
+ (void)_clearImageAnalysisFromAssetViewModel:(id)a3;
+ (void)_setVisualImageAnalysis:(id)a3 forAssetViewModel:(id)a4;
- (PUOneUpVisualImageAnalyzingController)init;
- (PUOneUpVisualImageAnalyzingController)initWithBrowsingViewModel:(id)a3;
- (void)_cancelCurrentAnalysis;
- (void)_cancelVKImageAnalysisForAssetViewModel:(id)a3;
- (void)_discardCurrentAnalysis;
- (void)_handleAnalysisResult:(id)a3 error:(id)a4 forAssetViewModel:(id)a5 requestID:(int)a6;
- (void)_handleAssetViewModelChange:(id)a3;
- (void)_handleBrowsingViewModelChange:(id)a3;
- (void)_handleVideoFrameImage:(id)a3 pixelBufferRef:(__CVBuffer *)a4 preferredTransform:(CGAffineTransform *)a5 forAssetViewModel:(id)a6 requestID:(int64_t)a7;
- (void)_invalidateAnalysisSuspended;
- (void)_invalidateAssetViewModel;
- (void)_invalidateCanPerformAnalysis;
- (void)_invalidateCurrentAnalysis;
- (void)_requestAnalysisForVideoFrameOfAssetViewModel:(id)a3 asset:(id)a4 playerLayer:(id)a5 preferredTransform:(CGAffineTransform *)a6;
- (void)_requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel:(id)a3;
- (void)_requestVKImageAnalysisForAssetViewModel:(id)a3;
- (void)_setNeedsUpdate;
- (void)_updateAnalysisSuspended;
- (void)_updateAssetViewModel;
- (void)_updateCanPerformAnalysis;
- (void)_updateCurrentAnalysis;
- (void)setAssetViewModel:(id)a3;
- (void)setCanPerformAnalysis:(BOOL)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUOneUpVisualImageAnalyzingController

- (void)_cancelVKImageAnalysisForAssetViewModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 visualIntelligenceAnalyzeRequestID])
  {
    v6 = [(PUOneUpVisualImageAnalyzingController *)self visualImageManager];
    [v6 cancelRequestByID:{objc_msgSend(v5, "visualIntelligenceAnalyzeRequestID")}];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__PUOneUpVisualImageAnalyzingController__cancelVKImageAnalysisForAssetViewModel___block_invoke;
    v7[3] = &unk_1E7B80DD0;
    v8 = v5;
    [v8 performChanges:v7];
  }
}

- (void)_handleAnalysisResult:(id)a3 error:(id)a4 forAssetViewModel:(id)a5 requestID:(int)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
    v13 = v12;
    if (v12 == v11)
    {
      v14 = [(PUOneUpVisualImageAnalyzingController *)self currentAnalysisRequestID];

      if (v14 == a6)
      {
        [PUOneUpVisualImageAnalyzingController _setVisualImageAnalysis:v15 forAssetViewModel:v11];
      }
    }

    else
    {
    }
  }
}

- (void)_handleVideoFrameImage:(id)a3 pixelBufferRef:(__CVBuffer *)a4 preferredTransform:(CGAffineTransform *)a5 forAssetViewModel:(id)a6 requestID:(int64_t)a7
{
  v12 = a3;
  v13 = a6;
  v14 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
  v15 = v14;
  if (v14 == v13)
  {
    v16 = [(PUOneUpVisualImageAnalyzingController *)self videoFrameRequestID];

    if (v16 == a7)
    {
      objc_initWeak(&location, v13);
      objc_initWeak(&from, self);
      v17 = [v13 asset];
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v18 = [(PUOneUpVisualImageAnalyzingController *)self visualImageManager];
      v19 = *&a5->c;
      v29 = *&a5->a;
      v30 = v19;
      v31 = *&a5->tx;
      v20 = PXVKImageOrientationFromPreferredTransform();
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __126__PUOneUpVisualImageAnalyzingController__handleVideoFrameImage_pixelBufferRef_preferredTransform_forAssetViewModel_requestID___block_invoke;
      v26[3] = &unk_1E7B73D88;
      objc_copyWeak(&v27, &from);
      objc_copyWeak(&v28, &location);
      v21 = [v18 requestVKImageAnalysisForAsset:v17 pixelBuffer:a4 orientation:v20 resultHandler:v26];

      v35 = v21;
      [(PUOneUpVisualImageAnalyzingController *)self setCurrentAnalysisRequestID:*(v33 + 6)];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __126__PUOneUpVisualImageAnalyzingController__handleVideoFrameImage_pixelBufferRef_preferredTransform_forAssetViewModel_requestID___block_invoke_3;
      v22[3] = &unk_1E7B7FFC0;
      v23 = v13;
      v25 = &v32;
      v24 = v12;
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

- (void)_requestAnalysisForVideoFrameOfAssetViewModel:(id)a3 asset:(id)a4 playerLayer:(id)a5 preferredTransform:(CGAffineTransform *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && v11)
  {
    [(PUOneUpVisualImageAnalyzingController *)self setVideoFrameRequestID:[(PUOneUpVisualImageAnalyzingController *)self videoFrameRequestID]+ 1];
    v13 = [(PUOneUpVisualImageAnalyzingController *)self videoFrameRequestID];
    if (v12 && (v14 = v13, (v15 = [v12 copyDisplayedPixelBuffer]) != 0))
    {
      v16 = v15;
      imageOut = 0;
      VTCreateCGImageFromCVPixelBuffer(v15, 0, &imageOut);
      if (imageOut)
      {
        v17 = *&a6->c;
        *buf = *&a6->a;
        *&buf[16] = v17;
        v29 = *&a6->tx;
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
      v20 = *&a6->c;
      v23 = *&a6->a;
      v24 = v20;
      v25 = *&a6->tx;
      v21 = v10;
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
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v12;
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

- (void)_requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"assetViewModel != nil"}];
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v6 = [v5 videoPlayer];
  v7 = [v6 videoSession];
  v8 = v7;
  if (v7)
  {
    [v7 preferredTransform];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
  }

  v9 = [v5 primaryVideoLayerSource];
  v10 = [v9 playerLayer];

  v11 = [v5 asset];
  [objc_opt_class() _clearImageAnalysisFromAssetViewModel:v5];
  objc_initWeak(&location, v5);
  objc_initWeak(&from, self);
  v12 = [(PUOneUpVisualImageAnalyzingController *)self loadVideoFrameQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel___block_invoke;
  block[3] = &unk_1E7B73D10;
  objc_copyWeak(&v19, &from);
  objc_copyWeak(&v20, &location);
  v17 = v11;
  v18 = v10;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v13 = v10;
  v14 = v11;
  dispatch_async(v12, block);

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

- (void)_requestVKImageAnalysisForAssetViewModel:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"assetViewModel != nil"}];
  }

  v6 = [v5 visualImageAnalysis];

  if (!v6)
  {
    v7 = [v5 asset];
    v8 = [v7 playbackStyle];

    if (v8 == 4)
    {
      [(PUOneUpVisualImageAnalyzingController *)self _requestVKImageAnalysisByCurrentVideoFrameForAssetViewModel:v5];
    }

    else
    {
      objc_initWeak(&location, v5);
      v9 = [(PUOneUpVisualImageAnalyzingController *)self visualImageManager];
      v10 = [v5 asset];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __82__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisForAssetViewModel___block_invoke;
      v16[3] = &unk_1E7B73CE8;
      objc_copyWeak(&v17, &location);
      v11 = [v9 requestVKImageAnalysisForAsset:v10 resultHandler:v16];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __82__PUOneUpVisualImageAnalyzingController__requestVKImageAnalysisForAssetViewModel___block_invoke_4;
      v13[3] = &unk_1E7B761F0;
      v14 = v5;
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

- (void)_handleAssetViewModelChange:(id)a3
{
  v12 = a3;
  if ([v12 assetContentChanged])
  {
    [(PUOneUpVisualImageAnalyzingController *)self _discardCurrentAnalysis];
  }

  if (([v12 focusValueChanged] & 1) != 0 || (objc_msgSend(v12, "videoPlayerDidChange") & 1) != 0 || (objc_msgSend(v12, "assetChanged") & 1) != 0 || objc_msgSend(v12, "visualImageAnalysisChanged"))
  {
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];
  }

  v4 = [v12 videoPlayerChange];

  v5 = v12;
  if (v4)
  {
    v6 = [v12 videoPlayerChange];
    if ([v6 desiredPlayStateDidChange])
    {
      [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];
      v7 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
      v8 = [v7 videoPlayer];
      v9 = [v8 isPlaybackDesired];

      if (v9)
      {
        v10 = objc_opt_class();
        v11 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
        [v10 _clearImageAnalysisFromAssetViewModel:v11];
      }
    }

    v5 = v12;
  }
}

- (void)_handleBrowsingViewModelChange:(id)a3
{
  v8 = a3;
  if (([v8 isScrollingDidChange] & 1) != 0 || (objc_msgSend(v8, "isScrubbingDidChange") & 1) != 0 || objc_msgSend(v8, "livePhotoShouldPlayDidChange"))
  {
    goto LABEL_4;
  }

  if ([v8 isInteractingWithVideoScrubberDidChange])
  {
    v4 = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];
    v5 = [v4 isInteractingWithVideoScrubber];

    if (!v5)
    {
LABEL_4:
      [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];
      goto LABEL_5;
    }

    v6 = objc_opt_class();
    v7 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
    [v6 _clearImageAnalysisFromAssetViewModel:v7];
  }

LABEL_5:
  if ([v8 currentAssetDidChange])
  {
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateAssetViewModel];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];

  if (v7 == v9)
  {
    [(PUOneUpVisualImageAnalyzingController *)self _handleBrowsingViewModelChange:v6];
  }

  else
  {
    v8 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];

    if (v8 == v9)
    {
      [(PUOneUpVisualImageAnalyzingController *)self _handleAssetViewModelChange:v6];
    }
  }
}

- (void)_updateAnalysisSuspended
{
  v5 = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];
  if ([v5 isScrubbing] & 1) != 0 || (objc_msgSend(v5, "livePhotoShouldPlay") & 1) != 0 || (objc_msgSend(v5, "isScrolling"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [(PUOneUpVisualImageAnalyzingController *)self isEnabled]^ 1;
  }

  v4 = [(PUOneUpVisualImageAnalyzingController *)self visualImageManager];
  [v4 setAnalysisSuspended:v3];
}

- (void)_invalidateAnalysisSuspended
{
  v2 = [(PUOneUpVisualImageAnalyzingController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAnalysisSuspended];
}

- (void)_updateCurrentAnalysis
{
  if ([(PUOneUpVisualImageAnalyzingController *)self canPerformAnalysis]&& ![(PUOneUpVisualImageAnalyzingController *)self currentAnalysisRequestID])
  {
    v3 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
    [(PUOneUpVisualImageAnalyzingController *)self _requestVKImageAnalysisForAssetViewModel:v3];
  }
}

- (void)_discardCurrentAnalysis
{
  v3 = objc_opt_class();
  v4 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
  [v3 _clearImageAnalysisFromAssetViewModel:v4];

  [(PUOneUpVisualImageAnalyzingController *)self _invalidateCurrentAnalysis];
}

- (void)_invalidateCurrentAnalysis
{
  [(PUOneUpVisualImageAnalyzingController *)self setCurrentAnalysisRequestID:0];
  v3 = [(PUOneUpVisualImageAnalyzingController *)self updater];
  [v3 setNeedsUpdateOf:sel__updateCurrentAnalysis];
}

- (void)_updateCanPerformAnalysis
{
  v3 = objc_opt_class();
  v4 = [(PUOneUpVisualImageAnalyzingController *)self isEnabled];
  v6 = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];
  v5 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
  -[PUOneUpVisualImageAnalyzingController setCanPerformAnalysis:](self, "setCanPerformAnalysis:", [v3 canPerformAnalysisWithEnabled:v4 browsingViewModel:v6 assetViewModel:v5]);
}

- (void)_invalidateCanPerformAnalysis
{
  v2 = [(PUOneUpVisualImageAnalyzingController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCanPerformAnalysis];
}

- (void)_updateAssetViewModel
{
  v4 = [(PUOneUpVisualImageAnalyzingController *)self browsingViewModel];
  v3 = [v4 assetViewModelForCurrentAssetReference];
  [(PUOneUpVisualImageAnalyzingController *)self setAssetViewModel:v3];
}

- (void)_invalidateAssetViewModel
{
  v2 = [(PUOneUpVisualImageAnalyzingController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssetViewModel];
}

- (void)_cancelCurrentAnalysis
{
  v3 = [(PUOneUpVisualImageAnalyzingController *)self assetViewModel];
  [(PUOneUpVisualImageAnalyzingController *)self _cancelVKImageAnalysisForAssetViewModel:v3];
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

- (void)setCanPerformAnalysis:(BOOL)a3
{
  if (self->_canPerformAnalysis != a3)
  {
    self->_canPerformAnalysis = a3;
    if (!a3)
    {
      [(PUOneUpVisualImageAnalyzingController *)self _cancelCurrentAnalysis];
    }

    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCurrentAnalysis];
  }
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  if (self->_assetViewModel != v5)
  {
    v6 = v5;
    [(PUOneUpVisualImageAnalyzingController *)self _cancelCurrentAnalysis];
    [(PUAssetViewModel *)self->_assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCurrentAnalysis];
    v5 = v6;
  }
}

- (void)setIsEnabled:(BOOL)a3
{
  if (self->_isEnabled != a3)
  {
    self->_isEnabled = a3;
    [(PUOneUpVisualImageAnalyzingController *)self _invalidateCanPerformAnalysis];

    [(PUOneUpVisualImageAnalyzingController *)self _invalidateAnalysisSuspended];
  }
}

- (PUOneUpVisualImageAnalyzingController)initWithBrowsingViewModel:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"browsingViewModel != nil"}];
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
    objc_storeStrong(&v7->_browsingViewModel, a3);
    [(PUBrowsingViewModel *)v7->_browsingViewModel registerChangeObserver:v7];
    v10 = [MEMORY[0x1E69C3C88] sharedManager];
    visualImageManager = v7->_visualImageManager;
    v7->_visualImageManager = v10;

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PUOneUpVisualImageAnalyzingController init]"}];

  abort();
}

+ (void)_setVisualImageAnalysis:(id)a3 forAssetViewModel:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PUOneUpVisualImageAnalyzingController.m" lineNumber:370 description:{@"%s must be called on the main thread", "+[PUOneUpVisualImageAnalyzingController _setVisualImageAnalysis:forAssetViewModel:]"}];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PUOneUpVisualImageAnalyzingController__setVisualImageAnalysis_forAssetViewModel___block_invoke;
  v12[3] = &unk_1E7B80C38;
  v13 = v8;
  v14 = v7;
  v9 = v7;
  v10 = v8;
  [v10 performChanges:v12];
}

uint64_t __83__PUOneUpVisualImageAnalyzingController__setVisualImageAnalysis_forAssetViewModel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasVisualAnalysisFailed:*(a1 + 40) == 0];
  [*(a1 + 32) setVisualImageAnalysis:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setVisualIntelligenceAnalyzeRequestID:0];
}

+ (void)_clearImageAnalysisFromAssetViewModel:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PUOneUpVisualImageAnalyzingController__clearImageAnalysisFromAssetViewModel___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = v3;
  v4 = v3;
  [v4 performChanges:v5];
}

uint64_t __79__PUOneUpVisualImageAnalyzingController__clearImageAnalysisFromAssetViewModel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVisualImageAnalysis:0];
  [*(a1 + 32) setHasVisualAnalysisFailed:0];
  v2 = *(a1 + 32);

  return [v2 setVisualIntelligenceAnalyzeRequestID:0];
}

+ (BOOL)canPerformAnalysisWithEnabled:(BOOL)a3 browsingViewModel:(id)a4 assetViewModel:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  if (v6)
  {
    if ([v7 isScrolling])
    {
LABEL_3:
      LOBYTE(v6) = 0;
      goto LABEL_4;
    }

    v10 = [v7 isScrubbing];
    LOBYTE(v6) = 0;
    if (v8 && (v10 & 1) == 0)
    {
      v11 = [v8 asset];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_3;
      }

      [v8 focusValue];
      if (fabs(v13) > 1.0)
      {
        goto LABEL_3;
      }

      v14 = [v8 visualImageAnalysis];

      if (v14)
      {
        goto LABEL_3;
      }

      v15 = [v8 asset];
      v16 = [v15 playbackStyle];

      if (v16 == 4)
      {
        v17 = [v8 videoPlayer];
        v18 = [v17 isPlaybackDesired];

        if (v18 & 1) != 0 || ![v8 isFullyInFocus] || (objc_msgSend(v7, "isInteractingWithVideoScrubber"))
        {
          goto LABEL_3;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69C3C88];
        v20 = [v8 asset];
        v6 = [v19 canRequestVKImageAnalysisForAsset:v20];

        if (!v6)
        {
          goto LABEL_4;
        }
      }

      LOBYTE(v6) = 1;
    }
  }

LABEL_4:

  return v6;
}

@end