@interface PUVideoTileViewController
+ (id)keyFrameTimeLoadingQueue;
- (AVPlayerLayer)playerLayer;
- (BOOL)_isDisplayingVideo;
- (BOOL)adoptAssetTransitionInfo:(id)a3;
- (BOOL)videoOutputIsReadyForDisplay;
- (CGSize)_targetSize;
- (CGSize)requestedImageTargetSize;
- (PUVideoTileViewController)initWithReuseIdentifier:(id)a3;
- (id)generateAssetTransitionInfo;
- (id)loadView;
- (id)viewsForApplyingBorder;
- (id)viewsForApplyingCornerRadius;
- (void)_callReadyToDisplayChangeHandler;
- (void)_fetchKeyTimeForAsset:(id)a3;
- (void)_handleAssetViewModel:(id)a3 didChange:(id)a4;
- (void)_handleImageResult:(id)a3 info:(id)a4 synchronous:(BOOL)a5;
- (void)_handleKeyFrameSourceTime:(id *)a3 forAsset:(id)a4;
- (void)_layoutLiveEffectsRenderDebugIndicator;
- (void)_setAsset:(id)a3;
- (void)_setCurrentImageRequestID:(int)a3;
- (void)_setDisplayingFullQualityImage:(BOOL)a3;
- (void)_setImageResult:(id)a3 pixelBuffer:(__CVBuffer *)a4 info:(id)a5 synchronous:(BOOL)a6;
- (void)_setTargetSize:(CGSize)a3;
- (void)_updateAssetViewModelHDRState;
- (void)_updateDebugBorders;
- (void)_updateImage;
- (void)_updateInteractionHostViewRegistration;
- (void)_updateLiveEffectsRenderDebugIndicator;
- (void)_updateLiveEffectsRenderDebugIndicatorVisibility;
- (void)_updatePlaceholderVisibility;
- (void)_updateReadyForDisplay;
- (void)_updateTargetSize;
- (void)_updateVideo;
- (void)applyLayoutInfo:(id)a3;
- (void)becomeReusable;
- (void)didChangeActive;
- (void)didChangeAnimating;
- (void)didChangeIsOnPrimaryDisplay;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForVideoResolutionChange;
- (void)removeAllAnimations;
- (void)setAssetKeyFrameSourceTime:(id *)a3;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingVideoPlayer:(id)a3;
- (void)setCanPlayVideo:(BOOL)a3;
- (void)setEdgeAntialiasingEnabled:(BOOL)a3;
- (void)setMediaProvider:(id)a3;
- (void)setPlaceholderHiddenBehindVideoView:(BOOL)a3;
- (void)setPlaceholderIsAnimatingToHidden:(BOOL)a3;
- (void)setPlaceholderVisible:(BOOL)a3 animated:(BOOL)a4 animationDuration:(double)a5 completion:(id)a6;
- (void)setPlayerDidPlayToEnd:(BOOL)a3;
- (void)setPlayerIsSeeking:(BOOL)a3;
- (void)setPreloadedImage:(id)a3;
- (void)setVideoSession:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)videoPlayer:(id)a3 currentTimeDidChange:(id *)a4;
- (void)videoPlayer:(id)a3 desiredSeekTimeDidChange:(id *)a4;
- (void)videoSessionViewPlaceholderVisibilityChanged:(id)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUVideoTileViewController

- (void)setAssetKeyFrameSourceTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_assetKeyFrameSourceTime.value = *&a3->var0;
  self->_assetKeyFrameSourceTime.epoch = var3;
}

- (CGSize)requestedImageTargetSize
{
  width = self->_requestedImageTargetSize.width;
  height = self->_requestedImageTargetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_targetSize
{
  width = self->__targetSize.width;
  height = self->__targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateLiveEffectsRenderDebugIndicatorVisibility
{
  v3 = [(PUVideoTileViewController *)self videoSession];
  v6 = [v3 playerItem];

  v4 = [v6 videoComposition];
  v5 = v4 == 0;

  [(UIView *)self->_liveEffectRenderingDebugIndicator setHidden:v5];
}

- (void)_layoutLiveEffectsRenderDebugIndicator
{
  liveEffectRenderingDebugIndicator = self->_liveEffectRenderingDebugIndicator;
  if (liveEffectRenderingDebugIndicator)
  {
    [(UIView *)liveEffectRenderingDebugIndicator frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(UIView *)self->_liveEffectRenderingDebugIndicator superview];
    [v12 bounds];
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    v14 = MaxX - CGRectGetWidth(v20) + -20.0;

    v15 = [(UIView *)self->_liveEffectRenderingDebugIndicator superview];
    [v15 bounds];
    v16 = CGRectGetMinY(v21) + 40.0;

    v17 = self->_liveEffectRenderingDebugIndicator;

    [(UIView *)v17 setFrame:v14, v16, v9, v11];
  }
}

- (void)_updateLiveEffectsRenderDebugIndicator
{
  v3 = +[PUOneUpSettings sharedInstance];
  v4 = [v3 videoShowLiveEffectsRenderingIndicator];

  liveEffectRenderingDebugIndicator = self->_liveEffectRenderingDebugIndicator;
  if (v4)
  {
    if (!liveEffectRenderingDebugIndicator)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 90.0, 20.0}];
      v8 = self->_liveEffectRenderingDebugIndicator;
      self->_liveEffectRenderingDebugIndicator = v7;

      [(UIView *)self->_liveEffectRenderingDebugIndicator setText:@"Live Render"];
      v9 = [MEMORY[0x1E69DC888] systemTealColor];
      [(UIView *)self->_liveEffectRenderingDebugIndicator setBackgroundColor:v9];

      [(UIView *)self->_view addSubview:self->_liveEffectRenderingDebugIndicator];
      [(PUVideoTileViewController *)self _updateLiveEffectsRenderDebugIndicatorVisibility];

      [(PUVideoTileViewController *)self _layoutLiveEffectsRenderDebugIndicator];
    }
  }

  else
  {
    [(UIView *)liveEffectRenderingDebugIndicator removeFromSuperview];
    v6 = self->_liveEffectRenderingDebugIndicator;
    self->_liveEffectRenderingDebugIndicator = 0;
  }
}

- (void)setPlayerDidPlayToEnd:(BOOL)a3
{
  if (self->_playerDidPlayToEnd != a3)
  {
    self->_playerDidPlayToEnd = a3;
    if (a3)
    {
      v11 = [(PUVideoTileViewController *)self browsingVideoPlayer];
      if ([v11 isActivated])
      {
      }

      else
      {
        v4 = [(PUVideoTileViewController *)self browsingVideoPlayer];
        v5 = [v4 loopingEnabledForAllVideos];

        if ((v5 & 1) == 0)
        {
          v6 = [(PUVideoTileViewController *)self videoView];
          v7 = [v6 snapshotViewAfterScreenUpdates:1];
          [v6 addSubview:v7];
          v8 = [(PUVideoTileViewController *)self browsingVideoPlayer];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __51__PUVideoTileViewController_setPlayerDidPlayToEnd___block_invoke;
          v14[3] = &unk_1E7B80088;
          v15 = v6;
          v16 = v7;
          v12 = *MEMORY[0x1E6960CC0];
          v13 = *(MEMORY[0x1E6960CC0] + 16);
          v9 = v7;
          v10 = v6;
          [v8 seekToTime:&v12 completionHandler:v14];
        }
      }
    }
  }
}

void __51__PUVideoTileViewController_setPlayerDidPlayToEnd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generateSnapshotImage];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  px_dispatch_on_main_queue();
}

void __51__PUVideoTileViewController_setPlayerDidPlayToEnd___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PUVideoTileViewController_setPlayerDidPlayToEnd___block_invoke_3;
  v3[3] = &unk_1E7B80DD0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v1 transitionWithView:v2 duration:5242880 options:v3 animations:0 completion:0.5];
}

- (void)setPlayerIsSeeking:(BOOL)a3
{
  if (self->_playerIsSeeking != a3)
  {
    self->_playerIsSeeking = a3;
    [(PUVideoTileViewController *)self _updatePlaceholderVisibility];
  }
}

- (void)_updatePlaceholderVisibility
{
  if ([(PUTileController *)self isAnimating])
  {
    return;
  }

  v3 = [(PUVideoTileViewController *)self playerIsSeeking];
  v4 = [(PUVideoTileViewController *)self asset];
  v5 = [v4 mediaSubtypes];

  if (v3)
  {
    v6 = [(PUVideoTileViewController *)self videoView];
    v7 = [v6 isVideoLayerReadyForDisplay];

    if (v7)
    {
      goto LABEL_14;
    }
  }

  v8 = [(PUVideoTileViewController *)self videoView];
  if (([v8 isVideoLayerReadyForDisplay] & 1) == 0 && !self->_hidePlaceholderImmediately)
  {

    goto LABEL_11;
  }

  v9 = [(PUVideoTileViewController *)self videoSession];
  v10 = [v9 playerItem];

  if (!v10)
  {
LABEL_11:
    v13 = 1;
    goto LABEL_15;
  }

  if (!self->_hidePlaceholderImmediately)
  {
    location[0] = 0;
    location[1] = 0;
    v23 = 0;
    [(PUVideoTileViewController *)self assetKeyFrameSourceTime];
    v20 = 0uLL;
    v21 = 0;
    v11 = [(PUVideoTileViewController *)self browsingVideoPlayer];
    v12 = v11;
    if (v11)
    {
      [v11 currentTime];
    }

    else
    {
      v20 = 0uLL;
      v21 = 0;
    }
  }

LABEL_14:
  v13 = 0;
LABEL_15:
  v14 = 0.0;
  if ((v5 & 0x100000) != 0 && ![(PUTileController *)self shouldSuppressAnimatedUpdates])
  {
    v16 = [(UIView *)self->_view window];

    v17 = v16 == 0;
    v15 = v16 != 0;
    if (v17)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 0.2;
    }
  }

  else
  {
    v15 = 0;
  }

  objc_initWeak(location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__PUVideoTileViewController__updatePlaceholderVisibility__block_invoke;
  v18[3] = &unk_1E7B80638;
  objc_copyWeak(&v19, location);
  [(PUVideoTileViewController *)self setPlaceholderVisible:v13 animated:v15 animationDuration:v18 completion:v14];
  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
}

void __57__PUVideoTileViewController__updatePlaceholderVisibility__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callReadyToDisplayChangeHandler];
}

- (BOOL)_isDisplayingVideo
{
  v2 = [(PUVideoTileViewController *)self videoView];
  v3 = [v2 placeholderVisible];

  return v3 ^ 1;
}

- (void)_setDisplayingFullQualityImage:(BOOL)a3
{
  if (self->__isDisplayingFullQualityImage != a3)
  {
    self->__isDisplayingFullQualityImage = a3;
    [(PUVideoTileViewController *)self _updateReadyForDisplay];
  }
}

- (void)setVideoSession:(id)a3
{
  v5 = a3;
  videoSession = self->_videoSession;
  if (videoSession != v5)
  {
    v9 = v5;
    [(PXVideoSession *)videoSession unregisterChangeObserver:self context:VideoSessionContext];
    objc_storeStrong(&self->_videoSession, a3);
    [(PXVideoSession *)v9 registerChangeObserver:self context:VideoSessionContext];
    if (v9)
    {
      v7 = [(PXVideoSession *)v9 playState]== 3;
    }

    else
    {
      v7 = 0;
    }

    self->_hidePlaceholderImmediately = v7;
    v8 = [(PUVideoTileViewController *)self videoView];
    [v8 setVideoSession:v9];

    [(PUVideoTileViewController *)self setPlayerDidPlayToEnd:0];
    [(PUVideoTileViewController *)self _updatePlaceholderVisibility];
    videoSession = [(PUVideoTileViewController *)self _updateAssetViewModelHDRState];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](videoSession, v5);
}

- (void)_updateVideo
{
  v3 = [(PUVideoTileViewController *)self browsingVideoPlayer];
  v4 = [v3 videoSession];

  if (![(PUVideoTileViewController *)self canPlayVideo])
  {

    v4 = 0;
  }

  if (![(PUTileController *)self isAnimating])
  {
    [(PUVideoTileViewController *)self setVideoSession:v4];
  }
}

- (void)_setImageResult:(id)a3 pixelBuffer:(__CVBuffer *)a4 info:(id)a5 synchronous:(BOOL)a6
{
  v22 = a3;
  v9 = a5;
  if (v22)
  {
    v10 = [(UIImageView *)self->_placeholderImageView image];
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6978E68]];
    v12 = [v11 BOOLValue];

    v13 = [(PUVideoTileViewController *)self displayedPreloadedImage];

    if (v10 == v13)
    {
      [v22 size];
      v16 = v15;
      [v10 size];
      if (v16 < v17 || ([v22 size], v19 = v18, objc_msgSend(v10, "size"), v19 < v20))
      {
LABEL_12:
        v21 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
        -[PUVideoTileViewController _setDisplayingFullQualityImage:](self, "_setDisplayingFullQualityImage:", [v21 BOOLValue] ^ 1);

        goto LABEL_13;
      }
    }

    else
    {
      if (v10)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        goto LABEL_12;
      }
    }

    [(PUVideoTileViewController *)self setCurrentImageIsPlaceholder:v12];
    [(PUVideoTileViewController *)self setDisplayedPreloadedImage:0];
    [(UIImageView *)self->_placeholderImageView setImage:v22];
    if (!((a4 == 0) | v12 & 1))
    {
      [(PXPixelBufferView *)self->_pixelBufferView enqueuePixelBuffer:a4];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_handleImageResult:(id)a3 info:(id)a4 synchronous:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5 || ([v9 objectForKeyedSubscript:*MEMORY[0x1E6978E70]], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "intValue"), v13 = -[PUVideoTileViewController _currentImageRequestID](self, "_currentImageRequestID"), v11, v12 == v13))
  {
    v14 = [(PUVideoTileViewController *)self asset];
    v15 = [v14 mediaSubtypes];

    v16 = 0;
    if (PXSupportsImageModulation() && v8 && (v15 & 0x100000) != 0)
    {
      v17 = +[PUOneUpSettings sharedInstance];
      v18 = [v17 useHDRVideoThumbnails];

      if (v18)
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x2050000000;
        v19 = getPIHDRUtilitiesClass_softClass;
        v29 = getPIHDRUtilitiesClass_softClass;
        if (!getPIHDRUtilitiesClass_softClass)
        {
          location[0] = MEMORY[0x1E69E9820];
          location[1] = 3221225472;
          location[2] = __getPIHDRUtilitiesClass_block_invoke;
          location[3] = &unk_1E7B800F0;
          location[4] = &v26;
          __getPIHDRUtilitiesClass_block_invoke(location);
          v19 = v27[3];
        }

        v20 = v19;
        _Block_object_dispose(&v26, 8);
        v16 = [v19 newHLGPixelBufferFromSDRImage:{objc_msgSend(v8, "CGImage")}];
      }

      else
      {
        v16 = 0;
      }
    }

    objc_initWeak(location, self);
    objc_copyWeak(v23, location);
    v21 = v8;
    v23[1] = v16;
    v22 = v10;
    v24 = a5;
    px_dispatch_on_main_queue();
    if (v16)
    {
      CFRelease(v16);
    }

    objc_destroyWeak(v23);
    objc_destroyWeak(location);
  }
}

void __65__PUVideoTileViewController__handleImageResult_info_synchronous___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setImageResult:*(a1 + 32) pixelBuffer:*(a1 + 56) info:*(a1 + 40) synchronous:*(a1 + 64)];
}

- (void)_updateImage
{
  v3 = [(PUVideoTileViewController *)self assetViewModel];
  v4 = [v3 asset];

  [(PUVideoTileViewController *)self _targetSize];
  v6 = v5;
  v8 = v7;
  v9 = [(PUVideoTileViewController *)self mediaProvider];
  v10 = v9;
  if (v4)
  {
    if (v8 == *(MEMORY[0x1E695F060] + 8) && v6 == *MEMORY[0x1E695F060] || v9 == 0)
    {
      [(PUVideoTileViewController *)self _setCurrentImageRequestID:0];
    }

    else
    {
      [(PUVideoTileViewController *)self requestedImageTargetSize];
      if (v13 < v6 || ([(PUVideoTileViewController *)self requestedImageTargetSize], v14 < v8))
      {
        v15 = objc_alloc_init(MEMORY[0x1E6978868]);
        [v15 setAllowPlaceholder:1];
        [v15 setNetworkAccessAllowed:1];
        v16 = [(PUVideoTileViewController *)self browsingViewModel];
        v17 = [v16 searchContextualVideoThumbnailIdentifier];
        [v15 setContextualVideoThumbnailIdentifier:v17];

        v18 = [(PUVideoTileViewController *)self asset];
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v19 = v18;

          if (v19 && PHSensitiveContentAnalysisAvailable() && [v19 mediaType] == 2 && objc_msgSend(MEMORY[0x1E6978AB0], "assetNeedsVideoSensitivityProcessing:", v19))
          {
            [v15 setAvoidDisplayingProgressUpdates:1];
          }
        }

        else
        {

          v19 = 0;
        }

        [(PUVideoTileViewController *)self _setDisplayingFullQualityImage:0];
        [(PUVideoTileViewController *)self setRequestedImageTargetSize:v6, v8];
        objc_initWeak(&location, self);
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v26 = 1;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __41__PUVideoTileViewController__updateImage__block_invoke;
        v21[3] = &unk_1E7B80038;
        objc_copyWeak(&v22, &location);
        v21[4] = &v23;
        v20 = [v10 requestImageForAsset:v4 targetSize:1 contentMode:v15 options:v21 resultHandler:{v6, v8}];
        *(v24 + 24) = 0;
        [(PUVideoTileViewController *)self _setCurrentImageRequestID:v20];
        objc_destroyWeak(&v22);
        _Block_object_dispose(&v23, 8);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    [(PUVideoTileViewController *)self _setCurrentImageRequestID:0];
    [(UIImageView *)self->_placeholderImageView setImage:0];
    [(PXPixelBufferView *)self->_pixelBufferView enqueuePixelBuffer:0];
  }
}

void __41__PUVideoTileViewController__updateImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleImageResult:v6 info:v5 synchronous:*(*(*(a1 + 32) + 8) + 24)];
}

- (void)_updateTargetSize
{
  if ([(PUTileController *)self isActive])
  {
    v3 = [(PUTileViewController *)self view];
    v4 = [v3 window];
    v5 = [v4 screen];
    [v5 scale];
    v7 = v6;

    if (v7 < 1.0)
    {
      v8 = [(PUTileController *)self tilingView];
      v9 = [v8 window];
      v10 = [v9 screen];
      [v10 scale];
      v7 = v11;
    }

    if (v7 < 1.0 && PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v12 = [(PUTileViewController *)self view];
    [v12 bounds];

    v13 = [(PUVideoTileViewController *)self asset];
    [v13 pixelWidth];
    [v13 pixelHeight];
    PXSizeMin();
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  [(PUVideoTileViewController *)self _setTargetSize:v15, v17];
}

- (void)_updateReadyForDisplay
{
  v3 = [(PUVideoTileViewController *)self _isDisplayingVideo]|| [(PUVideoTileViewController *)self _isDisplayingFullQualityImage];

  [(PUTileViewController *)self _setReadyForDisplay:v3];
}

- (void)_handleAssetViewModel:(id)a3 didChange:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 asset];
  [(PUVideoTileViewController *)self _setAsset:v7];

  if ([v6 focusValueChanged] && self->_waitForFocusValueForCrossfade)
  {
    [(PUVideoTileViewController *)self _updatePlaceholderVisibility];
  }

  if ([v6 isUserTransformingTileDidChange] && (objc_msgSend(v10, "isUserTransformingTile") & 1) == 0)
  {
    v8 = [(PUVideoTileViewController *)self browsingVideoPlayer];
    [(PUVideoTileViewController *)self _targetSize];
    [v8 setDesiredTargetSize:?];
  }

  if ([v6 videoPlayerDidChange])
  {
    v9 = [v10 videoPlayer];
    [(PUVideoTileViewController *)self setBrowsingVideoPlayer:v9];
  }
}

- (void)_callReadyToDisplayChangeHandler
{
  v2 = [(PUVideoTileViewController *)self readyForDisplayChangeHandler];
  v4 = [v2 copy];

  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (void)_setCurrentImageRequestID:(int)a3
{
  if (self->__currentImageRequestID != a3)
  {
    v5 = [(PUVideoTileViewController *)self mediaProvider];
    [v5 cancelImageRequest:self->__currentImageRequestID];

    self->__currentImageRequestID = a3;
  }
}

- (void)_setTargetSize:(CGSize)a3
{
  width = self->__targetSize.width;
  height = self->__targetSize.height;
  if (a3.width != width || a3.height != height)
  {
    v6 = a3.height;
    v7 = a3.width;
    self->__targetSize = a3;
    v9 = [(UIImageView *)self->_placeholderImageView image];
    v14 = v9;
    v11 = v7 <= width && v9 != 0 && v6 <= height;
    if (!v11 || ([v9 size], v7 > v12) || (objc_msgSend(v14, "size"), v6 > v13))
    {
      if ([(PUVideoTileViewController *)self placeholderVisible])
      {
        [(PUVideoTileViewController *)self _updateImage];
      }
    }
  }
}

- (void)setPlaceholderHiddenBehindVideoView:(BOOL)a3
{
  if (self->_placeholderHiddenBehindVideoView != a3)
  {
    self->_placeholderHiddenBehindVideoView = a3;
    placeholderImageView = self->_placeholderImageView;
    if (a3)
    {
      [(UIImageView *)placeholderImageView setAlpha:1.0];
      view = self->_view;
      v6 = self->_placeholderImageView;
      videoView = self->_videoView;

      [(UIView *)view insertSubview:v6 belowSubview:videoView];
    }

    else
    {
      [(UIImageView *)placeholderImageView setAlpha:0.0];
      v8 = self->_view;
      v9 = self->_placeholderImageView;
      v10 = self->_videoView;

      [(UIView *)v8 insertSubview:v9 aboveSubview:v10];
    }
  }
}

- (void)setPlaceholderVisible:(BOOL)a3 animated:(BOOL)a4 animationDuration:(double)a5 completion:(id)a6
{
  v7 = a3;
  v9 = a6;
  if (self->_placeholderVisible != v7)
  {
    self->_placeholderVisible = v7;
    v10 = !v7;
    if (a5 > 0.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    [(PUVideoTileViewController *)self setPlaceholderIsAnimatingToHidden:v11];
    [(PUVideoTileViewController *)self setPlaceholderHiddenBehindVideoView:0];
    v12 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__PUVideoTileViewController_setPlaceholderVisible_animated_animationDuration_completion___block_invoke;
    v16[3] = &unk_1E7B7FF98;
    v16[4] = self;
    v17 = v7;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PUVideoTileViewController_setPlaceholderVisible_animated_animationDuration_completion___block_invoke_2;
    v13[3] = &unk_1E7B80010;
    v13[4] = self;
    v15 = v7;
    v14 = v9;
    [v12 animateWithDuration:2 delay:v16 options:v13 animations:a5 completion:0.0];
    if ((v10 & 1) == 0)
    {
      [(PUVideoTileViewController *)self _updateImage];
    }
  }
}

uint64_t __89__PUVideoTileViewController_setPlaceholderVisible_animated_animationDuration_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPlaceholderIsAnimatingToHidden:0];
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) setPlaceholderHiddenBehindVideoView:1];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setBrowsingVideoPlayer:(id)a3
{
  v5 = a3;
  browsingVideoPlayer = self->_browsingVideoPlayer;
  if (browsingVideoPlayer != v5)
  {
    v7 = v5;
    [(PUBrowsingVideoPlayer *)browsingVideoPlayer unregisterChangeObserver:self];
    [(PUBrowsingVideoPlayer *)self->_browsingVideoPlayer unregisterTimeObserver:self];
    [(PUBrowsingVideoPlayer *)self->_browsingVideoPlayer unregisterVideoOutput:self];
    objc_storeStrong(&self->_browsingVideoPlayer, a3);
    [(PUBrowsingVideoPlayer *)self->_browsingVideoPlayer registerTimeObserver:self];
    if ([(PUVideoTileViewController *)self canPlayVideo])
    {
      [(PUBrowsingVideoPlayer *)self->_browsingVideoPlayer registerVideoOutput:self];
    }

    [(PUBrowsingVideoPlayer *)self->_browsingVideoPlayer registerChangeObserver:self];
    browsingVideoPlayer = [(PUVideoTileViewController *)self _updateVideo];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingVideoPlayer, v5);
}

- (void)_handleKeyFrameSourceTime:(id *)a3 forAsset:(id)a4
{
  v6 = a4;
  v7 = [(PUVideoTileViewController *)self asset];

  if (v7 == v6)
  {
    v8 = *&a3->var0;
    var3 = a3->var3;
    [(PUVideoTileViewController *)self setAssetKeyFrameSourceTime:&v8];
  }
}

- (void)_fetchKeyTimeForAsset:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() keyFrameTimeLoadingQueue];
  dispatch_assert_queue_V2(v5);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __51__PUVideoTileViewController__fetchKeyTimeForAsset___block_invoke;
  v17 = &unk_1E7B7FFC0;
  v20 = &v21;
  v6 = v4;
  v18 = v6;
  v19 = self;
  px_dispatch_on_main_queue_sync();
  if (v22[3])
  {
    v12 = 0uLL;
    v13 = 0;
    if (objc_opt_respondsToSelector())
    {
      if (v6)
      {
        [v6 videoKeyFrameSourceTime];
      }

      else
      {
        v12 = 0uLL;
        v13 = 0;
      }
    }

    else
    {
      v12 = *MEMORY[0x1E6960C70];
      v13 = *(MEMORY[0x1E6960C70] + 16);
    }

    objc_initWeak(&location, self);
    objc_copyWeak(&v8, &location);
    v9 = v12;
    v10 = v13;
    v7 = v6;
    px_dispatch_on_main_queue();

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v21, 8);
}

void __51__PUVideoTileViewController__fetchKeyTimeForAsset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) asset];
  *(*(*(a1 + 48) + 8) + 24) = v2 == v3;
}

void __51__PUVideoTileViewController__fetchKeyTimeForAsset___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  [WeakRetained _handleKeyFrameSourceTime:&v4 forAsset:v3];
}

- (void)_setAsset:(id)a3
{
  v5 = a3;
  asset = self->_asset;
  if (asset != v5)
  {
    v7 = asset;
    v8 = [(PUDisplayAsset *)v5 isContentEqualTo:v7];
    if (!v8)
    {
      v8 = [(PUDisplayAsset *)v7 isContentEqualTo:v5];
    }

    objc_storeStrong(&self->_asset, a3);
    objc_initWeak(&location, self);
    v9 = [objc_opt_class() keyFrameTimeLoadingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PUVideoTileViewController__setAsset___block_invoke;
    block[3] = &unk_1E7B80610;
    objc_copyWeak(&v12, &location);
    v11 = v5;
    dispatch_async(v9, block);

    [(PUVideoTileViewController *)self _updateTargetSize];
    [(PUVideoTileViewController *)self _updateVideo];
    if (v8 != 2)
    {
      [(PUVideoTileViewController *)self setRequestedImageTargetSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      [(PUVideoTileViewController *)self _updateImage];
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __39__PUVideoTileViewController__setAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchKeyTimeForAsset:*(a1 + 32)];
}

- (void)setPlaceholderIsAnimatingToHidden:(BOOL)a3
{
  if (self->_placeholderIsAnimatingToHidden != a3)
  {
    self->_placeholderIsAnimatingToHidden = a3;
    [(PUVideoTileViewController *)self _callReadyToDisplayChangeHandler];
  }
}

- (void)_updateDebugBorders
{
  v3 = +[PUOneUpSettings sharedInstance];
  v4 = [v3 videoShowDebugBorders];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] redColor];
    v6 = [v5 CGColor];
    v7 = [(UIImageView *)self->_placeholderImageView layer];
    [v7 setBorderColor:v6];

    v8 = [(UIImageView *)self->_placeholderImageView layer];
    [v8 setBorderWidth:5.0];

    v9 = [MEMORY[0x1E69DC888] blueColor];
    v10 = [v9 CGColor];
    p_videoView = &self->_videoView;
    v12 = [(PXVideoSessionUIView *)self->_videoView layer];
    [v12 setBorderColor:v10];

    v13 = 8.0;
  }

  else
  {
    v14 = [(UIImageView *)self->_placeholderImageView layer];
    [v14 setBorderColor:0];

    v15 = [(UIImageView *)self->_placeholderImageView layer];
    v13 = 0.0;
    [v15 setBorderWidth:0.0];

    p_videoView = &self->_videoView;
    v9 = [(PXVideoSessionUIView *)self->_videoView layer];
    [v9 setBorderColor:0];
  }

  v16 = [(PXVideoSessionUIView *)*p_videoView layer];
  [v16 setBorderWidth:v13];
}

- (void)_updateInteractionHostViewRegistration
{
  v3 = [(PUVideoTileViewController *)self assetViewModel];
  [v3 registerView:self->_view forImageAnalysisInteractionHostMode:2];
}

- (void)_updateAssetViewModelHDRState
{
  if ([(PUTileViewController *)self isOnPrimaryDisplay])
  {
    v3 = [(PUVideoTileViewController *)self videoSession];
    v4 = [v3 isContentHighDynamicRange];

    v5 = [(PUVideoTileViewController *)self assetViewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PUVideoTileViewController__updateAssetViewModelHDRState__block_invoke;
    v7[3] = &unk_1E7B7FF98;
    v8 = v5;
    v9 = v4;
    v6 = v5;
    [v6 performChanges:v7];
  }
}

- (AVPlayerLayer)playerLayer
{
  v2 = [(PUVideoTileViewController *)self videoView];
  v3 = [v2 activePlayerLayer];

  return v3;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v9 = a4;
  v5 = NSStringFromSelector(sel_videoShowDebugBorders);
  v6 = [v9 isEqualToString:v5];

  if (v6)
  {
    [(PUVideoTileViewController *)self _updateDebugBorders];
  }

  v7 = NSStringFromSelector(sel_videoShowLiveEffectsRenderingIndicator);
  v8 = [v9 isEqualToString:v7];

  if (v8)
  {
    [(PUVideoTileViewController *)self _updateLiveEffectsRenderDebugIndicator];
  }
}

- (void)prepareForVideoResolutionChange
{
  v3 = [(PUVideoTileViewController *)self videoView];
  v4 = [v3 activePlayerLayer];
  v5 = [v4 copyDisplayedPixelBuffer];

  if (v5)
  {
    [(PXPixelBufferView *)self->_pixelBufferView enqueuePixelBuffer:v5];
    CVPixelBufferRelease(v5);

    [(PUVideoTileViewController *)self setPlaceholderVisible:1 animated:0 animationDuration:0 completion:0.0];
  }
}

- (BOOL)videoOutputIsReadyForDisplay
{
  v3 = [(PUVideoTileViewController *)self videoView];
  v4 = [v3 isVideoLayerReadyForDisplay] && !-[PUTileController isAnimating](self, "isAnimating") && !-[PUVideoTileViewController placeholderIsAnimatingToHidden](self, "placeholderIsAnimatingToHidden") && -[PUVideoTileViewController canPlayVideo](self, "canPlayVideo");

  return v4;
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (![(PUTileController *)self shouldPreserveCurrentContent])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUVideoTileViewController *)self _handleAssetViewModel:v14 didChange:v7];
LABEL_10:
      [(PUVideoTileViewController *)self _updateReadyForDisplay];
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v8 = v7;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        if ([v8 avPlayerDidChange])
        {
          [(PUVideoTileViewController *)self _updateVideo];
        }

        goto LABEL_10;
      }

      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      v13 = [v8 px_descriptionForAssertionMessage];
      [v9 handleFailureInMethod:a2 object:self file:@"PUVideoTileViewController.m" lineNumber:365 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"change", v11, v13}];
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 handleFailureInMethod:a2 object:self file:@"PUVideoTileViewController.m" lineNumber:365 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"change", v11}];
    }

    goto LABEL_7;
  }

LABEL_11:
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (VideoSessionContext == a5)
  {
    px_dispatch_on_main_queue();
  }
}

void __58__PUVideoTileViewController_observable_didChange_context___block_invoke(uint64_t a1)
{
  if ((*(a1 + 41) & 2) != 0 && ([*(a1 + 32) playerIsSeeking] & 1) == 0)
  {
    v2 = [*(a1 + 32) videoSession];
    v3 = [v2 isAtEnd];

    if (v3)
    {
      [*(a1 + 32) setPlayerDidPlayToEnd:1];
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [*(a1 + 32) _updatePlaceholderVisibility];
    [*(a1 + 32) _updateLiveEffectsRenderDebugIndicatorVisibility];
    v4 = *(a1 + 40);
  }

  if ((v4 & 0x8000) != 0)
  {
    v5 = *(a1 + 32);

    [v5 _updateAssetViewModelHDRState];
  }
}

- (void)videoSessionViewPlaceholderVisibilityChanged:(id)a3
{
  [(PUVideoTileViewController *)self _updateReadyForDisplay];
  [(PUVideoTileViewController *)self _updatePlaceholderVisibility];

  [(PUVideoTileViewController *)self _callReadyToDisplayChangeHandler];
}

- (void)videoPlayer:(id)a3 currentTimeDidChange:(id *)a4
{
  v5 = a3;
  if ([v5 playState] == 3)
  {
    [(PUVideoTileViewController *)self setPlayerIsSeeking:0];
    if (([v5 isAtEnd] & 1) == 0 && (objc_msgSend(v5, "isAtBeginning") & 1) == 0)
    {
      [(PUVideoTileViewController *)self setPlayerDidPlayToEnd:0];
    }
  }
}

- (void)videoPlayer:(id)a3 desiredSeekTimeDidChange:(id *)a4
{
  if (a4->var2)
  {
    [(PUVideoTileViewController *)self setPlayerDidPlayToEnd:0];

    [(PUVideoTileViewController *)self setPlayerIsSeeking:1];
  }
}

- (BOOL)adoptAssetTransitionInfo:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PUVideoTileViewController *)self browsingVideoPlayer];
    v9 = 0uLL;
    v10 = 0;
    [v4 seekTime];

    if (0 >> 96)
    {
      v7 = v9;
      v8 = v10;
      [v5 seekToTime:&v7 completionHandler:0];
    }

    [(PUVideoTileViewController *)self _updateVideo];
  }

  return 1;
}

- (id)generateAssetTransitionInfo
{
  v3 = [(PUVideoTileViewController *)self videoSession];
  v4 = [(PUVideoTileViewController *)self videoView];
  v5 = [v4 generateSnapshotImage];

  if (!v5)
  {
    v5 = [(UIImageView *)self->_placeholderImageView image];
  }

  v6 = [(PUVideoTileViewController *)self videoView];
  v7 = [v6 viewForSnapshotting];
  v8 = [v7 snapshotViewAfterScreenUpdates:0];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__PUVideoTileViewController_generateAssetTransitionInfo__block_invoke;
  v14[3] = &unk_1E7B7FF48;
  v14[4] = self;
  v15 = v5;
  v16 = v8;
  v17 = v3;
  v9 = v3;
  v10 = v8;
  v11 = v5;
  v12 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v14];

  return v12;
}

void __56__PUVideoTileViewController_generateAssetTransitionInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) asset];
  [v3 setAsset:v4];

  [v3 setImage:*(a1 + 40)];
  [v3 setSnapshotView:*(a1 + 48)];
  v5 = *(a1 + 56);
  if (v5)
  {
    [v5 currentTime];
    v6 = v8;
    v7 = v9;
    [v3 setSeekTime:&v6];
  }
}

- (void)setPreloadedImage:(id)a3
{
  v5 = a3;
  v4 = [(UIImageView *)self->_placeholderImageView image];

  if (!v4)
  {
    [(PUVideoTileViewController *)self setDisplayedPreloadedImage:v5];
    [(UIImageView *)self->_placeholderImageView setImage:v5];
  }
}

- (void)didChangeActive
{
  v3.receiver = self;
  v3.super_class = PUVideoTileViewController;
  [(PUTileController *)&v3 didChangeActive];
  [(PUVideoTileViewController *)self _updateTargetSize];
}

- (void)didChangeAnimating
{
  v3.receiver = self;
  v3.super_class = PUVideoTileViewController;
  [(PUTileController *)&v3 didChangeAnimating];
  [(PUVideoTileViewController *)self _updatePlaceholderVisibility];
  [(PUVideoTileViewController *)self _callReadyToDisplayChangeHandler];
  if (![(PUTileController *)self shouldPreserveCurrentContent])
  {
    [(PUVideoTileViewController *)self _updateVideo];
  }
}

- (void)removeAllAnimations
{
  v4.receiver = self;
  v4.super_class = PUVideoTileViewController;
  [(PUTileViewController *)&v4 removeAllAnimations];
  v3 = [(PUVideoTileViewController *)self videoView];
  [v3 pu_removeAllGeometryAnimationsRecursively:1];

  [(UIImageView *)self->_placeholderImageView pu_removeAllGeometryAnimationsRecursively:1];
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUVideoTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUVideoTileViewController *)self setAssetViewModel:0];
  [(PUVideoTileViewController *)self setMediaProvider:0];
  [(PUVideoTileViewController *)self setDisplayedPreloadedImage:0];
  self->_waitForFocusValueForCrossfade = 0;
  self->_isOnSecondScreen = 0;
}

- (void)didChangeIsOnPrimaryDisplay
{
  v3.receiver = self;
  v3.super_class = PUVideoTileViewController;
  [(PUTileViewController *)&v3 didChangeIsOnPrimaryDisplay];
  [(PUVideoTileViewController *)self _updateAssetViewModelHDRState];
}

- (void)setEdgeAntialiasingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUVideoTileViewController *)self videoView];
  [v4 setAllowsEdgeAntialiasing:v3];
}

- (id)viewsForApplyingCornerRadius
{
  v7[2] = *MEMORY[0x1E69E9840];
  if ([(PUTileViewController *)self isViewLoaded])
  {
    v3 = [(PUTileViewController *)self view];
    v7[0] = v3;
    v4 = [(PUVideoTileViewController *)self borderView];
    v7[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewsForApplyingBorder
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PUTileViewController *)self isViewLoaded])
  {
    v3 = [(PUVideoTileViewController *)self borderView];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyLayoutInfo:(id)a3
{
  v18.receiver = self;
  v18.super_class = PUVideoTileViewController;
  v4 = a3;
  [(PUTileViewController *)&v18 applyLayoutInfo:v4];
  [v4 contentsRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  if (!CGRectIsEmpty(v19))
  {
    v13 = [(PUVideoTileViewController *)self videoView];
    [v13 setContentsRect:{v6, v8, v10, v12}];

    v14 = [(UIImageView *)self->_placeholderImageView layer];
    [v14 setContentsRect:{v6, v8, v10, v12}];

    [(PUVideoTileViewController *)self _layoutLiveEffectsRenderDebugIndicator];
    v15 = [(PUVideoTileViewController *)self assetViewModel];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__PUVideoTileViewController_applyLayoutInfo___block_invoke;
    v17[3] = &unk_1E7B7FF20;
    v17[4] = self;
    *&v17[5] = v6;
    *&v17[6] = v8;
    *&v17[7] = v10;
    *&v17[8] = v12;
    [v15 performChanges:v17];
  }

  [(PUVideoTileViewController *)self _updateTargetSize];
  v16 = [(PUTileViewController *)self view];
  [v16 layoutIfNeeded];
}

void __45__PUVideoTileViewController_applyLayoutInfo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) assetViewModel];
  [v5 setMainImageContentsRect:{v1, v2, v3, v4}];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUVideoTileViewController;
  [(PUTileViewController *)&v3 viewDidLoad];
  [(PUVideoTileViewController *)self _updateInteractionHostViewRegistration];
}

- (id)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  view = self->_view;
  self->_view = v4;

  v6 = objc_alloc(MEMORY[0x1E69C3C78]);
  [(UIView *)self->_view bounds];
  v7 = [v6 initWithFrame:?];
  videoView = self->_videoView;
  self->_videoView = v7;

  [(PXVideoSessionUIView *)self->_videoView setAutoresizingMask:18];
  [(PXVideoSessionUIView *)self->_videoView setDelegate:self];
  [(UIView *)self->_view addSubview:self->_videoView];
  v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [(UIView *)self->_view bounds];
  v10 = [v9 initWithFrame:?];
  placeholderImageView = self->_placeholderImageView;
  self->_placeholderImageView = v10;

  [(UIImageView *)self->_placeholderImageView setAutoresizingMask:18];
  [(UIImageView *)self->_placeholderImageView setContentMode:2];
  [(UIImageView *)self->_placeholderImageView setAlpha:[(PUVideoTileViewController *)self placeholderVisible]];
  [(UIView *)self->_view addSubview:self->_placeholderImageView];
  v12 = objc_alloc(MEMORY[0x1E69C3908]);
  [(UIView *)self->_view bounds];
  v13 = [v12 initWithFrame:?];
  pixelBufferView = self->_pixelBufferView;
  self->_pixelBufferView = v13;

  [(PXPixelBufferView *)self->_pixelBufferView setAutoresizingMask:18];
  [(UIImageView *)self->_placeholderImageView addSubview:self->_pixelBufferView];
  self->_placeholderIsAnimatingToHidden = ![(PUVideoTileViewController *)self placeholderVisible];
  [(PUVideoTileViewController *)self _updateDebugBorders];
  [(PUVideoTileViewController *)self _updateLiveEffectsRenderDebugIndicator];
  v15 = +[PUOneUpSettings sharedInstance];
  [v15 addKeyObserver:self];

  v16 = objc_alloc(MEMORY[0x1E69DD250]);
  [(UIView *)self->_view bounds];
  v17 = [v16 initWithFrame:?];
  borderView = self->_borderView;
  self->_borderView = v17;

  [(UIView *)self->_borderView setUserInteractionEnabled:0];
  v19 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_borderView setBackgroundColor:v19];

  [(UIView *)self->_borderView setClipsToBounds:1];
  [(UIView *)self->_borderView setAutoresizingMask:18];
  [(UIView *)self->_view addSubview:self->_borderView];
  v20 = self->_view;

  return v20;
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PUVideoTileViewController *)self _updateImage];
    v5 = v6;
  }
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    v9 = v5;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    [(PUAssetViewModel *)self->_assetViewModel unregisterVideoLayerSource:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUAssetViewModel *)self->_assetViewModel registerVideoLayerSource:self];
    v7 = [(PUAssetViewModel *)v9 asset];
    [(PUVideoTileViewController *)self _setAsset:v7];

    v8 = [(PUAssetViewModel *)self->_assetViewModel videoPlayer];
    [(PUVideoTileViewController *)self setBrowsingVideoPlayer:v8];

    assetViewModel = [(PUVideoTileViewController *)self _updateInteractionHostViewRegistration];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, v5);
}

- (void)setCanPlayVideo:(BOOL)a3
{
  if (self->_canPlayVideo != a3)
  {
    v3 = a3;
    v5 = [(PUVideoTileViewController *)self browsingVideoPlayer];
    v6 = v5;
    if (v3)
    {
      [v5 registerVideoOutput:self];
    }

    else
    {
      [v5 unregisterVideoOutput:self];
    }

    self->_canPlayVideo = v3;
    [(PUVideoTileViewController *)self _callReadyToDisplayChangeHandler];

    [(PUVideoTileViewController *)self _updateVideo];
  }
}

- (PUVideoTileViewController)initWithReuseIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUVideoTileViewController;
  result = [(PUTileViewController *)&v4 initWithReuseIdentifier:a3];
  if (result)
  {
    result->_placeholderVisible = 1;
    result->_canPlayVideo = 1;
  }

  return result;
}

+ (id)keyFrameTimeLoadingQueue
{
  if (keyFrameTimeLoadingQueue_onceToken != -1)
  {
    dispatch_once(&keyFrameTimeLoadingQueue_onceToken, &__block_literal_global_94123);
  }

  v3 = keyFrameTimeLoadingQueue_queue;

  return v3;
}

uint64_t __53__PUVideoTileViewController_keyFrameTimeLoadingQueue__block_invoke()
{
  v0 = px_dispatch_queue_create_serial();
  v1 = keyFrameTimeLoadingQueue_queue;
  keyFrameTimeLoadingQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end