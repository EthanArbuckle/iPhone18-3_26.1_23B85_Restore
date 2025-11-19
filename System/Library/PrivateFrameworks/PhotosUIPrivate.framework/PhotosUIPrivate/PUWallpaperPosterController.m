@interface PUWallpaperPosterController
+ (id)_nonBlockingLoadQueue;
- (BOOL)_animateShuffleTransitionToSleep;
- (BOOL)_isShuffleConfigurationWithType:(int64_t *)a3;
- (BOOL)_isSmartShuffleConfiguration;
- (BOOL)_isSmartShuffleDescriptor;
- (BOOL)_shouldAnimateShuffleTransitionToSleep;
- (BOOL)_shouldUpdatePreferredTitleBoundsWithEnvironment:(id)a3 oldEnvironment:(id)a4;
- (BOOL)blurredNonSettlingEffect;
- (BOOL)blurredSettlingEffect;
- (BOOL)triggerPosterUpgradeIfNecessary;
- (BOOL)wantsLowLuminanceContent;
- (BOOL)wantsSpatialPhotoContent;
- (CGAffineTransform)_inactiveTransform;
- (CGRect)_adjustContainerFrameAvoidOcclusionRectsForCallServices:(CGRect)a3;
- (CGRect)_adjustedContainerFrameAvoidingOcclusionRects:(CGRect)a3;
- (CGRect)currentCallServicesOcclusionRect;
- (PUWallpaperPosterController)initWithRenderer:(id)a3 photoLibrary:(id)a4;
- (id)_createViewModelWithLayerStack:(id)a3 style:(id)a4;
- (id)_effectiveAvailableMedia;
- (id)_nameForBacklightLuminance:(int64_t)a3;
- (id)_nextPosterMedia;
- (id)_timelinesForDateInterval:(id)a3;
- (id)posterUpgradeService;
- (void)_animateShuffleTransitionFromViewModel:(id)a3 toViewModel:(id)a4 usingCrossfade:(BOOL)a5;
- (void)_beginExtendedRenderSessionForReason:(id)a3;
- (void)_endExtendedRenderSession;
- (void)_handleLowPowerModeChanged;
- (void)_handlePlayerItemDidFinish;
- (void)_handleSegmentationResponse:(id)a3;
- (void)_hidePosterMediaImage;
- (void)_hideProgressIndicator;
- (void)_invalidateCurrentPosterMedia;
- (void)_loadAssetFromWallpaperURL:(id)a3 async:(BOOL)a4 completion:(id)a5;
- (void)_loadAssetWithUUID:(id)a3 usePreviewLayers:(BOOL)a4;
- (void)_loadContentForCurrentPosterMedia:(BOOL)a3;
- (void)_loadContentsFromEnvironment;
- (void)_lowPowerModeChanged:(id)a3;
- (void)_observeCurrentPlayerItem;
- (void)_playInitialSettlingEffect;
- (void)_playSettlingEffect;
- (void)_playerItemDidFinish:(id)a3;
- (void)_prepareForShuffleTransition:(id)a3;
- (void)_registerForNotificationsFromRenderer:(id)a3;
- (void)_removeExistingViews;
- (void)_renderPreviewLayerStackFromWallpaperURL:(id)a3;
- (void)_showPosterMediaImage:(id)a3;
- (void)_showProgressIndicator;
- (void)_startLoopingSettlingEffectForGallery;
- (void)_transitionToBacklightLuminance:(int64_t)a3 previousBacklightLuminance:(int64_t)a4 animated:(BOOL)a5 interruptSettlingEffectPlayback:(BOOL)a6;
- (void)_unregisterForNotificationsFromRenderer:(id)a3;
- (void)_updateAdaptiveLayoutProperties;
- (void)_updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment:(id)a3;
- (void)_updateBackdropProperties;
- (void)_updateBacklightLuminance;
- (void)_updateCallServicesOcclusionViewWithRect:(CGRect)a3;
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
- (void)_updateWithFrameSpecifier:(id)a3;
- (void)dealloc;
- (void)handleLegibilityVignetteVisibilityDidChange:(BOOL)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)rendererDidInvalidate:(id)a3;
- (void)setBacklightLuminance:(int64_t)a3;
- (void)setCurrentPosterMedia:(id)a3;
- (void)setEnvironment:(id)a3;
- (void)setPosterConfiguration:(id)a3;
- (void)setPosterDescriptor:(id)a3;
- (void)setSignificantEventsCounter:(unint64_t)a3;
- (void)setViewModel:(id)a3;
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
    v3 = [(PUWallpaperPosterController *)self viewModel];
    v4 = [v3 viewManager];
    v5 = [v4 debugInfoViewIfLoaded];

    if (v5)
    {
      v6 = [(PUWallpaperPosterController *)self _effectiveAvailableMedia];
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = [(PUWallpaperPosterController *)self significantEventsCounter];
      if (v8 < [(PUWallpaperPosterController *)self significantEventsCounter]+ 30)
      {
        v9 = 0;
        do
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld, ", +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", v8, objc_msgSend(v6, "count"))];
          [v7 addObject:v10];

          if (v9 == [v6 count])
          {
            [v7 addObject:@"\n"];
            v9 = 0;
          }

          ++v9;
          ++v8;
        }

        while (v8 < [(PUWallpaperPosterController *)self significantEventsCounter]+ 30);
      }

      v11 = +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", -[PUWallpaperPosterController significantEventsCounter](self, "significantEventsCounter"), [v6 count]);
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
      [v5 displayAdditionalDebugInfo:v17];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PUWallpaperPosterController *)self observedPlayerItem];
  v14 = v13;
  if (BackgroundViewObservationContext_43943 == a6)
  {
    [(PUWallpaperPosterController *)self _updateContainerFrame];
  }

  else if (PlayerItemObservationContext_43944 == a6)
  {
    if (v13 == v11)
    {
      v15 = [v13 status];
      if (v15 == 1)
      {
        v18 = [MEMORY[0x1E69BDE40] globalSettings];
        v19 = [v18 disableMADForSettlingEffect];

        if (v19)
        {
          if (v11)
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

      else if (v15 == 2)
      {
        v16 = PLWallpaperGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [v14 error];
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v17;
          _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Settling effect video failed to load: %@", &buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PUWallpaperPosterController;
    [(PUWallpaperPosterController *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (a5 == "ViewModelObservationContext")
  {
    v20 = v9;
    v12 = v9;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      v19 = [v12 px_descriptionForAssertionMessage];
      [v15 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterController.m" lineNumber:2526 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v17, v19}];
    }

    else
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v15 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterController.m" lineNumber:2526 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v17}];
    }

LABEL_10:
    v13 = [v12 currentLayerStackPropertiesChange];
    if ((*&v6 & 0x80002) != 0)
    {
      [(PUWallpaperPosterController *)self _removeExistingViews];
      [(PUWallpaperPosterController *)self _updateViewHierarchy];
      [(PUWallpaperPosterController *)self _updateRenderPreferences];
    }

    if (v6 & 0x1000 | (v13 & 0x45))
    {
      [(PUWallpaperPosterController *)self _updateViewHierarchy];
      if ((v13 & 0x40) == 0)
      {
LABEL_14:
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }
    }

    else if ((v13 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    [(PUWallpaperPosterController *)self _updateRenderPreferences];
    if ((v6 & 0x80) == 0)
    {
LABEL_15:
      if ((v6 & 0x200000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

LABEL_24:
    [(PUWallpaperPosterController *)self _updateBacklightLuminance];
    if ((v6 & 0x200000) == 0)
    {
LABEL_16:
      if ((v6 & 0x20000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_25:
    [(PUWallpaperPosterController *)self _startLoopingSettlingEffectForGallery];
    if ((v6 & 0x20000000) == 0)
    {
LABEL_18:
      if ((v6 & 0x80800200) != 0 && ![(PUWallpaperPosterController *)self preparingShuffleTransition])
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

  if (ShuffleTransitionControllerObservationContext == a5)
  {
    v20 = v9;
    if ((v6 & 3) != 0)
    {
      [(PUWallpaperPosterController *)self _updatePreferredTitleBounds];
      v9 = v20;
    }

    if (v6)
    {
      v10 = [(PUWallpaperPosterController *)self shuffleTransitionController];
      v11 = [v10 isAnimating];

      if (v11)
      {
        [(PUWallpaperPosterController *)self _beginExtendedRenderSessionForReason:@"ShuffleTransition"];
      }

      else
      {
        [(PUWallpaperPosterController *)self _endExtendedRenderSession];
        v14 = [(PUWallpaperPosterController *)self renderer];
        [v14 px_noteContentSignificantlyChanged];
      }

      [(PUWallpaperPosterController *)self _updateAdaptiveLayoutProperties];
LABEL_29:
      v9 = v20;
    }
  }
}

- (void)_unregisterForNotificationsFromRenderer:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundView];
  [v5 removeObserver:self forKeyPath:@"layer.bounds" context:&BackgroundViewObservationContext_43943];

  v6 = [v4 backgroundView];

  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v8 _alwaysOnEnvironment];
  [v9 removeObserver:self];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 removeObserver:self name:*MEMORY[0x1E69DDB88] object:0];
}

- (void)_registerForNotificationsFromRenderer:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundView];
  [v5 addObserver:self forKeyPath:@"layer.bounds" options:0 context:&BackgroundViewObservationContext_43943];

  v6 = [v4 backgroundView];

  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v8 _alwaysOnEnvironment];
  [v9 addObserver:self];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel__updateSignificantEvents name:*MEMORY[0x1E69DDB88] object:0];
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "renderer invalidate", v6, 2u);
  }

  [(PUWallpaperPosterController *)self _unregisterForNotificationsFromRenderer:v4];
  PFSharedFigDecodeSessionDiscardCachedBuffers();
  [(PUWallpaperPosterController *)self setEnvironment:0];
}

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PLWallpaperGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "renderer initialize", v15, 2u);
  }

  [(PUWallpaperPosterController *)self _registerForNotificationsFromRenderer:v7];
  [(PUWallpaperPosterController *)self setEnvironment:v6];
  v9 = [(PUWallpaperPosterController *)self environment];
  if ([v9 px_isBackdrop])
  {

LABEL_6:
    v12 = [(PUWallpaperPosterController *)self renderer];
    [v12 px_updatePreferences:&__block_literal_global_399];

    goto LABEL_7;
  }

  v10 = [(PUWallpaperPosterController *)self environment];
  v11 = [v10 px_isCallServices];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = [(PUWallpaperPosterController *)self viewModel];
  v14 = [v13 settlingEffectEnabled];

  if (v14 && ([v6 px_isSnapshot] & 1) == 0 && (objc_msgSend(v6, "px_isPreview") & 1) == 0)
  {
    [(PUWallpaperPosterController *)self _playInitialSettlingEffect];
  }
}

- (void)_endExtendedRenderSession
{
  v3 = [(PUWallpaperPosterController *)self renderSessionExtension];

  if (v3)
  {
    v4 = PLWallpaperGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_INFO, "Ending extended render session", v6, 2u);
    }
  }

  v5 = [(PUWallpaperPosterController *)self renderSessionExtension];
  [v5 px_invalidate];

  [(PUWallpaperPosterController *)self setRenderSessionExtension:0];
}

- (void)_beginExtendedRenderSessionForReason:(id)a3
{
  v4 = a3;
  [(PUWallpaperPosterController *)self _endExtendedRenderSession];
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "Beginning extended render session", v8, 2u);
  }

  v6 = [(PUWallpaperPosterController *)self renderer];
  v7 = [v6 px_extendRenderSessionForReason:v4];

  [(PUWallpaperPosterController *)self setRenderSessionExtension:v7];
}

- (void)_observeCurrentPlayerItem
{
  v11 = [(PUWallpaperPosterController *)self observedPlayerItem];
  v3 = [(PUWallpaperPosterController *)self viewModel];
  v4 = [v3 viewManager];
  v5 = [v4 videoLayerView];
  v6 = [v5 player];
  v7 = [v6 currentItem];

  if (v11 != v7)
  {
    v8 = MEMORY[0x1E6987A10];
    if (v11)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 removeObserver:self name:*v8 object:v11];

      [v11 removeObserver:self forKeyPath:@"status" context:&PlayerItemObservationContext_43944];
    }

    if (v7)
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:self selector:sel__playerItemDidFinish_ name:*v8 object:v7];

      [v7 addObserver:self forKeyPath:@"status" options:0 context:&PlayerItemObservationContext_43944];
    }

    [(PUWallpaperPosterController *)self setObservedPlayerItem:v7];
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
    v5 = [(PUWallpaperPosterController *)self renderer];
    v6 = [v5 backgroundView];
    v7 = [(PUWallpaperPosterController *)self viewModel];
    v8 = [v7 viewManager];
    v29 = v7;
    v9 = [v7 currentLayerStack];
    v10 = [v9 backgroundLayer];
    v11 = [v8 viewForLayer:v10];

    v28 = v9;
    v12 = [v9 foregroundLayer];
    v13 = [v8 viewForLayer:v12];

    v14 = [v8 videoLayerView];
    v15 = [v14 player];
    if ([(PUWallpaperPosterController *)self loopingSettlingEffectForGallery])
    {
      [v15 pause];
      v16 = [v14 snapshotViewAfterScreenUpdates:0];
      [v14 bounds];
      [v16 setBounds:?];
      [v14 center];
      [v16 setCenter:?];
      if (v14)
      {
        [v14 transform];
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
      [v6 addSubview:v16];
      v23 = v6;
      v25 = dispatch_time(0, 50000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__PUWallpaperPosterController__handlePlayerItemDidFinish__block_invoke;
      block[3] = &unk_1E7B80C38;
      v37 = v15;
      v38 = v16;
      v19 = v15;
      v18 = v16;
      dispatch_after(v25, MEMORY[0x1E69E96A0], block);

      v22 = v37;
    }

    else
    {
      v17 = [(PUWallpaperPosterController *)self renderer];
      v18 = [v17 backgroundView];

      [v18 insertSubview:v14 belowSubview:v11];
      v19 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
      v26 = v6;
      v20 = objc_alloc(MEMORY[0x1E69DD278]);
      [(PUWallpaperPosterController *)self renderer];
      v21 = v27 = v5;
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
      v31 = v15;
      v32 = self;
      v23 = v26;
      v24 = v15;
      [v22 addCompletion:v30];
      [v22 startAnimation];

      v5 = v27;
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

- (void)_playerItemDidFinish:(id)a3
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
  v4 = [(PUWallpaperPosterController *)self viewModel];
  if ([v4 settlingEffectEnabled])
  {
    if ([v4 canCreateSettlingEffectLayerView])
    {
      [(PUWallpaperPosterController *)self _updateViewHierarchy];
    }

    else
    {
      v3 = [v4 viewManager];
      [v3 releaseVideoLayerView];

      [(PUWallpaperPosterController *)self _observeCurrentPlayerItem];
    }
  }
}

- (void)_lowPowerModeChanged:(id)a3
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
  v3 = [(PUWallpaperPosterController *)self viewModel];
  v4 = [v3 shouldLoopSettlingEffectForGallery];

  if (v4)
  {
    v5 = [(PUWallpaperPosterController *)self viewModel];
    v6 = [v5 viewManager];
    v7 = [v5 currentLayerStack];
    v8 = [v7 foregroundLayer];
    v9 = [v6 viewForLayer:v8];

    v10 = [v7 backgroundLayer];
    v11 = [v6 viewForLayer:v10];

    v12 = [v6 videoLayerView];
    v13 = [v6 videoLayerView];
    v14 = [v13 player];

    if (v12)
    {
      [(PUWallpaperPosterController *)self _observeCurrentPlayerItem];
      v15 = [v14 status];
      if (v15 == 1 && ![(PUWallpaperPosterController *)self loopingSettlingEffectForGallery])
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
        [v14 pause];
        *buf = *MEMORY[0x1E6960CC0];
        *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
        [v14 seekToTime:buf];
        v16 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
        v22 = objc_alloc(MEMORY[0x1E69DD278]);
        v23 = [(PUWallpaperPosterController *)self renderer];
        [v23 px_lowLuminanceAlphaAnimationDuration];
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
        v27 = v14;
        [v24 addCompletion:v26];
        [v24 startAnimation];

        goto LABEL_13;
      }

      v16 = PLWallpaperGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v15;
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
        *&buf[14] = v7;
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
  v3 = [(PUWallpaperPosterController *)self viewModel];
  v4 = [v3 viewManager];
  v5 = [v4 videoLayerView];
  v6 = [(PUWallpaperPosterController *)self renderer];
  v7 = [v6 backgroundView];

  [v7 bringSubviewToFront:v5];
  [v5 setAlpha:0.0];
  v8 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
  v9 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PUWallpaperPosterController__playInitialSettlingEffect__block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v13 = v5;
  v10 = v5;
  [v9 addAnimations:v12];
  [v9 startAnimation];
  [(PUWallpaperPosterController *)self _observeCurrentPlayerItem];
  [(PUWallpaperPosterController *)self _beginExtendedRenderSessionForSettlingEffect];
  v11 = [v10 player];
  [v11 play];
}

- (void)_playSettlingEffect
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterController *)self viewModel];
  v4 = [v3 viewManager];
  v5 = [v3 currentLayerStack];
  v6 = [v5 backgroundLayer];
  v7 = [v4 viewForLayer:v6];

  v8 = [v5 foregroundLayer];
  v9 = [v4 viewForLayer:v8];

  v10 = [v4 videoLayerView];
  if (v10)
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
      [v10 setAlpha:1.0];
      v13 = [v10 player];
      *buf = *MEMORY[0x1E6960CC0];
      *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
      [v13 seekToTime:buf];

      v14 = [v10 player];
      [v14 play];
    }

    else
    {
      v15 = [v10 player];
      [v15 pause];

      v16 = [v10 player];
      *buf = *MEMORY[0x1E6960CC0];
      *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
      [v16 seekToTime:buf];

      v17 = [(PUWallpaperPosterController *)self alphaAnimator];
      [v17 stopAnimation:1];

      v14 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
      v18 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v14 timingParameters:0.2];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __50__PUWallpaperPosterController__playSettlingEffect__block_invoke;
      v25[3] = &unk_1E7B80DD0;
      v19 = v10;
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
    v14 = PLWallpaperGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = 0;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Unable to play settling effect: video layer: %@, layer stack: %@", buf, 0x16u);
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
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PU_UNBLURRED_NON_SETTLING_EFFECT"] ^ 1;

  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E69BFFC0]];
  v6 = [v5 BOOLForKey:@"SBBlurPhotosWallpaperInAlwaysOn"];

  return v6 & v3;
}

- (BOOL)blurredSettlingEffect
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PU_UNBLURRED_SETTLING_EFFECT"];

  return v3 ^ 1;
}

- (void)_updatePreferences
{
  v3 = [(PUWallpaperPosterController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PUWallpaperPosterController__updatePreferences__block_invoke;
  v4[3] = &unk_1E7B80328;
  v4[4] = self;
  [v3 performChanges:v4];
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

- (id)_nameForBacklightLuminance:(int64_t)a3
{
  if ((a3 + 1) > 3)
  {
    return @"Full";
  }

  else
  {
    return off_1E7B79BC8[a3 + 1];
  }
}

- (void)_hidePosterMediaImage
{
  v4 = [(PUWallpaperPosterController *)self posterMediaImageView];
  [(PUWallpaperPosterController *)self setPosterMediaImageView:0];
  v3 = v4;
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = v4;
  }
}

- (void)_showPosterMediaImage:(id)a3
{
  v10 = a3;
  v4 = [(PUWallpaperPosterController *)self posterMediaImageView];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v4 setContentMode:2];
    v5 = [(PUWallpaperPosterController *)self renderer];
    v6 = [v5 backgroundView];

    [v6 bounds];
    [v4 setFrame:?];
    [v4 setAutoresizingMask:18];
    [v6 addSubview:v4];
    [(PUWallpaperPosterController *)self setPosterMediaImageView:v4];
  }

  v7 = MEMORY[0x1E69DCAB8];
  v8 = [v10 imageName];
  v9 = [v7 imageNamed:v8];

  [v4 setImage:v9];
}

- (id)_createViewModelWithLayerStack:(id)a3 style:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUWallpaperPosterController *)self posterConfiguration];
  if ([v8 configurationType] == 1)
  {
    v9 = [v8 shuffleConfiguration];
    v10 = [v9 shuffleType];

    if (v10 != 1)
    {
      v11 = [v8 editConfiguration];
      v12 = [v6 compoundLayerStackByUpdatingPortraitDepthEnabled:objc_msgSend(v11 landscapeDepthEnabled:{"isDepthEnabled"), objc_msgSend(v11, "isLandscapeDepthEnabled")}];

      v6 = v12;
    }
  }

  v13 = [(PXPosterRenderingEnvironment *)self->_environment px_boundingShape];
  if ([(PXPosterRenderingEnvironment *)self->_environment px_isCallServices]&& v13 == 2)
  {
    v14 = [v6 layout];
    v15 = [v14 portraitLayout];

    v16 = [v8 userInfo];
    v17 = v7;
    [v15 visibleFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [v15 imageSize];
    v27 = v26;
    [v15 imageSize];
    [PUWallpaperPosterFaceCropUtilities getSquareCropForVisibleFrame:v6 layerStack:v16 userInfo:v19 originalImage:v21, v23, v25, 0.0, 0.0, v27, v28];
    v29 = [v15 layoutByUpdatingVisibleFrame:?];

    v30 = [v29 layoutByUpdatingClockLayerOrder:*MEMORY[0x1E69C0BA0]];

    v31 = [v6 portraitLayerStack];
    v32 = [v31 layerStackByUpdatingLayout:v30];

    v33 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v32 landscapeLayerStack:0];
    v34 = [v33 portraitLayerStack];
    v35 = [v34 backgroundLayer];
    v36 = [v35 image];

    VTCreateCGImageFromCVPixelBuffer(v36, 0, &self->_posterImage);
    v7 = v17;

    v6 = v33;
    goto LABEL_21;
  }

  v37 = [(PXPosterRenderingEnvironment *)self->_environment px_isCallServices];
  v38 = [(PUWallpaperPosterController *)self environment];
  v39 = v38;
  if (v37)
  {
    [v38 px_titleBoundsForLayout:0];
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
      v51 = [(PUWallpaperPosterController *)self renderer];
      v52 = [v51 backgroundView];
      [v52 frame];
      v54 = v53;
      v56 = v55;

      [MEMORY[0x1E69C0938] specificConfigurationWithPortraitTitleBounds:v41 portraitScreenSize:v43 landscapeScreenSize:{v45, v47, v54, v56, v54, v56}];
    }

    else
    {
      [MEMORY[0x1E69C0938] deviceCallServicesConfigurationWithTitleBounds:{v41, v43, v45, v47}];
    }
    v72 = ;
    v58 = [v72 portraitConfiguration];

    v73 = [v6 layout];
    v60 = [v73 portraitLayout];

    v61 = [v60 configuration];
    if (([v61 isEqualToLayoutConfiguration:v58] & 1) == 0)
    {
      [v60 layoutByConformingGenericConfigurationToDevice:v58];
      v74 = v96 = v7;

      v75 = [v6 portraitLayerStack];
      v76 = [v75 layerStackByUpdatingLayout:v74];

      v77 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v76 landscapeLayerStack:0];
      v78 = [v77 portraitLayerStack];
      v79 = [v78 backgroundLayer];
      v80 = [v79 image];

      VTCreateCGImageFromCVPixelBuffer(v80, 0, &self->_posterImage);
      v60 = v74;
      v7 = v96;
      v6 = v77;
    }
  }

  else
  {
    v57 = [v38 px_isBackdrop];

    if (v57)
    {
      goto LABEL_21;
    }

    v58 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:1];
    v59 = [v6 layout];
    v60 = [v59 portraitLayout];

    v61 = [v60 configuration];
    if (([v61 isEqualToLayoutConfiguration:v58] & 1) == 0)
    {
      v95 = v7;
      v62 = PLWallpaperGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v62, OS_LOG_TYPE_DEFAULT, "Layout configuration mismatch detected, updating layout for current device", buf, 2u);
      }

      v94 = [v60 layoutByUpdatingConfiguration:v58];

      v63 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:2];
      v64 = [v6 layout];
      v65 = [v64 landscapeLayout];
      v66 = [v65 layoutByUpdatingConfiguration:v63];

      v67 = [v6 portraitLayerStack];
      v68 = [v67 layerStackByUpdatingLayout:v94];

      v69 = [v6 landscapeLayerStack];
      v70 = [v69 layerStackByUpdatingLayout:v66];

      v71 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v68 landscapeLayerStack:v70];
      v60 = v94;
      v7 = v95;
      v6 = v71;
    }
  }

LABEL_21:
  v81 = [(PUWallpaperPosterController *)self environment];
  v82 = [v81 px_isBackdrop];

  if (v82)
  {
    v83 = [(PUWallpaperPosterController *)self environment];
    if ([v83 px_isSnapshot])
    {

      v84 = 152;
    }

    else
    {
      v85 = [(PUWallpaperPosterController *)self environment];
      v86 = [v85 px_isPreview];

      if (v86)
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

  v87 = [(PUWallpaperPosterController *)self environment];
  v88 = [v87 px_isCallServices];

  if (v88)
  {
    v89 = v84 | 4;
  }

  else
  {
    v89 = v84;
  }

  v90 = [PUParallaxLayerStackViewModel alloc];
  v91 = [(PUWallpaperPosterController *)self environment];
  v92 = -[PUParallaxLayerStackViewModel initWithCompoundLayerStack:style:deviceOrientation:allowedBehaviors:](v90, "initWithCompoundLayerStack:style:deviceOrientation:allowedBehaviors:", v6, v7, [v91 px_deviceOrientation], v89);

  return v92;
}

- (void)_handleSegmentationResponse:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [a3 result:&v13];
  v5 = v13;
  if (!v4)
  {
    v9 = PLWallpaperGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Failed to obtain segmentation result, error: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v6 = [v4 compoundLayerStack];
  v7 = [(PUWallpaperPosterController *)self _createViewModelWithLayerStack:v6 style:0];
  [(PUWallpaperPosterController *)self setViewModel:v7];

  v8 = [(PUWallpaperPosterController *)self viewModel];
  LODWORD(v7) = [v8 settlingEffectEnabled];

  if (v7)
  {
    v9 = [(PUWallpaperPosterController *)self environment];
    if (([v9 px_isPlayground]& 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    v10 = [(PUWallpaperPosterController *)self environment];
    if ([v10 px_isSnapshot])
    {

      goto LABEL_8;
    }

    v11 = [(PUWallpaperPosterController *)self environment];
    v12 = [v11 px_isPreview];

    if ((v12 & 1) == 0)
    {
      [(PUWallpaperPosterController *)self _playInitialSettlingEffect];
    }
  }

LABEL_9:
  [(PUWallpaperPosterController *)self _hideProgressIndicator];
}

- (void)_loadAssetWithUUID:(id)a3 usePreviewLayers:(BOOL)a4
{
  v4 = a4;
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PUWallpaperPosterController *)self wantsLowLuminanceContent];
  v8 = 8;
  if (v4)
  {
    v9 = 8;
  }

  else
  {
    v9 = 321;
  }

  if (v4)
  {
    v10 = 128;
  }

  else
  {
    v8 = 325;
    v10 = 32;
  }

  if (v7)
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
  v34[0] = v6;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v15 = [(PUWallpaperPosterController *)self photoLibrary];
  v16 = [v15 librarySpecificFetchOptions];
  v17 = [v13 fetchAssetsWithUUIDs:v14 options:v16];
  v18 = [v17 firstObject];

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v18];
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

- (void)_loadAssetFromWallpaperURL:(id)a3 async:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PLWallpaperGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v8;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Attempt to load wallpaper from poster url: %{public}@", buf, 0xCu);
  }

  if (![(PXPosterRenderingEnvironment *)self->_environment px_isPreview])
  {
    if ([(PUWallpaperPosterController *)self wantsSpatialPhotoContent])
    {
      v14 = [(PUWallpaperPosterController *)self posterConfiguration];
      v15 = [v14 editConfiguration];
      if ([v15 isSpatialPhotoEnabled])
      {

        goto LABEL_15;
      }

      v16 = [(PUWallpaperPosterController *)self currentPosterMedia];
      v17 = [v16 editConfiguration];
      v18 = [v17 isSpatialPhotoEnabled];

      if (v18)
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

    v21 = [(PUWallpaperPosterController *)self posterConfiguration];
    v22 = [v21 editConfiguration];
    v23 = [v22 isSettlingEffectEnabled];

    if (v23)
    {
      v13 = v20 | 0x40;
    }

    else
    {
      v13 = v20;
    }

    goto LABEL_25;
  }

  v11 = [(PUWallpaperPosterController *)self posterDescriptor];
  v12 = [v11 descriptorType] == 5;

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
  v24 = v8;
  v30 = v24;
  v32[1] = v13;
  objc_copyWeak(v32, buf);
  v25 = v9;
  v31 = v25;
  v33 = v6;
  v26 = _Block_copy(aBlock);
  v27 = v26;
  if (v6)
  {
    v28 = [objc_opt_class() _nonBlockingLoadQueue];
    dispatch_async(v28, v27);
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

- (void)_renderPreviewLayerStackFromWallpaperURL:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v8 = [(PUWallpaperPosterController *)self posterDescriptor];
  v9 = [v8 styleCategory];
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
  [v7 renderPreviewLayerStackFromWallpaperURL:v4 styleCategory:v9 completion:v35];

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
      v66 = v4;
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
      v66 = v4;
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
    v66 = v4;
    v67 = 2048;
    v68 = v14;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_INFO, "Generated cold start preview layer stack from wallpaper url: %{public}@ in %0.1fs", buf, 0x16u);
  }

  v15 = [(PUWallpaperPosterController *)self _createViewModelWithLayerStack:v60[5] style:v54[5]];
  [(PUWallpaperPosterController *)self setViewModel:v15];

  if (v48[5])
  {
    v16 = PUWallpaperCacheDirectoryURL();
    v17 = [v4 lastPathComponent];
    v18 = [v16 URLByAppendingPathComponent:v17];

    v19 = [MEMORY[0x1E696AC08] defaultManager];
    [v19 removeItemAtURL:v18 error:0];

    v20 = v48[5];
    v21 = v60[5];
    v22 = v54[5];
    v34 = 0;
    LODWORD(v17) = [MEMORY[0x1E69BDF40] saveSegmentationItem:v20 compoundLayerStack:v21 style:v22 toWallpaperURL:v18 error:&v34];
    v23 = v34;
    if (v17)
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
    v66 = v4;
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

- (void)_loadContentForCurrentPosterMedia:(BOOL)a3
{
  v3 = a3;
  v39 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PUWallpaperPosterController__loadContentForCurrentPosterMedia___block_invoke;
  aBlock[3] = &unk_1E7B80638;
  objc_copyWeak(&v35, &location);
  v6 = _Block_copy(aBlock);
  v7 = [(PUWallpaperPosterController *)self currentPosterMedia];
  if (v7)
  {
    v8 = [(PUWallpaperPosterController *)self environment];
    if ([v8 px_isPlayground])
    {
      [(PUWallpaperPosterController *)self _showProgressIndicator];
    }

    if ([v7 mediaType] == 3)
    {
      v9 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = [v9 px_descriptionForAssertionMessage];
        [v22 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterController.m" lineNumber:1820 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"currentPosterMedia", v24, v25}];
      }

      [(PUWallpaperPosterController *)self _showPosterMediaImage:v9];
LABEL_30:

      goto LABEL_31;
    }

    [(PUWallpaperPosterController *)self _hidePosterMediaImage];
    v9 = [v8 px_assetDirectory];
    v27 = [v7 subpath];
    v26 = [(PUWallpaperPosterController *)self renderer];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v26 px_blockingLoadPolicy];
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
      if (!v9)
      {
LABEL_14:
        if (v10 != 2)
        {
          v13 = [(PUWallpaperPosterController *)self viewModel];
          v14 = v13 == 0;
          if (v13 && v3)
          {
            v14 = [v8 px_isPlayground];
          }

          if (v14)
          {
            v15 = [v7 assetUUID];
            v16 = [(PUWallpaperPosterController *)self environment];
            if ([v16 px_isCallServices])
            {
              v17 = [(PUWallpaperPosterController *)self environment];
              v18 = [v17 px_isSnapshot];
            }

            else
            {
              v18 = 0;
            }

            v19 = [(PUWallpaperPosterController *)self environment];
            v20 = [v19 px_isPlayground];

            if (v15 && ((v20 | v18) & 1) != 0)
            {
              [(PUWallpaperPosterController *)self _loadAssetWithUUID:v15 usePreviewLayers:v18];
            }

            else
            {
              v21 = PLWallpaperGetLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v38 = v15;
                _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "Invalid wallpaper directory for asset: %{public}@", buf, 0xCu);
              }
            }

            v6[2](v6);
          }
        }

        goto LABEL_30;
      }
    }

    if (v27)
    {
      v11 = [v9 URLByAppendingPathComponent:v27];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __65__PUWallpaperPosterController__loadContentForCurrentPosterMedia___block_invoke_2;
      v28[3] = &unk_1E7B79A90;
      objc_copyWeak(&v32, &location);
      v31 = v6;
      v29 = v8;
      v12 = v11;
      v30 = v12;
      v33 = v10 == 2;
      [(PUWallpaperPosterController *)self _loadAssetFromWallpaperURL:v12 async:v10 == 2 completion:v28];

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

- (void)setCurrentPosterMedia:(id)a3
{
  v9 = a3;
  v5 = self->_currentPosterMedia;
  v6 = v5;
  if (v5 == v9)
  {
  }

  else
  {
    v7 = [(PFPosterMedia *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      currentPosterMedia = self->_currentPosterMedia;
      objc_storeStrong(&self->_currentPosterMedia, a3);
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
  v3 = [(PUWallpaperPosterController *)self _nextPosterMedia];
  [(PUWallpaperPosterController *)self setCurrentPosterMedia:v3];
}

- (id)_nextPosterMedia
{
  v3 = [(PUWallpaperPosterController *)self posterConfiguration];
  v4 = [(PUWallpaperPosterController *)self _effectiveAvailableMedia];
  v5 = [v3 configurationType];
  if (!-[PUWallpaperPosterController _isSmartShuffleDescriptor](self, "_isSmartShuffleDescriptor") && v5 != 1 || (-[PUWallpaperPosterController environment](self, "environment"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 px_isSnapshot], v6, (v7 & 1) != 0))
  {
    v8 = [v4 firstObject];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v11 = [(PUWallpaperPosterController *)self environment];
  v12 = [v11 px_isPlayground];

  if (v12)
  {
    v13 = [(PUWallpaperPosterController *)self significantEventsCounter];
    v14 = v13 % [v4 count];
  }

  else
  {
    v14 = +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", -[PUWallpaperPosterController significantEventsCounter](self, "significantEventsCounter"), [v4 count]);
  }

  if (v14 < [v4 count])
  {
    v8 = [v4 objectAtIndexedSubscript:v14];
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
  v3 = [(PUWallpaperPosterController *)self viewModel];
  v4 = [v3 viewManager];

  v5 = [(PUWallpaperPosterController *)self environment];
  v6 = [v4 spatialPhotoBackgroundLayerView];
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 BOOLForKey:@"PUWallpaperWorkaroundNoGyroEventsInGallery"];

  if (v8)
  {
    [v6 setEnableGyroAnimator:1];
  }

  else
  {
    if (v5)
    {
      [v5 deviceAttitude];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    [v6 setAttitude:&v9];
  }

  [v5 px_unlockProgress];
  [v6 setUnlockProgress:?];
  [v5 px_backlightProgress];
  [v6 setBacklightProgress:?];
}

- (void)_updateBackdropProperties
{
  v6 = [(PUWallpaperPosterController *)self environment];
  if ([v6 px_isBackdrop])
  {
    v3 = [(PUWallpaperPosterController *)self environment];
    if ([v3 px_isSnapshot])
    {
    }

    else
    {
      v4 = [(PUWallpaperPosterController *)self environment];
      v5 = [v4 px_isPreview];

      if (v5)
      {
        return;
      }

      v6 = [(PUWallpaperPosterController *)self viewModel];
      [v6 performChanges:&__block_literal_global_341];
    }
  }
}

- (void)_updateRenderPreferences
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterController *)self viewModel];
  v4 = [v3 currentLayerStack];

  v5 = [v4 spatialPhotoBackgroundLayer];

  if ([v4 settlingEffectEnabled])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v5 != 0);
  }

  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v5)
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

  v10 = [(PUWallpaperPosterController *)self renderer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PUWallpaperPosterController__updateRenderPreferences__block_invoke;
  v11[3] = &__block_descriptor_41_e63_v24__0___PXPosterMutablePreferences__8___PXPosterTransition__16l;
  v12 = v5 != 0;
  v11[4] = v6;
  [v10 px_updatePreferences:v11];
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

- (void)_updateWithFrameSpecifier:(id)a3
{
  v7 = [a3 entrySpecifierForTimelineIdentifier:@"shuffle-update"];
  v4 = [v7 previousTimelineEntry];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userObject];
    -[PUWallpaperPosterController setSignificantEventsCounter:](self, "setSignificantEventsCounter:", [v6 integerValue] + 1);
  }
}

- (id)_timelinesForDateInterval:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [getBLSAlwaysOnTimelineClass() emptyTimelineWithIdentifier:@"no-shuffle"];
  v19[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  v7 = [(PUWallpaperPosterController *)self posterConfiguration];
  if ([v7 configurationType] == 1)
  {
    v8 = [v7 shuffleConfiguration];
    v9 = [v8 shuffleFrequency];

    if ((v9 - 3) <= 1)
    {
      v10 = [MEMORY[0x1E695DF00] date];
      v11 = PUPosterShuffleNextSignificantEventDateForDate(v10, v9);

      if ([v4 containsDate:v11])
      {
        v12 = dbl_1B3D0CF00[v9 == 3];
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
  v3 = [(PUWallpaperPosterController *)self posterConfiguration];
  v4 = [MEMORY[0x1E695DF00] date];
  if ([v3 configurationType] == 1)
  {
    v5 = [v3 shuffleConfiguration];
    v6 = [v5 shuffleFrequency];

    if ((v6 - 3) < 2)
    {
      v10 = [MEMORY[0x1E695DF00] date];
      v11 = PUPosterShuffleNextSignificantEventDateForDate(v10, v6);

      [v11 timeIntervalSinceDate:v4];
      v9 = (v12 * 1000000000.0);

      v8 = 1;
    }

    else
    {
      v7 = 2;
      if (v6 != 1)
      {
        v7 = 0;
      }

      if (v6 == 2)
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
    v14 = [(PUWallpaperPosterController *)self renderer];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__PUWallpaperPosterController__updateSignificantEvents__block_invoke;
    v15[3] = &__block_descriptor_48_e63_v24__0___PXPosterMutablePreferences__8___PXPosterTransition__16l;
    v15[4] = v13;
    v15[5] = v8;
    [v14 px_updatePreferences:v15];
  }
}

void __55__PUWallpaperPosterController__updateSignificantEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSignificantEventTime:v3];
  [v4 setSignificantEventOptions:*(a1 + 40)];
}

- (void)setSignificantEventsCounter:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_significantEventsCounter != a3)
  {
    self->_significantEventsCounter = a3;
    [(PUWallpaperPosterController *)self _updateSignificantEvents];
    v5 = [(PUWallpaperPosterController *)self _shouldAnimateShuffleTransitionToSleep];
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUWallpaperPosterController needsFirstLockSignificantEvent](self, "needsFirstLockSignificantEvent")}];
      v8 = [MEMORY[0x1E696AD98] numberWithBool:!v5];
      *buf = 134218498;
      v16 = a3;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "setSignificantEventsCounter:%ld simulatingFirstLockEvent:%@ updateCurrentPosterMedia:%@", buf, 0x20u);
    }

    if (!v5)
    {
      v9 = [(PUWallpaperPosterController *)self posterConfiguration];
      v10 = [v9 shuffleConfiguration];

      if ([v10 shuffleFrequency] == 2)
      {
        [(PUWallpaperPosterController *)self _updateCurrentPosterMedia];
      }

      else
      {
        v11 = [(PUWallpaperPosterController *)self viewModel];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __59__PUWallpaperPosterController_setSignificantEventsCounter___block_invoke;
        v14[3] = &unk_1E7B80DD0;
        v14[4] = self;
        [(PUWallpaperPosterController *)self _prepareForShuffleTransition:v14];
        v12 = [(PUWallpaperPosterController *)self viewModel];
        if ([(PUWallpaperPosterController *)self _isShuffleConfigurationWithType:0])
        {
          LOBYTE(v13) = 0;
        }

        else
        {
          v13 = ![(PUWallpaperPosterController *)self _isSmartShuffleDescriptor];
        }

        if (v11 && v11 != v12 && (v13 & 1) == 0)
        {
          [(PUWallpaperPosterController *)self _animateShuffleTransitionFromViewModel:v11 toViewModel:v12 usingCrossfade:0];
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
    v5 = [(PUWallpaperPosterController *)self photoLibrary];
    v6 = [v5 photoAnalysisClient];
    v7 = [v4 initWithServiceProvider:v6];
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
  v3 = [(PUWallpaperPosterController *)self environment];
  v4 = [v3 px_assetDirectory];

  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 path];
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Triggering upgrade of current poster configuration with asset directory: %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [MEMORY[0x1E69C0938] deviceConfiguration];
  v9 = [v8 dictionaryRepresentation];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69BE0B8]];

  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    v10 = 35;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(PUWallpaperPosterController *)self posterConfiguration];
  v12 = [v11 editConfiguration];
  v13 = [v12 isSettlingEffectEnabled];

  if (v13)
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

  v15 = [(PUWallpaperPosterController *)self posterConfiguration];
  v16 = [v15 editConfiguration];
  if ([v16 isSpatialPhotoEnabled])
  {
  }

  else
  {
    v17 = [(PUWallpaperPosterController *)self currentPosterMedia];
    v18 = [v17 editConfiguration];
    v19 = [v18 isSpatialPhotoEnabled];

    if (!v19)
    {
      goto LABEL_17;
    }
  }

  v20 = [(PUWallpaperPosterController *)self _isSmartShuffleConfiguration];
  v21 = 1280;
  if (v20)
  {
    v21 = 256;
  }

  v14 |= v21;
LABEL_17:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  [v7 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69BE0B0]];

  v23 = [(PFPosterConfiguration *)self->_posterConfiguration allowedLayoutStrategies];
  if ([(PUWallpaperPosterController *)self _isSmartShuffleConfiguration]&& PFPosterIsAdaptiveLayoutEnabled())
  {
    v23 |= 2uLL;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23];
  [v7 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69BE0A8]];

  if ([(PUWallpaperPosterController *)self _isSmartShuffleConfiguration])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BE0C0]];
  }

  v25 = [(PUWallpaperPosterController *)self posterUpgradeService];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51__PUWallpaperPosterController_triggerPosterUpgrade__block_invoke;
  v27[3] = &unk_1E7B80280;
  v28 = v4;
  v26 = v4;
  [v25 upgradePosterConfigurationWithAssetDirectory:v26 options:v7 reply:v27];
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

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v7 objectForKey:@"PI_PARALLAX_ENABLE_MIGRATION"];

    if (v3 && ([v3 BOOLValue]& 1) == 0)
    {
      v8 = PLWallpaperGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Not triggering poster upgrade: disabled", buf, 2u);
      }

      v5 = 0;
      goto LABEL_55;
    }

    v8 = [(PFPosterConfiguration *)self->_posterConfiguration layoutConfiguration];
    v9 = [MEMORY[0x1E69C0938] deviceConfiguration];
    v10 = [v9 landscapeConfiguration];

    if (v10)
    {
      if (([v8 isEqualToLayoutConfiguration:v9]& 1) != 0)
      {
LABEL_16:
        v11 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = [v8 portraitConfiguration];
      v13 = [v9 portraitConfiguration];
      v14 = [v12 isEqualToLayoutConfiguration:v13];

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
      v36 = v8;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "layoutConfig: %{public}@", buf, 0xCu);
    }

    v17 = PLWallpaperGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v9;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "deviceConfig: %{public}@", buf, 0xCu);
    }

    v11 = 1;
LABEL_28:
    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v18 = [v8 landscapeConfiguration];
      v19 = v18 == 0;
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

    v22 = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [v22 BOOLForKey:@"PI_PARALLAX_FORCE_MIGRATION"];

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
  v11 = [(PUWallpaperPosterController *)self posterDescriptor];
  v3 = [(PUWallpaperPosterController *)self posterConfiguration];
  v4 = [v11 shuffleConfiguration];
  if (v4)
  {

LABEL_4:
    v6 = [PUWallpaperShuffleTransitionController alloc];
    v7 = [(PUWallpaperPosterController *)self renderer];
    v8 = [(PUWallpaperShuffleTransitionController *)v6 initWithRenderer:v7];
    [(PUWallpaperPosterController *)self setShuffleTransitionController:v8];

    v9 = [(PUWallpaperPosterController *)self shuffleTransitionController];
    [v9 registerChangeObserver:self context:ShuffleTransitionControllerObservationContext];

    goto LABEL_5;
  }

  v5 = [v3 shuffleConfiguration];

  if (v5)
  {
    goto LABEL_4;
  }

  v10 = [(PUWallpaperPosterController *)self shuffleTransitionController];
  [v10 unregisterChangeObserver:self context:ShuffleTransitionControllerObservationContext];

  [(PUWallpaperPosterController *)self setShuffleTransitionController:0];
LABEL_5:
}

- (id)_effectiveAvailableMedia
{
  v3 = [(PUWallpaperPosterController *)self posterDescriptor];
  v4 = [v3 media];
  if ([v4 count])
  {
    [(PUWallpaperPosterController *)self posterDescriptor];
  }

  else
  {
    [(PUWallpaperPosterController *)self posterConfiguration];
  }
  v5 = ;
  v6 = [v5 media];

  return v6;
}

- (BOOL)_isSmartShuffleDescriptor
{
  v2 = [(PUWallpaperPosterController *)self posterDescriptor];
  v3 = [v2 descriptorType] == 2;

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

- (BOOL)_isShuffleConfigurationWithType:(int64_t *)a3
{
  v4 = [(PUWallpaperPosterController *)self posterConfiguration];
  v5 = [v4 configurationType];
  if (v5 == 1)
  {
    v6 = [v4 shuffleConfiguration];
    v7 = [v6 shuffleType];

    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = -1;
  if (a3)
  {
LABEL_5:
    *a3 = v7;
  }

LABEL_6:

  return v5 == 1;
}

- (void)setPosterConfiguration:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_posterConfiguration;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(PFPosterConfiguration *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_posterConfiguration, a3);
      v9 = PLWallpaperGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v5;
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

- (void)setPosterDescriptor:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_posterDescriptor;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(PFPosterDescriptor *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_posterDescriptor, a3);
      v9 = PLWallpaperGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v5;
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
  v4 = [(PUWallpaperPosterController *)self environment];
  v5 = [v4 px_assetDirectory];

  v6 = [(PUWallpaperPosterController *)self environment];
  v7 = [v6 px_contentsType];

  switch(v7)
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
        v37 = v5;
        _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_DEFAULT, "Loading poster descriptor from url %{public}@", buf, 0xCu);
      }

      v35 = 0;
      v13 = [MEMORY[0x1E69C07F0] loadFromURL:v5 error:&v35];
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
        v37 = v5;
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
        v37 = v5;
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
        v37 = v5;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Loading poster configuration from url %{public}@", buf, 0xCu);
      }

      v34 = 0;
      v13 = [MEMORY[0x1E69C07E8] loadFromURL:v5 error:&v34];
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
        v37 = v5;
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
        v37 = v5;
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
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterController.m" lineNumber:1349 description:{@"Unknown contents type for environment contents: %@", v5}];

      abort();
  }
}

- (CGAffineTransform)_inactiveTransform
{
  v4 = [(PUWallpaperPosterController *)self viewModel];
  [v4 inactiveFrame];
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
    v6 = [v4 currentLayerStack];
    v7 = [v6 layout];
    v8 = [v7 layoutVariant];

    if (v8 != 2)
    {
      [v4 containerFrame];
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
      [v4 visibleFrame];
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
  v3 = [(PUWallpaperPosterController *)self posterConfiguration];
  v4 = [v3 shuffleConfiguration];
  v5 = [v4 shuffleFrequency];

  v6 = [(PUWallpaperPosterController *)self backlightLuminance]== 1 && [(PUWallpaperPosterController *)self wantsLowLuminanceContent];
  v7 = [(PUWallpaperPosterController *)self _nextPosterMedia];
  if (v7)
  {
    v8 = [(PUWallpaperPosterController *)self currentPosterMedia];
    v9 = v8;
    if (v8 == v7)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v10 = [v8 isEqual:v7] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return (v5 == 2) & v6 & v10;
}

- (void)_animateShuffleTransitionFromViewModel:(id)a3 toViewModel:(id)a4 usingCrossfade:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PUWallpaperPosterController *)self shuffleTransitionController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PUWallpaperPosterController__animateShuffleTransitionFromViewModel_toViewModel_usingCrossfade___block_invoke;
  v13[3] = &unk_1E7B799D8;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  [v10 performChanges:v13];
}

- (void)_prepareForShuffleTransition:(id)a3
{
  v4 = a3;
  [(PUWallpaperPosterController *)self setPreparingShuffleTransition:1];
  v4[2](v4);

  [(PUWallpaperPosterController *)self setPreparingShuffleTransition:0];
}

- (BOOL)_animateShuffleTransitionToSleep
{
  v3 = [(PUWallpaperPosterController *)self _nextPosterMedia];
  if (v3)
  {
    v4 = [(PUWallpaperPosterController *)self currentPosterMedia];
    v5 = v4;
    if (v4 == v3)
    {
    }

    else
    {
      v6 = [v4 isEqual:v3];

      if ((v6 & 1) == 0)
      {
        v7 = [(PUWallpaperPosterController *)self viewModel];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __63__PUWallpaperPosterController__animateShuffleTransitionToSleep__block_invoke;
        v11[3] = &unk_1E7B80DD0;
        v11[4] = self;
        [(PUWallpaperPosterController *)self _prepareForShuffleTransition:v11];
        v8 = [(PUWallpaperPosterController *)self viewModel];
        v9 = v7 != v8;
        if (v7 != v8)
        {
          [(PUWallpaperPosterController *)self _animateShuffleTransitionFromViewModel:v7 toViewModel:v8 usingCrossfade:1];
        }

        goto LABEL_11;
      }
    }
  }

  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "_animateShuffleTransitionToSleep called when next media wasn't available", buf, 2u);
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_transitionToBacklightLuminance:(int64_t)a3 previousBacklightLuminance:(int64_t)a4 animated:(BOOL)a5 interruptSettlingEffectPlayback:(BOOL)a6
{
  v145 = a6;
  v159 = a5;
  v233 = *MEMORY[0x1E69E9840];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v7 = [MEMORY[0x1E696AE30] processInfo];
  v147 = [v7 isLowPowerModeEnabled];

  v153 = [(PUWallpaperPosterController *)self renderer];
  v8 = [(PUWallpaperPosterController *)self viewModel];
  v9 = [v8 viewManager];
  v154 = v8;
  v10 = [v8 currentLayerStack];
  v11 = [v10 backgroundLayer];
  v12 = [v9 viewForLayer:v11];

  v13 = [v10 foregroundLayer];
  v14 = [v9 viewForLayer:v13];

  v15 = [v10 inactiveForegroundLayer];
  v16 = [v9 viewForLayer:v15];

  v17 = [v10 inactiveBackgroundLayer];
  v18 = [v9 viewForLayer:v17];

  v19 = [v10 spatialPhotoForegroundLayer];
  v164 = [v9 viewForLayer:v19];

  v20 = [v10 spatialPhotoBackgroundLayer];
  v163 = [v9 viewForLayer:v20];

  v21 = [v9 videoLayerView];
  v158 = [v21 player];
  v22 = [(PUWallpaperPosterController *)self wantsLowLuminanceContent];
  v23 = PLWallpaperGetLog();
  v162 = v18;
  v157 = v21;
  v165 = self;
  v152 = v14;
  v149 = v16;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v154)
    {
      v24 = v22;
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
    v26 = v9;
    v27 = v40 && v24;
    LODWORD(v143) = v18 == 0;
    v28 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:a3, v143];
    v29 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:a4];
    if (v159)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    *buf = 138414082;
    if ([v10 settlingEffectEnabled])
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v40 = (v27 & v143) == 0;
    v9 = v26;
    v16 = v149;
    *&buf[4] = v28;
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

    if (v147)
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
    v21 = v157;
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

    v35 = a3;
    goto LABEL_34;
  }

  [v12 frame];
  v35 = a3;
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

  v40 = v35 == 1 || a4 == 1;
  v41 = v40;
  v42 = v41 ^ 1;
  if (v35 == -1)
  {
    v42 = 1;
  }

  if (v35 == 2)
  {
    v42 = 1;
  }

  v151 = v42;
  if ([v10 settlingEffectEnabled])
  {
    v43 = [(PUWallpaperPosterController *)self blurredSettlingEffect];
  }

  else
  {
    v43 = [(PUWallpaperPosterController *)self blurredNonSettlingEffect];
  }

  if ((v41 & v43) == 1)
  {
    v44 = [v10 settlingEffectEnabled];
    v45 = [v12 layer];
    v46 = [v45 filters];
    v47 = [v46 count];

    v48 = MEMORY[0x1E6979280];
    if (!v47)
    {
      v49 = v16;
      if (v44)
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
      if (v44)
      {
        v66 = [v63 mutableCopy];
        [v66 addObject:v144];
        v65 = [v66 copy];
      }

      v67 = [v162 layer];
      [v67 setFilters:v64];

      v68 = [v49 layer];
      [v68 setFilters:v64];

      v69 = [v163 layer];
      [v69 setFilters:v65];

      v70 = [v164 layer];
      [v70 setFilters:v65];

      v71 = [v157 layer];
      [v71 setFilters:v65];

      v72 = [v12 layer];
      [v72 setFilters:v65];

      v73 = [v62 layer];
      [v73 setFilters:v65];

      v14 = v62;
      v16 = v49;
    }

    if (a3 == 2 || a3 == -1)
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
    if (v44 && a3 != -1 && a3 != 2)
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
    v229 = v44;
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
    v21 = v157;
    v215 = v157;
    v216 = v12;
    v217 = v14;
    v79 = v78;
    v80 = _Block_copy(v209);
    v81 = v80;
    self = v165;
    if (v159)
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
    v54 = [v18 layer];
    v55 = MEMORY[0x1E695E0F0];
    [v54 setFilters:MEMORY[0x1E695E0F0]];

    v56 = [v16 layer];
    [v56 setFilters:v55];

    v57 = [v163 layer];
    [v57 setFilters:v55];

    v58 = [v164 layer];
    [v58 setFilters:v55];

    v59 = [v21 layer];
    [v59 setFilters:v55];

    v60 = [v12 layer];
    [v60 setFilters:v55];

    v61 = [v14 layer];
    [v61 setFilters:v55];
  }

  if ([v10 settlingEffectEnabled])
  {
    [v16 setAlpha:0.0];
    v83 = [v158 currentItem];
    v84 = [v83 status];

    if (v21)
    {
      v85 = v84 == 2;
    }

    else
    {
      v85 = 1;
    }

    v86 = !v85;
    switch(a3)
    {
      case 2:
        if (v159)
        {
          v87 = v86 & (v147 ^ 1);
          v88 = v87 ^ 1;
          if (a4 == -1)
          {
            v88 = 1;
          }

          if (v88)
          {
            if ((v87 & 1) == 0)
            {
              [v21 setAlpha:0.0];
              v206[0] = MEMORY[0x1E69E9820];
              v206[1] = 3221225472;
              v206[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_312;
              v206[3] = &unk_1E7B80C38;
              v207 = v12;
              v208 = v14;
              v115 = _Block_copy(v206);
              v116 = v115;
              if (a4 == 1)
              {
                v117 = [(PUWallpaperPosterController *)self alphaAnimator];
                [v117 stopAnimation:1];

                v118 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
                v119 = objc_alloc(MEMORY[0x1E69DD278]);
                [v153 px_lowLuminanceAlphaAnimationDuration];
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

        [v158 rate];
        if (v110 != 0.0)
        {
          v111 = PLWallpaperGetLog();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            v112 = @"Ignoring";
            if (v145)
            {
              v112 = @"Honoring";
            }

            *buf = 138412290;
            *&buf[4] = v112;
            _os_log_impl(&dword_1B36F3000, v111, OS_LOG_TYPE_INFO, "%@ request to end settling effect to accommodate unanimated transition to full luminance", buf, 0xCu);
          }
        }

        if (v145)
        {
          *buf = *MEMORY[0x1E6960CC0];
          *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
          [v158 seekToTime:buf];
          [v158 pause];
          [v12 setAlpha:1.0];
          v113 = 1.0;
          v114 = v14;
          goto LABEL_130;
        }

        break;
      case 1:
        [v158 pause];
        if (v159)
        {
          [v12 alpha];
          if (v101 == 1.0)
          {
            [v21 setAlpha:0.0];
          }

          v102 = [(PUWallpaperPosterController *)self alphaAnimator];
          [v102 stopAnimation:1];

          v103 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
          v104 = objc_alloc(MEMORY[0x1E69DD278]);
          [v153 px_lowLuminanceAlphaAnimationDuration];
          v105 = [v104 initWithDuration:v103 timingParameters:?];
          v202[0] = MEMORY[0x1E69E9820];
          v202[1] = 3221225472;
          v202[2] = __131__PUWallpaperPosterController__transitionToBacklightLuminance_previousBacklightLuminance_animated_interruptSettlingEffectPlayback___block_invoke_2_313;
          v202[3] = &unk_1E7B809F0;
          v203 = v12;
          v204 = v14;
          v205 = v21;
          [v105 addAnimations:v202];
          [v105 startAnimation];
          [(PUWallpaperPosterController *)self setAlphaAnimator:v105];

          goto LABEL_131;
        }

        [v12 setAlpha:0.0];
        [v14 setAlpha:0.0];
        v113 = 0.0;
        v114 = v21;
LABEL_130:
        [v114 setAlpha:v113];
LABEL_131:
        [(PUWallpaperPosterController *)self _endExtendedRenderSession];
        break;
      case 0:
        [v12 setAlpha:0.0];
        [v14 setAlpha:0.0];
        [v21 setAlpha:1.0];
        *buf = *MEMORY[0x1E6960CC0];
        *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
        [v158 seekToTime:buf];
        [v158 pause];
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
    v91 = self;
    v92 = v14;
    v197 = v92;
    v93 = v90;
    v198 = v93;
    v94 = v18;
    v199 = v94;
    v148 = _Block_copy(v195);
    v95 = [(PUWallpaperPosterController *)v91 transformAnimator];
    [v95 stopAnimation:1];

    v96 = !v159;
    v160 = !v159;
    if (!a3 || IsReduceMotionEnabled || v96)
    {
      v148[2]();
      v100 = v165;
    }

    else
    {
      v97 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
      v98 = objc_alloc(MEMORY[0x1E69DD278]);
      [v153 px_backlightTransformAnimationDuration];
      v99 = [v98 initWithDuration:v97 timingParameters:?];
      [v99 addAnimations:v148];
      [v99 startAnimation];
      v100 = v165;
      [(PUWallpaperPosterController *)v165 setTransformAnimator:v99];
    }

    v14 = v152;
    if ([(PUWallpaperPosterController *)v100 wantsLowLuminanceContent])
    {
      if (a3 == 1)
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
        v108 = [v89 currentLayoutInfo];
        v109 = v108;
        if (v108)
        {
          [v108 additionalTransform];
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

        v122 = [v92 currentLayoutInfo];
        v123 = v122;
        if (v122)
        {
          [v122 additionalTransform];
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

        [(PUWallpaperPosterController *)v165 _inactiveTransform];
        *buf = v189;
        *&buf[16] = v190;
        *v231 = v191;
        [v94 setTransform:buf];
        [(PUWallpaperPosterController *)v165 _inactiveTransform];
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
      v179[4] = v165;
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
      v134 = [(PUWallpaperPosterController *)v165 alphaAnimator];
      v135 = v134;
      if (a4)
      {
        v136 = v160;
      }

      else
      {
        v136 = 1;
      }

      if (!a3 || v136)
      {
        if ([v134 isRunning])
        {
          [v135 stopAnimation:1];
          v129[2](v129);
        }

        v133[2](v133);
        v127[2](v127);
      }

      else
      {
        [v134 stopAnimation:1];
        v137 = *MEMORY[0x1E6979CF8];
        v138 = [v132 layer];
        [v138 setCompositingFilter:v137];

        v167 = v12;
        v139 = v10;
        v140 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:0];
        v141 = objc_alloc(MEMORY[0x1E69DD278]);
        [v153 px_lowLuminanceAlphaAnimationDuration];
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
        [(PUWallpaperPosterController *)v165 setAlphaAnimator:v142];

        v10 = v139;
        v12 = v167;
      }

      v14 = v152;
    }

    v16 = v149;
    v18 = v162;
    v21 = v157;
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

- (void)setBacklightLuminance:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  backlightLuminance = self->_backlightLuminance;
  if (backlightLuminance != a3)
  {
    self->_backlightLuminance = a3;
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:a3];
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "setBacklightLuminance: %@", &v20, 0xCu);
    }

    v8 = [(PUWallpaperPosterController *)self posterConfiguration];
    v9 = [v8 shuffleConfiguration];
    v10 = [v9 shuffleFrequency];

    if (a3 == 1)
    {
      v11 = ![(PUWallpaperPosterController *)self wantsLowLuminanceContent];
    }

    else
    {
      v11 = 1;
    }

    v13 = a3 == 1 || backlightLuminance == 1;
    v14 = [(PUWallpaperPosterController *)self viewModel];
    v15 = [v14 settlingEffectEnabled];

    if (backlightLuminance == 2 && v10 == 2 && (v11 & 1) == 0 && ![(PUWallpaperPosterController *)self significantEventsCounter])
    {
      [(PUWallpaperPosterController *)self setNeedsFirstLockSignificantEvent:1];
    }

    v16 = [(PUWallpaperPosterController *)self _shouldAnimateShuffleTransitionToSleep];
    if (backlightLuminance != 2 || !v16)
    {
      goto LABEL_23;
    }

    v17 = PLWallpaperGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(PUWallpaperPosterController *)self _nameForBacklightLuminance:a3];
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "setBacklightLuminance:%@ delegating transition to _animateShuffleTransitionToSleep", &v20, 0xCu);
    }

    if (![(PUWallpaperPosterController *)self _animateShuffleTransitionToSleep])
    {
LABEL_23:
      if ((v13 | v15))
      {
        [(PUWallpaperPosterController *)self _transitionToBacklightLuminance:a3 previousBacklightLuminance:backlightLuminance animated:1 interruptSettlingEffectPlayback:1];
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
  v3 = [(PUWallpaperPosterController *)self viewModel];
  -[PUWallpaperPosterController setBacklightLuminance:](self, "setBacklightLuminance:", [v3 backlightLuminance]);
}

- (void)_hideProgressIndicator
{
  v2 = [(PUWallpaperPosterController *)self progressIndicator];
  [v2 stopAnimating];
}

- (void)_showProgressIndicator
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterController *)self progressIndicator];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(PUWallpaperPosterController *)self renderer];
    v6 = [v5 floatingView];

    [v6 addSubview:v3];
    v7 = MEMORY[0x1E696ACD8];
    v8 = [v3 centerYAnchor];
    v9 = [v6 centerYAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v15[0] = v10;
    v11 = [v3 centerXAnchor];
    v12 = [v6 centerXAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v15[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [v7 activateConstraints:v14];
  }

  [v3 startAnimating];
}

- (void)_updateViewHierarchy
{
  [(PUWallpaperPosterController *)self _transitionToBacklightLuminance:[(PUWallpaperPosterController *)self backlightLuminance] previousBacklightLuminance:-1 animated:0 interruptSettlingEffectPlayback:0];
  v36 = [(PUWallpaperPosterController *)self viewModel];
  v3 = [v36 viewManager];
  v4 = [v36 currentLayerStack];
  v5 = [v4 settlingEffectLayer];
  v6 = [v3 viewForLayer:v5];

  v7 = [v4 spatialPhotoBackgroundLayer];
  v8 = [v3 viewForLayer:v7];

  v9 = [v4 spatialPhotoForegroundLayer];
  v10 = [v3 viewForLayer:v9];

  v11 = [v4 inactiveBackgroundLayer];
  v12 = [v3 viewForLayer:v11];

  v13 = [v4 backgroundLayer];
  v35 = [v3 viewForLayer:v13];

  v14 = [v4 inactiveForegroundLayer];
  v34 = [v3 viewForLayer:v14];

  v15 = [v4 foregroundLayer];
  v33 = [v3 viewForLayer:v15];

  v16 = [(PUWallpaperPosterController *)self renderer];
  v17 = [v16 backgroundView];
  v32 = [v16 foregroundView];
  v18 = [v16 floatingView];
  v29 = v12;
  [v17 addSubview:v12];
  if (v6)
  {
    [v17 addSubview:v6];
  }

  [v17 addSubview:v35];
  if (v8)
  {
    [v17 addSubview:v8];
  }

  v31 = v6;
  if (v10)
  {
    [v18 addSubview:v10];
  }

  v30 = v10;
  if (!v8)
  {
    if ([v36 clockAppearsAboveForeground])
    {
      v19 = v32;
    }

    else
    {
      v19 = v18;
    }

    [v19 addSubview:v34];
    [v19 addSubview:v33];
  }

  v20 = [(PUWallpaperPosterController *)self viewModel];
  v21 = [v20 depthEnabled];
  v22 = [v3 spatialPhotoBackgroundLayerView];
  [v22 setEnableOcclusion:v21];

  if ([v36 showsDebugHUD])
  {
    v23 = [v3 debugInfoView];
    [v18 addSubview:v23];
  }

  Bool = PXPreferencesGetBool();
  v25 = [(PUWallpaperPosterController *)self viewModel];
  v26 = [v25 viewManager];
  v27 = v26;
  if (Bool)
  {
    v28 = [v26 debugRectsView];
    [v18 addSubview:v28];
  }

  else
  {
    v28 = [v26 debugRectsViewIfLoaded];
    [v28 removeFromSuperview];
  }

  [(PUWallpaperPosterController *)self _invalidateDebugHUD];
}

- (void)_removeExistingViews
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterController *)self viewModel];
  v4 = [v3 viewManager];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = [v4 createdLayerViews];
  v6 = [v5 countByEnumeratingWithState:&v53 objects:v64 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v53 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v7);
  }

  v10 = [(PUWallpaperPosterController *)self environment];

  if (v10)
  {
    v11 = [(PUWallpaperPosterController *)self renderer];
    v12 = [v11 backgroundView];
    v13 = [v11 foregroundView];
    v14 = [v11 floatingView];
    v15 = [(PUWallpaperPosterController *)self shuffleTransitionController];
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = [v12 subviews];
    [v16 addObjectsFromArray:v17];

    v18 = [v13 subviews];
    [v16 addObjectsFromArray:v18];

    v47 = v14;
    v19 = [v14 subviews];
    [v16 addObjectsFromArray:v19];

    v46 = v16;
    v20 = [v16 mutableCopy];
    v48 = v15;
    if ([v15 isAnimating])
    {
      v21 = MEMORY[0x1E695DFD8];
      v22 = [v48 fromViewModel];
      [v22 viewManager];
      v45 = v20;
      v23 = v13;
      v24 = v11;
      v25 = v4;
      v26 = v12;
      v28 = v27 = v3;
      v29 = [v28 createdLayerViews];
      v30 = [v21 setWithArray:v29];

      v3 = v27;
      v12 = v26;
      v4 = v25;
      v11 = v24;
      v13 = v23;
      v20 = v45;

      [v45 minusSet:v30];
    }

    v31 = [(PUWallpaperPosterController *)self viewModel];
    v32 = [v31 viewManager];
    v33 = [v32 debugRectsViewIfLoaded];

    if (v33)
    {
      [v20 removeObject:v33];
    }

    v34 = [(PUWallpaperPosterController *)self environment];
    if ([v34 px_isCallServices])
    {
      v35 = [(PUWallpaperPosterController *)self callServicesOcclusionView];

      if (!v35)
      {
LABEL_17:
        if ([v20 count])
        {
          v36 = PXAssertGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v42 = [v12 subviews];
            v43 = [v13 subviews];
            [v47 subviews];
            v44 = v45 = v3;
            *buf = 138412802;
            v59 = v42;
            v60 = 2112;
            v61 = v43;
            v62 = 2112;
            v63 = v44;
            _os_log_error_impl(&dword_1B36F3000, v36, OS_LOG_TYPE_ERROR, "Detected orphaned views in background (%@), foreground (%@), floating (%@), cleaning up", buf, 0x20u);

            v3 = v45;
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

      v34 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
      [v20 removeObject:v34];
    }

    goto LABEL_17;
  }

LABEL_29:
}

- (void)_updateDeviceOrientation
{
  if (([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration] & 1) == 0)
  {
    v3 = [(PUWallpaperPosterController *)self environment];
    if ([v3 px_isBackdrop])
    {
    }

    else
    {
      v4 = [(PUWallpaperPosterController *)self environment];
      v5 = [v4 px_isCallServices];

      if (!v5)
      {
        return;
      }
    }
  }

  v6 = [(PUWallpaperPosterController *)self environment];
  v7 = [v6 px_deviceOrientation];

  v8 = [(PUWallpaperPosterController *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PUWallpaperPosterController__updateDeviceOrientation__block_invoke;
  v9[3] = &__block_descriptor_40_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  v9[4] = v7;
  [v8 performChanges:v9];

  [(PUWallpaperPosterController *)self _invalidateDebugHUD];
}

- (CGRect)_adjustedContainerFrameAvoidingOcclusionRects:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PUWallpaperPosterController *)self environment];
  v9 = [v8 px_isBackdrop];

  v10 = [(PUWallpaperPosterController *)self environment];
  v11 = v10;
  if (v9)
  {
    MaxX = x;
    v45 = y;
    v46 = width;
    v47 = height;
    [v10 px_backdropPrimaryOcclusionRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [(PUWallpaperPosterController *)self environment];
    [v20 px_backdropInspectorOcclusionRect];
    v43.origin.x = v21;
    v43.origin.y = v22;
    v43.size.width = v23;
    v43.size.height = v24;

    v25 = [(PUWallpaperPosterController *)self environment];
    v26 = [v25 px_deviceOrientation];

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
    if ((v26 - 3) <= 1)
    {
      if (!v31)
      {
        v45 = 0.0;
        if (v26 == 3)
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
        if (v26 != 3)
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
      if (v26 != 2)
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
    if (v26 == 2)
    {
      v38 = CGRectGetWidth(v43);
    }

    x = MaxX + v38;
    width = v46 - CGRectGetWidth(v43);
  }

  else
  {
    v33 = [v10 px_isCallServices];

    if (v33)
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

- (void)_updateCallServicesOcclusionViewWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PUWallpaperPosterController *)self environment];
  v9 = [v8 px_deviceOrientation];

  if ((v9 - 3) <= 1)
  {
    v10 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
    v11 = [v10 superview];

    if (v11)
    {
      v12 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
      [v12 removeFromSuperview];
    }

    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v14 = [(PUWallpaperPosterController *)self callServicesOcclusionViewBackgroundColor];
    if (v14)
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
    v16 = [(PUWallpaperPosterController *)self renderer];
    v17 = [v16 foregroundView];
    v18 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
    [v17 addSubview:v18];
  }

  v19 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
  [v19 setFrame:{x, y, width, height}];
}

- (CGRect)_adjustContainerFrameAvoidOcclusionRectsForCallServices:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PUWallpaperPosterController *)self callServicesOcclusionViewBackgroundColor];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695D178] defaultGrayColors];
    v10 = [v9 firstObject];
    [(PUWallpaperPosterController *)self setCallServicesOcclusionViewBackgroundColor:v10];

    v11 = MEMORY[0x1E695D178];
    v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:self->_posterImage];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __87__PUWallpaperPosterController__adjustContainerFrameAvoidOcclusionRectsForCallServices___block_invoke;
    v60[3] = &unk_1E7B7B220;
    v60[4] = self;
    [v11 fetchColorsForImage:v12 withCompletionHandler:v60];
  }

  v13 = [(PUWallpaperPosterController *)self environment];
  v14 = [v13 px_deviceOrientation];

  v15 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v15 bounds];
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
  if ((v14 - 3) > 1)
  {
    v33 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
    v34 = [v33 superview];

    if (v34)
    {
      v35 = [(PUWallpaperPosterController *)self callServicesOcclusionView];
      [v35 removeFromSuperview];
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
    v29 = [(PUWallpaperPosterController *)self renderer];
    v30 = [v29 backgroundView];
    v31 = [v30 effectiveUserInterfaceLayoutDirection] == 0;

    if (v31 != (v14 == 3))
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

- (void)handleLegibilityVignetteVisibilityDidChange:(BOOL)a3
{
  v4 = [(PUWallpaperPosterController *)self viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PUWallpaperPosterController_handleLegibilityVignetteVisibilityDidChange___block_invoke;
  v5[3] = &__block_descriptor_33_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  v6 = a3;
  [v4 performChanges:v5];
}

- (void)_updateTitleHeightProperties
{
  if ([(PUWallpaperPosterController *)self _isShuffleConfiguration])
  {
    v3 = [(PUWallpaperPosterController *)self currentPosterMedia];
    v4 = [v3 editConfiguration];

    v5 = [(PUWallpaperPosterController *)self viewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PUWallpaperPosterController__updateTitleHeightProperties__block_invoke;
    v7[3] = &unk_1E7B80328;
    v8 = v4;
    v6 = v4;
    [v5 performChanges:v7];
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
  v3 = [(PUWallpaperPosterController *)self renderer];
  v4 = [v3 backgroundView];
  [v4 bounds];

  PXRectWithOriginAndSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PUWallpaperPosterController *)self environment];
  LODWORD(v4) = [v13 px_isCallServices];

  if (v4)
  {
    [(PUWallpaperPosterController *)self _adjustedContainerFrameAvoidingOcclusionRects:v6, v8, v10, v12];
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  v18 = [(PUWallpaperPosterController *)self viewModel];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__PUWallpaperPosterController__updateContainerFrame__block_invoke;
  v19[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  *&v19[4] = v6;
  *&v19[5] = v8;
  *&v19[6] = v10;
  *&v19[7] = v12;
  [v18 performChanges:v19];

  [(PUWallpaperPosterController *)self _invalidateDebugHUD];
}

- (void)setViewModel:(id)a3
{
  v8 = a3;
  v5 = self->_viewModel;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerStackViewModel *)v5 isEqual:v8];

    if ((v7 & 1) == 0)
    {
      [(PUWallpaperPosterController *)self _removeExistingViews];
      [(PUParallaxLayerStackViewModel *)self->_viewModel unregisterChangeObserver:self context:"ViewModelObservationContext"];
      objc_storeStrong(&self->_viewModel, a3);
      [(PUParallaxLayerStackViewModel *)v8 registerChangeObserver:self context:"ViewModelObservationContext"];
      if (v8)
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

- (void)setEnvironment:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_environment;
  objc_storeStrong(&self->_environment, a3);
  if (v5)
  {
    [(PUWallpaperPosterController *)self _updateSpatialPhotoLayerView];
    if ([v5 px_isCallServices])
    {
      v7 = [MEMORY[0x1E69C07A0] standardAlphabeticTextParameters];
      [MEMORY[0x1E69C07A0] setSystemParameters:v7];
    }

    v8 = [(PXPosterRenderingEnvironment *)v6 px_significantEventsCounter];
    if (v8 != [v5 px_significantEventsCounter])
    {
      -[PUWallpaperPosterController setSignificantEventsCounter:](self, "setSignificantEventsCounter:", [v5 px_significantEventsCounter]);
    }

    v9 = [(PXPosterRenderingEnvironment *)v6 px_assetDirectory];
    v10 = [v5 px_assetDirectory];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [v9 isEqual:v10];

      if ((v12 & 1) == 0)
      {
        [(PUWallpaperPosterController *)self _loadContentsFromEnvironment];
      }
    }

    v13 = [(PXPosterRenderingEnvironment *)v6 px_backlightLuminance];
    if (v13 != [v5 px_backlightLuminance])
    {
      v14 = [(PUWallpaperPosterController *)self viewModel];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __46__PUWallpaperPosterController_setEnvironment___block_invoke;
      v39[3] = &unk_1E7B80328;
      v40 = v5;
      [v14 performChanges:v39];
    }

    v15 = [(PXPosterRenderingEnvironment *)v6 px_deviceOrientation];
    if (v15 != [v5 px_deviceOrientation])
    {
      [(PUWallpaperPosterController *)self _updateDeviceOrientation];
      [(PUWallpaperPosterController *)self _updateTitleHeightProperties];
    }

    v16 = [(PUWallpaperPosterController *)self viewModel];
    v17 = [v16 viewManager];
    v18 = [v17 videoLayerView];
    v19 = [v18 player];
    [v19 rate];
    v21 = v20;

    if ([v5 px_isSnapshot] && v21 == 1.0)
    {
      [(PUWallpaperPosterController *)self _transitionToBacklightLuminance:2 previousBacklightLuminance:-1 animated:0 interruptSettlingEffectPlayback:1];
    }

    if (([v5 px_isSnapshot] & 1) == 0 && objc_msgSend(v5, "px_isPreview") && objc_msgSend(v16, "settlingEffectEnabled") && !UIAccessibilityIsReduceMotionEnabled())
    {
      v22 = PLWallpaperGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "Settling effect is requested to playback live in the gallery", buf, 2u);
      }

      v23 = [(PUWallpaperPosterController *)self viewModel];
      [v23 performChanges:&__block_literal_global_272_44115];
    }

    if (([v5 px_isSnapshot] & 1) == 0)
    {
      if ([v5 px_isPreview])
      {
        v24 = [(PUWallpaperPosterController *)self posterDescriptor];
        v25 = [v24 descriptorType];

        if (v25 == 5)
        {
          v26 = [(PUWallpaperPosterController *)self viewModel];
          [v26 performChanges:&__block_literal_global_274];
        }
      }
    }

    if ([(PUWallpaperPosterController *)self needsUpgrade])
    {
      v27 = [MEMORY[0x1E695DF00] now];
      v28 = [(PUWallpaperPosterController *)self lastUpgradeCheckTime];
      [v27 timeIntervalSinceDate:v28];
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

    if ([(PUWallpaperPosterController *)self _shouldUpdatePreferredTitleBoundsWithEnvironment:v5 oldEnvironment:v6])
    {
      [(PUWallpaperPosterController *)self _updatePreferredTitleBounds];
    }

    v34 = [(PUWallpaperPosterController *)self environment];
    v35 = [v34 px_isBackdrop];

    if (v35)
    {
      [(PUWallpaperPosterController *)self _updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment:v6];
    }

    else
    {
      [(PUWallpaperPosterController *)self _updateAdaptiveLayoutProperties];
    }

    v36 = [(PUWallpaperPosterController *)self environment];
    if ([v36 px_isBackdrop])
    {
    }

    else
    {
      v37 = [(PUWallpaperPosterController *)self environment];
      v38 = [v37 px_isCallServices];

      if (!v38)
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
  v39 = [(PUWallpaperPosterController *)self viewModel];
  v4 = [v39 viewManager];
  v5 = v4;
  if (Bool)
  {
    v6 = [v4 debugRectsView];

    v7 = [(PUWallpaperPosterController *)self renderer];
    v8 = [v7 px_preferences];
    [v8 px_preferredSalientContentRectangle];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [MEMORY[0x1E69DC888] greenColor];
    [v6 setDebugRect:@"preferred" forIdentifier:v17 color:v10 borderWidth:{v12, v14, v16, 4.0}];

    v18 = [(PUWallpaperPosterController *)self renderer];
    v19 = [v18 px_environment];
    [v19 px_salientContentRectangle];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = [MEMORY[0x1E69DC888] redColor];
    [v6 setDebugRect:@"current" forIdentifier:v28 color:v21 borderWidth:{v23, v25, v27, 3.0}];

    v29 = [(PUWallpaperPosterController *)self viewModel];
    [v29 salientContentFrame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v5 = [MEMORY[0x1E69DC888] purpleColor];
    [v6 setDebugRect:@"photoSalientContent" forIdentifier:v5 color:v31 borderWidth:{v33, v35, v37, 3.0}];
    v39 = v6;
  }

  else
  {
    v38 = [v4 debugRectsViewIfLoaded];
    [v38 removeAllDebugRects];
  }
}

- (void)_updateAdaptiveLayoutProperties
{
  v3 = [(PUWallpaperPosterController *)self posterConfiguration];
  if (v3)
  {
    v4 = [(PUWallpaperPosterController *)self posterConfiguration];
    v5 = ([v4 allowedLayoutStrategies] & 2) == 0;
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
    v10 = [(PUWallpaperPosterController *)self environment];
    v11 = [v10 px_isPlayground];

    v12 = [(PUWallpaperPosterController *)self viewModel];
    [v12 containerFrame];
    PXRectWithSize();
    if (v11)
    {

      v13 = [(PUWallpaperPosterController *)self environment];
      [v13 px_minimumTitleBoundsForLayout:0];

      v14 = [(PUWallpaperPosterController *)self environment];
      [v14 px_titleBoundsForLayout:0];

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

      v21 = [(PUWallpaperPosterController *)self renderer];
      v22 = [v21 px_preferences];
      [v22 px_preferredSalientContentRectangle];
      v24 = v23;
      v81 = v25;
      v83 = v26;
      v28 = v27;

      v29 = [(PUWallpaperPosterController *)self renderer];
      v30 = [v29 px_environment];
      [v30 px_salientContentRectangle];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v39 = [(PUWallpaperPosterController *)self viewModel];
      [v39 adaptiveLayoutAvailableContentHeight];
      v41 = v40;

      v42 = [(PUWallpaperPosterController *)self viewModel];
      [v42 userAdjustedTitleHeightOffset];

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
      v45 = [(PUWallpaperPosterController *)self viewModel];
      [v45 salientContentFrame];
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
        v54 = [(PUWallpaperPosterController *)self environment];
        [v54 px_minimumTitleBoundsForLayout:0];
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

      v66 = [(PUWallpaperPosterController *)self shuffleTransitionController];
      v67 = [v66 isAnimating];

      if (v67)
      {
        v20 = v41;
      }

      else
      {
        v20 = v44;
      }
    }

    CGAffineTransformMakeTranslation(&v89, 0.0, v20);
    v68 = [(PUWallpaperPosterController *)self viewModel];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __62__PUWallpaperPosterController__updateAdaptiveLayoutProperties__block_invoke_2;
    v87[3] = &__block_descriptor_80_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    v88 = v89;
    [v68 performChanges:v87];

    [(PUWallpaperPosterController *)self _updateDebugRectViews];
  }

  else
  {
    v8 = [(PUWallpaperPosterController *)self viewModel];
    [v8 performChanges:&__block_literal_global_258];

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

- (void)_updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterController *)self environment];
  if ([v5 px_isSnapshot])
  {

    goto LABEL_19;
  }

  v6 = [(PUWallpaperPosterController *)self environment];
  v7 = [v6 px_isPreview];

  if ((v7 & 1) == 0)
  {
    v8 = [(PUWallpaperPosterController *)self renderer];
    v9 = [v8 px_environment];
    [v9 px_salientContentRectangle];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v4 px_salientContentRectangle];
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
        v26 = [(PUWallpaperPosterController *)self viewModel];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __89__PUWallpaperPosterController__updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment___block_invoke;
        v63[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
        *&v63[4] = v11;
        *&v63[5] = v13;
        *&v63[6] = v15;
        *&v63[7] = v17;
        [v26 performChanges:v63];

        v27 = [(PUWallpaperPosterController *)self viewModel];
        [v27 containerFrame];
        PXRectWithSize();

        v28 = [(PUWallpaperPosterController *)self viewModel];
        v29 = [v28 deviceOrientation] - 3;

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
          v34 = [(PUWallpaperPosterController *)self viewModel];
          [v34 salientContentFrame];
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

          v49 = [(PUWallpaperPosterController *)self viewModel];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __89__PUWallpaperPosterController__updateBackdropAdaptiveLayoutPropertiesWithOldEnvironment___block_invoke_2;
          v59[3] = &__block_descriptor_88_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
          v60 = v62;
          v61 = v48;
          [v49 performChanges:v59];

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
    v3 = [(PUWallpaperPosterController *)self renderer];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke;
    v39[3] = &unk_1E7B79838;
    v39[4] = self;
    [v3 px_updatePreferences:v39];

    v4 = [(PUWallpaperPosterController *)self viewModel];
    v5 = [(PUWallpaperPosterController *)self posterConfiguration];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 shuffleConfiguration];
      v8 = [v7 shuffleType] == 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(PUWallpaperPosterController *)self posterConfiguration];
    if (v9 && (v10 = v9, -[PUWallpaperPosterController posterConfiguration](self, "posterConfiguration"), v11 = objc_claimAutoreleasedReturnValue(), v12 = ([v11 allowedLayoutStrategies] >> 1) & 1, v11, v10, ((v12 | v8) & 1) == 0))
    {
      v33 = [(PUWallpaperPosterController *)self renderer];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke_2;
      v37[3] = &unk_1E7B79838;
      v38 = v4;
      [v33 px_updatePreferences:v37];

      [(PUWallpaperPosterController *)self _updateDebugRectViews];
    }

    else
    {
      [v4 containerFrame];
      PXRectWithSize();
      v13 = [(PUWallpaperPosterController *)self environment];
      v14 = [v13 px_deviceOrientation];

      if ((v14 - 3) <= 1)
      {
        PXRectTransposed();
      }

      v15 = [(PUWallpaperPosterController *)self environment];
      [v15 px_minimumTitleBoundsForLayout:0];

      PXRectDenormalize();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [(PUWallpaperPosterController *)self shuffleTransitionController];
      v25 = [v24 isAnimating];

      if (v25)
      {
        v26 = [(PUWallpaperPosterController *)self shuffleTransitionController];
        [v26 additionalViewTitleHeightPresentationValue];
        v28 = v27;
      }

      else
      {
        [v4 additionalViewTitleHeight];
        v28 = v29;
        if ([(PUWallpaperPosterController *)self _isShuffleConfiguration])
        {
          v28 = PUUserAdjustedAdditionalViewTitleHeightForViewModel(v4);
        }
      }

      v40.origin.x = v17;
      v40.origin.y = v19;
      v40.size.width = v21;
      v40.size.height = v23;
      v30 = v28 + CGRectGetMaxY(v40);
      v31 = 1.0;
      if ([v4 supportsAdaptiveLayout])
      {
        [v4 salientContentFrame];
        if (CGRectIsEmpty(v41))
        {
          [v4 containerFrame];
          Height = CGRectGetHeight(v42);
        }

        else
        {
          [v4 salientContentFrame];
          Height = CGRectGetMaxY(v43);
        }

        v31 = Height - v30;
      }

      v34 = [(PUWallpaperPosterController *)self renderer];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = v35;
      v36[2] = __58__PUWallpaperPosterController__updatePreferredTitleBounds__block_invoke_3;
      v36[3] = &unk_1E7B79860;
      v36[4] = self;
      *&v36[5] = v30;
      *&v36[6] = v31;
      [v34 px_updatePreferences:v36];

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

- (BOOL)_shouldUpdatePreferredTitleBoundsWithEnvironment:(id)a3 oldEnvironment:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 px_minimumTitleBoundsForLayout:0];
  [v6 px_maximumTitleBoundsForLayout:0];

  [v5 px_minimumTitleBoundsForLayout:0];
  [v5 px_maximumTitleBoundsForLayout:0];

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
    v3 = [(PUWallpaperPosterController *)self environment];
    v4 = [v3 px_isCallServices] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(PUWallpaperPosterController *)self observedPlayerItem];
  [v3 removeObserver:self forKeyPath:@"status" context:&PlayerItemObservationContext_43944];

  [(PUWallpaperPosterController *)self _endExtendedRenderSession];
  v4.receiver = self;
  v4.super_class = PUWallpaperPosterController;
  [(PUWallpaperPosterController *)&v4 dealloc];
}

- (PUWallpaperPosterController)initWithRenderer:(id)a3 photoLibrary:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = PUWallpaperPosterController;
  v9 = [(PUWallpaperPosterController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_renderer, a3);
    objc_storeStrong(&v10->_photoLibrary, a4);
    v11 = PLWallpaperGetLog();
    v10->_signpost = os_signpost_id_make_with_pointer(v11, v10);

    v10->_backlightLuminance = -1;
    v12 = objc_alloc_init(MEMORY[0x1E69DC638]);
    v13 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)v12 setColor:v13];

    [(UIActivityIndicatorView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    progressIndicator = v10->_progressIndicator;
    v10->_progressIndicator = v12;
    v15 = v12;

    [(PUWallpaperPosterController *)v10 _invalidateDebugHUD];
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v10 selector:sel__lowPowerModeChanged_ name:*MEMORY[0x1E696A7D8] object:0];

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