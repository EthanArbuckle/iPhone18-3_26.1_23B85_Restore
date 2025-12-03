@interface PUWallpaperPosterController
+ (id)_nonBlockingLoadQueue;
- (BOOL)_animateShuffleTransitionToSleep;
- (BOOL)_isShuffleConfigurationWithType:(int64_t *)type;
- (BOOL)_isSmartShuffleConfiguration;
- (BOOL)_isSmartShuffleDescriptor;
- (BOOL)_shouldAnimateShuffleTransitionToSleep;
- (BOOL)_shouldUpdatePreferredTitleBoundsWithEnvironment:(id)environment oldEnvironment:(id)oldEnvironment;
- (BOOL)blurredNonSettlingEffect;
- (BOOL)blurredSettlingEffect;
- (BOOL)triggerPosterUpgradeIfNecessary;
- (BOOL)wantsLowLuminanceContent;
- (BOOL)wantsSpatialPhotoContent;
- (CGAffineTransform)_inactiveTransform;
- (CGRect)_adjustContainerFrameAvoidOcclusionRectsForCallServices:(CGRect)services;
- (CGRect)_adjustedContainerFrameAvoidingOcclusionRects:(CGRect)rects;
- (CGRect)currentCallServicesOcclusionRect;
- (PUWallpaperPosterController)initWithRenderer:(id)renderer photoLibrary:(id)library;
- (id)_createViewModelWithLayerStack:(id)stack style:(id)style;
- (id)_effectiveAvailableMedia;
- (id)_nameForBacklightLuminance:(int64_t)luminance;
- (id)_nextPosterMedia;
- (id)_timelinesForDateInterval:(id)interval;
- (id)posterUpgradeService;
- (void)_animateShuffleTransitionFromViewModel:(id)model toViewModel:(id)viewModel usingCrossfade:(BOOL)crossfade;
- (void)_beginExtendedRenderSessionForReason:(id)reason;
- (void)_endExtendedRenderSession;
- (void)_handleLowPowerModeChanged;
- (void)_handlePlayerItemDidFinish;
- (void)_handleSegmentationResponse:(id)response;
- (void)_hidePosterMediaImage;
- (void)_hideProgressIndicator;
- (void)_invalidateCurrentPosterMedia;
- (void)_loadAssetFromWallpaperURL:(id)l async:(BOOL)async completion:(id)completion;
- (void)_loadAssetWithUUID:(id)d usePreviewLayers:(BOOL)layers;
- (void)_loadContentForCurrentPosterMedia:(BOOL)media;
- (void)_loadContentsFromEnvironment;
- (void)_lowPowerModeChanged:(id)changed;
- (void)_observeCurrentPlayerItem;
- (void)_playInitialSettlingEffect;
- (void)_playSettlingEffect;
- (void)_playerItemDidFinish:(id)finish;
- (void)_prepareForShuffleTransition:(id)transition;
- (void)_registerForNotificationsFromRenderer:(id)renderer;
- (void)_removeExistingViews;
- (void)_renderPreviewLayerStackFromWallpaperURL:(id)l;
- (void)_showPosterMediaImage:(id)image;
- (void)_showProgressIndicator;
- (void)_startLoopingSettlingEffectForGallery;
- (void)_transitionToBacklightLuminance:(int64_t)luminance previousBacklightLuminance:(int64_t)backlightLuminance animated:(BOOL)animated interruptSettlingEffectPlayback:(BOOL)playback;
- (void)_unregisterForNotificationsFromRenderer:(id)renderer;
- (void)_updateAdaptiveLayoutProperties;
- (void)_updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment:(id)environment;
- (void)_updateBackdropProperties;
- (void)_updateBacklightLuminance;
- (void)_updateCallServicesOcclusionViewWithRect:(CGRect)rect;
- (void)_updateContainerFrame;
- (void)_updateCurrentPosterMedia;
- (void)_updateDebugHUD;
- (void)_updateDebugRectViews;
- (void)_updateDeviceOrientation;
- (void)_updatePreferences;
- (void)_updatePreferredTitleBounds;
- (void)_updateRenderPreferences;
- (void)_updateShuffleTransitionController;
- (void)_updateSignificantEvents;
- (void)_updateSpatialPhotoLayerView;
- (void)_updateTitleHeightProperties;
- (void)_updateViewHierarchy;
- (void)_updateWithFrameSpecifier:(id)specifier;
- (void)dealloc;
- (void)handleLegibilityVignetteVisibilityDidChange:(BOOL)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)rendererDidInvalidate:(id)invalidate;
- (void)setBacklightLuminance:(int64_t)luminance;
- (void)setCurrentPosterMedia:(id)media;
- (void)setEnvironment:(id)environment;
- (void)setPosterConfiguration:(id)configuration;
- (void)setPosterDescriptor:(id)descriptor;
- (void)setSignificantEventsCounter:(unint64_t)counter;
- (void)setViewModel:(id)model;
- (void)triggerPosterUpgrade;
@end

@implementation PUWallpaperPosterController

- (CGRect)currentCallServicesOcclusionRect
{
  x = self->_currentCallServicesOcclusionRect.origin.x;
  y = self->_currentCallServicesOcclusionRect.origin.y;
  width = self->_currentCallServicesOcclusionRect.size.width;
  height = self->_currentCallServicesOcclusionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateDebugHUD
{
  v19[3] = *MEMORY[0x1E69E9840];
  if ([(PUWallpaperPosterController *)self _isSmartShuffleDescriptor]|| [(PUWallpaperPosterController *)self _isSmartShuffleConfiguration])
  {
    viewModel = [(PUWallpaperPosterController *)self viewModel];
    viewManager = [viewModel viewManager];
    debugInfoViewIfLoaded = [viewManager debugInfoViewIfLoaded];

    if (debugInfoViewIfLoaded)
    {
      _effectiveAvailableMedia = [(PUWallpaperPosterController *)self _effectiveAvailableMedia];
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      significantEventsCounter = [(PUWallpaperPosterController *)self significantEventsCounter];
      if (significantEventsCounter < [(PUWallpaperPosterController *)self significantEventsCounter]+ 30)
      {
        v9 = 0;
        do
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld, ", +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", significantEventsCounter, objc_msgSend(_effectiveAvailableMedia, "count"))];
          [v7 addObject:v10];

          if (v9 == [_effectiveAvailableMedia count])
          {
            [v7 addObject:@"\n"];
            v9 = 0;
          }

          ++v9;
          ++significantEventsCounter;
        }

        while (significantEventsCounter < [(PUWallpaperPosterController *)self significantEventsCounter]+ 30);
      }

      v11 = +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", -[PUWallpaperPosterController significantEventsCounter](self, "significantEventsCounter"), [_effectiveAvailableMedia count]);
      v18[0] = @"Signif. event counter";
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUWallpaperPosterController significantEventsCounter](self, "significantEventsCounter")}];
      v13 = [v12 description];
      v19[0] = v13;
      v18[1] = @"Media index";
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      v15 = [v14 description];
      v19[1] = v15;
      v18[2] = @"Media queue";
      v16 = [v7 componentsJoinedByString:&stru_1F2AC6818];
      v19[2] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      [debugInfoViewIfLoaded displayAdditionalDebugInfo:v17];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  observedPlayerItem = [(PUWallpaperPosterController *)self observedPlayerItem];
  v14 = observedPlayerItem;
  if (BackgroundViewObservationContext_43943 == context)
  {
    [(PUWallpaperPosterController *)self _updateContainerFrame];
  }

  else if (PlayerItemObservationContext_43944 == context)
  {
    if (observedPlayerItem == objectCopy)
    {
      status = [observedPlayerItem status];
      if (status == 1)
      {
        globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
        disableMADForSettlingEffect = [globalSettings disableMADForSettlingEffect];

        if (disableMADForSettlingEffect)
        {
          if (objectCopy)
          {
            [v14 duration];
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          CMTimeMultiplyByFloat64(&v21, &buf, 0.5);
          buf = v21;
          [v14 setForwardPlaybackEndTime:&buf];
        }

        [(PUWallpaperPosterController *)self _startLoopingSettlingEffectForGallery];
      }

      else if (status == 2)
      {
        v16 = PLWallpaperGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          error = [v14 error];
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = error;
          _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Settling effect video failed to load: %@", &buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PUWallpaperPosterController;
    [(PUWallpaperPosterController *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (context == "ViewModelObservationContext")
  {
    v20 = observableCopy;
    v12 = observableCopy;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterController.m" lineNumber:2526 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v17, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterController.m" lineNumber:2526 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v17}];
    }

LABEL_10:
    currentLayerStackPropertiesChange = [v12 currentLayerStackPropertiesChange];
    if ((*&changeCopy & 0x80002) != 0)
    {
      [(PUWallpaperPosterController *)self _removeExistingViews];
      [(PUWallpaperPosterController *)self _updateViewHierarchy];
      [(PUWallpaperPosterController *)self _updateRenderPreferences];
    }

    if (changeCopy & 0x1000 | (currentLayerStackPropertiesChange & 0x45))
    {
      [(PUWallpaperPosterController *)self _updateViewHierarchy];
      if ((currentLayerStackPropertiesChange & 0x40) == 0)
      {
LABEL_14:
        if ((changeCopy & 0x80) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }
    }

    else if ((currentLayerStackPropertiesChange & 0x40) == 0)
    {
      goto LABEL_14;
    }

    [(PUWallpaperPosterController *)self _updateRenderPreferences];
    if ((changeCopy & 0x80) == 0)
    {
LABEL_15:
      if ((changeCopy & 0x200000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

LABEL_24:
    [(PUWallpaperPosterController *)self _updateBacklightLuminance];
    if ((changeCopy & 0x200000) == 0)
    {
LABEL_16:
      if ((changeCopy & 0x20000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_25:
    [(PUWallpaperPosterController *)self _startLoopingSettlingEffectForGallery];
    if ((changeCopy & 0x20000000) == 0)
    {
LABEL_18:
      if ((changeCopy & 0x80800200) != 0 && ![(PUWallpaperPosterController *)self preparingShuffleTransition])
      {
        [(PUWallpaperPosterController *)self _updatePreferredTitleBounds];
        [(PUWallpaperPosterController *)self _updateAdaptiveLayoutProperties];
      }

      goto LABEL_29;
    }

LABEL_17:
    [(PUWallpaperPosterController *)self _updateViewHierarchy];
    [(PUWallpaperPosterController *)self _updateRenderPreferences];
    goto LABEL_18;
  }

  if (ShuffleTransitionControllerObservationContext == context)
  {
    v20 = observableCopy;
    if ((changeCopy & 3) != 0)
    {
      [(PUWallpaperPosterController *)self _updatePreferredTitleBounds];
      observableCopy = v20;
    }

    if (changeCopy)
    {
      shuffleTransitionController = [(PUWallpaperPosterController *)self shuffleTransitionController];
      isAnimating = [shuffleTransitionController isAnimating];

      if (isAnimating)
      {
        [(PUWallpaperPosterController *)self _beginExtendedRenderSessionForReason:@"ShuffleTransition"];
      }

      else
      {
        [(PUWallpaperPosterController *)self _endExtendedRenderSession];
        renderer = [(PUWallpaperPosterController *)self renderer];
        [renderer px_noteContentSignificantlyChanged];
      }

      [(PUWallpaperPosterController *)self _updateAdaptiveLayoutProperties];
LABEL_29:
      observableCopy = v20;
    }
  }
}

- (void)_unregisterForNotificationsFromRenderer:(id)renderer
{
  rendererCopy = renderer;
  backgroundView = [rendererCopy backgroundView];
  [backgroundView removeObserver:self forKeyPath:@"layer.bounds" context:&BackgroundViewObservationContext_43943];

  backgroundView2 = [rendererCopy backgroundView];

  window = [backgroundView2 window];
  windowScene = [window windowScene];
  _alwaysOnEnvironment = [windowScene _alwaysOnEnvironment];
  [_alwaysOnEnvironment removeObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDB88] object:0];
}

- (void)_registerForNotificationsFromRenderer:(id)renderer
{
  rendererCopy = renderer;
  backgroundView = [rendererCopy backgroundView];
  [backgroundView addObserver:self forKeyPath:@"layer.bounds" options:0 context:&BackgroundViewObservationContext_43943];

  backgroundView2 = [rendererCopy backgroundView];

  window = [backgroundView2 window];
  windowScene = [window windowScene];
  _alwaysOnEnvironment = [windowScene _alwaysOnEnvironment];
  [_alwaysOnEnvironment addObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateSignificantEvents name:*MEMORY[0x1E69DDB88] object:0];
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "renderer invalidate", v6, 2u);
  }

  [(PUWallpaperPosterController *)self _unregisterForNotificationsFromRenderer:invalidateCopy];
  PFSharedFigDecodeSessionDiscardCachedBuffers();
  [(PUWallpaperPosterController *)self setEnvironment:0];
}

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  environmentCopy = environment;
  rendererCopy = renderer;
  v8 = PLWallpaperGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "renderer initialize", v15, 2u);
  }

  [(PUWallpaperPosterController *)self _registerForNotificationsFromRenderer:rendererCopy];
  [(PUWallpaperPosterController *)self setEnvironment:environmentCopy];
  environment = [(PUWallpaperPosterController *)self environment];
  if ([environment px_isBackdrop])
  {

LABEL_6:
    renderer = [(PUWallpaperPosterController *)self renderer];
    [renderer px_updatePreferences:&__block_literal_global_399];

    goto LABEL_7;
  }

  environment2 = [(PUWallpaperPosterController *)self environment];
  px_isCallServices = [environment2 px_isCallServices];

  if (px_isCallServices)
  {
    goto LABEL_6;
  }

LABEL_7:
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  settlingEffectEnabled = [viewModel settlingEffectEnabled];

  if (settlingEffectEnabled && ([environmentCopy px_isSnapshot] & 1) == 0 && (objc_msgSend(environmentCopy, "px_isPreview") & 1) == 0)
  {
    [(PUWallpaperPosterController *)self _playInitialSettlingEffect];
  }
}

- (void)_endExtendedRenderSession
{
  renderSessionExtension = [(PUWallpaperPosterController *)self renderSessionExtension];

  if (renderSessionExtension)
  {
    v4 = PLWallpaperGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_INFO, "Ending extended render session", v6, 2u);
    }
  }

  renderSessionExtension2 = [(PUWallpaperPosterController *)self renderSessionExtension];
  [renderSessionExtension2 px_invalidate];

  [(PUWallpaperPosterController *)self setRenderSessionExtension:0];
}

- (void)_beginExtendedRenderSessionForReason:(id)reason
{
  reasonCopy = reason;
  [(PUWallpaperPosterController *)self _endExtendedRenderSession];
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "Beginning extended render session", v8, 2u);
  }

  renderer = [(PUWallpaperPosterController *)self renderer];
  v7 = [renderer px_extendRenderSessionForReason:reasonCopy];

  [(PUWallpaperPosterController *)self setRenderSessionExtension:v7];
}

- (void)_observeCurrentPlayerItem
{
  observedPlayerItem = [(PUWallpaperPosterController *)self observedPlayerItem];
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  viewManager = [viewModel viewManager];
  videoLayerView = [viewManager videoLayerView];
  player = [videoLayerView player];
  currentItem = [player currentItem];

  if (observedPlayerItem != currentItem)
  {
    v8 = MEMORY[0x1E6987A10];
    if (observedPlayerItem)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*v8 object:observedPlayerItem];

      [observedPlayerItem removeObserver:self forKeyPath:@"status" context:&PlayerItemObservationContext_43944];
    }

    if (currentItem)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__playerItemDidFinish_ name:*v8 object:currentItem];

      [currentItem addObserver:self forKeyPath:@"status" options:0 context:&PlayerItemObservationContext_43944];
    }

    [(PUWallpaperPosterController *)self setObservedPlayerItem:currentItem];
  }
}

- (void)_handlePlayerItemDidFinish
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = PLWallpaperGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:[(PUWallpaperPosterController *)self backlightLuminance]];
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_INFO, "Finished playing settling effect with backlight luminance: %@", buf, 0xCu);
  }

  if ([(PUWallpaperPosterController *)self backlightLuminance]== 2)
  {
    renderer = [(PUWallpaperPosterController *)self renderer];
    backgroundView = [renderer backgroundView];
    viewModel = [(PUWallpaperPosterController *)self viewModel];
    viewManager = [viewModel viewManager];
    v29 = viewModel;
    currentLayerStack = [viewModel currentLayerStack];
    backgroundLayer = [currentLayerStack backgroundLayer];
    v11 = [viewManager viewForLayer:backgroundLayer];

    v28 = currentLayerStack;
    foregroundLayer = [currentLayerStack foregroundLayer];
    v13 = [viewManager viewForLayer:foregroundLayer];

    videoLayerView = [viewManager videoLayerView];
    player = [videoLayerView player];
    if ([(PUWallpaperPosterController *)self loopingSettlingEffectForGallery])
    {
      [player pause];
      v16 = [videoLayerView snapshotViewAfterScreenUpdates:0];
      [videoLayerView bounds];
      [v16 setBounds:?];
      [videoLayerView center];
      [v16 setCenter:?];
      if (videoLayerView)
      {
        [videoLayerView transform];
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
      }

      *buf = v39;
      v43 = v40;
      v44 = v41;
      [v16 setTransform:buf];
      [backgroundView addSubview:v16];
      v23 = backgroundView;
      v25 = dispatch_time(0, 50000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke;
      block[3] = &unk_1E7B80C38;
      v37 = player;
      v38 = v16;
      v19 = player;
      backgroundView2 = v16;
      dispatch_after(v25, MEMORY[0x1E69E96A0], block);

      v22 = v37;
    }

    else
    {
      renderer2 = [(PUWallpaperPosterController *)self renderer];
      backgroundView2 = [renderer2 backgroundView];

      [backgroundView2 insertSubview:videoLayerView belowSubview:v11];
      v19 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
      v26 = backgroundView;
      v20 = objc_alloc(MEMORY[0x1E69DD278]);
      [(PUWallpaperPosterController *)self renderer];
      v21 = v27 = renderer;
      [v21 px_lowLuminanceAlphaAnimationDuration];
      v22 = [v20 initWithDuration:v19 timingParameters:?];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke_4;
      v33[3] = &unk_1E7B80C38;
      v34 = v11;
      v35 = v13;
      [v22 addAnimations:v33];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke_5;
      v30[3] = &unk_1E7B79B88;
      v31 = player;
      selfCopy = self;
      v23 = v26;
      v24 = player;
      [v22 addCompletion:v30];
      [v22 startAnimation];

      renderer = v27;
    }
  }
}

void __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  [v2 seekToTime:&v9];
  v3 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke_2;
  v7[3] = &unk_1E7B80DD0;
  v8 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke_3;
  v4[3] = &unk_1E7B80088;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  [v3 animateWithDuration:v7 animations:v4 completion:0.3];
}

uint64_t __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(a1 + 32);
    v5 = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    [v3 seekToTime:&v5];
    [*(a1 + 32) pause];
  }

  return [*(a1 + 40) _endExtendedRenderSession];
}

uint64_t __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 play];
}

- (void)_playerItemDidFinish:(id)finish
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PUWallpaperPosterController__playerItemDidFinish___block_invoke;
  v3[3] = &unk_1E7B80638;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__PUWallpaperPosterController__playerItemDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlayerItemDidFinish];
}

- (void)_handleLowPowerModeChanged
{
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  if ([viewModel settlingEffectEnabled])
  {
    if ([viewModel canCreateSettlingEffectLayerView])
    {
      [(PUWallpaperPosterController *)self _updateViewHierarchy];
    }

    else
    {
      viewManager = [viewModel viewManager];
      [viewManager releaseVideoLayerView];

      [(PUWallpaperPosterController *)self _observeCurrentPlayerItem];
    }
  }
}

- (void)_lowPowerModeChanged:(id)changed
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PUWallpaperPosterController__lowPowerModeChanged___block_invoke;
  v3[3] = &unk_1E7B80638;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__PUWallpaperPosterController__lowPowerModeChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLowPowerModeChanged];
}

- (void)_startLoopingSettlingEffectForGallery
{
  v32 = *MEMORY[0x1E69E9840];
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  shouldLoopSettlingEffectForGallery = [viewModel shouldLoopSettlingEffectForGallery];

  if (shouldLoopSettlingEffectForGallery)
  {
    viewModel2 = [(PUWallpaperPosterController *)self viewModel];
    viewManager = [viewModel2 viewManager];
    currentLayerStack = [viewModel2 currentLayerStack];
    foregroundLayer = [currentLayerStack foregroundLayer];
    v9 = [viewManager viewForLayer:foregroundLayer];

    backgroundLayer = [currentLayerStack backgroundLayer];
    v11 = [viewManager viewForLayer:backgroundLayer];

    videoLayerView = [viewManager videoLayerView];
    videoLayerView2 = [viewManager videoLayerView];
    player = [videoLayerView2 player];

    if (videoLayerView)
    {
      [(PUWallpaperPosterController *)self _observeCurrentPlayerItem];
      status = [player status];
      if (status == 1 && ![(PUWallpaperPosterController *)self loopingSettlingEffectForGallery])
      {
        v25 = v9;
        v21 = PLWallpaperGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_INFO, "Started looping settling effect in gallery", buf, 2u);
        }

        [(PUWallpaperPosterController *)self setLoopingSettlingEffectForGallery:1];
        [(PUWallpaperPosterController *)self _updateViewHierarchy];
        [player pause];
        *buf = *MEMORY[0x1E6960CC0];
        *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
        [player seekToTime:buf];
        v16 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
        v22 = objc_alloc(MEMORY[0x1E69DD278]);
        renderer = [(PUWallpaperPosterController *)self renderer];
        [renderer px_lowLuminanceAlphaAnimationDuration];
        v24 = [v22 initWithDuration:v16 timingParameters:?];

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __68__PUWallpaperPosterController__startLoopingSettlingEffectForGallery__block_invoke;
        v28[3] = &unk_1E7B80C38;
        v29 = v11;
        v9 = v25;
        v30 = v25;
        [v24 addAnimations:v28];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __68__PUWallpaperPosterController__startLoopingSettlingEffectForGallery__block_invoke_2;
        v26[3] = &unk_1E7B79B60;
        v27 = player;
        [v24 addCompletion:v26];
        [v24 startAnimation];

        goto LABEL_13;
      }

      v16 = PLWallpaperGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = status;
        v17 = "Looping settling effect in gallery failed with invalid player status: %ld";
        v18 = v16;
        v19 = OS_LOG_TYPE_INFO;
        v20 = 12;
LABEL_9:
        _os_log_impl(&dword_1B36F3000, v18, v19, v17, buf, v20);
      }
    }

    else
    {
      v16 = PLWallpaperGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = 0;
        *&buf[12] = 2112;
        *&buf[14] = currentLayerStack;
        v17 = "Failed to start looping settling effect in gallery: video layer: %@, layer stack: %@";
        v18 = v16;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 22;
        goto LABEL_9;
      }
    }

LABEL_13:
  }
}

uint64_t __68__PUWallpaperPosterController__startLoopingSettlingEffectForGallery__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

- (void)_playInitialSettlingEffect
{
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  viewManager = [viewModel viewManager];
  videoLayerView = [viewManager videoLayerView];
  renderer = [(PUWallpaperPosterController *)self renderer];
  backgroundView = [renderer backgroundView];

  [backgroundView bringSubviewToFront:videoLayerView];
  [videoLayerView setAlpha:0.0];
  v8 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
  v9 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PUWallpaperPosterController__playInitialSettlingEffect__block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v13 = videoLayerView;
  v10 = videoLayerView;
  [v9 addAnimations:v12];
  [v9 startAnimation];
  [(PUWallpaperPosterController *)self _observeCurrentPlayerItem];
  [(PUWallpaperPosterController *)self _beginExtendedRenderSessionForSettlingEffect];
  player = [v10 player];
  [player play];
}

- (void)_playSettlingEffect
{
  v28 = *MEMORY[0x1E69E9840];
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  viewManager = [viewModel viewManager];
  currentLayerStack = [viewModel currentLayerStack];
  backgroundLayer = [currentLayerStack backgroundLayer];
  v7 = [viewManager viewForLayer:backgroundLayer];

  foregroundLayer = [currentLayerStack foregroundLayer];
  v9 = [viewManager viewForLayer:foregroundLayer];

  videoLayerView = [viewManager videoLayerView];
  if (videoLayerView)
  {
    [(PUWallpaperPosterController *)self _observeCurrentPlayerItem];
    [(PUWallpaperPosterController *)self _beginExtendedRenderSessionForSettlingEffect];
    v11 = PLWallpaperGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:[(PUWallpaperPosterController *)self backlightLuminance]];
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_INFO, "Beginning settling effect with backlight luminance: %@", buf, 0xCu);
    }

    [v7 setAlpha:0.0];
    [v9 setAlpha:0.0];
    if ([(PUWallpaperPosterController *)self blurredSettlingEffect])
    {
      [videoLayerView setAlpha:1.0];
      player = [videoLayerView player];
      *buf = *MEMORY[0x1E6960CC0];
      *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
      [player seekToTime:buf];

      player2 = [videoLayerView player];
      [player2 play];
    }

    else
    {
      player3 = [videoLayerView player];
      [player3 pause];

      player4 = [videoLayerView player];
      *buf = *MEMORY[0x1E6960CC0];
      *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
      [player4 seekToTime:buf];

      alphaAnimator = [(PUWallpaperPosterController *)self alphaAnimator];
      [alphaAnimator stopAnimation:1];

      player2 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
      v18 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:player2 timingParameters:0.2];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __50__PUWallpaperPosterController__playSettlingEffect__block_invoke;
      v25[3] = &unk_1E7B80DD0;
      v19 = videoLayerView;
      v26 = v19;
      [v18 addAnimations:v25];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __50__PUWallpaperPosterController__playSettlingEffect__block_invoke_2;
      v23 = &unk_1E7B79B60;
      v24 = v19;
      [v18 addCompletion:&v20];
      [v18 startAnimation];
      [(PUWallpaperPosterController *)self setAlphaAnimator:v18];
    }
  }

  else
  {
    player2 = PLWallpaperGetLog();
    if (os_log_type_enabled(player2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = 0;
      *&buf[12] = 2112;
      *&buf[14] = currentLayerStack;
      _os_log_impl(&dword_1B36F3000, player2, OS_LOG_TYPE_ERROR, "Unable to play settling effect: video layer: %@, layer stack: %@", buf, 0x16u);
    }
  }
}

void __50__PUWallpaperPosterController__playSettlingEffect__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) player];
  [v1 play];
}

- (BOOL)blurredNonSettlingEffect
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PU_UNBLURRED_NON_SETTLING_EFFECT"] ^ 1;

  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E69BFFC0]];
  v6 = [v5 BOOLForKey:@"SBBlurPhotosWallpaperInAlwaysOn"];

  return v6 & v3;
}

- (BOOL)blurredSettlingEffect
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PU_UNBLURRED_SETTLING_EFFECT"];

  return v3 ^ 1;
}

- (void)_updatePreferences
{
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PUWallpaperPosterController__updatePreferences__block_invoke;
  v4[3] = &unk_1E7B80328;
  v4[4] = self;
  [viewModel performChanges:v4];
}

void __49__PUWallpaperPosterController__updatePreferences__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) environment];
  if ([v3 px_isSnapshot])
  {
    Bool = 0;
  }

  else
  {
    Bool = PXPreferencesGetBool();
  }

  [v5 setShowsDebugHUD:Bool];
}

- (id)_nameForBacklightLuminance:(int64_t)luminance
{
  if ((luminance + 1) > 3)
  {
    return @"Full";
  }

  else
  {
    return off_1E7B79BC8[luminance + 1];
  }
}

- (void)_hidePosterMediaImage
{
  posterMediaImageView = [(PUWallpaperPosterController *)self posterMediaImageView];
  [(PUWallpaperPosterController *)self setPosterMediaImageView:0];
  v3 = posterMediaImageView;
  if (posterMediaImageView)
  {
    [posterMediaImageView removeFromSuperview];
    v3 = posterMediaImageView;
  }
}

- (void)_showPosterMediaImage:(id)image
{
  imageCopy = image;
  posterMediaImageView = [(PUWallpaperPosterController *)self posterMediaImageView];
  if (!posterMediaImageView)
  {
    posterMediaImageView = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [posterMediaImageView setContentMode:2];
    renderer = [(PUWallpaperPosterController *)self renderer];
    backgroundView = [renderer backgroundView];

    [backgroundView bounds];
    [posterMediaImageView setFrame:?];
    [posterMediaImageView setAutoresizingMask:18];
    [backgroundView addSubview:posterMediaImageView];
    [(PUWallpaperPosterController *)self setPosterMediaImageView:posterMediaImageView];
  }

  v7 = MEMORY[0x1E69DCAB8];
  imageName = [imageCopy imageName];
  v9 = [v7 imageNamed:imageName];

  [posterMediaImageView setImage:v9];
}

- (id)_createViewModelWithLayerStack:(id)stack style:(id)style
{
  stackCopy = stack;
  styleCopy = style;
  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  if ([posterConfiguration configurationType] == 1)
  {
    shuffleConfiguration = [posterConfiguration shuffleConfiguration];
    shuffleType = [shuffleConfiguration shuffleType];

    if (shuffleType != 1)
    {
      editConfiguration = [posterConfiguration editConfiguration];
      v12 = [stackCopy compoundLayerStackByUpdatingPortraitDepthEnabled:objc_msgSend(editConfiguration landscapeDepthEnabled:{"isDepthEnabled"), objc_msgSend(editConfiguration, "isLandscapeDepthEnabled")}];

      stackCopy = v12;
    }
  }

  px_boundingShape = [(PXPosterRenderingEnvironment *)self->_environment px_boundingShape];
  if ([(PXPosterRenderingEnvironment *)self->_environment px_isCallServices]&& px_boundingShape == 2)
  {
    layout = [stackCopy layout];
    portraitLayout = [layout portraitLayout];

    userInfo = [posterConfiguration userInfo];
    v17 = styleCopy;
    [portraitLayout visibleFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [portraitLayout imageSize];
    v27 = v26;
    [portraitLayout imageSize];
    [PUWallpaperPosterFaceCropUtilities getSquareCropForVisibleFrame:stackCopy layerStack:userInfo userInfo:v19 originalImage:v21, v23, v25, 0.0, 0.0, v27, v28];
    v29 = [portraitLayout layoutByUpdatingVisibleFrame:?];

    v30 = [v29 layoutByUpdatingClockLayerOrder:*MEMORY[0x1E69C0BA0]];

    portraitLayerStack = [stackCopy portraitLayerStack];
    v32 = [portraitLayerStack layerStackByUpdatingLayout:v30];

    v33 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v32 landscapeLayerStack:0];
    portraitLayerStack2 = [v33 portraitLayerStack];
    backgroundLayer = [portraitLayerStack2 backgroundLayer];
    image = [backgroundLayer image];

    VTCreateCGImageFromCVPixelBuffer(image, 0, &self->_posterImage);
    styleCopy = v17;

    stackCopy = v33;
    goto LABEL_21;
  }

  px_isCallServices = [(PXPosterRenderingEnvironment *)self->_environment px_isCallServices];
  environment = [(PUWallpaperPosterController *)self environment];
  v39 = environment;
  if (px_isCallServices)
  {
    [environment px_titleBoundsForLayout:0];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v99.origin.x = v41;
    v99.origin.y = v43;
    v99.size.width = v45;
    v99.size.height = v47;
    if (CGRectIsNull(v99))
    {
      v41 = PUPosterGenericCenteredTitleBounds();
      v43 = v48;
      v45 = v49;
      v47 = v50;
    }

    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      renderer = [(PUWallpaperPosterController *)self renderer];
      backgroundView = [renderer backgroundView];
      [backgroundView frame];
      v54 = v53;
      v56 = v55;

      [MEMORY[0x1E69C0938] specificConfigurationWithPortraitTitleBounds:v41 portraitScreenSize:v43 landscapeScreenSize:{v45, v47, v54, v56, v54, v56}];
    }

    else
    {
      [MEMORY[0x1E69C0938] deviceCallServicesConfigurationWithTitleBounds:{v41, v43, v45, v47}];
    }
    v72 = ;
    portraitConfiguration = [v72 portraitConfiguration];

    layout2 = [stackCopy layout];
    portraitLayout2 = [layout2 portraitLayout];

    configuration = [portraitLayout2 configuration];
    if (([configuration isEqualToLayoutConfiguration:portraitConfiguration] & 1) == 0)
    {
      [portraitLayout2 layoutByConformingGenericConfigurationToDevice:portraitConfiguration];
      v74 = v96 = styleCopy;

      portraitLayerStack3 = [stackCopy portraitLayerStack];
      v76 = [portraitLayerStack3 layerStackByUpdatingLayout:v74];

      v77 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v76 landscapeLayerStack:0];
      portraitLayerStack4 = [v77 portraitLayerStack];
      backgroundLayer2 = [portraitLayerStack4 backgroundLayer];
      image2 = [backgroundLayer2 image];

      VTCreateCGImageFromCVPixelBuffer(image2, 0, &self->_posterImage);
      portraitLayout2 = v74;
      styleCopy = v96;
      stackCopy = v77;
    }
  }

  else
  {
    px_isBackdrop = [environment px_isBackdrop];

    if (px_isBackdrop)
    {
      goto LABEL_21;
    }

    portraitConfiguration = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:1];
    layout3 = [stackCopy layout];
    portraitLayout2 = [layout3 portraitLayout];

    configuration = [portraitLayout2 configuration];
    if (([configuration isEqualToLayoutConfiguration:portraitConfiguration] & 1) == 0)
    {
      v95 = styleCopy;
      v62 = PLWallpaperGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v62, OS_LOG_TYPE_DEFAULT, "Layout configuration mismatch detected, updating layout for current device", buf, 2u);
      }

      v94 = [portraitLayout2 layoutByUpdatingConfiguration:portraitConfiguration];

      v63 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:2];
      layout4 = [stackCopy layout];
      landscapeLayout = [layout4 landscapeLayout];
      v66 = [landscapeLayout layoutByUpdatingConfiguration:v63];

      portraitLayerStack5 = [stackCopy portraitLayerStack];
      v68 = [portraitLayerStack5 layerStackByUpdatingLayout:v94];

      landscapeLayerStack = [stackCopy landscapeLayerStack];
      v70 = [landscapeLayerStack layerStackByUpdatingLayout:v66];

      v71 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v68 landscapeLayerStack:v70];
      portraitLayout2 = v94;
      styleCopy = v95;
      stackCopy = v71;
    }
  }

LABEL_21:
  environment2 = [(PUWallpaperPosterController *)self environment];
  px_isBackdrop2 = [environment2 px_isBackdrop];

  if (px_isBackdrop2)
  {
    environment3 = [(PUWallpaperPosterController *)self environment];
    if ([environment3 px_isSnapshot])
    {

      v84 = 152;
    }

    else
    {
      environment4 = [(PUWallpaperPosterController *)self environment];
      px_isPreview = [environment4 px_isPreview];

      if (px_isPreview)
      {
        v84 = 152;
      }

      else
      {
        v84 = 155;
      }
    }
  }

  else
  {
    v84 = 0;
  }

  environment5 = [(PUWallpaperPosterController *)self environment];
  px_isCallServices2 = [environment5 px_isCallServices];

  if (px_isCallServices2)
  {
    v89 = v84 | 4;
  }

  else
  {
    v89 = v84;
  }

  v90 = [PUParallaxLayerStackViewModel alloc];
  environment6 = [(PUWallpaperPosterController *)self environment];
  v92 = -[PUParallaxLayerStackViewModel initWithCompoundLayerStack:style:deviceOrientation:allowedBehaviors:](v90, "initWithCompoundLayerStack:style:deviceOrientation:allowedBehaviors:", stackCopy, styleCopy, [environment6 px_deviceOrientation], v89);

  return v92;
}

- (void)_handleSegmentationResponse:(id)response
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [response result:&v13];
  v5 = v13;
  if (!v4)
  {
    environment = PLWallpaperGetLog();
    if (os_log_type_enabled(environment, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1B36F3000, environment, OS_LOG_TYPE_ERROR, "Failed to obtain segmentation result, error: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  compoundLayerStack = [v4 compoundLayerStack];
  v7 = [(PUWallpaperPosterController *)self _createViewModelWithLayerStack:compoundLayerStack style:0];
  [(PUWallpaperPosterController *)self setViewModel:v7];

  viewModel = [(PUWallpaperPosterController *)self viewModel];
  LODWORD(v7) = [viewModel settlingEffectEnabled];

  if (v7)
  {
    environment = [(PUWallpaperPosterController *)self environment];
    if (([environment px_isPlayground]& 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    environment2 = [(PUWallpaperPosterController *)self environment];
    if ([environment2 px_isSnapshot])
    {

      goto LABEL_8;
    }

    environment3 = [(PUWallpaperPosterController *)self environment];
    px_isPreview = [environment3 px_isPreview];

    if ((px_isPreview & 1) == 0)
    {
      [(PUWallpaperPosterController *)self _playInitialSettlingEffect];
    }
  }

LABEL_9:
  [(PUWallpaperPosterController *)self _hideProgressIndicator];
}

- (void)_loadAssetWithUUID:(id)d usePreviewLayers:(BOOL)layers
{
  layersCopy = layers;
  v34[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  wantsLowLuminanceContent = [(PUWallpaperPosterController *)self wantsLowLuminanceContent];
  v8 = 8;
  if (layersCopy)
  {
    v9 = 8;
  }

  else
  {
    v9 = 321;
  }

  if (layersCopy)
  {
    v10 = 128;
  }

  else
  {
    v8 = 325;
    v10 = 32;
  }

  if (wantsLowLuminanceContent)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1E6978630];
  v34[0] = dCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  photoLibrary = [(PUWallpaperPosterController *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v17 = [v13 fetchAssetsWithUUIDs:v14 options:librarySpecificFetchOptions];
  firstObject = [v17 firstObject];

  if (firstObject)
  {
    v19 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:firstObject];
    v20 = dispatch_group_create();
    dispatch_group_enter(v20);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__44005;
    v32 = __Block_byref_object_dispose__44006;
    v33 = 0;
    v21 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:v19];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__PUWallpaperPosterController__loadAssetWithUUID_usePreviewLayers___block_invoke;
    v24[3] = &unk_1E7B79B30;
    v26 = &v28;
    v27 = v12 | v11;
    v22 = v20;
    v25 = v22;
    [v21 loadSegmentationItemWithCompletion:v24];
    v23 = dispatch_time(0, 15000000000);
    dispatch_group_wait(v22, v23);
    [(PUWallpaperPosterController *)self _handleSegmentationResponse:v29[5]];

    _Block_object_dispose(&v28, 8);
  }
}

void __67__PUWallpaperPosterController__loadAssetWithUUID_usePreviewLayers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69BDEA0]) initWithSegmentationItem:v5];
    v8 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
    [v7 setPriority:v8];

    [v7 setLayerStackOptions:*(a1 + 48)];
    -[NSObject setSettlingEffectEnabled:](v7, "setSettlingEffectEnabled:", [v5 isSettlingEffectAvailable]);
    -[NSObject setSpatialPhotoEnabled:](v7, "setSpatialPhotoEnabled:", [v5 isSpatialPhotoAvailable]);
    if ([v7 isSettlingEffectEnabled])
    {
      [v7 setLayerStackOptions:[v7 layerStackOptions]| 0x40];
    }

    if ([v7 isSpatialPhotoEnabled])
    {
      [v7 setLayerStackOptions:[v7 layerStackOptions]| 0x100];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PUWallpaperPosterController__loadAssetWithUUID_usePreviewLayers___block_invoke_2;
    v11[3] = &unk_1E7B7D5B8;
    v10 = *(a1 + 32);
    v9 = v10;
    v12 = v10;
    [v7 submit:v11];
  }

  else
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Failed to load PHAsset, error: %@", buf, 0xCu);
    }
  }
}

void __67__PUWallpaperPosterController__loadAssetWithUUID_usePreviewLayers___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_loadAssetFromWallpaperURL:(id)l async:(BOOL)async completion:(id)completion
{
  asyncCopy = async;
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  v10 = PLWallpaperGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = lCopy;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Attempt to load wallpaper from poster url: %{public}@", buf, 0xCu);
  }

  if (![(PXPosterRenderingEnvironment *)self->_environment px_isPreview])
  {
    if ([(PUWallpaperPosterController *)self wantsSpatialPhotoContent])
    {
      posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
      editConfiguration = [posterConfiguration editConfiguration];
      if ([editConfiguration isSpatialPhotoEnabled])
      {

        goto LABEL_15;
      }

      currentPosterMedia = [(PUWallpaperPosterController *)self currentPosterMedia];
      editConfiguration2 = [currentPosterMedia editConfiguration];
      isSpatialPhotoEnabled = [editConfiguration2 isSpatialPhotoEnabled];

      if (isSpatialPhotoEnabled)
      {
        goto LABEL_15;
      }
    }

    if ([(PUWallpaperPosterController *)self wantsLowLuminanceContent])
    {
      v19 = 5;
    }

    else
    {
      v19 = 1;
    }

    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v20 = v19 | 0x22;
    }

    else
    {
      v20 = v19;
    }

    posterConfiguration2 = [(PUWallpaperPosterController *)self posterConfiguration];
    editConfiguration3 = [posterConfiguration2 editConfiguration];
    isSettlingEffectEnabled = [editConfiguration3 isSettlingEffectEnabled];

    if (isSettlingEffectEnabled)
    {
      v13 = v20 | 0x40;
    }

    else
    {
      v13 = v20;
    }

    goto LABEL_25;
  }

  posterDescriptor = [(PUWallpaperPosterController *)self posterDescriptor];
  v12 = [posterDescriptor descriptorType] == 5;

  if (v12)
  {
LABEL_15:
    v13 = 256;
    goto LABEL_25;
  }

  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    v13 = 129;
  }

  else
  {
    v13 = 1;
  }

  if (![(PXPosterRenderingEnvironment *)self->_environment px_isSnapshot])
  {
    v13 |= 0x40uLL;
  }

LABEL_25:
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PUWallpaperPosterController__loadAssetFromWallpaperURL_async_completion___block_invoke;
  aBlock[3] = &unk_1E7B79B08;
  v24 = lCopy;
  v30 = v24;
  v32[1] = v13;
  objc_copyWeak(v32, buf);
  v25 = completionCopy;
  v31 = v25;
  v33 = asyncCopy;
  v26 = _Block_copy(aBlock);
  v27 = v26;
  if (asyncCopy)
  {
    _nonBlockingLoadQueue = [objc_opt_class() _nonBlockingLoadQueue];
    dispatch_async(_nonBlockingLoadQueue, v27);
  }

  else
  {
    (*(v26 + 2))(v26);
  }

  objc_destroyWeak(v32);
  objc_destroyWeak(buf);
}

void __75__PUWallpaperPosterController__loadAssetFromWallpaperURL_async_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v18 = 0;
  v4 = [MEMORY[0x1E69BDF40] loadCompoundLayerStackFromWallpaperURL:v2 options:v3 error:&v18];
  v5 = v18;
  v6 = [MEMORY[0x1E69BDF40] loadStyleFromWallpaperURL:*(a1 + 32) error:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PUWallpaperPosterController__loadAssetFromWallpaperURL_async_completion___block_invoke_2;
  v12[3] = &unk_1E7B79AE0;
  v7 = v4;
  v13 = v7;
  objc_copyWeak(&v17, (a1 + 48));
  v8 = v6;
  v14 = v8;
  v16 = *(a1 + 40);
  v9 = v5;
  v15 = v9;
  v10 = _Block_copy(v12);
  v11 = v10;
  if (*(a1 + 64) == 1)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    v10[2](v10);
  }

  objc_destroyWeak(&v17);
}

void __75__PUWallpaperPosterController__loadAssetFromWallpaperURL_async_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = [WeakRetained _createViewModelWithLayerStack:*(a1 + 32) style:*(a1 + 40)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (void)_renderPreviewLayerStackFromWallpaperURL:(id)l
{
  v69 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__44005;
  v63 = __Block_byref_object_dispose__44006;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__44005;
  v57 = __Block_byref_object_dispose__44006;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__44005;
  v51 = __Block_byref_object_dispose__44006;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__44005;
  v45 = __Block_byref_object_dispose__44006;
  v46 = 0;
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v7 = MEMORY[0x1E69BDF40];
  posterDescriptor = [(PUWallpaperPosterController *)self posterDescriptor];
  styleCategory = [posterDescriptor styleCategory];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __72__PUWallpaperPosterController__renderPreviewLayerStackFromWallpaperURL___block_invoke;
  v35[3] = &unk_1E7B79AB8;
  v37 = &v41;
  v38 = &v53;
  v39 = &v59;
  v40 = &v47;
  v10 = v6;
  v36 = v10;
  [v7 renderPreviewLayerStackFromWallpaperURL:lCopy styleCategory:styleCategory completion:v35];

  v11 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v10, v11);
  v12 = [MEMORY[0x1E695DF00] now];
  if (!v60[5])
  {
    if (v42[5])
    {
      v23 = PLWallpaperGetLog();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v29 = v42[5];
      *buf = 138543618;
      v66 = lCopy;
      v67 = 2112;
      v68 = v29;
      v30 = "Failed to render layer stack from wallpaper url: %{public}@, error: %@";
    }

    else
    {
      v23 = PLWallpaperGetLog();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      [v12 timeIntervalSinceDate:v5];
      *buf = 138543618;
      v66 = lCopy;
      v67 = 2048;
      v68 = v33;
      v30 = "Timed out waiting for layer stack to render from wallpaper url: %{public}@ after %0.1fs";
    }

    v31 = v23;
    v32 = 22;
    goto LABEL_20;
  }

  v13 = PLWallpaperGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    [v12 timeIntervalSinceDate:v5];
    *buf = 138543618;
    v66 = lCopy;
    v67 = 2048;
    v68 = v14;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_INFO, "Generated cold start preview layer stack from wallpaper url: %{public}@ in %0.1fs", buf, 0x16u);
  }

  v15 = [(PUWallpaperPosterController *)self _createViewModelWithLayerStack:v60[5] style:v54[5]];
  [(PUWallpaperPosterController *)self setViewModel:v15];

  if (v48[5])
  {
    v16 = PUWallpaperCacheDirectoryURL();
    lastPathComponent = [lCopy lastPathComponent];
    v18 = [v16 URLByAppendingPathComponent:lastPathComponent];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v18 error:0];

    v20 = v48[5];
    v21 = v60[5];
    v22 = v54[5];
    v34 = 0;
    LODWORD(lastPathComponent) = [MEMORY[0x1E69BDF40] saveSegmentationItem:v20 compoundLayerStack:v21 style:v22 toWallpaperURL:v18 error:&v34];
    v23 = v34;
    if (lastPathComponent)
    {
      v24 = PLWallpaperGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v66 = v18;
        v25 = "Successfully cached cold start wallpaper to url: %{public}@";
        v26 = v24;
        v27 = OS_LOG_TYPE_INFO;
        v28 = 12;
LABEL_15:
        _os_log_impl(&dword_1B36F3000, v26, v27, v25, buf, v28);
      }
    }

    else
    {
      v24 = PLWallpaperGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v66 = v18;
        v67 = 2114;
        v68 = v23;
        v25 = "Failed to cache cold start wallpaper to url: %{public}@, error: %{public}@";
        v26 = v24;
        v27 = OS_LOG_TYPE_ERROR;
        v28 = 22;
        goto LABEL_15;
      }
    }

    goto LABEL_21;
  }

  v23 = PLWallpaperGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v66 = lCopy;
    v30 = "Failed to reload segmentation item from wallpaper url: %{public}@";
    v31 = v23;
    v32 = 12;
LABEL_20:
    _os_log_impl(&dword_1B36F3000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
  }

LABEL_21:

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);
}

void __72__PUWallpaperPosterController__renderPreviewLayerStackFromWallpaperURL___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a5);
  v21 = a5;
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;
  v14 = v10;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  dispatch_group_leave(*(a1 + 32));
}

- (void)_loadContentForCurrentPosterMedia:(BOOL)media
{
  mediaCopy = media;
  v39 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PUWallpaperPosterController__loadContentForCurrentPosterMedia___block_invoke;
  aBlock[3] = &unk_1E7B80638;
  objc_copyWeak(&v35, &location);
  v6 = _Block_copy(aBlock);
  currentPosterMedia = [(PUWallpaperPosterController *)self currentPosterMedia];
  if (currentPosterMedia)
  {
    environment = [(PUWallpaperPosterController *)self environment];
    if ([environment px_isPlayground])
    {
      [(PUWallpaperPosterController *)self _showProgressIndicator];
    }

    if ([currentPosterMedia mediaType] == 3)
    {
      px_assetDirectory = currentPosterMedia;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        px_descriptionForAssertionMessage = [px_assetDirectory px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterController.m" lineNumber:1820 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"currentPosterMedia", v24, px_descriptionForAssertionMessage}];
      }

      [(PUWallpaperPosterController *)self _showPosterMediaImage:px_assetDirectory];
LABEL_30:

      goto LABEL_31;
    }

    [(PUWallpaperPosterController *)self _hidePosterMediaImage];
    px_assetDirectory = [environment px_assetDirectory];
    subpath = [currentPosterMedia subpath];
    renderer = [(PUWallpaperPosterController *)self renderer];
    if (objc_opt_respondsToSelector())
    {
      px_blockingLoadPolicy = [renderer px_blockingLoadPolicy];
      if (!px_assetDirectory)
      {
        goto LABEL_14;
      }
    }

    else
    {
      px_blockingLoadPolicy = 0;
      if (!px_assetDirectory)
      {
LABEL_14:
        if (px_blockingLoadPolicy != 2)
        {
          viewModel = [(PUWallpaperPosterController *)self viewModel];
          px_isPlayground = viewModel == 0;
          if (viewModel && mediaCopy)
          {
            px_isPlayground = [environment px_isPlayground];
          }

          if (px_isPlayground)
          {
            assetUUID = [currentPosterMedia assetUUID];
            environment2 = [(PUWallpaperPosterController *)self environment];
            if ([environment2 px_isCallServices])
            {
              environment3 = [(PUWallpaperPosterController *)self environment];
              px_isSnapshot = [environment3 px_isSnapshot];
            }

            else
            {
              px_isSnapshot = 0;
            }

            environment4 = [(PUWallpaperPosterController *)self environment];
            px_isPlayground2 = [environment4 px_isPlayground];

            if (assetUUID && ((px_isPlayground2 | px_isSnapshot) & 1) != 0)
            {
              [(PUWallpaperPosterController *)self _loadAssetWithUUID:assetUUID usePreviewLayers:px_isSnapshot];
            }

            else
            {
              v21 = PLWallpaperGetLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v38 = assetUUID;
                _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "Invalid wallpaper directory for asset: %{public}@", buf, 0xCu);
              }
            }

            v6[2](v6);
          }
        }

        goto LABEL_30;
      }
    }

    if (subpath)
    {
      v11 = [px_assetDirectory URLByAppendingPathComponent:subpath];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __65__PUWallpaperPosterController__loadContentForCurrentPosterMedia___block_invoke_2;
      v28[3] = &unk_1E7B79A90;
      objc_copyWeak(&v32, &location);
      v31 = v6;
      v29 = environment;
      v12 = v11;
      v30 = v12;
      v33 = px_blockingLoadPolicy == 2;
      [(PUWallpaperPosterController *)self _loadAssetFromWallpaperURL:v12 async:px_blockingLoadPolicy == 2 completion:v28];

      objc_destroyWeak(&v32);
    }

    goto LABEL_14;
  }

LABEL_31:

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __65__PUWallpaperPosterController__loadContentForCurrentPosterMedia___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideProgressIndicator];
}

void __65__PUWallpaperPosterController__loadContentForCurrentPosterMedia___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setViewModel:v5];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) px_isPreview];
    v9 = PLWallpaperGetLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        *buf = 138543618;
        v26 = v11;
        v27 = 2114;
        v28 = v6;
        _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_INFO, "Failed to load cold-start wallpaper from poster url (will try cache): %{public}@, error: %{public}@", buf, 0x16u);
      }

      v12 = PUWallpaperCacheDirectoryURL();
      v13 = (a1 + 40);
      v14 = [*(a1 + 40) lastPathComponent];
      v15 = [v12 URLByAppendingPathComponent:v14];

      v16 = objc_loadWeakRetained((a1 + 56));
      v17 = *(a1 + 64);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__PUWallpaperPosterController__loadContentForCurrentPosterMedia___block_invoke_358;
      v20[3] = &unk_1E7B79A68;
      objc_copyWeak(&v24, (a1 + 56));
      v23 = *(a1 + 48);
      v18 = v15;
      v21 = v18;
      v22 = *v13;
      [v16 _loadAssetFromWallpaperURL:v18 async:v17 & 1 completion:v20];

      objc_destroyWeak(&v24);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 138543618;
        v26 = v19;
        v27 = 2114;
        v28 = v6;
        _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Failed to load wallpaper from url: %{public}@, error: %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __65__PUWallpaperPosterController__loadContentForCurrentPosterMedia___block_invoke_358(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setViewModel:v5];
  }

  else
  {
    v8 = PLWallpaperGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "Failed to load cold-start wallpaper from cache url (will regenerate): %{public}@, error: %{public}@", &v10, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _renderPreviewLayerStackFromWallpaperURL:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)setCurrentPosterMedia:(id)media
{
  mediaCopy = media;
  v5 = self->_currentPosterMedia;
  v6 = v5;
  if (v5 == mediaCopy)
  {
  }

  else
  {
    v7 = [(PFPosterMedia *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      currentPosterMedia = self->_currentPosterMedia;
      objc_storeStrong(&self->_currentPosterMedia, media);
      [(PUWallpaperPosterController *)self _loadContentForCurrentPosterMedia:currentPosterMedia != 0];
    }
  }
}

- (void)_invalidateCurrentPosterMedia
{
  [(PUWallpaperPosterController *)self setCurrentPosterMedia:0];
  [(PUWallpaperPosterController *)self setViewModel:0];

  [(PUWallpaperPosterController *)self setNeedsFirstLockSignificantEvent:0];
}

- (void)_updateCurrentPosterMedia
{
  _nextPosterMedia = [(PUWallpaperPosterController *)self _nextPosterMedia];
  [(PUWallpaperPosterController *)self setCurrentPosterMedia:_nextPosterMedia];
}

- (id)_nextPosterMedia
{
  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  _effectiveAvailableMedia = [(PUWallpaperPosterController *)self _effectiveAvailableMedia];
  configurationType = [posterConfiguration configurationType];
  if (!-[PUWallpaperPosterController _isSmartShuffleDescriptor](self, "_isSmartShuffleDescriptor") && configurationType != 1 || (-[PUWallpaperPosterController environment](self, "environment"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 px_isSnapshot], v6, (v7 & 1) != 0))
  {
    firstObject = [_effectiveAvailableMedia firstObject];
LABEL_5:
    v9 = firstObject;
    goto LABEL_6;
  }

  environment = [(PUWallpaperPosterController *)self environment];
  px_isPlayground = [environment px_isPlayground];

  if (px_isPlayground)
  {
    significantEventsCounter = [(PUWallpaperPosterController *)self significantEventsCounter];
    v14 = significantEventsCounter % [_effectiveAvailableMedia count];
  }

  else
  {
    v14 = +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", -[PUWallpaperPosterController significantEventsCounter](self, "significantEventsCounter"), [_effectiveAvailableMedia count]);
  }

  if (v14 < [_effectiveAvailableMedia count])
  {
    firstObject = [_effectiveAvailableMedia objectAtIndexedSubscript:v14];
    goto LABEL_5;
  }

  v15 = PLWallpaperGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Failed to get a next index that is in bounds of available media", v16, 2u);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)_updateSpatialPhotoLayerView
{
  v12 = *MEMORY[0x1E69E9840];
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  viewManager = [viewModel viewManager];

  environment = [(PUWallpaperPosterController *)self environment];
  spatialPhotoBackgroundLayerView = [viewManager spatialPhotoBackgroundLayerView];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults BOOLForKey:@"PUWallpaperWorkaroundNoGyroEventsInGallery"];

  if (v8)
  {
    [spatialPhotoBackgroundLayerView setEnableGyroAnimator:1];
  }

  else
  {
    if (environment)
    {
      [environment deviceAttitude];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    [spatialPhotoBackgroundLayerView setAttitude:&v9];
  }

  [environment px_unlockProgress];
  [spatialPhotoBackgroundLayerView setUnlockProgress:?];
  [environment px_backlightProgress];
  [spatialPhotoBackgroundLayerView setBacklightProgress:?];
}

- (void)_updateBackdropProperties
{
  environment = [(PUWallpaperPosterController *)self environment];
  if ([environment px_isBackdrop])
  {
    environment2 = [(PUWallpaperPosterController *)self environment];
    if ([environment2 px_isSnapshot])
    {
    }

    else
    {
      environment3 = [(PUWallpaperPosterController *)self environment];
      px_isPreview = [environment3 px_isPreview];

      if (px_isPreview)
      {
        return;
      }

      environment = [(PUWallpaperPosterController *)self viewModel];
      [environment performChanges:&__block_literal_global_341];
    }
  }
}

- (void)_updateRenderPreferences
{
  v17 = *MEMORY[0x1E69E9840];
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  currentLayerStack = [viewModel currentLayerStack];

  spatialPhotoBackgroundLayer = [currentLayerStack spatialPhotoBackgroundLayer];

  if ([currentLayerStack settlingEffectEnabled])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (spatialPhotoBackgroundLayer != 0);
  }

  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (spatialPhotoBackgroundLayer)
    {
      v8 = @"YES";
    }

    v9 = v8;
    *buf = 138543618;
    v14 = v9;
    v15 = 2050;
    v16 = v6;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Updating render preferences with hasSpatialPhoto:%{public}@ powerLogIdentifier:%{public}lu", buf, 0x16u);
  }

  renderer = [(PUWallpaperPosterController *)self renderer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PUWallpaperPosterController__updateRenderPreferences__block_invoke;
  v11[3] = &__block_descriptor_41_e63_v24__0___PXPosterMutablePreferences__8___PXPosterTransition__16l;
  v12 = spatialPhotoBackgroundLayer != 0;
  v11[4] = v6;
  [renderer px_updatePreferences:v11];
}

void __55__PUWallpaperPosterController__updateRenderPreferences__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v5 = a2;
  [v5 setSupportedMotionEffectsMode:v3];
  if (*(a1 + 40))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [v5 setDeviceMotionMode:v4];
  [v5 setPreferredDeviceMotionUpdateInterval:0.01];
  [v5 setPx_powerLogIdentifier:*(a1 + 32)];
}

- (void)_updateWithFrameSpecifier:(id)specifier
{
  v7 = [specifier entrySpecifierForTimelineIdentifier:@"shuffle-update"];
  previousTimelineEntry = [v7 previousTimelineEntry];
  v5 = previousTimelineEntry;
  if (previousTimelineEntry)
  {
    userObject = [previousTimelineEntry userObject];
    -[PUWallpaperPosterController setSignificantEventsCounter:](self, "setSignificantEventsCounter:", [userObject integerValue] + 1);
  }
}

- (id)_timelinesForDateInterval:(id)interval
{
  v19[1] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v5 = [getBLSAlwaysOnTimelineClass() emptyTimelineWithIdentifier:@"no-shuffle"];
  v19[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  if ([posterConfiguration configurationType] == 1)
  {
    shuffleConfiguration = [posterConfiguration shuffleConfiguration];
    shuffleFrequency = [shuffleConfiguration shuffleFrequency];

    if ((shuffleFrequency - 3) <= 1)
    {
      date = [MEMORY[0x1E695DF00] date];
      v11 = PUPosterShuffleNextSignificantEventDateForDate(date, shuffleFrequency);

      if ([intervalCopy containsDate:v11])
      {
        v12 = dbl_1B3D0CF00[shuffleFrequency == 3];
        BLSAlwaysOnTimelineClass = getBLSAlwaysOnTimelineClass();
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __57__PUWallpaperPosterController__timelinesForDateInterval___block_invoke;
        v17[3] = &unk_1E7B79A20;
        v17[4] = self;
        v14 = [BLSAlwaysOnTimelineClass timelineWithUpdateInterval:v11 startDate:@"shuffle-update" identifier:v17 configure:v12];
        v18 = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];

        v6 = v15;
      }
    }
  }

  return v6;
}

void __57__PUWallpaperPosterController__timelinesForDateInterval___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "significantEventsCounter")}];
  [v4 setUserObject:v5];
}

- (void)_updateSignificantEvents
{
  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  date = [MEMORY[0x1E695DF00] date];
  if ([posterConfiguration configurationType] == 1)
  {
    shuffleConfiguration = [posterConfiguration shuffleConfiguration];
    shuffleFrequency = [shuffleConfiguration shuffleFrequency];

    if ((shuffleFrequency - 3) < 2)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      v11 = PUPosterShuffleNextSignificantEventDateForDate(date2, shuffleFrequency);

      [v11 timeIntervalSinceDate:date];
      v9 = (v12 * 1000000000.0);

      v8 = 1;
    }

    else
    {
      v7 = 2;
      if (shuffleFrequency != 1)
      {
        v7 = 0;
      }

      if (shuffleFrequency == 2)
      {
        v8 = 4;
      }

      else
      {
        v8 = v7;
      }

      v9 = 0;
    }

    v13 = dispatch_time(0xFFFFFFFFFFFFFFFELL, v9);
    renderer = [(PUWallpaperPosterController *)self renderer];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__PUWallpaperPosterController__updateSignificantEvents__block_invoke;
    v15[3] = &__block_descriptor_48_e63_v24__0___PXPosterMutablePreferences__8___PXPosterTransition__16l;
    v15[4] = v13;
    v15[5] = v8;
    [renderer px_updatePreferences:v15];
  }
}

void __55__PUWallpaperPosterController__updateSignificantEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSignificantEventTime:v3];
  [v4 setSignificantEventOptions:*(a1 + 40)];
}

- (void)setSignificantEventsCounter:(unint64_t)counter
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_significantEventsCounter != counter)
  {
    self->_significantEventsCounter = counter;
    [(PUWallpaperPosterController *)self _updateSignificantEvents];
    _shouldAnimateShuffleTransitionToSleep = [(PUWallpaperPosterController *)self _shouldAnimateShuffleTransitionToSleep];
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUWallpaperPosterController needsFirstLockSignificantEvent](self, "needsFirstLockSignificantEvent")}];
      v8 = [MEMORY[0x1E696AD98] numberWithBool:!_shouldAnimateShuffleTransitionToSleep];
      *buf = 134218498;
      counterCopy = counter;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "setSignificantEventsCounter:%ld simulatingFirstLockEvent:%@ updateCurrentPosterMedia:%@", buf, 0x20u);
    }

    if (!_shouldAnimateShuffleTransitionToSleep)
    {
      posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
      shuffleConfiguration = [posterConfiguration shuffleConfiguration];

      if ([shuffleConfiguration shuffleFrequency] == 2)
      {
        [(PUWallpaperPosterController *)self _updateCurrentPosterMedia];
      }

      else
      {
        viewModel = [(PUWallpaperPosterController *)self viewModel];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __59__PUWallpaperPosterController_setSignificantEventsCounter___block_invoke;
        v14[3] = &unk_1E7B80DD0;
        v14[4] = self;
        [(PUWallpaperPosterController *)self _prepareForShuffleTransition:v14];
        viewModel2 = [(PUWallpaperPosterController *)self viewModel];
        if ([(PUWallpaperPosterController *)self _isShuffleConfigurationWithType:0])
        {
          LOBYTE(v13) = 0;
        }

        else
        {
          v13 = ![(PUWallpaperPosterController *)self _isSmartShuffleDescriptor];
        }

        if (viewModel && viewModel != viewModel2 && (v13 & 1) == 0)
        {
          [(PUWallpaperPosterController *)self _animateShuffleTransitionFromViewModel:viewModel toViewModel:viewModel2 usingCrossfade:0];
        }
      }
    }

    [(PUWallpaperPosterController *)self _invalidateDebugHUD];
  }
}

- (id)posterUpgradeService
{
  wallpaperService = self->_wallpaperService;
  if (!wallpaperService)
  {
    v4 = objc_alloc(MEMORY[0x1E69BE638]);
    photoLibrary = [(PUWallpaperPosterController *)self photoLibrary];
    photoAnalysisClient = [photoLibrary photoAnalysisClient];
    v7 = [v4 initWithServiceProvider:photoAnalysisClient];
    v8 = self->_wallpaperService;
    self->_wallpaperService = v7;

    wallpaperService = self->_wallpaperService;
    if (!wallpaperService)
    {
      v9 = PLWallpaperGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Failed to obtain PAD migration service client!", v11, 2u);
      }

      wallpaperService = self->_wallpaperService;
    }
  }

  return wallpaperService;
}

- (void)triggerPosterUpgrade
{
  v31 = *MEMORY[0x1E69E9840];
  environment = [(PUWallpaperPosterController *)self environment];
  px_assetDirectory = [environment px_assetDirectory];

  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    path = [px_assetDirectory path];
    *buf = 138543362;
    v30 = path;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Triggering upgrade of current poster configuration with asset directory: %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  deviceConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
  dictionaryRepresentation = [deviceConfiguration dictionaryRepresentation];
  [v7 setObject:dictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E69BE0B8]];

  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    v10 = 35;
  }

  else
  {
    v10 = 1;
  }

  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  editConfiguration = [posterConfiguration editConfiguration];
  isSettlingEffectEnabled = [editConfiguration isSettlingEffectEnabled];

  if (isSettlingEffectEnabled)
  {
    v14 = v10 | 0x40;
  }

  else
  {
    v14 = v10;
  }

  if ([(PUWallpaperPosterController *)self wantsLowLuminanceContent])
  {
    v14 |= 4uLL;
  }

  posterConfiguration2 = [(PUWallpaperPosterController *)self posterConfiguration];
  editConfiguration2 = [posterConfiguration2 editConfiguration];
  if ([editConfiguration2 isSpatialPhotoEnabled])
  {
  }

  else
  {
    currentPosterMedia = [(PUWallpaperPosterController *)self currentPosterMedia];
    editConfiguration3 = [currentPosterMedia editConfiguration];
    isSpatialPhotoEnabled = [editConfiguration3 isSpatialPhotoEnabled];

    if (!isSpatialPhotoEnabled)
    {
      goto LABEL_17;
    }
  }

  _isSmartShuffleConfiguration = [(PUWallpaperPosterController *)self _isSmartShuffleConfiguration];
  v21 = 1280;
  if (_isSmartShuffleConfiguration)
  {
    v21 = 256;
  }

  v14 |= v21;
LABEL_17:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  [v7 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69BE0B0]];

  allowedLayoutStrategies = [(PFPosterConfiguration *)self->_posterConfiguration allowedLayoutStrategies];
  if ([(PUWallpaperPosterController *)self _isSmartShuffleConfiguration]&& PFPosterIsAdaptiveLayoutEnabled())
  {
    allowedLayoutStrategies |= 2uLL;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:allowedLayoutStrategies];
  [v7 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69BE0A8]];

  if ([(PUWallpaperPosterController *)self _isSmartShuffleConfiguration])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BE0C0]];
  }

  posterUpgradeService = [(PUWallpaperPosterController *)self posterUpgradeService];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51__PUWallpaperPosterController_triggerPosterUpgrade__block_invoke;
  v27[3] = &unk_1E7B80280;
  v28 = px_assetDirectory;
  v26 = px_assetDirectory;
  [posterUpgradeService upgradePosterConfigurationWithAssetDirectory:v26 options:v7 reply:v27];
}

void __51__PUWallpaperPosterController_triggerPosterUpgrade__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLWallpaperGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) path];
      v13 = 138543362;
      v14 = v8;
      v9 = "Successfully upgraded poster configuration with asset directory: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) path];
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v5;
    v9 = "Failed to upgrade poster configuration with asset directory: %{public}@, error: %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

- (BOOL)triggerPosterUpgradeIfNecessary
{
  v37 = *MEMORY[0x1E69E9840];
  if (([(PXPosterRenderingEnvironment *)self->_environment px_isPlayground]& 1) == 0 && ([(PXPosterRenderingEnvironment *)self->_environment px_isCallServices]& 1) == 0 && ![(PXPosterRenderingEnvironment *)self->_environment px_isBackdrop])
  {
    if ([(PXPosterRenderingEnvironment *)self->_environment px_isSnapshot])
    {
      v3 = PLWallpaperGetLog();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *buf = 0;
      v4 = "Not triggering poster upgrade: not on lockscreen";
      goto LABEL_6;
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults objectForKey:@"PI_PARALLAX_ENABLE_MIGRATION"];

    if (v3 && ([v3 BOOLValue]& 1) == 0)
    {
      layoutConfiguration = PLWallpaperGetLog();
      if (os_log_type_enabled(layoutConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, layoutConfiguration, OS_LOG_TYPE_DEFAULT, "Not triggering poster upgrade: disabled", buf, 2u);
      }

      v5 = 0;
      goto LABEL_55;
    }

    layoutConfiguration = [(PFPosterConfiguration *)self->_posterConfiguration layoutConfiguration];
    deviceConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
    landscapeConfiguration = [deviceConfiguration landscapeConfiguration];

    if (landscapeConfiguration)
    {
      if (([layoutConfiguration isEqualToLayoutConfiguration:deviceConfiguration]& 1) != 0)
      {
LABEL_16:
        v11 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      portraitConfiguration = [layoutConfiguration portraitConfiguration];
      portraitConfiguration2 = [deviceConfiguration portraitConfiguration];
      v14 = [portraitConfiguration isEqualToLayoutConfiguration:portraitConfiguration2];

      if (v14)
      {
        goto LABEL_16;
      }
    }

    v15 = PLWallpaperGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "Poster layout config mismatch, needs upgrade", buf, 2u);
    }

    v16 = PLWallpaperGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = layoutConfiguration;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "layoutConfig: %{public}@", buf, 0xCu);
    }

    v17 = PLWallpaperGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = deviceConfiguration;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "deviceConfig: %{public}@", buf, 0xCu);
    }

    v11 = 1;
LABEL_28:
    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      landscapeConfiguration2 = [layoutConfiguration landscapeConfiguration];
      v19 = landscapeConfiguration2 == 0;
    }

    else
    {
      v19 = 0;
    }

    v20 = v11 | v19;
    if ([(PUWallpaperPosterController *)self wantsLowLuminanceContent]&& ([(PFPosterConfiguration *)self->_posterConfiguration options]& 4) == 0)
    {
      v21 = PLWallpaperGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEFAULT, "Poster inactive contents mismatch, needs upgrade", buf, 2u);
      }

      v20 = 1;
    }

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [standardUserDefaults2 BOOLForKey:@"PI_PARALLAX_FORCE_MIGRATION"];

    if (v23)
    {
      v24 = PLWallpaperGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_DEFAULT, "Triggering poster upgrade: forced", buf, 2u);
      }
    }

    else if ((v20 & 1) == 0)
    {
      v29 = PLWallpaperGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "Not triggering poster upgrade: not needed", buf, 2u);
      }

      v5 = 0;
      goto LABEL_54;
    }

    if ([MEMORY[0x1E69BE670] systemPhotoLibraryIsObtainable])
    {
      [(PUWallpaperPosterController *)self triggerPosterUpgrade];
    }

    else
    {
      v25 = PLWallpaperGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked since boot, delaying poster upgrade", buf, 2u);
      }

      out_token = -1;
      objc_initWeak(buf, self);
      v26 = MEMORY[0x1E69E96A0];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __62__PUWallpaperPosterController_triggerPosterUpgradeIfNecessary__block_invoke;
      v30[3] = &unk_1E7B7D950;
      objc_copyWeak(&v31, buf);
      v27 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, MEMORY[0x1E69E96A0], v30);

      if (v27)
      {
        v28 = PLWallpaperGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *v33 = 67109120;
          v34 = v27;
          _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_ERROR, "Could not register for first unlock notification. Status = %d", v33, 8u);
        }
      }

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }

    v5 = 1;
LABEL_54:

LABEL_55:
    goto LABEL_8;
  }

  v3 = PLWallpaperGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = "Not triggering poster upgrade: not allowed by role";
LABEL_6:
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
  }

LABEL_7:
  v5 = 0;
LABEL_8:

  return v5;
}

void __62__PUWallpaperPosterController_triggerPosterUpgradeIfNecessary__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = PLWallpaperGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = WeakRetained;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "Received first unlock notification; attempting to update poster (%p)", &v3, 0xCu);
  }

  [WeakRetained triggerPosterUpgrade];
}

- (void)_updateShuffleTransitionController
{
  posterDescriptor = [(PUWallpaperPosterController *)self posterDescriptor];
  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  shuffleConfiguration = [posterDescriptor shuffleConfiguration];
  if (shuffleConfiguration)
  {

LABEL_4:
    v6 = [PUWallpaperShuffleTransitionController alloc];
    renderer = [(PUWallpaperPosterController *)self renderer];
    v8 = [(PUWallpaperShuffleTransitionController *)v6 initWithRenderer:renderer];
    [(PUWallpaperPosterController *)self setShuffleTransitionController:v8];

    shuffleTransitionController = [(PUWallpaperPosterController *)self shuffleTransitionController];
    [shuffleTransitionController registerChangeObserver:self context:ShuffleTransitionControllerObservationContext];

    goto LABEL_5;
  }

  shuffleConfiguration2 = [posterConfiguration shuffleConfiguration];

  if (shuffleConfiguration2)
  {
    goto LABEL_4;
  }

  shuffleTransitionController2 = [(PUWallpaperPosterController *)self shuffleTransitionController];
  [shuffleTransitionController2 unregisterChangeObserver:self context:ShuffleTransitionControllerObservationContext];

  [(PUWallpaperPosterController *)self setShuffleTransitionController:0];
LABEL_5:
}

- (id)_effectiveAvailableMedia
{
  posterDescriptor = [(PUWallpaperPosterController *)self posterDescriptor];
  media = [posterDescriptor media];
  if ([media count])
  {
    [(PUWallpaperPosterController *)self posterDescriptor];
  }

  else
  {
    [(PUWallpaperPosterController *)self posterConfiguration];
  }
  v5 = ;
  media2 = [v5 media];

  return media2;
}

- (BOOL)_isSmartShuffleDescriptor
{
  posterDescriptor = [(PUWallpaperPosterController *)self posterDescriptor];
  v3 = [posterDescriptor descriptorType] == 2;

  return v3;
}

- (BOOL)_isSmartShuffleConfiguration
{
  v3 = 0;
  result = [(PUWallpaperPosterController *)self _isShuffleConfigurationWithType:&v3];
  if (v3 == 1)
  {
    return 0;
  }

  return result;
}

- (BOOL)_isShuffleConfigurationWithType:(int64_t *)type
{
  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  configurationType = [posterConfiguration configurationType];
  if (configurationType == 1)
  {
    shuffleConfiguration = [posterConfiguration shuffleConfiguration];
    shuffleType = [shuffleConfiguration shuffleType];

    if (!type)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  shuffleType = -1;
  if (type)
  {
LABEL_5:
    *type = shuffleType;
  }

LABEL_6:

  return configurationType == 1;
}

- (void)setPosterConfiguration:(id)configuration
{
  v13 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = self->_posterConfiguration;
  v7 = v6;
  if (v6 == configurationCopy)
  {
  }

  else
  {
    v8 = [(PFPosterConfiguration *)v6 isEqual:configurationCopy];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_posterConfiguration, configuration);
      v9 = PLWallpaperGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = configurationCopy;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Loading poster configuration for rendering: %{public}@", &v11, 0xCu);
      }

      [(PUWallpaperPosterController *)self _invalidateCurrentPosterMedia];
      [(PUWallpaperPosterController *)self _updateCurrentPosterMedia];
      [(PUWallpaperPosterController *)self _updateSignificantEvents];
      [(PUWallpaperPosterController *)self _updateShuffleTransitionController];
      [(PUWallpaperPosterController *)self setNeedsUpgrade:[(PUWallpaperPosterController *)self triggerPosterUpgradeIfNecessary]];
      v10 = [MEMORY[0x1E695DF00] now];
      [(PUWallpaperPosterController *)self setLastUpgradeCheckTime:v10];

      [(PUWallpaperPosterController *)self setNextUpgradeCheckDelay:900.0];
    }
  }
}

- (void)setPosterDescriptor:(id)descriptor
{
  v12 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v6 = self->_posterDescriptor;
  v7 = v6;
  if (v6 == descriptorCopy)
  {
  }

  else
  {
    v8 = [(PFPosterDescriptor *)v6 isEqual:descriptorCopy];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_posterDescriptor, descriptor);
      v9 = PLWallpaperGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = descriptorCopy;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Loading poster descriptor for rendering: %{public}@", &v10, 0xCu);
      }

      [(PUWallpaperPosterController *)self _invalidateCurrentPosterMedia];
      [(PUWallpaperPosterController *)self _updateCurrentPosterMedia];
      [(PUWallpaperPosterController *)self _updateShuffleTransitionController];
    }
  }
}

- (void)_loadContentsFromEnvironment
{
  v40 = *MEMORY[0x1E69E9840];
  environment = [(PUWallpaperPosterController *)self environment];
  px_assetDirectory = [environment px_assetDirectory];

  environment2 = [(PUWallpaperPosterController *)self environment];
  px_contentsType = [environment2 px_contentsType];

  switch(px_contentsType)
  {
    case 1:
      v20 = PLWallpaperGetLog();
      v21 = v20;
      signpost = self->_signpost;
      if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v21, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PUWallpaperPoster.LoadPosterDescriptor", "", buf, 2u);
      }

      v23 = PLWallpaperGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = px_assetDirectory;
        _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_DEFAULT, "Loading poster descriptor from url %{public}@", buf, 0xCu);
      }

      v35 = 0;
      v13 = [MEMORY[0x1E69C07F0] loadFromURL:px_assetDirectory error:&v35];
      v14 = v35;
      if (v13)
      {
        [(PUWallpaperPosterController *)self setPosterDescriptor:v13];
        v24 = PLWallpaperGetLog();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 138543362;
        v37 = px_assetDirectory;
        v25 = "Loading of poster descriptor from url %{public}@ finished successfully";
        v26 = v24;
        v27 = OS_LOG_TYPE_DEFAULT;
        v28 = 12;
      }

      else
      {
        v24 = PLWallpaperGetLog();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        *buf = 138543618;
        v37 = px_assetDirectory;
        v38 = 2114;
        v39 = v14;
        v25 = "Loading of poster descriptor from url %{public}@ failed with error %{public}@";
        v26 = v24;
        v27 = OS_LOG_TYPE_ERROR;
        v28 = 22;
      }

      _os_log_impl(&dword_1B36F3000, v26, v27, v25, buf, v28);
LABEL_30:

      v33 = PLWallpaperGetLog();
      v30 = v33;
      v31 = self->_signpost;
      if (v31 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v33))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v32 = "PUWallpaperPoster.LoadPosterDescriptor";
      goto LABEL_33;
    case 2:
      v9 = PLWallpaperGetLog();
      v10 = v9;
      v11 = self->_signpost;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PUWallpaperPoster.LoadPosterConfiguration", "", buf, 2u);
      }

      v12 = PLWallpaperGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = px_assetDirectory;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Loading poster configuration from url %{public}@", buf, 0xCu);
      }

      v34 = 0;
      v13 = [MEMORY[0x1E69C07E8] loadFromURL:px_assetDirectory error:&v34];
      v14 = v34;
      if (v13)
      {
        [(PUWallpaperPosterController *)self setPosterConfiguration:v13];
        v15 = PLWallpaperGetLog();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        *buf = 138543362;
        v37 = px_assetDirectory;
        v16 = "Loading of poster configuration from url %{public}@ finished successfully";
        v17 = v15;
        v18 = OS_LOG_TYPE_DEFAULT;
        v19 = 12;
      }

      else
      {
        v15 = PLWallpaperGetLog();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 138543618;
        v37 = px_assetDirectory;
        v38 = 2114;
        v39 = v14;
        v16 = "Loading of poster configuration from url %{public}@ failed with error %{public}@";
        v17 = v15;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 22;
      }

      _os_log_impl(&dword_1B36F3000, v17, v18, v16, buf, v19);
LABEL_24:

      v29 = PLWallpaperGetLog();
      v30 = v29;
      v31 = self->_signpost;
      if (v31 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v29))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v32 = "PUWallpaperPoster.LoadPosterConfiguration";
LABEL_33:
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v31, v32, "", buf, 2u);
LABEL_34:

      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterController.m" lineNumber:1349 description:{@"Unknown contents type for environment contents: %@", px_assetDirectory}];

      abort();
  }
}

- (CGAffineTransform)_inactiveTransform
{
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  [viewModel inactiveFrame];
  if (CGRectIsEmpty(v19))
  {
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "inactiveFrame is empty, falling back to the identity transform", buf, 2u);
    }
  }

  else
  {
    currentLayerStack = [viewModel currentLayerStack];
    layout = [currentLayerStack layout];
    layoutVariant = [layout layoutVariant];

    if (layoutVariant != 2)
    {
      [viewModel containerFrame];
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      dx = -CGRectGetMidX(v20);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v15 = -CGRectGetMidY(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      CGRectOffset(v22, dx, v15);
      [viewModel visibleFrame];
      PXRectNormalize();
      PXRectDenormalize();
      PXAffineTransformMakeFromRects();
      goto LABEL_8;
    }
  }

  v9 = MEMORY[0x1E695EFD0];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v10;
  *&retstr->tx = *(v9 + 32);
LABEL_8:

  return result;
}

- (BOOL)_shouldAnimateShuffleTransitionToSleep
{
  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration shuffleConfiguration];
  shuffleFrequency = [shuffleConfiguration shuffleFrequency];

  wantsLowLuminanceContent = [(PUWallpaperPosterController *)self backlightLuminance]== 1 && [(PUWallpaperPosterController *)self wantsLowLuminanceContent];
  _nextPosterMedia = [(PUWallpaperPosterController *)self _nextPosterMedia];
  if (_nextPosterMedia)
  {
    currentPosterMedia = [(PUWallpaperPosterController *)self currentPosterMedia];
    v9 = currentPosterMedia;
    if (currentPosterMedia == _nextPosterMedia)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v10 = [currentPosterMedia isEqual:_nextPosterMedia] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return (shuffleFrequency == 2) & wantsLowLuminanceContent & v10;
}

- (void)_animateShuffleTransitionFromViewModel:(id)model toViewModel:(id)viewModel usingCrossfade:(BOOL)crossfade
{
  modelCopy = model;
  viewModelCopy = viewModel;
  shuffleTransitionController = [(PUWallpaperPosterController *)self shuffleTransitionController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PUWallpaperPosterController__animateShuffleTransitionFromViewModel_toViewModel_usingCrossfade___block_invoke;
  v13[3] = &unk_1E7B799D8;
  v14 = modelCopy;
  v15 = viewModelCopy;
  crossfadeCopy = crossfade;
  v11 = viewModelCopy;
  v12 = modelCopy;
  [shuffleTransitionController performChanges:v13];
}

- (void)_prepareForShuffleTransition:(id)transition
{
  transitionCopy = transition;
  [(PUWallpaperPosterController *)self setPreparingShuffleTransition:1];
  transitionCopy[2](transitionCopy);

  [(PUWallpaperPosterController *)self setPreparingShuffleTransition:0];
}

- (BOOL)_animateShuffleTransitionToSleep
{
  _nextPosterMedia = [(PUWallpaperPosterController *)self _nextPosterMedia];
  if (_nextPosterMedia)
  {
    currentPosterMedia = [(PUWallpaperPosterController *)self currentPosterMedia];
    v5 = currentPosterMedia;
    if (currentPosterMedia == _nextPosterMedia)
    {
    }

    else
    {
      v6 = [currentPosterMedia isEqual:_nextPosterMedia];

      if ((v6 & 1) == 0)
      {
        viewModel = [(PUWallpaperPosterController *)self viewModel];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __63__PUWallpaperPosterController__animateShuffleTransitionToSleep__block_invoke;
        v11[3] = &unk_1E7B80DD0;
        v11[4] = self;
        [(PUWallpaperPosterController *)self _prepareForShuffleTransition:v11];
        viewModel2 = [(PUWallpaperPosterController *)self viewModel];
        v9 = viewModel != viewModel2;
        if (viewModel != viewModel2)
        {
          [(PUWallpaperPosterController *)self _animateShuffleTransitionFromViewModel:viewModel toViewModel:viewModel2 usingCrossfade:1];
        }

        goto LABEL_11;
      }
    }
  }

  viewModel = PLWallpaperGetLog();
  if (os_log_type_enabled(viewModel, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, viewModel, OS_LOG_TYPE_DEFAULT, "_animateShuffleTransitionToSleep called when next media wasn't available", buf, 2u);
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_transitionToBacklightLuminance:(int64_t)luminance previousBacklightLuminance:(int64_t)backlightLuminance animated:(BOOL)animated interruptSettlingEffectPlayback:(BOOL)playback
{
  playbackCopy = playback;
  animatedCopy = animated;
  v233 = *MEMORY[0x1E69E9840];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  renderer = [(PUWallpaperPosterController *)self renderer];
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  viewManager = [viewModel viewManager];
  v154 = viewModel;
  currentLayerStack = [viewModel currentLayerStack];
  backgroundLayer = [currentLayerStack backgroundLayer];
  v12 = [viewManager viewForLayer:backgroundLayer];

  foregroundLayer = [currentLayerStack foregroundLayer];
  v14 = [viewManager viewForLayer:foregroundLayer];

  inactiveForegroundLayer = [currentLayerStack inactiveForegroundLayer];
  v16 = [viewManager viewForLayer:inactiveForegroundLayer];

  inactiveBackgroundLayer = [currentLayerStack inactiveBackgroundLayer];
  v18 = [viewManager viewForLayer:inactiveBackgroundLayer];

  spatialPhotoForegroundLayer = [currentLayerStack spatialPhotoForegroundLayer];
  v164 = [viewManager viewForLayer:spatialPhotoForegroundLayer];

  spatialPhotoBackgroundLayer = [currentLayerStack spatialPhotoBackgroundLayer];
  v163 = [viewManager viewForLayer:spatialPhotoBackgroundLayer];

  videoLayerView = [viewManager videoLayerView];
  player = [videoLayerView player];
  wantsLowLuminanceContent = [(PUWallpaperPosterController *)self wantsLowLuminanceContent];
  v23 = PLWallpaperGetLog();
  v162 = v18;
  v157 = videoLayerView;
  selfCopy = self;
  v152 = v14;
  v149 = v16;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v154)
    {
      v24 = wantsLowLuminanceContent;
    }

    else
    {
      v24 = 0;
    }

    if (v154)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v150 = v25;
    v40 = v16 == 0;
    v26 = viewManager;
    v27 = v40 && v24;
    LODWORD(v143) = v18 == 0;
    v143 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:luminance, v143];
    v29 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:backlightLuminance];
    if (animatedCopy)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    *buf = 138414082;
    if ([currentLayerStack settlingEffectEnabled])
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v40 = (v27 & v143) == 0;
    viewManager = v26;
    v16 = v149;
    *&buf[4] = v143;
    if (v40)
    {
      v32 = @"NO";
    }

    else
    {
      v32 = @"YES";
    }

    if (IsReduceMotionEnabled)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    if (isLowPowerModeEnabled)
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    *&buf[12] = 2112;
    *&buf[14] = v29;
    *&buf[22] = 2112;
    *&buf[24] = v30;
    videoLayerView = v157;
    *v231 = 2112;
    *&v231[2] = v31;
    *&v231[10] = 2112;
    *&v231[12] = v32;
    *&v231[20] = 2112;
    *&v231[22] = v33;
    *&v231[30] = 2112;
    *v232 = v34;
    *&v232[8] = 2112;
    *&v232[10] = v150;
    _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_DEFAULT, "_transitionToBacklightLuminance:%@ previousBacklightLuminance:%@ animated:%@ isSettlingEffectEnabled:%@ missingInactiveViews:%@ isReduceMotionEnabled:%@ isLowPowerModeEnabled:%@ viewModelNonNil: %@", buf, 0x52u);

    v18 = v162;
  }

  if (!v12)
  {
    v36 = PLWallpaperGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v36, OS_LOG_TYPE_ERROR, "backgroundLayerView is nil", buf, 2u);
    }

    luminanceCopy2 = luminance;
    goto LABEL_34;
  }

  [v12 frame];
  luminanceCopy2 = luminance;
  if (CGRectIsEmpty(v234))
  {
    v36 = PLWallpaperGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v36, OS_LOG_TYPE_ERROR, "backgroundLayerView has zero size", buf, 2u);
    }

LABEL_34:
  }

  if (v14)
  {
    [v14 frame];
    if (CGRectIsEmpty(v235))
    {
      v37 = PLWallpaperGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v37, OS_LOG_TYPE_ERROR, "foregroundLayerView has zero size", buf, 2u);
      }
    }
  }

  if (v16)
  {
    [v16 frame];
    if (CGRectIsEmpty(v236))
    {
      v38 = PLWallpaperGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v38, OS_LOG_TYPE_ERROR, "inactiveForegroundLayerView has zero size", buf, 2u);
      }
    }
  }

  if (v18)
  {
    [v18 frame];
    if (CGRectIsEmpty(v237))
    {
      v39 = PLWallpaperGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v39, OS_LOG_TYPE_ERROR, "inactiveBackgroundLayerView has zero size", buf, 2u);
      }
    }
  }

  v40 = luminanceCopy2 == 1 || backlightLuminance == 1;
  v41 = v40;
  v42 = v41 ^ 1;
  if (luminanceCopy2 == -1)
  {
    v42 = 1;
  }

  if (luminanceCopy2 == 2)
  {
    v42 = 1;
  }

  v151 = v42;
  if ([currentLayerStack settlingEffectEnabled])
  {
    blurredSettlingEffect = [(PUWallpaperPosterController *)self blurredSettlingEffect];
  }

  else
  {
    blurredSettlingEffect = [(PUWallpaperPosterController *)self blurredNonSettlingEffect];
  }

  if ((v41 & blurredSettlingEffect) == 1)
  {
    settlingEffectEnabled = [currentLayerStack settlingEffectEnabled];
    layer = [v12 layer];
    filters = [layer filters];
    v47 = [filters count];

    v48 = MEMORY[0x1E6979280];
    if (!v47)
    {
      v49 = v16;
      if (settlingEffectEnabled)
      {
        v50 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
        [v50 setName:@"colorMatrix"];
        v51 = v48[3];
        *v231 = v48[2];
        *&v231[16] = v51;
        *v232 = v48[4];
        v52 = v48[1];
        *buf = *v48;
        *&buf[16] = v52;
        v53 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:buf];
        v144 = v50;
        [v50 setValue:v53 forKey:*MEMORY[0x1E6979AC0]];
      }

      else
      {
        v144 = 0;
      }

      v62 = v14;
      v63 = PUDefaultFiltersForBacklightLuminanceUpdates();
      v64 = v63;
      v65 = v63;
      if (settlingEffectEnabled)
      {
        v66 = [v63 mutableCopy];
        [v66 addObject:v144];
        v65 = [v66 copy];
      }

      layer2 = [v162 layer];
      [layer2 setFilters:v64];

      layer3 = [v49 layer];
      [layer3 setFilters:v64];

      layer4 = [v163 layer];
      [layer4 setFilters:v65];

      layer5 = [v164 layer];
      [layer5 setFilters:v65];

      layer6 = [v157 layer];
      [layer6 setFilters:v65];

      layer7 = [v12 layer];
      [layer7 setFilters:v65];

      layer8 = [v62 layer];
      [layer8 setFilters:v65];

      v14 = v62;
      v16 = v49;
    }

    if (luminance == 2 || luminance == -1)
    {
      v75 = 0.0;
    }

    else
    {
      v75 = 10.0;
    }

    v76 = v48[3];
    *v231 = v48[2];
    *&v231[16] = v76;
    *v232 = v48[4];
    v77 = v48[1];
    *buf = *v48;
    *&buf[16] = v77;
    if (settlingEffectEnabled && luminance != -1 && luminance != 2)
    {
      PUColorMatrixMakeInactive(buf);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v225 = *&buf[16];
    v226 = *v231;
    v227 = *&v231[16];
    v228 = *v232;
    aBlock[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke;
    aBlock[3] = &unk_1E7B79938;
    v223 = v75;
    v229 = settlingEffectEnabled;
    v224 = *buf;
    v221 = @"filters.gaussianBlur.inputRadius";
    v222 = @"filters.colorMatrix.inputColorMatrix";
    v78 = _Block_copy(aBlock);
    v209[0] = MEMORY[0x1E69E9820];
    v209[1] = 3221225472;
    v209[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_2;
    v209[3] = &unk_1E7B79960;
    v18 = v162;
    v219 = v75;
    v210 = v162;
    v211 = @"filters.gaussianBlur.inputRadius";
    v212 = v16;
    v218 = v78;
    v213 = v163;
    v214 = v164;
    videoLayerView = v157;
    v215 = v157;
    v216 = v12;
    v217 = v14;
    v79 = v78;
    v80 = _Block_copy(v209);
    v81 = v80;
    self = selfCopy;
    if (animatedCopy)
    {
      v82 = PUDefaultPropertyAnimatorForBacklightLuminanceUpdates(v151);
      [v82 addAnimations:v81];
      [v82 startAnimation];

      v18 = v162;
    }

    else
    {
      (*(v80 + 2))(v80);
    }
  }

  else
  {
    layer9 = [v18 layer];
    v55 = MEMORY[0x1E695E0F0];
    [layer9 setFilters:MEMORY[0x1E695E0F0]];

    layer10 = [v16 layer];
    [layer10 setFilters:v55];

    layer11 = [v163 layer];
    [layer11 setFilters:v55];

    layer12 = [v164 layer];
    [layer12 setFilters:v55];

    layer13 = [videoLayerView layer];
    [layer13 setFilters:v55];

    layer14 = [v12 layer];
    [layer14 setFilters:v55];

    layer15 = [v14 layer];
    [layer15 setFilters:v55];
  }

  if ([currentLayerStack settlingEffectEnabled])
  {
    [v16 setAlpha:0.0];
    currentItem = [player currentItem];
    status = [currentItem status];

    if (videoLayerView)
    {
      v85 = status == 2;
    }

    else
    {
      v85 = 1;
    }

    v86 = !v85;
    switch(luminance)
    {
      case 2:
        if (animatedCopy)
        {
          v87 = v86 & (isLowPowerModeEnabled ^ 1);
          v88 = v87 ^ 1;
          if (backlightLuminance == -1)
          {
            v88 = 1;
          }

          if (v88)
          {
            if ((v87 & 1) == 0)
            {
              [videoLayerView setAlpha:0.0];
              v206[0] = MEMORY[0x1E69E9820];
              v206[1] = 3221225472;
              v206[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_312;
              v206[3] = &unk_1E7B80C38;
              v207 = v12;
              v208 = v14;
              v115 = _Block_copy(v206);
              v116 = v115;
              if (backlightLuminance == 1)
              {
                alphaAnimator = [(PUWallpaperPosterController *)self alphaAnimator];
                [alphaAnimator stopAnimation:1];

                v118 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
                v119 = objc_alloc(MEMORY[0x1E69DD278]);
                [renderer px_lowLuminanceAlphaAnimationDuration];
                v120 = [v119 initWithDuration:v118 timingParameters:?];
                [v120 addAnimations:v116];
                [v120 startAnimation];
                [(PUWallpaperPosterController *)self setAlphaAnimator:v120];

                v18 = v162;
              }

              else
              {
                (*(v115 + 2))(v115);
              }
            }
          }

          else
          {
            [(PUWallpaperPosterController *)self _playSettlingEffect];
          }

          break;
        }

        [player rate];
        if (v110 != 0.0)
        {
          v111 = PLWallpaperGetLog();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            v112 = @"Ignoring";
            if (playbackCopy)
            {
              v112 = @"Honoring";
            }

            *buf = 138412290;
            *&buf[4] = v112;
            _os_log_impl(&dword_1B36F3000, v111, OS_LOG_TYPE_INFO, "%@ request to end settling effect to accommodate unanimated transition to full luminance", buf, 0xCu);
          }
        }

        if (playbackCopy)
        {
          *buf = *MEMORY[0x1E6960CC0];
          *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
          [player seekToTime:buf];
          [player pause];
          [v12 setAlpha:1.0];
          v113 = 1.0;
          v114 = v14;
          goto LABEL_130;
        }

        break;
      case 1:
        [player pause];
        if (animatedCopy)
        {
          [v12 alpha];
          if (v101 == 1.0)
          {
            [videoLayerView setAlpha:0.0];
          }

          alphaAnimator2 = [(PUWallpaperPosterController *)self alphaAnimator];
          [alphaAnimator2 stopAnimation:1];

          v103 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
          v104 = objc_alloc(MEMORY[0x1E69DD278]);
          [renderer px_lowLuminanceAlphaAnimationDuration];
          v105 = [v104 initWithDuration:v103 timingParameters:?];
          v202[0] = MEMORY[0x1E69E9820];
          v202[1] = 3221225472;
          v202[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_2_313;
          v202[3] = &unk_1E7B809F0;
          v203 = v12;
          v204 = v14;
          v205 = videoLayerView;
          [v105 addAnimations:v202];
          [v105 startAnimation];
          [(PUWallpaperPosterController *)self setAlphaAnimator:v105];

          goto LABEL_131;
        }

        [v12 setAlpha:0.0];
        [v14 setAlpha:0.0];
        v113 = 0.0;
        v114 = videoLayerView;
LABEL_130:
        [v114 setAlpha:v113];
LABEL_131:
        [(PUWallpaperPosterController *)self _endExtendedRenderSession];
        break;
      case 0:
        [v12 setAlpha:0.0];
        [v14 setAlpha:0.0];
        [videoLayerView setAlpha:1.0];
        *buf = *MEMORY[0x1E6960CC0];
        *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
        [player seekToTime:buf];
        [player pause];
        break;
    }
  }

  else
  {
    v195[0] = MEMORY[0x1E69E9820];
    v195[1] = 3221225472;
    v195[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_3;
    v195[3] = &unk_1E7B79988;
    v200 = v151;
    v201 = IsReduceMotionEnabled;
    v195[4] = self;
    v89 = v12;
    v196 = v89;
    v90 = v16;
    selfCopy2 = self;
    v92 = v14;
    v197 = v92;
    v93 = v90;
    v198 = v93;
    v94 = v18;
    v199 = v94;
    v148 = _Block_copy(v195);
    transformAnimator = [(PUWallpaperPosterController *)selfCopy2 transformAnimator];
    [transformAnimator stopAnimation:1];

    v96 = !animatedCopy;
    v160 = !animatedCopy;
    if (!luminance || IsReduceMotionEnabled || v96)
    {
      v148[2]();
      v100 = selfCopy;
    }

    else
    {
      v97 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
      v98 = objc_alloc(MEMORY[0x1E69DD278]);
      [renderer px_backlightTransformAnimationDuration];
      v99 = [v98 initWithDuration:v97 timingParameters:?];
      [v99 addAnimations:v148];
      [v99 startAnimation];
      v100 = selfCopy;
      [(PUWallpaperPosterController *)selfCopy setTransformAnimator:v99];
    }

    v14 = v152;
    if ([(PUWallpaperPosterController *)v100 wantsLowLuminanceContent])
    {
      if (luminance == 1)
      {
        v106 = 1;
      }

      else
      {
        v106 = v151;
      }

      v107 = v106 & IsReduceMotionEnabled;
      if ((v106 & IsReduceMotionEnabled) != 0)
      {
        currentLayoutInfo = [v89 currentLayoutInfo];
        v109 = currentLayoutInfo;
        if (currentLayoutInfo)
        {
          [currentLayoutInfo additionalTransform];
        }

        else
        {
          *v231 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        v121 = *(MEMORY[0x1E695EFD0] + 16);
        v156 = *MEMORY[0x1E695EFD0];
        *&t1.a = *MEMORY[0x1E695EFD0];
        *&t1.c = v121;
        v143 = *(MEMORY[0x1E695EFD0] + 32);
        v146 = v121;
        *&t1.tx = v143;
        CGAffineTransformConcat(&v194, &t1, buf);
        *buf = *&v194.a;
        *&buf[16] = *&v194.c;
        *v231 = *&v194.tx;
        [v89 setTransform:buf];

        currentLayoutInfo2 = [v92 currentLayoutInfo];
        v123 = currentLayoutInfo2;
        if (currentLayoutInfo2)
        {
          [currentLayoutInfo2 additionalTransform];
        }

        else
        {
          *v231 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        *&t1.a = v156;
        *&t1.c = v146;
        *&t1.tx = v143;
        CGAffineTransformConcat(&v192, &t1, buf);
        *buf = *&v192.a;
        *&buf[16] = *&v192.c;
        *v231 = *&v192.tx;
        [v92 setTransform:buf];

        [(PUWallpaperPosterController *)selfCopy _inactiveTransform];
        *buf = v189;
        *&buf[16] = v190;
        *v231 = v191;
        [v94 setTransform:buf];
        [(PUWallpaperPosterController *)selfCopy _inactiveTransform];
        *buf = v186;
        *&buf[16] = v187;
        *v231 = v188;
        [v93 setTransform:buf];
      }

      v179[0] = MEMORY[0x1E69E9820];
      v179[1] = 3221225472;
      v179[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_4;
      v179[3] = &unk_1E7B79988;
      v184 = v107;
      v185 = v151;
      v179[4] = selfCopy;
      v124 = v89;
      v180 = v124;
      v125 = v92;
      v181 = v125;
      v182 = v94;
      v126 = v93;
      v183 = v126;
      v127 = _Block_copy(v179);
      v177[0] = MEMORY[0x1E69E9820];
      v177[1] = 3221225472;
      v177[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_5;
      v177[3] = &unk_1E7B80DD0;
      v128 = v125;
      v178 = v128;
      v129 = _Block_copy(v177);
      if (v151)
      {
        v130 = 1.0;
      }

      else
      {
        v130 = 0.0;
      }

      if (v151)
      {
        v131 = 0.0;
      }

      else
      {
        v131 = 1.0;
      }

      v171[0] = MEMORY[0x1E69E9820];
      v171[1] = 3221225472;
      v171[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_6;
      v171[3] = &unk_1E7B799B0;
      v172 = v124;
      v175 = v130;
      v132 = v128;
      v173 = v132;
      v174 = v126;
      v176 = v131;
      v133 = _Block_copy(v171);
      alphaAnimator3 = [(PUWallpaperPosterController *)selfCopy alphaAnimator];
      v135 = alphaAnimator3;
      if (backlightLuminance)
      {
        v136 = v160;
      }

      else
      {
        v136 = 1;
      }

      if (!luminance || v136)
      {
        if ([alphaAnimator3 isRunning])
        {
          [v135 stopAnimation:1];
          v129[2](v129);
        }

        v133[2](v133);
        v127[2](v127);
      }

      else
      {
        [alphaAnimator3 stopAnimation:1];
        v137 = *MEMORY[0x1E6979CF8];
        layer16 = [v132 layer];
        [layer16 setCompositingFilter:v137];

        v167 = v12;
        v139 = currentLayerStack;
        v140 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
        v141 = objc_alloc(MEMORY[0x1E69DD278]);
        [renderer px_lowLuminanceAlphaAnimationDuration];
        v142 = [v141 initWithDuration:v140 timingParameters:?];
        [v142 addAnimations:v133];
        v168[0] = MEMORY[0x1E69E9820];
        v168[1] = 3221225472;
        v168[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_7;
        v168[3] = &unk_1E7B7A738;
        v169 = v129;
        v170 = v127;
        [v142 addCompletion:v168];
        [v142 startAnimation];
        [(PUWallpaperPosterController *)selfCopy setAlphaAnimator:v142];

        currentLayerStack = v139;
        v12 = v167;
      }

      v14 = v152;
    }

    v16 = v149;
    v18 = v162;
    videoLayerView = v157;
  }
}

void __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 layer];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  [v4 setValue:v5 forKeyPath:*(a1 + 32)];

  if (*(a1 + 136) == 1)
  {
    v6 = [v3 layer];
    v7 = *(a1 + 72);
    v8 = *(a1 + 104);
    v10[2] = *(a1 + 88);
    v10[3] = v8;
    v10[4] = *(a1 + 120);
    v10[0] = *(a1 + 56);
    v10[1] = v7;
    v9 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v10];
    [v6 setValue:v9 forKeyPath:*(a1 + 40)];
  }
}

uint64_t __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 104)];
  [v2 setValue:v3 forKeyPath:*(a1 + 40)];

  v4 = [*(a1 + 48) layer];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 104)];
  [v4 setValue:v5 forKeyPath:*(a1 + 40)];

  (*(*(a1 + 96) + 16))();
  (*(*(a1 + 96) + 16))();
  (*(*(a1 + 96) + 16))();
  (*(*(a1 + 96) + 16))();
  v6 = *(*(a1 + 96) + 16);

  return v6();
}

uint64_t __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_312(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_2_313(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setAlpha:0.0];
  v2 = *(a1 + 48);

  return [v2 setAlpha:0.0];
}

void __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 72) & 1) != 0 || (v2 = *(a1 + 73), memset(&v23, 0, sizeof(v23)), (v2))
  {
    v3 = *(MEMORY[0x1E695EFD0] + 16);
    *&v23.a = *MEMORY[0x1E695EFD0];
    *&v23.c = v3;
    *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      [v16 _inactiveTransform];
    }
  }

  v4 = [*(a1 + 40) currentLayoutInfo];
  v5 = v4;
  if (v4)
  {
    [v4 additionalTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v23;
  CGAffineTransformConcat(&v22, &t1, &t2);
  v6 = *(a1 + 40);
  t2 = v22;
  [v6 setTransform:&t2];

  v7 = [*(a1 + 48) currentLayoutInfo];
  v8 = v7;
  if (v7)
  {
    [v7 additionalTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v23;
  CGAffineTransformConcat(&v19, &t1, &t2);
  v9 = *(a1 + 48);
  t2 = v19;
  [v9 setTransform:&t2];

  v10 = [*(a1 + 56) currentLayoutInfo];
  v11 = v10;
  if (v10)
  {
    [v10 additionalTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v23;
  CGAffineTransformConcat(&v18, &t1, &t2);
  v12 = *(a1 + 56);
  t2 = v18;
  [v12 setTransform:&t2];

  v13 = [*(a1 + 64) currentLayoutInfo];
  v14 = v13;
  if (v13)
  {
    [v13 additionalTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v23;
  CGAffineTransformConcat(&v17, &t1, &t2);
  v15 = *(a1 + 64);
  t2 = v17;
  [v15 setTransform:&t2];
}

void __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v26 = v1;
    v27 = v2;
    if (*(a1 + 73) == 1)
    {
      v4 = [*(a1 + 32) transformAnimator];
      [v4 stopAnimation:1];

      v5 = [*(a1 + 40) currentLayoutInfo];
      v6 = v5;
      if (v5)
      {
        [v5 additionalTransform];
      }

      else
      {
        memset(&v24, 0, sizeof(v24));
      }

      v18 = *(MEMORY[0x1E695EFD0] + 16);
      v19 = *MEMORY[0x1E695EFD0];
      *&v23.a = *MEMORY[0x1E695EFD0];
      *&v23.c = v18;
      v17 = *(MEMORY[0x1E695EFD0] + 32);
      *&v23.tx = v17;
      CGAffineTransformConcat(&v25, &v23, &v24);
      v7 = *(a1 + 40);
      v24 = v25;
      [v7 setTransform:&v24];

      v8 = [*(a1 + 48) currentLayoutInfo];
      v9 = v8;
      if (v8)
      {
        [v8 additionalTransform];
      }

      else
      {
        memset(&v24, 0, sizeof(v24));
      }

      *&v23.a = v19;
      *&v23.c = v18;
      *&v23.tx = v17;
      CGAffineTransformConcat(&v22, &v23, &v24);
      v10 = *(a1 + 48);
      v24 = v22;
      [v10 setTransform:&v24];

      v11 = [*(a1 + 56) currentLayoutInfo];
      v12 = v11;
      if (v11)
      {
        [v11 additionalTransform];
      }

      else
      {
        memset(&v24, 0, sizeof(v24));
      }

      *&v23.a = v19;
      *&v23.c = v18;
      *&v23.tx = v17;
      CGAffineTransformConcat(&v21, &v23, &v24);
      v13 = *(a1 + 56);
      v24 = v21;
      [v13 setTransform:&v24];

      v14 = [*(a1 + 40) currentLayoutInfo];
      v15 = v14;
      if (v14)
      {
        [v14 additionalTransform];
      }

      else
      {
        memset(&v24, 0, sizeof(v24));
      }

      *&v23.a = v19;
      *&v23.c = v18;
      *&v23.tx = v17;
      CGAffineTransformConcat(&v20, &v23, &v24);
      v16 = *(a1 + 64);
      v24 = v20;
      [v16 setTransform:&v24];
    }
  }
}

void __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setCompositingFilter:0];
}

uint64_t __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 56)];
  [*(a1 + 40) setAlpha:*(a1 + 56)];
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);

  return [v3 setAlpha:v2];
}

uint64_t __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_7(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result;
    (*(*(result + 32) + 16))();
    v4 = *(*(v3 + 40) + 16);

    return v4();
  }

  return result;
}

- (void)setBacklightLuminance:(int64_t)luminance
{
  v22 = *MEMORY[0x1E69E9840];
  backlightLuminance = self->_backlightLuminance;
  if (backlightLuminance != luminance)
  {
    self->_backlightLuminance = luminance;
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:luminance];
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "setBacklightLuminance: %@", &v20, 0xCu);
    }

    posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
    shuffleConfiguration = [posterConfiguration shuffleConfiguration];
    shuffleFrequency = [shuffleConfiguration shuffleFrequency];

    if (luminance == 1)
    {
      v11 = ![(PUWallpaperPosterController *)self wantsLowLuminanceContent];
    }

    else
    {
      v11 = 1;
    }

    v13 = luminance == 1 || backlightLuminance == 1;
    viewModel = [(PUWallpaperPosterController *)self viewModel];
    settlingEffectEnabled = [viewModel settlingEffectEnabled];

    if (backlightLuminance == 2 && shuffleFrequency == 2 && (v11 & 1) == 0 && ![(PUWallpaperPosterController *)self significantEventsCounter])
    {
      [(PUWallpaperPosterController *)self setNeedsFirstLockSignificantEvent:1];
    }

    _shouldAnimateShuffleTransitionToSleep = [(PUWallpaperPosterController *)self _shouldAnimateShuffleTransitionToSleep];
    if (backlightLuminance != 2 || !_shouldAnimateShuffleTransitionToSleep)
    {
      goto LABEL_23;
    }

    v17 = PLWallpaperGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:luminance];
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "setBacklightLuminance:%@ delegating transition to _animateShuffleTransitionToSleep", &v20, 0xCu);
    }

    if (![(PUWallpaperPosterController *)self _animateShuffleTransitionToSleep])
    {
LABEL_23:
      if ((v13 | settlingEffectEnabled))
      {
        [(PUWallpaperPosterController *)self _transitionToBacklightLuminance:luminance previousBacklightLuminance:backlightLuminance animated:1 interruptSettlingEffectPlayback:1];
      }

      else
      {
        v19 = PLWallpaperGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "AOD appears to be disabled, skipping animated transitions", &v20, 2u);
        }
      }
    }
  }
}

- (void)_updateBacklightLuminance
{
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  -[PUWallpaperPosterController setBacklightLuminance:](self, "setBacklightLuminance:", [viewModel backlightLuminance]);
}

- (void)_hideProgressIndicator
{
  progressIndicator = [(PUWallpaperPosterController *)self progressIndicator];
  [progressIndicator stopAnimating];
}

- (void)_showProgressIndicator
{
  v15[2] = *MEMORY[0x1E69E9840];
  progressIndicator = [(PUWallpaperPosterController *)self progressIndicator];
  superview = [progressIndicator superview];

  if (!superview)
  {
    renderer = [(PUWallpaperPosterController *)self renderer];
    floatingView = [renderer floatingView];

    [floatingView addSubview:progressIndicator];
    v7 = MEMORY[0x1E696ACD8];
    centerYAnchor = [progressIndicator centerYAnchor];
    centerYAnchor2 = [floatingView centerYAnchor];
    v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v15[0] = v10;
    centerXAnchor = [progressIndicator centerXAnchor];
    centerXAnchor2 = [floatingView centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v15[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [v7 activateConstraints:v14];
  }

  [progressIndicator startAnimating];
}

- (void)_updateViewHierarchy
{
  [(PUWallpaperPosterController *)self _transitionToBacklightLuminance:[(PUWallpaperPosterController *)self backlightLuminance] previousBacklightLuminance:-1 animated:0 interruptSettlingEffectPlayback:0];
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  viewManager = [viewModel viewManager];
  currentLayerStack = [viewModel currentLayerStack];
  settlingEffectLayer = [currentLayerStack settlingEffectLayer];
  v6 = [viewManager viewForLayer:settlingEffectLayer];

  spatialPhotoBackgroundLayer = [currentLayerStack spatialPhotoBackgroundLayer];
  v8 = [viewManager viewForLayer:spatialPhotoBackgroundLayer];

  spatialPhotoForegroundLayer = [currentLayerStack spatialPhotoForegroundLayer];
  v10 = [viewManager viewForLayer:spatialPhotoForegroundLayer];

  inactiveBackgroundLayer = [currentLayerStack inactiveBackgroundLayer];
  v12 = [viewManager viewForLayer:inactiveBackgroundLayer];

  backgroundLayer = [currentLayerStack backgroundLayer];
  v35 = [viewManager viewForLayer:backgroundLayer];

  inactiveForegroundLayer = [currentLayerStack inactiveForegroundLayer];
  v34 = [viewManager viewForLayer:inactiveForegroundLayer];

  foregroundLayer = [currentLayerStack foregroundLayer];
  v33 = [viewManager viewForLayer:foregroundLayer];

  renderer = [(PUWallpaperPosterController *)self renderer];
  backgroundView = [renderer backgroundView];
  foregroundView = [renderer foregroundView];
  floatingView = [renderer floatingView];
  v29 = v12;
  [backgroundView addSubview:v12];
  if (v6)
  {
    [backgroundView addSubview:v6];
  }

  [backgroundView addSubview:v35];
  if (v8)
  {
    [backgroundView addSubview:v8];
  }

  v31 = v6;
  if (v10)
  {
    [floatingView addSubview:v10];
  }

  v30 = v10;
  if (!v8)
  {
    if ([viewModel clockAppearsAboveForeground])
    {
      v19 = foregroundView;
    }

    else
    {
      v19 = floatingView;
    }

    [v19 addSubview:v34];
    [v19 addSubview:v33];
  }

  viewModel2 = [(PUWallpaperPosterController *)self viewModel];
  depthEnabled = [viewModel2 depthEnabled];
  spatialPhotoBackgroundLayerView = [viewManager spatialPhotoBackgroundLayerView];
  [spatialPhotoBackgroundLayerView setEnableOcclusion:depthEnabled];

  if ([viewModel showsDebugHUD])
  {
    debugInfoView = [viewManager debugInfoView];
    [floatingView addSubview:debugInfoView];
  }

  Bool = PXPreferencesGetBool();
  viewModel3 = [(PUWallpaperPosterController *)self viewModel];
  viewManager2 = [viewModel3 viewManager];
  v27 = viewManager2;
  if (Bool)
  {
    debugRectsView = [viewManager2 debugRectsView];
    [floatingView addSubview:debugRectsView];
  }

  else
  {
    debugRectsView = [viewManager2 debugRectsViewIfLoaded];
    [debugRectsView removeFromSuperview];
  }

  [(PUWallpaperPosterController *)self _invalidateDebugHUD];
}

- (void)_removeExistingViews
{
  v65 = *MEMORY[0x1E69E9840];
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  viewManager = [viewModel viewManager];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  createdLayerViews = [viewManager createdLayerViews];
  v6 = [createdLayerViews countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    do
    {
      v9 = 0;
      do
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(createdLayerViews);
        }

        [*(*(&v53 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [createdLayerViews countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v7);
  }

  environment = [(PUWallpaperPosterController *)self environment];

  if (environment)
  {
    renderer = [(PUWallpaperPosterController *)self renderer];
    backgroundView = [renderer backgroundView];
    foregroundView = [renderer foregroundView];
    floatingView = [renderer floatingView];
    shuffleTransitionController = [(PUWallpaperPosterController *)self shuffleTransitionController];
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    subviews = [backgroundView subviews];
    [v16 addObjectsFromArray:subviews];

    subviews2 = [foregroundView subviews];
    [v16 addObjectsFromArray:subviews2];

    v47 = floatingView;
    subviews3 = [floatingView subviews];
    [v16 addObjectsFromArray:subviews3];

    v46 = v16;
    v20 = [v16 mutableCopy];
    v48 = shuffleTransitionController;
    if ([shuffleTransitionController isAnimating])
    {
      v21 = MEMORY[0x1E695DFD8];
      fromViewModel = [v48 fromViewModel];
      [fromViewModel viewManager];
      v45 = v20;
      v23 = foregroundView;
      v24 = renderer;
      v25 = viewManager;
      v26 = backgroundView;
      v28 = v27 = viewModel;
      createdLayerViews2 = [v28 createdLayerViews];
      v30 = [v21 setWithArray:createdLayerViews2];

      viewModel = v27;
      backgroundView = v26;
      viewManager = v25;
      renderer = v24;
      foregroundView = v23;
      v20 = v45;

      [v45 minusSet:v30];
    }

    viewModel2 = [(PUWallpaperPosterController *)self viewModel];
    viewManager2 = [viewModel2 viewManager];
    debugRectsViewIfLoaded = [viewManager2 debugRectsViewIfLoaded];

    if (debugRectsViewIfLoaded)
    {
      [v20 removeObject:debugRectsViewIfLoaded];
    }

    environment2 = [(PUWallpaperPosterController *)self environment];
    if ([environment2 px_isCallServices])
    {
      callServicesOcclusionView = [(PUWallpaperPosterController *)self callServicesOcclusionView];

      if (!callServicesOcclusionView)
      {
LABEL_17:
        if ([v20 count])
        {
          v36 = PXAssertGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            subviews4 = [backgroundView subviews];
            subviews5 = [foregroundView subviews];
            [v47 subviews];
            v44 = v45 = viewModel;
            *buf = 138412802;
            v59 = subviews4;
            v60 = 2112;
            v61 = subviews5;
            v62 = 2112;
            v63 = v44;
            _os_log_error_impl(&dword_1B36F3000, v36, OS_LOG_TYPE_ERROR, "Detected orphaned views in background (%@), foreground (%@), floating (%@), cleaning up", buf, 0x20u);

            viewModel = v45;
          }
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v37 = v20;
        v38 = [v37 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v50;
          do
          {
            v41 = 0;
            do
            {
              if (*v50 != v40)
              {
                objc_enumerationMutation(v37);
              }

              [*(*(&v49 + 1) + 8 * v41++) removeFromSuperview];
            }

            while (v39 != v41);
            v39 = [v37 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v39);
        }

        goto LABEL_29;
      }

      environment2 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
      [v20 removeObject:environment2];
    }

    goto LABEL_17;
  }

LABEL_29:
}

- (void)_updateDeviceOrientation
{
  if (([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration] & 1) == 0)
  {
    environment = [(PUWallpaperPosterController *)self environment];
    if ([environment px_isBackdrop])
    {
    }

    else
    {
      environment2 = [(PUWallpaperPosterController *)self environment];
      px_isCallServices = [environment2 px_isCallServices];

      if (!px_isCallServices)
      {
        return;
      }
    }
  }

  environment3 = [(PUWallpaperPosterController *)self environment];
  px_deviceOrientation = [environment3 px_deviceOrientation];

  viewModel = [(PUWallpaperPosterController *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PUWallpaperPosterController__updateDeviceOrientation__block_invoke;
  v9[3] = &__block_descriptor_40_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  v9[4] = px_deviceOrientation;
  [viewModel performChanges:v9];

  [(PUWallpaperPosterController *)self _invalidateDebugHUD];
}

- (CGRect)_adjustedContainerFrameAvoidingOcclusionRects:(CGRect)rects
{
  height = rects.size.height;
  width = rects.size.width;
  y = rects.origin.y;
  x = rects.origin.x;
  environment = [(PUWallpaperPosterController *)self environment];
  px_isBackdrop = [environment px_isBackdrop];

  environment2 = [(PUWallpaperPosterController *)self environment];
  v11 = environment2;
  if (px_isBackdrop)
  {
    MaxX = x;
    v45 = y;
    v46 = width;
    v47 = height;
    [environment2 px_backdropPrimaryOcclusionRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    environment3 = [(PUWallpaperPosterController *)self environment];
    [environment3 px_backdropInspectorOcclusionRect];
    v43.origin.x = v21;
    v43.origin.y = v22;
    v43.size.width = v23;
    v43.size.height = v24;

    environment4 = [(PUWallpaperPosterController *)self environment];
    px_deviceOrientation = [environment4 px_deviceOrientation];

    v28 = *MEMORY[0x1E695F058];
    v27 = *(MEMORY[0x1E695F058] + 8);
    v30 = *(MEMORY[0x1E695F058] + 16);
    v29 = *(MEMORY[0x1E695F058] + 24);
    v48.origin.x = v13;
    v48.origin.y = v15;
    v48.size.width = v17;
    v48.size.height = v19;
    v54.origin.x = *MEMORY[0x1E695F058];
    v54.origin.y = v27;
    v54.size.width = v30;
    v54.size.height = v29;
    v31 = CGRectEqualToRect(v48, v54);
    if ((px_deviceOrientation - 3) <= 1)
    {
      if (!v31)
      {
        v45 = 0.0;
        if (px_deviceOrientation == 3)
        {
          v49.origin.x = v13;
          v49.origin.y = v15;
          v49.size.width = v17;
          v49.size.height = v19;
          v45 = CGRectGetHeight(v49);
        }

        v50.origin.x = v13;
        v50.origin.y = v15;
        v50.size.width = v17;
        v50.size.height = v19;
        v47 = v47 - CGRectGetHeight(v50);
      }

      v55.origin.x = v28;
      v55.origin.y = v27;
      v55.size.width = v30;
      v55.size.height = v29;
      if (!CGRectEqualToRect(v43, v55))
      {
        v32 = 0.0;
        width = v46;
        x = MaxX;
        if (px_deviceOrientation != 3)
        {
          v32 = CGRectGetHeight(v43);
        }

        y = v45 + v32;
        height = v47 - CGRectGetHeight(v43);
        goto LABEL_22;
      }

LABEL_18:
      width = v46;
      height = v47;
      x = MaxX;
      y = v45;
      goto LABEL_22;
    }

    if (!v31)
    {
      MaxX = 0.0;
      if (px_deviceOrientation != 2)
      {
        v51.origin.x = v13;
        v51.origin.y = v15;
        v51.size.width = v17;
        v51.size.height = v19;
        MaxX = CGRectGetMaxX(v51);
      }

      v52.origin.x = v13;
      v52.origin.y = v15;
      v52.size.width = v17;
      v52.size.height = v19;
      v46 = v46 - CGRectGetWidth(v52);
    }

    v56.origin.x = v28;
    v56.origin.y = v27;
    v56.size.width = v30;
    v56.size.height = v29;
    if (CGRectEqualToRect(v43, v56))
    {
      goto LABEL_18;
    }

    v38 = 0.0;
    height = v47;
    y = v45;
    if (px_deviceOrientation == 2)
    {
      v38 = CGRectGetWidth(v43);
    }

    x = MaxX + v38;
    width = v46 - CGRectGetWidth(v43);
  }

  else
  {
    px_isCallServices = [environment2 px_isCallServices];

    if (px_isCallServices)
    {
      [(PUWallpaperPosterController *)self _adjustContainerFrameAvoidOcclusionRectsForCallServices:x, y, width, height];
      x = v34;
      y = v35;
      width = v36;
      height = v37;
    }
  }

LABEL_22:
  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (void)_updateCallServicesOcclusionViewWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  environment = [(PUWallpaperPosterController *)self environment];
  px_deviceOrientation = [environment px_deviceOrientation];

  if ((px_deviceOrientation - 3) <= 1)
  {
    callServicesOcclusionView = [(PUWallpaperPosterController *)self callServicesOcclusionView];
    superview = [callServicesOcclusionView superview];

    if (superview)
    {
      callServicesOcclusionView2 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
      [callServicesOcclusionView2 removeFromSuperview];
    }

    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    callServicesOcclusionViewBackgroundColor = [(PUWallpaperPosterController *)self callServicesOcclusionViewBackgroundColor];
    if (callServicesOcclusionViewBackgroundColor)
    {
      [(PUWallpaperPosterController *)self callServicesOcclusionViewBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v15 = ;
    [v13 setBackgroundColor:v15];

    [(PUWallpaperPosterController *)self setCallServicesOcclusionView:v13];
    renderer = [(PUWallpaperPosterController *)self renderer];
    foregroundView = [renderer foregroundView];
    callServicesOcclusionView3 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
    [foregroundView addSubview:callServicesOcclusionView3];
  }

  callServicesOcclusionView4 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
  [callServicesOcclusionView4 setFrame:{x, y, width, height}];
}

- (CGRect)_adjustContainerFrameAvoidOcclusionRectsForCallServices:(CGRect)services
{
  height = services.size.height;
  width = services.size.width;
  y = services.origin.y;
  x = services.origin.x;
  callServicesOcclusionViewBackgroundColor = [(PUWallpaperPosterController *)self callServicesOcclusionViewBackgroundColor];

  if (!callServicesOcclusionViewBackgroundColor)
  {
    defaultGrayColors = [MEMORY[0x1E695D178] defaultGrayColors];
    firstObject = [defaultGrayColors firstObject];
    [(PUWallpaperPosterController *)self setCallServicesOcclusionViewBackgroundColor:firstObject];

    v11 = MEMORY[0x1E695D178];
    v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:self->_posterImage];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke;
    v60[3] = &unk_1E7B7B220;
    v60[4] = self;
    [v11 fetchColorsForImage:v12 withCompletionHandler:v60];
  }

  environment = [(PUWallpaperPosterController *)self environment];
  px_deviceOrientation = [environment px_deviceOrientation];

  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v61.origin.x = v17;
  v61.origin.y = v19;
  v61.size.width = v21;
  v61.size.height = v23;
  v24 = CGRectGetWidth(v61);
  v52 = 0;
  v53 = &v52;
  v54 = 0x4010000000;
  v55 = &unk_1B3DBEC63;
  v56 = x;
  v57 = y;
  v58 = width;
  v59 = height;
  if ((px_deviceOrientation - 3) > 1)
  {
    callServicesOcclusionView = [(PUWallpaperPosterController *)self callServicesOcclusionView];
    superview = [callServicesOcclusionView superview];

    if (superview)
    {
      callServicesOcclusionView2 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
      [callServicesOcclusionView2 removeFromSuperview];
    }

    [(PUWallpaperPosterController *)self setCallServicesOcclusionView:0];
    [(PUWallpaperPosterController *)self setCurrentCallServicesOcclusionRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  else
  {
    v25 = v24 * 0.5;
    v46 = 0;
    v47 = &v46;
    v48 = 0x4010000000;
    v49 = &unk_1B3DBEC63;
    v26 = *(MEMORY[0x1E695F058] + 16);
    v50 = *MEMORY[0x1E695F058];
    v51 = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke_3;
    aBlock[3] = &unk_1E7B79910;
    *&aBlock[6] = v24 * 0.5;
    *&aBlock[7] = v17;
    *&aBlock[8] = v19;
    *&aBlock[9] = v21;
    *&aBlock[10] = v23;
    aBlock[4] = &v46;
    aBlock[5] = &v52;
    v27 = _Block_copy(aBlock);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke_4;
    v44[3] = &unk_1E7B79910;
    *&v44[6] = v17;
    *&v44[7] = v19;
    *&v44[8] = v21;
    *&v44[9] = v23;
    *&v44[10] = v25;
    v44[4] = &v46;
    v44[5] = &v52;
    v28 = _Block_copy(v44);
    renderer = [(PUWallpaperPosterController *)self renderer];
    backgroundView = [renderer backgroundView];
    v31 = [backgroundView effectiveUserInterfaceLayoutDirection] == 0;

    if (v31 != (px_deviceOrientation == 3))
    {
      v32 = v28;
    }

    else
    {
      v32 = v27;
    }

    v32[2]();
    v53[7] = v53[7] - CGRectGetHeight(v47[1]);
    [(PUWallpaperPosterController *)self setCurrentCallServicesOcclusionRect:v47[1].origin.x, v47[1].origin.y, v47[1].size.width, v47[1].size.height];
    [(PUWallpaperPosterController *)self currentCallServicesOcclusionRect];
    [(PUWallpaperPosterController *)self _updateCallServicesOcclusionViewWithRect:?];

    _Block_object_dispose(&v46, 8);
  }

  v36 = v53[4];
  v37 = v53[5];
  v38 = v53[6];
  v39 = v53[7];
  _Block_object_dispose(&v52, 8);
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

void __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke_2;
  v5[3] = &unk_1E7B80C38;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  Height = CGRectGetHeight(*(a1 + 56));
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = 0;
  *(v5 + 40) = v2;
  *(v5 + 48) = Height;
  *(v5 + 56) = v4;
  *(*(*(a1 + 40) + 8) + 40) = 0;
}

CGFloat __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke_4(uint64_t a1)
{
  Height = CGRectGetHeight(*(a1 + 48));
  v3 = *(a1 + 80);
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = Height;
  *(v4 + 56) = v3;
  v5 = CGRectGetHeight(*(*(*(a1 + 32) + 8) + 32));
  v6 = *(*(a1 + 40) + 8);
  result = v5 + *(v6 + 40);
  *(v6 + 40) = result;
  return result;
}

void __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) firstObject];
  [*(a1 + 32) setCallServicesOcclusionViewBackgroundColor:v2];

  v4 = [*(a1 + 40) firstObject];
  v3 = [*(a1 + 32) callServicesOcclusionView];
  [v3 setBackgroundColor:v4];
}

- (void)handleLegibilityVignetteVisibilityDidChange:(BOOL)change
{
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PUWallpaperPosterController_handleLegibilityVignetteVisibilityDidChange___block_invoke;
  v5[3] = &__block_descriptor_33_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  changeCopy = change;
  [viewModel performChanges:v5];
}

- (void)_updateTitleHeightProperties
{
  if ([(PUWallpaperPosterController *)self _isShuffleConfiguration])
  {
    currentPosterMedia = [(PUWallpaperPosterController *)self currentPosterMedia];
    editConfiguration = [currentPosterMedia editConfiguration];

    viewModel = [(PUWallpaperPosterController *)self viewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PUWallpaperPosterController__updateTitleHeightProperties__block_invoke;
    v7[3] = &unk_1E7B80328;
    v8 = editConfiguration;
    v6 = editConfiguration;
    [viewModel performChanges:v7];
  }
}

void __59__PUWallpaperPosterController__updateTitleHeightProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 additionalTitleLabelHeight];
  [v4 setOverrideTitleHeight:?];
  [*(a1 + 32) landscapeAdditionalTitleLabelHeight];
  [v4 setLandscapeOverrideTitleHeight:?];
  [*(a1 + 32) userAdjustedTitleLabelHeightOffset];
  [v4 setUserAdjustedTitleHeightOffset:?];
  [*(a1 + 32) landscapeUserAdjustedTitleLabelHeightOffset];
  [v4 setLandscapeUserAdjustedTitleHeightOffset:?];
}

- (void)_updateContainerFrame
{
  renderer = [(PUWallpaperPosterController *)self renderer];
  backgroundView = [renderer backgroundView];
  [backgroundView bounds];

  PXRectWithOriginAndSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  environment = [(PUWallpaperPosterController *)self environment];
  LODWORD(backgroundView) = [environment px_isCallServices];

  if (backgroundView)
  {
    [(PUWallpaperPosterController *)self _adjustedContainerFrameAvoidingOcclusionRects:v6, v8, v10, v12];
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  viewModel = [(PUWallpaperPosterController *)self viewModel];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__PUWallpaperPosterController__updateContainerFrame__block_invoke;
  v19[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  *&v19[4] = v6;
  *&v19[5] = v8;
  *&v19[6] = v10;
  *&v19[7] = v12;
  [viewModel performChanges:v19];

  [(PUWallpaperPosterController *)self _invalidateDebugHUD];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  v5 = self->_viewModel;
  v6 = v5;
  if (v5 == modelCopy)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerStackViewModel *)v5 isEqual:modelCopy];

    if ((v7 & 1) == 0)
    {
      [(PUWallpaperPosterController *)self _removeExistingViews];
      [(PUParallaxLayerStackViewModel *)self->_viewModel unregisterChangeObserver:self context:"ViewModelObservationContext"];
      objc_storeStrong(&self->_viewModel, model);
      [(PUParallaxLayerStackViewModel *)modelCopy registerChangeObserver:self context:"ViewModelObservationContext"];
      if (modelCopy)
      {
        [(PUWallpaperPosterController *)self _updateTitleHeightProperties];
        [(PUWallpaperPosterController *)self _updateDeviceOrientation];
        [(PUWallpaperPosterController *)self _updateContainerFrame];
        [(PUWallpaperPosterController *)self _updatePreferences];
        [(PUWallpaperPosterController *)self _updateViewHierarchy];
        [(PUWallpaperPosterController *)self _observeCurrentPlayerItem];
        [(PUWallpaperPosterController *)self _updateRenderPreferences];
        [(PUWallpaperPosterController *)self _updateBackdropProperties];
      }
    }
  }
}

- (void)setEnvironment:(id)environment
{
  v43 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  v6 = self->_environment;
  objc_storeStrong(&self->_environment, environment);
  if (environmentCopy)
  {
    [(PUWallpaperPosterController *)self _updateSpatialPhotoLayerView];
    if ([environmentCopy px_isCallServices])
    {
      standardAlphabeticTextParameters = [MEMORY[0x1E69C07A0] standardAlphabeticTextParameters];
      [MEMORY[0x1E69C07A0] setSystemParameters:standardAlphabeticTextParameters];
    }

    px_significantEventsCounter = [(PXPosterRenderingEnvironment *)v6 px_significantEventsCounter];
    if (px_significantEventsCounter != [environmentCopy px_significantEventsCounter])
    {
      -[PUWallpaperPosterController setSignificantEventsCounter:](self, "setSignificantEventsCounter:", [environmentCopy px_significantEventsCounter]);
    }

    px_assetDirectory = [(PXPosterRenderingEnvironment *)v6 px_assetDirectory];
    px_assetDirectory2 = [environmentCopy px_assetDirectory];
    v11 = px_assetDirectory2;
    if (px_assetDirectory == px_assetDirectory2)
    {
    }

    else
    {
      v12 = [px_assetDirectory isEqual:px_assetDirectory2];

      if ((v12 & 1) == 0)
      {
        [(PUWallpaperPosterController *)self _loadContentsFromEnvironment];
      }
    }

    px_backlightLuminance = [(PXPosterRenderingEnvironment *)v6 px_backlightLuminance];
    if (px_backlightLuminance != [environmentCopy px_backlightLuminance])
    {
      viewModel = [(PUWallpaperPosterController *)self viewModel];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __46__PUWallpaperPosterController_setEnvironment___block_invoke;
      v39[3] = &unk_1E7B80328;
      v40 = environmentCopy;
      [viewModel performChanges:v39];
    }

    px_deviceOrientation = [(PXPosterRenderingEnvironment *)v6 px_deviceOrientation];
    if (px_deviceOrientation != [environmentCopy px_deviceOrientation])
    {
      [(PUWallpaperPosterController *)self _updateDeviceOrientation];
      [(PUWallpaperPosterController *)self _updateTitleHeightProperties];
    }

    viewModel2 = [(PUWallpaperPosterController *)self viewModel];
    viewManager = [viewModel2 viewManager];
    videoLayerView = [viewManager videoLayerView];
    player = [videoLayerView player];
    [player rate];
    v21 = v20;

    if ([environmentCopy px_isSnapshot] && v21 == 1.0)
    {
      [(PUWallpaperPosterController *)self _transitionToBacklightLuminance:2 previousBacklightLuminance:-1 animated:0 interruptSettlingEffectPlayback:1];
    }

    if (([environmentCopy px_isSnapshot] & 1) == 0 && objc_msgSend(environmentCopy, "px_isPreview") && objc_msgSend(viewModel2, "settlingEffectEnabled") && !UIAccessibilityIsReduceMotionEnabled())
    {
      v22 = PLWallpaperGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "Settling effect is requested to playback live in the gallery", buf, 2u);
      }

      viewModel3 = [(PUWallpaperPosterController *)self viewModel];
      [viewModel3 performChanges:&__block_literal_global_272_44115];
    }

    if (([environmentCopy px_isSnapshot] & 1) == 0)
    {
      if ([environmentCopy px_isPreview])
      {
        posterDescriptor = [(PUWallpaperPosterController *)self posterDescriptor];
        descriptorType = [posterDescriptor descriptorType];

        if (descriptorType == 5)
        {
          viewModel4 = [(PUWallpaperPosterController *)self viewModel];
          [viewModel4 performChanges:&__block_literal_global_274];
        }
      }
    }

    if ([(PUWallpaperPosterController *)self needsUpgrade])
    {
      v27 = [MEMORY[0x1E695DF00] now];
      lastUpgradeCheckTime = [(PUWallpaperPosterController *)self lastUpgradeCheckTime];
      [v27 timeIntervalSinceDate:lastUpgradeCheckTime];
      v30 = v29;

      [(PUWallpaperPosterController *)self nextUpgradeCheckDelay];
      if (v30 >= v31)
      {
        v32 = PLWallpaperGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v42 = v30 / 60.0;
          _os_log_impl(&dword_1B36F3000, v32, OS_LOG_TYPE_DEFAULT, "Still needs upgrade after %0.0f minutes, checking again...", buf, 0xCu);
        }

        [(PUWallpaperPosterController *)self setNeedsUpgrade:[(PUWallpaperPosterController *)self triggerPosterUpgradeIfNecessary]];
        [(PUWallpaperPosterController *)self setLastUpgradeCheckTime:v27];
        [(PUWallpaperPosterController *)self nextUpgradeCheckDelay];
        [(PUWallpaperPosterController *)self setNextUpgradeCheckDelay:v33 + v33];
      }
    }

    if ([(PUWallpaperPosterController *)self _shouldUpdatePreferredTitleBoundsWithEnvironment:environmentCopy oldEnvironment:v6])
    {
      [(PUWallpaperPosterController *)self _updatePreferredTitleBounds];
    }

    environment = [(PUWallpaperPosterController *)self environment];
    px_isBackdrop = [environment px_isBackdrop];

    if (px_isBackdrop)
    {
      [(PUWallpaperPosterController *)self _updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment:v6];
    }

    else
    {
      [(PUWallpaperPosterController *)self _updateAdaptiveLayoutProperties];
    }

    environment2 = [(PUWallpaperPosterController *)self environment];
    if ([environment2 px_isBackdrop])
    {
    }

    else
    {
      environment3 = [(PUWallpaperPosterController *)self environment];
      px_isCallServices = [environment3 px_isCallServices];

      if (!px_isCallServices)
      {
LABEL_44:
        [(PUWallpaperPosterController *)self _updatePreferences];

        goto LABEL_45;
      }
    }

    [(PUWallpaperPosterController *)self _updateContainerFrame];
    goto LABEL_44;
  }

  [(PUWallpaperPosterController *)self _invalidateCurrentPosterMedia];
LABEL_45:
}

void __46__PUWallpaperPosterController_setEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setBacklightLuminance:{objc_msgSend(v2, "px_backlightLuminance")}];
}

- (void)_updateDebugRectViews
{
  Bool = PXPreferencesGetBool();
  viewModel = [(PUWallpaperPosterController *)self viewModel];
  viewManager = [viewModel viewManager];
  purpleColor = viewManager;
  if (Bool)
  {
    debugRectsView = [viewManager debugRectsView];

    renderer = [(PUWallpaperPosterController *)self renderer];
    px_preferences = [renderer px_preferences];
    [px_preferences px_preferredSalientContentRectangle];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    [debugRectsView setDebugRect:@"preferred" forIdentifier:greenColor color:v10 borderWidth:{v12, v14, v16, 4.0}];

    renderer2 = [(PUWallpaperPosterController *)self renderer];
    px_environment = [renderer2 px_environment];
    [px_environment px_salientContentRectangle];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    redColor = [MEMORY[0x1E69DC888] redColor];
    [debugRectsView setDebugRect:@"current" forIdentifier:redColor color:v21 borderWidth:{v23, v25, v27, 3.0}];

    viewModel2 = [(PUWallpaperPosterController *)self viewModel];
    [viewModel2 salientContentFrame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    purpleColor = [MEMORY[0x1E69DC888] purpleColor];
    [debugRectsView setDebugRect:@"photoSalientContent" forIdentifier:purpleColor color:v31 borderWidth:{v33, v35, v37, 3.0}];
    viewModel = debugRectsView;
  }

  else
  {
    debugRectsViewIfLoaded = [viewManager debugRectsViewIfLoaded];
    [debugRectsViewIfLoaded removeAllDebugRects];
  }
}

- (void)_updateAdaptiveLayoutProperties
{
  posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
  if (posterConfiguration)
  {
    posterConfiguration2 = [(PUWallpaperPosterController *)self posterConfiguration];
    v5 = ([posterConfiguration2 allowedLayoutStrategies] & 2) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (PFPosterIsAdaptiveLayoutEnabled() && (-[PUWallpaperPosterController viewModel](self, "viewModel"), v6 = objc_claimAutoreleasedReturnValue(), v7 = v5 | ~[v6 supportsAdaptiveLayout], v6, (v7 & 1) == 0))
  {
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&v89.a = *MEMORY[0x1E695EFD0];
    *&v89.c = v9;
    *&v89.tx = *(MEMORY[0x1E695EFD0] + 32);
    environment = [(PUWallpaperPosterController *)self environment];
    px_isPlayground = [environment px_isPlayground];

    viewModel = [(PUWallpaperPosterController *)self viewModel];
    [viewModel containerFrame];
    PXRectWithSize();
    if (px_isPlayground)
    {

      environment2 = [(PUWallpaperPosterController *)self environment];
      [environment2 px_minimumTitleBoundsForLayout:0];

      environment3 = [(PUWallpaperPosterController *)self environment];
      [environment3 px_titleBoundsForLayout:0];

      PXRectDenormalize();
      v80 = v16;
      v82 = v15;
      v76 = v18;
      v78 = v17;
      PXRectDenormalize();
      Height = CGRectGetHeight(v91);
      v92.origin.y = v80;
      v92.origin.x = v82;
      v92.size.height = v76;
      v92.size.width = v78;
      v20 = Height - CGRectGetHeight(v92);
    }

    else
    {

      renderer = [(PUWallpaperPosterController *)self renderer];
      px_preferences = [renderer px_preferences];
      [px_preferences px_preferredSalientContentRectangle];
      v24 = v23;
      v81 = v25;
      v83 = v26;
      v28 = v27;

      renderer2 = [(PUWallpaperPosterController *)self renderer];
      px_environment = [renderer2 px_environment];
      [px_environment px_salientContentRectangle];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      viewModel2 = [(PUWallpaperPosterController *)self viewModel];
      [viewModel2 adaptiveLayoutAvailableContentHeight];
      v41 = v40;

      viewModel3 = [(PUWallpaperPosterController *)self viewModel];
      [viewModel3 userAdjustedTitleHeightOffset];

      v75 = v34;
      v77 = v32;
      v93.origin.x = v32;
      v93.origin.y = v34;
      v73 = v38;
      v74 = v36;
      v93.size.width = v36;
      v93.size.height = v38;
      CGRectGetMinY(v93);
      v94.origin.x = v24;
      v94.origin.y = v81;
      v94.size.height = v83;
      v79 = v28;
      v94.size.width = v28;
      CGRectGetMinY(v94);
      PXClamp();
      v44 = v43;
      viewModel4 = [(PUWallpaperPosterController *)self viewModel];
      [viewModel4 salientContentFrame];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v95.origin.x = v47;
      v95.origin.y = v49;
      v95.size.width = v51;
      v95.size.height = v53;
      if (!CGRectIsNull(v95))
      {
        v72 = v44;
        environment4 = [(PUWallpaperPosterController *)self environment];
        [environment4 px_minimumTitleBoundsForLayout:0];
        v70 = v51;
        v71 = v49;

        PXRectDenormalize();
        v56 = v55;
        v85 = v57;
        v86 = v55;
        v58 = v57;
        v60 = v59;
        v84 = v47;
        v62 = v61;
        v96.origin.x = v24;
        v96.origin.y = v81;
        v96.size.width = v79;
        v96.size.height = v83;
        MinY = CGRectGetMinY(v96);
        v97.origin.x = v56;
        v97.origin.y = v58;
        v97.size.width = v60;
        v97.size.height = v62;
        v64 = MinY - CGRectGetMaxY(v97);
        v98.origin.x = v24;
        v98.origin.y = v81;
        v98.size.width = v79;
        v98.size.height = v83;
        v69 = CGRectGetMinY(v98);
        v99.size.height = v53;
        v99.origin.x = v84;
        v99.size.width = v70;
        v99.origin.y = v71;
        CGRectGetMinY(v99);
        v100.origin.x = v24;
        v100.origin.y = v81;
        v100.size.width = v79;
        v100.size.height = v83;
        CGRectGetMinY(v100);
        v101.origin.y = v75;
        v101.origin.x = v77;
        v101.size.height = v73;
        v101.size.width = v74;
        CGRectGetMinY(v101);
        PXClamp();
        v102.origin.y = v85;
        v102.origin.x = v86;
        v102.size.width = v60;
        v102.size.height = v62;
        if (CGRectGetHeight(v102) <= 0.0 || v64 <= 0.0)
        {
          v44 = v72;
        }

        else
        {
          v44 = v72;
          if (PXFloatApproximatelyEqualToFloat())
          {
            PXClamp();
            v44 = v65;
          }
        }
      }

      shuffleTransitionController = [(PUWallpaperPosterController *)self shuffleTransitionController];
      isAnimating = [shuffleTransitionController isAnimating];

      if (isAnimating)
      {
        v20 = v41;
      }

      else
      {
        v20 = v44;
      }
    }

    CGAffineTransformMakeTranslation(&v89, 0.0, v20);
    viewModel5 = [(PUWallpaperPosterController *)self viewModel];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __62__PUWallpaperPosterController__updateAdaptiveLayoutProperties__block_invoke_2;
    v87[3] = &__block_descriptor_80_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    v88 = v89;
    [viewModel5 performChanges:v87];

    [(PUWallpaperPosterController *)self _updateDebugRectViews];
  }

  else
  {
    viewModel6 = [(PUWallpaperPosterController *)self viewModel];
    [viewModel6 performChanges:&__block_literal_global_258];

    [(PUWallpaperPosterController *)self _updateDebugRectViews];
  }
}

uint64_t __62__PUWallpaperPosterController__updateAdaptiveLayoutProperties__block_invoke_2(_OWORD *a1, void *a2)
{
  v2 = a1[3];
  v4[0] = a1[2];
  v4[1] = v2;
  v4[2] = a1[4];
  return [a2 setAdaptiveLayoutTransform:v4];
}

uint64_t __62__PUWallpaperPosterController__updateAdaptiveLayoutProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [a2 setAdaptiveLayoutTransform:v4];
}

- (void)_updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment:(id)environment
{
  environmentCopy = environment;
  environment = [(PUWallpaperPosterController *)self environment];
  if ([environment px_isSnapshot])
  {

    goto LABEL_19;
  }

  environment2 = [(PUWallpaperPosterController *)self environment];
  px_isPreview = [environment2 px_isPreview];

  if ((px_isPreview & 1) == 0)
  {
    renderer = [(PUWallpaperPosterController *)self renderer];
    px_environment = [renderer px_environment];
    [px_environment px_salientContentRectangle];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [environmentCopy px_salientContentRectangle];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v64.origin.x = v11;
    v64.origin.y = v13;
    v64.size.width = v15;
    v64.size.height = v17;
    if (!CGRectIsEmpty(v64))
    {
      v65.origin.x = v19;
      v65.origin.y = v21;
      v65.size.width = v23;
      v65.size.height = v25;
      if (!CGRectIsEmpty(v65))
      {
        v55 = v25;
        v56 = v23;
        v57 = v21;
        v58 = v19;
        viewModel = [(PUWallpaperPosterController *)self viewModel];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __89__PUWallpaperPosterController__updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment___block_invoke;
        v63[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
        *&v63[4] = v11;
        *&v63[5] = v13;
        *&v63[6] = v15;
        *&v63[7] = v17;
        [viewModel performChanges:v63];

        viewModel2 = [(PUWallpaperPosterController *)self viewModel];
        [viewModel2 containerFrame];
        PXRectWithSize();

        viewModel3 = [(PUWallpaperPosterController *)self viewModel];
        v29 = [viewModel3 deviceOrientation] - 3;

        if (v29 <= 1)
        {
          PXRectTransposed();
        }

        PXEdgeInsetsMake();
        PXEdgeInsetsInsetRect();
        x = v66.origin.x;
        y = v66.origin.y;
        width = v66.size.width;
        rect = v66.size.height;
        MaxX = CGRectGetMaxX(v66);
        v67.origin.x = v11;
        v67.origin.y = v13;
        v67.size.width = v15;
        v67.size.height = v17;
        if (MaxX >= CGRectGetMaxX(v67))
        {
          v51 = width;
          v52 = y;
          v53 = x;
          viewModel4 = [(PUWallpaperPosterController *)self viewModel];
          [viewModel4 salientContentFrame];
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;

          v68.origin.x = v36;
          v68.origin.y = v38;
          v68.size.width = v40;
          v68.size.height = v42;
          if (CGRectIsEmpty(v68) || (v69.origin.x = v11, v69.origin.y = v13, v69.size.width = v15, v69.size.height = v17, MaxY = CGRectGetMaxY(v69), v70.origin.x = v36, v70.origin.y = v38, v70.size.width = v40, v70.size.height = v42, MaxY >= CGRectGetMaxY(v70)))
          {
            v45 = v58;
            v47 = v55;
            v46 = v56;
          }

          else
          {
            v71.origin.x = v11;
            v71.origin.y = v13;
            v71.size.width = v15;
            v71.size.height = v17;
            MidY = CGRectGetMidY(v71);
            v72.origin.y = v52;
            v72.origin.x = v53;
            v72.size.width = v51;
            v72.size.height = rect;
            v44 = MidY - CGRectGetMidY(v72);
            v45 = v58;
            v47 = v55;
            v46 = v56;
            if (v44 < -65.0)
            {
              goto LABEL_15;
            }
          }

          v44 = 0.0;
LABEL_15:
          memset(&v62, 0, sizeof(v62));
          CGAffineTransformMakeTranslation(&v62, 0.0, v44);
          v73.origin.x = v45;
          v73.origin.y = v57;
          v73.size.width = v46;
          v73.size.height = v47;
          CGRectGetHeight(v73);
          v74.origin.x = v11;
          v74.origin.y = v13;
          v74.size.width = v15;
          v74.size.height = v17;
          CGRectGetHeight(v74);
          if (PXFloatEqualToFloatWithTolerance())
          {
            v48 = 0.0;
          }

          else
          {
            v48 = 0.25;
          }

          viewModel5 = [(PUWallpaperPosterController *)self viewModel];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __89__PUWallpaperPosterController__updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment___block_invoke_2;
          v59[3] = &__block_descriptor_88_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
          v60 = v62;
          v61 = v48;
          [viewModel5 performChanges:v59];

          [(PUWallpaperPosterController *)self _updateDebugRectViews];
        }
      }
    }
  }

LABEL_19:
}

void __89__PUWallpaperPosterController__updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  PXEdgeInsetsMake();
  [v2 setContainerInsets:?];
}

void __89__PUWallpaperPosterController__updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 64);
  v4 = a2;
  [v4 setAdaptiveLayoutTransform:&v6];
  [v4 setAnimationDuration:{*(a1 + 80), v6, v7, v8}];
  v5 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:250.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  [v4 setAnimationCurve:v5];
}

- (void)_updatePreferredTitleBounds
{
  if (PFPosterIsAdaptiveLayoutEnabled())
  {
    renderer = [(PUWallpaperPosterController *)self renderer];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke;
    v39[3] = &unk_1E7B79838;
    v39[4] = self;
    [renderer px_updatePreferences:v39];

    viewModel = [(PUWallpaperPosterController *)self viewModel];
    posterConfiguration = [(PUWallpaperPosterController *)self posterConfiguration];
    v6 = posterConfiguration;
    if (posterConfiguration)
    {
      shuffleConfiguration = [posterConfiguration shuffleConfiguration];
      v8 = [shuffleConfiguration shuffleType] == 1;
    }

    else
    {
      v8 = 0;
    }

    posterConfiguration2 = [(PUWallpaperPosterController *)self posterConfiguration];
    if (posterConfiguration2 && (v10 = posterConfiguration2, -[PUWallpaperPosterController posterConfiguration](self, "posterConfiguration"), v11 = objc_claimAutoreleasedReturnValue(), v12 = ([v11 allowedLayoutStrategies] >> 1) & 1, v11, v10, ((v12 | v8) & 1) == 0))
    {
      renderer2 = [(PUWallpaperPosterController *)self renderer];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke_2;
      v37[3] = &unk_1E7B79838;
      v38 = viewModel;
      [renderer2 px_updatePreferences:v37];

      [(PUWallpaperPosterController *)self _updateDebugRectViews];
    }

    else
    {
      [viewModel containerFrame];
      PXRectWithSize();
      environment = [(PUWallpaperPosterController *)self environment];
      px_deviceOrientation = [environment px_deviceOrientation];

      if ((px_deviceOrientation - 3) <= 1)
      {
        PXRectTransposed();
      }

      environment2 = [(PUWallpaperPosterController *)self environment];
      [environment2 px_minimumTitleBoundsForLayout:0];

      PXRectDenormalize();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      shuffleTransitionController = [(PUWallpaperPosterController *)self shuffleTransitionController];
      isAnimating = [shuffleTransitionController isAnimating];

      if (isAnimating)
      {
        shuffleTransitionController2 = [(PUWallpaperPosterController *)self shuffleTransitionController];
        [shuffleTransitionController2 additionalViewTitleHeightPresentationValue];
        v28 = v27;
      }

      else
      {
        [viewModel additionalViewTitleHeight];
        v28 = v29;
        if ([(PUWallpaperPosterController *)self _isShuffleConfiguration])
        {
          v28 = PUUserAdjustedAdditionalViewTitleHeightForViewModel(viewModel);
        }
      }

      v40.origin.x = v17;
      v40.origin.y = v19;
      v40.size.width = v21;
      v40.size.height = v23;
      v30 = v28 + CGRectGetMaxY(v40);
      v31 = 1.0;
      if ([viewModel supportsAdaptiveLayout])
      {
        [viewModel salientContentFrame];
        if (CGRectIsEmpty(v41))
        {
          [viewModel containerFrame];
          Height = CGRectGetHeight(v42);
        }

        else
        {
          [viewModel salientContentFrame];
          Height = CGRectGetMaxY(v43);
        }

        v31 = Height - v30;
      }

      renderer3 = [(PUWallpaperPosterController *)self renderer];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = v35;
      v36[2] = __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke_3;
      v36[3] = &unk_1E7B79860;
      v36[4] = self;
      *&v36[5] = v30;
      *&v36[6] = v31;
      [renderer3 px_updatePreferences:v36];

      [(PUWallpaperPosterController *)self _updateDebugRectViews];
    }
  }
}

void __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 posterConfiguration];
  if ([v5 configurationType] == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v3 setPx_adaptiveTimeMode:v4];
}

void __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 containerFrame];
  Width = CGRectGetWidth(v7);
  [*(a1 + 32) containerFrame];
  [v5 setPx_preferredSalientContentRectangle:{0.0, 0.0, Width, CGRectGetHeight(v8)}];
}

void __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 viewModel];
  [v6 containerFrame];
  [v5 setPx_preferredSalientContentRectangle:{0.0, v3, CGRectGetWidth(v8), *(a1 + 48)}];
}

- (BOOL)_shouldUpdatePreferredTitleBoundsWithEnvironment:(id)environment oldEnvironment:(id)oldEnvironment
{
  oldEnvironmentCopy = oldEnvironment;
  environmentCopy = environment;
  [environmentCopy px_minimumTitleBoundsForLayout:0];
  [environmentCopy px_maximumTitleBoundsForLayout:0];

  [oldEnvironmentCopy px_minimumTitleBoundsForLayout:0];
  [oldEnvironmentCopy px_maximumTitleBoundsForLayout:0];

  if (PXRectApproximatelyEqualToRect())
  {
    return PXRectApproximatelyEqualToRect() ^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)wantsSpatialPhotoContent
{
  v2 = PFPosterDeviceSupportsSpatialPhoto();
  if (v2)
  {

    LOBYTE(v2) = PFPosterIsSpatialPhotoEnabled();
  }

  return v2;
}

- (BOOL)wantsLowLuminanceContent
{
  if (PFPosterWantsLowLuminanceContent())
  {
    environment = [(PUWallpaperPosterController *)self environment];
    v4 = [environment px_isCallServices] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)dealloc
{
  observedPlayerItem = [(PUWallpaperPosterController *)self observedPlayerItem];
  [observedPlayerItem removeObserver:self forKeyPath:@"status" context:&PlayerItemObservationContext_43944];

  [(PUWallpaperPosterController *)self _endExtendedRenderSession];
  v4.receiver = self;
  v4.super_class = PUWallpaperPosterController;
  [(PUWallpaperPosterController *)&v4 dealloc];
}

- (PUWallpaperPosterController)initWithRenderer:(id)renderer photoLibrary:(id)library
{
  v23[1] = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
  libraryCopy = library;
  v21.receiver = self;
  v21.super_class = PUWallpaperPosterController;
  v9 = [(PUWallpaperPosterController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_renderer, renderer);
    objc_storeStrong(&v10->_photoLibrary, library);
    v11 = PLWallpaperGetLog();
    v10->_signpost = os_signpost_id_make_with_pointer(v11, v10);

    v10->_backlightLuminance = -1;
    v12 = objc_alloc_init(MEMORY[0x1E69DC638]);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)v12 setColor:whiteColor];

    [(UIActivityIndicatorView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    progressIndicator = v10->_progressIndicator;
    v10->_progressIndicator = v12;
    v15 = v12;

    [(PUWallpaperPosterController *)v10 _invalidateDebugHUD];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__lowPowerModeChanged_ name:*MEMORY[0x1E696A7D8] object:0];

    v17 = objc_alloc(MEMORY[0x1E695E000]);
    v18 = [v17 initWithSuiteName:*MEMORY[0x1E69BFFC0]];
    v22 = @"SBBlurPhotosWallpaperInAlwaysOn";
    v23[0] = MEMORY[0x1E695E118];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    [v18 registerDefaults:v19];
  }

  return v10;
}

+ (id)_nonBlockingLoadQueue
{
  if (_nonBlockingLoadQueue_onceToken != -1)
  {
    dispatch_once(&_nonBlockingLoadQueue_onceToken, &__block_literal_global_44139);
  }

  v3 = _nonBlockingLoadQueue_nonBlockingLoadQueue;

  return v3;
}

void __52__PUWallpaperPosterController__nonBlockingLoadQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.photos.wallpaperpostercontroller.nonblockingload", attr);
  v2 = _nonBlockingLoadQueue_nonBlockingLoadQueue;
  _nonBlockingLoadQueue_nonBlockingLoadQueue = v1;
}

@end