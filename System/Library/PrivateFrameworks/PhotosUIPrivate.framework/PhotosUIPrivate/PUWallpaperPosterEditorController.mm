@interface PUWallpaperPosterEditorController
+ (id)availableStylesForItem:(id)a3 posterConfiguration:(id)a4;
+ (id)posterConfigurationFromPosterDescriptor:(id)a3;
+ (int64_t)posterConfigurationTypeForPosterType:(int64_t)a3;
- (BOOL)_areStylesAvailable;
- (BOOL)_attemptedSettlingEffect;
- (BOOL)_canEnableDepthEffect;
- (BOOL)_canEnableSpatialPhotoEffect;
- (BOOL)_createHintLabelIfNeeded;
- (BOOL)_currentStyleIsHighKey;
- (BOOL)_currentStyleShowsBackground;
- (BOOL)_currentStyleSupportsColorPicker;
- (BOOL)_currentStyleSupportsHighAndLowKeyModes;
- (BOOL)_currentStyleSupportsToggleBackground;
- (BOOL)_isDepthEffectPossible;
- (BOOL)_isDepthEnabled;
- (BOOL)_isDepthEnabledInAnyOrientation;
- (BOOL)_isManualShuffle;
- (BOOL)_isSettlingEffectPossible;
- (BOOL)_isShuffle;
- (BOOL)_isShuffleModeWithGlobalDepth;
- (BOOL)_isShuffleModeWithGlobalSpatialPhoto;
- (BOOL)_isSmartShuffle;
- (BOOL)_isSpatialPhotoEnabled;
- (BOOL)_isSpatialPhotoPossible;
- (BOOL)_isUserAlbumShuffle;
- (BOOL)_posterWantsUserTransformDisabled;
- (BOOL)_shouldEnableAdaptiveLayout;
- (BOOL)_spatialPhotoFailedUnexpectedly;
- (BOOL)_tryLoadAssetUUID:(id)a3 fromWallpaperURL:(id)a4;
- (BOOL)_updateViewForLayerID:(id)a3 usingViewManager:(id)a4 containerView:(id)a5;
- (BOOL)_wantsSpatialPhotoBackfill;
- (BOOL)editorShouldBeginFinalization:(id)a3;
- (BOOL)wantsLowLuminanceContent;
- (PFPosterEditConfiguration)currentEditConfiguration;
- (PUWallpaperPosterEditorController)initWithWallpaperEditor:(id)a3 photoLibrary:(id)a4;
- (double)_hintLabelBottomAnchorDistance;
- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5;
- (id)_actionsMenu;
- (id)_adjustedCompoundLayerStackForAdaptiveLayout:(id)a3;
- (id)_colorPickerAction;
- (id)_fetchMePerson;
- (id)_headroomToggleMenuElement;
- (id)_initialLayerStyleForSegmentationItem:(id)a3;
- (id)_leadingActionsMenu;
- (id)_photoPickerAction;
- (id)_sanitizeCompoundLayerStack:(id)a3 forSegmentationItem:(id)a4;
- (id)_shuffleFrequencyMenu;
- (id)_toggleHighKeyLowKeyAction;
- (id)_toggleSettlingEffectAction;
- (id)_toggleSpatialPhotoEffectAction;
- (id)centerSuggestionMedia;
- (id)initialColorsForEditor:(id)a3;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)leadingMenuElementsForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)presentationControllerForTipID:(id)a3;
- (id)solidColorHomeScreenColorPickerConfigurationForEditor:(id)a3;
- (id)sourceItemForTipID:(id)a3;
- (id)trailingMenuElementsForEditor:(id)a3;
- (int64_t)_defaultHint;
- (int64_t)_effectivePinchToZoomHint;
- (int64_t)_shuffleType;
- (void)_animateScrollToStyleKind:(id)a3 completion:(id)a4;
- (void)_animateScrollToStyleKindAnimatorUpdated;
- (void)_applyPosterEditConfigurationForShuffleAsset;
- (void)_beginListeningForExtensionHostResignationNotification;
- (void)_beginLoadingShuffleResources;
- (void)_createShuffleResourceManager;
- (void)_didDismissLoadingErrorAlertShouldCancel:(BOOL)a3;
- (void)_didFinishCreatingEditViewModel:(id)a3 forAsset:(id)a4 error:(id)a5;
- (void)_didLoadMediaFromPhotoPickerWithAssetUUID:(id)a3 succeeded:(BOOL)a4 error:(id)a5;
- (void)_didLoadMediaFromShuffleConfigurationViewController:(id)a3 succeeded:(BOOL)a4;
- (void)_disableSettlingEffect;
- (void)_dismissPinchToZoomHint;
- (void)_dismissPosterConfigurationViewControllerAndCancelEditor;
- (void)_dismissPosterConfigurationViewControllerWithCompletion:(id)a3;
- (void)_displayDefaultHint;
- (void)_displayNextHint;
- (void)_enableSettlingEffect;
- (void)_extensionWillResignNotification:(id)a3;
- (void)_fadeInViews;
- (void)_handleAsyncPhotoEffectLoadedWithSegmentationItem:(id)a3;
- (void)_handleLoadedCompoundLayerStack:(id)a3 error:(id)a4 segmentationItem:(id)a5 style:(id)a6 completion:(id)a7;
- (void)_handlePhotoEffectsLoadedWithSegmentationItem:(id)a3 layerStack:(id)a4;
- (void)_handlePhotoPickerResults:(id)a3;
- (void)_handlePosterSaved:(BOOL)a3 error:(id)a4;
- (void)_handleSegmentationItem:(id)a3 compoundLayerStack:(id)a4 style:(id)a5 forAsset:(id)a6 error:(id)a7;
- (void)_handleShuffleSegmentationItem:(id)a3 compoundLayerStack:(id)a4 editConfiguration:(id)a5 forPosterMedia:(id)a6 error:(id)a7;
- (void)_handleTapToShuffle:(id)a3;
- (void)_handleToggleSpatialPhotoAction;
- (void)_handleUpdatedConfiguration:(id)a3 segmentationItem:(id)a4 compoundLayerStack:(id)a5 error:(id)a6;
- (void)_hideHintAnimated:(BOOL)a3 completion:(id)a4;
- (void)_hideLoadingIndicatorForReason:(id)a3;
- (void)_hideProgressIndicator;
- (void)_loadAssetFromPosterConfiguration;
- (void)_loadAssetPosterMedia:(id)a3;
- (void)_loadAssetUUID:(id)a3 fromWallpaperURL:(id)a4;
- (void)_loadAssetWithUUID:(id)a3;
- (void)_loadContentForCurrentPosterMedia;
- (void)_loadEditViewModelAndUpdateLooks:(BOOL)a3;
- (void)_loadEditViewModelWithSegmentationItem:(id)a3 compoundLayerStack:(id)a4 style:(id)a5 completion:(id)a6;
- (void)_loadImagePosterMedia:(id)a3;
- (void)_loadParallaxAsset:(id)a3;
- (void)_loadPosterDescriptor;
- (void)_loadSettlingEffectLayerStackForSegmentationItem:(id)a3 completion:(id)a4;
- (void)_loadSourcePosterConfiguration;
- (void)_observeCurrentPlayerItem;
- (void)_pickAssets;
- (void)_playerItemDidFinish:(id)a3;
- (void)_presentAuthenticatedShuffleConfigurationEditor;
- (void)_presentLoadingError:(id)a3;
- (void)_presentLoadingError:(id)a3 forAsset:(id)a4;
- (void)_presentLoadingErrorAlertController:(id)a3;
- (void)_presentManualShuffleAssetEditor;
- (void)_presentPhotoPicker;
- (void)_presentPosterConfigurationViewController:(id)a3;
- (void)_presentSettlingEffectDebugView:(id)a3;
- (void)_presentShuffleConfigurationEditor;
- (void)_presentSmartAlbumShuffleEditor;
- (void)_presentSpatialPhotoErrorDiagnosticsAlert;
- (void)_presentSpatialPhotoModelDownloadProgress:(double)a3 producer:(id)a4 downloadTask:(id)a5;
- (void)_presentStyleColorPicker;
- (void)_presentUserAlbumShuffleEditor;
- (void)_prewarmSpatialPhotoModel;
- (void)_rejectSuggestionsForCurrentAsset;
- (void)_reloadAssetUUID:(id)a3 fromWallpaperURL:(id)a4;
- (void)_reloadSmartAlbumPreviewAssetsWithCompletionHandler:(id)a3;
- (void)_removeViewsFromLayerStackViewModel:(id)a3;
- (void)_renderAfterStyleChange;
- (void)_renderInitialLayerStack:(id)a3 style:(id)a4 completion:(id)a5;
- (void)_resumeSavingAfterLoadingSpatialPhoto;
- (void)_savePosterEditConfigurationForCurrentPosterMedia;
- (void)_savePosterEditConfigurationForCurrentPosterMediaWithEnvironment:(id)a3;
- (void)_saveWithCompletionHandler:(id)a3;
- (void)_sendSettlingEffectGatingAnalyticsWithSegmentationItem:(id)a3;
- (void)_setCurrentStyleIsHighKey:(BOOL)a3;
- (void)_setShuffleEffect:(unint64_t)a3 enabled:(BOOL)a4;
- (void)_setShuffleEffect:(unint64_t)a3 supported:(BOOL)a4;
- (void)_setupUserTransformView;
- (void)_showHintAnimated:(BOOL)a3 completion:(id)a4;
- (void)_showLoadingIndicatorForReason:(id)a3;
- (void)_showPhotoInLibrary;
- (void)_showProgressIndicator:(id)a3 determinate:(BOOL)a4;
- (void)_showSettlingEffectUnavailableTip;
- (void)_showSpatialPhotoDisabledLowerPowerModeTipIfNeeded;
- (void)_showTrySettlingEffectTip;
- (void)_startPinchToZoomHintTimeout;
- (void)_startSettlingEffectPreview;
- (void)_startSettlingEffectPreviewAfterDelay;
- (void)_stopListeningForExtensionHostResignationNotification;
- (void)_stopObservingPlayerItem;
- (void)_stopSettlingEffectPreview:(id)a3;
- (void)_tapToRadarWithComponent:(int64_t)a3 asset:(id)a4 suggestion:(id)a5 error:(id)a6;
- (void)_tapToRadarWithComponent:(int64_t)a3 error:(id)a4;
- (void)_toggleDepth;
- (void)_toggleHeadroom;
- (void)_toggleSettlingEffectEnabled;
- (void)_toggleStyleBackground;
- (void)_transferSubviewsFrom:(id)a3 to:(id)a4;
- (void)_updateContainerFrame;
- (void)_updateContentOverlayContainerView;
- (void)_updateCurrentLayerStackViewModel;
- (void)_updateCurrentStyle;
- (void)_updateCurrentStyleColor:(id)a3;
- (void)_updateDebugRectViews;
- (void)_updateDeviceOrientation;
- (void)_updateEditToolbar;
- (void)_updateEditViewModelPropertiesFromPosterConfiguration;
- (void)_updateEditorPreferences;
- (void)_updateHintLabelAnimated:(BOOL)a3;
- (void)_updateLayerStackOrderingForViewModel:(id)a3;
- (void)_updateMotionEffectsEnabled;
- (void)_updateOverlayContentConstraints;
- (void)_updatePosterConfigurationForCallServices:(id)a3;
- (void)_updatePreferredTitleBounds;
- (void)_updateProgressIndicator:(double)a3;
- (void)_updateShuffleSuggestionFeaturedStateIfNeededForConfiguration:(id)a3;
- (void)_updateShuffleView;
- (void)_updateSmartAlbumAvailability;
- (void)_updateSpatialPhotoGyro;
- (void)_updateSpatialPhotoGyroForLayerStackViewModel:(id)a3;
- (void)_updateTitleHeightProperties;
- (void)_updateUserTransformIsDisabled;
- (void)_updateUserTransformView;
- (void)_updateVisibleLayerStackViewModels;
- (void)_updateVisibleLayerStackViewsWithPreviouslyVisibleStackViewModels:(id)a3;
- (void)dealloc;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5;
- (void)editor:(id)a3 didUpdateColors:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareTipPopover:(id)a3 tipID:(id)a4;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setCurrentLayerStackViewModel:(id)a3;
- (void)setCurrentPosterMedia:(id)a3;
- (void)setEditViewModel:(id)a3;
- (void)setEnvironment:(id)a3;
- (void)setFinalizationState:(unint64_t)a3;
- (void)setFloatingView:(id)a3;
- (void)setForegroundView:(id)a3;
- (void)setHint:(int64_t)a3;
- (void)setIsCancellingMediaLoading:(BOOL)a3;
- (void)setIsLoading:(BOOL)a3;
- (void)setIsUserTransformDisabled:(BOOL)a3;
- (void)setLoadingSettlingEffect:(BOOL)a3;
- (void)setPosterConfiguration:(id)a3;
- (void)setShuffleAssetIndex:(int64_t)a3;
- (void)setVisibleLayerStackViewModels:(id)a3;
- (void)spatialPhotoProducer:(id)a3 downloadTask:(id)a4 didUpdateProgress:(double)a5;
- (void)spatialPhotoProducer:(id)a3 downloadTaskDidEnd:(id)a4 success:(BOOL)a5 error:(id)a6;
- (void)spatialPhotoProducer:(id)a3 downloadTaskDidStart:(id)a4;
- (void)tipPopoverDidDismissWithTipID:(id)a3;
- (void)transitionBetweenStyleWithKind:(id)a3 andKind:(id)a4 progress:(double)a5;
- (void)userTransformView:(id)a3 didChangeIsUserInteracting:(BOOL)a4;
- (void)userTransformView:(id)a3 didChangeUserAffineTransform:(CGAffineTransform *)a4 isUserInteracting:(BOOL)a5;
- (void)wallpaperPosterShuffleGridViewController:(id)a3 didFinishWithChange:(id)a4 selectedPosterMedia:(id)a5;
- (void)wallpaperShuffleConfigurationViewController:(id)a3 didFinishWithPosterConfiguration:(id)a4;
- (void)wallpaperShuffleConfigurationViewControllerDidCancelManuallySelectingPhotos:(id)a3;
- (void)wallpaperShuffleConfigurationViewControllerDidDismiss:(id)a3;
@end

@implementation PUWallpaperPosterEditorController

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = [v4 presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 transitionCoordinator];
    if ([v6 initiallyInteractive])
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __71__PUWallpaperPosterEditorController_presentationControllerWillDismiss___block_invoke;
      v10 = &unk_1E7B7E238;
      objc_copyWeak(&v11, &location);
      [v6 notifyWhenInteractionChangesUsingBlock:&v7];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _handlePhotoPickerResults:0];
    }

    [(PUWallpaperPosterEditorController *)self _stopListeningForExtensionHostResignationNotification:v7];
  }
}

void __71__PUWallpaperPosterEditorController_presentationControllerWillDismiss___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handlePhotoPickerResults:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PUWallpaperPosterEditorController *)self observedPlayerItem];
  v14 = v13;
  if (BackgroundViewObservationContext == a6)
  {
    [(PUWallpaperPosterEditorController *)self _updateContainerFrame];
  }

  else if (PlayerItemObservationContext == a6)
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
      }

      else if (v15 == 2)
      {
        v16 = PLWallpaperGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [v14 error];
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v17;
          _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Settling effect preview video failed to load: %@", &buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PUWallpaperPosterEditorController;
    [(PUWallpaperPosterEditorController *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_updatePosterConfigurationForCallServices:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  v10 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v11 = [v10 assetUUID];

  v12 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v13 = [v12 segmentationItem];
  v14 = [v13 regions];

  if (v14)
  {
    v15 = [MEMORY[0x1E69BDF38] dictionaryFromRegions:v14];
    [v9 setObject:v15 forKeyedSubscript:@"regions"];
  }

  else
  {
    [v9 setObject:0 forKeyedSubscript:@"regions"];
  }

  v16 = [(PUWallpaperPosterEditorController *)self _fetchMePerson];
  if (v16)
  {
    v33 = v4;
    v17 = MEMORY[0x1E6978630];
    v39[0] = v11;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    v19 = [(PUWallpaperPosterEditorController *)self photoLibrary];
    v20 = [v19 librarySpecificFetchOptions];
    v21 = [v17 fetchAssetsWithLocalIdentifiers:v18 options:v20];
    v22 = [v21 firstObject];

    if (v22)
    {
      v23 = MEMORY[0x1E69C3790];
      v38 = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v25 = [v23 facesForPerson:v16 inAssets:v24];

      v26 = [v25 count];
      v27 = v26 != 0;
      v28 = PLWallpaperGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        if (v26)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        *buf = 138412546;
        v35 = v29;
        v36 = 2048;
        v37 = [v25 count];
        _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_INFO, "Setting representsDeviceOwner to %@: found %lu faces", buf, 0x16u);
      }
    }

    else
    {
      v25 = PLWallpaperGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v11;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_ERROR, "Could not find asset for %@, not setting representsDeviceOwner flag", buf, 0xCu);
      }

      v27 = 0;
    }

    v4 = v33;
  }

  else
  {
    v27 = 0;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:v27];
  [v9 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69C0C50]];

  if (v11)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFString hash](v11, "hash")}];
    [v9 setObject:v31 forKeyedSubscript:@"hashedAssetIdentifier"];
  }

  else
  {
    [v9 setObject:0 forKeyedSubscript:@"hashedAssetIdentifier"];
  }

  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69C0C48]];
  v32 = [v9 copy];
  [v4 setUserInfo:v32];
}

- (id)_fetchMePerson
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v26 = 0;
  v4 = [v3 suggestedMePersonIdentifierWithError:&v26];
  v5 = v26;

  if (!v4)
  {
    v10 = PLWallpaperGetLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    *buf = 138412290;
    v28 = v5;
    v11 = "No suggestedMePerson: %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  v6 = MEMORY[0x1E69C3790];
  v7 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v8 = [v6 personWithLocalIdentifier:v4 photoLibrary:v7];

  v9 = PLWallpaperGetLog();
  v10 = v9;
  if (!v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 138412290;
    v28 = v4;
    v11 = "No PHPerson found for suggestedPersonIdentifier: %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_9:
    _os_log_impl(&dword_1B36F3000, v12, v13, v11, buf, 0xCu);
LABEL_10:

    v14 = [MEMORY[0x1E69C3790] fetchMeContact];
    v10 = v14;
    if (v14)
    {
      v15 = MEMORY[0x1E69C3790];
      v16 = [v14 identifier];
      v17 = [(PUWallpaperPosterEditorController *)self photoLibrary];
      v8 = [v15 personWithPersonUri:v16 photoLibrary:v17];

      v18 = PLWallpaperGetLog();
      v19 = v18;
      if (v8)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v28 = v10;
          v29 = 2112;
          v30 = v8;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_INFO, "Found person for Me contact: contact %@, person %@", buf, 0x16u);
        }

        goto LABEL_20;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v10;
        v20 = "No PHPerson found for Me contact: %@";
        v21 = v19;
        v22 = OS_LOG_TYPE_ERROR;
        v23 = 12;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = PLWallpaperGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v20 = "No Me contact found";
        v21 = v19;
        v22 = OS_LOG_TYPE_INFO;
        v23 = 2;
LABEL_18:
        _os_log_impl(&dword_1B36F3000, v21, v22, v20, buf, v23);
      }
    }

    v8 = 0;
LABEL_20:

    goto LABEL_21;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v28 = v4;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_INFO, "Found suggestedMePerson: identifier %@, person %@", buf, 0x16u);
  }

LABEL_21:

  v24 = v8;
  return v8;
}

- (void)_saveWithCompletionHandler:(id)a3
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PUWallpaperPosterEditorController *)self setFinalizationState:1];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7B7C428;
  objc_copyWeak(&v109, &location);
  v83 = v4;
  v108 = v83;
  v84 = _Block_copy(aBlock);
  v5 = [(PUWallpaperPosterEditorController *)self environment];
  v85 = [v5 pu_targetAssetDirectory];

  if (v85)
  {
    v6 = PLWallpaperGetLog();
    v7 = [(PUWallpaperPosterEditorController *)self signpost];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PUWallpaperPosterEditorController.Saving", "", &buf, 2u);
    }

    v8 = PULocalizedString(@"PHOTOS_WALLPAPER_SAVING_PROGRESS_INDICATOR_TITLE");
    [(PUWallpaperPosterEditorController *)self _showProgressIndicator:v8 determinate:[(PUWallpaperPosterEditorController *)self _isShuffle]];

    v9 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    LODWORD(v8) = [v9 isLoadingSpatialPhoto];

    if (v8)
    {
      v10 = PLWallpaperGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Waiting to save, isLoadingSpatialPhoto is true", &buf, 2u);
      }

      [(PUWallpaperPosterEditorController *)self setIsWaitingForSpatialPhotoToLoadBeforeSaving:1];
      [(PUWallpaperPosterEditorController *)self setOnSaveCompletionHandler:v83];
    }

    else
    {
      v11 = [(PUWallpaperPosterEditorController *)self environment];
      v12 = [v11 px_isBackdrop];

      v13 = [(PUWallpaperPosterEditorController *)self environment];
      v14 = [v13 px_isCallServices];

      v15 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
      v86 = [v15 copy];

      LODWORD(v15) = [(PUWallpaperPosterEditorController *)self wantsLowLuminanceContent];
      v16 = [MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration];
      v17 = 5;
      if (!v15)
      {
        v17 = 1;
      }

      if (v16)
      {
        v18 = v17 | 0x22;
      }

      else
      {
        v18 = v17;
      }

      v19 = [(PUWallpaperPosterEditorController *)self environment];
      v20 = [v19 px_isCallServices];

      v21 = v18 | 2;
      if (!v20)
      {
        v21 = v18;
      }

      if ([(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled])
      {
        v22 = [(PUWallpaperPosterEditorController *)self _wantsSpatialPhotoBackfill];
        v23 = 256;
        if (v22)
        {
          v23 = 1280;
        }

        v79 |= v23;
      }

      if (!(((v79 & 4) == 0) | v12 & 1))
      {
        [v86 setOptions:{objc_msgSend(v86, "options") | 4}];
      }

      if (!(v12 & 1 | ((PFPosterIsAdaptiveLayoutEnabled() & 1) == 0) | v14 & 1) && (-[PUWallpaperPosterEditorController _shouldEnableAdaptiveLayout](self, "_shouldEnableAdaptiveLayout") || (-[PUWallpaperPosterEditorController editViewModel](self, "editViewModel"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 userHasAdjustedLayout], v25, v26)))
      {
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      [v86 setAllowedLayoutStrategies:{v24, v79}];
      v27 = [(PUWallpaperPosterEditorController *)self editor];
      v28 = [v27 pu_isDepthEffectDisallowed];

      v29 = [(PUWallpaperPosterEditorController *)self environment];
      v30 = [v29 px_isDepthEffectDisabled];

      v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUWallpaperPosterEditorController isAnySmartAlbumAvailable](self, "isAnySmartAlbumAvailable")}];
      [v82 setObject:v31 forKeyedSubscript:@"smart_shuffle_available"];

      v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUWallpaperPosterEditorController isInitialSave](self, "isInitialSave")}];
      [v82 setObject:v32 forKeyedSubscript:@"is_initial_save"];

      v33 = [(PUWallpaperPosterEditorController *)self environment];
      v34 = [v33 pu_role];
      [v82 setObject:v34 forKeyedSubscript:@"configuration_role"];

      v35 = v28 | v12;
      if ([(PUWallpaperPosterEditorController *)self _isShuffle])
      {
        v36 = [(PUWallpaperPosterEditorController *)self editModel];
        [v36 performChanges:&__block_literal_global_950];

        [(PUWallpaperPosterEditorController *)self _savePosterEditConfigurationForCurrentPosterMedia];
        v81 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
        v37 = objc_alloc_init(MEMORY[0x1E69C07F8]);
        v38 = [v81 style];
        v39 = [v38 bakedStyle];
        [v37 setStyle:v39];

        [v37 setIsDepthAvailable:(v35 & 1) == 0];
        if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
        {
          v40 = [v81 enabledEffects] & ((v35 | v30) ^ 1);
          [v37 setIsDepthEnabled:v40 & 1];
          [v37 setIsLandscapeDepthEnabled:v40 & 1];
        }

        if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalSpatialPhoto])
        {
          [v37 setIsSpatialPhotoEnabled:{(objc_msgSend(v81, "enabledEffects") >> 1) & 1}];
        }

        [v37 setNormalizedVisibleFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
        [v86 setEditConfiguration:v37];
        v41 = [(PUWallpaperPosterEditorController *)self environment];
        v42 = [v41 px_significantEventsCounter];

        v43 = [v86 media];
        v44 = +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", v42, [v43 count]);

        v45 = [(PUWallpaperPosterEditorController *)self shuffleAssetIndex];
        v46 = [v86 media];
        v47 = [v46 count];

        if ((v45 % v47) < v44)
        {
          v48 = [v86 media];
          [v48 count];
        }

        v49 = [v86 media];
        v50 = PXArrayRotate();
        [v86 setMedia:v50];

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v51 = [v86 media];
        v52 = [v51 countByEnumeratingWithState:&v103 objects:v111 count:16];
        if (v52)
        {
          v53 = *v104;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v104 != v53)
              {
                objc_enumerationMutation(v51);
              }

              v55 = *(*(&v103 + 1) + 8 * i);
              v56 = [v37 style];
              v57 = [v55 editConfiguration];
              [v57 setStyle:v56];

              if (v30)
              {
                v58 = [v55 editConfiguration];
                [v58 setIsDepthEnabled:0];

                v59 = [v55 editConfiguration];
                [v59 setIsLandscapeDepthEnabled:0];
              }
            }

            v52 = [v51 countByEnumeratingWithState:&v103 objects:v111 count:16];
          }

          while (v52);
        }

        v60 = [v86 layoutConfiguration];
        v61 = v60 == 0;

        if (v61)
        {
          v62 = [(PUWallpaperPosterEditorController *)self editViewModel];
          v63 = [v62 layoutConfiguration];
          [v86 setLayoutConfiguration:v63];
        }

        v64 = [v86 analyticsPayload];
        [v82 addEntriesFromDictionary:v64];

        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.wallpaper.editorSaved" withPayload:v82];
        v65 = [v86 media];
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_2_955;
        v101[3] = &unk_1E7B804D0;
        objc_copyWeak(&v102, &location);
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_4;
        v96[3] = &unk_1E7B78950;
        v97 = v86;
        v66 = v85;
        v98 = v66;
        v99 = self;
        v100 = v84;
        [v81 exportResourcesForFinalPosterMedia:v65 options:v80 assetDirectory:v66 progressHandler:v101 completion:v96];

        objc_destroyWeak(&v102);
      }

      else
      {
        v67 = [(PUWallpaperPosterEditorController *)self editViewModel];
        v81 = [v67 posterEditConfigurationRepresentation];
        [v81 setIsDepthAvailable:{objc_msgSend(v81, "isDepthAvailable") & (v35 ^ 1)}];
        [v86 setEditConfiguration:v81];
        v68 = [v67 layoutConfiguration];
        [v86 setLayoutConfiguration:v68];

        v69 = [v86 analyticsPayload];
        [v82 addEntriesFromDictionary:v69];

        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.wallpaper.editorSaved" withPayload:v82];
        [v86 setOptions:{objc_msgSend(v86, "options") & 0xFFFFFFFFFFFFFFFDLL}];
        [v86 setOptions:{objc_msgSend(v86, "options") & 0xFFFFFFFFFFFFFFFELL}];
        v70 = [v67 settlingEffectEnabled];
        v71 = v80 | 0x40;
        if (!v70)
        {
          v71 = v80;
        }

        if (v12)
        {
          v72 = (v71 | 0x200);
        }

        else
        {
          v72 = v71;
        }

        if ([v67 settlingEffectEnabled])
        {
          v73 = @"PHOTOS_WALLPAPER_SWITCHER_TITLE_LIVE_PHOTO";
        }

        else
        {
          v73 = @"PHOTOS_WALLPAPER_SWITCHER_TITLE_PHOTOS";
        }

        v74 = [(PUWallpaperPosterEditorController *)self environment];
        v75 = [v74 pu_targetConfiguration];
        [v75 setPu_displayNameLocalizationKey:v73];

        v76 = [(PUWallpaperPosterEditorController *)self environment];
        LOBYTE(v75) = [v76 px_isCallServices];

        objc_initWeak(&buf, self);
        v77 = [(PUWallpaperPosterEditorController *)self queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_963;
        block[3] = &unk_1E7B78978;
        v88 = v67;
        v92 = v84;
        v94 = v75;
        v78 = v67;
        objc_copyWeak(v93, &buf);
        v89 = v86;
        v90 = v85;
        v91 = self;
        v93[1] = v24;
        v93[2] = v72;
        dispatch_async(v77, block);

        objc_destroyWeak(v93);
        objc_destroyWeak(&buf);
      }
    }
  }

  else
  {
    (*(v84 + 2))(v84, 0, 0);
  }

  objc_destroyWeak(&v109);
  objc_destroyWeak(&location);
}

void __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7B78928;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = *(a1 + 32);
  v12 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v11);
}

void __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_2_955(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_3;
  v3[3] = &unk_1E7B804A8;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *&a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = PLWallpaperGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v3;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Failed to export shuffle assets: %{public}@", buf, 0xCu);
    }

    v5 = *(a1 + 56);
    v6 = [v3 allValues];
    v7 = [v6 firstObject];
    (*(v5 + 16))(v5, 0, v7);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v16 = 0;
    v10 = [v8 saveToURL:v9 error:&v16];
    v6 = v16;
    v11 = PLWallpaperGetLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 40) path];
        *buf = 138543362;
        v18 = v13;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_INFO, "Successfully saved shuffle poster config to directory: %{public}@'", buf, 0xCu);
      }

      [*(a1 + 48) _updateShuffleSuggestionFeaturedStateIfNeededForConfiguration:*(a1 + 32)];
      v14 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = [*(a1 + 40) path];
        *buf = 138543618;
        v18 = v15;
        v19 = 2114;
        v20 = v6;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Failed to save shuffle poster configuration to directory: '%{public}@', error: %{public}@", buf, 0x16u);
      }

      v14 = *(*(a1 + 56) + 16);
    }

    v14();
  }
}

void __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_963(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) segmentationItem];

  if (v2)
  {
    if (*(a1 + 96) == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      [WeakRetained _updatePosterConfigurationForCallServices:*(a1 + 40)];
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v34 = 0;
    [v4 saveToURL:v5 error:&v34];
    v6 = v34;
    v7 = *(a1 + 80);
    v8 = [*(a1 + 56) editViewModel];
    v9 = [v8 userHasAdjustedLayout];

    v10 = [*(a1 + 56) environment];
    v11 = [v10 pu_sourcePosterConfiguration];

    if ((v7 & 2) != 0)
    {
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = +[PUPosterSettings sharedInstance];
    v16 = [v15 recalculateLayoutProperties];

    v17 = v16 & v12;
    v18 = *(a1 + 48);
    v19 = [*(a1 + 40) media];
    v20 = [v19 firstObject];
    v21 = [v20 subpath];
    v22 = [v18 URLByAppendingPathComponent:v21];

    v23 = MEMORY[0x1E69BDF40];
    v24 = [*(a1 + 32) segmentationItem];
    v25 = *(a1 + 88);
    v26 = [*(a1 + 40) editConfiguration];
    v27 = *(a1 + 80);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_964;
    v31[3] = &unk_1E7B7C770;
    v32 = v22;
    v33 = *(a1 + 64);
    v28 = v22;
    LOBYTE(v30) = v17;
    v29 = [v23 saveSegmentationItem:v24 layerStackOptions:v25 configuration:v26 style:0 layout:0 allowedLayoutStrategies:v27 shouldRecalculateLayoutProperties:v30 toWallpaperURL:v28 completion:v31];
  }

  else
  {
    v13 = PLWallpaperGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v36 = v14;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "failed to save wallpaper: view model has nil segmentation item %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_964(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLWallpaperGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) path];
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "failed to save wallpaper to file: '%{public}@', error: %{public}@", &v7, 0x16u);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateProgressIndicator:*(a1 + 40)];
}

void __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _hideProgressIndicator];
    v4 = PLWallpaperGetLog();
    v5 = [v3 signpost];
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PUWallpaperPosterEditorController.Saving", "", v7, 2u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_prewarmSpatialPhotoModel
{
  v2 = [MEMORY[0x1E69C4598] sharedScheduler];
  [v2 scheduleTaskWithQoS:1 block:&__block_literal_global_934];
}

- (void)_resumeSavingAfterLoadingSpatialPhoto
{
  if ([(PUWallpaperPosterEditorController *)self isWaitingForSpatialPhotoToLoadBeforeSaving])
  {
    [(PUWallpaperPosterEditorController *)self setIsWaitingForSpatialPhotoToLoadBeforeSaving:0];
    v3 = [(PUWallpaperPosterEditorController *)self onSaveCompletionHandler];
    if (v3)
    {
      v4 = v3;
      [(PUWallpaperPosterEditorController *)self setOnSaveCompletionHandler:0];
      v5 = PLWallpaperGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Resuming save after loading spatial photo.", buf, 2u);
      }

      objc_initWeak(buf, self);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __74__PUWallpaperPosterEditorController__resumeSavingAfterLoadingSpatialPhoto__block_invoke;
      v8[3] = &unk_1E7B7B3B0;
      objc_copyWeak(&v10, buf);
      v6 = v4;
      v9 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], v8);

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }

    else
    {
      v7 = PLWallpaperGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Tried to resumeSavingAfterSpatialPhotoLoaded, but no onSaveCompletionHandler", buf, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Tried to resumeSavingAfterSpatialPhotoLoaded, but no spatial photo was being loaded", buf, 2u);
    }
  }
}

void __74__PUWallpaperPosterEditorController__resumeSavingAfterLoadingSpatialPhoto__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _saveWithCompletionHandler:*(a1 + 32)];
}

- (void)_handlePosterSaved:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  [(PUWallpaperPosterEditorController *)self setFinalizationState:v7];
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    v8 = [(PUWallpaperPosterEditorController *)self editModel];
    [v8 performChanges:&__block_literal_global_913];
  }

  if (v4)
  {
    v9 = [(PUWallpaperPosterEditorController *)self editor];
    [v9 pu_requestDismissalWithAction:1];
  }

  else
  {
    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      [(PUWallpaperPosterEditorController *)self _createShuffleResourceManager];
    }

    v10 = [(PUWallpaperPosterEditorController *)self _isShuffle];
    v11 = &stru_1F2AC6818;
    if (v10)
    {
      v11 = @"SHUFFLE_";
    }

    v32 = v11;
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTOS_WALLPAPER_EDITOR_SAVING_%@FAILED_TITLE", v32];
    v13 = PULocalizedString(v12);

    v14 = v6;
    v15 = *MEMORY[0x1E696AA08];
    v31 = v14;
    do
    {
      v16 = v14;
      v17 = [PUErrorPresentationController isNetworkRelatedError:v14];
      v18 = [v14 userInfo];
      v14 = [v18 objectForKeyedSubscript:v15];
    }

    while (!v17 && v14);
    if (v17)
    {
      v19 = @"PHOTOS_WALLPAPER_EDITOR_SAVING_%@FAILED_MESSAGE_CONNECTION";
    }

    else
    {
      v19 = @"PHOTOS_WALLPAPER_EDITOR_SAVING_%@FAILED_MESSAGE";
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:v19, v32];
    v21 = PULocalizedString(v20);

    if (PFOSVariantHasInternalUI())
    {
      v22 = [v21 stringByAppendingFormat:@"\n\nError (Internal):\n%@", v31];

      v21 = v22;
    }

    v23 = v13;
    v24 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v21 preferredStyle:1];
    v25 = MEMORY[0x1E69DC648];
    v26 = PXLocalizedString();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __62__PUWallpaperPosterEditorController__handlePosterSaved_error___block_invoke_2;
    v35[3] = &unk_1E7B7E148;
    v35[4] = self;
    v27 = [v25 actionWithTitle:v26 style:1 handler:v35];
    [v24 addAction:v27];

    if (PFOSVariantHasInternalUI())
    {
      v28 = MEMORY[0x1E69DC648];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __62__PUWallpaperPosterEditorController__handlePosterSaved_error___block_invoke_3;
      v33[3] = &unk_1E7B7E120;
      v33[4] = self;
      v34 = v31;
      v29 = [v28 actionWithTitle:@"Tap to Radar (Internal)" style:0 handler:v33];
      [v24 addAction:v29];
    }

    v30 = [(PUWallpaperPosterEditorController *)self editor];
    [v30 presentViewController:v24 animated:1 completion:0];
  }
}

void __62__PUWallpaperPosterEditorController__handlePosterSaved_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) editor];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)wantsLowLuminanceContent
{
  if (PFPosterWantsLowLuminanceContent())
  {
    v3 = [(PUWallpaperPosterEditorController *)self environment];
    if ([v3 px_isCallServices])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v5 = [(PUWallpaperPosterEditorController *)self environment];
      v4 = [v5 px_isBackdrop] ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_presentSpatialPhotoModelDownloadProgress:(double)a3 producer:(id)a4 downloadTask:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  v11 = [v10 px_firstKeyWindow];

  v12 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];

  if (!v12 && v11)
  {
    v13 = objc_alloc_init(MEMORY[0x1E696AE38]);
    [v13 setTotalUnitCount:100];
    [v13 setCompletedUnitCount:0];
    v14 = [objc_alloc(MEMORY[0x1E69C32E8]) initWithTargetDestination:0 progress:v13];
    [v14 setBottomSpacing:200.0];
    objc_initWeak(&location, self);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __101__PUWallpaperPosterEditorController__presentSpatialPhotoModelDownloadProgress_producer_downloadTask___block_invoke;
    v22 = &unk_1E7B7F820;
    objc_copyWeak(&v25, &location);
    v23 = v8;
    v24 = v9;
    [v14 setCloseButtonAction:&v19];
    v15 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_SPATIAL_TOAST_SECONDARY_TEXT");
    [v14 setCustomSubtitleText:{v15, v19, v20, v21, v22}];

    [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadProgressToast:v14];
    [v14 willStartProgress];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v16 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];
  v17 = [v16 progress];
  [v17 setCompletedUnitCount:a3];

  if (a3 == 100.0)
  {
    v18 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];
    [v18 finishProgressMarkingAsComplete:1];
  }
}

void __101__PUWallpaperPosterEditorController__presentSpatialPhotoModelDownloadProgress_producer_downloadTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained spatialModelDownloadTask];
  [v3 cancel];

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 spatialPhotoProducer:*(a1 + 32) downloadTaskDidEnd:*(a1 + 40) success:0 error:0];
}

- (void)spatialPhotoProducer:(id)a3 downloadTaskDidEnd:(id)a4 success:(BOOL)a5 error:(id)a6
{
  v12 = a6;
  v9 = a4;
  v10 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadTask];

  if (v10 == v9)
  {
    v11 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];
    [v11 dismissAnimated:1];

    [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadProgressToast:0];
    if (v12)
    {
      if (!a5)
      {
        [(PUWallpaperPosterEditorController *)self _presentLoadingError:v12];
      }
    }
  }
}

- (void)spatialPhotoProducer:(id)a3 downloadTask:(id)a4 didUpdateProgress:(double)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadTask];

  if (!v9)
  {
    [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadTask:v8];
  }

  v10 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadTask];

  if (v10 == v8)
  {
    [(PUWallpaperPosterEditorController *)self _presentSpatialPhotoModelDownloadProgress:v11 producer:v8 downloadTask:a5];
  }
}

- (void)spatialPhotoProducer:(id)a3 downloadTaskDidStart:(id)a4
{
  v6 = a4;
  v8 = a3;
  [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadTask:v6];
  v7 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];
  [v7 dismissAnimated:0];

  [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadProgressToast:0];
  [(PUWallpaperPosterEditorController *)self _presentSpatialPhotoModelDownloadProgress:v8 producer:v6 downloadTask:0.0];
}

- (id)solidColorHomeScreenColorPickerConfigurationForEditor:(id)a3
{
  v4 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v5 = [v4 segmentationItem];
  v6 = [v5 colorAnalysis];

  v7 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v8 = [v7 currentLayerStackViewModel];
  v9 = [v8 style];

  v10 = [v9 defaultDominantColorWithAnalysis:v6];
  v11 = [v10 pu_UIColor];
  v12 = objc_alloc_init(getPREditorColorPickerConfigurationClass());
  [v12 setSelectedColor:v11];

  return v12;
}

- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5
{
  v6 = a4;
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    v7 = *MEMORY[0x1E69C0AD0];
  }

  else
  {
    v8 = [v6 identifier];
    v9 = [(PUWallpaperPosterEditorController *)self editViewModel];
    [v9 currentClockAreaLuminanceForStyleKind:v8];
    v7 = v10;
  }

  return v7;
}

- (id)trailingMenuElementsForEditor:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(PUWallpaperPosterEditorController *)self _colorPickerAction];
  v6 = [(PUWallpaperPosterEditorController *)self _toggleHighKeyLowKeyAction];
  v7 = [(PUWallpaperPosterEditorController *)self _toggleSpatialPhotoEffectAction];
  v8 = [(PUWallpaperPosterEditorController *)self environment];
  v9 = [v8 px_isBackdrop];

  if ((v9 & 1) == 0)
  {
    v10 = v5;
    if (v5 || (v10 = v6) != 0)
    {
      [v4 addObject:v10];
    }
  }

  if (v7)
  {
    [v4 addObject:v7];
  }

  v11 = [(PUWallpaperPosterEditorController *)self _actionsMenu];
  if (v11)
  {
    [v4 addObject:v11];
  }

  return v4;
}

- (id)leadingMenuElementsForEditor:(id)a3
{
  v4 = a3;
  if ([(PUWallpaperPosterEditorController *)self _attemptedSettlingEffect])
  {
    v5 = [(PUWallpaperPosterEditorController *)self loadingSettlingEffect];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PUWallpaperPosterEditorController *)self _leadingActionsMenu];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v8 = [(PUWallpaperPosterEditorController *)self environment];
  v9 = [v8 px_isBackdrop];

  if (v9)
  {
    v10 = [(PUWallpaperPosterEditorController *)self _colorPickerAction];
    v11 = [(PUWallpaperPosterEditorController *)self _toggleHighKeyLowKeyAction];
    if (v10)
    {
      [v6 addObject:v10];
    }

    if (v11)
    {
      [v6 addObject:v11];
    }
  }

  v12 = [(PUWallpaperPosterEditorController *)self _toggleSettlingEffectAction];
  v13 = v12;
  if (v5)
  {
    v14 = [v4 pu_placeholderAction];
    [v6 addObject:v14];
  }

  else if (v12)
  {
    [v6 addObject:v12];
  }

  return v6;
}

- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5
{
  v8 = a4;
  v9 = [a3 pu_currentLook];
  v11 = [v9 identifier];

  v10 = [v8 identifier];

  [(PUWallpaperPosterEditorController *)self transitionBetweenStyleWithKind:v11 andKind:v10 progress:a5];
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self editViewModel];
  if (v5 && [(PUWallpaperPosterEditorController *)self _areStylesAvailable])
  {
    v6 = [(PUWallpaperPosterEditorController *)self currentEditConfiguration];
    v7 = [v5 currentLayerStackViewModel];
    v8 = [v7 style];
    v9 = [v8 kind];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v13 = [v6 style];
      v11 = [v13 kind];
    }

    if (!v11)
    {
      v14 = PLWallpaperGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Cannot determine current style from either edit configuration or layer stack, using Original as fallback", buf, 2u);
      }

      v11 = *MEMORY[0x1E69C0B28];
    }

    v15 = [v5 currentStyleKinds];
    if ([v15 count] && objc_msgSend(v15, "indexOfObject:", v11) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = PLWallpaperGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Initial look styleKind %@ not found in availableStyles", buf, 0xCu);
      }

      v17 = *MEMORY[0x1E69C0B28];
      v11 = v17;
    }

    v18 = [(PUWallpaperPosterEditorController *)self looksForEditor:v4];
    v19 = v11;
    v27 = v19;
    if (PXExists())
    {
      v12 = v19;
    }

    else
    {
      v20 = [v18 firstObject];
      v21 = [v20 identifier];
      v22 = v21;
      v23 = *MEMORY[0x1E69C0B28];
      if (v21)
      {
        v23 = v21;
      }

      v12 = v23;

      v24 = PLWallpaperGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = PXMap();
        *buf = 138543874;
        v29 = v12;
        v30 = 2114;
        v31 = v25;
        v32 = 2114;
        v33 = v12;
        _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, "Initial look %{public}@ is not present in looks array: %{public}@. Falling back to %{public}@.", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = *MEMORY[0x1E69C0B28];
  }

  return v12;
}

uint64_t __68__PUWallpaperPosterEditorController_initialLookIdentifierForEditor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (id)looksForEditor:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v5 = [v4 currentStyles];
  if (![(PUWallpaperPosterEditorController *)self _areStylesAvailable])
  {
    v6 = [(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled];
    v7 = MEMORY[0x1E69C0B28];
    if (v6 && ([v5 firstObject], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_msgSend(v5, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "kind"), v11 = objc_claimAutoreleasedReturnValue(), v12 = *v7, v11, v10, v9, v11 == v12))
    {
      v14 = [v5 firstObject];
      v20[0] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E69C0788]);
      v14 = [v13 initWithKind:*v7 parameters:MEMORY[0x1E695E0F8] colorSuggestions:MEMORY[0x1E695E0F0]];
      v15 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v14];
      v19 = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

      v5 = v15;
    }

    v5 = v16;
  }

  v17 = PXMap();

  return v17;
}

_PUPosterEditingLook *__52__PUWallpaperPosterEditorController_looksForEditor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 kind];
  v5 = [v3 clockFont];
  v6 = [v3 clockColor];
  v7 = [MEMORY[0x1E69C0750] whiteColor];
  v8 = [v6 isEqualToParallaxColor:v7];

  if ([*(a1 + 32) _isShuffle] & 1) != 0 || (v8)
  {
    v13 = PIParallaxStylePrefersVibrantClockForKind();
    PRPosterColorClass = getPRPosterColorClass();
    if (v13)
    {
      [PRPosterColorClass vibrantMaterialColor];
    }

    else
    {
      [PRPosterColorClass vibrantMonochromeColor];
    }
    v12 = ;
  }

  else
  {
    v9 = [v3 clockColor];
    v10 = [v9 pu_UIColor];
    [v3 clockVibrancy];
    v11 = [v10 colorWithAlphaComponent:?];

    v12 = [objc_alloc(getPRPosterColorClass()) initWithColor:v11 preferredStyle:2];
  }

  v15 = PUPosterLookLocalizedDisplayNameForLayerStyleKind(v4);
  v16 = [[_PUPosterEditingLook alloc] initWithIdentifier:v4 displayName:v15 pu_timeAppearance:2 pu_timeFontIdentifier:v5 pu_timeFontColor:v12];

  return v16;
}

- (BOOL)_areStylesAvailable
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v4 = [v3 currentStyles];
  if ([v4 count] && (objc_msgSend(v3, "settlingEffectEnabled") & 1) == 0)
  {
    v5 = ![(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_transferSubviewsFrom:(id)a3 to:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 subviews];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addSubview:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setFloatingView:(id)a3
{
  v10 = a3;
  v4 = self->_floatingView;
  floatingView = v4;
  if (v4 != v10)
  {
    v6 = [(UIView *)v4 isEqual:v10];

    v8 = v10;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PUWallpaperPosterEditorController *)self _transferSubviewsFrom:self->_floatingView to:v10];
    v9 = v10;
    floatingView = self->_floatingView;
    self->_floatingView = v9;
  }

  v8 = v10;
LABEL_5:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setForegroundView:(id)a3
{
  v10 = a3;
  v4 = self->_foregroundView;
  foregroundView = v4;
  if (v4 != v10)
  {
    v6 = [(UIView *)v4 isEqual:v10];

    v8 = v10;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PUWallpaperPosterEditorController *)self _transferSubviewsFrom:self->_foregroundView to:v10];
    v9 = v10;
    foregroundView = self->_foregroundView;
    self->_foregroundView = v9;
  }

  v8 = v10;
LABEL_5:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setBackgroundView:(id)a3
{
  v8 = a3;
  v5 = self->_backgroundView;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(UIView *)v5 isEqual:v8];

    if ((v7 & 1) == 0)
    {
      [(PUWallpaperPosterEditorController *)self _transferSubviewsFrom:self->_backgroundView to:v8];
      [(UIView *)self->_backgroundView removeObserver:self forKeyPath:@"layer.bounds" context:&BackgroundViewObservationContext];
      objc_storeStrong(&self->_backgroundView, a3);
      [(UIView *)self->_backgroundView addObserver:self forKeyPath:@"layer.bounds" options:0 context:&BackgroundViewObservationContext];
    }
  }
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v6 = a4;
  v7 = [(PUWallpaperPosterEditorController *)self backgroundView];

  v8 = [v6 backgroundView];
  [(PUWallpaperPosterEditorController *)self setBackgroundView:v8];

  v9 = [v6 foregroundView];
  [(PUWallpaperPosterEditorController *)self setForegroundView:v9];

  v10 = [v6 floatingView];

  [(PUWallpaperPosterEditorController *)self setFloatingView:v10];
  [(PUWallpaperPosterEditorController *)self _updateContainerFrame];
  if (![(PUWallpaperPosterEditorController *)self isPreviewingSettlingEffect]|| !v7)
  {
    [(PUWallpaperPosterEditorController *)self _updateVisibleLayerStackViewsWithPreviouslyVisibleStackViewModels:MEMORY[0x1E695E0F0]];
  }

  if (PXPreferencesGetBool())
  {
    v14 = [(PUWallpaperPosterEditorController *)self floatingView];
    v11 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v12 = [v11 viewManager];
    v13 = [v12 debugRectsView];
    [v14 addSubview:v13];
  }

  else
  {
    v14 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v11 = [v14 viewManager];
    v12 = [v11 debugRectsViewIfLoaded];
    [v12 removeFromSuperview];
  }
}

- (void)_updateDebugRectViews
{
  Bool = PXPreferencesGetBool();
  v29 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v4 = [v29 viewManager];
  v5 = v4;
  if (Bool)
  {
    v6 = [v4 debugRectsView];

    v7 = [(PUWallpaperPosterEditorController *)self editor];
    v8 = [v7 pu_preferences];
    [v8 pu_preferredSalientContentRectangle];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [MEMORY[0x1E69DC888] greenColor];
    [v6 setDebugRect:@"preferred" forIdentifier:v17 color:v10 borderWidth:{v12, v14, v16, 4.0}];

    v18 = [(PUWallpaperPosterEditorController *)self editor];
    v19 = [v18 pu_environment];
    PUAdjustedSalientContentRectangleFromEnvironment(v19);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v5 = [MEMORY[0x1E69DC888] redColor];
    [v6 setDebugRect:@"current" forIdentifier:v5 color:v21 borderWidth:{v23, v25, v27, 3.0}];
    v29 = v6;
  }

  else
  {
    v28 = [v4 debugRectsViewIfLoaded];
    [v28 removeAllDebugRects];
  }
}

- (void)setEnvironment:(id)a3
{
  v5 = a3;
  v6 = self->_environment;
  objc_storeStrong(&self->_environment, a3);
  if (self->_environment)
  {
    v7 = [(PUPosterEditingEnvironment *)v6 pu_deviceOrientation];
    if (v7 != [v5 pu_deviceOrientation])
    {
      [(PUWallpaperPosterEditorController *)self _savePosterEditConfigurationForCurrentPosterMediaWithEnvironment:v6];
      [(PUWallpaperPosterEditorController *)self _updateTitleHeightProperties];
    }

    [(PUWallpaperPosterEditorController *)self _updateDeviceOrientation];
    [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyro];
    [(PUWallpaperPosterEditorController *)self _updateOverlayContentConstraints];
    [(PUWallpaperPosterEditorController *)self _updatePreferredTitleBounds];
    if ([v5 px_isCallServices])
    {
      v8 = [MEMORY[0x1E69C07A0] standardAlphabeticTextParameters];
      [MEMORY[0x1E69C07A0] setSystemParameters:v8];
    }

    v9 = [(PUPosterEditingEnvironment *)v6 px_isDepthEffectDisabled];
    if (v9 != [v5 px_isDepthEffectDisabled])
    {
      v10 = [(PUWallpaperPosterEditorController *)self editModel];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__PUWallpaperPosterEditorController_setEnvironment___block_invoke;
      v13[3] = &unk_1E7B78890;
      v11 = v5;
      v14 = v11;
      [v10 performChanges:v13];

      if ([v11 px_isDepthEffectDisabled])
      {
        v12 = [(PUWallpaperPosterEditorController *)self editViewModel];
        [v12 performChanges:&__block_literal_global_893];

        if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
        {
          [(PUWallpaperPosterEditorController *)self _setShuffleEffect:1 enabled:0];
          [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
        }
      }
    }

    [(PUWallpaperPosterEditorController *)self _updateDebugRectViews];
  }
}

void __52__PUWallpaperPosterEditorController_setEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDepthEffectDisabled:{objc_msgSend(v2, "px_isDepthEffectDisabled")}];
}

- (BOOL)editorShouldBeginFinalization:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  if ([v5 isLoadingSpatialPhoto])
  {
    v6 = [(PUWallpaperPosterEditorController *)self progressIndicator];

    if (v6)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [(PUWallpaperPosterEditorController *)self finalizationState];
  if (!v8)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__PUWallpaperPosterEditorController_editorShouldBeginFinalization___block_invoke;
    v10[3] = &unk_1E7B7FA30;
    objc_copyWeak(&v11, &location);
    [(PUWallpaperPosterEditorController *)self _saveWithCompletionHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v7 = v8 == 2;
LABEL_8:

  return v7;
}

void __67__PUWallpaperPosterEditorController_editorShouldBeginFinalization___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PUWallpaperPosterEditorController_editorShouldBeginFinalization___block_invoke_2;
  block[3] = &unk_1E7B7CE88;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __67__PUWallpaperPosterEditorController_editorShouldBeginFinalization___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePosterSaved:*(a1 + 48) error:*(a1 + 32)];
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v6 = a4;
  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_INFO, "editor update", v8, 2u);
  }

  [(PUWallpaperPosterEditorController *)self setEnvironment:v6];
}

- (void)editorDidInvalidate:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = PLWallpaperGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_INFO, "editor invalidate", buf, 2u);
  }

  v5 = PLWallpaperGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "editorDidInvalidate", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  [(PUWallpaperPosterEditorController *)self cancelPendingHint];
  [MEMORY[0x1E69C3CA0] removeAllPresentationDelegates];
  [(PUWallpaperPosterEditorController *)self _stopObservingPlayerItem];
  v10 = [(PUWallpaperPosterEditorController *)self editViewModel];
  [v10 shutdownWithTimeout:10.0];

  v11 = [(PUWallpaperPosterEditorController *)self segmentationLoading];
  [v11 cancel];

  v12 = [(PUWallpaperPosterEditorController *)self layerStackRequest];
  v13 = [v12 renderContext];
  [v13 cancelAllRequests];

  v14 = [(PUWallpaperPosterEditorController *)self settlingEffectRequest];
  v15 = [v14 renderContext];
  [v15 cancelAllRequests];

  v16 = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
  v17 = dispatch_time(0, 10000000000);
  v18 = dispatch_group_wait(v16, v17);

  if (v18)
  {
    v19 = PLWallpaperGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_FAULT, "Timed out waiting for segmentation loading", buf, 2u);
    }
  }

  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    v20 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    [v20 stopPreloadingResources];

    [(PUWallpaperPosterEditorController *)self setShuffleResourceManager:0];
  }

  v21 = [(PUWallpaperPosterEditorController *)self _isShuffle];
  v22 = [(PUWallpaperPosterEditorController *)self isLoading];
  v23 = [(PUWallpaperPosterEditorController *)self finalizationState]== 1;
  v24 = [(PUWallpaperPosterEditorController *)self editModel];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __57__PUWallpaperPosterEditorController_editorDidInvalidate___block_invoke;
  v31[3] = &__block_descriptor_35_e45_v16__0___PUWallpaperPosterMutableEditModel__8l;
  v32 = v21;
  v33 = v23;
  v34 = v22;
  [v24 performChanges:v31];

  [(PUWallpaperPosterEditorController *)self setPosterConfiguration:0];
  [(PUWallpaperPosterEditorController *)self setEnvironment:0];
  [(PUWallpaperPosterEditorController *)self setPhotoPickerViewController:0];
  [(PUWallpaperPosterEditorController *)self setEditModel:0];
  v25 = [(PUWallpaperPosterEditorController *)self editor];
  [v25 dismissViewControllerAnimated:0 completion:0];

  [MEMORY[0x1E69BDF28] freeResources];
  v26 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v29 = v8;
  v30 = v29;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v30, OS_SIGNPOST_INTERVAL_END, v6, "editorDidInvalidate", "", buf, 2u);
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "editorDidInvalidate";
    v38 = 2048;
    v39 = ((((v26 - v9) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

void __57__PUWallpaperPosterEditorController_editorDidInvalidate___block_invoke(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (a1[32] == 1 && a1[33] == 1)
  {
    v4 = v3;
    [v3 setIdleTimerDisabled:0 forReason:@"shuffleSave"];
    v3 = v4;
  }

  if (a1[34] == 1)
  {
    v5 = v3;
    [v3 setIdleTimerDisabled:0 forReason:@"loading"];
    v3 = v5;
  }
}

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v37[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLWallpaperGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "editor initialize", buf, 2u);
  }

  [MEMORY[0x1E69C3CA0] startObservingTips];
  [MEMORY[0x1E69BDF28] ensureResources];
  v9 = [(PUWallpaperPosterEditorController *)self editor];
  [v9 pu_updatePreferences:&__block_literal_global_880];

  v10 = [[PUWallpaperPosterEditModel alloc] initWithEditor:v6];
  [(PUWallpaperPosterEditorController *)self setEditModel:v10];

  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
  v35 = v6;
  v17 = [v6 contentOverlayView];
  [v17 addSubview:v16];

  [(PUWallpaperPosterEditorController *)self setContentOverlayContainerView:v16];
  v18 = [[_TtC15PhotosUIPrivate19PUPosterLoadingView alloc] initWithFrame:v12, v13, v14, v15];
  [v16 addSubview:v18];
  [(PUWallpaperPosterEditorController *)self setLoadingView:v18];
  v19 = [v16 bottomAnchor];
  v20 = [(PUPosterLoadingView *)v18 bottomAnchor];
  [(PUWallpaperPosterEditorController *)self _hintLabelBottomAnchorDistance];
  v21 = [v19 constraintEqualToAnchor:v20 constant:?];
  [(PUWallpaperPosterEditorController *)self setLoadingViewBottomConstraint:v21];

  v22 = MEMORY[0x1E696ACD8];
  v23 = [(PUPosterLoadingView *)v18 centerXAnchor];
  v24 = [v16 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v37[0] = v25;
  v26 = [(PUWallpaperPosterEditorController *)self loadingViewBottomConstraint];
  v37[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [v22 activateConstraints:v27];

  [(PUWallpaperPosterEditorController *)self _setupUserTransformView];
  [(PUWallpaperPosterEditorController *)self setEnvironment:v7];
  v28 = [v7 pu_posterDescriptor];

  if (v28)
  {
    [(PUWallpaperPosterEditorController *)self setIsInitialSave:1];
    [(PUWallpaperPosterEditorController *)self _loadPosterDescriptor];
  }

  else
  {
    v29 = [v7 pu_sourcePosterConfiguration];

    if (v29)
    {
      v30 = [v7 pu_sourcePosterConfiguration];
      if ([v30 options])
      {
        v32 = [v7 px_isCallServices];

        if ((v32 & 1) == 0)
        {
          [(PUWallpaperPosterEditorController *)self setFadeInInitialLoad:1];
          [(PUWallpaperPosterEditorController *)self setIsInitialSave:1];
        }
      }

      else
      {
      }

      [(PUWallpaperPosterEditorController *)self _loadSourcePosterConfiguration];
    }

    else
    {
      v31 = [(PUWallpaperPosterEditorController *)self editViewModel];

      if (!v31)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        [v33 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:4436 description:@"asset not found"];

        abort();
      }

      [(PUWallpaperPosterEditorController *)self _loadEditViewModelAndUpdateLooks:1];
    }
  }
}

- (void)transitionBetweenStyleWithKind:(id)a3 andKind:(id)a4 progress:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 isEqualToString:v9];
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    a5 = 0.0;
    v12 = *MEMORY[0x1E69C0B38];
  }

  else
  {
    v12 = v9;
  }

  v13 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__PUWallpaperPosterEditorController_transitionBetweenStyleWithKind_andKind_progress___block_invoke;
  v14[3] = &__block_descriptor_56_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8lu32l8u48l8;
  v14[4] = v11;
  *&v14[5] = a5;
  v14[6] = v12;
  [v13 performChanges:v14];
}

uint64_t __85__PUWallpaperPosterEditorController_transitionBetweenStyleWithKind_andKind_progress___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 scrollToPosition:&v3];
}

- (void)_tapToRadarWithComponent:(int64_t)a3 asset:(id)a4 suggestion:(id)a5 error:(id)a6
{
  v25 = a6;
  v26 = a3 != 8;
  v10 = a5;
  v11 = a4;
  [(PUWallpaperPosterEditorController *)self _showProgressIndicator:@"Preparing Attachments…" determinate:0];
  v12 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v13 = [v12 currentLayerStackViewModel];
  v14 = [v13 compoundLayerStack];

  v27 = v12;
  v15 = [v12 segmentationItem];
  v16 = [(PUWallpaperPosterEditorController *)self environment];
  v17 = [v16 pu_posterDescriptor];
  v18 = [(PUWallpaperPosterEditorController *)self environment];
  v19 = [v18 pu_sourcePosterConfiguration];
  v24 = a3;
  v29 = v14;
  v20 = v14;
  v21 = v15;
  v22 = [PUWallpaperRadarAttachmentProvider radarConfigurationForAsset:v11 suggestion:v10 compoundLayerStack:v20 segmentationItem:v15 posterDescriptor:v17 posterConfiguration:v19 component:v24 completionHandler:0];

  [v22 setWantsSystemDiagnostics:v26];
  [v22 setWantsPhotosDiagnostics:v26];
  if (v25)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encountered with this wallpaper:\n%@", v25];
    [v22 setDescription:v23];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __85__PUWallpaperPosterEditorController__tapToRadarWithComponent_asset_suggestion_error___block_invoke;
  v30[3] = &unk_1E7B80280;
  v30[4] = self;
  [v22 setCompletionHandler:v30];
  PXFileRadarWithConfiguration();
}

- (void)_tapToRadarWithComponent:(int64_t)a3 error:(id)a4
{
  v77[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v8 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v9 = [v8 assetUUID];

  if (v9)
  {
    v10 = MEMORY[0x1E6978630];
    v77[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
    v12 = [v7 librarySpecificFetchOptions];
    v13 = [v10 fetchAssetsWithUUIDs:v11 options:v12];
    v14 = [v13 firstObject];

    v15 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
    objc_opt_class();
    LOBYTE(v12) = objc_opt_isKindOfClass();

    if (v12)
    {
      v56 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
      v16 = [v56 suggestionUUID];
      v17 = [v7 librarySpecificFetchOptions];
      [v17 setFetchLimit:1];
      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", v16];
      [v17 setPredicate:v18];

      [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v17];
      v19 = self;
      v20 = a3;
      v21 = v14;
      v22 = v9;
      v23 = v7;
      v25 = v24 = v6;
      v26 = [v25 firstObject];

      v6 = v24;
      v7 = v23;
      v9 = v22;
      v14 = v21;
      a3 = v20;
      self = v19;
    }

    else
    {
      v26 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke;
    aBlock[3] = &unk_1E7B78828;
    aBlock[4] = self;
    v27 = v14;
    v74 = v27;
    v28 = v26;
    v75 = v28;
    v29 = v6;
    v76 = v29;
    v30 = _Block_copy(aBlock);
    if (a3)
    {
      [(PUWallpaperPosterEditorController *)self _tapToRadarWithComponent:a3 asset:v27 suggestion:v28 error:v29];
    }

    else
    {
      v57 = v6;
      v31 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Tap to Radar" message:@"Please choose the issue you are observing:" preferredStyle:1];
      v32 = MEMORY[0x1E69DC648];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_2;
      v71[3] = &unk_1E7B80980;
      v55 = v30;
      v33 = v30;
      v72 = v33;
      v34 = [v32 actionWithTitle:@"Suggested crop could be better" style:0 handler:v71];
      [v31 addAction:v34];

      v35 = MEMORY[0x1E69DC648];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_3;
      v69[3] = &unk_1E7B80980;
      v36 = v33;
      v70 = v36;
      v37 = [v35 actionWithTitle:@"I don't like suggested clock appearance" style:0 handler:v69];
      [v31 addAction:v37];

      if (v28)
      {
        v38 = MEMORY[0x1E69DC648];
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_4;
        v67[3] = &unk_1E7B80980;
        v39 = v36;
        v68 = v39;
        v40 = [v38 actionWithTitle:@"I don't like this photo" style:0 handler:v67];
        [v31 addAction:v40];

        v41 = MEMORY[0x1E69DC648];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_5;
        v65[3] = &unk_1E7B80980;
        v66 = v39;
        v42 = [v41 actionWithTitle:@"Photo is poor quality (blurry style:too dark handler:{etc.)", 0, v65}];
        [v31 addAction:v42];
      }

      v43 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v44 = [v43 spatialPhotoEnabled];

      if (v44)
      {
        v45 = MEMORY[0x1E69DC648];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_6;
        v63[3] = &unk_1E7B80980;
        v64 = v36;
        v46 = [v45 actionWithTitle:@"Spatial Scene has issues" style:0 handler:v63];
        [v31 addAction:v46];
      }

      v47 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v48 = [v47 settlingEffectEnabled];

      if (v48)
      {
        v49 = MEMORY[0x1E69DC648];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_7;
        v61[3] = &unk_1E7B80980;
        v62 = v36;
        v50 = [v49 actionWithTitle:@"Live Photo effect has issues" style:0 handler:v61];
        [v31 addAction:v50];
      }

      v51 = MEMORY[0x1E69DC648];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_8;
      v59[3] = &unk_1E7B80980;
      v60 = v36;
      v52 = [v51 actionWithTitle:@"Other" style:0 handler:v59];
      [v31 addAction:v52];

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_9;
      v58[3] = &unk_1E7B7E148;
      v58[4] = self;
      v53 = [MEMORY[0x1E69DC648] actionWithTitle:@"Dismiss" style:1 handler:v58];
      [v31 addAction:v53];

      v54 = [(PUWallpaperPosterEditorController *)self editor];
      [v54 presentViewController:v31 animated:1 completion:0];

      v30 = v55;
      v6 = v57;
    }
  }
}

uint64_t __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) editor];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  return [v5 _tapToRadarWithComponent:a2 asset:v6 suggestion:v7 error:v8];
}

void __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke_9(uint64_t a1)
{
  v1 = [*(a1 + 32) editor];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)tipPopoverDidDismissWithTipID:(id)a3
{
  v4 = [(PUWallpaperPosterEditorController *)self tipContainerViewController];
  v3 = [v4 view];
  [v3 removeFromSuperview];
}

- (void)prepareTipPopover:(id)a3 tipID:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  v9 = [(PUWallpaperPosterEditorController *)self tipContainerViewController];
  v10 = [v9 view];

  [v8 bounds];
  [v10 setFrame:?];
  [v8 addSubview:v10];
  [v6 setSourceView:v10];
  v11 = [MEMORY[0x1E69C3CA0] spatialPhotoDisabledLowPowerModeTipIdentifier];
  v12 = [v7 isEqualToString:v11];

  v13 = [(PUWallpaperPosterEditorController *)self editor];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 pu_viewForMenuElementIdentifier:@"PUPosterEditorActionIdentifierSpatialPhoto"];

    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v15 = [v13 pu_viewForMenuElementIdentifier:@"PUPosterEditorActionIdentifierSettlingEffect"];

  if (v15)
  {
    v17[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v6 setPassthroughViews:v16];

LABEL_6:
    [v15 frame];
    [v6 setSourceRect:?];
  }

LABEL_7:
}

- (id)sourceItemForTipID:(id)a3
{
  v3 = [(PUWallpaperPosterEditorController *)self tipContainerViewController];
  v4 = [v3 view];

  return v4;
}

- (id)presentationControllerForTipID:(id)a3
{
  tipContainerViewController = self->_tipContainerViewController;
  if (!tipContainerViewController)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v6 = self->_tipContainerViewController;
    self->_tipContainerViewController = v5;

    v7 = [MEMORY[0x1E69DC888] clearColor];
    v8 = [(UIViewController *)self->_tipContainerViewController view];
    [v8 setBackgroundColor:v7];

    v9 = [(UIViewController *)self->_tipContainerViewController view];
    [v9 setAutoresizingMask:45];

    tipContainerViewController = self->_tipContainerViewController;
  }

  return tipContainerViewController;
}

- (void)_presentSettlingEffectDebugView:(id)a3
{
  v4 = a3;
  if (PFOSVariantHasInternalUI())
  {
    v5 = [(PUWallpaperPosterEditorController *)self environment];
    v6 = [v5 px_isCallServices];

    if ((v6 & 1) == 0)
    {
      v7 = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
      if (v7)
      {
        v8 = [[PUWallpaperSettlingEffectDebugView alloc] initWithSegmentationItem:v4];
        objc_initWeak(&location, self);
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __69__PUWallpaperPosterEditorController__presentSettlingEffectDebugView___block_invoke;
        v12 = &unk_1E7B80638;
        objc_copyWeak(&v13, &location);
        [(PUWallpaperSettlingEffectDebugView *)v8 setOnFileRadar:&v9];
        [v7 addSubview:{v8, v9, v10, v11, v12}];
        [v7 bounds];
        v16 = CGRectInset(v15, 40.0, 200.0);
        [(PUWallpaperSettlingEffectDebugView *)v8 setFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __69__PUWallpaperPosterEditorController__presentSettlingEffectDebugView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tapToRadarWithComponent:9 error:0];
}

- (void)setLoadingSettlingEffect:(BOOL)a3
{
  if (self->_loadingSettlingEffect != a3)
  {
    self->_loadingSettlingEffect = a3;
    [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
  }
}

- (void)_animateScrollToStyleKindAnimatorUpdated
{
  v3 = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindStartingKind];
  v4 = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindAnimator];
  [v4 presentationValue];
  v6 = v5;

  v7 = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindEndingKind];
  v8 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PUWallpaperPosterEditorController__animateScrollToStyleKindAnimatorUpdated__block_invoke;
  v10[3] = &__block_descriptor_56_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8lu32l8u48l8;
  v10[4] = v3;
  *&v10[5] = v6;
  v10[6] = v7;
  [v8 performChanges:v10];

  if (v6 == 1.0)
  {
    v9 = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindCompletion];
    v9[2]();
  }
}

uint64_t __77__PUWallpaperPosterEditorController__animateScrollToStyleKindAnimatorUpdated__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 scrollToPosition:&v3];
}

- (void)_animateScrollToStyleKind:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v9 = [v8 style];
  v10 = [v9 kind];
  [(PUWallpaperPosterEditorController *)self setAnimateScrollToStyleKindStartingKind:v10];

  [(PUWallpaperPosterEditorController *)self setAnimateScrollToStyleKindEndingKind:v7];
  [(PUWallpaperPosterEditorController *)self setAnimateScrollToStyleKindCompletion:v6];

  v11 = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindAnimator];
  if (!v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:0.0];
    [v12 registerChangeObserver:self context:"AnimateScrollToStyleKindAnimatorObservationContext"];
    [v12 setLabel:@"AnimateScrollToStyleKindAnimator"];
    [v12 setHighFrameRateReason:2228225];
    [(PUWallpaperPosterEditorController *)self setAnimateScrollToStyleKindAnimator:v12];
    v11 = v12;
  }

  v13 = v11;
  [v11 performChangesWithoutAnimation:&__block_literal_global_837];
  [v13 performChangesWithDuration:4 curve:&__block_literal_global_839 changes:0.3];
}

- (void)_enableSettlingEffect
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v4 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  objc_initWeak(&location, self);
  if (([v3 settlingEffectEnabled] & 1) == 0)
  {
    v5 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v6 = [v5 originalLayerStackViewModel];
    v7 = [v6 canEnableSettlingEffect];

    if (v7)
    {
      if (![(PUWallpaperPosterEditorController *)self settlingEffectToggleInProgress])
      {
        [(PUWallpaperPosterEditorController *)self setSettlingEffectToggleInProgress:1];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke;
        aBlock[3] = &unk_1E7B80610;
        v8 = v3;
        v20 = v8;
        objc_copyWeak(&v21, &location);
        v9 = _Block_copy(aBlock);
        v10 = [v4 style];
        v11 = [v10 kind];

        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke_6;
        v17 = &unk_1E7B78288;
        v12 = v11;
        v18 = v12;
        [v8 performChanges:&v14];
        v13 = *MEMORY[0x1E69C0B28];
        if ([v12 isEqualToString:{*MEMORY[0x1E69C0B28], v14, v15, v16, v17}])
        {
          v9[2](v9);
        }

        else
        {
          [(PUWallpaperPosterEditorController *)self _animateScrollToStyleKind:v13 completion:v9];
        }

        objc_destroyWeak(&v21);
      }
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _showSettlingEffectUnavailableTip];
    }
  }

  objc_destroyWeak(&location);
}

void __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke(uint64_t a1)
{
  [*(a1 + 32) performChanges:&__block_literal_global_829];
  v2 = MEMORY[0x1E69C3CA0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke_3;
  v3[3] = &unk_1E7B80610;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 dismissTip:v3];

  objc_destroyWeak(&v5);
}

void __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained editor];
  [v3 pu_updateLooks];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _startSettlingEffectPreview];

  v5 = dispatch_time(0, 10000000);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke_4;
  v6[3] = &unk_1E7B80610;
  v7 = *(a1 + 32);
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v8);
}

void __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) performChanges:&__block_literal_global_831];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateUserTransformView];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setSettlingEffectToggleInProgress:0];
}

- (void)_disableSettlingEffect
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  objc_initWeak(&location, self);
  if (([v3 settlingEffectEnabled] & 1) != 0 && !-[PUWallpaperPosterEditorController settlingEffectToggleInProgress](self, "settlingEffectToggleInProgress"))
  {
    [(PUWallpaperPosterEditorController *)self setSettlingEffectToggleInProgress:1];
    [v3 performChanges:&__block_literal_global_827];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __59__PUWallpaperPosterEditorController__disableSettlingEffect__block_invoke_2;
    v4[3] = &unk_1E7B80610;
    objc_copyWeak(&v6, &location);
    v5 = v3;
    [(PUWallpaperPosterEditorController *)self _stopSettlingEffectPreview:v4];

    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&location);
}

void __59__PUWallpaperPosterEditorController__disableSettlingEffect__block_invoke_2(uint64_t a1)
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __59__PUWallpaperPosterEditorController__disableSettlingEffect__block_invoke_3;
  v10 = &unk_1E7B80610;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = *(a1 + 32);
  v2 = _Block_copy(&v7);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateUserTransformView];

  v4 = [*(a1 + 32) settlingEffectStateRestorationLayerStyleKind];
  v5 = v4;
  if (v4 && ([v4 isEqualToString:*MEMORY[0x1E69C0B28]] & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 _animateScrollToStyleKind:v5 completion:v2];
  }

  else
  {
    v2[2](v2);
  }

  objc_destroyWeak(&v12);
}

void __59__PUWallpaperPosterEditorController__disableSettlingEffect__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained editor];
  [v3 pu_updateLooks];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PUWallpaperPosterEditorController__disableSettlingEffect__block_invoke_4;
  v7[3] = &unk_1E7B787C0;
  v7[4] = &v8;
  [v4 performChanges:v7];
  if (*(v9 + 24) == 1)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 _updateUserTransformView];
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setSettlingEffectToggleInProgress:0];

  _Block_object_dispose(&v8, 8);
}

uint64_t __59__PUWallpaperPosterEditorController__disableSettlingEffect__block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 applyReframeVisibleFrameRestoration];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_showTrySettlingEffectTip
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  if (!-[PUWallpaperPosterEditorController loadingSettlingEffect](self, "loadingSettlingEffect") && ([v3 settlingEffectEnabled] & 1) == 0)
  {
    v4 = [v3 originalLayerStackViewModel];
    if ([v4 canEnableSettlingEffect])
    {
      v5 = [v3 segmentationItem];
      v6 = [v5 settlingEffectHasInterestingMotion];

      if (v6)
      {
        [MEMORY[0x1E69C3CA0] presentTrySettlingEffectTip:self];
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if ([(PUWallpaperPosterEditorController *)self loadingSettlingEffect])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if ([v3 settlingEffectEnabled])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [v3 originalLayerStackViewModel];
    if ([v10 canEnableSettlingEffect])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v3 segmentationItem];
    v14 = 138413058;
    if ([v12 settlingEffectHasInterestingMotion])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Cannot show try settling effect tip; loading: %@ settling enabled: %@ can enable settling: %@ interesting motion: %@", &v14, 0x2Au);
  }

LABEL_22:
}

- (void)_showSettlingEffectUnavailableTip
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  if (-[PUWallpaperPosterEditorController loadingSettlingEffect](self, "loadingSettlingEffect") || ([v3 settlingEffectEnabled] & 1) != 0 || (objc_msgSend(v3, "originalLayerStackViewModel"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "canEnableSettlingEffect"), v4, v5))
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if ([(PUWallpaperPosterEditorController *)self loadingSettlingEffect])
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if ([v3 settlingEffectEnabled])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [v3 originalLayerStackViewModel];
      v11 = 138412802;
      if ([v9 canEnableSettlingEffect])
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Cannot show settling effect unavailable tip; loading: %@ settling enabled: %@ can enable settling: %@", &v11, 0x20u);
    }
  }

  else
  {
    [MEMORY[0x1E69C3CA0] presentFailedSettlingEffectTip:self];
  }
}

- (void)_toggleSettlingEffectEnabled
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v4 = [v3 settlingEffectEnabled];

  if (v4)
  {

    [(PUWallpaperPosterEditorController *)self _disableSettlingEffect];
  }

  else
  {

    [(PUWallpaperPosterEditorController *)self _enableSettlingEffect];
  }
}

- (BOOL)_attemptedSettlingEffect
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    goto LABEL_11;
  }

  v3 = [(PUWallpaperPosterEditorController *)self environment];
  if ([v3 px_isCallServices])
  {

LABEL_11:
    LOBYTE(v11) = 0;
    return v11;
  }

  v4 = [(PUWallpaperPosterEditorController *)self environment];
  v5 = [v4 px_isBackdrop];

  if ((v5 & 1) != 0 || !PFPosterEnableSettlingEffect() || ![MEMORY[0x1E69BDF40] currentDeviceSupportsSettlingEffect])
  {
    goto LABEL_11;
  }

  v6 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  if (v6)
  {
    v7 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
    v8 = [v7 assetUUID];

    if (v8)
    {
      v9 = [(PUWallpaperPosterEditorController *)self currentPosterMediaIsLivePhoto];

      if (v9)
      {
        v10 = [(PUWallpaperPosterEditorController *)self currentPosterMediaIsLivePhoto];
        LOBYTE(v11) = [v10 BOOLValue];
      }

      else
      {
        v13 = [v6 librarySpecificFetchOptions];
        [v13 setIncludeGuestAssets:1];
        v14 = MEMORY[0x1E6978630];
        v19[0] = v8;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v16 = [v14 fetchAssetsWithUUIDs:v15 options:v13];
        v17 = [v16 firstObject];

        v11 = ([v17 mediaSubtypes] >> 3) & 1;
        v18 = [MEMORY[0x1E696AD98] numberWithBool:v11];
        [(PUWallpaperPosterEditorController *)self setCurrentPosterMediaIsLivePhoto:v18];
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)_stopObservingPlayerItem
{
  v3 = [(PUWallpaperPosterEditorController *)self observedPlayerItem];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E6987A10] object:v5];

    [v5 removeObserver:self forKeyPath:@"status" context:&PlayerItemObservationContext];
    [(PUWallpaperPosterEditorController *)self setObservedPlayerItem:0];
    v3 = v5;
  }
}

- (void)_observeCurrentPlayerItem
{
  v11 = [(PUWallpaperPosterEditorController *)self observedPlayerItem];
  v3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
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

      [v11 removeObserver:self forKeyPath:@"status" context:&PlayerItemObservationContext];
    }

    if (v7)
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:self selector:sel__playerItemDidFinish_ name:*v8 object:v7];

      [v7 addObserver:self forKeyPath:@"status" options:0 context:&PlayerItemObservationContext];
    }

    [(PUWallpaperPosterEditorController *)self setObservedPlayerItem:v7];
  }
}

- (void)_playerItemDidFinish:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PUWallpaperPosterEditorController__playerItemDidFinish___block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateMotionEffectsEnabled
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  if (UIAccessibilityIsReduceMotionEnabled() && (([v3 settlingEffectEnabled] & 1) != 0 || -[PUWallpaperPosterEditorController _isSpatialPhotoEnabled](self, "_isSpatialPhotoEnabled")))
  {
    [v3 performChanges:&__block_literal_global_819];
  }
}

void __64__PUWallpaperPosterEditorController__updateMotionEffectsEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSettlingEffectEnabled:0];
  [v2 setSpatialPhotoEnabled:0];
}

- (void)_stopSettlingEffectPreview:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v6 = [v5 viewManager];
  v7 = [v5 currentLayerStack];
  v8 = [v7 foregroundLayer];
  v9 = [v6 viewForLayer:v8];

  v10 = [v6 videoLayerView];
  v11 = [v10 player];
  if ([(PUWallpaperPosterEditorController *)self isPreviewingSettlingEffect])
  {
    [(PUWallpaperPosterEditorController *)self setPreviewingSettlingEffect:0];
    v12 = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewDelayTimer];
    [v12 invalidate];

    [v11 pause];
    v13 = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewAnimator];
    [v13 stopAnimation:1];

    v14 = objc_alloc(MEMORY[0x1E69DD278]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64__PUWallpaperPosterEditorController__stopSettlingEffectPreview___block_invoke;
    v25[3] = &unk_1E7B80C38;
    v26 = v9;
    v15 = v10;
    v27 = v15;
    v16 = [v14 initWithDuration:0 curve:v25 animations:0.5];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __64__PUWallpaperPosterEditorController__stopSettlingEffectPreview___block_invoke_2;
    v20 = &unk_1E7B78798;
    v21 = v11;
    v22 = v15;
    v23 = self;
    v24 = v4;
    [v16 addCompletion:&v17];
    [v16 startAnimation];
    [(PUWallpaperPosterEditorController *)self setSettlingEffectPreviewAnimator:v16];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

uint64_t __64__PUWallpaperPosterEditorController__stopSettlingEffectPreview___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __64__PUWallpaperPosterEditorController__stopSettlingEffectPreview___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  [v2 seekToTime:&v4];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) _startSettlingEffectPreviewAfterDelay];
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_startSettlingEffectPreview
{
  v3 = [(PUWallpaperPosterEditorController *)self backgroundView];
  if (v3)
  {
    v4 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v5 = [v4 viewManager];
    v6 = [v4 currentLayerStack];
    if (![v6 settlingEffectEnabled])
    {
LABEL_10:

      goto LABEL_11;
    }

    v7 = [v6 foregroundLayer];
    v8 = [v5 viewForLayer:v7];

    v9 = [v5 videoLayerView];
    if (v9)
    {
      if ([(PUWallpaperPosterEditorController *)self isPreviewingSettlingEffect])
      {
LABEL_9:

        goto LABEL_10;
      }

      [(PUWallpaperPosterEditorController *)self setPreviewingSettlingEffect:1];
      v10 = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewDelayTimer];
      [v10 invalidate];

      [v9 setAlpha:0.0];
      [v3 addSubview:v9];
      v11 = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewAnimator];
      [v11 stopAnimation:1];

      v12 = objc_alloc(MEMORY[0x1E69DD278]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64__PUWallpaperPosterEditorController__startSettlingEffectPreview__block_invoke;
      v19[3] = &unk_1E7B80C38;
      v20 = v8;
      v13 = v9;
      v21 = v13;
      v14 = [v12 initWithDuration:0 curve:v19 animations:0.5];
      [v14 startAnimation];
      [(PUWallpaperPosterEditorController *)self setSettlingEffectPreviewAnimator:v14];
      [(PUWallpaperPosterEditorController *)self _observeCurrentPlayerItem];
      v15 = [v13 player];
      v17 = *MEMORY[0x1E6960CC0];
      v18 = *(MEMORY[0x1E6960CC0] + 16);
      [v15 seekToTime:&v17];
      [v15 play];

      v16 = v20;
    }

    else
    {
      v16 = PLWallpaperGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Failed to preview settling effect because the video layer view is nil.", &v17, 2u);
      }
    }

    goto LABEL_9;
  }

LABEL_11:
}

uint64_t __64__PUWallpaperPosterEditorController__startSettlingEffectPreview__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

- (void)_startSettlingEffectPreviewAfterDelay
{
  v3 = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewDelayTimer];
  v4 = [v3 isValid];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__startSettlingEffectPreview selector:0 userInfo:0 repeats:0.2];
    [(PUWallpaperPosterEditorController *)self setSettlingEffectPreviewDelayTimer:v5];
  }
}

- (void)_toggleStyleBackground
{
  v3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v4 = [v3 style];

  if ([v4 hasBackgroundParameter])
  {
    v5 = [v4 showsBackground];
    v6 = MEMORY[0x1E69BDEE0];
    v7 = [v4 bakedStyle];
    v8 = [v6 styleWithBakedStyle:v7];

    [v8 setShowsBackground:v5 ^ 1u];
    v9 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__PUWallpaperPosterEditorController__toggleStyleBackground__block_invoke;
    v11[3] = &unk_1E7B80328;
    v12 = v8;
    v10 = v8;
    [v9 performChanges:v11];

    [(PUWallpaperPosterEditorController *)self _renderAfterStyleChange];
  }
}

- (BOOL)_currentStyleShowsBackground
{
  v2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v3 = [v2 style];

  if ([v3 hasBackgroundParameter])
  {
    v4 = [v3 showsBackground];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_currentStyleSupportsToggleBackground
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v4 = [v3 segmentationItem];
  v5 = [v4 supportsBackgroundlessStyles];

  v6 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v7 = [v6 style];
  LOBYTE(v4) = [v7 hasBackgroundParameter];

  return v5 & v4;
}

- (void)_showPhotoInLibrary
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v3 = [v2 assetUUID];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://contentmode?id=photos&assetuuid=%@&oneUp=1", v3];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  v6 = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = *MEMORY[0x1E699F970];
  v17[0] = *MEMORY[0x1E699F990];
  v17[1] = v7;
  v18[0] = MEMORY[0x1E695E118];
  v18[1] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = 0;
  v9 = [v6 openSensitiveURL:v5 withOptions:v8 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = PLWallpaperGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Failed to navigate to URL: %@ with error: %@", buf, 0x16u);
    }
  }
}

- (id)_headroomToggleMenuElement
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    v4 = [(PUWallpaperPosterEditorController *)self _isManualShuffle];
  }

  else
  {
    v4 = 1;
  }

  v5 = 0;
  if ([v3 canApplyHeadroom] && v4)
  {
    v6 = [(PUWallpaperPosterEditorController *)self environment];
    if ([v6 px_isCallServices])
    {
      v7 = @"PHOTOS_WALLPAPER_EXTEND_POSTER_MENU_ITEM_TITLE";
    }

    else
    {
      v7 = @"PHOTOS_WALLPAPER_EXTEND_WALLPAPER_MENU_ITEM_TITLE";
    }

    v8 = PULocalizedString(v7);

    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69DC628];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.expand.vertical"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __63__PUWallpaperPosterEditorController__headroomToggleMenuElement__block_invoke;
    v15 = &unk_1E7B80890;
    objc_copyWeak(&v16, &location);
    v5 = [v9 actionWithTitle:v8 image:v10 identifier:0 handler:&v12];

    [v5 setState:{objc_msgSend(v3, "isUsingHeadroom", v12, v13, v14, v15)}];
    if (([v3 isUsingHeadroom] & 1) == 0 && (objc_msgSend(v3, "headroomLayoutUsesHeadroomArea") & 1) == 0 && (!-[PUWallpaperPosterEditorController _isSpatialPhotoEnabled](self, "_isSpatialPhotoEnabled") || (objc_msgSend(v3, "headroomLayoutCanApplyHeadroom") & 1) == 0))
    {
      [v5 setAttributes:1];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __63__PUWallpaperPosterEditorController__headroomToggleMenuElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleHeadroom];
}

- (id)_actionsMenu
{
  objc_initWeak(location, self);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PUWallpaperPosterEditorController *)self _currentStyleSupportsToggleBackground])
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_STYLE_BACKGROUND_MENU_TITLE");
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.and.background.dotted"];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke;
    v69[3] = &unk_1E7B80890;
    objc_copyWeak(&v70, location);
    v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v69];

    [v7 setState:{-[PUWallpaperPosterEditorController _currentStyleShowsBackground](self, "_currentStyleShowsBackground") ^ 1}];
    [v3 addObject:v7];

    objc_destroyWeak(&v70);
  }

  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    v8 = [(PUWallpaperPosterEditorController *)self _shuffleFrequencyMenu];
    [v3 addObject:v8];
  }

  if ([(PUWallpaperPosterEditorController *)self _isDepthEffectPossible])
  {
    v9 = MEMORY[0x1E69DC628];
    v10 = PULocalizedString(@"PHOTOS_WALLPAPER_DEPTH_MENU_ITEM_TITLE");
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.2.stack.3d"];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_2;
    v67[3] = &unk_1E7B80890;
    objc_copyWeak(&v68, location);
    v12 = [v9 actionWithTitle:v10 image:v11 identifier:0 handler:v67];

    if ([(PUWallpaperPosterEditorController *)self _canEnableDepthEffect])
    {
      [v12 setState:{-[PUWallpaperPosterEditorController _isDepthEnabled](self, "_isDepthEnabled")}];
    }

    else
    {
      [v12 setState:0];
      [v12 setAttributes:1];
    }

    [v3 addObject:v12];

    objc_destroyWeak(&v68);
  }

  v13 = MEMORY[0x1E69DC928];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_3;
  v65[3] = &unk_1E7B7B388;
  objc_copyWeak(&v66, location);
  v14 = [v13 elementWithUncachedProvider:v65];
  [v3 addObject:v14];

  v15 = 0x1E69DC000;
  if (PFOSVariantHasInternalUI())
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = MEMORY[0x1E69DC628];
    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant.fill"];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_4;
    v63[3] = &unk_1E7B80890;
    objc_copyWeak(&v64, location);
    v19 = [v17 actionWithTitle:@"Tap to Radar" image:v18 identifier:0 handler:v63];
    [v16 addObject:v19];

    if (PXPreferencesGetBool())
    {
      v20 = MEMORY[0x1E69DC628];
      v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gear"];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_5;
      v62[3] = &unk_1E7B7C4A0;
      v62[4] = self;
      v22 = [v20 actionWithTitle:@"Show Internal Settings" image:v21 identifier:0 handler:v62];
      [v16 addObject:v22];

      v23 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v24 = [v23 currentLayerStackViewModel];
      Bool = PXPreferencesGetBool();
      v26 = MEMORY[0x1E69DC628];
      v27 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:@"gauge.with.dots.needle.100percent"];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_6;
      v58[3] = &unk_1E7B78770;
      v61 = Bool;
      objc_copyWeak(&v60, location);
      v28 = v24;
      v59 = v28;
      v29 = [v26 actionWithTitle:@"Toggle Debug HUD" image:v27 identifier:0 handler:v58];
      [v16 addObject:v29];
      v47 = v23;

      v30 = PXPreferencesGetBool();
      v31 = MEMORY[0x1E69DC628];
      v32 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:@"inset.filled.bottomhalf.tophalf.rectangle"];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_7;
      v54[3] = &unk_1E7B78770;
      v57 = v30;
      objc_copyWeak(&v56, location);
      v33 = v28;
      v55 = v33;
      v34 = [v31 actionWithTitle:@"Toggle Debug Rects" image:v32 identifier:0 handler:v54];
      [v16 addObject:v34];

      v15 = 0x1E69DC000;
      if (PFPosterEnableSettlingEffect())
      {
        v35 = [(PUWallpaperPosterEditorController *)self environment];
        v36 = [v35 px_isCallServices];

        if ((v36 & 1) == 0)
        {
          v37 = MEMORY[0x1E69DC628];
          v38 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto"];
          v48 = MEMORY[0x1E69E9820];
          v49 = 3221225472;
          v50 = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_8;
          v51 = &unk_1E7B7F4F0;
          v52 = v23;
          objc_copyWeak(&v53, location);
          v39 = [v37 actionWithTitle:@"Settling Effect Debug" image:v38 identifier:0 handler:&v48];
          [v16 addObject:v39];

          objc_destroyWeak(&v53);
          v15 = 0x1E69DC000uLL;
        }
      }

      objc_destroyWeak(&v56);
      objc_destroyWeak(&v60);
    }

    v40 = *(v15 + 3168);
    v41 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"gear", v47, v48, v49, v50, v51}];
    v42 = [v40 menuWithTitle:@"Internal" image:v41 identifier:0 options:0 children:v16];

    [v3 addObject:v42];
    objc_destroyWeak(&v64);
  }

  if ([v3 count])
  {
    v43 = *(v15 + 3168);
    v44 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];
    v45 = [v43 menuWithTitle:&stru_1F2AC6818 image:v44 identifier:@"PUPosterEditorActionIdentifierMenu" options:0 children:v3];
  }

  else
  {
    v45 = 0;
  }

  objc_destroyWeak(&v66);

  objc_destroyWeak(location);

  return v45;
}

void __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleStyleBackground];
}

void __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleDepth];
}

void __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_3(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _headroomToggleMenuElement];

  if (v5)
  {
    v7[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v3[2](v3, v6);
  }

  else
  {
    v3[2](v3, MEMORY[0x1E695E0F0]);
  }
}

void __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tapToRadar];
}

void __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_5(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [PUPosterSettingsController alloc];
  v3 = +[PUPosterSettings sharedInstance];
  v4 = [(PUPosterSettingsController *)v2 initWithRootSettings:v3];

  [(PUPosterSettingsController *)v4 setModalPresentationStyle:2];
  v5 = [MEMORY[0x1E69DCF58] mediumDetent];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v7 = [(PUPosterSettingsController *)v4 sheetPresentationController];
  [v7 setDetents:v6];

  v8 = *MEMORY[0x1E69DE3B8];
  v9 = [(PUPosterSettingsController *)v4 sheetPresentationController];
  [v9 setLargestUndimmedDetentIdentifier:v8];

  v10 = [(PUPosterSettingsController *)v4 sheetPresentationController];
  [v10 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];

  v11 = [(PUPosterSettingsController *)v4 sheetPresentationController];
  [v11 setPrefersEdgeAttachedInCompactHeight:1];

  v12 = [*(a1 + 32) editor];
  [v12 presentViewController:v4 animated:1 completion:0];
}

void __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_6(uint64_t a1)
{
  PXPreferencesSetBool();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateLayerStackViewModelProperties:*(a1 + 32)];
}

void __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_7(uint64_t a1)
{
  PXPreferencesSetBool();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateLayerStackViewModelProperties:*(a1 + 32)];
}

void __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) originalLayerStackViewModel];
  v4 = [v2 segmentationItem];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentSettlingEffectDebugView:v4];
}

- (id)_leadingActionsMenu
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PUWallpaperPosterEditorController *)self _photoPickerAction];
  if (v4)
  {
    v5 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v6 = [v5 previewThumbnail];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v4 image];
    }

    v9 = v8;

    [v3 addObject:v4];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v11 = [v10 shuffleConfiguration];

  if (v11)
  {
    if (![v11 shuffleType])
    {
      v12 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];

      if (v12)
      {
        v13 = MEMORY[0x1E69DC628];
        v14 = PULocalizedString(@"PHOTOS_WALLPAPER_DONT_FEATURE_PHOTO_MENU_ITEM_TITLE");
        v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle"];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __56__PUWallpaperPosterEditorController__leadingActionsMenu__block_invoke;
        v41[3] = &unk_1E7B80890;
        objc_copyWeak(&v42, &location);
        v16 = [v13 actionWithTitle:v14 image:v15 identifier:0 handler:v41];

        [v16 setAttributes:2];
        [v3 addObject:v16];

        objc_destroyWeak(&v42);
      }
    }
  }

  v17 = [(PUWallpaperPosterEditorController *)self environment];
  v18 = [v17 pu_sourcePosterConfiguration];

  if (v18)
  {
    v19 = [v18 options];
    if (([v18 options] & 0x20) != 0)
    {
      v23 = 1;
      goto LABEL_17;
    }

    v20 = v19 & 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(PUWallpaperPosterEditorController *)self environment];
  v22 = [v21 px_isBackdrop];

  v23 = v20 | v22;
LABEL_17:
  v24 = [MEMORY[0x1E69C3348] isAppInstalled:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PUWallpaperPosterEditorController__leadingActionsMenu__block_invoke_2;
  aBlock[3] = &unk_1E7B80798;
  aBlock[4] = self;
  v25 = _Block_copy(aBlock);
  v26 = v25;
  if (!(v23 & 1 | ((v24 & 1) == 0)) && (*(v25 + 2))(v25))
  {
    v27 = MEMORY[0x1E69DC628];
    v28 = PULocalizedString(@"PHOTOS_WALLPAPER_SHOW_PHOTO_IN_LIBRARY_MENU_ITEM_TITLE");
    v29 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:@"apple.photos"];
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __56__PUWallpaperPosterEditorController__leadingActionsMenu__block_invoke_3;
    v38 = &unk_1E7B80890;
    objc_copyWeak(&v39, &location);
    v30 = [v27 actionWithTitle:v28 image:v29 identifier:0 handler:&v35];

    [v3 addObject:{v30, v35, v36, v37, v38}];
    objc_destroyWeak(&v39);
  }

  if ([v3 count])
  {
    v31 = MEMORY[0x1E69DCC60];
    v32 = v9;
    if (!v9)
    {
      v32 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo"];
    }

    v33 = [v31 menuWithTitle:&stru_1F2AC6818 image:v32 identifier:@"PUPosterEditorActionIdentifierMenu" options:0 children:v3];
    if (!v9)
    {
    }
  }

  else
  {
    v33 = 0;
  }

  objc_destroyWeak(&location);

  return v33;
}

void __56__PUWallpaperPosterEditorController__leadingActionsMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rejectSuggestionsForCurrentAsset];
}

BOOL __56__PUWallpaperPosterEditorController__leadingActionsMenu__block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentPosterMedia];
  v3 = [v2 assetUUID];

  if (v3)
  {
    v4 = [*(a1 + 32) photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setIncludeGuestAssets:1];
    v6 = MEMORY[0x1E6978630];
    v11[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [v6 fetchAssetsWithLocalIdentifiers:v7 options:v5];
    v9 = [v8 count] != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __56__PUWallpaperPosterEditorController__leadingActionsMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPhotoInLibrary];
}

- (id)_toggleSpatialPhotoEffectAction
{
  if (![(PUWallpaperPosterEditorController *)self _isSpatialPhotoPossible])
  {
    goto LABEL_5;
  }

  v3 = [(PUWallpaperPosterEditorController *)self environment];
  if ([v3 px_isBackdrop])
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v4 = [(PUWallpaperPosterEditorController *)self environment];
  v5 = [v4 px_isCallServices];

  if ((v5 & 1) != 0 || ![(PUWallpaperPosterEditorController *)self _canEnableSpatialPhotoEffect]&& (!PFOSVariantHasInternalUI() || ![(PUWallpaperPosterEditorController *)self _spatialPhotoFailedUnexpectedly]))
  {
    goto LABEL_5;
  }

  v8 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

  if (!v8)
  {
    goto LABEL_5;
  }

  if ([(PUWallpaperPosterEditorController *)self _canEnableSpatialPhotoEffect])
  {
    v9 = [(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled];
    v10 = @"spatial.capture.slash";
    if (v9)
    {
      v10 = @"spatial.capture";
    }

    v11 = v10;
    [(PUWallpaperPosterEditorController *)self _prewarmSpatialPhotoModel];
  }

  else
  {
    v11 = @"exclamationmark.triangle";
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69DC628];
  v13 = PULocalizedString(@"PHOTOS_WALLPAPER_SPATIAL_PHOTO_MENU_ITEM_TITLE");
  v14 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:v11];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __68__PUWallpaperPosterEditorController__toggleSpatialPhotoEffectAction__block_invoke;
  v18 = &unk_1E7B80890;
  objc_copyWeak(&v19, &location);
  v6 = [v12 actionWithTitle:v13 image:v14 identifier:@"PUPosterEditorActionIdentifierSpatialPhoto" handler:&v15];

  [v6 setState:{-[PUWallpaperPosterEditorController _isSpatialPhotoEnabled](self, "_isSpatialPhotoEnabled", v15, v16, v17, v18)}];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

LABEL_6:

  return v6;
}

void __68__PUWallpaperPosterEditorController__toggleSpatialPhotoEffectAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleToggleSpatialPhotoAction];
}

- (id)_toggleHighKeyLowKeyAction
{
  if ([(PUWallpaperPosterEditorController *)self _currentStyleSupportsHighAndLowKeyModes])
  {
    v3 = [(PUWallpaperPosterEditorController *)self _currentStyleIsHighKey];
    v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{33.5, 33.5}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__PUWallpaperPosterEditorController__toggleHighKeyLowKeyAction__block_invoke;
    v16[3] = &__block_descriptor_57_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v17 = vdupq_n_s64(0x4040C00000000000uLL);
    v18 = 0x403B800000000000;
    v19 = v3;
    v5 = [v4 imageWithActions:v16];
    v6 = @"PHOTOS_WALLPAPER_EDITOR_HIGH_KEY_MENU_TITLE";
    if (v3)
    {
      v6 = @"PHOTOS_WALLPAPER_EDITOR_LOW_KEY_MENU_TITLE";
    }

    v7 = v6;
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69DC628];
    v9 = PULocalizedString(v7);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PUWallpaperPosterEditorController__toggleHighKeyLowKeyAction__block_invoke_2;
    v12[3] = &unk_1E7B808B8;
    objc_copyWeak(&v13, &location);
    v14 = v3;
    v10 = [v8 actionWithTitle:v9 image:v5 identifier:0 handler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __63__PUWallpaperPosterEditorController__toggleHighKeyLowKeyAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  __asm { FMOV            V1.2D, #0.5 }

  v13 = vmulq_f64(*(a1 + 32), _Q1);
  CGContextBeginPath(v3);
  v14 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
  v9 = v14;
  CGContextAddPath(v3, [v14 CGPath]);
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  CGContextSetFillColorWithColor(v3, [v10 CGColor]);

  CGContextFillPath(v3);
  CGContextClosePath(v3);
  CGContextBeginPath(v3);
  v11 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(a1 + 56) radius:*&v13 startAngle:*(a1 + 48) * 0.5 endAngle:1.57079633 clockwise:4.71238898];
  CGContextAddPath(v3, [v11 CGPath]);
  v12 = [MEMORY[0x1E69DC888] blackColor];
  CGContextSetFillColorWithColor(v3, [v12 CGColor]);

  CGContextFillPath(v3);
  CGContextClosePath(v3);
}

void __63__PUWallpaperPosterEditorController__toggleHighKeyLowKeyAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setCurrentStyleIsHighKey:(*(a1 + 40) & 1) == 0];
}

- (id)_colorPickerAction
{
  if ([(PUWallpaperPosterEditorController *)self _currentStyleSupportsColorPicker])
  {
    v3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v4 = [v3 style];

    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 color];
      v6 = [v5 CGColor];

      v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{35.0, 35.0}];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__PUWallpaperPosterEditorController__colorPickerAction__block_invoke;
      v19[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
      v19[4] = v6;
      v20 = xmmword_1B3D0CEE0;
      v8 = [v7 imageWithActions:v19];
      v9 = [v4 kind];
      v10 = @"PHOTOS_WALLPAPER_EDITOR_STYLE_COLOR_MENU_TITLE";
      if (([v9 isEqualToString:*MEMORY[0x1E69C0B00]] & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C0AF8]))
      {
        v10 = @"PHOTOS_WALLPAPER_EDITOR_BACKGROUND_COLOR_MENU_TITLE";
      }

      v11 = v10;
      objc_initWeak(&location, self);
      v12 = MEMORY[0x1E69DC628];
      v13 = PULocalizedString(v11);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55__PUWallpaperPosterEditorController__colorPickerAction__block_invoke_2;
      v16[3] = &unk_1E7B80890;
      objc_copyWeak(&v17, &location);
      v14 = [v12 actionWithTitle:v13 image:v8 identifier:@"PUPosterEditorActionIdentifierColorPicker" handler:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __55__PUWallpaperPosterEditorController__colorPickerAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetFillColorWithColor(v3, *(a1 + 32));
  CGContextSetLineWidth(v3, *(a1 + 40));
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  CGContextSetStrokeColorWithColor(v3, [v4 CGColor]);

  v6.origin.x = *(a1 + 40);
  v6.size.width = *(a1 + 48);
  v6.origin.y = v6.origin.x;
  v6.size.height = v6.size.width;
  CGContextAddEllipseInRect(v3, v6);

  CGContextDrawPath(v3, kCGPathFillStroke);
}

void __55__PUWallpaperPosterEditorController__colorPickerAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentStyleColorPicker];
}

- (id)_toggleSettlingEffectAction
{
  if (-[PUWallpaperPosterEditorController _attemptedSettlingEffect](self, "_attemptedSettlingEffect") && (-[PUWallpaperPosterEditorController environment](self, "environment"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 px_isBackdrop], v3, (v4 & 1) == 0) && -[PUWallpaperPosterEditorController _isSettlingEffectPossible](self, "_isSettlingEffectPossible"))
  {
    v5 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_TOGGLE_LIVE_PHOTO_BUTTON_TITLE");
    if ([(PUWallpaperPosterEditorController *)self loadingSettlingEffect])
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    }

    else
    {
      v9 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v10 = [v9 settlingEffectEnabled];

      if (v10)
      {
        v11 = @"livephoto.play";
      }

      else
      {
        v11 = @"livephoto.slash";
      }

      v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
    }

    v12 = v6;
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DC628];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__PUWallpaperPosterEditorController__toggleSettlingEffectAction__block_invoke;
    v14[3] = &unk_1E7B80890;
    objc_copyWeak(&v15, &location);
    v7 = [v13 actionWithTitle:v5 image:v12 identifier:@"PUPosterEditorActionIdentifierSettlingEffect" handler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __64__PUWallpaperPosterEditorController__toggleSettlingEffectAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSettlingEffectEnabled];
}

- (BOOL)_isSettlingEffectPossible
{
  v2 = [(PUWallpaperPosterEditorController *)self environment];
  v3 = [v2 editingVariant] != 2;

  return v3;
}

- (id)_photoPickerAction
{
  v3 = [(PUWallpaperPosterEditorController *)self environment];
  v4 = [v3 px_isBackdrop];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v7 = [v6 configurationType];
    if (v7 == 1)
    {
      v8 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_PICK_SHUFFLE_PHOTOS_BUTTON_TITLE");
      v11 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
      v12 = [v11 shuffleConfiguration];
      v13 = [v12 shuffleType];

      v14 = @"rectangle.grid.3x2.fill";
      v15 = @"sparkles.rectangle.stack.fill";
      v16 = v13 != 0;
      if (v13)
      {
        v15 = 0;
      }

      if (v13 == 1)
      {
        v16 = 0;
      }

      else
      {
        v14 = v15;
      }

      v17 = v13 == 2;
      v9 = v13 != 2 && v16;
      if (v17)
      {
        v10 = @"rectangle.stack.fill";
      }

      else
      {
        v10 = v14;
      }
    }

    else if (v7)
    {
      v10 = 0;
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_PICK_A_PHOTO_BUTTON_TITLE");
      v9 = 0;
      v10 = @"photo.on.rectangle";
    }

    v5 = 0;
    if (([v6 options] & 0x13) == 0 && (v9 & 1) == 0)
    {
      v18 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_PICK_A_PHOTO_BUTTON_TITLE");
      objc_initWeak(&location, self);
      v19 = MEMORY[0x1E69DC628];
      v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:v10];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __55__PUWallpaperPosterEditorController__photoPickerAction__block_invoke;
      v25 = &unk_1E7B80890;
      objc_copyWeak(&v26, &location);
      v5 = [v19 actionWithTitle:v8 image:v20 identifier:@"PUPosterEditorActionIdentifierPhotoPicker" handler:&v22];

      [v5 setAccessibilityLabel:{v8, v22, v23, v24, v25}];
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }

  return v5;
}

void __55__PUWallpaperPosterEditorController__photoPickerAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pickAssets];
}

- (void)_updateEditToolbar
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v4 = [v3 isUserPanningOrZooming];

  if ((v4 & 1) == 0)
  {
    v5 = [(PUWallpaperPosterEditorController *)self editor];
    [v5 updateActions];
  }
}

- (void)editor:(id)a3 didUpdateColors:(id)a4
{
  v5 = [a4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [(PUWallpaperPosterEditorController *)self _updateCurrentStyleColor:v5];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)initialColorsForEditor:(id)a3
{
  v3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v4 = [v3 style];

  v5 = [v4 kind];
  v6 = [MEMORY[0x1E69BDEE0] colorPaletteWithStyleKind:v5];
  v7 = [v6 primaryColors];
  v8 = [v7 firstObject];
  v9 = [v8 pu_UIColor];

  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v9, 0}];

  return v10;
}

- (void)_updateCurrentStyleColor:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v6 = [v5 style];

  v7 = [v6 kind];
  v8 = [MEMORY[0x1E69C0750] pu_parallaxColorWithUIColor:v4];

  if ([v7 isEqualToString:*MEMORY[0x1E69C0AF0]])
  {
    v9 = MEMORY[0x1E69BDEE0];
    v10 = [v6 bakedStyle];
    v11 = [v9 styleWithBakedStyle:v10];

    [v11 setColor:v8];
    v12 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __62__PUWallpaperPosterEditorController__updateCurrentStyleColor___block_invoke;
    v30[3] = &unk_1E7B80328;
    v31 = v11;
    v13 = v11;
    [v12 performChanges:v30];

    v14 = v31;
  }

  else if (([v7 isEqualToString:*MEMORY[0x1E69C0B00]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69C0B08]) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69C0B10]) & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69C0B18]))
  {
    v15 = MEMORY[0x1E69BDEE0];
    v16 = [v6 bakedStyle];
    v17 = [v15 styleWithBakedStyle:v16];

    [v17 setColor:v8];
    v18 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __62__PUWallpaperPosterEditorController__updateCurrentStyleColor___block_invoke_2;
    v28[3] = &unk_1E7B80328;
    v29 = v17;
    v13 = v17;
    [v18 performChanges:v28];

    v14 = v29;
  }

  else
  {
    if (![v7 isEqualToString:*MEMORY[0x1E69C0AF8]])
    {
      goto LABEL_10;
    }

    v13 = [MEMORY[0x1E69BDEE0] colorPaletteWithStyleKind:v7];
    v14 = [v13 suggestionAtIndex:{objc_msgSend(v13, "indexOfColor:", v8)}];
    v19 = MEMORY[0x1E69BDEE0];
    v20 = [v6 bakedStyle];
    v21 = [v19 styleWithBakedStyle:v20];

    v22 = [v14 primaryColor];
    [v21 setPrimaryColor:v22];

    v23 = [v14 secondaryColor];
    [v21 setSecondaryColor:v23];

    v24 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __62__PUWallpaperPosterEditorController__updateCurrentStyleColor___block_invoke_3;
    v26[3] = &unk_1E7B80328;
    v27 = v21;
    v25 = v21;
    [v24 performChanges:v26];
  }

LABEL_10:
  [(PUWallpaperPosterEditorController *)self _renderAfterStyleChange];
}

- (void)_presentStyleColorPicker
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v60 = [v2 style];

  v62 = [v60 kind];
  v63 = objc_alloc_init(getPREditorColorPickerConfigurationClass());
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v5 = [v4 assetUUID];
  v6 = [v3 stringWithFormat:@"%@-%@", v5, v62];
  v7 = v63;
  [v63 setIdentifier:v6];

  v8 = *MEMORY[0x1E69C0AF0];
  if (([v62 isEqualToString:*MEMORY[0x1E69C0AF0]] & 1) != 0 || (objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69C0B08]) & 1) != 0 || (objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69C0B18]))
  {
    v9 = [v60 color];
    v10 = @"PHOTOS_WALLPAPER_EDITOR_BACKGROUND_COLOR_PICKER_PROMPT";
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  if ([v62 isEqualToString:*MEMORY[0x1E69C0B00]])
  {
    v50 = [v60 color];
  }

  else
  {
    if (![v62 isEqualToString:*MEMORY[0x1E69C0AF8]])
    {
      if (![v62 isEqualToString:*MEMORY[0x1E69C0B10]])
      {
        goto LABEL_42;
      }

      v9 = [v60 color];
      v10 = @"PHOTOS_WALLPAPER_EDITOR_STYLE_COLOR_PICKER_PROMPT";
      goto LABEL_6;
    }

    v50 = [v60 primaryColor];
  }

  v9 = v50;
  v11 = 0;
  v10 = @"PHOTOS_WALLPAPER_EDITOR_STYLE_COLOR_PICKER_PROMPT";
LABEL_7:
  [v63 setShowsSlider:v11];
  v12 = PULocalizedString(v10);
  [v63 setPrompt:v12];

  v13 = [v9 pu_UIColor];
  [v63 setSelectedColor:v13];

  v59 = [MEMORY[0x1E69BDEE0] colorPaletteWithStyleKind:v62];
  v14 = [v59 primaryColors];
  v15 = v14;
  if ([v14 count] >= 0xD)
  {
    v15 = [v14 subarrayWithRange:{0, 12}];
  }

  v58 = v15;
  if (![v63 showsSlider])
  {
    v29 = PXMap();
    v30 = [objc_alloc(getPREditorColorPaletteClass()) initWithColors:v29 localizedName:0 showsColorWell:0];
    v31 = v63;
    [v63 setColorPalette:v30];

    goto LABEL_37;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v62 isEqualToString:v8])
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
    if (v17)
    {
      v18 = *v77;
      v19 = MEMORY[0x1E69E9820];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v77 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v76 + 1) + 8 * i);
          [v21 pu_toneVariation];
          v23 = v22;
          [v21 hue];
          v25 = v24;
          [v9 hue];
          if (PXFloatEqualToFloatWithTolerance())
          {
            [v9 pu_toneVariation];
            v23 = v26;
          }

          v27 = objc_alloc(getPREditorColorPickerCustomColorClass());
          v75[0] = v19;
          v75[1] = 3221225472;
          v75[2] = __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke;
          v75[3] = &__block_descriptor_40_e17___UIColor_16__0d8l;
          v75[4] = v25;
          v28 = [v27 initWithDefaultInitialVariation:v75 colorProvider:v23];
          [v16 addObject:v28];
        }

        v17 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
      }

      while (v17);
    }
  }

  else
  {
    if (([v62 isEqualToString:*MEMORY[0x1E69C0B08]] & 1) == 0 && (objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) == 0 && !objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69C0B18]))
    {
      if ([v62 isEqualToString:*MEMORY[0x1E69C0B10]])
      {
        [v9 hue];
        v52 = v51;
        [v9 chroma];
        v54 = v53;
        [v9 pu_lumaVariation];
        v56 = v55;
        v57 = objc_alloc(getPREditorColorPickerCustomColorClass());
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke_3;
        v69[3] = &__block_descriptor_48_e17___UIColor_16__0d8l;
        v69[4] = v52;
        v69[5] = v54;
        obja = [v57 initWithDefaultInitialVariation:v69 colorProvider:v56];
        [v16 addObject:obja];
      }

      goto LABEL_36;
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v15;
    v32 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
    if (v32)
    {
      v33 = *v72;
      v34 = MEMORY[0x1E69E9820];
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v72 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v71 + 1) + 8 * j);
          [v36 pu_lumaVariation];
          v38 = v37;
          [v36 hue];
          v40 = v39;
          [v36 chroma];
          v42 = v41;
          [v9 hue];
          if (PXFloatEqualToFloatWithTolerance())
          {
            [v9 chroma];
            if (PXFloatEqualToFloatWithTolerance())
            {
              [v9 pu_lumaVariation];
              v38 = v43;
            }
          }

          v44 = objc_alloc(getPREditorColorPickerCustomColorClass());
          v70[0] = v34;
          v70[1] = 3221225472;
          v70[2] = __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke_2;
          v70[3] = &__block_descriptor_48_e17___UIColor_16__0d8l;
          v70[4] = v40;
          v70[5] = v42;
          v45 = [v44 initWithDefaultInitialVariation:v70 colorProvider:v38];
          [v16 addObject:v45];
        }

        v32 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
      }

      while (v32);
    }
  }

LABEL_36:
  v46 = [objc_alloc(getPREditorColorPaletteClass()) initWithPickerColors:v16 localizedName:0];
  [v63 setColorPalette:v46];

  v31 = v63;
LABEL_37:
  [v31 setColorWellDisplayMode:0];
  if (([v62 isEqualToString:*MEMORY[0x1E69C0B08]] & 1) != 0 || (objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69C0B18]))
  {
    [v63 setColorWellDisplayMode:2];
  }

  v47 = [(PUWallpaperPosterEditorController *)self editor];
  v48 = [v47 pu_viewForMenuElementIdentifier:@"PUPosterEditorActionIdentifierColorPicker"];

  [v63 setColorPickerSourceItem:v48];
  objc_initWeak(&location, self);
  v49 = [(PUWallpaperPosterEditorController *)self editor];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke_5;
  v66[3] = &unk_1E7B78708;
  objc_copyWeak(&v67, &location);
  [v49 presentColorPickerWithConfiguration:v63 changeHandler:v66];

  objc_destroyWeak(&v67);
  objc_destroyWeak(&location);

  v7 = v63;
LABEL_42:
}

id __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke(uint64_t a1, double a2)
{
  v2 = [MEMORY[0x1E69C0750] pu_parallaxColorWithHue:*(a1 + 32) toneVariation:a2];
  v3 = [v2 pu_UIColor];

  return v3;
}

id __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke_2(uint64_t a1, double a2)
{
  v2 = [MEMORY[0x1E69C0750] pu_parallaxColorWithHue:*(a1 + 32) chroma:*(a1 + 40) lumaVariation:a2];
  v3 = [v2 pu_UIColor];

  return v3;
}

id __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke_3(uint64_t a1, double a2)
{
  v2 = [MEMORY[0x1E69C0750] pu_parallaxColorWithHue:*(a1 + 32) chroma:*(a1 + 40) lumaVariation:a2];
  v3 = [v2 pu_UIColor];

  return v3;
}

void __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke_5(uint64_t a1, void *a2)
{
  v7 = a2;
  getPRPosterColorClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v7 color];
  }

  else
  {
    v3 = v7;
  }

  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCurrentStyleColor:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _updateEditToolbar];
}

id __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(getPRPosterColorClass());
  v4 = [v2 pu_UIColor];

  v5 = [v3 initWithColor:v4 preferredStyle:1];

  return v5;
}

- (BOOL)_currentStyleSupportsColorPicker
{
  v2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v3 = [v2 style];
  v4 = [v3 hasColorParameter];

  return v4;
}

- (void)_setCurrentStyleIsHighKey:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v6 = [v5 style];

  if ([v6 hasTonalityMode])
  {
    v7 = MEMORY[0x1E69BDEE0];
    v8 = [v6 bakedStyle];
    v9 = [v7 styleWithBakedStyle:v8];

    if (v3)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    [v9 setTonality:v10];
    v11 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PUWallpaperPosterEditorController__setCurrentStyleIsHighKey___block_invoke;
    v13[3] = &unk_1E7B80328;
    v14 = v9;
    v12 = v9;
    [v11 performChanges:v13];

    [(PUWallpaperPosterEditorController *)self _renderAfterStyleChange];
  }
}

- (BOOL)_currentStyleIsHighKey
{
  v2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v3 = [v2 style];

  if ([v3 hasTonalityMode])
  {
    v4 = [v3 tonality] == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_currentStyleSupportsHighAndLowKeyModes
{
  v2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v3 = [v2 style];
  v4 = [v3 hasTonalityMode];

  return v4;
}

- (void)_renderAfterStyleChange
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v5 = [v3 currentLayerStackViewModelUpdater];

  v4 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  [v5 renderOnscreenModelAfterStyleChange:v4];
}

- (void)_toggleHeadroom
{
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v4 = [v3 isUsingHeadroom];

  v5 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PUWallpaperPosterEditorController__toggleHeadroom__block_invoke;
  v6[3] = &__block_descriptor_33_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  v7 = v4;
  [v5 performChanges:v6];

  [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
}

- (void)_presentSpatialPhotoErrorDiagnosticsAlert
{
  v20 = *MEMORY[0x1E69E9840];
  if (PFOSVariantHasInternalUI())
  {
    v3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v4 = [v3 spatialPhotoFailuresDiagnosticDescription];

    v5 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"%@", v4}];
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Presenting spatial diagnostics alert with error: %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"3D Effect Error (Internal Only)" message:v4 preferredStyle:1];
    v8 = MEMORY[0x1E69DC648];
    v9 = PXLocalizedString();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__PUWallpaperPosterEditorController__presentSpatialPhotoErrorDiagnosticsAlert__block_invoke;
    v17[3] = &unk_1E7B7E148;
    v17[4] = self;
    v10 = [v8 actionWithTitle:v9 style:1 handler:v17];
    [v7 addAction:v10];

    v11 = MEMORY[0x1E69DC648];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__PUWallpaperPosterEditorController__presentSpatialPhotoErrorDiagnosticsAlert__block_invoke_2;
    v15[3] = &unk_1E7B7E120;
    v15[4] = self;
    v16 = v5;
    v12 = v5;
    v13 = [v11 actionWithTitle:@"Tap to Radar" style:0 handler:v15];
    [v7 addAction:v13];

    v14 = [(PUWallpaperPosterEditorController *)self editor];
    [v14 presentViewController:v7 animated:1 completion:0];
  }
}

void __78__PUWallpaperPosterEditorController__presentSpatialPhotoErrorDiagnosticsAlert__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) editor];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t __78__PUWallpaperPosterEditorController__presentSpatialPhotoErrorDiagnosticsAlert__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) editor];
  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _tapToRadarWithComponent:6 error:v4];
}

- (void)_handleToggleSpatialPhotoAction
{
  if ([(PUWallpaperPosterEditorController *)self _canEnableSpatialPhotoEffect])
  {
    if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalSpatialPhoto])
    {
      v3 = [(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled];
      v4 = v3;
      [(PUWallpaperPosterEditorController *)self _setShuffleEffect:2 enabled:!v3];
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      if (v4)
      {
LABEL_4:
        v5 = 0;
LABEL_12:
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __68__PUWallpaperPosterEditorController__handleToggleSpatialPhotoAction__block_invoke;
        v11[3] = &unk_1E7B7FF98;
        v11[4] = self;
        v12 = v5;
        [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:0.2];
        return;
      }
    }

    else
    {
      v6 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v7 = [v6 spatialPhotoEnabled];

      if (v7)
      {
        goto LABEL_4;
      }
    }

    v8 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v9 = [v8 currentLayerStackViewModel];
    v10 = [v9 debugSpatialPhotoGenerationError];

    if (v10)
    {
      [(PUWallpaperPosterEditorController *)self _presentSpatialPhotoErrorDiagnosticsAlert];
    }

    v5 = 1;
    goto LABEL_12;
  }

  [(PUWallpaperPosterEditorController *)self _presentSpatialPhotoErrorDiagnosticsAlert];
}

void __68__PUWallpaperPosterEditorController__handleToggleSpatialPhotoAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) editViewModel];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PUWallpaperPosterEditorController__handleToggleSpatialPhotoAction__block_invoke_2;
  v3[3] = &__block_descriptor_33_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  v4 = *(a1 + 40);
  [v2 performChanges:v3];
}

- (BOOL)_spatialPhotoFailedUnexpectedly
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalSpatialPhoto])
  {
    return 0;
  }

  v4 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v5 = [v4 spatialPhotoFailedUnexpectedly];

  return v5;
}

- (BOOL)_canEnableSpatialPhotoEffect
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalSpatialPhoto])
  {
    return 1;
  }

  v4 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v5 = [v4 canEnableSpatialPhoto];

  return v5;
}

- (BOOL)_isSpatialPhotoPossible
{
  if (!PFPosterDeviceSupportsSpatialPhoto() || !PFPosterIsSpatialPhotoEnabled())
  {
    goto LABEL_8;
  }

  v3 = [(PUWallpaperPosterEditorController *)self environment];
  if ([v3 px_isBackdrop])
  {
    goto LABEL_4;
  }

  v5 = [(PUWallpaperPosterEditorController *)self environment];
  v6 = [v5 px_isCallServices];

  if ((v6 & 1) != 0 || (-[PUWallpaperPosterEditorController environment](self, "environment"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 editingVariant], v7, v8 == 2))
  {
LABEL_8:
    LOBYTE(v4) = 0;
    return v4;
  }

  v10 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v3 = [v10 style];

  if (([v3 hasColorParameter] & 1) == 0)
  {
    v4 = [v3 hasTonalityMode] ^ 1;
    goto LABEL_5;
  }

LABEL_4:
  LOBYTE(v4) = 0;
LABEL_5:

  return v4;
}

- (BOOL)_isSpatialPhotoEnabled
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalSpatialPhoto])
  {
    v3 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    v4 = ([v3 enabledEffects] >> 1) & 1;
  }

  else
  {
    v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
    LOBYTE(v4) = [v3 spatialPhotoEnabled];
  }

  return v4;
}

- (BOOL)_canEnableDepthEffect
{
  v3 = [(PUWallpaperPosterEditorController *)self editor];
  v4 = [v3 pu_isDepthEffectDisallowed];

  if (v4)
  {
    return 0;
  }

  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
  {
    return 1;
  }

  v6 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v7 = [v6 canEnableDepthEffect];

  return v7;
}

- (BOOL)_isDepthEffectPossible
{
  v3 = [MEMORY[0x1E69BDE40] globalSettings];
  v4 = [v3 forceEnableSegmentation];

  if ((v4 & 1) == 0)
  {
    v5 = PFPosterDeviceSupportsSegmentation();
    if (!v5)
    {
      return v5;
    }

    v6 = [MEMORY[0x1E69BDE40] globalSettings];
    v7 = [v6 disableSegmentation];

    if (v7)
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }
  }

  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
  {
    goto LABEL_3;
  }

  v8 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  v9 = [v8 settlingEffectEnabled];

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = [(PUWallpaperPosterEditorController *)self environment];
  v11 = [v10 px_isBackdrop];

  if (v11)
  {
    goto LABEL_9;
  }

  if ([(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled]&& (PFPosterIsSpatialPhotoOcclusionEnabled() & 1) != 0)
  {
LABEL_3:
    LOBYTE(v5) = 1;
  }

  else
  {
    v12 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v13 = [v12 hasMatte];

    LOBYTE(v5) = v13;
  }

  return v5;
}

- (void)_setShuffleEffect:(unint64_t)a3 supported:(BOOL)a4
{
  v4 = a4;
  v6 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  v8 = v6;
  if (v4)
  {
    v7 = [v6 supportedEffects] | a3;
  }

  else
  {
    v7 = [v6 supportedEffects] & ~a3;
  }

  [v8 setSupportedEffects:v7];
}

- (void)_setShuffleEffect:(unint64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  v8 = v6;
  if (v4)
  {
    v7 = [v6 enabledEffects] | a3;
  }

  else
  {
    v7 = [v6 enabledEffects] & ~a3;
  }

  [v8 setEnabledEffects:v7];
}

- (void)_toggleDepth
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
  {
    v3 = [(PUWallpaperPosterEditorController *)self _isDepthEnabled]^ 1;
    [(PUWallpaperPosterEditorController *)self _setShuffleEffect:1 enabled:v3];
    [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
  }

  else
  {
    v4 = [(PUWallpaperPosterEditorController *)self editViewModel];
    LOBYTE(v3) = [v4 depthEnabled] ^ 1;
  }

  v5 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PUWallpaperPosterEditorController__toggleDepth__block_invoke;
  v6[3] = &__block_descriptor_33_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  v7 = v3;
  [v5 performChanges:v6];
}

- (BOOL)_isDepthEnabledInAnyOrientation
{
  if ([(PUWallpaperPosterEditorController *)self _isDepthEnabled])
  {
    return 1;
  }

  v4 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v5 = [v4 depthEnabledInAnyOrientation];

  return v5;
}

- (BOOL)_isDepthEnabled
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
  {
    v3 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    v4 = [v3 enabledEffects] & 1;
  }

  else
  {
    v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
    LOBYTE(v4) = [v3 depthEnabled];
  }

  return v4;
}

- (void)userTransformView:(id)a3 didChangeIsUserInteracting:(BOOL)a4
{
  v5 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__PUWallpaperPosterEditorController_userTransformView_didChangeIsUserInteracting___block_invoke;
  v6[3] = &__block_descriptor_33_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  v7 = a4;
  [v5 performChanges:v6];
}

- (void)userTransformView:(id)a3 didChangeUserAffineTransform:(CGAffineTransform *)a4 isUserInteracting:(BOOL)a5
{
  if (a5)
  {
    v6 = a3;
    [v6 visibleRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 untransformedContentFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = v8 - v16;
    v24 = 0.0;
    v25 = 0.0;
    if (v20 != 0.0)
    {
      v23 = v23 / v20;
      v25 = v12 / v20;
    }

    v26 = v10 - v18;
    if (v22 != 0.0)
    {
      v26 = v26 / v22;
      v24 = v14 / v22;
    }

    v43 = v24;
    v27 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    [v27 contentRect];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [v27 imageSize];
    v38 = v29 + v23 * v33;
    v39 = 0.0;
    v40 = 0.0;
    if (v36 != 0.0)
    {
      v38 = v38 / v36;
      v40 = v25 * v33 / v36;
    }

    v41 = v31 + v26 * v35;
    if (v37 != 0.0)
    {
      v41 = v41 / v37;
      v39 = v43 * v35 / v37;
    }

    v42 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __102__PUWallpaperPosterEditorController_userTransformView_didChangeUserAffineTransform_isUserInteracting___block_invoke;
    v44[3] = &__block_descriptor_64_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
    *&v44[4] = v38;
    *&v44[5] = v41;
    *&v44[6] = v40;
    *&v44[7] = v39;
    [v42 performChanges:v44];
  }
}

- (void)setIsUserTransformDisabled:(BOOL)a3
{
  if (self->_isUserTransformDisabled != a3)
  {
    v4 = a3;
    self->_isUserTransformDisabled = a3;
    v5 = [(PUWallpaperPosterEditorController *)self userTransformView];
    [v5 setUserInteractionEnabled:!v4];
  }
}

- (void)_updateUserTransformIsDisabled
{
  v3 = [(PUWallpaperPosterEditorController *)self _posterWantsUserTransformDisabled];

  [(PUWallpaperPosterEditorController *)self setIsUserTransformDisabled:v3];
}

- (BOOL)_posterWantsUserTransformDisabled
{
  v3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v4 = [v3 configurationType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v6 = [v5 shuffleConfiguration];

  v7 = [v6 shuffleType] != 1;
  return v7;
}

- (void)_updateUserTransformView
{
  v4 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  if (v4)
  {
    v5 = [(PUWallpaperPosterEditorController *)self environment];
    v6 = [v5 px_isCallServices];

    if (v6)
    {
      [(PUWallpaperPosterEditorController *)self backgroundView];
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
    }
    v7 = ;
    [v7 bounds];
    v44 = v8;
    v45 = v9;
    v46 = v10;
    v12 = v11;
    [v4 contentRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v4 visibleFrame];
    v22 = v21;
    v43 = v23;
    v25 = v24;
    v27 = v26;
    v51.origin.x = v14;
    v51.origin.y = v16;
    v51.size.width = v18;
    v51.size.height = v20;
    if (CGRectIsEmpty(v51))
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2935 description:@"Layout rect must be valid"];
    }

    v28 = v14 - v22;
    v29 = 0.0;
    v30 = 0.0;
    if (v25 != 0.0)
    {
      v28 = v28 / v25;
      v30 = v18 / v25;
    }

    v31 = v16 - v43;
    if (v27 != 0.0)
    {
      v31 = v31 / v27;
      v29 = v20 / v27;
    }

    v32 = v44 + v28 * v45;
    v33 = v46 + v31 * v12;
    v34 = v45 * v30;
    v35 = v12 * v29;
    v36 = [(PUWallpaperPosterEditorController *)self userTransformView];
    [v36 setContentPixelSize:{v18, v20}];
    v37 = 0.0;
    if ((v18 != -1.79769313e308 || v20 != -1.79769313e308) && (v18 != *MEMORY[0x1E695F060] || v20 != *(MEMORY[0x1E695F060] + 8)))
    {
      v37 = v18 / v20;
    }

    PURectWithAspectRatioFillingRect(v37, v44, v46, v45, v12);
    v39 = v38;
    v41 = v40;
    [v36 setUntransformedContentFrame:{0.0, 0.0}];
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    PUAffineTransformToMatchRect(&v48, 0.0, 0.0, v39, v41, v32, v33, v34, v35);
    v47[0] = v48;
    v47[1] = v49;
    v47[2] = v50;
    [v36 setUserAffineTransform:v47];
    [v36 setRequireTwoTouchesForPan:1];
  }
}

- (void)_setupUserTransformView
{
  v3 = [(PUWallpaperPosterEditorController *)self userTransformView];

  if (v3)
  {
    v4 = [(PUWallpaperPosterEditorController *)self userTransformView];
    [v4 removeFromSuperview];

    [(PUWallpaperPosterEditorController *)self setUserTransformView:0];
  }

  v10 = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  [v10 bounds];
  PXRectWithOriginAndSize();
  v9 = [[PUUserTransformView alloc] initWithFrame:v5, v6, v7, v8];
  [(PUUserTransformView *)v9 setDelegate:self];
  [(PUUserTransformView *)v9 setAutoresizingMask:18];
  [v10 addSubview:v9];
  [(PUWallpaperPosterEditorController *)self setUserTransformView:v9];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  v10 = v9;
  if (a5 == "EditModelObservationContext")
  {
    if (v6)
    {
      v12 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v11 = [v12 currentLayerStackViewModel];

      if ([v11 showsDebugHUD])
      {
        [(PUWallpaperPosterEditorController *)self _updateLayerStackViewModelProperties:v11];
      }

      goto LABEL_13;
    }

    goto LABEL_105;
  }

  if (a5 == "LayerStackViewModelObservationContext")
  {
    v13 = v9;
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_16;
      }

      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      v53 = objc_opt_class();
      v52 = NSStringFromClass(v53);
      v54 = [v13 px_descriptionForAssertionMessage];
      [v50 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2707 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v52, v54}];
    }

    else
    {
      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      [v50 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2707 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v52}];
    }

LABEL_16:
    v14 = [v13 currentLayerStackPropertiesChange];
    v15 = [v13 stylePropertiesChange];
    if ((v6 & 2) != 0)
    {
      [(PUWallpaperPosterEditorController *)self _updateLayerStackViewModelProperties:v13];
      [(PUWallpaperPosterEditorController *)self _updateContentOverlayContainerView];
      [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      [(PUWallpaperPosterEditorController *)self _updatePreferredTitleBounds];
    }

    if ((*&v6 & 0x800200) != 0)
    {
      [(PUWallpaperPosterEditorController *)self _updatePreferredTitleBounds];
    }

    if ((v6 & 0x800000) != 0)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke;
      v68[3] = &unk_1E7B80DD0;
      v68[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v68 animations:0.3];
    }

    if (v14 & 0x55 | *&v6 & 0x81000)
    {
      [(PUWallpaperPosterEditorController *)self _updateLayerStackViewModelProperties:v13];
      v16 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (v16 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      }
    }

    if ((v6 & 0x4000008) != 0)
    {
      v17 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (v17 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      }
    }

    if ((v14 & 0x40) != 0)
    {
      [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
      [(PUWallpaperPosterEditorController *)self _dismissPinchToZoomHint];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke_2;
      block[3] = &unk_1E7B80DD0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    if (v15 & 0xB | (v6 & 0x100) | v14 & 8)
    {
      v18 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (v18 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      }
    }

    if ((v15 & 0xE) != 0)
    {
      v19 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (v19 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _updateCurrentStyle];
      }
    }

    if ((v14 & 8) != 0)
    {
      v20 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (v20 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _displayNextHint];
      }
    }

    if ((v14 & 2) == 0)
    {
      goto LABEL_59;
    }

    v21 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

    if (v21 != v13)
    {
      goto LABEL_59;
    }

    v22 = [v13 currentLayerStack];
    v23 = [v22 settlingEffectLayer];

    if (v23)
    {
      v24 = [v13 currentLayerStack];
      v25 = [v24 settlingEffectEnabled];

      if (v25)
      {
        [(PUWallpaperPosterEditorController *)self _startSettlingEffectPreviewAfterDelay];
      }
    }

    v26 = [v13 currentLayerStack];
    v27 = [v26 spatialPhotoBackgroundLayer];
    if (v27)
    {
    }

    else
    {
      v35 = [v13 currentLayerStack];
      v36 = [v35 spatialPhotoBackgroundBackfillLayer];

      if (!v36)
      {
        goto LABEL_59;
      }
    }

    [(PUWallpaperPosterEditorController *)self _updateLayerStackViewModelProperties:v13];
    [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
LABEL_59:
    if ((v6 & 0x2000000) != 0)
    {
      v37 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v38 = [v37 spatialPhotoEnabled];

      if (v38)
      {
        [(PUWallpaperPosterEditorController *)self _presentSpatialPhotoErrorDiagnosticsAlert];
      }
    }

    if ((v6 & 0x8000000) != 0)
    {
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      if ([v13 isLoadingSpatialPhoto])
      {
        v39 = PULocalizedString(@"PHOTOS_WALLPAPER_GENERATING_3D_PROGRESS_INDICATOR_TITLE");
        [(PUWallpaperPosterEditorController *)self _showProgressIndicator:v39 determinate:1];
      }

      else
      {
        [(PUWallpaperPosterEditorController *)self _hideProgressIndicator];
        if ([(PUWallpaperPosterEditorController *)self isWaitingForSpatialPhotoToLoadBeforeSaving])
        {
          [(PUWallpaperPosterEditorController *)self _resumeSavingAfterLoadingSpatialPhoto];
        }
      }
    }

    if ((v6 & 0x10000000) != 0)
    {
      [v13 spatialPhotoLoadingProgress];
      [(PUWallpaperPosterEditorController *)self _updateProgressIndicator:?];
    }

    goto LABEL_105;
  }

  if (a5 == "EditViewModelObservationContext")
  {
    if (v6)
    {
      [(PUWallpaperPosterEditorController *)self _updateCurrentLayerStackViewModel];
      [(PUWallpaperPosterEditorController *)self _updateCurrentStyle];
    }

    if ((v6 & 2) == 0)
    {
LABEL_72:
      if ((v6 & 4) != 0)
      {
        [(PUWallpaperPosterEditorController *)self _updateVisibleLayerStackViewModels];
      }

      if ((v6 & 0x200) != 0)
      {
        v40 = [(PUWallpaperPosterEditorController *)self editViewModel];
        v41 = [v40 stylesChange];

        if ((v41 & 2) != 0)
        {
          v42 = [(PUWallpaperPosterEditorController *)self editor];
          [v42 pu_updateLooks];
          goto LABEL_81;
        }

        if (v41)
        {
          [(PUWallpaperPosterEditorController *)self _updateCurrentStyle];
        }

        if ((v41 & 4) != 0)
        {
          v42 = [(PUWallpaperPosterEditorController *)self editor];
          [v42 pu_updateLuminanceValuesForLooks];
LABEL_81:
        }
      }

      if ((v6 & 0x102) != 0 && [(PUWallpaperPosterEditorController *)self hint]== 2)
      {
        [(PUWallpaperPosterEditorController *)self _dismissPinchToZoomHint];
      }

      if ((v6 & 0x10000) != 0)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
        [(PUWallpaperPosterEditorController *)self _showTrySettlingEffectTip];
        if ((v6 & 0x1000) == 0)
        {
LABEL_87:
          if ((v6 & 0x4000) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_100;
        }
      }

      else if ((v6 & 0x1000) == 0)
      {
        goto LABEL_87;
      }

      v43 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v44 = [v43 isUsingHeadroom];
      v45 = [(PUWallpaperPosterEditorController *)self hint];
      if (v44)
      {
        if (v45 == 3)
        {
          [(PUWallpaperPosterEditorController *)self _showHintAnimated:1 completion:0];
        }

        else
        {
          [(PUWallpaperPosterEditorController *)self setHint:3];
        }
      }

      else if (v45 == 3)
      {
        [(PUWallpaperPosterEditorController *)self _hideHintAnimated:1 completion:0];
      }

      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];

      if ((v6 & 0x4000) == 0)
      {
LABEL_88:
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_101;
      }

LABEL_100:
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      [(PUWallpaperPosterEditorController *)self _updateEditorPreferences];
      [(PUWallpaperPosterEditorController *)self _updateUserTransformIsDisabled];
      if ((v6 & 0x80) == 0)
      {
LABEL_89:
        if ((v6 & 0x8000) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_102;
      }

LABEL_101:
      v46 = [(PUWallpaperPosterEditorController *)self _isDepthEnabledInAnyOrientation];
      v47 = [(PUWallpaperPosterEditorController *)self editor];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke_5;
      v60[3] = &__block_descriptor_33_e69_v24__0___PUMutablePosterEditorPreferences__8___PXPosterTransition__16l;
      v61 = v46;
      [v47 pu_updatePreferences:v60];

      if ((v6 & 0x8000) == 0)
      {
LABEL_90:
        if ((v6 & 8) == 0)
        {
          goto LABEL_105;
        }

LABEL_103:
        v48 = [(PUWallpaperPosterEditorController *)self editViewModel];
        v49 = [v48 isUserPanningOrZooming];

        if ((v49 & 1) == 0)
        {
          [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
        }

        goto LABEL_105;
      }

LABEL_102:
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      if ((v6 & 8) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_103;
    }

    v28 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v29 = [v28 isUserPanningOrZooming];

    v30 = [(PUWallpaperPosterEditorController *)self hint];
    if (v29)
    {
      if (v30 == 2)
      {
        [(PUWallpaperPosterEditorController *)self _hideHintAnimated:1 completion:0];
      }

      goto LABEL_72;
    }

    if (v30 == 3)
    {
      [(PUWallpaperPosterEditorController *)self cancelPendingHint];
      objc_initWeak(&location, self);
      v31 = dispatch_time(0, 2000000000);
      v32 = v64;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke_3;
      v64[3] = &unk_1E7B80638;
      objc_copyWeak(&v65, &location);
      v33 = MEMORY[0x1E69E96A0];
      v34 = v64;
    }

    else
    {
      if ([(PUWallpaperPosterEditorController *)self hint]!= 2)
      {
        [(PUWallpaperPosterEditorController *)self _displayNextHint];
        goto LABEL_71;
      }

      objc_initWeak(&location, self);
      v31 = dispatch_time(0, 5000000000);
      v32 = v62;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke_4;
      v62[3] = &unk_1E7B80638;
      objc_copyWeak(&v63, &location);
      v33 = MEMORY[0x1E69E96A0];
      v34 = v62;
    }

    dispatch_after(v31, v33, v34);
    objc_destroyWeak(v32 + 4);
    objc_destroyWeak(&location);
LABEL_71:
    [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
    goto LABEL_72;
  }

  if (a5 == "AnimateScrollToStyleKindAnimatorObservationContext" && (v6 & 2) != 0)
  {
    v11 = v9;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      v55 = [MEMORY[0x1E696AAA8] currentHandler];
      v58 = objc_opt_class();
      v57 = NSStringFromClass(v58);
      v59 = [v11 px_descriptionForAssertionMessage];
      [v55 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2893 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v57, v59}];
    }

    else
    {
      v55 = [MEMORY[0x1E696AAA8] currentHandler];
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      [v55 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2893 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v57}];
    }

LABEL_8:
    if (([v11 isBeingMutated] & 1) == 0)
    {
      [(PUWallpaperPosterEditorController *)self _animateScrollToStyleKindAnimatorUpdated];
    }

LABEL_13:
  }

LABEL_105:
}

void __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateOverlayContentConstraints];
  v2 = [*(a1 + 32) contentOverlayContainerView];
  [v2 layoutIfNeeded];
}

void __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) editor];
  [v1 pu_updateLooks];
}

void __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained hint];

  if (v3 == 3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _displayNextHint];
  }
}

void __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained hint] == 2)
  {
    v1 = [WeakRetained editViewModel];
    v2 = [v1 isUserPanningOrZooming];

    if ((v2 & 1) == 0)
    {
      [WeakRetained _showHintAnimated:1 completion:0];
    }
  }
}

- (void)_dismissPinchToZoomHint
{
  [(PUWallpaperPosterEditorController *)self setPinchToZoomHintDismissed:1];
  if ([(PUWallpaperPosterEditorController *)self hint]== 2)
  {
    [(PUWallpaperPosterEditorController *)self setHint:0];

    [(PUWallpaperPosterEditorController *)self _updateHintLabelAnimated:1];
  }
}

- (void)_startPinchToZoomHintTimeout
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 3000000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PUWallpaperPosterEditorController__startPinchToZoomHintTimeout__block_invoke;
  v3[3] = &unk_1E7B80638;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __65__PUWallpaperPosterEditorController__startPinchToZoomHintTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained hint] == 2)
  {
    [WeakRetained _dismissPinchToZoomHint];
  }
}

- (void)_displayNextHint
{
  [(PUWallpaperPosterEditorController *)self cancelPendingHint];
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v4 = [v3 settlingEffectEnabled];

  if (v4)
  {
    goto LABEL_2;
  }

  v6 = [(PUWallpaperPosterEditorController *)self hint];
  if (v6 == 3)
  {
    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      [(PUWallpaperPosterEditorController *)self displayNextHintAfterDelay];
      v5 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6 == 1)
  {
LABEL_12:
    v5 = [(PUWallpaperPosterEditorController *)self _effectivePinchToZoomHint];
    goto LABEL_13;
  }

  if (v6)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = [(PUWallpaperPosterEditorController *)self _defaultHint];
  if (v5 == 2)
  {
    v7 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v8 = [v7 userAdjustedVisibleFrame];

    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }
  }

LABEL_13:

  [(PUWallpaperPosterEditorController *)self setHint:v5];
}

- (void)_displayDefaultHint
{
  [(PUWallpaperPosterEditorController *)self cancelPendingHint];
  [(PUWallpaperPosterEditorController *)self setPinchToZoomHintDismissed:0];
  v3 = [(PUWallpaperPosterEditorController *)self _defaultHint];
  if (![(PUWallpaperPosterEditorController *)self hint]&& v3 == 2 || ([(PUWallpaperPosterEditorController *)self setHint:v3], [(PUWallpaperPosterEditorController *)self hint]== 1))
  {

    [(PUWallpaperPosterEditorController *)self displayNextHintAfterDelay];
  }
}

- (int64_t)_effectivePinchToZoomHint
{
  if ([(PUWallpaperPosterEditorController *)self isUserTransformDisabled]|| [(PUWallpaperPosterEditorController *)self pinchToZoomHintDismissed])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (int64_t)_defaultHint
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffle]&& ![(PUWallpaperPosterEditorController *)self shuffleAssetIndex])
  {
    return 1;
  }

  if ([(PUWallpaperPosterEditorController *)self isUserTransformDisabled])
  {
    return 0;
  }

  if ([(PUWallpaperPosterEditorController *)self pinchToZoomHintDismissed])
  {
    return 0;
  }

  return 2;
}

- (void)_showHintAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(PUWallpaperPosterEditorController *)self hint]&& [(PUWallpaperPosterEditorController *)self _createHintLabelIfNeeded])
  {
    v8 = [(PUWallpaperPosterEditorController *)self hintLabel];
    if (!v8)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2590 description:@"expected hintLabel"];
    }

    [v8 setHintLabelKind:{-[PUWallpaperPosterEditorController hint](self, "hint")}];
    v9 = [(PUWallpaperPosterEditorController *)self hintLabel];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PUWallpaperPosterEditorController__showHintAnimated_completion___block_invoke;
    v11[3] = &unk_1E7B80C88;
    v12 = v7;
    [v9 setVisible:1 animated:v4 completion:v11];

    [(PUWallpaperPosterEditorController *)self displayNextHintAfterDelay];
  }
}

uint64_t __66__PUWallpaperPosterEditorController__showHintAnimated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_hideHintAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PUWallpaperPosterEditorController *)self hintLabel];

  if (v7)
  {
    v8 = [(PUWallpaperPosterEditorController *)self hintLabel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PUWallpaperPosterEditorController__hideHintAnimated_completion___block_invoke;
    v9[3] = &unk_1E7B80C88;
    v10 = v6;
    [v8 setVisible:0 animated:v4 completion:v9];
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

uint64_t __66__PUWallpaperPosterEditorController__hideHintAnimated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (double)_hintLabelBottomAnchorDistance
{
  v2 = [(PUWallpaperPosterEditorController *)self editor];
  [v2 pu_editingChromeDodgingInsets];
  v4 = v3 + 40.0;

  return v4;
}

- (void)_updateOverlayContentConstraints
{
  [(PUWallpaperPosterEditorController *)self _hintLabelBottomAnchorDistance];
  v4 = v3;
  v5 = [(PUWallpaperPosterEditorController *)self loadingViewBottomConstraint];
  [v5 setConstant:v4];

  v6 = [(PUWallpaperPosterEditorController *)self hintLabelBottomConstraint];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [(PUWallpaperPosterEditorController *)self hintLabelCenterConstraint];

  if (!v8)
  {
    return;
  }

  v9 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v10 = [v9 currentLayerStackViewModel];

  if (v10)
  {
    v11 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v12 = [v11 currentLayerStackViewModel];
    [v12 additionalViewTitleHeight];
    v14 = v13;

    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      v15 = [(PUWallpaperPosterEditorController *)self editViewModel];
      v16 = [v15 currentLayerStackViewModel];
      v14 = PUUserAdjustedAdditionalViewTitleHeightForViewModel(v16);
    }
  }

  else
  {
    v14 = 0.0;
  }

  v17 = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  [v17 frame];
  if (v14 > v18 / 5.0)
  {
    goto LABEL_11;
  }

  v19 = [(PUWallpaperPosterEditorController *)self environment];
  if ([v19 px_isBackdrop])
  {

LABEL_11:
    goto LABEL_12;
  }

  v23 = [(PUWallpaperPosterEditorController *)self environment];
  v24 = [v23 px_isCallServices];

  if ((v24 & 1) == 0)
  {
    v25 = [(PUWallpaperPosterEditorController *)self hintLabelBottomConstraint];
    [v25 setActive:0];

    v22 = [(PUWallpaperPosterEditorController *)self hintLabelCenterConstraint];
    goto LABEL_13;
  }

LABEL_12:
  v20 = [(PUWallpaperPosterEditorController *)self hintLabelCenterConstraint];
  [v20 setActive:0];

  v21 = [(PUWallpaperPosterEditorController *)self hintLabelBottomConstraint];
  [v21 setConstant:v4];

  v22 = [(PUWallpaperPosterEditorController *)self hintLabelBottomConstraint];
LABEL_13:
  v26 = v22;
  [v22 setActive:1];
}

- (BOOL)_createHintLabelIfNeeded
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  if (v3)
  {
    v4 = [(PUWallpaperPosterEditorController *)self hintLabel];

    if (!v4)
    {
      v5 = [_TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel alloc];
      v6 = [(PUPosterAnimatedHintLabel *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(PUPosterAnimatedHintLabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(PUWallpaperPosterEditorController *)self environment];
      -[PUPosterAnimatedHintLabel setIsCallServicesEnvironment:](v6, "setIsCallServicesEnvironment:", [v7 px_isCallServices]);

      [v3 addSubview:v6];
      v8 = [v3 bottomAnchor];
      v9 = [(PUPosterAnimatedHintLabel *)v6 bottomAnchor];
      [(PUWallpaperPosterEditorController *)self _hintLabelBottomAnchorDistance];
      v10 = [v8 constraintEqualToAnchor:v9 constant:?];
      [(PUWallpaperPosterEditorController *)self setHintLabelBottomConstraint:v10];

      v11 = [(PUPosterAnimatedHintLabel *)v6 centerYAnchor];
      v12 = [v3 centerYAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      [(PUWallpaperPosterEditorController *)self setHintLabelCenterConstraint:v13];

      v14 = MEMORY[0x1E696ACD8];
      v15 = [(PUPosterAnimatedHintLabel *)v6 centerXAnchor];
      v16 = [v3 centerXAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      v20[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v14 activateConstraints:v18];

      [(PUWallpaperPosterEditorController *)self _updateOverlayContentConstraints];
      [(PUWallpaperPosterEditorController *)self setHintLabel:v6];
    }
  }

  return v3 != 0;
}

- (void)_updateHintLabelAnimated:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__PUWallpaperPosterEditorController__updateHintLabelAnimated___block_invoke;
  v5[3] = &unk_1E7B7FA08;
  objc_copyWeak(&v6, &location);
  v7 = v3;
  [(PUWallpaperPosterEditorController *)self _hideHintAnimated:v3 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__PUWallpaperPosterEditorController__updateHintLabelAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showHintAnimated:*(a1 + 40) completion:0];
}

- (void)setHint:(int64_t)a3
{
  hint = self->_hint;
  if (hint != a3)
  {
    if (a3 == 2 || hint != 2)
    {
      self->_hint = a3;
      if (a3 == 2)
      {
        [(PUWallpaperPosterEditorController *)self _startPinchToZoomHintTimeout];
      }
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self setPinchToZoomHintDismissed:1];
      self->_hint = a3;
    }

    v7 = a3 != 1 || hint != 0;

    [(PUWallpaperPosterEditorController *)self _updateHintLabelAnimated:v7];
  }
}

- (void)_updateShuffleSuggestionFeaturedStateIfNeededForConfiguration:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 shuffleConfiguration];
  v6 = v5;
  if (v5 && ![v5 shuffleType])
  {
    v37 = self;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v4 media];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 suggestionUUID];

            if (v14)
            {
              v15 = [v13 suggestionUUID];
              [v7 addObject:v15];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v10);
    }

    v16 = [(PUWallpaperPosterEditorController *)v37 photoLibrary];
    v17 = [v16 librarySpecificFetchOptions];

    v18 = MEMORY[0x1E696AB28];
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
    v47[0] = v19;
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v7];
    v47[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v22 = [v18 andPredicateWithSubpredicates:v21];
    [v17 setPredicate:v22];

    v23 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v17];
    v24 = [v23 count];
    if (v24 != [v8 count])
    {
      v25 = PLWallpaperGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v8 count];
        v27 = [v23 count];
        *buf = 67109376;
        *v46 = v26;
        *&v46[4] = 1024;
        *&v46[6] = v27;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_ERROR, "Shuffle suggestion count mismatch. Expected %d, found %d in library", buf, 0xEu);
      }
    }

    v28 = [(PUWallpaperPosterEditorController *)v37 photoLibrary];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __99__PUWallpaperPosterEditorController__updateShuffleSuggestionFeaturedStateIfNeededForConfiguration___block_invoke;
    v39[3] = &unk_1E7B80DD0;
    v29 = v23;
    v40 = v29;
    v38 = 0;
    v30 = [v28 performChangesAndWait:v39 error:&v38];
    v31 = v38;

    v32 = PLWallpaperGetLog();
    v33 = v32;
    if (v30)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v46 = v7;
        v34 = "Updated featured state for shuffle wallpaper suggestions %@";
        v35 = v33;
        v36 = OS_LOG_TYPE_INFO;
LABEL_22:
        _os_log_impl(&dword_1B36F3000, v35, v36, v34, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v46 = v31;
      v34 = "Failed updating featured state for shuffle wallpaper suggestions. Error: %@";
      v35 = v33;
      v36 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }
}

void __99__PUWallpaperPosterEditorController__updateShuffleSuggestionFeaturedStateIfNeededForConfiguration___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setFeaturedState:1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_savePosterEditConfigurationForCurrentPosterMediaWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v6 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v7 = [v6 posterEditConfigurationRepresentation];

  v8 = [(PUWallpaperPosterEditorController *)self editViewModel];
  [v8 containerFrame];
  PXRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v4 pu_deviceOrientation] - 3;
  if (v17 <= 1)
  {
    PXRectTransposed();
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;
  }

  [v4 px_minimumTitleBoundsForLayout:0];
  PXRectDenormalize();
  recta.origin.x = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  PUAdjustedSalientContentRectangleFromEnvironment(v4);
  CGRectGetMinY(v35);
  v36.origin.x = recta.origin.x;
  v36.origin.y = v24;
  v36.size.width = v26;
  v36.size.height = v28;
  CGRectGetMaxY(v36);
  v37.origin.x = v10;
  v37.origin.y = v12;
  v37.size.width = v14;
  v37.size.height = v16;
  CGRectGetHeight(v37);
  PXClamp();
  if (v17 > 1)
  {
    [v7 setAdditionalTitleLabelHeight:?];
  }

  else
  {
    [v7 setLandscapeAdditionalTitleLabelHeight:?];
  }

  [v5 setEditConfiguration:v7];
  v29 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  *&recta.origin.y = MEMORY[0x1E69E9820];
  *&recta.size.width = 3221225472;
  *&recta.size.height = __102__PUWallpaperPosterEditorController__savePosterEditConfigurationForCurrentPosterMediaWithEnvironment___block_invoke;
  v32 = &unk_1E7B78640;
  v34 = v17 < 2;
  v33 = v7;
  v30 = v7;
  [v29 performChanges:&recta.origin.y];
}

void __102__PUWallpaperPosterEditorController__savePosterEditConfigurationForCurrentPosterMediaWithEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = a2;
  if (v3 == 1)
  {
    [v4 landscapeAdditionalTitleLabelHeight];
    [v5 setLandscapeOverrideTitleHeight:?];
    [*(a1 + 32) landscapeUserAdjustedTitleLabelHeightOffset];
    [v5 setLandscapeUserAdjustedTitleHeightOffset:?];
  }

  else
  {
    [v4 additionalTitleLabelHeight];
    [v5 setOverrideTitleHeight:?];
    [*(a1 + 32) userAdjustedTitleLabelHeightOffset];
    [v5 setUserAdjustedTitleHeightOffset:?];
  }
}

- (void)_savePosterEditConfigurationForCurrentPosterMedia
{
  v3 = [(PUWallpaperPosterEditorController *)self environment];
  [(PUWallpaperPosterEditorController *)self _savePosterEditConfigurationForCurrentPosterMediaWithEnvironment:v3];
}

- (void)_applyPosterEditConfigurationForShuffleAsset
{
  v3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v8 = [v3 editConfiguration];

  v4 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v5 = [v4 editConfiguration];

  if (v5)
  {
    v6 = v5;

    v8 = v6;
LABEL_4:
    v7 = [(PUWallpaperPosterEditorController *)self editViewModel];
    [v7 applyChangesFromPosterEditConfiguration:v8];

    goto LABEL_5;
  }

  if (v8)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:
}

- (void)_handleTapToShuffle:(id)a3
{
  if ([(PUWallpaperPosterEditorController *)self isLoading])
  {
    v4 = PLWallpaperGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_INFO, "handleTapToShuffle ignored isLoading=YES", v6, 2u);
    }
  }

  else
  {
    v5 = [(PUWallpaperPosterEditorController *)self shuffleAssetIndex]+ 1;

    [(PUWallpaperPosterEditorController *)self setShuffleAssetIndex:v5];
  }
}

- (void)_updateShuffleView
{
  v6 = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  v3 = [(PUWallpaperPosterEditorController *)self environment];
  v4 = [v3 pu_posterType];

  if (v4 == 2)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToShuffle_];
    [v6 addGestureRecognizer:v5];
    [(PUWallpaperPosterEditorController *)self setTapToShuffleGestureRecognizer:v5];
  }

  else
  {
    v5 = [(PUWallpaperPosterEditorController *)self tapToShuffleGestureRecognizer];
    [v6 removeGestureRecognizer:v5];
  }
}

- (void)setShuffleAssetIndex:(int64_t)a3
{
  if (self->_shuffleAssetIndex != a3)
  {
    self->_shuffleAssetIndex = a3;
    if ([(PUWallpaperPosterEditorController *)self hint]== 1)
    {
      [(PUWallpaperPosterEditorController *)self cancelPendingHint];
      [(PUWallpaperPosterEditorController *)self _hideHintAnimated:1 completion:0];
    }

    [(PUWallpaperPosterEditorController *)self _savePosterEditConfigurationForCurrentPosterMedia];

    [(PUWallpaperPosterEditorController *)self _loadAssetFromPosterConfiguration];
  }
}

- (BOOL)_wantsSpatialPhotoBackfill
{
  if (![(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    return 1;
  }

  return [(PUWallpaperPosterEditorController *)self _isManualShuffle];
}

- (BOOL)_isShuffleModeWithGlobalSpatialPhoto
{
  v3 = [(PUWallpaperPosterEditorController *)self _isShuffle];
  if (v3)
  {
    v4 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v5 = [v4 shuffleConfiguration];
    v6 = [v5 shuffleType];

    LOBYTE(v3) = (v6 & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return v3;
}

- (BOOL)_isShuffleModeWithGlobalDepth
{
  v3 = [(PUWallpaperPosterEditorController *)self _isShuffle];
  if (v3)
  {
    v4 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v5 = [v4 shuffleConfiguration];
    v6 = [v5 shuffleType];

    LOBYTE(v3) = (v6 & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return v3;
}

- (BOOL)_isManualShuffle
{
  if (![(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    return 0;
  }

  v3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v4 = [v3 shuffleConfiguration];
  v5 = [v4 shuffleType] == 1;

  return v5;
}

- (BOOL)_isUserAlbumShuffle
{
  if (![(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    return 0;
  }

  v3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v4 = [v3 shuffleConfiguration];
  v5 = [v4 shuffleType] == 2;

  return v5;
}

- (BOOL)_isSmartShuffle
{
  if (![(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    return 0;
  }

  v3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v4 = [v3 shuffleConfiguration];
  v5 = [v4 shuffleType] == 0;

  return v5;
}

- (int64_t)_shuffleType
{
  v4 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v5 = [v4 shuffleConfiguration];
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2276 description:@"Expected shuffle configuration"];
  }

  v6 = [v5 shuffleType];

  return v6;
}

- (BOOL)_isShuffle
{
  v2 = [(PUWallpaperPosterEditorController *)self environment];
  v3 = [v2 pu_posterType] == 2;

  return v3;
}

- (void)wallpaperPosterShuffleGridViewController:(id)a3 didFinishWithChange:(id)a4 selectedPosterMedia:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewController];
  if ([v7 hasChanges])
  {
    v9 = [v7 differenceByTransformingChangesWithBlock:&__block_literal_global_600];
    v10 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v11 = [v10 media];
    v12 = [v11 arrayByApplyingDifference:v9];

    v13 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    [v13 setMedia:v12];

    v14 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    [v14 startPreloadingResourcesForPosterMedia:v12];

    [(PUWallpaperPosterEditorController *)self _loadAssetFromPosterConfiguration];
  }

  if (v8)
  {
    v15 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v16 = [v15 media];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __118__PUWallpaperPosterEditorController_wallpaperPosterShuffleGridViewController_didFinishWithChange_selectedPosterMedia___block_invoke_2;
    v18[3] = &unk_1E7B78618;
    v19 = v8;
    v17 = [v16 indexOfObjectPassingTest:v18];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PUWallpaperPosterEditorController *)self setShuffleAssetIndex:v17];
    }
  }
}

uint64_t __118__PUWallpaperPosterEditorController_wallpaperPosterShuffleGridViewController_didFinishWithChange_selectedPosterMedia___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 assetUUID];
  v4 = [*(a1 + 32) assetUUID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __118__PUWallpaperPosterEditorController_wallpaperPosterShuffleGridViewController_didFinishWithChange_selectedPosterMedia___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6978630];
  v3 = a2;
  v4 = [v3 object];
  v5 = [v4 assetUUID];
  v6 = [v2 uuidFromLocalIdentifier:v5];

  v7 = [objc_alloc(MEMORY[0x1E69C0808]) initWithAssetUUID:v6];
  v8 = MEMORY[0x1E696ADD0];
  v9 = [v3 changeType];
  v10 = [v3 index];
  v11 = [v3 associatedIndex];

  v12 = [v8 changeWithObject:v7 type:v9 index:v10 associatedIndex:v11];

  return v12;
}

- (void)_didLoadMediaFromShuffleConfigurationViewController:(id)a3 succeeded:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [(PUWallpaperPosterEditorController *)self setMediaLoadedCompletionHandler:0];
  if ([(PUWallpaperPosterEditorController *)self isCancellingMediaLoading])
  {
    v6 = [(PUWallpaperPosterEditorController *)self oldPosterConfiguration];
    [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v6];

    [(PUWallpaperPosterEditorController *)self setIsCancellingMediaLoading:0];
  }

  else if (v4)
  {
    [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewController];
  }

  else
  {
    [v7 didFailFinishingWithPosterConfiguration];
  }
}

- (void)wallpaperShuffleConfigurationViewControllerDidCancelManuallySelectingPhotos:(id)a3
{
  v4 = [(PUWallpaperPosterEditorController *)self mediaLoadedCompletionHandler];

  if (v4)
  {

    [(PUWallpaperPosterEditorController *)self setIsCancellingMediaLoading:1];
  }
}

- (void)wallpaperShuffleConfigurationViewController:(id)a3 didFinishWithPosterConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PUWallpaperPosterEditorController *)self editViewModel];

  if (v8)
  {
    [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewController];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __114__PUWallpaperPosterEditorController_wallpaperShuffleConfigurationViewController_didFinishWithPosterConfiguration___block_invoke;
    v13[3] = &unk_1E7B785D0;
    objc_copyWeak(&v15, &location);
    v14 = v6;
    [(PUWallpaperPosterEditorController *)self setMediaLoadedCompletionHandler:v13];

    objc_destroyWeak(&v15);
  }

  v9 = [v7 media];
  if ([v9 count])
  {
    goto LABEL_7;
  }

  v10 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v11 = [v10 media];
  v12 = [v11 count];

  if (v12)
  {
    [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v7 = v9 = v7;
LABEL_7:
  }

  [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v7];
  objc_destroyWeak(&location);
}

void __114__PUWallpaperPosterEditorController_wallpaperShuffleConfigurationViewController_didFinishWithPosterConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoadMediaFromShuffleConfigurationViewController:*(a1 + 32) succeeded:a2];
}

- (void)wallpaperShuffleConfigurationViewControllerDidDismiss:(id)a3
{
  v4 = [(PUWallpaperPosterEditorController *)self editViewModel];

  if (!v4)
  {

    [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewControllerAndCancelEditor];
  }
}

- (void)_reloadSmartAlbumPreviewAssetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [_PUWallpaperSmartAlbumPreviewReloadRequest alloc];
  v6 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v7 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v8 = [v7 shuffleConfiguration];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__PUWallpaperPosterEditorController__reloadSmartAlbumPreviewAssetsWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7B785A8;
  objc_copyWeak(&v13, &location);
  v9 = v4;
  v12 = v9;
  v10 = [(_PUWallpaperSmartAlbumPreviewReloadRequest *)v5 initWithPhotoLibrary:v6 shuffleConfiguration:v8 completion:v11];
  [(PUWallpaperPosterEditorController *)self setSmartAlbumPreviewReloadRequest:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __89__PUWallpaperPosterEditorController__reloadSmartAlbumPreviewAssetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSmartAlbumPreviewReloadRequest:0];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)_rejectSuggestionsForCurrentAsset
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v4 = [v3 assetUUID];
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v3;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "User rejected poster media %@", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PUWallpaperPosterEditorController__rejectSuggestionsForCurrentAsset__block_invoke;
  aBlock[3] = &unk_1E7B7F820;
  objc_copyWeak(&v22, &location);
  v6 = v3;
  v20 = v6;
  v7 = v4;
  v21 = v7;
  v8 = _Block_copy(aBlock);
  v9 = MEMORY[0x1E6978630];
  v24 = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v11 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v12 = [v11 librarySpecificFetchOptions];
  v13 = [v9 fetchAssetsWithUUIDs:v10 options:v12];
  v14 = [v13 firstObject];

  if (v14)
  {
    v15 = MEMORY[0x1E69C15B0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__PUWallpaperPosterEditorController__rejectSuggestionsForCurrentAsset__block_invoke_596;
    v17[3] = &unk_1E7B7C940;
    v18 = v8;
    [v15 rejectWallpaperSuggestionsUsingAsset:v14 completionHandler:v17];
  }

  else
  {
    v16 = PLWallpaperGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v7;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Could not fetch PHAsset with rejected UUID %{public}@, choosing replacement anyway.", buf, 0xCu);
    }

    v8[2](v8);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __70__PUWallpaperPosterEditorController__rejectSuggestionsForCurrentAsset__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__PUWallpaperPosterEditorController__rejectSuggestionsForCurrentAsset__block_invoke_2;
  v3[3] = &unk_1E7B7CC58;
  v3[4] = WeakRetained;
  v4 = a1[4];
  v5 = a1[5];
  [WeakRetained _reloadSmartAlbumPreviewAssetsWithCompletionHandler:v3];
}

void __70__PUWallpaperPosterEditorController__rejectSuggestionsForCurrentAsset__block_invoke_596(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to reject asset suggestion for smart album shuffle, choosing replacement anyway. Error was: %{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __70__PUWallpaperPosterEditorController__rejectSuggestionsForCurrentAsset__block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 posterConfiguration];
  v6 = [v5 media];
  v7 = [v6 mutableCopy];

  [v7 removeObject:*(a1 + 40)];
  v8 = MEMORY[0x1E695DFD8];
  v9 = PXMap();
  v10 = [v8 setWithArray:v9];

  v11 = MEMORY[0x1E695DFD8];
  v12 = PXMap();

  v13 = [v11 setWithArray:v12];

  v14 = PXSetSubtract();
  v15 = [v14 mutableCopy];

  [v15 removeObject:*(a1 + 48)];
  if ([v15 count])
  {
    v16 = [v15 anyObject];
    v17 = [objc_alloc(MEMORY[0x1E69C0808]) initWithAssetUUID:v16];
    v18 = PLWallpaperGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = v17;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_INFO, "Replacing user-rejected asset with new poster media %{public}@", &v21, 0xCu);
    }

    [v7 addObject:v17];
  }

  else
  {
    v16 = PLWallpaperGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Could not find any new asset to replace user-rejected asset!", &v21, 2u);
    }
  }

  v19 = [v7 copy];
  v20 = [*(a1 + 32) posterConfiguration];
  [v20 setMedia:v19];

  [*(a1 + 32) _loadAssetFromPosterConfiguration];
}

- (id)_shuffleFrequencyMenu
{
  v34[4] = *MEMORY[0x1E69E9840];
  v33[0] = &unk_1F2B7DD48;
  v3 = PULocalizedString(@"PHOTOS_WALLPAPER_SHUFFLE_FREQUENCY_TAP");
  v34[0] = v3;
  v33[1] = &unk_1F2B7DD60;
  v4 = PULocalizedString(@"PHOTOS_WALLPAPER_SHUFFLE_FREQUENCY_LOCK");
  v34[1] = v4;
  v33[2] = &unk_1F2B7DD78;
  v5 = PULocalizedString(@"PHOTOS_WALLPAPER_SHUFFLE_FREQUENCY_HOURLY");
  v34[2] = v5;
  v33[3] = &unk_1F2B7DD90;
  v6 = PULocalizedString(@"PHOTOS_WALLPAPER_SHUFFLE_FREQUENCY_DAILY");
  v34[3] = v6;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];

  v7 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v8 = [v7 shuffleConfiguration];
  v9 = [v8 shuffleFrequency];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [&unk_1F2B7CEF0 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(&unk_1F2B7CEF0);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v14 integerValue];
        v16 = [v24 objectForKeyedSubscript:v14];
        v17 = MEMORY[0x1E69DC628];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __58__PUWallpaperPosterEditorController__shuffleFrequencyMenu__block_invoke;
        v25[3] = &unk_1E7B808E0;
        objc_copyWeak(v26, &location);
        v26[1] = v15;
        v18 = [v17 actionWithTitle:v16 image:0 identifier:0 handler:v25];
        v19 = v18;
        if (v15 == v9)
        {
          [v18 setState:1];
        }

        [v10 addObject:v19];

        objc_destroyWeak(v26);
      }

      v11 = [&unk_1F2B7CEF0 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock.arrow.circlepath"];
  v21 = PULocalizedString(@"PHOTOS_WALLPAPER_SHUFFLE_CONFIGURATION_FREQUENCY_TITLE");
  v22 = [MEMORY[0x1E69DCC60] menuWithTitle:v21 image:v20 identifier:0 options:33 children:v10];

  objc_destroyWeak(&location);

  return v22;
}

void __58__PUWallpaperPosterEditorController__shuffleFrequencyMenu__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained posterConfiguration];
  v3 = [v2 shuffleConfiguration];
  [v3 setShuffleFrequency:v1];
}

- (void)_presentManualShuffleAssetEditor
{
  [(PUWallpaperPosterEditorController *)self _savePosterEditConfigurationForCurrentPosterMedia];
  v3 = [PUWallpaperPosterShuffleGridViewController alloc];
  v4 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  v5 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v6 = [v5 media];
  v8 = [(PUWallpaperPosterShuffleGridViewController *)v3 initWithResourceManager:v4 posterMedia:v6];

  [(PUWallpaperPosterShuffleGridViewController *)v8 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
  [v7 setToolbarHidden:0];
  [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:v7];
}

- (void)_updateSmartAlbumAvailability
{
  objc_initWeak(&location, self);
  v3 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PUWallpaperPosterEditorController__updateSmartAlbumAvailability__block_invoke;
  block[3] = &unk_1E7B80610;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, &location);
  dispatch_async(v4, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__PUWallpaperPosterEditorController__updateSmartAlbumAvailability__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C3C90] isAnySmartAlbumAvailableInPhotoLibrary:*(a1 + 32)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PUWallpaperPosterEditorController__updateSmartAlbumAvailability__block_invoke_2;
  v3[3] = &unk_1E7B7FA08;
  objc_copyWeak(&v4, (a1 + 40));
  v5 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __66__PUWallpaperPosterEditorController__updateSmartAlbumAvailability__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAnySmartAlbumAvailable:v1];
}

- (void)_presentSmartAlbumShuffleEditor
{
  if ([(PUWallpaperPosterEditorController *)self isAnySmartAlbumAvailable])
  {
    v14 = [(PUWallpaperPosterEditorController *)self centerSuggestionMedia];
    v3 = [_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController alloc];
    v4 = [(PUWallpaperPosterEditorController *)self photoLibrary];
    v5 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v6 = [(PUWallpaperShuffleConfigurationViewController *)v3 initWithPhotoLibrary:v4 style:1 posterConfiguration:v5 centerMedia:v14];

    [(PUWallpaperShuffleConfigurationViewController *)v6 setDelegate:self];
    [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:v6];
  }

  else
  {
    v7 = PULocalizedString(@"PHOTOS_WALLPAPER_SMART_ALBUM_SHUFFLE_CONFIGURATION_UNAVAILABLE_TITLE");
    v8 = PULocalizedString(@"PHOTOS_WALLPAPER_SMART_ALBUM_SHUFFLE_CONFIGURATION_UNAVAILABLE_DESCRIPTION");
    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
    v10 = MEMORY[0x1E69DC648];
    v11 = PXLocalizedString();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__PUWallpaperPosterEditorController__presentSmartAlbumShuffleEditor__block_invoke;
    v15[3] = &unk_1E7B7E148;
    v15[4] = self;
    v12 = [v10 actionWithTitle:v11 style:1 handler:v15];
    [v9 addAction:v12];

    v13 = [(PUWallpaperPosterEditorController *)self editor];
    [v13 presentViewController:v9 animated:1 completion:0];
  }
}

void __68__PUWallpaperPosterEditorController__presentSmartAlbumShuffleEditor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) editor];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentUserAlbumShuffleEditor
{
  v3 = [_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController alloc];
  v4 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v5 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v6 = [(PUWallpaperShuffleConfigurationViewController *)v3 initWithPhotoLibrary:v4 style:2 posterConfiguration:v5 centerMedia:0];

  [(PUWallpaperShuffleConfigurationViewController *)v6 setDelegate:self];
  [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:v6];
}

- (void)_presentAuthenticatedShuffleConfigurationEditor
{
  v4 = [(PUWallpaperPosterEditorController *)self posterConfiguration];

  if (v4)
  {
    v5 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v21 = [v5 shuffleConfiguration];

    v6 = v21;
    if (!v21)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2041 description:{@"Invalid parameter not satisfying: %@", @"shuffleConfiguration"}];

      v6 = 0;
    }

    v7 = [v6 shuffleType];
    if (v7)
    {
      if (v7 == 2)
      {
        [(PUWallpaperPosterEditorController *)self _presentUserAlbumShuffleEditor];
      }

      else if (v7 == 1)
      {
        [(PUWallpaperPosterEditorController *)self _presentManualShuffleAssetEditor];
      }
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _presentSmartAlbumShuffleEditor];
    }
  }

  else
  {
    v8 = [(PUWallpaperPosterEditorController *)self environment];
    v9 = [v8 pu_posterDescriptor];
    v10 = [v9 shuffleConfiguration];

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = [(PUWallpaperPosterEditorController *)self environment];
      v13 = [v12 pu_posterDescriptor];
      v21 = [v11 posterConfigurationFromPosterDescriptor:v13];
    }

    else
    {
      v21 = 0;
    }

    v14 = [(PUWallpaperPosterEditorController *)self centerSuggestionMedia];
    v15 = [_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController alloc];
    v16 = [(PUWallpaperPosterEditorController *)self photoLibrary];
    v17 = [(PUWallpaperShuffleConfigurationViewController *)v15 initWithPhotoLibrary:v16 style:0 posterConfiguration:v21 centerMedia:v14];

    [(PUWallpaperShuffleConfigurationViewController *)v17 setDelegate:self];
    v18 = [MEMORY[0x1E69DC938] currentDevice];
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 1)
    {
      [(PUWallpaperShuffleConfigurationViewController *)v17 setPreferredContentSize:580.0, 820.0];
    }

    [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:v17];
  }
}

- (void)_presentShuffleConfigurationEditor
{
  v3 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:@"com.apple.mobileslideshow"];
  v4 = [MEMORY[0x1E698B0D8] sharedGuard];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__PUWallpaperPosterEditorController__presentShuffleConfigurationEditor__block_invoke;
  v5[3] = &unk_1E7B80280;
  v5[4] = self;
  [v4 authenticateForSubject:v3 completion:v5];
}

void __71__PUWallpaperPosterEditorController__presentShuffleConfigurationEditor__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PUWallpaperPosterEditorController__presentShuffleConfigurationEditor__block_invoke_2;
  block[3] = &unk_1E7B805E8;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__PUWallpaperPosterEditorController__presentShuffleConfigurationEditor__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);

    [v2 _presentAuthenticatedShuffleConfigurationEditor];
  }

  else
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "Failed to pass APGuard check with error: %@", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) editor];
    [v5 pu_requestDismissalWithAction:0];
  }
}

- (id)centerSuggestionMedia
{
  v2 = [(PUWallpaperPosterEditorController *)self environment];
  v3 = [v2 pu_posterDescriptor];

  if (v3)
  {
    v4 = [v3 media];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [v3 media];
      v7 = [v6 firstObject];

      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v5 = v7;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didLoadMediaFromPhotoPickerWithAssetUUID:(id)a3 succeeded:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  [(PUWallpaperPosterEditorController *)self setMediaLoadedCompletionHandler:0];
  if ([(PUWallpaperPosterEditorController *)self isCancellingMediaLoading])
  {
    v8 = [(PUWallpaperPosterEditorController *)self oldPosterConfiguration];
    [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v8];
  }

  if (v5 || [(PUWallpaperPosterEditorController *)self isCancellingMediaLoading])
  {
    [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewController];
  }

  [(PUWallpaperPosterEditorController *)self setIsCancellingMediaLoading:0];
  if (v7)
  {
    v9 = [MEMORY[0x1E6978630] localIdentifierWithUUID:v7];
    v10 = [(PUWallpaperPosterEditorController *)self photoPickerViewController];
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v10 _stopActivityIndicatorsForAssetsWithIdentifiers:v11];

    if (!v5)
    {
      v12 = [(PUWallpaperPosterEditorController *)self photoPickerViewController];
      v14 = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      [v12 deselectAssetsWithIdentifiers:v13];
    }
  }

  if (v5 && [(PUWallpaperPosterEditorController *)self shouldEnableSpatialPhotoEffectAfterMediaLoad])
  {
    if (![(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled])
    {
      [(PUWallpaperPosterEditorController *)self _handleToggleSpatialPhotoAction];
    }

    [(PUWallpaperPosterEditorController *)self setShouldEnableSpatialPhotoEffectAfterMediaLoad:0];
  }
}

- (void)_extensionWillResignNotification:(id)a3
{
  v4 = [(PUWallpaperPosterEditorController *)self photoPickerViewController];

  if (v4)
  {
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Host extension will resign notification while photos picker is shown. Forwarding to Photos picker.", v7, 2u);
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"_UIViewServiceHostWillResignActiveNotification" object:self];
  }
}

- (void)_stopListeningForExtensionHostResignationNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0 object:0];
}

- (void)_beginListeningForExtensionHostResignationNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__extensionWillResignNotification_ name:*MEMORY[0x1E696A2D8] object:0];
}

- (void)_handlePhotoPickerResults:(id)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 assetIdentifier];
  v7 = [(PUWallpaperPosterEditorController *)self mediaLoadedCompletionHandler];

  if ([(PUWallpaperPosterEditorController *)self _isSpatialPhotoPossible])
  {
    v8 = [v5 itemProvider];
    v9 = [v8 registeredTypeIdentifiers];
    v10 = PXPhotosFileProviderTypeIdentifierSpatialWallpaperPrivate();
    v11 = [v9 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  if ([(PUWallpaperPosterEditorController *)self _isSettlingEffectPossible])
  {
    v12 = [v5 itemProvider];
    v13 = [v12 registeredTypeIdentifiers];
    v14 = PXPhotosFileProviderTypeIdentifierLiveWallpaperPrivate();
    -[PUWallpaperPosterEditorController setShouldLoadSettlingEffectSynchronously:](self, "setShouldLoadSettlingEffectSynchronously:", [v13 containsObject:v14] & (v11 ^ 1));
  }

  else
  {
    [(PUWallpaperPosterEditorController *)self setShouldLoadSettlingEffectSynchronously:0];
  }

  if ([(PUWallpaperPosterEditorController *)self shouldLoadSettlingEffectSynchronously])
  {
    v15 = PLWallpaperGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_INFO, "Picker result came from Live Photo tab", buf, 2u);
    }
  }

  [(PUWallpaperPosterEditorController *)self setShouldEnableSpatialPhotoEffectAfterMediaLoad:v11];
  if (v11)
  {
    v16 = PLWallpaperGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_INFO, "Picker result came from Spatial Scene tab", buf, 2u);
    }
  }

  if (v6)
  {
    if (!v7)
    {
      v17 = MEMORY[0x1E6978630];
      v49[0] = v6;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
      v19 = [(PUWallpaperPosterEditorController *)self photoLibrary];
      v20 = [v19 librarySpecificFetchOptions];
      v21 = [v17 fetchAssetsWithLocalIdentifiers:v18 options:v20];
      v22 = [v21 firstObject];

      if (v22)
      {
        v23 = [(PUWallpaperPosterEditorController *)self photoPickerViewController];
        v48 = v6;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        [v23 _startActivityIndicatorsForAssetsWithIdentifiers:v24];

        objc_initWeak(buf, self);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __63__PUWallpaperPosterEditorController__handlePhotoPickerResults___block_invoke;
        v44[3] = &unk_1E7B78560;
        objc_copyWeak(&v45, buf);
        [(PUWallpaperPosterEditorController *)self setMediaLoadedCompletionHandler:v44];
        v25 = [v22 uuid];
        v26 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
        v27 = [v26 assetUUID];
        v28 = [v25 isEqualToString:v27];

        if (v28)
        {
          v29 = [(PUWallpaperPosterEditorController *)self editViewModel];
          v30 = v29 == 0;

          if (v30)
          {
            [(PUWallpaperPosterEditorController *)self _loadContentForCurrentPosterMedia];
          }

          else
          {
            [(PUWallpaperPosterEditorController *)self _didLoadMediaFromPhotoPickerWithAssetUUID:v25 succeeded:1 error:0];
          }
        }

        else
        {
          v33 = [(PUWallpaperPosterEditorController *)self environment];
          v34 = [v33 pu_posterType];

          v35 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:{objc_msgSend(objc_opt_class(), "posterConfigurationTypeForPosterType:", v34)}];
          v36 = [objc_alloc(MEMORY[0x1E69C0808]) initWithAssetUUID:v25];
          v47 = v36;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
          [v35 setMedia:v37];

          v38 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
          v39 = [(PUWallpaperPosterEditorController *)self environment];
          v40 = [v39 px_isCallServices];
          if (v38)
          {
            v41 = v40;
          }

          else
          {
            v41 = 0;
          }

          if (v41)
          {
            [v35 setOptions:{objc_msgSend(v38, "options")}];
            v42 = [v38 userInfo];
            v43 = [v42 copy];
            [v35 setUserInfo:v43];
          }

          [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v35];
        }

        objc_destroyWeak(&v45);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v31 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v32 = v31 == 0;

    if (v32)
    {
      [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewControllerAndCancelEditor];
    }

    else if (v7)
    {
      [(PUWallpaperPosterEditorController *)self setIsCancellingMediaLoading:1];
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewController];
    }
  }
}

void __63__PUWallpaperPosterEditorController__handlePhotoPickerResults___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didLoadMediaFromPhotoPickerWithAssetUUID:v8 succeeded:a2 error:v7];
}

- (void)_presentPhotoPicker
{
  v3 = objc_alloc(MEMORY[0x1E69790E0]);
  v4 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v30 = [v3 initWithPhotoLibrary:v4];

  v5 = [MEMORY[0x1E69790E8] imagesFilter];
  [v30 setFilter:v5];

  [v30 setDisabledCapabilities:2];
  if ((PHSensitiveContentAnalysisAvailable() & 1) == 0)
  {
    [v30 setDisabledCapabilities:{objc_msgSend(v30, "disabledCapabilities") | 0x10}];
  }

  v6 = [(PUWallpaperPosterEditorController *)self environment];
  v7 = [v6 px_isCallServices];

  if (v7)
  {
    v8 = 268;
  }

  else
  {
    v8 = 260;
  }

  [v30 _setDisabledPrivateCapabilities:v8];
  v9 = [(PUWallpaperPosterEditorController *)self environment];
  v10 = [v9 pu_posterDescriptor];

  v11 = [(PUWallpaperPosterEditorController *)self environment];
  v12 = [v11 px_isCallServices];

  if (v12)
  {
    v13 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v14 = [v13 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"preferPhotosSuggestionsForDeviceOwner"];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      [MEMORY[0x1E6979178] deviceOwnerSuggestionGroup];
    }

    else
    {
      [MEMORY[0x1E6979178] wallpaperLikeSuggestionGroup];
    }
    v17 = ;
  }

  else
  {
    v18 = [(PUWallpaperPosterEditorController *)self environment];
    v19 = [v18 px_isBackdrop];

    if (v19)
    {
      v17 = [MEMORY[0x1E6979178] backdropWallpaperSuggestionGroup];
      goto LABEL_22;
    }

    v20 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    if (v20)
    {
    }

    else if ([v10 descriptorType] == 103)
    {
      v17 = [MEMORY[0x1E6979178] portraitWallpaperSuggestionGroup];
      goto LABEL_22;
    }

    v21 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    if (!v21 && [v10 descriptorType] == 104 || (-[PUWallpaperPosterEditorController editViewModel](self, "editViewModel"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "settlingEffectEnabled"), v22, v21, v23))
    {
      v17 = [MEMORY[0x1E6979178] livePhotoWallpaperSuggestionGroup];
    }

    else
    {
      v17 = [MEMORY[0x1E6979178] wallpaperSuggestionGroup];
    }
  }

LABEL_22:
  v24 = v17;
  [v30 set_suggestionGroup:v17];

  v25 = [(PUWallpaperPosterEditorController *)self posterConfiguration];

  if (!v25)
  {
    [v30 _setAlwaysShowLoadingPlaceholder:1];
  }

  v26 = [(PUWallpaperPosterEditorController *)self photoPickerViewController];

  if (!v26)
  {
    v27 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v30];
    [v27 setDelegate:self];
    v28 = [v27 presentationController];
    [v28 setDelegate:self];

    [(PUWallpaperPosterEditorController *)self setPhotoPickerViewController:v27];
  }

  v29 = [(PUWallpaperPosterEditorController *)self photoPickerViewController];
  [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:v29];

  [(PUWallpaperPosterEditorController *)self _beginListeningForExtensionHostResignationNotification];
}

- (void)_updateProgressIndicator:(double)a3
{
  v5 = [(PUWallpaperPosterEditorController *)self progressIndicator];
  [v5 currentProgress];
  v7 = v6;

  if (v7 < a3)
  {
    v8 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [v8 setCurrentProgress:a3];
  }
}

- (void)_hideProgressIndicator
{
  v3 = [(PUWallpaperPosterEditorController *)self progressIndicator];
  [(PUWallpaperPosterEditorController *)self setProgressIndicator:0];
  if ([v3 isShowingProgress])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __59__PUWallpaperPosterEditorController__hideProgressIndicator__block_invoke;
    v4[3] = &unk_1E7B80DD0;
    v5 = v3;
    [v5 endShowingProgressImmediately:1 animated:1 withCompletionHandler:v4];
  }
}

- (void)_showProgressIndicator:(id)a3 determinate:(BOOL)a4
{
  v4 = a4;
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  v8 = [(PUWallpaperPosterEditorController *)self progressIndicator];

  if (!v8)
  {
    v9 = [[PUProgressIndicatorView alloc] initWithStyle:0];
    [(PUWallpaperPosterEditorController *)self setProgressIndicator:v9];

    v10 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [v10 setLocalizedMessage:v6];

    v11 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [v11 setDeterminate:v4];

    v12 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [v12 setShowsBackground:1];

    v13 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [v14 beginShowingProgressImmediately:1 animated:1];

    v15 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [v7 addSubview:v15];

    v25 = MEMORY[0x1E696ACD8];
    v26 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    v16 = [v26 centerXAnchor];
    v17 = [v7 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v27[0] = v18;
    v19 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    v20 = [v19 centerYAnchor];
    v21 = [v7 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v27[1] = v22;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v24 = v23 = v6;
    [v25 activateConstraints:v24];

    v6 = v23;
  }
}

- (void)_hideLoadingIndicatorForReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "hideLoadingIndicatorForReason:%{public}@", &v11, 0xCu);
  }

  if ([(PUWallpaperPosterEditorController *)self isLoading])
  {
    [(PUWallpaperPosterEditorController *)self setIsLoading:0];
    v6 = [(PUWallpaperPosterEditorController *)self loadingView];
    [v6 setIsVisible:0];

    v7 = [(PUWallpaperPosterEditorController *)self editModel];
    [v7 performChanges:&__block_literal_global_519];

    v8 = PLWallpaperGetLog();
    v9 = [(PUWallpaperPosterEditorController *)self signpost];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        LOWORD(v11) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_END, v10, "PUWallpaperPosterEditorController.Loading", "", &v11, 2u);
      }
    }
  }
}

- (void)_showLoadingIndicatorForReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "showLoadingIndicatorForReason:%{public}@", &v11, 0xCu);
  }

  if (![(PUWallpaperPosterEditorController *)self isLoading])
  {
    [(PUWallpaperPosterEditorController *)self setIsLoading:1];
    v6 = PLWallpaperGetLog();
    v7 = [(PUWallpaperPosterEditorController *)self signpost];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        LOWORD(v11) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PUWallpaperPosterEditorController.Loading", "", &v11, 2u);
      }
    }

    v9 = [(PUWallpaperPosterEditorController *)self editModel];
    [v9 performChanges:&__block_literal_global_514];

    v10 = [(PUWallpaperPosterEditorController *)self loadingView];
    [v10 setIsVisible:1];
  }
}

- (void)_didDismissLoadingErrorAlertShouldCancel:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

    if (v4)
    {
      return;
    }

    v5 = [(PUWallpaperPosterEditorController *)self editor];
    [v5 pu_requestDismissalWithAction:0];
  }

  else
  {
    v5 = [(PUWallpaperPosterEditorController *)self editor];
    [v5 pu_updateLooks];
  }
}

- (void)_presentLoadingErrorAlertController:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

  if (v5)
  {
    v6 = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];
    [v6 px_presentOverTopmostPresentedViewController:v4 animated:1 completion:0];
  }

  else
  {
    v6 = [(PUWallpaperPosterEditorController *)self editor];
    [v6 presentViewController:v4 animated:1 completion:0];
  }
}

- (void)_dismissPosterConfigurationViewControllerAndCancelEditor
{
  v3 = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

  if (!v3)
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Expected presentedPosterConfigurationViewController", v6, 2u);
    }
  }

  [(PUWallpaperPosterEditorController *)self setPresentedPosterConfigurationViewController:0];
  v5 = [(PUWallpaperPosterEditorController *)self editor];
  [v5 pu_requestDismissalWithAction:0];
}

- (void)_dismissPosterConfigurationViewControllerWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

  if (v4)
  {
    [(PUWallpaperPosterEditorController *)self setPresentedPosterConfigurationViewController:0];
    v5 = [(PUWallpaperPosterEditorController *)self editor];
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (void)_presentPosterConfigurationViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

  if (v5)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "should dismiss posterConfiguration ViewController before presenting another one", buf, 2u);
    }
  }

  v7 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  [(PUWallpaperPosterEditorController *)self setOldPosterConfiguration:v7];

  [(PUWallpaperPosterEditorController *)self setPresentedPosterConfigurationViewController:v4];
  v8 = [(PUWallpaperPosterEditorController *)self posterConfiguration];

  if (v8)
  {
    v9 = [(PUWallpaperPosterEditorController *)self editor];
    [v9 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v10 = MEMORY[0x1E69DD258];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PUWallpaperPosterEditorController__presentPosterConfigurationViewController___block_invoke;
    v11[3] = &unk_1E7B80C38;
    v11[4] = self;
    v12 = v4;
    [v10 _performWithoutDeferringTransitions:v11];
  }
}

void __79__PUWallpaperPosterEditorController__presentPosterConfigurationViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) editor];
  [v2 presentViewController:*(a1 + 40) animated:0 completion:0];
}

- (void)_pickAssets
{
  v3 = [(PUWallpaperPosterEditorController *)self environment];
  v4 = [v3 pu_posterType];

  if (v4 == 2)
  {

    [(PUWallpaperPosterEditorController *)self _presentShuffleConfigurationEditor];
  }

  else if (v4 == 1)
  {

    [(PUWallpaperPosterEditorController *)self _presentPhotoPicker];
  }
}

- (id)_initialLayerStyleForSegmentationItem:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self environment];
  v6 = [v5 pu_posterDescriptor];
  v7 = [v6 styleCategory];

  if (v7)
  {
    [v4 suggestedStyleForCategory:v7];
  }

  else
  {
    [v4 originalStyle];
  }
  v8 = ;

  return v8;
}

- (void)_presentLoadingError:(id)a3
{
  v4 = a3;
  v5 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_ASSET_LOADING_FAILED_TITLE");
  v6 = [v4 domain];
  if ([v6 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v7 = [v4 code];

    if (v7 == -1009)
    {
      v8 = 1;
      v9 = @"PHOTOS_WALLPAPER_EDITOR_ASSET_LOADING_FAILED_MESSAGE_CONNECTION";
      goto LABEL_23;
    }
  }

  else
  {
  }

  v10 = [v4 domain];
  v11 = [v10 isEqualToString:*MEMORY[0x1E69C0BC8]];

  if (!v11)
  {
    v8 = 1;
    v12 = v5;
    goto LABEL_24;
  }

  v12 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_SPATIAL_FAILED_TITLE");

  v13 = [v4 code];
  v8 = 0;
  if (v13 > 1002)
  {
    if (v13 > 1004)
    {
      if (v13 == 1005)
      {
        v8 = 0;
        v9 = @"PHOTOS_WALLPAPER_EDITOR_SPATIAL_MODEL_LOADING_FAILED_NETWORK_ERROR";
      }

      else
      {
        if (v13 != 1006)
        {
          goto LABEL_24;
        }

        v8 = 0;
        v9 = @"PHOTOS_WALLPAPER_EDITOR_SPATIAL_MODEL_LOADING_FAILED_DISK_SPACE";
      }
    }

    else
    {
      v8 = 0;
      if (v13 == 1003)
      {
        v9 = @"PHOTOS_WALLPAPER_EDITOR_SPATIAL_MODEL_LOADING_FAILED_DISABLED";
      }

      else
      {
        v9 = @"PHOTOS_WALLPAPER_EDITOR_SPATIAL_MODEL_LOADING_FAILED_GENERIC";
      }
    }

    goto LABEL_22;
  }

  if (v13 == 1000)
  {
    v9 = @"PHOTOS_WALLPAPER_EDITOR_SPATIAL_FAILED_NOT_SUPPORTED";
LABEL_22:
    v5 = v12;
LABEL_23:
    v14 = PULocalizedString(v9);
    v12 = v5;
    if (v14)
    {
LABEL_25:
      v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v14 preferredStyle:1];
      v16 = MEMORY[0x1E69DC648];
      v17 = PXLocalizedString();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __58__PUWallpaperPosterEditorController__presentLoadingError___block_invoke;
      v19[3] = &unk_1E7B78518;
      v19[4] = self;
      v20 = v8;
      v18 = [v16 actionWithTitle:v17 style:1 handler:v19];
      [v15 addAction:v18];

      [(PUWallpaperPosterEditorController *)self _presentLoadingErrorAlertController:v15];
      v12 = v5;
      goto LABEL_26;
    }

LABEL_24:
    v14 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_ASSET_LOADING_FAILED_MESSAGE");
    v5 = v12;
    goto LABEL_25;
  }

  if (v13 == 1001)
  {
    v8 = 0;
    v9 = @"PHOTOS_WALLPAPER_EDITOR_SPATIAL_FAILED_GENERIC";
    goto LABEL_22;
  }

  if (v13 != 1002)
  {
    goto LABEL_24;
  }

LABEL_26:
}

- (void)_presentLoadingError:(id)a3 forAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUWallpaperPosterEditorController *)self environment];

  if (v8)
  {
    v9 = v7;
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUWallpaperPosterErrorDomain" code:-1 userInfo:0];
    }

    v11 = v10;
    v12 = [[PUEditingErrorPresentationController alloc] initWithError:v10 forAsset:v9];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__PUWallpaperPosterEditorController__presentLoadingError_forAsset___block_invoke;
    v14[3] = &unk_1E7B80DD0;
    v14[4] = self;
    v13 = [(PUErrorPresentationController *)v12 alertControllerWithCompletion:v14];
    [(PUWallpaperPosterEditorController *)self _presentLoadingErrorAlertController:v13];
  }
}

- (void)_fadeInViews
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PUWallpaperPosterEditorController__fadeInViews__block_invoke;
  aBlock[3] = &unk_1E7B7F9B0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v2[2](0.0);
  v3 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PUWallpaperPosterEditorController__fadeInViews__block_invoke_2;
  v5[3] = &unk_1E7B80C88;
  v6 = v2;
  v4 = v2;
  [v3 animateWithDuration:v5 animations:0.3];
}

void __49__PUWallpaperPosterEditorController__fadeInViews__block_invoke(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) backgroundView];
  [v4 setAlpha:a2];

  v5 = [*(a1 + 32) foregroundView];
  [v5 setAlpha:a2];

  v6 = [*(a1 + 32) floatingView];
  [v6 setAlpha:a2];
}

- (void)_didFinishCreatingEditViewModel:(id)a3 forAsset:(id)a4 error:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PUWallpaperPosterEditorController *)self environment];

  if (!v10)
  {
    goto LABEL_17;
  }

  [(PUWallpaperPosterEditorController *)self setEditViewModel:v17];
  if (!v17)
  {
    if ([(PUWallpaperPosterEditorController *)self isCancellingMediaLoading])
    {
      if (!v9)
      {
        goto LABEL_12;
      }

      v11 = [v9 domain];
      if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
      {
        v12 = [v9 code];

        if (v12 == 3072)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    if (v8)
    {
      [(PUWallpaperPosterEditorController *)self _presentLoadingError:v9 forAsset:v8];
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _presentLoadingError:v9];
    }
  }

LABEL_12:
  [(PUWallpaperPosterEditorController *)self _hideLoadingIndicatorForReason:@"didFinishCreatingEditViewModel"];
  if ([(PUWallpaperPosterEditorController *)self fadeInInitialLoad]&& [(PUWallpaperPosterEditorController *)self isPerformingInitialLoad])
  {
    [(PUWallpaperPosterEditorController *)self _fadeInViews];
  }

  [(PUWallpaperPosterEditorController *)self setPerformingInitialLoad:0];
  v13 = [(PUWallpaperPosterEditorController *)self mediaLoadedCompletionHandler];

  if (v13)
  {
    v14 = [(PUWallpaperPosterEditorController *)self mediaLoadedCompletionHandler];
    v15 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
    v16 = [v15 assetUUID];
    (v14)[2](v14, v17 != 0, v16, v9);
  }

LABEL_17:
}

- (void)_handlePhotoEffectsLoadedWithSegmentationItem:(id)a3 layerStack:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUWallpaperPosterEditorController *)self editViewModel];

  if (v6 && v8)
  {
    v9 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__PUWallpaperPosterEditorController__handlePhotoEffectsLoadedWithSegmentationItem_layerStack___block_invoke;
    v10[3] = &unk_1E7B784F0;
    v11 = v6;
    v12 = v7;
    [v9 performChanges:v10];
  }
}

- (void)_loadSettlingEffectLayerStackForSegmentationItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69BDEB8];
  v8 = a3;
  v9 = [[v7 alloc] initWithSegmentationItem:v8];

  [v9 setResponseQueue:MEMORY[0x1E69E96A0]];
  v10 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:1];
  [v9 setPriority:v10];

  [v9 setLayerStackMode:7];
  [v9 setSettlingEffectEnabled:0];
  v11 = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
  dispatch_group_enter(v11);
  [MEMORY[0x1E69B3C60] begin];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__PUWallpaperPosterEditorController__loadSettlingEffectLayerStackForSegmentationItem_completion___block_invoke;
  v18[3] = &unk_1E7B805C0;
  v19 = v6;
  v12 = v6;
  [v9 submit:v18];
  [(PUWallpaperPosterEditorController *)self setSettlingEffectRequest:v9];
  v13 = MEMORY[0x1E69B3C60];
  v14 = [(PUWallpaperPosterEditorController *)self queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__PUWallpaperPosterEditorController__loadSettlingEffectLayerStackForSegmentationItem_completion___block_invoke_465;
  v16[3] = &unk_1E7B80DD0;
  v17 = v11;
  v15 = v11;
  [v13 commitAndNotifyOnQueue:v14 withBlock:v16];
}

void __97__PUWallpaperPosterEditorController__loadSettlingEffectLayerStackForSegmentationItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = [a2 result:&v10];
  v4 = v10;
  v5 = PLWallpaperGetLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 statistics];
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Settling effect layer stack render stats: %{public}@", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = [v3 layerStack];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Settling effect layer stack render failed: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_sendSettlingEffectGatingAnalyticsWithSegmentationItem:(id)a3
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v3 = MEMORY[0x1E69BDF28];
  v4 = [a3 scores];
  [v3 settlingEffectGatingStatisticsFromScores:v4];

  v6 = v10;
  v7 = v11;
  v8 = v12;
  LODWORD(v9) = v13;
  v5 = PFPosterSettlingEffectGatingStatisticsAnalyticsPayload();
  [MEMORY[0x1E6991F28] sendEvent:*MEMORY[0x1E69C0D68] withPayload:{v5, v6, v7, v8, v9}];
}

- (void)_handleAsyncPhotoEffectLoadedWithSegmentationItem:(id)a3
{
  location[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self editViewModel];

  if (v5)
  {
    if ([v4 isSettlingEffectAvailable])
    {
      objc_initWeak(location, self);
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __87__PUWallpaperPosterEditorController__handleAsyncPhotoEffectLoadedWithSegmentationItem___block_invoke;
      v11 = &unk_1E7B784C8;
      objc_copyWeak(&v13, location);
      v12 = v4;
      [(PUWallpaperPosterEditorController *)self _loadSettlingEffectLayerStackForSegmentationItem:v12 completion:&v8];

      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _handlePhotoEffectsLoadedWithSegmentationItem:v4 layerStack:0];
    }

    if ([v4 settlingEffectFailedAnyGating])
    {
      v6 = PLWallpaperGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v4 settlingEffectGatingDiagnostics];
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v7;
        _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_INFO, "Settling effect diagnostics: %@", location, 0xCu);
      }

      if ([v4 settlingEffectFailedUnexpectedly])
      {
        [(PUWallpaperPosterEditorController *)self _presentSettlingEffectDebugView:v4];
      }
    }
  }
}

void __87__PUWallpaperPosterEditorController__handleAsyncPhotoEffectLoadedWithSegmentationItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Settling effect layer stack render error: %{public}@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePhotoEffectsLoadedWithSegmentationItem:*(a1 + 32) layerStack:v5];
}

- (void)_renderInitialLayerStack:(id)a3 style:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E69BDEA0];
  v11 = a3;
  v12 = [[v10 alloc] initWithSegmentationItem:v11];
  [v12 setResponseQueue:MEMORY[0x1E69E96A0]];
  v13 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v12 setPriority:v13];

  [v12 setSettlingEffectEnabled:{objc_msgSend(v11, "isSettlingEffectAvailable")}];
  [v12 setSpatialPhotoEnabled:{objc_msgSend(v11, "spatialPhotoStatus") == 5}];
  v14 = [v11 spatialPhotoStatus];

  if (v14 >= 3)
  {
    v15 = [(PUWallpaperPosterEditorController *)self currentEditConfiguration];
    v16 = [v15 isSpatialPhotoEnabled];

    if (v16)
    {
      [v12 setSpatialPhotoEnabled:1];
    }
  }

  v17 = [(PUWallpaperPosterEditorController *)self environment];
  [v12 setFullPhotoLuminanceCalculationEnabled:{objc_msgSend(v17, "px_isBackdrop")}];

  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    v18 = 136;
  }

  else
  {
    v18 = 8;
  }

  if ([v12 isSettlingEffectEnabled])
  {
    v18 |= 0x40uLL;
  }

  if ([v12 isSpatialPhotoEnabled])
  {
    if ([(PUWallpaperPosterEditorController *)self _wantsSpatialPhotoBackfill])
    {
      v18 |= 0x400uLL;
    }

    else
    {
      v18 |= 0x100uLL;
    }
  }

  [v12 setLayerStackOptions:v18];
  if (v8)
  {
    v19 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v8];
    [v12 setStyle:v19];

    v20 = [v8 kind];
    v21 = [v20 isEqualToString:*MEMORY[0x1E69C0B28]];

    if ((v21 & 1) == 0)
    {
      [v12 setSettlingEffectEnabled:0];
      [v12 setSpatialPhotoEnabled:0];
    }
  }

  if ([(PUWallpaperPosterEditorController *)self _shouldEnableAdaptiveLayout])
  {
    v22 = 3;
  }

  else
  {
    v22 = 1;
  }

  [v12 setAllowedLayoutStrategies:v22];
  v23 = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
  dispatch_group_enter(v23);
  [MEMORY[0x1E69B3C60] begin];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __79__PUWallpaperPosterEditorController__renderInitialLayerStack_style_completion___block_invoke;
  v30[3] = &unk_1E7B805C0;
  v31 = v9;
  v24 = v9;
  [v12 submit:v30];
  [(PUWallpaperPosterEditorController *)self setLayerStackRequest:v12];
  v25 = MEMORY[0x1E69B3C60];
  v26 = [(PUWallpaperPosterEditorController *)self queue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79__PUWallpaperPosterEditorController__renderInitialLayerStack_style_completion___block_invoke_461;
  v28[3] = &unk_1E7B80DD0;
  v29 = v23;
  v27 = v23;
  [v25 commitAndNotifyOnQueue:v26 withBlock:v28];
}

void __79__PUWallpaperPosterEditorController__renderInitialLayerStack_style_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = [a2 result:&v10];
  v4 = v10;
  v5 = PLWallpaperGetLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 statistics];
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Initial layer stack render stats: %{public}@", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = [v3 compoundLayerStack];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Initial layer stack render failed: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)_shouldEnableAdaptiveLayout
{
  if (!PFPosterIsAdaptiveLayoutEnabled())
  {
    return 0;
  }

  v5 = [(PUWallpaperPosterEditorController *)self _isShuffle];
  if (v5)
  {
    v2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v3 = [v2 shuffleConfiguration];
    v6 = [v3 shuffleType];
    if (v6 <= 2 && (v6 & 1) == 0)
    {
      v7 = 1;
LABEL_8:

      return v7;
    }
  }

  v8 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v7 = [v8 mediaType] == 2;

  if (v5)
  {
    goto LABEL_8;
  }

  return v7;
}

- (id)_adjustedCompoundLayerStackForAdaptiveLayout:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[PUPosterSettings sharedInstance];
    v5 = [v4 recalculateLayoutProperties];

    if (v5)
    {
      v6 = [v3 portraitLayerStack];
      v7 = [v3 landscapeLayerStack];
      v8 = __82__PUWallpaperPosterEditorController__adjustedCompoundLayerStackForAdaptiveLayout___block_invoke(v6);

      v9 = __82__PUWallpaperPosterEditorController__adjustedCompoundLayerStackForAdaptiveLayout___block_invoke(v7);

      v10 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v8 landscapeLayerStack:v9];
    }

    else
    {
      v10 = v3;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __82__PUWallpaperPosterEditorController__adjustedCompoundLayerStackForAdaptiveLayout___block_invoke(void *a1)
{
  v1 = a1;
  v2 = [v1 layout];
  v3 = [v2 layoutVariant];

  if (v3 == 2)
  {
    v4 = [v1 layout];
    [v4 visibleFrame];
    v5 = [v1 layout];
    [v5 adaptiveVisibleFrame];
    PXRectWithSizeAlignedToRectEdges();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [v1 layerStackByUpdatingVisibleFrame:{v7, v9, v11, v13}];
  }

  else
  {
    v14 = v1;
  }

  v15 = v14;

  return v15;
}

- (void)_handleLoadedCompoundLayerStack:(id)a3 error:(id)a4 segmentationItem:(id)a5 style:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v14)
  {
    v17 = [v12 portraitLayerStack];

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
      v39 = [v18 availableStylesForItem:v14 posterConfiguration:v19];

      v38 = [(PUWallpaperPosterEditorController *)self _adjustedCompoundLayerStackForAdaptiveLayout:v12];
      if (![(PUWallpaperPosterEditorController *)self _isSmartShuffle])
      {
        v20 = [(PUWallpaperPosterEditorController *)self environment];
        if (![v20 px_isBackdrop])
        {
          v24 = [(PUWallpaperPosterEditorController *)self environment];
          v25 = [v24 px_isCallServices];

          if (v25)
          {
            v21 = 0;
          }

          else
          {
            v21 = 288;
          }

LABEL_15:
          if ([(PUWallpaperPosterEditorController *)self _posterWantsUserTransformDisabled])
          {
            v26 = v21;
          }

          else
          {
            v26 = v21 | 0x200;
          }

          v27 = [(PUWallpaperPosterEditorController *)self environment];
          v28 = [v27 px_isBackdrop];

          if (v28)
          {
            v26 |= 0x58uLL;
          }

          v29 = [(PUWallpaperPosterEditorController *)self environment];
          v30 = [v29 px_isCallServices];

          if (v30)
          {
            v31 = v26 | 4;
          }

          else
          {
            v31 = v26;
          }

          v32 = [PUParallaxLayerStackViewModel alloc];
          v33 = [(PUWallpaperPosterEditorController *)self environment];
          v34 = -[PUParallaxLayerStackViewModel initWithSegmentationItem:initialStyle:compoundLayerStack:deviceOrientation:allowedBehaviors:](v32, "initWithSegmentationItem:initialStyle:compoundLayerStack:deviceOrientation:allowedBehaviors:", v14, v15, v38, [v33 pu_deviceOrientation], v31);

          v35 = [PUWallpaperPosterEditViewModel alloc];
          v36 = [(PUWallpaperPosterEditorController *)self environment];
          v37 = -[PUWallpaperPosterEditViewModel initWithInitialLayerStackViewModel:availableStyles:environmentIsBackdrop:isUserTransformDisabled:](v35, "initWithInitialLayerStackViewModel:availableStyles:environmentIsBackdrop:isUserTransformDisabled:", v34, v39, [v36 px_isBackdrop], -[PUWallpaperPosterEditorController _posterWantsUserTransformDisabled](self, "_posterWantsUserTransformDisabled"));

          v16[2](v16, v37, 0);
          goto LABEL_24;
        }
      }

      v21 = 0;
      goto LABEL_15;
    }
  }

  v22 = [v12 portraitLayerStack];

  if (!v22)
  {
    v23 = PLWallpaperGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, "Cannot create view model due to missing portrait layer stack", buf, 2u);
    }
  }

  (v16)[2](v16, 0, v13);
LABEL_24:
}

- (void)_loadEditViewModelWithSegmentationItem:(id)a3 compoundLayerStack:(id)a4 style:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v12 = [(PUWallpaperPosterEditorController *)self _initialLayerStyleForSegmentationItem:v10];
  }

  v14 = [(PUWallpaperPosterEditorController *)self _sanitizeCompoundLayerStack:v11 forSegmentationItem:v10];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__PUWallpaperPosterEditorController__loadEditViewModelWithSegmentationItem_compoundLayerStack_style_completion___block_invoke;
  aBlock[3] = &unk_1E7B784A0;
  objc_copyWeak(&v24, &location);
  v15 = v10;
  v21 = v15;
  v16 = v12;
  v22 = v16;
  v17 = v13;
  v23 = v17;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (v14)
  {
    (*(v18 + 2))(v18, v14, 0);
  }

  else
  {
    [(PUWallpaperPosterEditorController *)self _renderInitialLayerStack:v15 style:v16 completion:v18];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __112__PUWallpaperPosterEditorController__loadEditViewModelWithSegmentationItem_compoundLayerStack_style_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleLoadedCompoundLayerStack:v8 error:v5 segmentationItem:*(a1 + 32) style:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_handleSegmentationItem:(id)a3 compoundLayerStack:(id)a4 style:(id)a5 forAsset:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PUWallpaperPosterEditorController *)self environment];

  if (v17)
  {
    if (v12)
    {
      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __101__PUWallpaperPosterEditorController__handleSegmentationItem_compoundLayerStack_style_forAsset_error___block_invoke;
      v18[3] = &unk_1E7B78478;
      objc_copyWeak(&v20, &location);
      v19 = v15;
      [(PUWallpaperPosterEditorController *)self _loadEditViewModelWithSegmentationItem:v12 compoundLayerStack:v13 style:v14 completion:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _didFinishCreatingEditViewModel:0 forAsset:v15 error:v16];
    }
  }
}

void __101__PUWallpaperPosterEditorController__handleSegmentationItem_compoundLayerStack_style_forAsset_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFinishCreatingEditViewModel:v6 forAsset:*(a1 + 32) error:v5];
}

- (id)_sanitizeCompoundLayerStack:(id)a3 forSegmentationItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    goto LABEL_15;
  }

  if (![v7 isSettlingEffectAvailable] || (objc_msgSend(v8, "settlingEffectNormalizedBounds"), CGRectIsEmpty(v19)))
  {
    v9 = [v6 compoundLayerStackByUpdatingSettlingEffectEnabled:0];

    v6 = v9;
  }

  v10 = [v8 originalLayout];
  if ([v10 supportsBothOrientations])
  {
    v11 = [v6 portraitLayerStack];
    if (v11)
    {
      v12 = v11;
      v13 = [v6 landscapeLayerStack];

      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = v6;
    v6 = 0;
  }

LABEL_13:
  v14 = [(PUWallpaperPosterEditorController *)self editModel];
  v15 = [v14 depthEffectDisabled];

  if (v15)
  {
    v16 = [v6 compoundLayerStackByUpdatingPortraitDepthEnabled:0 landscapeDepthEnabled:0];

    v6 = v16;
  }

LABEL_15:

  return v6;
}

- (void)_handleShuffleSegmentationItem:(id)a3 compoundLayerStack:(id)a4 editConfiguration:(id)a5 forPosterMedia:(id)a6 error:(id)a7
{
  v24 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(PUWallpaperPosterEditorController *)self environment];

  if (v16)
  {
    v17 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];

    if (v17 == v14)
    {
      if (v13)
      {
        v18 = [v13 copy];
        v19 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
        [v19 setEditConfiguration:v18];
      }

      v20 = [v13 style];
      if (!v20)
      {
        v21 = [(PUWallpaperPosterEditorController *)self editViewModel];
        v22 = [v21 currentLayerStackViewModel];
        v23 = [v22 style];
        v20 = [v23 bakedStyle];
      }

      [(PUWallpaperPosterEditorController *)self _handleSegmentationItem:v24 compoundLayerStack:v12 style:v20 forAsset:0 error:v15];
      if (!v24)
      {
        [(PUWallpaperPosterEditorController *)self setCurrentPosterMedia:0];
      }
    }
  }
}

- (void)_loadParallaxAsset:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PUWallpaperPosterEditorController *)self shouldLoadSettlingEffectSynchronously];
  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v8 = @"synchronous";
    }

    else
    {
      v8 = @"asynchronous";
    }

    v9 = [v5 localIdentifier];
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_INFO, "Segmenting asset, %@ settling effect: %{public}@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  v10 = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
  dispatch_group_enter(v10);
  v11 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:v5];
  v12 = [(PUWallpaperPosterEditorController *)self environment];
  [v12 px_titleBoundsForLayout:0];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  if (CGRectIsNull(v58))
  {
    v14 = PUPosterGenericCenteredTitleBounds();
    v16 = v21;
    v18 = v22;
    v20 = v23;
  }

  if ([(PUPosterEditingEnvironment *)self->_environment px_isCallServices])
  {
    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v24 = [(PUWallpaperPosterEditorController *)self editor];
      v25 = [v24 contentOverlayView];
      [v25 frame];
      v27 = v26;
      v29 = v28;

      [MEMORY[0x1E69C0938] specificConfigurationWithPortraitTitleBounds:v14 portraitScreenSize:v16 landscapeScreenSize:{v18, v20, v27, v29, v27, v29}];
    }

    else
    {
      [MEMORY[0x1E69C0938] genericCallServicesConfigurationWithTitleBounds:{v14, v16, v18, v20}];
    }
    v30 = ;
    [v11 setLayoutConfiguration:v30];

    [v11 setDisableSettlingEffect:1];
    [v11 setRole:1];
    [v11 setDisableCache:1];
  }

  else if ([(PUPosterEditingEnvironment *)self->_environment px_isBackdrop])
  {
    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v31 = [(PUWallpaperPosterEditorController *)self editor];
      v32 = [v31 contentOverlayView];
      [v32 frame];
      v34 = v33;
      v36 = v35;

      [MEMORY[0x1E69C0938] specificConfigurationWithPortraitTitleBounds:v14 portraitScreenSize:v16 landscapeScreenSize:{v18, v20, v34, v36, v36, v34}];
    }

    else
    {
      [MEMORY[0x1E69C0938] genericCallServicesConfigurationWithTitleBounds:{v14, v16, v18, v20}];
    }
    v37 = ;
    [v11 setLayoutConfiguration:v37];

    [v11 setDisableSettlingEffect:1];
    [v11 setDisableHeadroomLayout:1];
    [v11 setDisableSpatialPhoto:1];
    [v11 setDisableCache:1];
    [v11 setRole:2];
  }

  else
  {
    v38 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
    v39 = v38 == 0;

    if (!v39)
    {
      [v11 setDisableAdaptiveLayout:{-[PUWallpaperPosterEditorController _shouldEnableAdaptiveLayout](self, "_shouldEnableAdaptiveLayout") ^ 1}];
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v52[3] = 0;
  [(PUWallpaperPosterEditorController *)self setSegmentationLoading:v11];
  v40 = MEMORY[0x1E69E96A0];
  v41 = MEMORY[0x1E69E96A0];
  [v11 setLoadingHandlerQueue:v40];

  if (!v6)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __56__PUWallpaperPosterEditorController__loadParallaxAsset___block_invoke;
    v50[3] = &unk_1E7B78428;
    v50[4] = buf;
    objc_copyWeak(&v51, &location);
    v50[5] = v53;
    v50[6] = v52;
    [v11 setLoadingHandler:v50];
    objc_destroyWeak(&v51);
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __56__PUWallpaperPosterEditorController__loadParallaxAsset___block_invoke_447;
  v43[3] = &unk_1E7B78450;
  v49 = v6;
  v48[1] = a2;
  v45 = buf;
  v43[4] = self;
  objc_copyWeak(v48, &location);
  v46 = v53;
  v47 = v52;
  v42 = v10;
  v44 = v42;
  [v11 loadSegmentationItemWithCompletion:v43];

  objc_destroyWeak(v48);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

void __56__PUWallpaperPosterEditorController__loadParallaxAsset___block_invoke(uint64_t a1, void *a2, char a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((~a3 & 0x84) == 0 && (*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _handleSegmentationItem:v4 compoundLayerStack:0 style:0 forAsset:0 error:0];

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *(*(*(a1 + 40) + 8) + 24) = [v4 settlingEffectStatus];
    v6 = [v4 spatialPhotoStatus];

    *(*(*(a1 + 48) + 8) + 24) = v6;
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 40) + 8) + 24);
      v9 = *(*(*(a1 + 48) + 8) + 24);
      v12 = 134218240;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Partial item settlingEffectStatus: %ld spatialPhotoStatus: %ld", &v12, 0x16u);
    }

    v10 = (*(*(*(a1 + 40) + 8) + 24) & 0xFFFFFFFFFFFFFFFDLL) == 0;
    v11 = objc_loadWeakRetained((a1 + 56));
    [v11 setLoadingSettlingEffect:v10];
  }
}

void __56__PUWallpaperPosterEditorController__loadParallaxAsset___block_invoke_447(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUWallpaperPosterEditorController__loadParallaxAsset___block_invoke_2;
  block[3] = &unk_1E7B80638;
  objc_copyWeak(&v12, (a1 + 72));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if ([*(a1 + 32) _attemptedSettlingEffect])
  {
    [*(a1 + 32) _sendSettlingEffectGatingAnalyticsWithSegmentationItem:v5];
  }

  if (*(a1 + 88) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _handleSegmentationItem:v5 compoundLayerStack:0 style:0 forAsset:0 error:0];
LABEL_8:

    goto LABEL_9;
  }

  v8 = *(*(*(a1 + 56) + 8) + 24);
  if (v8 != [v5 settlingEffectStatus] || (v9 = *(*(*(a1 + 64) + 8) + 24), v9 != objc_msgSend(v5, "spatialPhotoStatus")))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _handleAsyncPhotoEffectLoadedWithSegmentationItem:v5];
    goto LABEL_8;
  }

LABEL_9:
  dispatch_group_leave(*(a1 + 40));
  v10 = objc_loadWeakRetained((a1 + 72));
  [v10 setSegmentationLoading:0];

  objc_destroyWeak(&v12);
}

void __56__PUWallpaperPosterEditorController__loadParallaxAsset___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLoadingSettlingEffect:0];
}

- (void)_loadAssetWithUUID:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  [v6 setIncludeGuestAssets:1];
  v7 = MEMORY[0x1E6978630];
  v17[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v9 = [v7 fetchAssetsWithUUIDs:v8 options:v6];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v10];
    [(PUWallpaperPosterEditorController *)self _loadParallaxAsset:v11];
  }

  else
  {
    v12 = PLWallpaperGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch asset: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PUWallpaperPosterEditorController__loadAssetWithUUID___block_invoke;
    block[3] = &unk_1E7B80638;
    objc_copyWeak(&v14, buf);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __56__PUWallpaperPosterEditorController__loadAssetWithUUID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSegmentationItem:0 compoundLayerStack:0 style:0 forAsset:0 error:0];
}

- (void)_reloadAssetUUID:(id)a3 fromWallpaperURL:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E6978630];
  v31[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v10 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];
  v12 = [v8 fetchAssetsWithUUIDs:v9 options:v11];
  v13 = [v12 firstObject];

  if (v13)
  {
    v14 = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
    dispatch_group_enter(v14);
    v15 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v13];
    v16 = MEMORY[0x1E69BDF40];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke;
    v23[3] = &unk_1E7B78400;
    v17 = v14;
    v24 = v17;
    objc_copyWeak(&v27, &location);
    v25 = v6;
    v26 = self;
    v18 = [v16 reloadSegmentationItemFromWallpaperURL:v7 asset:v15 completion:v23];
    [(PUWallpaperPosterEditorController *)self setSegmentationLoading:v18];

    objc_destroyWeak(&v27);
  }

  else
  {
    v19 = PLWallpaperGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v6;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch cold-start asset: %{public}@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke_439;
    block[3] = &unk_1E7B80610;
    objc_copyWeak(&v22, &location);
    v21 = 0;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v22);
  }

  objc_destroyWeak(&location);
}

void __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_group_leave(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setSegmentationLoading:0];

  v8 = PLWallpaperGetLog();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_INFO, "Successfully reloaded cold-start segmentation item: %{public}@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke_437;
    block[3] = &unk_1E7B80610;
    v11 = &v20;
    objc_copyWeak(&v20, (a1 + 56));
    v12 = &v19;
    v19 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Failed to reload cold-start segmentation item: %{public}@, error: %{public}@", buf, 0x16u);
    }

    v14 = [*(a1 + 48) queue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke_438;
    v15[3] = &unk_1E7B80610;
    v11 = &v17;
    objc_copyWeak(&v17, (a1 + 56));
    v12 = &v16;
    v16 = *(a1 + 40);
    dispatch_async(v14, v15);
  }

  objc_destroyWeak(v11);
}

void __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke_439(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSegmentationItem:0 compoundLayerStack:0 style:0 forAsset:0 error:*(a1 + 32)];
}

void __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke_437(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSegmentationItem:*(a1 + 32) compoundLayerStack:0 style:0 forAsset:0 error:0];
}

void __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke_438(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadAssetWithUUID:*(a1 + 32)];
}

- (BOOL)_tryLoadAssetUUID:(id)a3 fromWallpaperURL:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v37 = 0;
  v8 = [MEMORY[0x1E69BDF40] loadCompoundLayerStackFromWallpaperURL:v7 options:1347 error:&v37];
  v9 = v37;
  if (v8)
  {
    v10 = [(PUWallpaperPosterEditorController *)self currentEditConfiguration];
    v11 = [v10 style];

    if (!v11)
    {
      v36 = 0;
      v11 = [MEMORY[0x1E69BDF40] loadStyleFromWallpaperURL:v7 error:&v36];
      v12 = v36;
      if (!v11)
      {
        v13 = PLWallpaperGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v40 = v6;
          v41 = 2114;
          v42 = v12;
          _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Failed to load style for asset: %{public}@, error: %{public}@", buf, 0x16u);
        }
      }
    }

    v35 = v9;
    v14 = [MEMORY[0x1E69BDF40] loadSegmentationItemFromWallpaperURL:v7 error:&v35];
    v15 = v35;

    v16 = v14 != 0;
    if (v14)
    {
      if ([v14 spatialPhotoStatus] || !-[PUWallpaperPosterEditorController _isSpatialPhotoPossible](self, "_isSpatialPhotoPossible"))
      {
        [(PUWallpaperPosterEditorController *)self _handleSegmentationItem:v14 compoundLayerStack:v8 style:v11 forAsset:0 error:v15];
      }

      else
      {
        v17 = PLWallpaperGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v40 = v6;
          _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "Loading spatial status for asset: %{public}@", buf, 0xCu);
        }

        [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"reloadSegmentationItemSpatial"];
        if (v6 && (v18 = MEMORY[0x1E6978630], v38 = v6, [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1], v24 = objc_claimAutoreleasedReturnValue(), -[PUWallpaperPosterEditorController photoLibrary](self, "photoLibrary"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "librarySpecificFetchOptions"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "fetchAssetsWithUUIDs:options:", v24, v23), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "firstObject"), v27 = objc_claimAutoreleasedReturnValue(), v19, v23, v25, v24, v27))
        {
          v26 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v27];
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        objc_initWeak(buf, self);
        v21 = MEMORY[0x1E69BDF40];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __72__PUWallpaperPosterEditorController__tryLoadAssetUUID_fromWallpaperURL___block_invoke;
        v28[3] = &unk_1E7B783D8;
        v29 = v6;
        v30 = v14;
        objc_copyWeak(&v34, buf);
        v31 = v8;
        v32 = v11;
        v33 = v15;
        [v21 loadSpatialPhotoForSegmentationItem:v30 asset:v26 completion:v28];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v20 = PLWallpaperGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v40 = v6;
        v41 = 2114;
        v42 = v15;
        _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "Failed to load segmentation item for asset: %{public}@, error: %{public}@", buf, 0x16u);
      }
    }

    v9 = v15;
  }

  else
  {
    v11 = PLWallpaperGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v40 = v6;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_INFO, "Failed to load layer stack for asset: %{public}@, error: %{public}@", buf, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

void __72__PUWallpaperPosterEditorController__tryLoadAssetUUID_fromWallpaperURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLWallpaperGetLog();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138543874;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Failed to load spatial photo for asset: %{public}@, item: %{public}@, error: %{public}@. Skipping.", buf, 0x20u);
    }

    v11 = v5;
    if (!v5)
    {
      v11 = *(a1 + 40);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      [v5 spatialPhotoStatus];
      v10 = PIPosterSpatialPhotoStatusDescription();
      *buf = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Successfully loaded spatial status for asset: %{public}@ spatialStatus:%{public}@", buf, 0x16u);
    }

    v11 = v5;
  }

  v14 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PUWallpaperPosterEditorController__tryLoadAssetUUID_fromWallpaperURL___block_invoke_435;
  block[3] = &unk_1E7B783B0;
  objc_copyWeak(&v21, (a1 + 72));
  v17 = v14;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v15 = v14;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v21);
}

void __72__PUWallpaperPosterEditorController__tryLoadAssetUUID_fromWallpaperURL___block_invoke_435(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleSegmentationItem:*(a1 + 32) compoundLayerStack:*(a1 + 40) style:*(a1 + 48) forAsset:0 error:*(a1 + 56)];
}

- (void)_loadAssetUUID:(id)a3 fromWallpaperURL:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLWallpaperGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "Attempt to load wallpaper for editing from poster url: %{public}@", buf, 0xCu);
  }

  if (![(PUWallpaperPosterEditorController *)self _tryLoadAssetUUID:v6 fromWallpaperURL:v7])
  {
    v9 = [(PUWallpaperPosterEditorController *)self environment];
    v10 = [v9 px_isCallServices];

    if ((v10 & 1) != 0 || (PUWallpaperCacheDirectoryURL(), v11 = objc_claimAutoreleasedReturnValue(), [v7 lastPathComponent], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "URLByAppendingPathComponent:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, LOBYTE(v11) = -[PUWallpaperPosterEditorController _tryLoadAssetUUID:fromWallpaperURL:](self, "_tryLoadAssetUUID:fromWallpaperURL:", v6, v13), v13, (v11 & 1) == 0))
    {
      [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadAssetUUID"];
      objc_initWeak(buf, self);
      v14 = [(PUWallpaperPosterEditorController *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PUWallpaperPosterEditorController__loadAssetUUID_fromWallpaperURL___block_invoke;
      block[3] = &unk_1E7B7F820;
      objc_copyWeak(&v18, buf);
      v16 = v6;
      v17 = v7;
      dispatch_async(v14, block);

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }
  }
}

void __69__PUWallpaperPosterEditorController__loadAssetUUID_fromWallpaperURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _reloadAssetUUID:*(a1 + 32) fromWallpaperURL:*(a1 + 40)];
}

- (void)_loadImagePosterMedia:(id)a3
{
  v16 = a3;
  v4 = [(PUWallpaperPosterEditorController *)self environment];
  v5 = [v4 pu_sourceAssetDirectory];

  v6 = [v16 assetUUID];
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = [v16 subpath];
  v8 = [v5 URLByAppendingPathComponent:v7];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = [(PUWallpaperPosterEditorController *)self _tryLoadAssetUUID:v6 fromWallpaperURL:v8];

  if (!v12)
  {
LABEL_6:
    v13 = objc_alloc(MEMORY[0x1E69BDE78]);
    v14 = [v16 imageURL];
    v15 = [v13 initWithFileURL:v14];

    [(PUWallpaperPosterEditorController *)self _loadParallaxAsset:v15];
  }
}

- (void)_loadAssetPosterMedia:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditorController *)self environment];
  v6 = [v5 pu_sourceAssetDirectory];

  v7 = [v4 assetUUID];
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = [v4 subpath];
  v9 = [v6 URLByAppendingPathComponent:v8];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v9 path];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    [(PUWallpaperPosterEditorController *)self _loadAssetUUID:v7 fromWallpaperURL:v9];
  }

  if (v12 != 1)
  {
LABEL_5:
    if (v7)
    {
      [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadAssetPosterMedia"];
      objc_initWeak(&location, self);
      v13 = [(PUWallpaperPosterEditorController *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__PUWallpaperPosterEditorController__loadAssetPosterMedia___block_invoke;
      block[3] = &unk_1E7B80610;
      objc_copyWeak(&v16, &location);
      v15 = v7;
      dispatch_async(v13, block);

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

void __59__PUWallpaperPosterEditorController__loadAssetPosterMedia___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadAssetWithUUID:*(a1 + 32)];
}

- (void)_loadContentForCurrentPosterMedia
{
  v4 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  [(PUWallpaperPosterEditorController *)self setLoadingSettlingEffect:0];
  if (!v4)
  {
    [(PUWallpaperPosterEditorController *)self setEditViewModel:0];
    goto LABEL_16;
  }

  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    objc_initWeak(&location, self);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v5 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__PUWallpaperPosterEditorController__loadContentForCurrentPosterMedia__block_invoke;
    v21[3] = &unk_1E7B78388;
    objc_copyWeak(&v24, &location);
    v22 = v4;
    v23 = &v25;
    [v5 requestResourceForPosterMedia:v22 completion:v21];

    if ((v26[3] & 1) == 0 && ![(PUWallpaperPosterEditorController *)self isPerformingInitialLoad])
    {
      [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadContentForCurrentPosterMedia"];
    }

    v6 = [(PUWallpaperPosterEditorController *)self shuffleAssetIndex];
    v7 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v8 = [v7 media];
    v9 = [v8 count];

    v10 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v11 = [v10 media];
    v12 = [v11 objectAtIndexedSubscript:(v6 + 1) % v9];

    v13 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    [v13 preloadResourceForPosterMedia:v12];

    objc_destroyWeak(&v24);
    _Block_object_dispose(&v25, 8);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

  v14 = [v4 mediaType];
  if (v14 <= 2)
  {
    if ((v14 - 1) < 2)
    {
      [(PUWallpaperPosterEditorController *)self _loadAssetPosterMedia:v4];
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_16;
    }

LABEL_18:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:1011 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v14 != 4)
  {
    if (v14 != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v15 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 px_descriptionForAssertionMessage];
    [v17 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"currentPosterMedia", v19, v20}];
  }

  [(PUWallpaperPosterEditorController *)self _loadImagePosterMedia:v15];

LABEL_16:
}

void __70__PUWallpaperPosterEditorController__loadContentForCurrentPosterMedia__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleShuffleSegmentationItem:v12 compoundLayerStack:v11 editConfiguration:v10 forPosterMedia:*(a1 + 32) error:v9];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (void)setIsLoading:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_isLoading != a3)
  {
    v3 = a3;
    self->_isLoading = a3;
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "setIsLoading:%{public}@", &v8, 0xCu);
    }

    [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyro];
  }
}

- (void)setFinalizationState:(unint64_t)a3
{
  if (self->_finalizationState != a3)
  {
    self->_finalizationState = a3;
    [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyro];
  }
}

- (void)setIsCancellingMediaLoading:(BOOL)a3
{
  if (self->_isCancellingMediaLoading != a3)
  {
    self->_isCancellingMediaLoading = a3;
    if (a3)
    {
      v4 = [(PUWallpaperPosterEditorController *)self segmentationLoading];
      [v4 cancel];

      v5 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
      [v5 stopPreloadingResources];
    }
  }
}

- (void)setCurrentPosterMedia:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentPosterMedia != v5)
  {
    v8 = v5;
    v5 = [v5 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      currentPosterMedia = self->_currentPosterMedia;
      objc_storeStrong(&self->_currentPosterMedia, a3);
      [(PUWallpaperPosterEditorController *)self setCurrentPosterMediaIsLivePhoto:0];
      if (!currentPosterMedia || !self->_currentPosterMedia)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      }

      v5 = [(PUWallpaperPosterEditorController *)self _loadContentForCurrentPosterMedia];
      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_handleUpdatedConfiguration:(id)a3 segmentationItem:(id)a4 compoundLayerStack:(id)a5 error:(id)a6
{
  v10 = a6;
  v11 = a5;
  v14 = a4;
  v12 = a3;
  [(PUWallpaperPosterEditorController *)self _hideLoadingIndicatorForReason:@"handleUpdatedConfiguration"];
  v13 = [v12 copy];

  [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v13];
  [(PUWallpaperPosterEditorController *)self _handleSegmentationItem:v14 compoundLayerStack:v11 style:0 forAsset:0 error:v10];
}

- (void)_loadSourcePosterConfiguration
{
  v4 = [(PUWallpaperPosterEditorController *)self environment];
  v5 = [v4 pu_sourcePosterConfiguration];

  if (([v5 options] & 8) != 0)
  {
    [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadSourcePosterConfiguration"];
    v11 = [PUWallpaperConfigurationUpdater alloc];
    v12 = [(PUWallpaperPosterEditorController *)self photoLibrary];
    v13 = [(PUWallpaperPosterEditorController *)self environment];
    v14 = [v13 pu_sourcePosterConfiguration];
    v15 = [(PUWallpaperPosterEditorController *)self environment];
    v16 = [v15 pu_targetAssetDirectory];
    v17 = [(PUWallpaperPosterEditorController *)self environment];
    v18 = [v17 pu_overrideConfiguration];
    v10 = [(PUWallpaperConfigurationUpdater *)v11 initWithPhotoLibrary:v12 sourceConfiguration:v14 targetAssetDirectory:v16 overrideConfiguration:v18];

    objc_initWeak(&location, self);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __67__PUWallpaperPosterEditorController__loadSourcePosterConfiguration__block_invoke;
    v24 = &unk_1E7B78360;
    objc_copyWeak(&v25, &location);
    [(PUWallpaperConfigurationUpdater *)v10 attemptUpdateWithCompletionBlock:&v21];
    [(PUWallpaperPosterEditorController *)self setConfigurationUpdater:v10, v21, v22, v23, v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    if (!v5)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:910 description:@"Missing source poster configuration"];
    }

    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      v6 = [v5 shuffleConfiguration];

      if (!v6)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:912 description:@"Missing source poster shuffle configuration"];
      }

      v7 = [v5 media];
      v8 = [(PUWallpaperPosterEditorController *)self environment];
      v9 = [v8 px_significantEventsCounter];

      self->_shuffleAssetIndex = +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", v9, [v7 count]);
    }

    v10 = [v5 copy];
    [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v10];
  }
}

void __67__PUWallpaperPosterEditorController__loadSourcePosterConfiguration__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdatedConfiguration:v13 segmentationItem:v11 compoundLayerStack:v12 error:v10];
}

- (void)_loadPosterDescriptor
{
  v4 = [(PUWallpaperPosterEditorController *)self environment];
  v12 = [v4 pu_posterDescriptor];

  v5 = v12;
  if (!v12)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:831 description:{@"Invalid parameter not satisfying: %@", @"posterDescriptor"}];

    v5 = 0;
  }

  if (([v5 isBlankTemplate] & 1) != 0 || objc_msgSend(v12, "descriptorType") == 2)
  {
    [(PUWallpaperPosterEditorController *)self _pickAssets];
  }

  else
  {
    v6 = [objc_opt_class() posterConfigurationFromPosterDescriptor:v12];
    if (!v6)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:838 description:@"Missing poster configuration"];
    }

    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      v7 = [v6 shuffleConfiguration];

      if (!v7)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:840 description:@"Missing poster shuffle configuration"];
      }
    }

    v8 = [v12 media];
    [v6 setMedia:v8];

    [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v6];
  }
}

- (void)_beginLoadingShuffleResources
{
  [(PUWallpaperPosterEditorController *)self _createShuffleResourceManager];
  v5 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v3 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  v4 = [v5 media];
  [v3 startPreloadingResourcesForPosterMedia:v4];

  if (![(PUWallpaperPosterEditorController *)self isAnySmartAlbumAvailable])
  {
    [(PUWallpaperPosterEditorController *)self _updateSmartAlbumAvailability];
  }
}

- (void)_createShuffleResourceManager
{
  v3 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  [v3 stopPreloadingResources];

  v27 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  v4 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v5 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  v6 = [v5 style];

  if (v6)
  {
    v7 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    v8 = [v7 style];
LABEL_5:
    v28 = v8;
    goto LABEL_6;
  }

  v9 = [v4 editConfiguration];
  v7 = [v9 style];

  if (v7)
  {
    v8 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v7];
    goto LABEL_5;
  }

  v28 = 0;
LABEL_6:

  v10 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v11 = [v10 editConfiguration];
  v12 = [v11 style];

  if (v12)
  {
    v13 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PUWallpaperPosterEditorController *)self _shuffleType];
  v15 = [PUWallpaperShuffleResourceManager alloc];
  v16 = [v4 media];
  v17 = [(PUWallpaperPosterEditorController *)self environment];
  v18 = [v17 pu_sourceAssetDirectory];
  v19 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v20 = [(PUWallpaperShuffleResourceManager *)v15 initWithPosterMedia:v16 style:v28 assetDirectory:v18 persistedStyle:v13 photoLibrary:v19 shuffleType:v14];
  [(PUWallpaperPosterEditorController *)self setShuffleResourceManager:v20];

  [(PUWallpaperPosterEditorController *)self _setShuffleEffect:2 supported:[(PUWallpaperPosterEditorController *)self _isSpatialPhotoPossible]];
  if (v14 != 1)
  {
    if (v27)
    {
      -[PUWallpaperPosterEditorController _setShuffleEffect:enabled:](self, "_setShuffleEffect:enabled:", 1, [v27 enabledEffects] & 1);
      v21 = ([v27 enabledEffects] >> 1) & 1;
    }

    else
    {
      v22 = [v4 editConfiguration];

      if (v22)
      {
        v23 = [v4 editConfiguration];
        v24 = [v23 isDepthEnabled];
      }

      else
      {
        v24 = 1;
      }

      [(PUWallpaperPosterEditorController *)self _setShuffleEffect:1 enabled:v24];
      v25 = [v4 editConfiguration];

      if (v25)
      {
        v26 = [v4 editConfiguration];
        v21 = [v26 isSpatialPhotoEnabled];
      }

      else
      {
        v21 = 0;
      }
    }

    [(PUWallpaperPosterEditorController *)self _setShuffleEffect:2 enabled:v21];
  }
}

- (void)_loadAssetFromPosterConfiguration
{
  location[3] = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  if (([v3 options] & 2) != 0)
  {
    v6 = [PUWallpaperPosterMigrator alloc];
    v7 = [(PUWallpaperPosterEditorController *)self environment];
    v8 = [v7 pu_sourceAssetDirectory];
    v9 = [(PUWallpaperPosterEditorController *)self environment];
    v4 = -[PUWallpaperPosterMigrator initWithAssetDirectory:configurationType:](v6, "initWithAssetDirectory:configurationType:", v8, [v9 pu_legacyConfigurationType]);

    [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadAssetFromPosterConfiguration"];
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PUWallpaperPosterEditorController__loadAssetFromPosterConfiguration__block_invoke;
    v13[3] = &unk_1E7B78338;
    objc_copyWeak(&v14, location);
    [v4 attemptMigrationWithCompletionBlock:v13];
    [(PUWallpaperPosterEditorController *)self setMigrator:v4];
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
LABEL_9:

    goto LABEL_10;
  }

  if (([v3 options] & 8) != 0)
  {
    v4 = PLWallpaperGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v3;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_INFO, "Ignore current configuration as it's marked as needing update: %@", location, 0xCu);
    }

    goto LABEL_9;
  }

  if (v3)
  {
    v4 = [v3 media];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndexedSubscript:[(PUWallpaperPosterEditorController *)self shuffleAssetIndex]% [v4 count]];
      [(PUWallpaperPosterEditorController *)self setCurrentPosterMedia:v5];
    }

    else
    {
      v10 = [(PUWallpaperPosterEditorController *)self environment];
      v11 = [v10 px_isCallServices];

      if (v11)
      {
        [(PUWallpaperPosterEditorController *)self _pickAssets];
      }

      else
      {
        v12 = PLWallpaperGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v3;
          _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Current poster configuration has no media: %@", location, 0xCu);
        }

        [(PUWallpaperPosterEditorController *)self setCurrentPosterMedia:0];
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __70__PUWallpaperPosterEditorController__loadAssetFromPosterConfiguration__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PUWallpaperPosterEditorController__loadAssetFromPosterConfiguration__block_invoke_2;
  v13[3] = &unk_1E7B7F478;
  objc_copyWeak(&v17, (a1 + 32));
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v10 = v9;
  v11 = v7;
  v12 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v17);
}

void __70__PUWallpaperPosterEditorController__loadAssetFromPosterConfiguration__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleSegmentationItem:*(a1 + 32) compoundLayerStack:*(a1 + 40) style:0 forAsset:0 error:*(a1 + 48)];
}

- (PFPosterEditConfiguration)currentEditConfiguration
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  }

  else
  {
    [(PUWallpaperPosterEditorController *)self posterConfiguration];
  }
  v3 = ;
  v4 = [v3 editConfiguration];

  return v4;
}

- (void)setPosterConfiguration:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_posterConfiguration != v5 && ([(PFPosterConfiguration *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_posterConfiguration, a3);
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Loading poster configuration for editing: %{public}@", &v8, 0xCu);
    }

    if (v6)
    {
      if ([(PUWallpaperPosterEditorController *)self _isShuffle])
      {
        [(PUWallpaperPosterEditorController *)self _beginLoadingShuffleResources];
      }

      [(PUWallpaperPosterEditorController *)self _updateUserTransformIsDisabled];
      [(PUWallpaperPosterEditorController *)self _loadAssetFromPosterConfiguration];
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
    }
  }
}

- (void)_updateTitleHeightProperties
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    v3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v4 = [v3 style];
    v5 = [v4 kind];
    v6 = [v5 isEqual:*MEMORY[0x1E69C0B28]];

    if (v6)
    {
      v7 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
      v8 = [v7 editConfiguration];

      v9 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __65__PUWallpaperPosterEditorController__updateTitleHeightProperties__block_invoke;
      v11[3] = &unk_1E7B80328;
      v12 = v8;
      v10 = v8;
      [v9 performChanges:v11];
    }
  }
}

void __65__PUWallpaperPosterEditorController__updateTitleHeightProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 landscapeAdditionalTitleLabelHeight];
  [v4 setLandscapeOverrideTitleHeight:?];
  [*(a1 + 32) additionalTitleLabelHeight];
  [v4 setOverrideTitleHeight:?];
  [*(a1 + 32) userAdjustedTitleLabelHeightOffset];
  [v4 setUserAdjustedTitleHeightOffset:?];
  [*(a1 + 32) landscapeUserAdjustedTitleLabelHeightOffset];
  [v4 setLandscapeUserAdjustedTitleHeightOffset:?];
}

- (void)_updatePreferredTitleBounds
{
  if (PFPosterIsAdaptiveLayoutEnabled())
  {
    v36 = [(PUWallpaperPosterEditorController *)self environment];
    if ([v36 px_isBackdrop])
    {
    }

    else
    {
      v3 = [(PUWallpaperPosterEditorController *)self environment];
      v4 = [v3 px_isCallServices];

      if ((v4 & 1) == 0)
      {
        v5 = [(PUWallpaperPosterEditorController *)self _isShuffle];
        v6 = [(PUWallpaperPosterEditorController *)self editViewModel];
        v7 = [v6 currentLayerStackViewModel];
        [v7 containerFrame];
        PXRectWithSize();
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v16 = [(PUWallpaperPosterEditorController *)self editViewModel];
        v17 = [v16 deviceOrientation];

        if ((v17 - 3) <= 1)
        {
          PXRectTransposed();
          v9 = v18;
          v11 = v19;
          v13 = v20;
          v15 = v21;
        }

        v22 = [(PUWallpaperPosterEditorController *)self environment];
        [v22 px_minimumTitleBoundsForLayout:0];

        v37 = v15;
        PXRectDenormalize();
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [v7 additionalViewTitleHeight];
        if (v5)
        {
          v31 = PUUserAdjustedAdditionalViewTitleHeightForViewModel(v7);
        }

        v32 = v31;
        v43.origin.x = v24;
        v43.origin.y = v26;
        v43.size.width = v28;
        v43.size.height = v30;
        v33 = v32 + CGRectGetMaxY(v43);
        v34 = [(PUWallpaperPosterEditorController *)self editor];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke;
        v41[3] = &__block_descriptor_72_e69_v24__0___PUMutablePosterEditorPreferences__8___PXPosterTransition__16l;
        *&v41[4] = v33;
        v41[5] = v9;
        v41[6] = v11;
        v41[7] = v13;
        v41[8] = v37;
        [v34 pu_updatePreferences:v41];

        v35 = [(PUWallpaperPosterEditorController *)self editor];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke_2;
        v39[3] = &__block_descriptor_33_e63_v24__0___PXPosterMutablePreferences__8___PXPosterTransition__16l;
        v40 = v5;
        [v35 px_updatePreferences:v39];

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke_3;
        v38[3] = &unk_1E7B78288;
        v38[4] = self;
        [v6 performChanges:v38];
      }
    }
  }
}

void __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = a2;
  v11.origin.x = v4;
  v11.origin.y = v5;
  v11.size.width = v6;
  v11.size.height = v7;
  Width = CGRectGetWidth(v11);
  [v9 setPu_preferredSalientContentRectangle:{0.0, v3, Width, CGRectGetHeight(*(a1 + 40)) - *(a1 + 32)}];
}

uint64_t __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setPx_adaptiveTimeMode:v2];
}

void __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 editor];
  v4 = [v5 pu_environment];
  PUAdjustedSalientContentRectangleFromEnvironment(v4);
  [v3 setConfiguredSalientContentRectangle:?];
}

- (void)_updateContentOverlayContainerView
{
  v3 = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  v4 = [(PUWallpaperPosterEditorController *)self editor];
  v5 = [v4 contentOverlayView];

  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(PUWallpaperPosterEditorController *)self environment];
  v15 = [v14 pu_deviceOrientation];

  v16 = v7;
  v17 = v9;
  v18 = v11;
  v19 = v13;
  if (&v15[-1].ty + 5 <= 1)
  {
    PXRectTransposed();
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
  }

  PXRectGetCenter();
  [v3 setCenter:?];
  [v3 setBounds:{v16, v17, v18, v19}];
  PUPosterAdditionalTransformForDeviceOrientation(v15, v24);
  [v3 setTransform:v24];
}

- (void)_updateLayerStackOrderingForViewModel:(id)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 viewManager];
  v6 = [(PUWallpaperPosterEditorController *)self backgroundView];
  v7 = *MEMORY[0x1E69C0A70];
  [(PUWallpaperPosterEditorController *)self _updateViewForLayerID:*MEMORY[0x1E69C0A70] usingViewManager:v5 containerView:v6];
  v8 = [(PUWallpaperPosterEditorController *)self _wantsSpatialPhotoBackfill];
  v9 = [v4 spatialPhotoEnabled];
  if (v8)
  {
    v10 = MEMORY[0x1E69C0AC0];
    v11 = MEMORY[0x1E69C0AB0];
    if (v9)
    {
      v12 = [v5 spatialPhotoBackgroundBackfillLayerView];
      goto LABEL_6;
    }

LABEL_14:
    v14 = *v11;
    v15 = *v10;
    goto LABEL_15;
  }

  v10 = MEMORY[0x1E69C0AB8];
  v11 = MEMORY[0x1E69C0AA8];
  if (!v9)
  {
    goto LABEL_14;
  }

  v12 = [v5 spatialPhotoBackgroundLayerView];
LABEL_6:
  v13 = v12;

  v14 = *v11;
  v15 = *v10;
  if (v13)
  {
    v16 = [(PUWallpaperPosterEditorController *)self _updateViewForLayerID:v14 usingViewManager:v5 containerView:v6];
    v17 = [(PUWallpaperPosterEditorController *)self floatingView];
    [(PUWallpaperPosterEditorController *)self _updateViewForLayerID:v15 usingViewManager:v5 containerView:v17];

    [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyroForLayerStackViewModel:v4];
    v18 = [v5 existingViewForLayerID:*MEMORY[0x1E69C0A80]];
    v19 = [v18 superview];

    if (v19)
    {
      [v18 removeFromSuperview];
    }

    v20 = [v5 existingViewForLayerID:v7];
    v21 = [v20 superview];

    if (v21)
    {
      [v20 removeFromSuperview];
    }

    if (v16)
    {
      [(PUWallpaperPosterEditorController *)self _showSpatialPhotoDisabledLowerPowerModeTipIfNeeded];
    }

    [v4 hasMatte];
    goto LABEL_24;
  }

LABEL_15:
  v22 = [v5 existingViewForLayerID:v14];
  v23 = [v22 superview];

  if (v23)
  {
    [v22 removeFromSuperview];
  }

  v24 = [v5 existingViewForLayerID:v15];

  v25 = [v24 superview];

  if (v25)
  {
    [v24 removeFromSuperview];
  }

  if ([v4 hasMatte])
  {
    if ([v4 clockAppearsAboveForeground])
    {
      [(PUWallpaperPosterEditorController *)self foregroundView];
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self floatingView];
    }
    v26 = ;
    [(PUWallpaperPosterEditorController *)self _updateViewForLayerID:*MEMORY[0x1E69C0A80] usingViewManager:v5 containerView:v26];
  }

LABEL_24:
  if ([v4 showsDebugHUD])
  {
    v27 = [(PUWallpaperPosterEditorController *)self floatingView];
    v28 = [v5 debugInfoView];
    [v27 addSubview:v28];

    v29 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v30 = [v29 currentLayerStackViewModel];
    v31 = [v30 viewManager];
    v32 = [v31 debugInfoView];

    v41 = @"Idle Timer Disabled";
    v33 = [(PUWallpaperPosterEditorController *)self editModel];
    v34 = [v33 idleTimerDisabled];
    v35 = @"NO";
    if (v34)
    {
      v35 = @"YES";
    }

    v42[0] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [v32 displayAdditionalDebugInfo:v36];
  }

  else
  {
    v32 = [v5 debugInfoViewIfLoaded];
    [v32 removeFromSuperview];
  }

  if (PXPreferencesGetBool())
  {
    v37 = [(PUWallpaperPosterEditorController *)self floatingView];
    v38 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v39 = [v38 viewManager];
    v40 = [v39 debugRectsView];
    [v37 addSubview:v40];
  }

  else
  {
    v37 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v38 = [v37 viewManager];
    v39 = [v38 debugRectsViewIfLoaded];
    [v39 removeFromSuperview];
  }
}

- (void)_updateVisibleLayerStackViewsWithPreviouslyVisibleStackViewModels:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        [v9 unregisterChangeObserver:self context:"LayerStackViewModelObservationContext"];
        [(PUWallpaperPosterEditorController *)self _removeViewsFromLayerStackViewModel:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v10 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v11 = [v10 visibleLayerStackViewModels];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * j);
        [(PUWallpaperPosterEditorController *)self _updateLayerStackOrderingForViewModel:v16];
        [v16 registerChangeObserver:self context:"LayerStackViewModelObservationContext"];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (BOOL)_updateViewForLayerID:(id)a3 usingViewManager:(id)a4 containerView:(id)a5
{
  v7 = a5;
  v8 = [a4 viewForLayerID:a3];
  v9 = v8;
  if (!v8 || ([v8 superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v7))
  {
    v12 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __90__PUWallpaperPosterEditorController__updateViewForLayerID_usingViewManager_containerView___block_invoke;
    v14[3] = &unk_1E7B80C38;
    v15 = v7;
    v16 = v9;
    [v11 performWithoutAnimation:v14];

    v12 = 1;
  }

  return v12;
}

- (void)_removeViewsFromLayerStackViewModel:(id)a3
{
  v3 = [a3 viewManager];
  v4 = [v3 createdLayerViews];
  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PUWallpaperPosterEditorController__removeViewsFromLayerStackViewModel___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v8 = v4;
  v6 = v4;
  [v5 performWithoutAnimation:v7];
}

void __73__PUWallpaperPosterEditorController__removeViewsFromLayerStackViewModel___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) removeFromSuperview];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_updateSpatialPhotoGyroForLayerStackViewModel:(id)a3
{
  v4 = [a3 viewManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PUWallpaperPosterEditorController__updateSpatialPhotoGyroForLayerStackViewModel___block_invoke;
  aBlock[3] = &unk_1E7B782D0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [v4 spatialPhotoBackgroundLayerView];
  v5[2](v5, v6);

  v7 = [v4 spatialPhotoBackgroundBackfillLayerView];
  v5[2](v5, v7);
}

void __83__PUWallpaperPosterEditorController__updateSpatialPhotoGyroForLayerStackViewModel___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 BOOLForKey:@"PUWallpaperPosterEditorDisableWorkaroundFor141650509"];

    if (v5)
    {
      v6 = [*(a1 + 32) environment];
      v7 = v6;
      if (v6)
      {
        [v6 deviceAttitude];
      }

      else
      {
        memset(v14, 0, sizeof(v14));
      }

      [v3 setAttitude:v14];
    }

    else
    {
      [v3 setEnableGyroAnimator:1];
      v8 = [*(a1 + 32) environment];
      v7 = v8;
      if (v8)
      {
        [v8 deviceAttitude];
        v9 = v13;
      }

      else
      {
        v9 = 0;
        v12 = 0u;
        v13 = 0u;
        v11 = 0u;
      }

      [v3 setDeviceOrientation:{v9, v11, v12, v13}];
    }

    [v3 setEnableOcclusion:{objc_msgSend(*(a1 + 32), "_isDepthEnabled")}];
    if ([*(a1 + 32) finalizationState] == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = [*(a1 + 32) isLoading];
    }

    [v3 setIsGeneratingPoster:v10];
  }
}

- (void)_updateSpatialPhotoGyro
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v4 = [v3 visibleLayerStackViewModels];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyroForLayerStackViewModel:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_showSpatialPhotoDisabledLowerPowerModeTipIfNeeded
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, 500000000);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __87__PUWallpaperPosterEditorController__showSpatialPhotoDisabledLowerPowerModeTipIfNeeded__block_invoke;
    v6[3] = &unk_1E7B80638;
    objc_copyWeak(&v7, &location);
    dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

uint64_t __87__PUWallpaperPosterEditorController__showSpatialPhotoDisabledLowerPowerModeTipIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = [MEMORY[0x1E69C3CA0] presentSpatialPhotoDisabledLowPowerModeTip:WeakRetained];
    v2 = v4;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

- (void)_updateEditorPreferences
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled])
  {
    v3 = [(PUWallpaperPosterEditorController *)self _isSpatialPhotoPossible];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PUWallpaperPosterEditorController *)self _isDepthEnabledInAnyOrientation];
  v5 = [(PUWallpaperPosterEditorController *)self editModel];
  v6 = [v5 depthEffectDisabled];

  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    if (v3)
    {
      v8 = @"YES";
    }

    v9 = v8;
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_INFO, "Updating render preferences with hasSpatialPhoto:%@", buf, 0xCu);
  }

  v10 = [(PUWallpaperPosterEditorController *)self editor];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PUWallpaperPosterEditorController__updateEditorPreferences__block_invoke;
  v11[3] = &__block_descriptor_35_e69_v24__0___PUMutablePosterEditorPreferences__8___PXPosterTransition__16l;
  v12 = v3;
  v13 = v4;
  v14 = v6;
  [v10 pu_updatePreferences:v11];
}

void __61__PUWallpaperPosterEditorController__updateEditorPreferences__block_invoke(_BYTE *a1, void *a2)
{
  if (a1[32])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v6 = a2;
  [v6 setSupportedMotionEffectsMode:v3];
  if (a1[32])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [v6 setDeviceMotionMode:v4];
  [v6 setPreferredDeviceMotionUpdateInterval:0.01];
  if (a1[33] == 1)
  {
    v5 = a1[34] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v6 setDepthEffectEnabled:v5 & 1];
}

- (void)_updateDeviceOrientation
{
  v3 = [(PUWallpaperPosterEditorController *)self environment];
  if ([v3 px_isBackdrop])
  {

LABEL_4:
    v5 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__PUWallpaperPosterEditorController__updateDeviceOrientation__block_invoke;
    v6[3] = &unk_1E7B78288;
    v6[4] = self;
    [v5 performChanges:v6];

    goto LABEL_5;
  }

  v4 = [MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration];

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(PUWallpaperPosterEditorController *)self _updateContentOverlayContainerView];
}

void __61__PUWallpaperPosterEditorController__updateDeviceOrientation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 environment];
  [v3 setDeviceOrientation:{objc_msgSend(v4, "pu_deviceOrientation")}];
}

- (void)_updateContainerFrame
{
  v3 = [(PUWallpaperPosterEditorController *)self backgroundView];
  [v3 bounds];
  PXRectWithOriginAndSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    v12 = [(PUWallpaperPosterEditorController *)self environment];
    v13 = [v12 px_isBackdrop];

    if ((v13 & 1) == 0)
    {
      v23.origin.x = v5;
      v23.origin.y = v7;
      v23.size.width = v9;
      v23.size.height = v11;
      CGRectGetWidth(v23);
      v24.origin.x = v5;
      v24.origin.y = v7;
      v24.size.width = v9;
      v24.size.height = v11;
      CGRectGetHeight(v24);
      PXRectWithOriginAndSize();
      v5 = v14;
      v7 = v15;
      v9 = v16;
      v11 = v17;
    }
  }

  v18 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__PUWallpaperPosterEditorController__updateContainerFrame__block_invoke;
  v22[3] = &__block_descriptor_64_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  *&v22[4] = v5;
  *&v22[5] = v7;
  *&v22[6] = v9;
  *&v22[7] = v11;
  [v18 performChanges:v22];

  v19 = [(PUWallpaperPosterEditorController *)self environment];
  if ([v19 px_isBackdrop])
  {
  }

  else
  {
    v20 = [(PUWallpaperPosterEditorController *)self environment];
    v21 = [v20 px_isCallServices];

    if (!v21)
    {
      return;
    }
  }

  [(PUWallpaperPosterEditorController *)self _updateContentOverlayContainerView];
  [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
}

- (void)setVisibleLayerStackViewModels:(id)a3
{
  v4 = a3;
  visibleLayerStackViewModels = self->_visibleLayerStackViewModels;
  if (visibleLayerStackViewModels != v4)
  {
    v9 = v4;
    visibleLayerStackViewModels = [(NSArray *)visibleLayerStackViewModels isEqual:v4];
    v4 = v9;
    if ((visibleLayerStackViewModels & 1) == 0)
    {
      v6 = self->_visibleLayerStackViewModels;
      v7 = [(NSArray *)v9 copy];
      v8 = self->_visibleLayerStackViewModels;
      self->_visibleLayerStackViewModels = v7;

      [(PUWallpaperPosterEditorController *)self _updateVisibleLayerStackViewsWithPreviouslyVisibleStackViewModels:v6];
      v4 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](visibleLayerStackViewModels, v4);
}

- (void)setCurrentLayerStackViewModel:(id)a3
{
  v8 = a3;
  v5 = self->_currentLayerStackViewModel;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerStackViewModel *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentLayerStackViewModel, a3);
      [(PUWallpaperPosterEditorController *)self _updateMotionEffectsEnabled];
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      [(PUWallpaperPosterEditorController *)self _updateTitleHeightProperties];
      [(PUWallpaperPosterEditorController *)self _updatePreferredTitleBounds];
    }
  }
}

- (void)_updateVisibleLayerStackViewModels
{
  v4 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v3 = [v4 visibleLayerStackViewModels];
  [(PUWallpaperPosterEditorController *)self setVisibleLayerStackViewModels:v3];
}

- (void)_updateCurrentLayerStackViewModel
{
  v4 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v3 = [v4 currentLayerStackViewModel];
  [(PUWallpaperPosterEditorController *)self setCurrentLayerStackViewModel:v3];
}

- (void)_updateCurrentStyle
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    v3 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v4 = [v3 currentLayerStackViewModel];
    v8 = [v4 style];

    v5 = [v8 bakedStyle];
    v6 = [(PUWallpaperPosterEditorController *)self currentEditConfiguration];
    [v6 setStyle:v5];

    v7 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    [v7 setStyle:v8];
  }
}

- (void)_updateEditViewModelPropertiesFromPosterConfiguration
{
  v3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v9 = [v3 editConfiguration];

  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    [(PUWallpaperPosterEditorController *)self _applyPosterEditConfigurationForShuffleAsset];
    if (![(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
    {
      goto LABEL_7;
    }

    v4 = [(PUWallpaperPosterEditorController *)self editViewModel];
    [v4 performChanges:&__block_literal_global_334_37037];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v4 = [(PUWallpaperPosterEditorController *)self editViewModel];
    [v4 applyChangesFromPosterEditConfiguration:v9];
  }

LABEL_7:
  v5 = [(PUWallpaperPosterEditorController *)self environment];
  v6 = [v5 pu_posterDescriptor];
  v7 = [v6 descriptorType];

  if (v7 == 5)
  {
    v8 = [(PUWallpaperPosterEditorController *)self editViewModel];
    [v8 performChanges:&__block_literal_global_336];
  }
}

- (void)_loadEditViewModelAndUpdateLooks:(BOOL)a3
{
  [(PUWallpaperPosterEditorController *)self _stopSettlingEffectPreview];
  [(PUWallpaperPosterEditorController *)self _updateContainerFrame];
  [(PUWallpaperPosterEditorController *)self _updateDeviceOrientation];
  [(PUWallpaperPosterEditorController *)self _updateCurrentLayerStackViewModel];
  [(PUWallpaperPosterEditorController *)self _updateVisibleLayerStackViewModels];
  [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
  [(PUWallpaperPosterEditorController *)self _updateEditViewModelPropertiesFromPosterConfiguration];
  [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
  [(PUWallpaperPosterEditorController *)self _updateShuffleView];
  [(PUWallpaperPosterEditorController *)self _displayDefaultHint];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PUWallpaperPosterEditorController__loadEditViewModelAndUpdateLooks___block_invoke;
  v5[3] = &unk_1E7B7FA08;
  v7 = a3;
  objc_copyWeak(&v6, &location);
  [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewControllerWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __70__PUWallpaperPosterEditorController__loadEditViewModelAndUpdateLooks___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained editor];
    [v2 pu_updateLooks];
  }
}

- (void)setEditViewModel:(id)a3
{
  v10 = a3;
  v5 = self->_editViewModel;
  v6 = v5;
  if (v5 == v10)
  {
  }

  else
  {
    v7 = [(PUWallpaperPosterEditViewModel *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = self->_editViewModel;
      [(PUWallpaperPosterEditViewModel *)v8 unregisterChangeObserver:self context:"EditViewModelObservationContext"];
      objc_storeStrong(&self->_editViewModel, a3);
      [(PUWallpaperPosterEditViewModel *)self->_editViewModel registerChangeObserver:self context:"EditViewModelObservationContext"];

      if (v8)
      {
        v9 = [(PUWallpaperPosterEditorController *)self _isShuffle]^ 1;
      }

      else
      {
        v9 = 1;
      }

      [(PUWallpaperPosterEditorController *)self _loadEditViewModelAndUpdateLooks:v9];
      [(PUWallpaperPosterEditorController *)self _updateEditorPreferences];
    }
  }
}

- (void)dealloc
{
  v3 = [(PUWallpaperPosterEditorController *)self backgroundView];
  [v3 removeObserver:self forKeyPath:@"layer.bounds" context:&BackgroundViewObservationContext];

  v4 = [(PUWallpaperPosterEditorController *)self editModel];
  [v4 unregisterChangeObserver:self context:"EditModelObservationContext"];

  [(PUWallpaperPosterEditorController *)self _stopObservingPlayerItem];
  v5.receiver = self;
  v5.super_class = PUWallpaperPosterEditorController;
  [(PUWallpaperPosterEditorController *)&v5 dealloc];
}

- (PUWallpaperPosterEditorController)initWithWallpaperEditor:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = PUWallpaperPosterEditorController;
  v9 = [(PUWallpaperPosterEditorController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_editor, a3);
    objc_storeStrong(&v10->_photoLibrary, a4);
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.photos.poster-editor-loading", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v14 = PLWallpaperGetLog();
    v10->_signpost = os_signpost_id_make_with_pointer(v14, v10);

    v15 = dispatch_group_create();
    segmentationLoadingGroup = v10->_segmentationLoadingGroup;
    v10->_segmentationLoadingGroup = v15;

    v10->_performingInitialLoad = 1;
    [(PUWallpaperPosterEditModel *)v10->_editModel registerChangeObserver:v10 context:"EditModelObservationContext"];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PUWallpaperPosterEditorController_initWithWallpaperEditor_photoLibrary___block_invoke;
    block[3] = &unk_1E7B80DD0;
    v20 = v8;
    if (initWithWallpaperEditor_photoLibrary__onceToken != -1)
    {
      dispatch_once(&initWithWallpaperEditor_photoLibrary__onceToken, block);
    }

    v17 = [MEMORY[0x1E69C4598] sharedScheduler];
    [v17 scheduleDeferredTaskWithQoS:1 block:&__block_literal_global_37041];

    [MEMORY[0x1E69C1570] enableInMemoryCache];
    PFParallaxSpatialPhotoProducerSetDownloadHandler();
  }

  return v10;
}

uint64_t __74__PUWallpaperPosterEditorController_initWithWallpaperEditor_photoLibrary___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6991F28];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  [v2 setupWithConfigurationFilename:@"CPAnalyticsConfig-PhotosPosterProvider" inBundle:v3];

  [MEMORY[0x1E6991F28] setupSystemPropertyProvidersForLibrary:*(a1 + 32)];
  [MEMORY[0x1E6991F28] startAppTracking];
  [MEMORY[0x1E6991F28] startViewTracking];
  v4 = MEMORY[0x1E69DC668];

  return [v4 pu_prepareCPAnalytics];
}

+ (id)availableStylesForItem:(id)a3 posterConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:a1 file:@"PUWallpaperPosterEditorController.m" lineNumber:1664 description:{@"Invalid parameter not satisfying: %@", @"posterConfiguration"}];
    }

    if ([v9 posterType] == 2)
    {
      [v7 defaultStyles];
    }

    else
    {
      [v7 availableStyles];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int64_t)posterConfigurationTypeForPosterType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  if (!a3)
  {
    v13 = v4;
    v14 = v3;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PUWallpaperPosterEditorController.m" lineNumber:890 description:@"Unexpected poster descriptor type"];

    abort();
  }

  return 0;
}

+ (id)posterConfigurationFromPosterDescriptor:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:{objc_msgSend(objc_opt_class(), "posterConfigurationTypeForPosterType:", objc_msgSend(v3, "posterType"))}];
  if ([v3 descriptorType] == 2)
  {
    v5 = [v3 shuffleConfiguration];
    if (!v5)
    {
      v5 = [objc_alloc(MEMORY[0x1E69C0830]) initWithShuffleType:0];
      [v5 setShuffleFrequency:*MEMORY[0x1E69C0C58]];
      [v5 setShuffleSmartAlbums:{objc_msgSend(MEMORY[0x1E69C3C90], "supportedTypes")}];
    }

    [v4 setShuffleConfiguration:v5];
  }

  return v4;
}

@end