@interface PUWallpaperPosterEditorController
+ (id)availableStylesForItem:(id)item posterConfiguration:(id)configuration;
+ (id)posterConfigurationFromPosterDescriptor:(id)descriptor;
+ (int64_t)posterConfigurationTypeForPosterType:(int64_t)type;
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
- (BOOL)_tryLoadAssetUUID:(id)d fromWallpaperURL:(id)l;
- (BOOL)_updateViewForLayerID:(id)d usingViewManager:(id)manager containerView:(id)view;
- (BOOL)_wantsSpatialPhotoBackfill;
- (BOOL)editorShouldBeginFinalization:(id)finalization;
- (BOOL)wantsLowLuminanceContent;
- (PFPosterEditConfiguration)currentEditConfiguration;
- (PUWallpaperPosterEditorController)initWithWallpaperEditor:(id)editor photoLibrary:(id)library;
- (double)_hintLabelBottomAnchorDistance;
- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect;
- (id)_actionsMenu;
- (id)_adjustedCompoundLayerStackForAdaptiveLayout:(id)layout;
- (id)_colorPickerAction;
- (id)_fetchMePerson;
- (id)_headroomToggleMenuElement;
- (id)_initialLayerStyleForSegmentationItem:(id)item;
- (id)_leadingActionsMenu;
- (id)_photoPickerAction;
- (id)_sanitizeCompoundLayerStack:(id)stack forSegmentationItem:(id)item;
- (id)_shuffleFrequencyMenu;
- (id)_toggleHighKeyLowKeyAction;
- (id)_toggleSettlingEffectAction;
- (id)_toggleSpatialPhotoEffectAction;
- (id)centerSuggestionMedia;
- (id)initialColorsForEditor:(id)editor;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)leadingMenuElementsForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)presentationControllerForTipID:(id)d;
- (id)solidColorHomeScreenColorPickerConfigurationForEditor:(id)editor;
- (id)sourceItemForTipID:(id)d;
- (id)trailingMenuElementsForEditor:(id)editor;
- (int64_t)_defaultHint;
- (int64_t)_effectivePinchToZoomHint;
- (int64_t)_shuffleType;
- (void)_animateScrollToStyleKind:(id)kind completion:(id)completion;
- (void)_animateScrollToStyleKindAnimatorUpdated;
- (void)_applyPosterEditConfigurationForShuffleAsset;
- (void)_beginListeningForExtensionHostResignationNotification;
- (void)_beginLoadingShuffleResources;
- (void)_createShuffleResourceManager;
- (void)_didDismissLoadingErrorAlertShouldCancel:(BOOL)cancel;
- (void)_didFinishCreatingEditViewModel:(id)model forAsset:(id)asset error:(id)error;
- (void)_didLoadMediaFromPhotoPickerWithAssetUUID:(id)d succeeded:(BOOL)succeeded error:(id)error;
- (void)_didLoadMediaFromShuffleConfigurationViewController:(id)controller succeeded:(BOOL)succeeded;
- (void)_disableSettlingEffect;
- (void)_dismissPinchToZoomHint;
- (void)_dismissPosterConfigurationViewControllerAndCancelEditor;
- (void)_dismissPosterConfigurationViewControllerWithCompletion:(id)completion;
- (void)_displayDefaultHint;
- (void)_displayNextHint;
- (void)_enableSettlingEffect;
- (void)_extensionWillResignNotification:(id)notification;
- (void)_fadeInViews;
- (void)_handleAsyncPhotoEffectLoadedWithSegmentationItem:(id)item;
- (void)_handleLoadedCompoundLayerStack:(id)stack error:(id)error segmentationItem:(id)item style:(id)style completion:(id)completion;
- (void)_handlePhotoEffectsLoadedWithSegmentationItem:(id)item layerStack:(id)stack;
- (void)_handlePhotoPickerResults:(id)results;
- (void)_handlePosterSaved:(BOOL)saved error:(id)error;
- (void)_handleSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style forAsset:(id)asset error:(id)error;
- (void)_handleShuffleSegmentationItem:(id)item compoundLayerStack:(id)stack editConfiguration:(id)configuration forPosterMedia:(id)media error:(id)error;
- (void)_handleTapToShuffle:(id)shuffle;
- (void)_handleToggleSpatialPhotoAction;
- (void)_handleUpdatedConfiguration:(id)configuration segmentationItem:(id)item compoundLayerStack:(id)stack error:(id)error;
- (void)_hideHintAnimated:(BOOL)animated completion:(id)completion;
- (void)_hideLoadingIndicatorForReason:(id)reason;
- (void)_hideProgressIndicator;
- (void)_loadAssetFromPosterConfiguration;
- (void)_loadAssetPosterMedia:(id)media;
- (void)_loadAssetUUID:(id)d fromWallpaperURL:(id)l;
- (void)_loadAssetWithUUID:(id)d;
- (void)_loadContentForCurrentPosterMedia;
- (void)_loadEditViewModelAndUpdateLooks:(BOOL)looks;
- (void)_loadEditViewModelWithSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style completion:(id)completion;
- (void)_loadImagePosterMedia:(id)media;
- (void)_loadParallaxAsset:(id)asset;
- (void)_loadPosterDescriptor;
- (void)_loadSettlingEffectLayerStackForSegmentationItem:(id)item completion:(id)completion;
- (void)_loadSourcePosterConfiguration;
- (void)_observeCurrentPlayerItem;
- (void)_pickAssets;
- (void)_playerItemDidFinish:(id)finish;
- (void)_presentAuthenticatedShuffleConfigurationEditor;
- (void)_presentLoadingError:(id)error;
- (void)_presentLoadingError:(id)error forAsset:(id)asset;
- (void)_presentLoadingErrorAlertController:(id)controller;
- (void)_presentManualShuffleAssetEditor;
- (void)_presentPhotoPicker;
- (void)_presentPosterConfigurationViewController:(id)controller;
- (void)_presentSettlingEffectDebugView:(id)view;
- (void)_presentShuffleConfigurationEditor;
- (void)_presentSmartAlbumShuffleEditor;
- (void)_presentSpatialPhotoErrorDiagnosticsAlert;
- (void)_presentSpatialPhotoModelDownloadProgress:(double)progress producer:(id)producer downloadTask:(id)task;
- (void)_presentStyleColorPicker;
- (void)_presentUserAlbumShuffleEditor;
- (void)_prewarmSpatialPhotoModel;
- (void)_rejectSuggestionsForCurrentAsset;
- (void)_reloadAssetUUID:(id)d fromWallpaperURL:(id)l;
- (void)_reloadSmartAlbumPreviewAssetsWithCompletionHandler:(id)handler;
- (void)_removeViewsFromLayerStackViewModel:(id)model;
- (void)_renderAfterStyleChange;
- (void)_renderInitialLayerStack:(id)stack style:(id)style completion:(id)completion;
- (void)_resumeSavingAfterLoadingSpatialPhoto;
- (void)_savePosterEditConfigurationForCurrentPosterMedia;
- (void)_savePosterEditConfigurationForCurrentPosterMediaWithEnvironment:(id)environment;
- (void)_saveWithCompletionHandler:(id)handler;
- (void)_sendSettlingEffectGatingAnalyticsWithSegmentationItem:(id)item;
- (void)_setCurrentStyleIsHighKey:(BOOL)key;
- (void)_setShuffleEffect:(unint64_t)effect enabled:(BOOL)enabled;
- (void)_setShuffleEffect:(unint64_t)effect supported:(BOOL)supported;
- (void)_setupUserTransformView;
- (void)_showHintAnimated:(BOOL)animated completion:(id)completion;
- (void)_showLoadingIndicatorForReason:(id)reason;
- (void)_showPhotoInLibrary;
- (void)_showProgressIndicator:(id)indicator determinate:(BOOL)determinate;
- (void)_showSettlingEffectUnavailableTip;
- (void)_showSpatialPhotoDisabledLowerPowerModeTipIfNeeded;
- (void)_showTrySettlingEffectTip;
- (void)_startPinchToZoomHintTimeout;
- (void)_startSettlingEffectPreview;
- (void)_startSettlingEffectPreviewAfterDelay;
- (void)_stopListeningForExtensionHostResignationNotification;
- (void)_stopObservingPlayerItem;
- (void)_stopSettlingEffectPreview:(id)preview;
- (void)_tapToRadarWithComponent:(int64_t)component asset:(id)asset suggestion:(id)suggestion error:(id)error;
- (void)_tapToRadarWithComponent:(int64_t)component error:(id)error;
- (void)_toggleDepth;
- (void)_toggleHeadroom;
- (void)_toggleSettlingEffectEnabled;
- (void)_toggleStyleBackground;
- (void)_transferSubviewsFrom:(id)from to:(id)to;
- (void)_updateContainerFrame;
- (void)_updateContentOverlayContainerView;
- (void)_updateCurrentLayerStackViewModel;
- (void)_updateCurrentStyle;
- (void)_updateCurrentStyleColor:(id)color;
- (void)_updateDebugRectViews;
- (void)_updateDeviceOrientation;
- (void)_updateEditToolbar;
- (void)_updateEditViewModelPropertiesFromPosterConfiguration;
- (void)_updateEditorPreferences;
- (void)_updateHintLabelAnimated:(BOOL)animated;
- (void)_updateLayerStackOrderingForViewModel:(id)model;
- (void)_updateMotionEffectsEnabled;
- (void)_updateOverlayContentConstraints;
- (void)_updatePosterConfigurationForCallServices:(id)services;
- (void)_updatePreferredTitleBounds;
- (void)_updateProgressIndicator:(double)indicator;
- (void)_updateShuffleSuggestionFeaturedStateIfNeededForConfiguration:(id)configuration;
- (void)_updateShuffleView;
- (void)_updateSmartAlbumAvailability;
- (void)_updateSpatialPhotoGyro;
- (void)_updateSpatialPhotoGyroForLayerStackViewModel:(id)model;
- (void)_updateTitleHeightProperties;
- (void)_updateUserTransformIsDisabled;
- (void)_updateUserTransformView;
- (void)_updateVisibleLayerStackViewModels;
- (void)_updateVisibleLayerStackViewsWithPreviouslyVisibleStackViewModels:(id)models;
- (void)dealloc;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress;
- (void)editor:(id)editor didUpdateColors:(id)colors;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareTipPopover:(id)popover tipID:(id)d;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setBackgroundView:(id)view;
- (void)setCurrentLayerStackViewModel:(id)model;
- (void)setCurrentPosterMedia:(id)media;
- (void)setEditViewModel:(id)model;
- (void)setEnvironment:(id)environment;
- (void)setFinalizationState:(unint64_t)state;
- (void)setFloatingView:(id)view;
- (void)setForegroundView:(id)view;
- (void)setHint:(int64_t)hint;
- (void)setIsCancellingMediaLoading:(BOOL)loading;
- (void)setIsLoading:(BOOL)loading;
- (void)setIsUserTransformDisabled:(BOOL)disabled;
- (void)setLoadingSettlingEffect:(BOOL)effect;
- (void)setPosterConfiguration:(id)configuration;
- (void)setShuffleAssetIndex:(int64_t)index;
- (void)setVisibleLayerStackViewModels:(id)models;
- (void)spatialPhotoProducer:(id)producer downloadTask:(id)task didUpdateProgress:(double)progress;
- (void)spatialPhotoProducer:(id)producer downloadTaskDidEnd:(id)end success:(BOOL)success error:(id)error;
- (void)spatialPhotoProducer:(id)producer downloadTaskDidStart:(id)start;
- (void)tipPopoverDidDismissWithTipID:(id)d;
- (void)transitionBetweenStyleWithKind:(id)kind andKind:(id)andKind progress:(double)progress;
- (void)userTransformView:(id)view didChangeIsUserInteracting:(BOOL)interacting;
- (void)userTransformView:(id)view didChangeUserAffineTransform:(CGAffineTransform *)transform isUserInteracting:(BOOL)interacting;
- (void)wallpaperPosterShuffleGridViewController:(id)controller didFinishWithChange:(id)change selectedPosterMedia:(id)media;
- (void)wallpaperShuffleConfigurationViewController:(id)controller didFinishWithPosterConfiguration:(id)configuration;
- (void)wallpaperShuffleConfigurationViewControllerDidCancelManuallySelectingPhotos:(id)photos;
- (void)wallpaperShuffleConfigurationViewControllerDidDismiss:(id)dismiss;
@end

@implementation PUWallpaperPosterEditorController

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transitionCoordinator = [presentedViewController transitionCoordinator];
    if ([transitionCoordinator initiallyInteractive])
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __71__PUWallpaperPosterEditorController_presentationControllerWillDismiss___block_invoke;
      v10 = &unk_1E7B7E238;
      objc_copyWeak(&v11, &location);
      [transitionCoordinator notifyWhenInteractionChangesUsingBlock:&v7];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  observedPlayerItem = [(PUWallpaperPosterEditorController *)self observedPlayerItem];
  v14 = observedPlayerItem;
  if (BackgroundViewObservationContext == context)
  {
    [(PUWallpaperPosterEditorController *)self _updateContainerFrame];
  }

  else if (PlayerItemObservationContext == context)
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
      }

      else if (status == 2)
      {
        v16 = PLWallpaperGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          error = [v14 error];
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = error;
          _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Settling effect preview video failed to load: %@", &buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PUWallpaperPosterEditorController;
    [(PUWallpaperPosterEditorController *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_updatePosterConfigurationForCallServices:(id)services
{
  v39[1] = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  userInfo = [servicesCopy userInfo];
  v6 = [userInfo mutableCopy];
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

  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  assetUUID = [currentPosterMedia assetUUID];

  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  segmentationItem = [editViewModel segmentationItem];
  regions = [segmentationItem regions];

  if (regions)
  {
    v15 = [MEMORY[0x1E69BDF38] dictionaryFromRegions:regions];
    [v9 setObject:v15 forKeyedSubscript:@"regions"];
  }

  else
  {
    [v9 setObject:0 forKeyedSubscript:@"regions"];
  }

  _fetchMePerson = [(PUWallpaperPosterEditorController *)self _fetchMePerson];
  if (_fetchMePerson)
  {
    v33 = servicesCopy;
    v17 = MEMORY[0x1E6978630];
    v39[0] = assetUUID;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v21 = [v17 fetchAssetsWithLocalIdentifiers:v18 options:librarySpecificFetchOptions];
    firstObject = [v21 firstObject];

    if (firstObject)
    {
      v23 = MEMORY[0x1E69C3790];
      v38 = firstObject;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v25 = [v23 facesForPerson:_fetchMePerson inAssets:v24];

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
        v35 = assetUUID;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_ERROR, "Could not find asset for %@, not setting representsDeviceOwner flag", buf, 0xCu);
      }

      v27 = 0;
    }

    servicesCopy = v33;
  }

  else
  {
    v27 = 0;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:v27];
  [v9 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69C0C50]];

  if (assetUUID)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFString hash](assetUUID, "hash")}];
    [v9 setObject:v31 forKeyedSubscript:@"hashedAssetIdentifier"];
  }

  else
  {
    [v9 setObject:0 forKeyedSubscript:@"hashedAssetIdentifier"];
  }

  [v9 setObject:assetUUID forKeyedSubscript:*MEMORY[0x1E69C0C48]];
  v32 = [v9 copy];
  [servicesCopy setUserInfo:v32];
}

- (id)_fetchMePerson
{
  v31 = *MEMORY[0x1E69E9840];
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v26 = 0;
  v4 = [photoLibrary suggestedMePersonIdentifierWithError:&v26];
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
  photoLibrary2 = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v8 = [v6 personWithLocalIdentifier:v4 photoLibrary:photoLibrary2];

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

    fetchMeContact = [MEMORY[0x1E69C3790] fetchMeContact];
    v10 = fetchMeContact;
    if (fetchMeContact)
    {
      v15 = MEMORY[0x1E69C3790];
      identifier = [fetchMeContact identifier];
      photoLibrary3 = [(PUWallpaperPosterEditorController *)self photoLibrary];
      v8 = [v15 personWithPersonUri:identifier photoLibrary:photoLibrary3];

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

- (void)_saveWithCompletionHandler:(id)handler
{
  v112 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(PUWallpaperPosterEditorController *)self setFinalizationState:1];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7B7C428;
  objc_copyWeak(&v109, &location);
  v83 = handlerCopy;
  v108 = v83;
  v84 = _Block_copy(aBlock);
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_targetAssetDirectory = [environment pu_targetAssetDirectory];

  if (pu_targetAssetDirectory)
  {
    v6 = PLWallpaperGetLog();
    signpost = [(PUWallpaperPosterEditorController *)self signpost];
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PUWallpaperPosterEditorController.Saving", "", &buf, 2u);
    }

    v8 = PULocalizedString(@"PHOTOS_WALLPAPER_SAVING_PROGRESS_INDICATOR_TITLE");
    [(PUWallpaperPosterEditorController *)self _showProgressIndicator:v8 determinate:[(PUWallpaperPosterEditorController *)self _isShuffle]];

    currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    LODWORD(v8) = [currentLayerStackViewModel isLoadingSpatialPhoto];

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
      environment2 = [(PUWallpaperPosterEditorController *)self environment];
      px_isBackdrop = [environment2 px_isBackdrop];

      environment3 = [(PUWallpaperPosterEditorController *)self environment];
      px_isCallServices = [environment3 px_isCallServices];

      posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
      v86 = [posterConfiguration copy];

      LODWORD(posterConfiguration) = [(PUWallpaperPosterEditorController *)self wantsLowLuminanceContent];
      deviceSupportsLandscapeConfiguration = [MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration];
      v17 = 5;
      if (!posterConfiguration)
      {
        v17 = 1;
      }

      if (deviceSupportsLandscapeConfiguration)
      {
        v18 = v17 | 0x22;
      }

      else
      {
        v18 = v17;
      }

      environment4 = [(PUWallpaperPosterEditorController *)self environment];
      px_isCallServices2 = [environment4 px_isCallServices];

      v21 = v18 | 2;
      if (!px_isCallServices2)
      {
        v21 = v18;
      }

      if ([(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled])
      {
        _wantsSpatialPhotoBackfill = [(PUWallpaperPosterEditorController *)self _wantsSpatialPhotoBackfill];
        v23 = 256;
        if (_wantsSpatialPhotoBackfill)
        {
          v23 = 1280;
        }

        v79 |= v23;
      }

      if (!(((v79 & 4) == 0) | px_isBackdrop & 1))
      {
        [v86 setOptions:{objc_msgSend(v86, "options") | 4}];
      }

      if (!(px_isBackdrop & 1 | ((PFPosterIsAdaptiveLayoutEnabled() & 1) == 0) | px_isCallServices & 1) && (-[PUWallpaperPosterEditorController _shouldEnableAdaptiveLayout](self, "_shouldEnableAdaptiveLayout") || (-[PUWallpaperPosterEditorController editViewModel](self, "editViewModel"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 userHasAdjustedLayout], v25, v26)))
      {
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      [v86 setAllowedLayoutStrategies:{v24, v79}];
      editor = [(PUWallpaperPosterEditorController *)self editor];
      pu_isDepthEffectDisallowed = [editor pu_isDepthEffectDisallowed];

      environment5 = [(PUWallpaperPosterEditorController *)self environment];
      px_isDepthEffectDisabled = [environment5 px_isDepthEffectDisabled];

      v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUWallpaperPosterEditorController isAnySmartAlbumAvailable](self, "isAnySmartAlbumAvailable")}];
      [v82 setObject:v31 forKeyedSubscript:@"smart_shuffle_available"];

      v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUWallpaperPosterEditorController isInitialSave](self, "isInitialSave")}];
      [v82 setObject:v32 forKeyedSubscript:@"is_initial_save"];

      environment6 = [(PUWallpaperPosterEditorController *)self environment];
      pu_role = [environment6 pu_role];
      [v82 setObject:pu_role forKeyedSubscript:@"configuration_role"];

      v35 = pu_isDepthEffectDisallowed | px_isBackdrop;
      if ([(PUWallpaperPosterEditorController *)self _isShuffle])
      {
        editModel = [(PUWallpaperPosterEditorController *)self editModel];
        [editModel performChanges:&__block_literal_global_950];

        [(PUWallpaperPosterEditorController *)self _savePosterEditConfigurationForCurrentPosterMedia];
        shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
        v37 = objc_alloc_init(MEMORY[0x1E69C07F8]);
        style = [shuffleResourceManager style];
        bakedStyle = [style bakedStyle];
        [v37 setStyle:bakedStyle];

        [v37 setIsDepthAvailable:(v35 & 1) == 0];
        if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
        {
          v40 = [shuffleResourceManager enabledEffects] & ((v35 | px_isDepthEffectDisabled) ^ 1);
          [v37 setIsDepthEnabled:v40 & 1];
          [v37 setIsLandscapeDepthEnabled:v40 & 1];
        }

        if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalSpatialPhoto])
        {
          [v37 setIsSpatialPhotoEnabled:{(objc_msgSend(shuffleResourceManager, "enabledEffects") >> 1) & 1}];
        }

        [v37 setNormalizedVisibleFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
        [v86 setEditConfiguration:v37];
        environment7 = [(PUWallpaperPosterEditorController *)self environment];
        px_significantEventsCounter = [environment7 px_significantEventsCounter];

        media = [v86 media];
        v44 = +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", px_significantEventsCounter, [media count]);

        shuffleAssetIndex = [(PUWallpaperPosterEditorController *)self shuffleAssetIndex];
        media2 = [v86 media];
        v47 = [media2 count];

        if ((shuffleAssetIndex % v47) < v44)
        {
          media3 = [v86 media];
          [media3 count];
        }

        media4 = [v86 media];
        v50 = PXArrayRotate();
        [v86 setMedia:v50];

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        media5 = [v86 media];
        v52 = [media5 countByEnumeratingWithState:&v103 objects:v111 count:16];
        if (v52)
        {
          v53 = *v104;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v104 != v53)
              {
                objc_enumerationMutation(media5);
              }

              v55 = *(*(&v103 + 1) + 8 * i);
              style2 = [v37 style];
              editConfiguration = [v55 editConfiguration];
              [editConfiguration setStyle:style2];

              if (px_isDepthEffectDisabled)
              {
                editConfiguration2 = [v55 editConfiguration];
                [editConfiguration2 setIsDepthEnabled:0];

                editConfiguration3 = [v55 editConfiguration];
                [editConfiguration3 setIsLandscapeDepthEnabled:0];
              }
            }

            v52 = [media5 countByEnumeratingWithState:&v103 objects:v111 count:16];
          }

          while (v52);
        }

        layoutConfiguration = [v86 layoutConfiguration];
        v61 = layoutConfiguration == 0;

        if (v61)
        {
          editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
          layoutConfiguration2 = [editViewModel layoutConfiguration];
          [v86 setLayoutConfiguration:layoutConfiguration2];
        }

        analyticsPayload = [v86 analyticsPayload];
        [v82 addEntriesFromDictionary:analyticsPayload];

        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.wallpaper.editorSaved" withPayload:v82];
        media6 = [v86 media];
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
        v66 = pu_targetAssetDirectory;
        v98 = v66;
        selfCopy = self;
        v100 = v84;
        [shuffleResourceManager exportResourcesForFinalPosterMedia:media6 options:v80 assetDirectory:v66 progressHandler:v101 completion:v96];

        objc_destroyWeak(&v102);
      }

      else
      {
        editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
        shuffleResourceManager = [editViewModel2 posterEditConfigurationRepresentation];
        [shuffleResourceManager setIsDepthAvailable:{objc_msgSend(shuffleResourceManager, "isDepthAvailable") & (v35 ^ 1)}];
        [v86 setEditConfiguration:shuffleResourceManager];
        layoutConfiguration3 = [editViewModel2 layoutConfiguration];
        [v86 setLayoutConfiguration:layoutConfiguration3];

        analyticsPayload2 = [v86 analyticsPayload];
        [v82 addEntriesFromDictionary:analyticsPayload2];

        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.wallpaper.editorSaved" withPayload:v82];
        [v86 setOptions:{objc_msgSend(v86, "options") & 0xFFFFFFFFFFFFFFFDLL}];
        [v86 setOptions:{objc_msgSend(v86, "options") & 0xFFFFFFFFFFFFFFFELL}];
        settlingEffectEnabled = [editViewModel2 settlingEffectEnabled];
        v71 = v80 | 0x40;
        if (!settlingEffectEnabled)
        {
          v71 = v80;
        }

        if (px_isBackdrop)
        {
          v72 = (v71 | 0x200);
        }

        else
        {
          v72 = v71;
        }

        if ([editViewModel2 settlingEffectEnabled])
        {
          v73 = @"PHOTOS_WALLPAPER_SWITCHER_TITLE_LIVE_PHOTO";
        }

        else
        {
          v73 = @"PHOTOS_WALLPAPER_SWITCHER_TITLE_PHOTOS";
        }

        environment8 = [(PUWallpaperPosterEditorController *)self environment];
        pu_targetConfiguration = [environment8 pu_targetConfiguration];
        [pu_targetConfiguration setPu_displayNameLocalizationKey:v73];

        environment9 = [(PUWallpaperPosterEditorController *)self environment];
        LOBYTE(pu_targetConfiguration) = [environment9 px_isCallServices];

        objc_initWeak(&buf, self);
        queue = [(PUWallpaperPosterEditorController *)self queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __64__PUWallpaperPosterEditorController__saveWithCompletionHandler___block_invoke_963;
        block[3] = &unk_1E7B78978;
        v88 = editViewModel2;
        v92 = v84;
        v94 = pu_targetConfiguration;
        v78 = editViewModel2;
        objc_copyWeak(v93, &buf);
        v89 = v86;
        v90 = pu_targetAssetDirectory;
        selfCopy2 = self;
        v93[1] = v24;
        v93[2] = v72;
        dispatch_async(queue, block);

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
  mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
  [mEMORY[0x1E69C4598] scheduleTaskWithQoS:1 block:&__block_literal_global_934];
}

- (void)_resumeSavingAfterLoadingSpatialPhoto
{
  if ([(PUWallpaperPosterEditorController *)self isWaitingForSpatialPhotoToLoadBeforeSaving])
  {
    [(PUWallpaperPosterEditorController *)self setIsWaitingForSpatialPhotoToLoadBeforeSaving:0];
    onSaveCompletionHandler = [(PUWallpaperPosterEditorController *)self onSaveCompletionHandler];
    if (onSaveCompletionHandler)
    {
      v4 = onSaveCompletionHandler;
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

- (void)_handlePosterSaved:(BOOL)saved error:(id)error
{
  savedCopy = saved;
  errorCopy = error;
  if (savedCopy)
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
    editModel = [(PUWallpaperPosterEditorController *)self editModel];
    [editModel performChanges:&__block_literal_global_913];
  }

  if (savedCopy)
  {
    editor = [(PUWallpaperPosterEditorController *)self editor];
    [editor pu_requestDismissalWithAction:1];
  }

  else
  {
    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      [(PUWallpaperPosterEditorController *)self _createShuffleResourceManager];
    }

    _isShuffle = [(PUWallpaperPosterEditorController *)self _isShuffle];
    v11 = &stru_1F2AC6818;
    if (_isShuffle)
    {
      v11 = @"SHUFFLE_";
    }

    v32 = v11;
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTOS_WALLPAPER_EDITOR_SAVING_%@FAILED_TITLE", v32];
    v13 = PULocalizedString(v12);

    v14 = errorCopy;
    v15 = *MEMORY[0x1E696AA08];
    v31 = v14;
    do
    {
      v16 = v14;
      v17 = [PUErrorPresentationController isNetworkRelatedError:v14];
      userInfo = [v14 userInfo];
      v14 = [userInfo objectForKeyedSubscript:v15];
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

    editor2 = [(PUWallpaperPosterEditorController *)self editor];
    [editor2 presentViewController:v24 animated:1 completion:0];
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
    environment = [(PUWallpaperPosterEditorController *)self environment];
    if ([environment px_isCallServices])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      environment2 = [(PUWallpaperPosterEditorController *)self environment];
      v4 = [environment2 px_isBackdrop] ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_presentSpatialPhotoModelDownloadProgress:(double)progress producer:(id)producer downloadTask:(id)task
{
  producerCopy = producer;
  taskCopy = task;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];

  spatialModelDownloadProgressToast = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];

  if (!spatialModelDownloadProgressToast && px_firstKeyWindow)
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
    v23 = producerCopy;
    v24 = taskCopy;
    [v14 setCloseButtonAction:&v19];
    v15 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_SPATIAL_TOAST_SECONDARY_TEXT");
    [v14 setCustomSubtitleText:{v15, v19, v20, v21, v22}];

    [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadProgressToast:v14];
    [v14 willStartProgress];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  spatialModelDownloadProgressToast2 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];
  progress = [spatialModelDownloadProgressToast2 progress];
  [progress setCompletedUnitCount:progress];

  if (progress == 100.0)
  {
    spatialModelDownloadProgressToast3 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];
    [spatialModelDownloadProgressToast3 finishProgressMarkingAsComplete:1];
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

- (void)spatialPhotoProducer:(id)producer downloadTaskDidEnd:(id)end success:(BOOL)success error:(id)error
{
  errorCopy = error;
  endCopy = end;
  spatialModelDownloadTask = [(PUWallpaperPosterEditorController *)self spatialModelDownloadTask];

  if (spatialModelDownloadTask == endCopy)
  {
    spatialModelDownloadProgressToast = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];
    [spatialModelDownloadProgressToast dismissAnimated:1];

    [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadProgressToast:0];
    if (errorCopy)
    {
      if (!success)
      {
        [(PUWallpaperPosterEditorController *)self _presentLoadingError:errorCopy];
      }
    }
  }
}

- (void)spatialPhotoProducer:(id)producer downloadTask:(id)task didUpdateProgress:(double)progress
{
  producerCopy = producer;
  taskCopy = task;
  spatialModelDownloadTask = [(PUWallpaperPosterEditorController *)self spatialModelDownloadTask];

  if (!spatialModelDownloadTask)
  {
    [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadTask:taskCopy];
  }

  spatialModelDownloadTask2 = [(PUWallpaperPosterEditorController *)self spatialModelDownloadTask];

  if (spatialModelDownloadTask2 == taskCopy)
  {
    [(PUWallpaperPosterEditorController *)self _presentSpatialPhotoModelDownloadProgress:producerCopy producer:taskCopy downloadTask:progress];
  }
}

- (void)spatialPhotoProducer:(id)producer downloadTaskDidStart:(id)start
{
  startCopy = start;
  producerCopy = producer;
  [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadTask:startCopy];
  spatialModelDownloadProgressToast = [(PUWallpaperPosterEditorController *)self spatialModelDownloadProgressToast];
  [spatialModelDownloadProgressToast dismissAnimated:0];

  [(PUWallpaperPosterEditorController *)self setSpatialModelDownloadProgressToast:0];
  [(PUWallpaperPosterEditorController *)self _presentSpatialPhotoModelDownloadProgress:producerCopy producer:startCopy downloadTask:0.0];
}

- (id)solidColorHomeScreenColorPickerConfigurationForEditor:(id)editor
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  segmentationItem = [editViewModel segmentationItem];
  colorAnalysis = [segmentationItem colorAnalysis];

  editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
  currentLayerStackViewModel = [editViewModel2 currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];

  v10 = [style defaultDominantColorWithAnalysis:colorAnalysis];
  pu_UIColor = [v10 pu_UIColor];
  v12 = objc_alloc_init(getPREditorColorPickerConfigurationClass());
  [v12 setSelectedColor:pu_UIColor];

  return v12;
}

- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect
{
  lookCopy = look;
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    v7 = *MEMORY[0x1E69C0AD0];
  }

  else
  {
    identifier = [lookCopy identifier];
    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    [editViewModel currentClockAreaLuminanceForStyleKind:identifier];
    v7 = v10;
  }

  return v7;
}

- (id)trailingMenuElementsForEditor:(id)editor
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _colorPickerAction = [(PUWallpaperPosterEditorController *)self _colorPickerAction];
  _toggleHighKeyLowKeyAction = [(PUWallpaperPosterEditorController *)self _toggleHighKeyLowKeyAction];
  _toggleSpatialPhotoEffectAction = [(PUWallpaperPosterEditorController *)self _toggleSpatialPhotoEffectAction];
  environment = [(PUWallpaperPosterEditorController *)self environment];
  px_isBackdrop = [environment px_isBackdrop];

  if ((px_isBackdrop & 1) == 0)
  {
    v10 = _colorPickerAction;
    if (_colorPickerAction || (v10 = _toggleHighKeyLowKeyAction) != 0)
    {
      [v4 addObject:v10];
    }
  }

  if (_toggleSpatialPhotoEffectAction)
  {
    [v4 addObject:_toggleSpatialPhotoEffectAction];
  }

  _actionsMenu = [(PUWallpaperPosterEditorController *)self _actionsMenu];
  if (_actionsMenu)
  {
    [v4 addObject:_actionsMenu];
  }

  return v4;
}

- (id)leadingMenuElementsForEditor:(id)editor
{
  editorCopy = editor;
  if ([(PUWallpaperPosterEditorController *)self _attemptedSettlingEffect])
  {
    loadingSettlingEffect = [(PUWallpaperPosterEditorController *)self loadingSettlingEffect];
  }

  else
  {
    loadingSettlingEffect = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _leadingActionsMenu = [(PUWallpaperPosterEditorController *)self _leadingActionsMenu];
  if (_leadingActionsMenu)
  {
    [v6 addObject:_leadingActionsMenu];
  }

  environment = [(PUWallpaperPosterEditorController *)self environment];
  px_isBackdrop = [environment px_isBackdrop];

  if (px_isBackdrop)
  {
    _colorPickerAction = [(PUWallpaperPosterEditorController *)self _colorPickerAction];
    _toggleHighKeyLowKeyAction = [(PUWallpaperPosterEditorController *)self _toggleHighKeyLowKeyAction];
    if (_colorPickerAction)
    {
      [v6 addObject:_colorPickerAction];
    }

    if (_toggleHighKeyLowKeyAction)
    {
      [v6 addObject:_toggleHighKeyLowKeyAction];
    }
  }

  _toggleSettlingEffectAction = [(PUWallpaperPosterEditorController *)self _toggleSettlingEffectAction];
  v13 = _toggleSettlingEffectAction;
  if (loadingSettlingEffect)
  {
    pu_placeholderAction = [editorCopy pu_placeholderAction];
    [v6 addObject:pu_placeholderAction];
  }

  else if (_toggleSettlingEffectAction)
  {
    [v6 addObject:_toggleSettlingEffectAction];
  }

  return v6;
}

- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress
{
  lookCopy = look;
  pu_currentLook = [editor pu_currentLook];
  identifier = [pu_currentLook identifier];

  identifier2 = [lookCopy identifier];

  [(PUWallpaperPosterEditorController *)self transitionBetweenStyleWithKind:identifier andKind:identifier2 progress:progress];
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  v34 = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  if (editViewModel && [(PUWallpaperPosterEditorController *)self _areStylesAvailable])
  {
    currentEditConfiguration = [(PUWallpaperPosterEditorController *)self currentEditConfiguration];
    currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
    style = [currentLayerStackViewModel style];
    kind = [style kind];
    v10 = kind;
    if (kind)
    {
      kind2 = kind;
    }

    else
    {
      style2 = [currentEditConfiguration style];
      kind2 = [style2 kind];
    }

    if (!kind2)
    {
      v14 = PLWallpaperGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Cannot determine current style from either edit configuration or layer stack, using Original as fallback", buf, 2u);
      }

      kind2 = *MEMORY[0x1E69C0B28];
    }

    currentStyleKinds = [editViewModel currentStyleKinds];
    if ([currentStyleKinds count] && objc_msgSend(currentStyleKinds, "indexOfObject:", kind2) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = PLWallpaperGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = kind2;
        _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Initial look styleKind %@ not found in availableStyles", buf, 0xCu);
      }

      v17 = *MEMORY[0x1E69C0B28];
      kind2 = v17;
    }

    v18 = [(PUWallpaperPosterEditorController *)self looksForEditor:editorCopy];
    v19 = kind2;
    v27 = v19;
    if (PXExists())
    {
      v12 = v19;
    }

    else
    {
      firstObject = [v18 firstObject];
      identifier = [firstObject identifier];
      v22 = identifier;
      v23 = *MEMORY[0x1E69C0B28];
      if (identifier)
      {
        v23 = identifier;
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

- (id)looksForEditor:(id)editor
{
  v20[1] = *MEMORY[0x1E69E9840];
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  currentStyles = [editViewModel currentStyles];
  if (![(PUWallpaperPosterEditorController *)self _areStylesAvailable])
  {
    _isSpatialPhotoEnabled = [(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled];
    v7 = MEMORY[0x1E69C0B28];
    if (_isSpatialPhotoEnabled && ([currentStyles firstObject], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_msgSend(currentStyles, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "kind"), v11 = objc_claimAutoreleasedReturnValue(), v12 = *v7, v11, v10, v9, v11 == v12))
    {
      firstObject = [currentStyles firstObject];
      v20[0] = firstObject;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E69C0788]);
      firstObject = [v13 initWithKind:*v7 parameters:MEMORY[0x1E695E0F8] colorSuggestions:MEMORY[0x1E695E0F0]];
      v15 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:firstObject];
      v19 = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

      currentStyles = v15;
    }

    currentStyles = v16;
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  currentStyles = [editViewModel currentStyles];
  if ([currentStyles count] && (objc_msgSend(editViewModel, "settlingEffectEnabled") & 1) == 0)
  {
    v5 = ![(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_transferSubviewsFrom:(id)from to:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [from subviews];
  v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [toCopy addSubview:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setFloatingView:(id)view
{
  viewCopy = view;
  v4 = self->_floatingView;
  floatingView = v4;
  if (v4 != viewCopy)
  {
    v6 = [(UIView *)v4 isEqual:viewCopy];

    v8 = viewCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PUWallpaperPosterEditorController *)self _transferSubviewsFrom:self->_floatingView to:viewCopy];
    v9 = viewCopy;
    floatingView = self->_floatingView;
    self->_floatingView = v9;
  }

  v8 = viewCopy;
LABEL_5:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setForegroundView:(id)view
{
  viewCopy = view;
  v4 = self->_foregroundView;
  foregroundView = v4;
  if (v4 != viewCopy)
  {
    v6 = [(UIView *)v4 isEqual:viewCopy];

    v8 = viewCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PUWallpaperPosterEditorController *)self _transferSubviewsFrom:self->_foregroundView to:viewCopy];
    v9 = viewCopy;
    foregroundView = self->_foregroundView;
    self->_foregroundView = v9;
  }

  v8 = viewCopy;
LABEL_5:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  v5 = self->_backgroundView;
  v6 = v5;
  if (v5 == viewCopy)
  {
  }

  else
  {
    v7 = [(UIView *)v5 isEqual:viewCopy];

    if ((v7 & 1) == 0)
    {
      [(PUWallpaperPosterEditorController *)self _transferSubviewsFrom:self->_backgroundView to:viewCopy];
      [(UIView *)self->_backgroundView removeObserver:self forKeyPath:@"layer.bounds" context:&BackgroundViewObservationContext];
      objc_storeStrong(&self->_backgroundView, view);
      [(UIView *)self->_backgroundView addObserver:self forKeyPath:@"layer.bounds" options:0 context:&BackgroundViewObservationContext];
    }
  }
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  viewsCopy = views;
  backgroundView = [(PUWallpaperPosterEditorController *)self backgroundView];

  backgroundView2 = [viewsCopy backgroundView];
  [(PUWallpaperPosterEditorController *)self setBackgroundView:backgroundView2];

  foregroundView = [viewsCopy foregroundView];
  [(PUWallpaperPosterEditorController *)self setForegroundView:foregroundView];

  floatingView = [viewsCopy floatingView];

  [(PUWallpaperPosterEditorController *)self setFloatingView:floatingView];
  [(PUWallpaperPosterEditorController *)self _updateContainerFrame];
  if (![(PUWallpaperPosterEditorController *)self isPreviewingSettlingEffect]|| !backgroundView)
  {
    [(PUWallpaperPosterEditorController *)self _updateVisibleLayerStackViewsWithPreviouslyVisibleStackViewModels:MEMORY[0x1E695E0F0]];
  }

  if (PXPreferencesGetBool())
  {
    floatingView2 = [(PUWallpaperPosterEditorController *)self floatingView];
    currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    viewManager = [currentLayerStackViewModel viewManager];
    debugRectsView = [viewManager debugRectsView];
    [floatingView2 addSubview:debugRectsView];
  }

  else
  {
    floatingView2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    currentLayerStackViewModel = [floatingView2 viewManager];
    viewManager = [currentLayerStackViewModel debugRectsViewIfLoaded];
    [viewManager removeFromSuperview];
  }
}

- (void)_updateDebugRectViews
{
  Bool = PXPreferencesGetBool();
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  viewManager = [currentLayerStackViewModel viewManager];
  redColor = viewManager;
  if (Bool)
  {
    debugRectsView = [viewManager debugRectsView];

    editor = [(PUWallpaperPosterEditorController *)self editor];
    pu_preferences = [editor pu_preferences];
    [pu_preferences pu_preferredSalientContentRectangle];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    [debugRectsView setDebugRect:@"preferred" forIdentifier:greenColor color:v10 borderWidth:{v12, v14, v16, 4.0}];

    editor2 = [(PUWallpaperPosterEditorController *)self editor];
    pu_environment = [editor2 pu_environment];
    PUAdjustedSalientContentRectangleFromEnvironment(pu_environment);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    redColor = [MEMORY[0x1E69DC888] redColor];
    [debugRectsView setDebugRect:@"current" forIdentifier:redColor color:v21 borderWidth:{v23, v25, v27, 3.0}];
    currentLayerStackViewModel = debugRectsView;
  }

  else
  {
    debugRectsViewIfLoaded = [viewManager debugRectsViewIfLoaded];
    [debugRectsViewIfLoaded removeAllDebugRects];
  }
}

- (void)setEnvironment:(id)environment
{
  environmentCopy = environment;
  v6 = self->_environment;
  objc_storeStrong(&self->_environment, environment);
  if (self->_environment)
  {
    pu_deviceOrientation = [(PUPosterEditingEnvironment *)v6 pu_deviceOrientation];
    if (pu_deviceOrientation != [environmentCopy pu_deviceOrientation])
    {
      [(PUWallpaperPosterEditorController *)self _savePosterEditConfigurationForCurrentPosterMediaWithEnvironment:v6];
      [(PUWallpaperPosterEditorController *)self _updateTitleHeightProperties];
    }

    [(PUWallpaperPosterEditorController *)self _updateDeviceOrientation];
    [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyro];
    [(PUWallpaperPosterEditorController *)self _updateOverlayContentConstraints];
    [(PUWallpaperPosterEditorController *)self _updatePreferredTitleBounds];
    if ([environmentCopy px_isCallServices])
    {
      standardAlphabeticTextParameters = [MEMORY[0x1E69C07A0] standardAlphabeticTextParameters];
      [MEMORY[0x1E69C07A0] setSystemParameters:standardAlphabeticTextParameters];
    }

    px_isDepthEffectDisabled = [(PUPosterEditingEnvironment *)v6 px_isDepthEffectDisabled];
    if (px_isDepthEffectDisabled != [environmentCopy px_isDepthEffectDisabled])
    {
      editModel = [(PUWallpaperPosterEditorController *)self editModel];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__PUWallpaperPosterEditorController_setEnvironment___block_invoke;
      v13[3] = &unk_1E7B78890;
      v11 = environmentCopy;
      v14 = v11;
      [editModel performChanges:v13];

      if ([v11 px_isDepthEffectDisabled])
      {
        editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
        [editViewModel performChanges:&__block_literal_global_893];

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

- (BOOL)editorShouldBeginFinalization:(id)finalization
{
  finalizationCopy = finalization;
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  if ([currentLayerStackViewModel isLoadingSpatialPhoto])
  {
    progressIndicator = [(PUWallpaperPosterEditorController *)self progressIndicator];

    if (progressIndicator)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  finalizationState = [(PUWallpaperPosterEditorController *)self finalizationState];
  if (!finalizationState)
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

  v7 = finalizationState == 2;
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

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  environmentCopy = environment;
  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_INFO, "editor update", v8, 2u);
  }

  [(PUWallpaperPosterEditorController *)self setEnvironment:environmentCopy];
}

- (void)editorDidInvalidate:(id)invalidate
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  [editViewModel shutdownWithTimeout:10.0];

  segmentationLoading = [(PUWallpaperPosterEditorController *)self segmentationLoading];
  [segmentationLoading cancel];

  layerStackRequest = [(PUWallpaperPosterEditorController *)self layerStackRequest];
  renderContext = [layerStackRequest renderContext];
  [renderContext cancelAllRequests];

  settlingEffectRequest = [(PUWallpaperPosterEditorController *)self settlingEffectRequest];
  renderContext2 = [settlingEffectRequest renderContext];
  [renderContext2 cancelAllRequests];

  segmentationLoadingGroup = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
  v17 = dispatch_time(0, 10000000000);
  v18 = dispatch_group_wait(segmentationLoadingGroup, v17);

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
    shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    [shuffleResourceManager stopPreloadingResources];

    [(PUWallpaperPosterEditorController *)self setShuffleResourceManager:0];
  }

  _isShuffle = [(PUWallpaperPosterEditorController *)self _isShuffle];
  isLoading = [(PUWallpaperPosterEditorController *)self isLoading];
  v23 = [(PUWallpaperPosterEditorController *)self finalizationState]== 1;
  editModel = [(PUWallpaperPosterEditorController *)self editModel];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __57__PUWallpaperPosterEditorController_editorDidInvalidate___block_invoke;
  v31[3] = &__block_descriptor_35_e45_v16__0___PUWallpaperPosterMutableEditModel__8l;
  v32 = _isShuffle;
  v33 = v23;
  v34 = isLoading;
  [editModel performChanges:v31];

  [(PUWallpaperPosterEditorController *)self setPosterConfiguration:0];
  [(PUWallpaperPosterEditorController *)self setEnvironment:0];
  [(PUWallpaperPosterEditorController *)self setPhotoPickerViewController:0];
  [(PUWallpaperPosterEditorController *)self setEditModel:0];
  editor = [(PUWallpaperPosterEditorController *)self editor];
  [editor dismissViewControllerAnimated:0 completion:0];

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

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  v37[2] = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  environmentCopy = environment;
  v8 = PLWallpaperGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "editor initialize", buf, 2u);
  }

  [MEMORY[0x1E69C3CA0] startObservingTips];
  [MEMORY[0x1E69BDF28] ensureResources];
  editor = [(PUWallpaperPosterEditorController *)self editor];
  [editor pu_updatePreferences:&__block_literal_global_880];

  v10 = [[PUWallpaperPosterEditModel alloc] initWithEditor:editorCopy];
  [(PUWallpaperPosterEditorController *)self setEditModel:v10];

  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
  v35 = editorCopy;
  contentOverlayView = [editorCopy contentOverlayView];
  [contentOverlayView addSubview:v16];

  [(PUWallpaperPosterEditorController *)self setContentOverlayContainerView:v16];
  v18 = [[_TtC15PhotosUIPrivate19PUPosterLoadingView alloc] initWithFrame:v12, v13, v14, v15];
  [v16 addSubview:v18];
  [(PUWallpaperPosterEditorController *)self setLoadingView:v18];
  bottomAnchor = [v16 bottomAnchor];
  bottomAnchor2 = [(PUPosterLoadingView *)v18 bottomAnchor];
  [(PUWallpaperPosterEditorController *)self _hintLabelBottomAnchorDistance];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
  [(PUWallpaperPosterEditorController *)self setLoadingViewBottomConstraint:v21];

  v22 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(PUPosterLoadingView *)v18 centerXAnchor];
  centerXAnchor2 = [v16 centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v37[0] = v25;
  loadingViewBottomConstraint = [(PUWallpaperPosterEditorController *)self loadingViewBottomConstraint];
  v37[1] = loadingViewBottomConstraint;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [v22 activateConstraints:v27];

  [(PUWallpaperPosterEditorController *)self _setupUserTransformView];
  [(PUWallpaperPosterEditorController *)self setEnvironment:environmentCopy];
  pu_posterDescriptor = [environmentCopy pu_posterDescriptor];

  if (pu_posterDescriptor)
  {
    [(PUWallpaperPosterEditorController *)self setIsInitialSave:1];
    [(PUWallpaperPosterEditorController *)self _loadPosterDescriptor];
  }

  else
  {
    pu_sourcePosterConfiguration = [environmentCopy pu_sourcePosterConfiguration];

    if (pu_sourcePosterConfiguration)
    {
      pu_sourcePosterConfiguration2 = [environmentCopy pu_sourcePosterConfiguration];
      if ([pu_sourcePosterConfiguration2 options])
      {
        px_isCallServices = [environmentCopy px_isCallServices];

        if ((px_isCallServices & 1) == 0)
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
      editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];

      if (!editViewModel)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:4436 description:@"asset not found"];

        abort();
      }

      [(PUWallpaperPosterEditorController *)self _loadEditViewModelAndUpdateLooks:1];
    }
  }
}

- (void)transitionBetweenStyleWithKind:(id)kind andKind:(id)andKind progress:(double)progress
{
  kindCopy = kind;
  andKindCopy = andKind;
  v10 = [kindCopy isEqualToString:andKindCopy];
  if (v10)
  {
    v11 = andKindCopy;
  }

  else
  {
    v11 = kindCopy;
  }

  if (v10)
  {
    progress = 0.0;
    v12 = *MEMORY[0x1E69C0B38];
  }

  else
  {
    v12 = andKindCopy;
  }

  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__PUWallpaperPosterEditorController_transitionBetweenStyleWithKind_andKind_progress___block_invoke;
  v14[3] = &__block_descriptor_56_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8lu32l8u48l8;
  v14[4] = v11;
  *&v14[5] = progress;
  v14[6] = v12;
  [editViewModel performChanges:v14];
}

uint64_t __85__PUWallpaperPosterEditorController_transitionBetweenStyleWithKind_andKind_progress___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 scrollToPosition:&v3];
}

- (void)_tapToRadarWithComponent:(int64_t)component asset:(id)asset suggestion:(id)suggestion error:(id)error
{
  errorCopy = error;
  v26 = component != 8;
  suggestionCopy = suggestion;
  assetCopy = asset;
  [(PUWallpaperPosterEditorController *)self _showProgressIndicator:@"Preparing Attachments…" determinate:0];
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
  compoundLayerStack = [currentLayerStackViewModel compoundLayerStack];

  v27 = editViewModel;
  segmentationItem = [editViewModel segmentationItem];
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_posterDescriptor = [environment pu_posterDescriptor];
  environment2 = [(PUWallpaperPosterEditorController *)self environment];
  pu_sourcePosterConfiguration = [environment2 pu_sourcePosterConfiguration];
  componentCopy = component;
  v29 = compoundLayerStack;
  v20 = compoundLayerStack;
  v21 = segmentationItem;
  v22 = [PUWallpaperRadarAttachmentProvider radarConfigurationForAsset:assetCopy suggestion:suggestionCopy compoundLayerStack:v20 segmentationItem:segmentationItem posterDescriptor:pu_posterDescriptor posterConfiguration:pu_sourcePosterConfiguration component:componentCopy completionHandler:0];

  [v22 setWantsSystemDiagnostics:v26];
  [v22 setWantsPhotosDiagnostics:v26];
  if (errorCopy)
  {
    errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encountered with this wallpaper:\n%@", errorCopy];
    [v22 setDescription:errorCopy];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __85__PUWallpaperPosterEditorController__tapToRadarWithComponent_asset_suggestion_error___block_invoke;
  v30[3] = &unk_1E7B80280;
  v30[4] = self;
  [v22 setCompletionHandler:v30];
  PXFileRadarWithConfiguration();
}

- (void)_tapToRadarWithComponent:(int64_t)component error:(id)error
{
  v77[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  assetUUID = [currentPosterMedia assetUUID];

  if (assetUUID)
  {
    v10 = MEMORY[0x1E6978630];
    v77[0] = assetUUID;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v13 = [v10 fetchAssetsWithUUIDs:v11 options:librarySpecificFetchOptions];
    firstObject = [v13 firstObject];

    currentPosterMedia2 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
    objc_opt_class();
    LOBYTE(librarySpecificFetchOptions) = objc_opt_isKindOfClass();

    if (librarySpecificFetchOptions)
    {
      currentPosterMedia3 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
      suggestionUUID = [currentPosterMedia3 suggestionUUID];
      librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions2 setFetchLimit:1];
      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", suggestionUUID];
      [librarySpecificFetchOptions2 setPredicate:v18];

      [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:librarySpecificFetchOptions2];
      selfCopy = self;
      componentCopy = component;
      v21 = firstObject;
      v22 = assetUUID;
      v23 = photoLibrary;
      v25 = v24 = errorCopy;
      firstObject2 = [v25 firstObject];

      errorCopy = v24;
      photoLibrary = v23;
      assetUUID = v22;
      firstObject = v21;
      component = componentCopy;
      self = selfCopy;
    }

    else
    {
      firstObject2 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PUWallpaperPosterEditorController__tapToRadarWithComponent_error___block_invoke;
    aBlock[3] = &unk_1E7B78828;
    aBlock[4] = self;
    v27 = firstObject;
    v74 = v27;
    v28 = firstObject2;
    v75 = v28;
    v29 = errorCopy;
    v76 = v29;
    v30 = _Block_copy(aBlock);
    if (component)
    {
      [(PUWallpaperPosterEditorController *)self _tapToRadarWithComponent:component asset:v27 suggestion:v28 error:v29];
    }

    else
    {
      v57 = errorCopy;
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

      editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
      spatialPhotoEnabled = [editViewModel spatialPhotoEnabled];

      if (spatialPhotoEnabled)
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

      editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
      settlingEffectEnabled = [editViewModel2 settlingEffectEnabled];

      if (settlingEffectEnabled)
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

      editor = [(PUWallpaperPosterEditorController *)self editor];
      [editor presentViewController:v31 animated:1 completion:0];

      v30 = v55;
      errorCopy = v57;
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

- (void)tipPopoverDidDismissWithTipID:(id)d
{
  tipContainerViewController = [(PUWallpaperPosterEditorController *)self tipContainerViewController];
  view = [tipContainerViewController view];
  [view removeFromSuperview];
}

- (void)prepareTipPopover:(id)popover tipID:(id)d
{
  v17[1] = *MEMORY[0x1E69E9840];
  popoverCopy = popover;
  dCopy = d;
  contentOverlayContainerView = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  tipContainerViewController = [(PUWallpaperPosterEditorController *)self tipContainerViewController];
  view = [tipContainerViewController view];

  [contentOverlayContainerView bounds];
  [view setFrame:?];
  [contentOverlayContainerView addSubview:view];
  [popoverCopy setSourceView:view];
  spatialPhotoDisabledLowPowerModeTipIdentifier = [MEMORY[0x1E69C3CA0] spatialPhotoDisabledLowPowerModeTipIdentifier];
  v12 = [dCopy isEqualToString:spatialPhotoDisabledLowPowerModeTipIdentifier];

  editor = [(PUWallpaperPosterEditorController *)self editor];
  v14 = editor;
  if (v12)
  {
    v15 = [editor pu_viewForMenuElementIdentifier:@"PUPosterEditorActionIdentifierSpatialPhoto"];

    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v15 = [editor pu_viewForMenuElementIdentifier:@"PUPosterEditorActionIdentifierSettlingEffect"];

  if (v15)
  {
    v17[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [popoverCopy setPassthroughViews:v16];

LABEL_6:
    [v15 frame];
    [popoverCopy setSourceRect:?];
  }

LABEL_7:
}

- (id)sourceItemForTipID:(id)d
{
  tipContainerViewController = [(PUWallpaperPosterEditorController *)self tipContainerViewController];
  view = [tipContainerViewController view];

  return view;
}

- (id)presentationControllerForTipID:(id)d
{
  tipContainerViewController = self->_tipContainerViewController;
  if (!tipContainerViewController)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v6 = self->_tipContainerViewController;
    self->_tipContainerViewController = v5;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    view = [(UIViewController *)self->_tipContainerViewController view];
    [view setBackgroundColor:clearColor];

    view2 = [(UIViewController *)self->_tipContainerViewController view];
    [view2 setAutoresizingMask:45];

    tipContainerViewController = self->_tipContainerViewController;
  }

  return tipContainerViewController;
}

- (void)_presentSettlingEffectDebugView:(id)view
{
  viewCopy = view;
  if (PFOSVariantHasInternalUI())
  {
    environment = [(PUWallpaperPosterEditorController *)self environment];
    px_isCallServices = [environment px_isCallServices];

    if ((px_isCallServices & 1) == 0)
    {
      contentOverlayContainerView = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
      if (contentOverlayContainerView)
      {
        v8 = [[PUWallpaperSettlingEffectDebugView alloc] initWithSegmentationItem:viewCopy];
        objc_initWeak(&location, self);
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __69__PUWallpaperPosterEditorController__presentSettlingEffectDebugView___block_invoke;
        v12 = &unk_1E7B80638;
        objc_copyWeak(&v13, &location);
        [(PUWallpaperSettlingEffectDebugView *)v8 setOnFileRadar:&v9];
        [contentOverlayContainerView addSubview:{v8, v9, v10, v11, v12}];
        [contentOverlayContainerView bounds];
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

- (void)setLoadingSettlingEffect:(BOOL)effect
{
  if (self->_loadingSettlingEffect != effect)
  {
    self->_loadingSettlingEffect = effect;
    [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
  }
}

- (void)_animateScrollToStyleKindAnimatorUpdated
{
  animateScrollToStyleKindStartingKind = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindStartingKind];
  animateScrollToStyleKindAnimator = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindAnimator];
  [animateScrollToStyleKindAnimator presentationValue];
  v6 = v5;

  animateScrollToStyleKindEndingKind = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindEndingKind];
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PUWallpaperPosterEditorController__animateScrollToStyleKindAnimatorUpdated__block_invoke;
  v10[3] = &__block_descriptor_56_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8lu32l8u48l8;
  v10[4] = animateScrollToStyleKindStartingKind;
  *&v10[5] = v6;
  v10[6] = animateScrollToStyleKindEndingKind;
  [editViewModel performChanges:v10];

  if (v6 == 1.0)
  {
    animateScrollToStyleKindCompletion = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindCompletion];
    animateScrollToStyleKindCompletion[2]();
  }
}

uint64_t __77__PUWallpaperPosterEditorController__animateScrollToStyleKindAnimatorUpdated__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 scrollToPosition:&v3];
}

- (void)_animateScrollToStyleKind:(id)kind completion:(id)completion
{
  completionCopy = completion;
  kindCopy = kind;
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];
  kind = [style kind];
  [(PUWallpaperPosterEditorController *)self setAnimateScrollToStyleKindStartingKind:kind];

  [(PUWallpaperPosterEditorController *)self setAnimateScrollToStyleKindEndingKind:kindCopy];
  [(PUWallpaperPosterEditorController *)self setAnimateScrollToStyleKindCompletion:completionCopy];

  animateScrollToStyleKindAnimator = [(PUWallpaperPosterEditorController *)self animateScrollToStyleKindAnimator];
  if (!animateScrollToStyleKindAnimator)
  {
    v12 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:0.0];
    [v12 registerChangeObserver:self context:"AnimateScrollToStyleKindAnimatorObservationContext"];
    [v12 setLabel:@"AnimateScrollToStyleKindAnimator"];
    [v12 setHighFrameRateReason:2228225];
    [(PUWallpaperPosterEditorController *)self setAnimateScrollToStyleKindAnimator:v12];
    animateScrollToStyleKindAnimator = v12;
  }

  v13 = animateScrollToStyleKindAnimator;
  [animateScrollToStyleKindAnimator performChangesWithoutAnimation:&__block_literal_global_837];
  [v13 performChangesWithDuration:4 curve:&__block_literal_global_839 changes:0.3];
}

- (void)_enableSettlingEffect
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  objc_initWeak(&location, self);
  if (([editViewModel settlingEffectEnabled] & 1) == 0)
  {
    editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
    originalLayerStackViewModel = [editViewModel2 originalLayerStackViewModel];
    canEnableSettlingEffect = [originalLayerStackViewModel canEnableSettlingEffect];

    if (canEnableSettlingEffect)
    {
      if (![(PUWallpaperPosterEditorController *)self settlingEffectToggleInProgress])
      {
        [(PUWallpaperPosterEditorController *)self setSettlingEffectToggleInProgress:1];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke;
        aBlock[3] = &unk_1E7B80610;
        v8 = editViewModel;
        v20 = v8;
        objc_copyWeak(&v21, &location);
        v9 = _Block_copy(aBlock);
        style = [currentLayerStackViewModel style];
        kind = [style kind];

        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __58__PUWallpaperPosterEditorController__enableSettlingEffect__block_invoke_6;
        v17 = &unk_1E7B78288;
        v12 = kind;
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  objc_initWeak(&location, self);
  if (([editViewModel settlingEffectEnabled] & 1) != 0 && !-[PUWallpaperPosterEditorController settlingEffectToggleInProgress](self, "settlingEffectToggleInProgress"))
  {
    [(PUWallpaperPosterEditorController *)self setSettlingEffectToggleInProgress:1];
    [editViewModel performChanges:&__block_literal_global_827];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __59__PUWallpaperPosterEditorController__disableSettlingEffect__block_invoke_2;
    v4[3] = &unk_1E7B80610;
    objc_copyWeak(&v6, &location);
    v5 = editViewModel;
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  if (!-[PUWallpaperPosterEditorController loadingSettlingEffect](self, "loadingSettlingEffect") && ([editViewModel settlingEffectEnabled] & 1) == 0)
  {
    originalLayerStackViewModel = [editViewModel originalLayerStackViewModel];
    if ([originalLayerStackViewModel canEnableSettlingEffect])
    {
      segmentationItem = [editViewModel segmentationItem];
      settlingEffectHasInterestingMotion = [segmentationItem settlingEffectHasInterestingMotion];

      if (settlingEffectHasInterestingMotion)
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

    if ([editViewModel settlingEffectEnabled])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    originalLayerStackViewModel2 = [editViewModel originalLayerStackViewModel];
    if ([originalLayerStackViewModel2 canEnableSettlingEffect])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    segmentationItem2 = [editViewModel segmentationItem];
    v14 = 138413058;
    if ([segmentationItem2 settlingEffectHasInterestingMotion])
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  if (-[PUWallpaperPosterEditorController loadingSettlingEffect](self, "loadingSettlingEffect") || ([editViewModel settlingEffectEnabled] & 1) != 0 || (objc_msgSend(editViewModel, "originalLayerStackViewModel"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "canEnableSettlingEffect"), v4, v5))
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

      if ([editViewModel settlingEffectEnabled])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      originalLayerStackViewModel = [editViewModel originalLayerStackViewModel];
      v11 = 138412802;
      if ([originalLayerStackViewModel canEnableSettlingEffect])
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  settlingEffectEnabled = [editViewModel settlingEffectEnabled];

  if (settlingEffectEnabled)
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

  environment = [(PUWallpaperPosterEditorController *)self environment];
  if ([environment px_isCallServices])
  {

LABEL_11:
    LOBYTE(v11) = 0;
    return v11;
  }

  environment2 = [(PUWallpaperPosterEditorController *)self environment];
  px_isBackdrop = [environment2 px_isBackdrop];

  if ((px_isBackdrop & 1) != 0 || !PFPosterEnableSettlingEffect() || ![MEMORY[0x1E69BDF40] currentDeviceSupportsSettlingEffect])
  {
    goto LABEL_11;
  }

  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  if (photoLibrary)
  {
    currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
    assetUUID = [currentPosterMedia assetUUID];

    if (assetUUID)
    {
      currentPosterMediaIsLivePhoto = [(PUWallpaperPosterEditorController *)self currentPosterMediaIsLivePhoto];

      if (currentPosterMediaIsLivePhoto)
      {
        currentPosterMediaIsLivePhoto2 = [(PUWallpaperPosterEditorController *)self currentPosterMediaIsLivePhoto];
        LOBYTE(v11) = [currentPosterMediaIsLivePhoto2 BOOLValue];
      }

      else
      {
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
        [librarySpecificFetchOptions setIncludeGuestAssets:1];
        v14 = MEMORY[0x1E6978630];
        v19[0] = assetUUID;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v16 = [v14 fetchAssetsWithUUIDs:v15 options:librarySpecificFetchOptions];
        firstObject = [v16 firstObject];

        v11 = ([firstObject mediaSubtypes] >> 3) & 1;
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
  observedPlayerItem = [(PUWallpaperPosterEditorController *)self observedPlayerItem];
  if (observedPlayerItem)
  {
    v5 = observedPlayerItem;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6987A10] object:v5];

    [v5 removeObserver:self forKeyPath:@"status" context:&PlayerItemObservationContext];
    [(PUWallpaperPosterEditorController *)self setObservedPlayerItem:0];
    observedPlayerItem = v5;
  }
}

- (void)_observeCurrentPlayerItem
{
  observedPlayerItem = [(PUWallpaperPosterEditorController *)self observedPlayerItem];
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  viewManager = [currentLayerStackViewModel viewManager];
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

      [observedPlayerItem removeObserver:self forKeyPath:@"status" context:&PlayerItemObservationContext];
    }

    if (currentItem)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__playerItemDidFinish_ name:*v8 object:currentItem];

      [currentItem addObserver:self forKeyPath:@"status" options:0 context:&PlayerItemObservationContext];
    }

    [(PUWallpaperPosterEditorController *)self setObservedPlayerItem:currentItem];
  }
}

- (void)_playerItemDidFinish:(id)finish
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  if (UIAccessibilityIsReduceMotionEnabled() && (([editViewModel settlingEffectEnabled] & 1) != 0 || -[PUWallpaperPosterEditorController _isSpatialPhotoEnabled](self, "_isSpatialPhotoEnabled")))
  {
    [editViewModel performChanges:&__block_literal_global_819];
  }
}

void __64__PUWallpaperPosterEditorController__updateMotionEffectsEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSettlingEffectEnabled:0];
  [v2 setSpatialPhotoEnabled:0];
}

- (void)_stopSettlingEffectPreview:(id)preview
{
  previewCopy = preview;
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  viewManager = [currentLayerStackViewModel viewManager];
  currentLayerStack = [currentLayerStackViewModel currentLayerStack];
  foregroundLayer = [currentLayerStack foregroundLayer];
  v9 = [viewManager viewForLayer:foregroundLayer];

  videoLayerView = [viewManager videoLayerView];
  player = [videoLayerView player];
  if ([(PUWallpaperPosterEditorController *)self isPreviewingSettlingEffect])
  {
    [(PUWallpaperPosterEditorController *)self setPreviewingSettlingEffect:0];
    settlingEffectPreviewDelayTimer = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewDelayTimer];
    [settlingEffectPreviewDelayTimer invalidate];

    [player pause];
    settlingEffectPreviewAnimator = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewAnimator];
    [settlingEffectPreviewAnimator stopAnimation:1];

    v14 = objc_alloc(MEMORY[0x1E69DD278]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64__PUWallpaperPosterEditorController__stopSettlingEffectPreview___block_invoke;
    v25[3] = &unk_1E7B80C38;
    v26 = v9;
    v15 = videoLayerView;
    v27 = v15;
    v16 = [v14 initWithDuration:0 curve:v25 animations:0.5];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __64__PUWallpaperPosterEditorController__stopSettlingEffectPreview___block_invoke_2;
    v20 = &unk_1E7B78798;
    v21 = player;
    v22 = v15;
    selfCopy = self;
    v24 = previewCopy;
    [v16 addCompletion:&v17];
    [v16 startAnimation];
    [(PUWallpaperPosterEditorController *)self setSettlingEffectPreviewAnimator:v16];
  }

  else if (previewCopy)
  {
    previewCopy[2](previewCopy);
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
  backgroundView = [(PUWallpaperPosterEditorController *)self backgroundView];
  if (backgroundView)
  {
    currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    viewManager = [currentLayerStackViewModel viewManager];
    currentLayerStack = [currentLayerStackViewModel currentLayerStack];
    if (![currentLayerStack settlingEffectEnabled])
    {
LABEL_10:

      goto LABEL_11;
    }

    foregroundLayer = [currentLayerStack foregroundLayer];
    v8 = [viewManager viewForLayer:foregroundLayer];

    videoLayerView = [viewManager videoLayerView];
    if (videoLayerView)
    {
      if ([(PUWallpaperPosterEditorController *)self isPreviewingSettlingEffect])
      {
LABEL_9:

        goto LABEL_10;
      }

      [(PUWallpaperPosterEditorController *)self setPreviewingSettlingEffect:1];
      settlingEffectPreviewDelayTimer = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewDelayTimer];
      [settlingEffectPreviewDelayTimer invalidate];

      [videoLayerView setAlpha:0.0];
      [backgroundView addSubview:videoLayerView];
      settlingEffectPreviewAnimator = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewAnimator];
      [settlingEffectPreviewAnimator stopAnimation:1];

      v12 = objc_alloc(MEMORY[0x1E69DD278]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64__PUWallpaperPosterEditorController__startSettlingEffectPreview__block_invoke;
      v19[3] = &unk_1E7B80C38;
      v20 = v8;
      v13 = videoLayerView;
      v21 = v13;
      v14 = [v12 initWithDuration:0 curve:v19 animations:0.5];
      [v14 startAnimation];
      [(PUWallpaperPosterEditorController *)self setSettlingEffectPreviewAnimator:v14];
      [(PUWallpaperPosterEditorController *)self _observeCurrentPlayerItem];
      player = [v13 player];
      v17 = *MEMORY[0x1E6960CC0];
      v18 = *(MEMORY[0x1E6960CC0] + 16);
      [player seekToTime:&v17];
      [player play];

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
  settlingEffectPreviewDelayTimer = [(PUWallpaperPosterEditorController *)self settlingEffectPreviewDelayTimer];
  isValid = [settlingEffectPreviewDelayTimer isValid];

  if ((isValid & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__startSettlingEffectPreview selector:0 userInfo:0 repeats:0.2];
    [(PUWallpaperPosterEditorController *)self setSettlingEffectPreviewDelayTimer:v5];
  }
}

- (void)_toggleStyleBackground
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];

  if ([style hasBackgroundParameter])
  {
    showsBackground = [style showsBackground];
    v6 = MEMORY[0x1E69BDEE0];
    bakedStyle = [style bakedStyle];
    v8 = [v6 styleWithBakedStyle:bakedStyle];

    [v8 setShowsBackground:showsBackground ^ 1u];
    currentLayerStackViewModel2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__PUWallpaperPosterEditorController__toggleStyleBackground__block_invoke;
    v11[3] = &unk_1E7B80328;
    v12 = v8;
    v10 = v8;
    [currentLayerStackViewModel2 performChanges:v11];

    [(PUWallpaperPosterEditorController *)self _renderAfterStyleChange];
  }
}

- (BOOL)_currentStyleShowsBackground
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];

  if ([style hasBackgroundParameter])
  {
    showsBackground = [style showsBackground];
  }

  else
  {
    showsBackground = 1;
  }

  return showsBackground;
}

- (BOOL)_currentStyleSupportsToggleBackground
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  segmentationItem = [editViewModel segmentationItem];
  supportsBackgroundlessStyles = [segmentationItem supportsBackgroundlessStyles];

  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];
  LOBYTE(segmentationItem) = [style hasBackgroundParameter];

  return supportsBackgroundlessStyles & segmentationItem;
}

- (void)_showPhotoInLibrary
{
  v18[2] = *MEMORY[0x1E69E9840];
  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  assetUUID = [currentPosterMedia assetUUID];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://contentmode?id=photos&assetuuid=%@&oneUp=1", assetUUID];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = *MEMORY[0x1E699F970];
  v17[0] = *MEMORY[0x1E699F990];
  v17[1] = v7;
  v18[0] = MEMORY[0x1E695E118];
  v18[1] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = 0;
  v9 = [defaultWorkspace openSensitiveURL:v5 withOptions:v8 error:&v12];
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    _isManualShuffle = [(PUWallpaperPosterEditorController *)self _isManualShuffle];
  }

  else
  {
    _isManualShuffle = 1;
  }

  v5 = 0;
  if ([editViewModel canApplyHeadroom] && _isManualShuffle)
  {
    environment = [(PUWallpaperPosterEditorController *)self environment];
    if ([environment px_isCallServices])
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

    [v5 setState:{objc_msgSend(editViewModel, "isUsingHeadroom", v12, v13, v14, v15)}];
    if (([editViewModel isUsingHeadroom] & 1) == 0 && (objc_msgSend(editViewModel, "headroomLayoutUsesHeadroomArea") & 1) == 0 && (!-[PUWallpaperPosterEditorController _isSpatialPhotoEnabled](self, "_isSpatialPhotoEnabled") || (objc_msgSend(editViewModel, "headroomLayoutCanApplyHeadroom") & 1) == 0))
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
    _shuffleFrequencyMenu = [(PUWallpaperPosterEditorController *)self _shuffleFrequencyMenu];
    [v3 addObject:_shuffleFrequencyMenu];
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

      editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
      currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
      Bool = PXPreferencesGetBool();
      v26 = MEMORY[0x1E69DC628];
      v27 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:@"gauge.with.dots.needle.100percent"];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_6;
      v58[3] = &unk_1E7B78770;
      v61 = Bool;
      objc_copyWeak(&v60, location);
      v28 = currentLayerStackViewModel;
      v59 = v28;
      v29 = [v26 actionWithTitle:@"Toggle Debug HUD" image:v27 identifier:0 handler:v58];
      [v16 addObject:v29];
      v47 = editViewModel;

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
        environment = [(PUWallpaperPosterEditorController *)self environment];
        px_isCallServices = [environment px_isCallServices];

        if ((px_isCallServices & 1) == 0)
        {
          v37 = MEMORY[0x1E69DC628];
          v38 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto"];
          v48 = MEMORY[0x1E69E9820];
          v49 = 3221225472;
          v50 = __49__PUWallpaperPosterEditorController__actionsMenu__block_invoke_8;
          v51 = &unk_1E7B7F4F0;
          v52 = editViewModel;
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
  _photoPickerAction = [(PUWallpaperPosterEditorController *)self _photoPickerAction];
  if (_photoPickerAction)
  {
    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    previewThumbnail = [editViewModel previewThumbnail];
    v7 = previewThumbnail;
    if (previewThumbnail)
    {
      image = previewThumbnail;
    }

    else
    {
      image = [_photoPickerAction image];
    }

    v9 = image;

    [v3 addObject:_photoPickerAction];
  }

  else
  {
    v9 = 0;
  }

  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration shuffleConfiguration];

  if (shuffleConfiguration)
  {
    if (![shuffleConfiguration shuffleType])
    {
      currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];

      if (currentPosterMedia)
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

  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_sourcePosterConfiguration = [environment pu_sourcePosterConfiguration];

  if (pu_sourcePosterConfiguration)
  {
    options = [pu_sourcePosterConfiguration options];
    if (([pu_sourcePosterConfiguration options] & 0x20) != 0)
    {
      v23 = 1;
      goto LABEL_17;
    }

    v20 = options & 1;
  }

  else
  {
    v20 = 0;
  }

  environment2 = [(PUWallpaperPosterEditorController *)self environment];
  px_isBackdrop = [environment2 px_isBackdrop];

  v23 = v20 | px_isBackdrop;
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

  environment = [(PUWallpaperPosterEditorController *)self environment];
  if ([environment px_isBackdrop])
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  environment2 = [(PUWallpaperPosterEditorController *)self environment];
  px_isCallServices = [environment2 px_isCallServices];

  if ((px_isCallServices & 1) != 0 || ![(PUWallpaperPosterEditorController *)self _canEnableSpatialPhotoEffect]&& (!PFOSVariantHasInternalUI() || ![(PUWallpaperPosterEditorController *)self _spatialPhotoFailedUnexpectedly]))
  {
    goto LABEL_5;
  }

  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

  if (!currentLayerStackViewModel)
  {
    goto LABEL_5;
  }

  if ([(PUWallpaperPosterEditorController *)self _canEnableSpatialPhotoEffect])
  {
    _isSpatialPhotoEnabled = [(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled];
    v10 = @"spatial.capture.slash";
    if (_isSpatialPhotoEnabled)
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
    _currentStyleIsHighKey = [(PUWallpaperPosterEditorController *)self _currentStyleIsHighKey];
    v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{33.5, 33.5}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__PUWallpaperPosterEditorController__toggleHighKeyLowKeyAction__block_invoke;
    v16[3] = &__block_descriptor_57_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v17 = vdupq_n_s64(0x4040C00000000000uLL);
    v18 = 0x403B800000000000;
    v19 = _currentStyleIsHighKey;
    v5 = [v4 imageWithActions:v16];
    v6 = @"PHOTOS_WALLPAPER_EDITOR_HIGH_KEY_MENU_TITLE";
    if (_currentStyleIsHighKey)
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
    v14 = _currentStyleIsHighKey;
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
    currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    style = [currentLayerStackViewModel style];

    if (objc_opt_respondsToSelector())
    {
      color = [style color];
      cGColor = [color CGColor];

      v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{35.0, 35.0}];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__PUWallpaperPosterEditorController__colorPickerAction__block_invoke;
      v19[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
      v19[4] = cGColor;
      v20 = xmmword_1B3D0CEE0;
      v8 = [v7 imageWithActions:v19];
      kind = [style kind];
      v10 = @"PHOTOS_WALLPAPER_EDITOR_STYLE_COLOR_MENU_TITLE";
      if (([kind isEqualToString:*MEMORY[0x1E69C0B00]] & 1) == 0 && !objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0AF8]))
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
      editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
      settlingEffectEnabled = [editViewModel settlingEffectEnabled];

      if (settlingEffectEnabled)
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
  environment = [(PUWallpaperPosterEditorController *)self environment];
  v3 = [environment editingVariant] != 2;

  return v3;
}

- (id)_photoPickerAction
{
  environment = [(PUWallpaperPosterEditorController *)self environment];
  px_isBackdrop = [environment px_isBackdrop];

  if (px_isBackdrop)
  {
    v5 = 0;
  }

  else
  {
    posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    configurationType = [posterConfiguration configurationType];
    if (configurationType == 1)
    {
      v8 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_PICK_SHUFFLE_PHOTOS_BUTTON_TITLE");
      posterConfiguration2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
      shuffleConfiguration = [posterConfiguration2 shuffleConfiguration];
      shuffleType = [shuffleConfiguration shuffleType];

      v14 = @"rectangle.grid.3x2.fill";
      v15 = @"sparkles.rectangle.stack.fill";
      v16 = shuffleType != 0;
      if (shuffleType)
      {
        v15 = 0;
      }

      if (shuffleType == 1)
      {
        v16 = 0;
      }

      else
      {
        v14 = v15;
      }

      v17 = shuffleType == 2;
      v9 = shuffleType != 2 && v16;
      if (v17)
      {
        v10 = @"rectangle.stack.fill";
      }

      else
      {
        v10 = v14;
      }
    }

    else if (configurationType)
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
    if (([posterConfiguration options] & 0x13) == 0 && (v9 & 1) == 0)
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  isUserPanningOrZooming = [editViewModel isUserPanningOrZooming];

  if ((isUserPanningOrZooming & 1) == 0)
  {
    editor = [(PUWallpaperPosterEditorController *)self editor];
    [editor updateActions];
  }
}

- (void)editor:(id)editor didUpdateColors:(id)colors
{
  firstObject = [colors firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    v7 = firstObject;
    firstObject = [(PUWallpaperPosterEditorController *)self _updateCurrentStyleColor:firstObject];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](firstObject, v6);
}

- (id)initialColorsForEditor:(id)editor
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];

  kind = [style kind];
  v6 = [MEMORY[0x1E69BDEE0] colorPaletteWithStyleKind:kind];
  primaryColors = [v6 primaryColors];
  firstObject = [primaryColors firstObject];
  pu_UIColor = [firstObject pu_UIColor];

  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{pu_UIColor, 0}];

  return v10;
}

- (void)_updateCurrentStyleColor:(id)color
{
  colorCopy = color;
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];

  kind = [style kind];
  v8 = [MEMORY[0x1E69C0750] pu_parallaxColorWithUIColor:colorCopy];

  if ([kind isEqualToString:*MEMORY[0x1E69C0AF0]])
  {
    v9 = MEMORY[0x1E69BDEE0];
    bakedStyle = [style bakedStyle];
    v11 = [v9 styleWithBakedStyle:bakedStyle];

    [v11 setColor:v8];
    currentLayerStackViewModel2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __62__PUWallpaperPosterEditorController__updateCurrentStyleColor___block_invoke;
    v30[3] = &unk_1E7B80328;
    v31 = v11;
    v13 = v11;
    [currentLayerStackViewModel2 performChanges:v30];

    v14 = v31;
  }

  else if (([kind isEqualToString:*MEMORY[0x1E69C0B00]] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B08]) & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B10]) & 1) != 0 || objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B18]))
  {
    v15 = MEMORY[0x1E69BDEE0];
    bakedStyle2 = [style bakedStyle];
    v17 = [v15 styleWithBakedStyle:bakedStyle2];

    [v17 setColor:v8];
    currentLayerStackViewModel3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __62__PUWallpaperPosterEditorController__updateCurrentStyleColor___block_invoke_2;
    v28[3] = &unk_1E7B80328;
    v29 = v17;
    v13 = v17;
    [currentLayerStackViewModel3 performChanges:v28];

    v14 = v29;
  }

  else
  {
    if (![kind isEqualToString:*MEMORY[0x1E69C0AF8]])
    {
      goto LABEL_10;
    }

    v13 = [MEMORY[0x1E69BDEE0] colorPaletteWithStyleKind:kind];
    v14 = [v13 suggestionAtIndex:{objc_msgSend(v13, "indexOfColor:", v8)}];
    v19 = MEMORY[0x1E69BDEE0];
    bakedStyle3 = [style bakedStyle];
    v21 = [v19 styleWithBakedStyle:bakedStyle3];

    primaryColor = [v14 primaryColor];
    [v21 setPrimaryColor:primaryColor];

    secondaryColor = [v14 secondaryColor];
    [v21 setSecondaryColor:secondaryColor];

    currentLayerStackViewModel4 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __62__PUWallpaperPosterEditorController__updateCurrentStyleColor___block_invoke_3;
    v26[3] = &unk_1E7B80328;
    v27 = v21;
    v25 = v21;
    [currentLayerStackViewModel4 performChanges:v26];
  }

LABEL_10:
  [(PUWallpaperPosterEditorController *)self _renderAfterStyleChange];
}

- (void)_presentStyleColorPicker
{
  v82 = *MEMORY[0x1E69E9840];
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];

  kind = [style kind];
  v63 = objc_alloc_init(getPREditorColorPickerConfigurationClass());
  v3 = MEMORY[0x1E696AEC0];
  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  assetUUID = [currentPosterMedia assetUUID];
  v6 = [v3 stringWithFormat:@"%@-%@", assetUUID, kind];
  v7 = v63;
  [v63 setIdentifier:v6];

  v8 = *MEMORY[0x1E69C0AF0];
  if (([kind isEqualToString:*MEMORY[0x1E69C0AF0]] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B08]) & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B18]))
  {
    color = [style color];
    v10 = @"PHOTOS_WALLPAPER_EDITOR_BACKGROUND_COLOR_PICKER_PROMPT";
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  if ([kind isEqualToString:*MEMORY[0x1E69C0B00]])
  {
    color2 = [style color];
  }

  else
  {
    if (![kind isEqualToString:*MEMORY[0x1E69C0AF8]])
    {
      if (![kind isEqualToString:*MEMORY[0x1E69C0B10]])
      {
        goto LABEL_42;
      }

      color = [style color];
      v10 = @"PHOTOS_WALLPAPER_EDITOR_STYLE_COLOR_PICKER_PROMPT";
      goto LABEL_6;
    }

    color2 = [style primaryColor];
  }

  color = color2;
  v11 = 0;
  v10 = @"PHOTOS_WALLPAPER_EDITOR_STYLE_COLOR_PICKER_PROMPT";
LABEL_7:
  [v63 setShowsSlider:v11];
  v12 = PULocalizedString(v10);
  [v63 setPrompt:v12];

  pu_UIColor = [color pu_UIColor];
  [v63 setSelectedColor:pu_UIColor];

  v59 = [MEMORY[0x1E69BDEE0] colorPaletteWithStyleKind:kind];
  primaryColors = [v59 primaryColors];
  v15 = primaryColors;
  if ([primaryColors count] >= 0xD)
  {
    v15 = [primaryColors subarrayWithRange:{0, 12}];
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
  if ([kind isEqualToString:v8])
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
          [color hue];
          if (PXFloatEqualToFloatWithTolerance())
          {
            [color pu_toneVariation];
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
    if (([kind isEqualToString:*MEMORY[0x1E69C0B08]] & 1) == 0 && (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) == 0 && !objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B18]))
    {
      if ([kind isEqualToString:*MEMORY[0x1E69C0B10]])
      {
        [color hue];
        v52 = v51;
        [color chroma];
        v54 = v53;
        [color pu_lumaVariation];
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
          [color hue];
          if (PXFloatEqualToFloatWithTolerance())
          {
            [color chroma];
            if (PXFloatEqualToFloatWithTolerance())
            {
              [color pu_lumaVariation];
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
  if (([kind isEqualToString:*MEMORY[0x1E69C0B08]] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B18]))
  {
    [v63 setColorWellDisplayMode:2];
  }

  editor = [(PUWallpaperPosterEditorController *)self editor];
  v48 = [editor pu_viewForMenuElementIdentifier:@"PUPosterEditorActionIdentifierColorPicker"];

  [v63 setColorPickerSourceItem:v48];
  objc_initWeak(&location, self);
  editor2 = [(PUWallpaperPosterEditorController *)self editor];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __61__PUWallpaperPosterEditorController__presentStyleColorPicker__block_invoke_5;
  v66[3] = &unk_1E7B78708;
  objc_copyWeak(&v67, &location);
  [editor2 presentColorPickerWithConfiguration:v63 changeHandler:v66];

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
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];
  hasColorParameter = [style hasColorParameter];

  return hasColorParameter;
}

- (void)_setCurrentStyleIsHighKey:(BOOL)key
{
  keyCopy = key;
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];

  if ([style hasTonalityMode])
  {
    v7 = MEMORY[0x1E69BDEE0];
    bakedStyle = [style bakedStyle];
    v9 = [v7 styleWithBakedStyle:bakedStyle];

    if (keyCopy)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    [v9 setTonality:v10];
    currentLayerStackViewModel2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PUWallpaperPosterEditorController__setCurrentStyleIsHighKey___block_invoke;
    v13[3] = &unk_1E7B80328;
    v14 = v9;
    v12 = v9;
    [currentLayerStackViewModel2 performChanges:v13];

    [(PUWallpaperPosterEditorController *)self _renderAfterStyleChange];
  }
}

- (BOOL)_currentStyleIsHighKey
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];

  if ([style hasTonalityMode])
  {
    v4 = [style tonality] == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_currentStyleSupportsHighAndLowKeyModes
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];
  hasTonalityMode = [style hasTonalityMode];

  return hasTonalityMode;
}

- (void)_renderAfterStyleChange
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  currentLayerStackViewModelUpdater = [editViewModel currentLayerStackViewModelUpdater];

  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  [currentLayerStackViewModelUpdater renderOnscreenModelAfterStyleChange:currentLayerStackViewModel];
}

- (void)_toggleHeadroom
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  isUsingHeadroom = [editViewModel isUsingHeadroom];

  editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PUWallpaperPosterEditorController__toggleHeadroom__block_invoke;
  v6[3] = &__block_descriptor_33_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  v7 = isUsingHeadroom;
  [editViewModel2 performChanges:v6];

  [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
}

- (void)_presentSpatialPhotoErrorDiagnosticsAlert
{
  v20 = *MEMORY[0x1E69E9840];
  if (PFOSVariantHasInternalUI())
  {
    currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    spatialPhotoFailuresDiagnosticDescription = [currentLayerStackViewModel spatialPhotoFailuresDiagnosticDescription];

    v5 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"%@", spatialPhotoFailuresDiagnosticDescription}];
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = spatialPhotoFailuresDiagnosticDescription;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Presenting spatial diagnostics alert with error: %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"3D Effect Error (Internal Only)" message:spatialPhotoFailuresDiagnosticDescription preferredStyle:1];
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

    editor = [(PUWallpaperPosterEditorController *)self editor];
    [editor presentViewController:v7 animated:1 completion:0];
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
      _isSpatialPhotoEnabled = [(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled];
      v4 = _isSpatialPhotoEnabled;
      [(PUWallpaperPosterEditorController *)self _setShuffleEffect:2 enabled:!_isSpatialPhotoEnabled];
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
      editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
      spatialPhotoEnabled = [editViewModel spatialPhotoEnabled];

      if (spatialPhotoEnabled)
      {
        goto LABEL_4;
      }
    }

    editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
    currentLayerStackViewModel = [editViewModel2 currentLayerStackViewModel];
    debugSpatialPhotoGenerationError = [currentLayerStackViewModel debugSpatialPhotoGenerationError];

    if (debugSpatialPhotoGenerationError)
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

  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  spatialPhotoFailedUnexpectedly = [currentLayerStackViewModel spatialPhotoFailedUnexpectedly];

  return spatialPhotoFailedUnexpectedly;
}

- (BOOL)_canEnableSpatialPhotoEffect
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalSpatialPhoto])
  {
    return 1;
  }

  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  canEnableSpatialPhoto = [currentLayerStackViewModel canEnableSpatialPhoto];

  return canEnableSpatialPhoto;
}

- (BOOL)_isSpatialPhotoPossible
{
  if (!PFPosterDeviceSupportsSpatialPhoto() || !PFPosterIsSpatialPhotoEnabled())
  {
    goto LABEL_8;
  }

  environment = [(PUWallpaperPosterEditorController *)self environment];
  if ([environment px_isBackdrop])
  {
    goto LABEL_4;
  }

  environment2 = [(PUWallpaperPosterEditorController *)self environment];
  px_isCallServices = [environment2 px_isCallServices];

  if ((px_isCallServices & 1) != 0 || (-[PUWallpaperPosterEditorController environment](self, "environment"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 editingVariant], v7, v8 == 2))
  {
LABEL_8:
    LOBYTE(v4) = 0;
    return v4;
  }

  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  environment = [currentLayerStackViewModel style];

  if (([environment hasColorParameter] & 1) == 0)
  {
    v4 = [environment hasTonalityMode] ^ 1;
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
    shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    v4 = ([shuffleResourceManager enabledEffects] >> 1) & 1;
  }

  else
  {
    shuffleResourceManager = [(PUWallpaperPosterEditorController *)self editViewModel];
    LOBYTE(v4) = [shuffleResourceManager spatialPhotoEnabled];
  }

  return v4;
}

- (BOOL)_canEnableDepthEffect
{
  editor = [(PUWallpaperPosterEditorController *)self editor];
  pu_isDepthEffectDisallowed = [editor pu_isDepthEffectDisallowed];

  if (pu_isDepthEffectDisallowed)
  {
    return 0;
  }

  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
  {
    return 1;
  }

  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  canEnableDepthEffect = [currentLayerStackViewModel canEnableDepthEffect];

  return canEnableDepthEffect;
}

- (BOOL)_isDepthEffectPossible
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  forceEnableSegmentation = [globalSettings forceEnableSegmentation];

  if ((forceEnableSegmentation & 1) == 0)
  {
    v5 = PFPosterDeviceSupportsSegmentation();
    if (!v5)
    {
      return v5;
    }

    globalSettings2 = [MEMORY[0x1E69BDE40] globalSettings];
    disableSegmentation = [globalSettings2 disableSegmentation];

    if (disableSegmentation)
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

  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  settlingEffectEnabled = [currentLayerStackViewModel settlingEffectEnabled];

  if (settlingEffectEnabled)
  {
    goto LABEL_9;
  }

  environment = [(PUWallpaperPosterEditorController *)self environment];
  px_isBackdrop = [environment px_isBackdrop];

  if (px_isBackdrop)
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
    currentLayerStackViewModel2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    hasMatte = [currentLayerStackViewModel2 hasMatte];

    LOBYTE(v5) = hasMatte;
  }

  return v5;
}

- (void)_setShuffleEffect:(unint64_t)effect supported:(BOOL)supported
{
  supportedCopy = supported;
  shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  v8 = shuffleResourceManager;
  if (supportedCopy)
  {
    v7 = [shuffleResourceManager supportedEffects] | effect;
  }

  else
  {
    v7 = [shuffleResourceManager supportedEffects] & ~effect;
  }

  [v8 setSupportedEffects:v7];
}

- (void)_setShuffleEffect:(unint64_t)effect enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  v8 = shuffleResourceManager;
  if (enabledCopy)
  {
    v7 = [shuffleResourceManager enabledEffects] | effect;
  }

  else
  {
    v7 = [shuffleResourceManager enabledEffects] & ~effect;
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
    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    LOBYTE(v3) = [editViewModel depthEnabled] ^ 1;
  }

  editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PUWallpaperPosterEditorController__toggleDepth__block_invoke;
  v6[3] = &__block_descriptor_33_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  v7 = v3;
  [editViewModel2 performChanges:v6];
}

- (BOOL)_isDepthEnabledInAnyOrientation
{
  if ([(PUWallpaperPosterEditorController *)self _isDepthEnabled])
  {
    return 1;
  }

  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  depthEnabledInAnyOrientation = [editViewModel depthEnabledInAnyOrientation];

  return depthEnabledInAnyOrientation;
}

- (BOOL)_isDepthEnabled
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
  {
    shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    v4 = [shuffleResourceManager enabledEffects] & 1;
  }

  else
  {
    shuffleResourceManager = [(PUWallpaperPosterEditorController *)self editViewModel];
    LOBYTE(v4) = [shuffleResourceManager depthEnabled];
  }

  return v4;
}

- (void)userTransformView:(id)view didChangeIsUserInteracting:(BOOL)interacting
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__PUWallpaperPosterEditorController_userTransformView_didChangeIsUserInteracting___block_invoke;
  v6[3] = &__block_descriptor_33_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  interactingCopy = interacting;
  [editViewModel performChanges:v6];
}

- (void)userTransformView:(id)view didChangeUserAffineTransform:(CGAffineTransform *)transform isUserInteracting:(BOOL)interacting
{
  if (interacting)
  {
    viewCopy = view;
    [viewCopy visibleRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [viewCopy untransformedContentFrame];
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
    currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    [currentLayerStackViewModel contentRect];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [currentLayerStackViewModel imageSize];
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

    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __102__PUWallpaperPosterEditorController_userTransformView_didChangeUserAffineTransform_isUserInteracting___block_invoke;
    v44[3] = &__block_descriptor_64_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
    *&v44[4] = v38;
    *&v44[5] = v41;
    *&v44[6] = v40;
    *&v44[7] = v39;
    [editViewModel performChanges:v44];
  }
}

- (void)setIsUserTransformDisabled:(BOOL)disabled
{
  if (self->_isUserTransformDisabled != disabled)
  {
    disabledCopy = disabled;
    self->_isUserTransformDisabled = disabled;
    userTransformView = [(PUWallpaperPosterEditorController *)self userTransformView];
    [userTransformView setUserInteractionEnabled:!disabledCopy];
  }
}

- (void)_updateUserTransformIsDisabled
{
  _posterWantsUserTransformDisabled = [(PUWallpaperPosterEditorController *)self _posterWantsUserTransformDisabled];

  [(PUWallpaperPosterEditorController *)self setIsUserTransformDisabled:_posterWantsUserTransformDisabled];
}

- (BOOL)_posterWantsUserTransformDisabled
{
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  configurationType = [posterConfiguration configurationType];

  if (configurationType != 1)
  {
    return 0;
  }

  posterConfiguration2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration2 shuffleConfiguration];

  v7 = [shuffleConfiguration shuffleType] != 1;
  return v7;
}

- (void)_updateUserTransformView
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  if (currentLayerStackViewModel)
  {
    environment = [(PUWallpaperPosterEditorController *)self environment];
    px_isCallServices = [environment px_isCallServices];

    if (px_isCallServices)
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
    [currentLayerStackViewModel contentRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [currentLayerStackViewModel visibleFrame];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2935 description:@"Layout rect must be valid"];
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
    userTransformView = [(PUWallpaperPosterEditorController *)self userTransformView];
    [userTransformView setContentPixelSize:{v18, v20}];
    v37 = 0.0;
    if ((v18 != -1.79769313e308 || v20 != -1.79769313e308) && (v18 != *MEMORY[0x1E695F060] || v20 != *(MEMORY[0x1E695F060] + 8)))
    {
      v37 = v18 / v20;
    }

    PURectWithAspectRatioFillingRect(v37, v44, v46, v45, v12);
    v39 = v38;
    v41 = v40;
    [userTransformView setUntransformedContentFrame:{0.0, 0.0}];
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    PUAffineTransformToMatchRect(&v48, 0.0, 0.0, v39, v41, v32, v33, v34, v35);
    v47[0] = v48;
    v47[1] = v49;
    v47[2] = v50;
    [userTransformView setUserAffineTransform:v47];
    [userTransformView setRequireTwoTouchesForPan:1];
  }
}

- (void)_setupUserTransformView
{
  userTransformView = [(PUWallpaperPosterEditorController *)self userTransformView];

  if (userTransformView)
  {
    userTransformView2 = [(PUWallpaperPosterEditorController *)self userTransformView];
    [userTransformView2 removeFromSuperview];

    [(PUWallpaperPosterEditorController *)self setUserTransformView:0];
  }

  contentOverlayContainerView = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  [contentOverlayContainerView bounds];
  PXRectWithOriginAndSize();
  v9 = [[PUUserTransformView alloc] initWithFrame:v5, v6, v7, v8];
  [(PUUserTransformView *)v9 setDelegate:self];
  [(PUUserTransformView *)v9 setAutoresizingMask:18];
  [contentOverlayContainerView addSubview:v9];
  [(PUWallpaperPosterEditorController *)self setUserTransformView:v9];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  v10 = observableCopy;
  if (context == "EditModelObservationContext")
  {
    if (changeCopy)
    {
      editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
      currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];

      if ([currentLayerStackViewModel showsDebugHUD])
      {
        [(PUWallpaperPosterEditorController *)self _updateLayerStackViewModelProperties:currentLayerStackViewModel];
      }

      goto LABEL_13;
    }

    goto LABEL_105;
  }

  if (context == "LayerStackViewModelObservationContext")
  {
    v13 = observableCopy;
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_16;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v53 = objc_opt_class();
      v52 = NSStringFromClass(v53);
      px_descriptionForAssertionMessage = [v13 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2707 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v52, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2707 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v52}];
    }

LABEL_16:
    currentLayerStackPropertiesChange = [v13 currentLayerStackPropertiesChange];
    stylePropertiesChange = [v13 stylePropertiesChange];
    if ((changeCopy & 2) != 0)
    {
      [(PUWallpaperPosterEditorController *)self _updateLayerStackViewModelProperties:v13];
      [(PUWallpaperPosterEditorController *)self _updateContentOverlayContainerView];
      [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      [(PUWallpaperPosterEditorController *)self _updatePreferredTitleBounds];
    }

    if ((*&changeCopy & 0x800200) != 0)
    {
      [(PUWallpaperPosterEditorController *)self _updatePreferredTitleBounds];
    }

    if ((changeCopy & 0x800000) != 0)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke;
      v68[3] = &unk_1E7B80DD0;
      v68[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v68 animations:0.3];
    }

    if (currentLayerStackPropertiesChange & 0x55 | *&changeCopy & 0x81000)
    {
      [(PUWallpaperPosterEditorController *)self _updateLayerStackViewModelProperties:v13];
      currentLayerStackViewModel2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (currentLayerStackViewModel2 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      }
    }

    if ((changeCopy & 0x4000008) != 0)
    {
      currentLayerStackViewModel3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (currentLayerStackViewModel3 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      }
    }

    if ((currentLayerStackPropertiesChange & 0x40) != 0)
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

    if (stylePropertiesChange & 0xB | (changeCopy & 0x100) | currentLayerStackPropertiesChange & 8)
    {
      currentLayerStackViewModel4 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (currentLayerStackViewModel4 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      }
    }

    if ((stylePropertiesChange & 0xE) != 0)
    {
      currentLayerStackViewModel5 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (currentLayerStackViewModel5 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _updateCurrentStyle];
      }
    }

    if ((currentLayerStackPropertiesChange & 8) != 0)
    {
      currentLayerStackViewModel6 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

      if (currentLayerStackViewModel6 == v13)
      {
        [(PUWallpaperPosterEditorController *)self _displayNextHint];
      }
    }

    if ((currentLayerStackPropertiesChange & 2) == 0)
    {
      goto LABEL_59;
    }

    currentLayerStackViewModel7 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];

    if (currentLayerStackViewModel7 != v13)
    {
      goto LABEL_59;
    }

    currentLayerStack = [v13 currentLayerStack];
    settlingEffectLayer = [currentLayerStack settlingEffectLayer];

    if (settlingEffectLayer)
    {
      currentLayerStack2 = [v13 currentLayerStack];
      settlingEffectEnabled = [currentLayerStack2 settlingEffectEnabled];

      if (settlingEffectEnabled)
      {
        [(PUWallpaperPosterEditorController *)self _startSettlingEffectPreviewAfterDelay];
      }
    }

    currentLayerStack3 = [v13 currentLayerStack];
    spatialPhotoBackgroundLayer = [currentLayerStack3 spatialPhotoBackgroundLayer];
    if (spatialPhotoBackgroundLayer)
    {
    }

    else
    {
      currentLayerStack4 = [v13 currentLayerStack];
      spatialPhotoBackgroundBackfillLayer = [currentLayerStack4 spatialPhotoBackgroundBackfillLayer];

      if (!spatialPhotoBackgroundBackfillLayer)
      {
        goto LABEL_59;
      }
    }

    [(PUWallpaperPosterEditorController *)self _updateLayerStackViewModelProperties:v13];
    [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
LABEL_59:
    if ((changeCopy & 0x2000000) != 0)
    {
      editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
      spatialPhotoEnabled = [editViewModel2 spatialPhotoEnabled];

      if (spatialPhotoEnabled)
      {
        [(PUWallpaperPosterEditorController *)self _presentSpatialPhotoErrorDiagnosticsAlert];
      }
    }

    if ((changeCopy & 0x8000000) != 0)
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

    if ((changeCopy & 0x10000000) != 0)
    {
      [v13 spatialPhotoLoadingProgress];
      [(PUWallpaperPosterEditorController *)self _updateProgressIndicator:?];
    }

    goto LABEL_105;
  }

  if (context == "EditViewModelObservationContext")
  {
    if (changeCopy)
    {
      [(PUWallpaperPosterEditorController *)self _updateCurrentLayerStackViewModel];
      [(PUWallpaperPosterEditorController *)self _updateCurrentStyle];
    }

    if ((changeCopy & 2) == 0)
    {
LABEL_72:
      if ((changeCopy & 4) != 0)
      {
        [(PUWallpaperPosterEditorController *)self _updateVisibleLayerStackViewModels];
      }

      if ((changeCopy & 0x200) != 0)
      {
        editViewModel3 = [(PUWallpaperPosterEditorController *)self editViewModel];
        stylesChange = [editViewModel3 stylesChange];

        if ((stylesChange & 2) != 0)
        {
          editor = [(PUWallpaperPosterEditorController *)self editor];
          [editor pu_updateLooks];
          goto LABEL_81;
        }

        if (stylesChange)
        {
          [(PUWallpaperPosterEditorController *)self _updateCurrentStyle];
        }

        if ((stylesChange & 4) != 0)
        {
          editor = [(PUWallpaperPosterEditorController *)self editor];
          [editor pu_updateLuminanceValuesForLooks];
LABEL_81:
        }
      }

      if ((changeCopy & 0x102) != 0 && [(PUWallpaperPosterEditorController *)self hint]== 2)
      {
        [(PUWallpaperPosterEditorController *)self _dismissPinchToZoomHint];
      }

      if ((changeCopy & 0x10000) != 0)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
        [(PUWallpaperPosterEditorController *)self _showTrySettlingEffectTip];
        if ((changeCopy & 0x1000) == 0)
        {
LABEL_87:
          if ((changeCopy & 0x4000) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_100;
        }
      }

      else if ((changeCopy & 0x1000) == 0)
      {
        goto LABEL_87;
      }

      editViewModel4 = [(PUWallpaperPosterEditorController *)self editViewModel];
      isUsingHeadroom = [editViewModel4 isUsingHeadroom];
      hint = [(PUWallpaperPosterEditorController *)self hint];
      if (isUsingHeadroom)
      {
        if (hint == 3)
        {
          [(PUWallpaperPosterEditorController *)self _showHintAnimated:1 completion:0];
        }

        else
        {
          [(PUWallpaperPosterEditorController *)self setHint:3];
        }
      }

      else if (hint == 3)
      {
        [(PUWallpaperPosterEditorController *)self _hideHintAnimated:1 completion:0];
      }

      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];

      if ((changeCopy & 0x4000) == 0)
      {
LABEL_88:
        if ((changeCopy & 0x80) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_101;
      }

LABEL_100:
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      [(PUWallpaperPosterEditorController *)self _updateEditorPreferences];
      [(PUWallpaperPosterEditorController *)self _updateUserTransformIsDisabled];
      if ((changeCopy & 0x80) == 0)
      {
LABEL_89:
        if ((changeCopy & 0x8000) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_102;
      }

LABEL_101:
      _isDepthEnabledInAnyOrientation = [(PUWallpaperPosterEditorController *)self _isDepthEnabledInAnyOrientation];
      editor2 = [(PUWallpaperPosterEditorController *)self editor];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __66__PUWallpaperPosterEditorController_observable_didChange_context___block_invoke_5;
      v60[3] = &__block_descriptor_33_e69_v24__0___PUMutablePosterEditorPreferences__8___PXPosterTransition__16l;
      v61 = _isDepthEnabledInAnyOrientation;
      [editor2 pu_updatePreferences:v60];

      if ((changeCopy & 0x8000) == 0)
      {
LABEL_90:
        if ((changeCopy & 8) == 0)
        {
          goto LABEL_105;
        }

LABEL_103:
        editViewModel5 = [(PUWallpaperPosterEditorController *)self editViewModel];
        isUserPanningOrZooming = [editViewModel5 isUserPanningOrZooming];

        if ((isUserPanningOrZooming & 1) == 0)
        {
          [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
        }

        goto LABEL_105;
      }

LABEL_102:
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      if ((changeCopy & 8) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_103;
    }

    editViewModel6 = [(PUWallpaperPosterEditorController *)self editViewModel];
    isUserPanningOrZooming2 = [editViewModel6 isUserPanningOrZooming];

    hint2 = [(PUWallpaperPosterEditorController *)self hint];
    if (isUserPanningOrZooming2)
    {
      if (hint2 == 2)
      {
        [(PUWallpaperPosterEditorController *)self _hideHintAnimated:1 completion:0];
      }

      goto LABEL_72;
    }

    if (hint2 == 3)
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

  if (context == "AnimateScrollToStyleKindAnimatorObservationContext" && (changeCopy & 2) != 0)
  {
    currentLayerStackViewModel = observableCopy;
    if (currentLayerStackViewModel)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v58 = objc_opt_class();
      v57 = NSStringFromClass(v58);
      px_descriptionForAssertionMessage2 = [currentLayerStackViewModel px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2893 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v57, px_descriptionForAssertionMessage2}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2893 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v57}];
    }

LABEL_8:
    if (([currentLayerStackViewModel isBeingMutated] & 1) == 0)
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  settlingEffectEnabled = [editViewModel settlingEffectEnabled];

  if (settlingEffectEnabled)
  {
    goto LABEL_2;
  }

  hint = [(PUWallpaperPosterEditorController *)self hint];
  if (hint == 3)
  {
    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      [(PUWallpaperPosterEditorController *)self displayNextHintAfterDelay];
      _effectivePinchToZoomHint = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (hint == 1)
  {
LABEL_12:
    _effectivePinchToZoomHint = [(PUWallpaperPosterEditorController *)self _effectivePinchToZoomHint];
    goto LABEL_13;
  }

  if (hint)
  {
LABEL_2:
    _effectivePinchToZoomHint = 0;
    goto LABEL_13;
  }

  _effectivePinchToZoomHint = [(PUWallpaperPosterEditorController *)self _defaultHint];
  if (_effectivePinchToZoomHint == 2)
  {
    currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    userAdjustedVisibleFrame = [currentLayerStackViewModel userAdjustedVisibleFrame];

    if (userAdjustedVisibleFrame)
    {
      _effectivePinchToZoomHint = 0;
    }

    else
    {
      _effectivePinchToZoomHint = 2;
    }
  }

LABEL_13:

  [(PUWallpaperPosterEditorController *)self setHint:_effectivePinchToZoomHint];
}

- (void)_displayDefaultHint
{
  [(PUWallpaperPosterEditorController *)self cancelPendingHint];
  [(PUWallpaperPosterEditorController *)self setPinchToZoomHintDismissed:0];
  _defaultHint = [(PUWallpaperPosterEditorController *)self _defaultHint];
  if (![(PUWallpaperPosterEditorController *)self hint]&& _defaultHint == 2 || ([(PUWallpaperPosterEditorController *)self setHint:_defaultHint], [(PUWallpaperPosterEditorController *)self hint]== 1))
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

- (void)_showHintAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(PUWallpaperPosterEditorController *)self hint]&& [(PUWallpaperPosterEditorController *)self _createHintLabelIfNeeded])
  {
    hintLabel = [(PUWallpaperPosterEditorController *)self hintLabel];
    if (!hintLabel)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2590 description:@"expected hintLabel"];
    }

    [hintLabel setHintLabelKind:{-[PUWallpaperPosterEditorController hint](self, "hint")}];
    hintLabel2 = [(PUWallpaperPosterEditorController *)self hintLabel];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PUWallpaperPosterEditorController__showHintAnimated_completion___block_invoke;
    v11[3] = &unk_1E7B80C88;
    v12 = completionCopy;
    [hintLabel2 setVisible:1 animated:animatedCopy completion:v11];

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

- (void)_hideHintAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  hintLabel = [(PUWallpaperPosterEditorController *)self hintLabel];

  if (hintLabel)
  {
    hintLabel2 = [(PUWallpaperPosterEditorController *)self hintLabel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PUWallpaperPosterEditorController__hideHintAnimated_completion___block_invoke;
    v9[3] = &unk_1E7B80C88;
    v10 = completionCopy;
    [hintLabel2 setVisible:0 animated:animatedCopy completion:v9];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  editor = [(PUWallpaperPosterEditorController *)self editor];
  [editor pu_editingChromeDodgingInsets];
  v4 = v3 + 40.0;

  return v4;
}

- (void)_updateOverlayContentConstraints
{
  [(PUWallpaperPosterEditorController *)self _hintLabelBottomAnchorDistance];
  v4 = v3;
  loadingViewBottomConstraint = [(PUWallpaperPosterEditorController *)self loadingViewBottomConstraint];
  [loadingViewBottomConstraint setConstant:v4];

  hintLabelBottomConstraint = [(PUWallpaperPosterEditorController *)self hintLabelBottomConstraint];
  if (!hintLabelBottomConstraint)
  {
    return;
  }

  v7 = hintLabelBottomConstraint;
  hintLabelCenterConstraint = [(PUWallpaperPosterEditorController *)self hintLabelCenterConstraint];

  if (!hintLabelCenterConstraint)
  {
    return;
  }

  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];

  if (currentLayerStackViewModel)
  {
    editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
    currentLayerStackViewModel2 = [editViewModel2 currentLayerStackViewModel];
    [currentLayerStackViewModel2 additionalViewTitleHeight];
    v14 = v13;

    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      editViewModel3 = [(PUWallpaperPosterEditorController *)self editViewModel];
      currentLayerStackViewModel3 = [editViewModel3 currentLayerStackViewModel];
      v14 = PUUserAdjustedAdditionalViewTitleHeightForViewModel(currentLayerStackViewModel3);
    }
  }

  else
  {
    v14 = 0.0;
  }

  contentOverlayContainerView = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  [contentOverlayContainerView frame];
  if (v14 > v18 / 5.0)
  {
    goto LABEL_11;
  }

  environment = [(PUWallpaperPosterEditorController *)self environment];
  if ([environment px_isBackdrop])
  {

LABEL_11:
    goto LABEL_12;
  }

  environment2 = [(PUWallpaperPosterEditorController *)self environment];
  px_isCallServices = [environment2 px_isCallServices];

  if ((px_isCallServices & 1) == 0)
  {
    hintLabelBottomConstraint2 = [(PUWallpaperPosterEditorController *)self hintLabelBottomConstraint];
    [hintLabelBottomConstraint2 setActive:0];

    hintLabelCenterConstraint2 = [(PUWallpaperPosterEditorController *)self hintLabelCenterConstraint];
    goto LABEL_13;
  }

LABEL_12:
  hintLabelCenterConstraint3 = [(PUWallpaperPosterEditorController *)self hintLabelCenterConstraint];
  [hintLabelCenterConstraint3 setActive:0];

  hintLabelBottomConstraint3 = [(PUWallpaperPosterEditorController *)self hintLabelBottomConstraint];
  [hintLabelBottomConstraint3 setConstant:v4];

  hintLabelCenterConstraint2 = [(PUWallpaperPosterEditorController *)self hintLabelBottomConstraint];
LABEL_13:
  v26 = hintLabelCenterConstraint2;
  [hintLabelCenterConstraint2 setActive:1];
}

- (BOOL)_createHintLabelIfNeeded
{
  v20[1] = *MEMORY[0x1E69E9840];
  contentOverlayContainerView = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  if (contentOverlayContainerView)
  {
    hintLabel = [(PUWallpaperPosterEditorController *)self hintLabel];

    if (!hintLabel)
    {
      v5 = [_TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel alloc];
      v6 = [(PUPosterAnimatedHintLabel *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(PUPosterAnimatedHintLabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      environment = [(PUWallpaperPosterEditorController *)self environment];
      -[PUPosterAnimatedHintLabel setIsCallServicesEnvironment:](v6, "setIsCallServicesEnvironment:", [environment px_isCallServices]);

      [contentOverlayContainerView addSubview:v6];
      bottomAnchor = [contentOverlayContainerView bottomAnchor];
      bottomAnchor2 = [(PUPosterAnimatedHintLabel *)v6 bottomAnchor];
      [(PUWallpaperPosterEditorController *)self _hintLabelBottomAnchorDistance];
      v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
      [(PUWallpaperPosterEditorController *)self setHintLabelBottomConstraint:v10];

      centerYAnchor = [(PUPosterAnimatedHintLabel *)v6 centerYAnchor];
      centerYAnchor2 = [contentOverlayContainerView centerYAnchor];
      v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [(PUWallpaperPosterEditorController *)self setHintLabelCenterConstraint:v13];

      v14 = MEMORY[0x1E696ACD8];
      centerXAnchor = [(PUPosterAnimatedHintLabel *)v6 centerXAnchor];
      centerXAnchor2 = [contentOverlayContainerView centerXAnchor];
      v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v20[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v14 activateConstraints:v18];

      [(PUWallpaperPosterEditorController *)self _updateOverlayContentConstraints];
      [(PUWallpaperPosterEditorController *)self setHintLabel:v6];
    }
  }

  return contentOverlayContainerView != 0;
}

- (void)_updateHintLabelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__PUWallpaperPosterEditorController__updateHintLabelAnimated___block_invoke;
  v5[3] = &unk_1E7B7FA08;
  objc_copyWeak(&v6, &location);
  v7 = animatedCopy;
  [(PUWallpaperPosterEditorController *)self _hideHintAnimated:animatedCopy completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__PUWallpaperPosterEditorController__updateHintLabelAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showHintAnimated:*(a1 + 40) completion:0];
}

- (void)setHint:(int64_t)hint
{
  hint = self->_hint;
  if (hint != hint)
  {
    if (hint == 2 || hint != 2)
    {
      self->_hint = hint;
      if (hint == 2)
      {
        [(PUWallpaperPosterEditorController *)self _startPinchToZoomHintTimeout];
      }
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self setPinchToZoomHintDismissed:1];
      self->_hint = hint;
    }

    v7 = hint != 1 || hint != 0;

    [(PUWallpaperPosterEditorController *)self _updateHintLabelAnimated:v7];
  }
}

- (void)_updateShuffleSuggestionFeaturedStateIfNeededForConfiguration:(id)configuration
{
  v49 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  shuffleConfiguration = [configurationCopy shuffleConfiguration];
  v6 = shuffleConfiguration;
  if (shuffleConfiguration && ![shuffleConfiguration shuffleType])
  {
    selfCopy = self;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    media = [configurationCopy media];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = [media countByEnumeratingWithState:&v41 objects:v48 count:16];
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
            objc_enumerationMutation(media);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            suggestionUUID = [v13 suggestionUUID];

            if (suggestionUUID)
            {
              suggestionUUID2 = [v13 suggestionUUID];
              [v7 addObject:suggestionUUID2];
            }
          }
        }

        v10 = [media countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v10);
    }

    photoLibrary = [(PUWallpaperPosterEditorController *)selfCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v18 = MEMORY[0x1E696AB28];
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
    v47[0] = v19;
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v7];
    v47[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v22 = [v18 andPredicateWithSubpredicates:v21];
    [librarySpecificFetchOptions setPredicate:v22];

    v23 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
    v24 = [v23 count];
    if (v24 != [media count])
    {
      v25 = PLWallpaperGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [media count];
        v27 = [v23 count];
        *buf = 67109376;
        *v46 = v26;
        *&v46[4] = 1024;
        *&v46[6] = v27;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_ERROR, "Shuffle suggestion count mismatch. Expected %d, found %d in library", buf, 0xEu);
      }
    }

    photoLibrary2 = [(PUWallpaperPosterEditorController *)selfCopy photoLibrary];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __99__PUWallpaperPosterEditorController__updateShuffleSuggestionFeaturedStateIfNeededForConfiguration___block_invoke;
    v39[3] = &unk_1E7B80DD0;
    v29 = v23;
    v40 = v29;
    v38 = 0;
    v30 = [photoLibrary2 performChangesAndWait:v39 error:&v38];
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

- (void)_savePosterEditConfigurationForCurrentPosterMediaWithEnvironment:(id)environment
{
  environmentCopy = environment;
  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  posterEditConfigurationRepresentation = [editViewModel posterEditConfigurationRepresentation];

  editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
  [editViewModel2 containerFrame];
  PXRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [environmentCopy pu_deviceOrientation] - 3;
  if (v17 <= 1)
  {
    PXRectTransposed();
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;
  }

  [environmentCopy px_minimumTitleBoundsForLayout:0];
  PXRectDenormalize();
  recta.origin.x = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  PUAdjustedSalientContentRectangleFromEnvironment(environmentCopy);
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
    [posterEditConfigurationRepresentation setAdditionalTitleLabelHeight:?];
  }

  else
  {
    [posterEditConfigurationRepresentation setLandscapeAdditionalTitleLabelHeight:?];
  }

  [currentPosterMedia setEditConfiguration:posterEditConfigurationRepresentation];
  currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
  *&recta.origin.y = MEMORY[0x1E69E9820];
  *&recta.size.width = 3221225472;
  *&recta.size.height = __102__PUWallpaperPosterEditorController__savePosterEditConfigurationForCurrentPosterMediaWithEnvironment___block_invoke;
  v32 = &unk_1E7B78640;
  v34 = v17 < 2;
  v33 = posterEditConfigurationRepresentation;
  v30 = posterEditConfigurationRepresentation;
  [currentLayerStackViewModel performChanges:&recta.origin.y];
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
  environment = [(PUWallpaperPosterEditorController *)self environment];
  [(PUWallpaperPosterEditorController *)self _savePosterEditConfigurationForCurrentPosterMediaWithEnvironment:environment];
}

- (void)_applyPosterEditConfigurationForShuffleAsset
{
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  editConfiguration = [posterConfiguration editConfiguration];

  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  editConfiguration2 = [currentPosterMedia editConfiguration];

  if (editConfiguration2)
  {
    v6 = editConfiguration2;

    editConfiguration = v6;
LABEL_4:
    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    [editViewModel applyChangesFromPosterEditConfiguration:editConfiguration];

    goto LABEL_5;
  }

  if (editConfiguration)
  {
    goto LABEL_4;
  }

  editConfiguration = 0;
LABEL_5:
}

- (void)_handleTapToShuffle:(id)shuffle
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
  contentOverlayContainerView = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_posterType = [environment pu_posterType];

  if (pu_posterType == 2)
  {
    tapToShuffleGestureRecognizer = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToShuffle_];
    [contentOverlayContainerView addGestureRecognizer:tapToShuffleGestureRecognizer];
    [(PUWallpaperPosterEditorController *)self setTapToShuffleGestureRecognizer:tapToShuffleGestureRecognizer];
  }

  else
  {
    tapToShuffleGestureRecognizer = [(PUWallpaperPosterEditorController *)self tapToShuffleGestureRecognizer];
    [contentOverlayContainerView removeGestureRecognizer:tapToShuffleGestureRecognizer];
  }
}

- (void)setShuffleAssetIndex:(int64_t)index
{
  if (self->_shuffleAssetIndex != index)
  {
    self->_shuffleAssetIndex = index;
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
  _isShuffle = [(PUWallpaperPosterEditorController *)self _isShuffle];
  if (_isShuffle)
  {
    posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    shuffleConfiguration = [posterConfiguration shuffleConfiguration];
    shuffleType = [shuffleConfiguration shuffleType];

    LOBYTE(_isShuffle) = (shuffleType & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return _isShuffle;
}

- (BOOL)_isShuffleModeWithGlobalDepth
{
  _isShuffle = [(PUWallpaperPosterEditorController *)self _isShuffle];
  if (_isShuffle)
  {
    posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    shuffleConfiguration = [posterConfiguration shuffleConfiguration];
    shuffleType = [shuffleConfiguration shuffleType];

    LOBYTE(_isShuffle) = (shuffleType & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return _isShuffle;
}

- (BOOL)_isManualShuffle
{
  if (![(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    return 0;
  }

  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration shuffleConfiguration];
  v5 = [shuffleConfiguration shuffleType] == 1;

  return v5;
}

- (BOOL)_isUserAlbumShuffle
{
  if (![(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    return 0;
  }

  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration shuffleConfiguration];
  v5 = [shuffleConfiguration shuffleType] == 2;

  return v5;
}

- (BOOL)_isSmartShuffle
{
  if (![(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    return 0;
  }

  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration shuffleConfiguration];
  v5 = [shuffleConfiguration shuffleType] == 0;

  return v5;
}

- (int64_t)_shuffleType
{
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration shuffleConfiguration];
  if (!shuffleConfiguration)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2276 description:@"Expected shuffle configuration"];
  }

  shuffleType = [shuffleConfiguration shuffleType];

  return shuffleType;
}

- (BOOL)_isShuffle
{
  environment = [(PUWallpaperPosterEditorController *)self environment];
  v3 = [environment pu_posterType] == 2;

  return v3;
}

- (void)wallpaperPosterShuffleGridViewController:(id)controller didFinishWithChange:(id)change selectedPosterMedia:(id)media
{
  changeCopy = change;
  mediaCopy = media;
  [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewController];
  if ([changeCopy hasChanges])
  {
    v9 = [changeCopy differenceByTransformingChangesWithBlock:&__block_literal_global_600];
    posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    media = [posterConfiguration media];
    v12 = [media arrayByApplyingDifference:v9];

    posterConfiguration2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    [posterConfiguration2 setMedia:v12];

    shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    [shuffleResourceManager startPreloadingResourcesForPosterMedia:v12];

    [(PUWallpaperPosterEditorController *)self _loadAssetFromPosterConfiguration];
  }

  if (mediaCopy)
  {
    posterConfiguration3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    media2 = [posterConfiguration3 media];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __118__PUWallpaperPosterEditorController_wallpaperPosterShuffleGridViewController_didFinishWithChange_selectedPosterMedia___block_invoke_2;
    v18[3] = &unk_1E7B78618;
    v19 = mediaCopy;
    v17 = [media2 indexOfObjectPassingTest:v18];
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

- (void)_didLoadMediaFromShuffleConfigurationViewController:(id)controller succeeded:(BOOL)succeeded
{
  succeededCopy = succeeded;
  controllerCopy = controller;
  [(PUWallpaperPosterEditorController *)self setMediaLoadedCompletionHandler:0];
  if ([(PUWallpaperPosterEditorController *)self isCancellingMediaLoading])
  {
    oldPosterConfiguration = [(PUWallpaperPosterEditorController *)self oldPosterConfiguration];
    [(PUWallpaperPosterEditorController *)self setPosterConfiguration:oldPosterConfiguration];

    [(PUWallpaperPosterEditorController *)self setIsCancellingMediaLoading:0];
  }

  else if (succeededCopy)
  {
    [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewController];
  }

  else
  {
    [controllerCopy didFailFinishingWithPosterConfiguration];
  }
}

- (void)wallpaperShuffleConfigurationViewControllerDidCancelManuallySelectingPhotos:(id)photos
{
  mediaLoadedCompletionHandler = [(PUWallpaperPosterEditorController *)self mediaLoadedCompletionHandler];

  if (mediaLoadedCompletionHandler)
  {

    [(PUWallpaperPosterEditorController *)self setIsCancellingMediaLoading:1];
  }
}

- (void)wallpaperShuffleConfigurationViewController:(id)controller didFinishWithPosterConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];

  if (editViewModel)
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
    v14 = controllerCopy;
    [(PUWallpaperPosterEditorController *)self setMediaLoadedCompletionHandler:v13];

    objc_destroyWeak(&v15);
  }

  media = [configurationCopy media];
  if ([media count])
  {
    goto LABEL_7;
  }

  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  media2 = [posterConfiguration media];
  v12 = [media2 count];

  if (v12)
  {
    [(PUWallpaperPosterEditorController *)self posterConfiguration];
    configurationCopy = media = configurationCopy;
LABEL_7:
  }

  [(PUWallpaperPosterEditorController *)self setPosterConfiguration:configurationCopy];
  objc_destroyWeak(&location);
}

void __114__PUWallpaperPosterEditorController_wallpaperShuffleConfigurationViewController_didFinishWithPosterConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoadMediaFromShuffleConfigurationViewController:*(a1 + 32) succeeded:a2];
}

- (void)wallpaperShuffleConfigurationViewControllerDidDismiss:(id)dismiss
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];

  if (!editViewModel)
  {

    [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewControllerAndCancelEditor];
  }
}

- (void)_reloadSmartAlbumPreviewAssetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = [_PUWallpaperSmartAlbumPreviewReloadRequest alloc];
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration shuffleConfiguration];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__PUWallpaperPosterEditorController__reloadSmartAlbumPreviewAssetsWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7B785A8;
  objc_copyWeak(&v13, &location);
  v9 = handlerCopy;
  v12 = v9;
  v10 = [(_PUWallpaperSmartAlbumPreviewReloadRequest *)v5 initWithPhotoLibrary:photoLibrary shuffleConfiguration:shuffleConfiguration completion:v11];
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
  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  assetUUID = [currentPosterMedia assetUUID];
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = currentPosterMedia;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "User rejected poster media %@", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PUWallpaperPosterEditorController__rejectSuggestionsForCurrentAsset__block_invoke;
  aBlock[3] = &unk_1E7B7F820;
  objc_copyWeak(&v22, &location);
  v6 = currentPosterMedia;
  v20 = v6;
  v7 = assetUUID;
  v21 = v7;
  v8 = _Block_copy(aBlock);
  v9 = MEMORY[0x1E6978630];
  v24 = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v13 = [v9 fetchAssetsWithUUIDs:v10 options:librarySpecificFetchOptions];
  firstObject = [v13 firstObject];

  if (firstObject)
  {
    v15 = MEMORY[0x1E69C15B0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__PUWallpaperPosterEditorController__rejectSuggestionsForCurrentAsset__block_invoke_596;
    v17[3] = &unk_1E7B7C940;
    v18 = v8;
    [v15 rejectWallpaperSuggestionsUsingAsset:firstObject completionHandler:v17];
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

  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleConfiguration = [posterConfiguration shuffleConfiguration];
  shuffleFrequency = [shuffleConfiguration shuffleFrequency];

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
        integerValue = [v14 integerValue];
        v16 = [v24 objectForKeyedSubscript:v14];
        v17 = MEMORY[0x1E69DC628];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __58__PUWallpaperPosterEditorController__shuffleFrequencyMenu__block_invoke;
        v25[3] = &unk_1E7B808E0;
        objc_copyWeak(v26, &location);
        v26[1] = integerValue;
        v18 = [v17 actionWithTitle:v16 image:0 identifier:0 handler:v25];
        v19 = v18;
        if (integerValue == shuffleFrequency)
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
  shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  media = [posterConfiguration media];
  v8 = [(PUWallpaperPosterShuffleGridViewController *)v3 initWithResourceManager:shuffleResourceManager posterMedia:media];

  [(PUWallpaperPosterShuffleGridViewController *)v8 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
  [v7 setToolbarHidden:0];
  [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:v7];
}

- (void)_updateSmartAlbumAvailability
{
  objc_initWeak(&location, self);
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PUWallpaperPosterEditorController__updateSmartAlbumAvailability__block_invoke;
  block[3] = &unk_1E7B80610;
  v7 = photoLibrary;
  v5 = photoLibrary;
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
    centerSuggestionMedia = [(PUWallpaperPosterEditorController *)self centerSuggestionMedia];
    v3 = [_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController alloc];
    photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
    posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    v6 = [(PUWallpaperShuffleConfigurationViewController *)v3 initWithPhotoLibrary:photoLibrary style:1 posterConfiguration:posterConfiguration centerMedia:centerSuggestionMedia];

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

    editor = [(PUWallpaperPosterEditorController *)self editor];
    [editor presentViewController:v9 animated:1 completion:0];
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
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  v6 = [(PUWallpaperShuffleConfigurationViewController *)v3 initWithPhotoLibrary:photoLibrary style:2 posterConfiguration:posterConfiguration centerMedia:0];

  [(PUWallpaperShuffleConfigurationViewController *)v6 setDelegate:self];
  [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:v6];
}

- (void)_presentAuthenticatedShuffleConfigurationEditor
{
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];

  if (posterConfiguration)
  {
    posterConfiguration2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    shuffleConfiguration = [posterConfiguration2 shuffleConfiguration];

    v6 = shuffleConfiguration;
    if (!shuffleConfiguration)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:2041 description:{@"Invalid parameter not satisfying: %@", @"shuffleConfiguration"}];

      v6 = 0;
    }

    shuffleType = [v6 shuffleType];
    if (shuffleType)
    {
      if (shuffleType == 2)
      {
        [(PUWallpaperPosterEditorController *)self _presentUserAlbumShuffleEditor];
      }

      else if (shuffleType == 1)
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
    environment = [(PUWallpaperPosterEditorController *)self environment];
    pu_posterDescriptor = [environment pu_posterDescriptor];
    shuffleConfiguration2 = [pu_posterDescriptor shuffleConfiguration];

    if (shuffleConfiguration2)
    {
      v11 = objc_opt_class();
      environment2 = [(PUWallpaperPosterEditorController *)self environment];
      pu_posterDescriptor2 = [environment2 pu_posterDescriptor];
      shuffleConfiguration = [v11 posterConfigurationFromPosterDescriptor:pu_posterDescriptor2];
    }

    else
    {
      shuffleConfiguration = 0;
    }

    centerSuggestionMedia = [(PUWallpaperPosterEditorController *)self centerSuggestionMedia];
    v15 = [_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController alloc];
    photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
    v17 = [(PUWallpaperShuffleConfigurationViewController *)v15 initWithPhotoLibrary:photoLibrary style:0 posterConfiguration:shuffleConfiguration centerMedia:centerSuggestionMedia];

    [(PUWallpaperShuffleConfigurationViewController *)v17 setDelegate:self];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(PUWallpaperShuffleConfigurationViewController *)v17 setPreferredContentSize:580.0, 820.0];
    }

    [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:v17];
  }
}

- (void)_presentShuffleConfigurationEditor
{
  v3 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:@"com.apple.mobileslideshow"];
  mEMORY[0x1E698B0D8] = [MEMORY[0x1E698B0D8] sharedGuard];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__PUWallpaperPosterEditorController__presentShuffleConfigurationEditor__block_invoke;
  v5[3] = &unk_1E7B80280;
  v5[4] = self;
  [mEMORY[0x1E698B0D8] authenticateForSubject:v3 completion:v5];
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
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_posterDescriptor = [environment pu_posterDescriptor];

  if (pu_posterDescriptor)
  {
    media = [pu_posterDescriptor media];
    v5 = [media count];

    if (v5)
    {
      media2 = [pu_posterDescriptor media];
      firstObject = [media2 firstObject];

      if (firstObject && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v5 = firstObject;
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

- (void)_didLoadMediaFromPhotoPickerWithAssetUUID:(id)d succeeded:(BOOL)succeeded error:(id)error
{
  succeededCopy = succeeded;
  v15[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(PUWallpaperPosterEditorController *)self setMediaLoadedCompletionHandler:0];
  if ([(PUWallpaperPosterEditorController *)self isCancellingMediaLoading])
  {
    oldPosterConfiguration = [(PUWallpaperPosterEditorController *)self oldPosterConfiguration];
    [(PUWallpaperPosterEditorController *)self setPosterConfiguration:oldPosterConfiguration];
  }

  if (succeededCopy || [(PUWallpaperPosterEditorController *)self isCancellingMediaLoading])
  {
    [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewController];
  }

  [(PUWallpaperPosterEditorController *)self setIsCancellingMediaLoading:0];
  if (dCopy)
  {
    v9 = [MEMORY[0x1E6978630] localIdentifierWithUUID:dCopy];
    photoPickerViewController = [(PUWallpaperPosterEditorController *)self photoPickerViewController];
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [photoPickerViewController _stopActivityIndicatorsForAssetsWithIdentifiers:v11];

    if (!succeededCopy)
    {
      photoPickerViewController2 = [(PUWallpaperPosterEditorController *)self photoPickerViewController];
      v14 = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      [photoPickerViewController2 deselectAssetsWithIdentifiers:v13];
    }
  }

  if (succeededCopy && [(PUWallpaperPosterEditorController *)self shouldEnableSpatialPhotoEffectAfterMediaLoad])
  {
    if (![(PUWallpaperPosterEditorController *)self _isSpatialPhotoEnabled])
    {
      [(PUWallpaperPosterEditorController *)self _handleToggleSpatialPhotoAction];
    }

    [(PUWallpaperPosterEditorController *)self setShouldEnableSpatialPhotoEffectAfterMediaLoad:0];
  }
}

- (void)_extensionWillResignNotification:(id)notification
{
  photoPickerViewController = [(PUWallpaperPosterEditorController *)self photoPickerViewController];

  if (photoPickerViewController)
  {
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Host extension will resign notification while photos picker is shown. Forwarding to Photos picker.", v7, 2u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIViewServiceHostWillResignActiveNotification" object:self];
  }
}

- (void)_stopListeningForExtensionHostResignationNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];
}

- (void)_beginListeningForExtensionHostResignationNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__extensionWillResignNotification_ name:*MEMORY[0x1E696A2D8] object:0];
}

- (void)_handlePhotoPickerResults:(id)results
{
  v49[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  firstObject = [resultsCopy firstObject];
  assetIdentifier = [firstObject assetIdentifier];
  mediaLoadedCompletionHandler = [(PUWallpaperPosterEditorController *)self mediaLoadedCompletionHandler];

  if ([(PUWallpaperPosterEditorController *)self _isSpatialPhotoPossible])
  {
    itemProvider = [firstObject itemProvider];
    registeredTypeIdentifiers = [itemProvider registeredTypeIdentifiers];
    v10 = PXPhotosFileProviderTypeIdentifierSpatialWallpaperPrivate();
    v11 = [registeredTypeIdentifiers containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  if ([(PUWallpaperPosterEditorController *)self _isSettlingEffectPossible])
  {
    itemProvider2 = [firstObject itemProvider];
    registeredTypeIdentifiers2 = [itemProvider2 registeredTypeIdentifiers];
    v14 = PXPhotosFileProviderTypeIdentifierLiveWallpaperPrivate();
    -[PUWallpaperPosterEditorController setShouldLoadSettlingEffectSynchronously:](self, "setShouldLoadSettlingEffectSynchronously:", [registeredTypeIdentifiers2 containsObject:v14] & (v11 ^ 1));
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

  if (assetIdentifier)
  {
    if (!mediaLoadedCompletionHandler)
    {
      v17 = MEMORY[0x1E6978630];
      v49[0] = assetIdentifier;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
      photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
      v21 = [v17 fetchAssetsWithLocalIdentifiers:v18 options:librarySpecificFetchOptions];
      firstObject2 = [v21 firstObject];

      if (firstObject2)
      {
        photoPickerViewController = [(PUWallpaperPosterEditorController *)self photoPickerViewController];
        v48 = assetIdentifier;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        [photoPickerViewController _startActivityIndicatorsForAssetsWithIdentifiers:v24];

        objc_initWeak(buf, self);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __63__PUWallpaperPosterEditorController__handlePhotoPickerResults___block_invoke;
        v44[3] = &unk_1E7B78560;
        objc_copyWeak(&v45, buf);
        [(PUWallpaperPosterEditorController *)self setMediaLoadedCompletionHandler:v44];
        uuid = [firstObject2 uuid];
        currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
        assetUUID = [currentPosterMedia assetUUID];
        v28 = [uuid isEqualToString:assetUUID];

        if (v28)
        {
          editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
          v30 = editViewModel == 0;

          if (v30)
          {
            [(PUWallpaperPosterEditorController *)self _loadContentForCurrentPosterMedia];
          }

          else
          {
            [(PUWallpaperPosterEditorController *)self _didLoadMediaFromPhotoPickerWithAssetUUID:uuid succeeded:1 error:0];
          }
        }

        else
        {
          environment = [(PUWallpaperPosterEditorController *)self environment];
          pu_posterType = [environment pu_posterType];

          v35 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:{objc_msgSend(objc_opt_class(), "posterConfigurationTypeForPosterType:", pu_posterType)}];
          v36 = [objc_alloc(MEMORY[0x1E69C0808]) initWithAssetUUID:uuid];
          v47 = v36;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
          [v35 setMedia:v37];

          posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
          environment2 = [(PUWallpaperPosterEditorController *)self environment];
          px_isCallServices = [environment2 px_isCallServices];
          if (posterConfiguration)
          {
            v41 = px_isCallServices;
          }

          else
          {
            v41 = 0;
          }

          if (v41)
          {
            [v35 setOptions:{objc_msgSend(posterConfiguration, "options")}];
            userInfo = [posterConfiguration userInfo];
            v43 = [userInfo copy];
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
    editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v32 = editViewModel2 == 0;

    if (v32)
    {
      [(PUWallpaperPosterEditorController *)self _dismissPosterConfigurationViewControllerAndCancelEditor];
    }

    else if (mediaLoadedCompletionHandler)
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
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v30 = [v3 initWithPhotoLibrary:photoLibrary];

  imagesFilter = [MEMORY[0x1E69790E8] imagesFilter];
  [v30 setFilter:imagesFilter];

  [v30 setDisabledCapabilities:2];
  if ((PHSensitiveContentAnalysisAvailable() & 1) == 0)
  {
    [v30 setDisabledCapabilities:{objc_msgSend(v30, "disabledCapabilities") | 0x10}];
  }

  environment = [(PUWallpaperPosterEditorController *)self environment];
  px_isCallServices = [environment px_isCallServices];

  if (px_isCallServices)
  {
    v8 = 268;
  }

  else
  {
    v8 = 260;
  }

  [v30 _setDisabledPrivateCapabilities:v8];
  environment2 = [(PUWallpaperPosterEditorController *)self environment];
  pu_posterDescriptor = [environment2 pu_posterDescriptor];

  environment3 = [(PUWallpaperPosterEditorController *)self environment];
  px_isCallServices2 = [environment3 px_isCallServices];

  if (px_isCallServices2)
  {
    posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    userInfo = [posterConfiguration userInfo];
    v15 = [userInfo objectForKeyedSubscript:@"preferPhotosSuggestionsForDeviceOwner"];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      [MEMORY[0x1E6979178] deviceOwnerSuggestionGroup];
    }

    else
    {
      [MEMORY[0x1E6979178] wallpaperLikeSuggestionGroup];
    }
    backdropWallpaperSuggestionGroup = ;
  }

  else
  {
    environment4 = [(PUWallpaperPosterEditorController *)self environment];
    px_isBackdrop = [environment4 px_isBackdrop];

    if (px_isBackdrop)
    {
      backdropWallpaperSuggestionGroup = [MEMORY[0x1E6979178] backdropWallpaperSuggestionGroup];
      goto LABEL_22;
    }

    posterConfiguration2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    if (posterConfiguration2)
    {
    }

    else if ([pu_posterDescriptor descriptorType] == 103)
    {
      backdropWallpaperSuggestionGroup = [MEMORY[0x1E6979178] portraitWallpaperSuggestionGroup];
      goto LABEL_22;
    }

    posterConfiguration3 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    if (!posterConfiguration3 && [pu_posterDescriptor descriptorType] == 104 || (-[PUWallpaperPosterEditorController editViewModel](self, "editViewModel"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "settlingEffectEnabled"), v22, posterConfiguration3, v23))
    {
      backdropWallpaperSuggestionGroup = [MEMORY[0x1E6979178] livePhotoWallpaperSuggestionGroup];
    }

    else
    {
      backdropWallpaperSuggestionGroup = [MEMORY[0x1E6979178] wallpaperSuggestionGroup];
    }
  }

LABEL_22:
  v24 = backdropWallpaperSuggestionGroup;
  [v30 set_suggestionGroup:backdropWallpaperSuggestionGroup];

  posterConfiguration4 = [(PUWallpaperPosterEditorController *)self posterConfiguration];

  if (!posterConfiguration4)
  {
    [v30 _setAlwaysShowLoadingPlaceholder:1];
  }

  photoPickerViewController = [(PUWallpaperPosterEditorController *)self photoPickerViewController];

  if (!photoPickerViewController)
  {
    v27 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v30];
    [v27 setDelegate:self];
    presentationController = [v27 presentationController];
    [presentationController setDelegate:self];

    [(PUWallpaperPosterEditorController *)self setPhotoPickerViewController:v27];
  }

  photoPickerViewController2 = [(PUWallpaperPosterEditorController *)self photoPickerViewController];
  [(PUWallpaperPosterEditorController *)self _presentPosterConfigurationViewController:photoPickerViewController2];

  [(PUWallpaperPosterEditorController *)self _beginListeningForExtensionHostResignationNotification];
}

- (void)_updateProgressIndicator:(double)indicator
{
  progressIndicator = [(PUWallpaperPosterEditorController *)self progressIndicator];
  [progressIndicator currentProgress];
  v7 = v6;

  if (v7 < indicator)
  {
    progressIndicator2 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [progressIndicator2 setCurrentProgress:indicator];
  }
}

- (void)_hideProgressIndicator
{
  progressIndicator = [(PUWallpaperPosterEditorController *)self progressIndicator];
  [(PUWallpaperPosterEditorController *)self setProgressIndicator:0];
  if ([progressIndicator isShowingProgress])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __59__PUWallpaperPosterEditorController__hideProgressIndicator__block_invoke;
    v4[3] = &unk_1E7B80DD0;
    v5 = progressIndicator;
    [v5 endShowingProgressImmediately:1 animated:1 withCompletionHandler:v4];
  }
}

- (void)_showProgressIndicator:(id)indicator determinate:(BOOL)determinate
{
  determinateCopy = determinate;
  v27[2] = *MEMORY[0x1E69E9840];
  indicatorCopy = indicator;
  contentOverlayContainerView = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  progressIndicator = [(PUWallpaperPosterEditorController *)self progressIndicator];

  if (!progressIndicator)
  {
    v9 = [[PUProgressIndicatorView alloc] initWithStyle:0];
    [(PUWallpaperPosterEditorController *)self setProgressIndicator:v9];

    progressIndicator2 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [progressIndicator2 setLocalizedMessage:indicatorCopy];

    progressIndicator3 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [progressIndicator3 setDeterminate:determinateCopy];

    progressIndicator4 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [progressIndicator4 setShowsBackground:1];

    progressIndicator5 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [progressIndicator5 setTranslatesAutoresizingMaskIntoConstraints:0];

    progressIndicator6 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [progressIndicator6 beginShowingProgressImmediately:1 animated:1];

    progressIndicator7 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    [contentOverlayContainerView addSubview:progressIndicator7];

    v25 = MEMORY[0x1E696ACD8];
    progressIndicator8 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    centerXAnchor = [progressIndicator8 centerXAnchor];
    centerXAnchor2 = [contentOverlayContainerView centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v27[0] = v18;
    progressIndicator9 = [(PUWallpaperPosterEditorController *)self progressIndicator];
    centerYAnchor = [progressIndicator9 centerYAnchor];
    centerYAnchor2 = [contentOverlayContainerView centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v27[1] = v22;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v24 = v23 = indicatorCopy;
    [v25 activateConstraints:v24];

    indicatorCopy = v23;
  }
}

- (void)_hideLoadingIndicatorForReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = reasonCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "hideLoadingIndicatorForReason:%{public}@", &v11, 0xCu);
  }

  if ([(PUWallpaperPosterEditorController *)self isLoading])
  {
    [(PUWallpaperPosterEditorController *)self setIsLoading:0];
    loadingView = [(PUWallpaperPosterEditorController *)self loadingView];
    [loadingView setIsVisible:0];

    editModel = [(PUWallpaperPosterEditorController *)self editModel];
    [editModel performChanges:&__block_literal_global_519];

    v8 = PLWallpaperGetLog();
    signpost = [(PUWallpaperPosterEditorController *)self signpost];
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = signpost;
      if (os_signpost_enabled(v8))
      {
        LOWORD(v11) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_END, v10, "PUWallpaperPosterEditorController.Loading", "", &v11, 2u);
      }
    }
  }
}

- (void)_showLoadingIndicatorForReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = reasonCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "showLoadingIndicatorForReason:%{public}@", &v11, 0xCu);
  }

  if (![(PUWallpaperPosterEditorController *)self isLoading])
  {
    [(PUWallpaperPosterEditorController *)self setIsLoading:1];
    v6 = PLWallpaperGetLog();
    signpost = [(PUWallpaperPosterEditorController *)self signpost];
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = signpost;
      if (os_signpost_enabled(v6))
      {
        LOWORD(v11) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PUWallpaperPosterEditorController.Loading", "", &v11, 2u);
      }
    }

    editModel = [(PUWallpaperPosterEditorController *)self editModel];
    [editModel performChanges:&__block_literal_global_514];

    loadingView = [(PUWallpaperPosterEditorController *)self loadingView];
    [loadingView setIsVisible:1];
  }
}

- (void)_didDismissLoadingErrorAlertShouldCancel:(BOOL)cancel
{
  if (cancel)
  {
    presentedPosterConfigurationViewController = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

    if (presentedPosterConfigurationViewController)
    {
      return;
    }

    editor = [(PUWallpaperPosterEditorController *)self editor];
    [editor pu_requestDismissalWithAction:0];
  }

  else
  {
    editor = [(PUWallpaperPosterEditorController *)self editor];
    [editor pu_updateLooks];
  }
}

- (void)_presentLoadingErrorAlertController:(id)controller
{
  controllerCopy = controller;
  presentedPosterConfigurationViewController = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

  if (presentedPosterConfigurationViewController)
  {
    presentedPosterConfigurationViewController2 = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];
    [presentedPosterConfigurationViewController2 px_presentOverTopmostPresentedViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    presentedPosterConfigurationViewController2 = [(PUWallpaperPosterEditorController *)self editor];
    [presentedPosterConfigurationViewController2 presentViewController:controllerCopy animated:1 completion:0];
  }
}

- (void)_dismissPosterConfigurationViewControllerAndCancelEditor
{
  presentedPosterConfigurationViewController = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

  if (!presentedPosterConfigurationViewController)
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Expected presentedPosterConfigurationViewController", v6, 2u);
    }
  }

  [(PUWallpaperPosterEditorController *)self setPresentedPosterConfigurationViewController:0];
  editor = [(PUWallpaperPosterEditorController *)self editor];
  [editor pu_requestDismissalWithAction:0];
}

- (void)_dismissPosterConfigurationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  presentedPosterConfigurationViewController = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

  if (presentedPosterConfigurationViewController)
  {
    [(PUWallpaperPosterEditorController *)self setPresentedPosterConfigurationViewController:0];
    editor = [(PUWallpaperPosterEditorController *)self editor];
    [editor dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)_presentPosterConfigurationViewController:(id)controller
{
  controllerCopy = controller;
  presentedPosterConfigurationViewController = [(PUWallpaperPosterEditorController *)self presentedPosterConfigurationViewController];

  if (presentedPosterConfigurationViewController)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "should dismiss posterConfiguration ViewController before presenting another one", buf, 2u);
    }
  }

  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  [(PUWallpaperPosterEditorController *)self setOldPosterConfiguration:posterConfiguration];

  [(PUWallpaperPosterEditorController *)self setPresentedPosterConfigurationViewController:controllerCopy];
  posterConfiguration2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];

  if (posterConfiguration2)
  {
    editor = [(PUWallpaperPosterEditorController *)self editor];
    [editor presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    v10 = MEMORY[0x1E69DD258];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PUWallpaperPosterEditorController__presentPosterConfigurationViewController___block_invoke;
    v11[3] = &unk_1E7B80C38;
    v11[4] = self;
    v12 = controllerCopy;
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
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_posterType = [environment pu_posterType];

  if (pu_posterType == 2)
  {

    [(PUWallpaperPosterEditorController *)self _presentShuffleConfigurationEditor];
  }

  else if (pu_posterType == 1)
  {

    [(PUWallpaperPosterEditorController *)self _presentPhotoPicker];
  }
}

- (id)_initialLayerStyleForSegmentationItem:(id)item
{
  itemCopy = item;
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_posterDescriptor = [environment pu_posterDescriptor];
  styleCategory = [pu_posterDescriptor styleCategory];

  if (styleCategory)
  {
    [itemCopy suggestedStyleForCategory:styleCategory];
  }

  else
  {
    [itemCopy originalStyle];
  }
  v8 = ;

  return v8;
}

- (void)_presentLoadingError:(id)error
{
  errorCopy = error;
  v5 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_ASSET_LOADING_FAILED_TITLE");
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A978]])
  {
    code = [errorCopy code];

    if (code == -1009)
    {
      v8 = 1;
      v9 = @"PHOTOS_WALLPAPER_EDITOR_ASSET_LOADING_FAILED_MESSAGE_CONNECTION";
      goto LABEL_23;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  v11 = [domain2 isEqualToString:*MEMORY[0x1E69C0BC8]];

  if (!v11)
  {
    v8 = 1;
    v12 = v5;
    goto LABEL_24;
  }

  v12 = PULocalizedString(@"PHOTOS_WALLPAPER_EDITOR_SPATIAL_FAILED_TITLE");

  code2 = [errorCopy code];
  v8 = 0;
  if (code2 > 1002)
  {
    if (code2 > 1004)
    {
      if (code2 == 1005)
      {
        v8 = 0;
        v9 = @"PHOTOS_WALLPAPER_EDITOR_SPATIAL_MODEL_LOADING_FAILED_NETWORK_ERROR";
      }

      else
      {
        if (code2 != 1006)
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
      if (code2 == 1003)
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

  if (code2 == 1000)
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

  if (code2 == 1001)
  {
    v8 = 0;
    v9 = @"PHOTOS_WALLPAPER_EDITOR_SPATIAL_FAILED_GENERIC";
    goto LABEL_22;
  }

  if (code2 != 1002)
  {
    goto LABEL_24;
  }

LABEL_26:
}

- (void)_presentLoadingError:(id)error forAsset:(id)asset
{
  errorCopy = error;
  assetCopy = asset;
  environment = [(PUWallpaperPosterEditorController *)self environment];

  if (environment)
  {
    v9 = assetCopy;
    if (errorCopy)
    {
      v10 = errorCopy;
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

- (void)_didFinishCreatingEditViewModel:(id)model forAsset:(id)asset error:(id)error
{
  modelCopy = model;
  assetCopy = asset;
  errorCopy = error;
  environment = [(PUWallpaperPosterEditorController *)self environment];

  if (!environment)
  {
    goto LABEL_17;
  }

  [(PUWallpaperPosterEditorController *)self setEditViewModel:modelCopy];
  if (!modelCopy)
  {
    if ([(PUWallpaperPosterEditorController *)self isCancellingMediaLoading])
    {
      if (!errorCopy)
      {
        goto LABEL_12;
      }

      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A250]])
      {
        code = [errorCopy code];

        if (code == 3072)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    if (assetCopy)
    {
      [(PUWallpaperPosterEditorController *)self _presentLoadingError:errorCopy forAsset:assetCopy];
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _presentLoadingError:errorCopy];
    }
  }

LABEL_12:
  [(PUWallpaperPosterEditorController *)self _hideLoadingIndicatorForReason:@"didFinishCreatingEditViewModel"];
  if ([(PUWallpaperPosterEditorController *)self fadeInInitialLoad]&& [(PUWallpaperPosterEditorController *)self isPerformingInitialLoad])
  {
    [(PUWallpaperPosterEditorController *)self _fadeInViews];
  }

  [(PUWallpaperPosterEditorController *)self setPerformingInitialLoad:0];
  mediaLoadedCompletionHandler = [(PUWallpaperPosterEditorController *)self mediaLoadedCompletionHandler];

  if (mediaLoadedCompletionHandler)
  {
    mediaLoadedCompletionHandler2 = [(PUWallpaperPosterEditorController *)self mediaLoadedCompletionHandler];
    currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
    assetUUID = [currentPosterMedia assetUUID];
    (mediaLoadedCompletionHandler2)[2](mediaLoadedCompletionHandler2, modelCopy != 0, assetUUID, errorCopy);
  }

LABEL_17:
}

- (void)_handlePhotoEffectsLoadedWithSegmentationItem:(id)item layerStack:(id)stack
{
  itemCopy = item;
  stackCopy = stack;
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];

  if (itemCopy && editViewModel)
  {
    editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__PUWallpaperPosterEditorController__handlePhotoEffectsLoadedWithSegmentationItem_layerStack___block_invoke;
    v10[3] = &unk_1E7B784F0;
    v11 = itemCopy;
    v12 = stackCopy;
    [editViewModel2 performChanges:v10];
  }
}

- (void)_loadSettlingEffectLayerStackForSegmentationItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x1E69BDEB8];
  itemCopy = item;
  v9 = [[v7 alloc] initWithSegmentationItem:itemCopy];

  [v9 setResponseQueue:MEMORY[0x1E69E96A0]];
  v10 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:1];
  [v9 setPriority:v10];

  [v9 setLayerStackMode:7];
  [v9 setSettlingEffectEnabled:0];
  segmentationLoadingGroup = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
  dispatch_group_enter(segmentationLoadingGroup);
  [MEMORY[0x1E69B3C60] begin];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__PUWallpaperPosterEditorController__loadSettlingEffectLayerStackForSegmentationItem_completion___block_invoke;
  v18[3] = &unk_1E7B805C0;
  v19 = completionCopy;
  v12 = completionCopy;
  [v9 submit:v18];
  [(PUWallpaperPosterEditorController *)self setSettlingEffectRequest:v9];
  v13 = MEMORY[0x1E69B3C60];
  queue = [(PUWallpaperPosterEditorController *)self queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__PUWallpaperPosterEditorController__loadSettlingEffectLayerStackForSegmentationItem_completion___block_invoke_465;
  v16[3] = &unk_1E7B80DD0;
  v17 = segmentationLoadingGroup;
  v15 = segmentationLoadingGroup;
  [v13 commitAndNotifyOnQueue:queue withBlock:v16];
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

- (void)_sendSettlingEffectGatingAnalyticsWithSegmentationItem:(id)item
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v3 = MEMORY[0x1E69BDF28];
  scores = [item scores];
  [v3 settlingEffectGatingStatisticsFromScores:scores];

  v6 = v10;
  v7 = v11;
  v8 = v12;
  LODWORD(v9) = v13;
  v5 = PFPosterSettlingEffectGatingStatisticsAnalyticsPayload();
  [MEMORY[0x1E6991F28] sendEvent:*MEMORY[0x1E69C0D68] withPayload:{v5, v6, v7, v8, v9}];
}

- (void)_handleAsyncPhotoEffectLoadedWithSegmentationItem:(id)item
{
  location[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];

  if (editViewModel)
  {
    if ([itemCopy isSettlingEffectAvailable])
    {
      objc_initWeak(location, self);
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __87__PUWallpaperPosterEditorController__handleAsyncPhotoEffectLoadedWithSegmentationItem___block_invoke;
      v11 = &unk_1E7B784C8;
      objc_copyWeak(&v13, location);
      v12 = itemCopy;
      [(PUWallpaperPosterEditorController *)self _loadSettlingEffectLayerStackForSegmentationItem:v12 completion:&v8];

      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _handlePhotoEffectsLoadedWithSegmentationItem:itemCopy layerStack:0];
    }

    if ([itemCopy settlingEffectFailedAnyGating])
    {
      v6 = PLWallpaperGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        settlingEffectGatingDiagnostics = [itemCopy settlingEffectGatingDiagnostics];
        LODWORD(location[0]) = 138412290;
        *(location + 4) = settlingEffectGatingDiagnostics;
        _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_INFO, "Settling effect diagnostics: %@", location, 0xCu);
      }

      if ([itemCopy settlingEffectFailedUnexpectedly])
      {
        [(PUWallpaperPosterEditorController *)self _presentSettlingEffectDebugView:itemCopy];
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

- (void)_renderInitialLayerStack:(id)stack style:(id)style completion:(id)completion
{
  styleCopy = style;
  completionCopy = completion;
  v10 = MEMORY[0x1E69BDEA0];
  stackCopy = stack;
  v12 = [[v10 alloc] initWithSegmentationItem:stackCopy];
  [v12 setResponseQueue:MEMORY[0x1E69E96A0]];
  v13 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v12 setPriority:v13];

  [v12 setSettlingEffectEnabled:{objc_msgSend(stackCopy, "isSettlingEffectAvailable")}];
  [v12 setSpatialPhotoEnabled:{objc_msgSend(stackCopy, "spatialPhotoStatus") == 5}];
  spatialPhotoStatus = [stackCopy spatialPhotoStatus];

  if (spatialPhotoStatus >= 3)
  {
    currentEditConfiguration = [(PUWallpaperPosterEditorController *)self currentEditConfiguration];
    isSpatialPhotoEnabled = [currentEditConfiguration isSpatialPhotoEnabled];

    if (isSpatialPhotoEnabled)
    {
      [v12 setSpatialPhotoEnabled:1];
    }
  }

  environment = [(PUWallpaperPosterEditorController *)self environment];
  [v12 setFullPhotoLuminanceCalculationEnabled:{objc_msgSend(environment, "px_isBackdrop")}];

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
  if (styleCopy)
  {
    v19 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:styleCopy];
    [v12 setStyle:v19];

    kind = [styleCopy kind];
    v21 = [kind isEqualToString:*MEMORY[0x1E69C0B28]];

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
  segmentationLoadingGroup = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
  dispatch_group_enter(segmentationLoadingGroup);
  [MEMORY[0x1E69B3C60] begin];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __79__PUWallpaperPosterEditorController__renderInitialLayerStack_style_completion___block_invoke;
  v30[3] = &unk_1E7B805C0;
  v31 = completionCopy;
  v24 = completionCopy;
  [v12 submit:v30];
  [(PUWallpaperPosterEditorController *)self setLayerStackRequest:v12];
  v25 = MEMORY[0x1E69B3C60];
  queue = [(PUWallpaperPosterEditorController *)self queue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79__PUWallpaperPosterEditorController__renderInitialLayerStack_style_completion___block_invoke_461;
  v28[3] = &unk_1E7B80DD0;
  v29 = segmentationLoadingGroup;
  v27 = segmentationLoadingGroup;
  [v25 commitAndNotifyOnQueue:queue withBlock:v28];
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

  _isShuffle = [(PUWallpaperPosterEditorController *)self _isShuffle];
  if (_isShuffle)
  {
    posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    shuffleConfiguration = [posterConfiguration shuffleConfiguration];
    shuffleType = [shuffleConfiguration shuffleType];
    if (shuffleType <= 2 && (shuffleType & 1) == 0)
    {
      v7 = 1;
LABEL_8:

      return v7;
    }
  }

  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  v7 = [currentPosterMedia mediaType] == 2;

  if (_isShuffle)
  {
    goto LABEL_8;
  }

  return v7;
}

- (id)_adjustedCompoundLayerStackForAdaptiveLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
  {
    v4 = +[PUPosterSettings sharedInstance];
    recalculateLayoutProperties = [v4 recalculateLayoutProperties];

    if (recalculateLayoutProperties)
    {
      portraitLayerStack = [layoutCopy portraitLayerStack];
      landscapeLayerStack = [layoutCopy landscapeLayerStack];
      v8 = __82__PUWallpaperPosterEditorController__adjustedCompoundLayerStackForAdaptiveLayout___block_invoke(portraitLayerStack);

      v9 = __82__PUWallpaperPosterEditorController__adjustedCompoundLayerStackForAdaptiveLayout___block_invoke(landscapeLayerStack);

      v10 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v8 landscapeLayerStack:v9];
    }

    else
    {
      v10 = layoutCopy;
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

- (void)_handleLoadedCompoundLayerStack:(id)stack error:(id)error segmentationItem:(id)item style:(id)style completion:(id)completion
{
  stackCopy = stack;
  errorCopy = error;
  itemCopy = item;
  styleCopy = style;
  completionCopy = completion;
  if (itemCopy)
  {
    portraitLayerStack = [stackCopy portraitLayerStack];

    if (portraitLayerStack)
    {
      v18 = objc_opt_class();
      posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
      v39 = [v18 availableStylesForItem:itemCopy posterConfiguration:posterConfiguration];

      v38 = [(PUWallpaperPosterEditorController *)self _adjustedCompoundLayerStackForAdaptiveLayout:stackCopy];
      if (![(PUWallpaperPosterEditorController *)self _isSmartShuffle])
      {
        environment = [(PUWallpaperPosterEditorController *)self environment];
        if (![environment px_isBackdrop])
        {
          environment2 = [(PUWallpaperPosterEditorController *)self environment];
          px_isCallServices = [environment2 px_isCallServices];

          if (px_isCallServices)
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

          environment3 = [(PUWallpaperPosterEditorController *)self environment];
          px_isBackdrop = [environment3 px_isBackdrop];

          if (px_isBackdrop)
          {
            v26 |= 0x58uLL;
          }

          environment4 = [(PUWallpaperPosterEditorController *)self environment];
          px_isCallServices2 = [environment4 px_isCallServices];

          if (px_isCallServices2)
          {
            v31 = v26 | 4;
          }

          else
          {
            v31 = v26;
          }

          v32 = [PUParallaxLayerStackViewModel alloc];
          environment5 = [(PUWallpaperPosterEditorController *)self environment];
          v34 = -[PUParallaxLayerStackViewModel initWithSegmentationItem:initialStyle:compoundLayerStack:deviceOrientation:allowedBehaviors:](v32, "initWithSegmentationItem:initialStyle:compoundLayerStack:deviceOrientation:allowedBehaviors:", itemCopy, styleCopy, v38, [environment5 pu_deviceOrientation], v31);

          v35 = [PUWallpaperPosterEditViewModel alloc];
          environment6 = [(PUWallpaperPosterEditorController *)self environment];
          v37 = -[PUWallpaperPosterEditViewModel initWithInitialLayerStackViewModel:availableStyles:environmentIsBackdrop:isUserTransformDisabled:](v35, "initWithInitialLayerStackViewModel:availableStyles:environmentIsBackdrop:isUserTransformDisabled:", v34, v39, [environment6 px_isBackdrop], -[PUWallpaperPosterEditorController _posterWantsUserTransformDisabled](self, "_posterWantsUserTransformDisabled"));

          completionCopy[2](completionCopy, v37, 0);
          goto LABEL_24;
        }
      }

      v21 = 0;
      goto LABEL_15;
    }
  }

  portraitLayerStack2 = [stackCopy portraitLayerStack];

  if (!portraitLayerStack2)
  {
    v23 = PLWallpaperGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, "Cannot create view model due to missing portrait layer stack", buf, 2u);
    }
  }

  (completionCopy)[2](completionCopy, 0, errorCopy);
LABEL_24:
}

- (void)_loadEditViewModelWithSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style completion:(id)completion
{
  itemCopy = item;
  stackCopy = stack;
  styleCopy = style;
  completionCopy = completion;
  if (!styleCopy)
  {
    styleCopy = [(PUWallpaperPosterEditorController *)self _initialLayerStyleForSegmentationItem:itemCopy];
  }

  v14 = [(PUWallpaperPosterEditorController *)self _sanitizeCompoundLayerStack:stackCopy forSegmentationItem:itemCopy];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__PUWallpaperPosterEditorController__loadEditViewModelWithSegmentationItem_compoundLayerStack_style_completion___block_invoke;
  aBlock[3] = &unk_1E7B784A0;
  objc_copyWeak(&v24, &location);
  v15 = itemCopy;
  v21 = v15;
  v16 = styleCopy;
  v22 = v16;
  v17 = completionCopy;
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

- (void)_handleSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style forAsset:(id)asset error:(id)error
{
  itemCopy = item;
  stackCopy = stack;
  styleCopy = style;
  assetCopy = asset;
  errorCopy = error;
  environment = [(PUWallpaperPosterEditorController *)self environment];

  if (environment)
  {
    if (itemCopy)
    {
      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __101__PUWallpaperPosterEditorController__handleSegmentationItem_compoundLayerStack_style_forAsset_error___block_invoke;
      v18[3] = &unk_1E7B78478;
      objc_copyWeak(&v20, &location);
      v19 = assetCopy;
      [(PUWallpaperPosterEditorController *)self _loadEditViewModelWithSegmentationItem:itemCopy compoundLayerStack:stackCopy style:styleCopy completion:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self _didFinishCreatingEditViewModel:0 forAsset:assetCopy error:errorCopy];
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

- (id)_sanitizeCompoundLayerStack:(id)stack forSegmentationItem:(id)item
{
  stackCopy = stack;
  itemCopy = item;
  v8 = itemCopy;
  if (!stackCopy || !itemCopy)
  {
    goto LABEL_15;
  }

  if (![itemCopy isSettlingEffectAvailable] || (objc_msgSend(v8, "settlingEffectNormalizedBounds"), CGRectIsEmpty(v19)))
  {
    v9 = [stackCopy compoundLayerStackByUpdatingSettlingEffectEnabled:0];

    stackCopy = v9;
  }

  originalLayout = [v8 originalLayout];
  if ([originalLayout supportsBothOrientations])
  {
    portraitLayerStack = [stackCopy portraitLayerStack];
    if (portraitLayerStack)
    {
      v12 = portraitLayerStack;
      landscapeLayerStack = [stackCopy landscapeLayerStack];

      if (landscapeLayerStack)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    originalLayout = stackCopy;
    stackCopy = 0;
  }

LABEL_13:
  editModel = [(PUWallpaperPosterEditorController *)self editModel];
  depthEffectDisabled = [editModel depthEffectDisabled];

  if (depthEffectDisabled)
  {
    v16 = [stackCopy compoundLayerStackByUpdatingPortraitDepthEnabled:0 landscapeDepthEnabled:0];

    stackCopy = v16;
  }

LABEL_15:

  return stackCopy;
}

- (void)_handleShuffleSegmentationItem:(id)item compoundLayerStack:(id)stack editConfiguration:(id)configuration forPosterMedia:(id)media error:(id)error
{
  itemCopy = item;
  stackCopy = stack;
  configurationCopy = configuration;
  mediaCopy = media;
  errorCopy = error;
  environment = [(PUWallpaperPosterEditorController *)self environment];

  if (environment)
  {
    currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];

    if (currentPosterMedia == mediaCopy)
    {
      if (configurationCopy)
      {
        v18 = [configurationCopy copy];
        currentPosterMedia2 = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
        [currentPosterMedia2 setEditConfiguration:v18];
      }

      style = [configurationCopy style];
      if (!style)
      {
        editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
        currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
        style2 = [currentLayerStackViewModel style];
        style = [style2 bakedStyle];
      }

      [(PUWallpaperPosterEditorController *)self _handleSegmentationItem:itemCopy compoundLayerStack:stackCopy style:style forAsset:0 error:errorCopy];
      if (!itemCopy)
      {
        [(PUWallpaperPosterEditorController *)self setCurrentPosterMedia:0];
      }
    }
  }
}

- (void)_loadParallaxAsset:(id)asset
{
  v57 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  shouldLoadSettlingEffectSynchronously = [(PUWallpaperPosterEditorController *)self shouldLoadSettlingEffectSynchronously];
  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (shouldLoadSettlingEffectSynchronously)
    {
      v8 = @"synchronous";
    }

    else
    {
      v8 = @"asynchronous";
    }

    localIdentifier = [assetCopy localIdentifier];
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = localIdentifier;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_INFO, "Segmenting asset, %@ settling effect: %{public}@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  segmentationLoadingGroup = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
  dispatch_group_enter(segmentationLoadingGroup);
  v11 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:assetCopy];
  environment = [(PUWallpaperPosterEditorController *)self environment];
  [environment px_titleBoundsForLayout:0];
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
      editor = [(PUWallpaperPosterEditorController *)self editor];
      contentOverlayView = [editor contentOverlayView];
      [contentOverlayView frame];
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
      editor2 = [(PUWallpaperPosterEditorController *)self editor];
      contentOverlayView2 = [editor2 contentOverlayView];
      [contentOverlayView2 frame];
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
    currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
    v39 = currentPosterMedia == 0;

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

  if (!shouldLoadSettlingEffectSynchronously)
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
  v49 = shouldLoadSettlingEffectSynchronously;
  v48[1] = a2;
  v45 = buf;
  v43[4] = self;
  objc_copyWeak(v48, &location);
  v46 = v53;
  v47 = v52;
  v42 = segmentationLoadingGroup;
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

- (void)_loadAssetWithUUID:(id)d
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v7 = MEMORY[0x1E6978630];
  v17[0] = dCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v9 = [v7 fetchAssetsWithUUIDs:v8 options:librarySpecificFetchOptions];
  firstObject = [v9 firstObject];

  if (firstObject)
  {
    v11 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:firstObject];
    [(PUWallpaperPosterEditorController *)self _loadParallaxAsset:v11];
  }

  else
  {
    v12 = PLWallpaperGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = dCopy;
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

- (void)_reloadAssetUUID:(id)d fromWallpaperURL:(id)l
{
  v31[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E6978630];
  v31[0] = dCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v12 = [v8 fetchAssetsWithUUIDs:v9 options:librarySpecificFetchOptions];
  firstObject = [v12 firstObject];

  if (firstObject)
  {
    segmentationLoadingGroup = [(PUWallpaperPosterEditorController *)self segmentationLoadingGroup];
    dispatch_group_enter(segmentationLoadingGroup);
    v15 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:firstObject];
    v16 = MEMORY[0x1E69BDF40];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__PUWallpaperPosterEditorController__reloadAssetUUID_fromWallpaperURL___block_invoke;
    v23[3] = &unk_1E7B78400;
    v17 = segmentationLoadingGroup;
    v24 = v17;
    objc_copyWeak(&v27, &location);
    v25 = dCopy;
    selfCopy = self;
    v18 = [v16 reloadSegmentationItemFromWallpaperURL:lCopy asset:v15 completion:v23];
    [(PUWallpaperPosterEditorController *)self setSegmentationLoading:v18];

    objc_destroyWeak(&v27);
  }

  else
  {
    v19 = PLWallpaperGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = dCopy;
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

- (BOOL)_tryLoadAssetUUID:(id)d fromWallpaperURL:(id)l
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  v37 = 0;
  v8 = [MEMORY[0x1E69BDF40] loadCompoundLayerStackFromWallpaperURL:lCopy options:1347 error:&v37];
  v9 = v37;
  if (v8)
  {
    currentEditConfiguration = [(PUWallpaperPosterEditorController *)self currentEditConfiguration];
    style = [currentEditConfiguration style];

    if (!style)
    {
      v36 = 0;
      style = [MEMORY[0x1E69BDF40] loadStyleFromWallpaperURL:lCopy error:&v36];
      v12 = v36;
      if (!style)
      {
        v13 = PLWallpaperGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v40 = dCopy;
          v41 = 2114;
          v42 = v12;
          _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Failed to load style for asset: %{public}@, error: %{public}@", buf, 0x16u);
        }
      }
    }

    v35 = v9;
    v14 = [MEMORY[0x1E69BDF40] loadSegmentationItemFromWallpaperURL:lCopy error:&v35];
    v15 = v35;

    v16 = v14 != 0;
    if (v14)
    {
      if ([v14 spatialPhotoStatus] || !-[PUWallpaperPosterEditorController _isSpatialPhotoPossible](self, "_isSpatialPhotoPossible"))
      {
        [(PUWallpaperPosterEditorController *)self _handleSegmentationItem:v14 compoundLayerStack:v8 style:style forAsset:0 error:v15];
      }

      else
      {
        v17 = PLWallpaperGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v40 = dCopy;
          _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "Loading spatial status for asset: %{public}@", buf, 0xCu);
        }

        [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"reloadSegmentationItemSpatial"];
        if (dCopy && (v18 = MEMORY[0x1E6978630], v38 = dCopy, [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1], v24 = objc_claimAutoreleasedReturnValue(), -[PUWallpaperPosterEditorController photoLibrary](self, "photoLibrary"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "librarySpecificFetchOptions"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "fetchAssetsWithUUIDs:options:", v24, v23), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "firstObject"), v27 = objc_claimAutoreleasedReturnValue(), v19, v23, v25, v24, v27))
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
        v29 = dCopy;
        v30 = v14;
        objc_copyWeak(&v34, buf);
        v31 = v8;
        v32 = style;
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
        v40 = dCopy;
        v41 = 2114;
        v42 = v15;
        _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "Failed to load segmentation item for asset: %{public}@, error: %{public}@", buf, 0x16u);
      }
    }

    v9 = v15;
  }

  else
  {
    style = PLWallpaperGetLog();
    if (os_log_type_enabled(style, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v40 = dCopy;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&dword_1B36F3000, style, OS_LOG_TYPE_INFO, "Failed to load layer stack for asset: %{public}@, error: %{public}@", buf, 0x16u);
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

- (void)_loadAssetUUID:(id)d fromWallpaperURL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  v8 = PLWallpaperGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = lCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "Attempt to load wallpaper for editing from poster url: %{public}@", buf, 0xCu);
  }

  if (![(PUWallpaperPosterEditorController *)self _tryLoadAssetUUID:dCopy fromWallpaperURL:lCopy])
  {
    environment = [(PUWallpaperPosterEditorController *)self environment];
    px_isCallServices = [environment px_isCallServices];

    if ((px_isCallServices & 1) != 0 || (PUWallpaperCacheDirectoryURL(), v11 = objc_claimAutoreleasedReturnValue(), [lCopy lastPathComponent], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "URLByAppendingPathComponent:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, LOBYTE(v11) = -[PUWallpaperPosterEditorController _tryLoadAssetUUID:fromWallpaperURL:](self, "_tryLoadAssetUUID:fromWallpaperURL:", dCopy, v13), v13, (v11 & 1) == 0))
    {
      [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadAssetUUID"];
      objc_initWeak(buf, self);
      queue = [(PUWallpaperPosterEditorController *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PUWallpaperPosterEditorController__loadAssetUUID_fromWallpaperURL___block_invoke;
      block[3] = &unk_1E7B7F820;
      objc_copyWeak(&v18, buf);
      v16 = dCopy;
      v17 = lCopy;
      dispatch_async(queue, block);

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

- (void)_loadImagePosterMedia:(id)media
{
  mediaCopy = media;
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_sourceAssetDirectory = [environment pu_sourceAssetDirectory];

  assetUUID = [mediaCopy assetUUID];
  if (!pu_sourceAssetDirectory)
  {
    goto LABEL_6;
  }

  subpath = [mediaCopy subpath];
  v8 = [pu_sourceAssetDirectory URLByAppendingPathComponent:subpath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v8 path];
  v11 = [defaultManager fileExistsAtPath:path];

  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = [(PUWallpaperPosterEditorController *)self _tryLoadAssetUUID:assetUUID fromWallpaperURL:v8];

  if (!v12)
  {
LABEL_6:
    v13 = objc_alloc(MEMORY[0x1E69BDE78]);
    imageURL = [mediaCopy imageURL];
    v15 = [v13 initWithFileURL:imageURL];

    [(PUWallpaperPosterEditorController *)self _loadParallaxAsset:v15];
  }
}

- (void)_loadAssetPosterMedia:(id)media
{
  mediaCopy = media;
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_sourceAssetDirectory = [environment pu_sourceAssetDirectory];

  assetUUID = [mediaCopy assetUUID];
  if (!pu_sourceAssetDirectory)
  {
    goto LABEL_5;
  }

  subpath = [mediaCopy subpath];
  v9 = [pu_sourceAssetDirectory URLByAppendingPathComponent:subpath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v9 path];
  v12 = [defaultManager fileExistsAtPath:path];

  if (v12)
  {
    [(PUWallpaperPosterEditorController *)self _loadAssetUUID:assetUUID fromWallpaperURL:v9];
  }

  if (v12 != 1)
  {
LABEL_5:
    if (assetUUID)
    {
      [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadAssetPosterMedia"];
      objc_initWeak(&location, self);
      queue = [(PUWallpaperPosterEditorController *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__PUWallpaperPosterEditorController__loadAssetPosterMedia___block_invoke;
      block[3] = &unk_1E7B80610;
      objc_copyWeak(&v16, &location);
      v15 = assetUUID;
      dispatch_async(queue, block);

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
  currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
  [(PUWallpaperPosterEditorController *)self setLoadingSettlingEffect:0];
  if (!currentPosterMedia)
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
    shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__PUWallpaperPosterEditorController__loadContentForCurrentPosterMedia__block_invoke;
    v21[3] = &unk_1E7B78388;
    objc_copyWeak(&v24, &location);
    v22 = currentPosterMedia;
    v23 = &v25;
    [shuffleResourceManager requestResourceForPosterMedia:v22 completion:v21];

    if ((v26[3] & 1) == 0 && ![(PUWallpaperPosterEditorController *)self isPerformingInitialLoad])
    {
      [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadContentForCurrentPosterMedia"];
    }

    shuffleAssetIndex = [(PUWallpaperPosterEditorController *)self shuffleAssetIndex];
    posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    media = [posterConfiguration media];
    v9 = [media count];

    posterConfiguration2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
    media2 = [posterConfiguration2 media];
    v12 = [media2 objectAtIndexedSubscript:(shuffleAssetIndex + 1) % v9];

    shuffleResourceManager2 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    [shuffleResourceManager2 preloadResourceForPosterMedia:v12];

    objc_destroyWeak(&v24);
    _Block_object_dispose(&v25, 8);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

  mediaType = [currentPosterMedia mediaType];
  if (mediaType <= 2)
  {
    if ((mediaType - 1) < 2)
    {
      [(PUWallpaperPosterEditorController *)self _loadAssetPosterMedia:currentPosterMedia];
      goto LABEL_16;
    }

    if (mediaType)
    {
      goto LABEL_16;
    }

LABEL_18:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:1011 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (mediaType != 4)
  {
    if (mediaType != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v15 = currentPosterMedia;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [v15 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"currentPosterMedia", v19, px_descriptionForAssertionMessage}];
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

- (void)setIsLoading:(BOOL)loading
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_isLoading != loading)
  {
    loadingCopy = loading;
    self->_isLoading = loading;
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (loadingCopy)
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

- (void)setFinalizationState:(unint64_t)state
{
  if (self->_finalizationState != state)
  {
    self->_finalizationState = state;
    [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyro];
  }
}

- (void)setIsCancellingMediaLoading:(BOOL)loading
{
  if (self->_isCancellingMediaLoading != loading)
  {
    self->_isCancellingMediaLoading = loading;
    if (loading)
    {
      segmentationLoading = [(PUWallpaperPosterEditorController *)self segmentationLoading];
      [segmentationLoading cancel];

      shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
      [shuffleResourceManager stopPreloadingResources];
    }
  }
}

- (void)setCurrentPosterMedia:(id)media
{
  mediaCopy = media;
  v6 = mediaCopy;
  if (self->_currentPosterMedia != mediaCopy)
  {
    v8 = mediaCopy;
    mediaCopy = [mediaCopy isEqual:?];
    v6 = v8;
    if ((mediaCopy & 1) == 0)
    {
      currentPosterMedia = self->_currentPosterMedia;
      objc_storeStrong(&self->_currentPosterMedia, media);
      [(PUWallpaperPosterEditorController *)self setCurrentPosterMediaIsLivePhoto:0];
      if (!currentPosterMedia || !self->_currentPosterMedia)
      {
        [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      }

      mediaCopy = [(PUWallpaperPosterEditorController *)self _loadContentForCurrentPosterMedia];
      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](mediaCopy, v6);
}

- (void)_handleUpdatedConfiguration:(id)configuration segmentationItem:(id)item compoundLayerStack:(id)stack error:(id)error
{
  errorCopy = error;
  stackCopy = stack;
  itemCopy = item;
  configurationCopy = configuration;
  [(PUWallpaperPosterEditorController *)self _hideLoadingIndicatorForReason:@"handleUpdatedConfiguration"];
  v13 = [configurationCopy copy];

  [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v13];
  [(PUWallpaperPosterEditorController *)self _handleSegmentationItem:itemCopy compoundLayerStack:stackCopy style:0 forAsset:0 error:errorCopy];
}

- (void)_loadSourcePosterConfiguration
{
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_sourcePosterConfiguration = [environment pu_sourcePosterConfiguration];

  if (([pu_sourcePosterConfiguration options] & 8) != 0)
  {
    [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadSourcePosterConfiguration"];
    v11 = [PUWallpaperConfigurationUpdater alloc];
    photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
    environment2 = [(PUWallpaperPosterEditorController *)self environment];
    pu_sourcePosterConfiguration2 = [environment2 pu_sourcePosterConfiguration];
    environment3 = [(PUWallpaperPosterEditorController *)self environment];
    pu_targetAssetDirectory = [environment3 pu_targetAssetDirectory];
    environment4 = [(PUWallpaperPosterEditorController *)self environment];
    pu_overrideConfiguration = [environment4 pu_overrideConfiguration];
    v10 = [(PUWallpaperConfigurationUpdater *)v11 initWithPhotoLibrary:photoLibrary sourceConfiguration:pu_sourcePosterConfiguration2 targetAssetDirectory:pu_targetAssetDirectory overrideConfiguration:pu_overrideConfiguration];

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
    if (!pu_sourcePosterConfiguration)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:910 description:@"Missing source poster configuration"];
    }

    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      shuffleConfiguration = [pu_sourcePosterConfiguration shuffleConfiguration];

      if (!shuffleConfiguration)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:912 description:@"Missing source poster shuffle configuration"];
      }

      media = [pu_sourcePosterConfiguration media];
      environment5 = [(PUWallpaperPosterEditorController *)self environment];
      px_significantEventsCounter = [environment5 px_significantEventsCounter];

      self->_shuffleAssetIndex = +[PUPosterUtilities mediaIndexWithSeed:mediaCount:](PUPosterUtilities, "mediaIndexWithSeed:mediaCount:", px_significantEventsCounter, [media count]);
    }

    v10 = [pu_sourcePosterConfiguration copy];
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
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_posterDescriptor = [environment pu_posterDescriptor];

  v5 = pu_posterDescriptor;
  if (!pu_posterDescriptor)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:831 description:{@"Invalid parameter not satisfying: %@", @"posterDescriptor"}];

    v5 = 0;
  }

  if (([v5 isBlankTemplate] & 1) != 0 || objc_msgSend(pu_posterDescriptor, "descriptorType") == 2)
  {
    [(PUWallpaperPosterEditorController *)self _pickAssets];
  }

  else
  {
    v6 = [objc_opt_class() posterConfigurationFromPosterDescriptor:pu_posterDescriptor];
    if (!v6)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:838 description:@"Missing poster configuration"];
    }

    if ([(PUWallpaperPosterEditorController *)self _isShuffle])
    {
      shuffleConfiguration = [v6 shuffleConfiguration];

      if (!shuffleConfiguration)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:840 description:@"Missing poster shuffle configuration"];
      }
    }

    media = [pu_posterDescriptor media];
    [v6 setMedia:media];

    [(PUWallpaperPosterEditorController *)self setPosterConfiguration:v6];
  }
}

- (void)_beginLoadingShuffleResources
{
  [(PUWallpaperPosterEditorController *)self _createShuffleResourceManager];
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  media = [posterConfiguration media];
  [shuffleResourceManager startPreloadingResourcesForPosterMedia:media];

  if (![(PUWallpaperPosterEditorController *)self isAnySmartAlbumAvailable])
  {
    [(PUWallpaperPosterEditorController *)self _updateSmartAlbumAvailability];
  }
}

- (void)_createShuffleResourceManager
{
  shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  [shuffleResourceManager stopPreloadingResources];

  shuffleResourceManager2 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  shuffleResourceManager3 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
  style = [shuffleResourceManager3 style];

  if (style)
  {
    shuffleResourceManager4 = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    style2 = [shuffleResourceManager4 style];
LABEL_5:
    v28 = style2;
    goto LABEL_6;
  }

  editConfiguration = [posterConfiguration editConfiguration];
  shuffleResourceManager4 = [editConfiguration style];

  if (shuffleResourceManager4)
  {
    style2 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:shuffleResourceManager4];
    goto LABEL_5;
  }

  v28 = 0;
LABEL_6:

  posterConfiguration2 = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  editConfiguration2 = [posterConfiguration2 editConfiguration];
  style3 = [editConfiguration2 style];

  if (style3)
  {
    v13 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:style3];
  }

  else
  {
    v13 = 0;
  }

  _shuffleType = [(PUWallpaperPosterEditorController *)self _shuffleType];
  v15 = [PUWallpaperShuffleResourceManager alloc];
  media = [posterConfiguration media];
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_sourceAssetDirectory = [environment pu_sourceAssetDirectory];
  photoLibrary = [(PUWallpaperPosterEditorController *)self photoLibrary];
  v20 = [(PUWallpaperShuffleResourceManager *)v15 initWithPosterMedia:media style:v28 assetDirectory:pu_sourceAssetDirectory persistedStyle:v13 photoLibrary:photoLibrary shuffleType:_shuffleType];
  [(PUWallpaperPosterEditorController *)self setShuffleResourceManager:v20];

  [(PUWallpaperPosterEditorController *)self _setShuffleEffect:2 supported:[(PUWallpaperPosterEditorController *)self _isSpatialPhotoPossible]];
  if (_shuffleType != 1)
  {
    if (shuffleResourceManager2)
    {
      -[PUWallpaperPosterEditorController _setShuffleEffect:enabled:](self, "_setShuffleEffect:enabled:", 1, [shuffleResourceManager2 enabledEffects] & 1);
      isSpatialPhotoEnabled = ([shuffleResourceManager2 enabledEffects] >> 1) & 1;
    }

    else
    {
      editConfiguration3 = [posterConfiguration editConfiguration];

      if (editConfiguration3)
      {
        editConfiguration4 = [posterConfiguration editConfiguration];
        isDepthEnabled = [editConfiguration4 isDepthEnabled];
      }

      else
      {
        isDepthEnabled = 1;
      }

      [(PUWallpaperPosterEditorController *)self _setShuffleEffect:1 enabled:isDepthEnabled];
      editConfiguration5 = [posterConfiguration editConfiguration];

      if (editConfiguration5)
      {
        editConfiguration6 = [posterConfiguration editConfiguration];
        isSpatialPhotoEnabled = [editConfiguration6 isSpatialPhotoEnabled];
      }

      else
      {
        isSpatialPhotoEnabled = 0;
      }
    }

    [(PUWallpaperPosterEditorController *)self _setShuffleEffect:2 enabled:isSpatialPhotoEnabled];
  }
}

- (void)_loadAssetFromPosterConfiguration
{
  location[3] = *MEMORY[0x1E69E9840];
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  if (([posterConfiguration options] & 2) != 0)
  {
    v6 = [PUWallpaperPosterMigrator alloc];
    environment = [(PUWallpaperPosterEditorController *)self environment];
    pu_sourceAssetDirectory = [environment pu_sourceAssetDirectory];
    environment2 = [(PUWallpaperPosterEditorController *)self environment];
    media = -[PUWallpaperPosterMigrator initWithAssetDirectory:configurationType:](v6, "initWithAssetDirectory:configurationType:", pu_sourceAssetDirectory, [environment2 pu_legacyConfigurationType]);

    [(PUWallpaperPosterEditorController *)self _showLoadingIndicatorForReason:@"loadAssetFromPosterConfiguration"];
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PUWallpaperPosterEditorController__loadAssetFromPosterConfiguration__block_invoke;
    v13[3] = &unk_1E7B78338;
    objc_copyWeak(&v14, location);
    [media attemptMigrationWithCompletionBlock:v13];
    [(PUWallpaperPosterEditorController *)self setMigrator:media];
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
LABEL_9:

    goto LABEL_10;
  }

  if (([posterConfiguration options] & 8) != 0)
  {
    media = PLWallpaperGetLog();
    if (os_log_type_enabled(media, OS_LOG_TYPE_INFO))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = posterConfiguration;
      _os_log_impl(&dword_1B36F3000, media, OS_LOG_TYPE_INFO, "Ignore current configuration as it's marked as needing update: %@", location, 0xCu);
    }

    goto LABEL_9;
  }

  if (posterConfiguration)
  {
    media = [posterConfiguration media];
    if ([media count])
    {
      v5 = [media objectAtIndexedSubscript:[(PUWallpaperPosterEditorController *)self shuffleAssetIndex]% [media count]];
      [(PUWallpaperPosterEditorController *)self setCurrentPosterMedia:v5];
    }

    else
    {
      environment3 = [(PUWallpaperPosterEditorController *)self environment];
      px_isCallServices = [environment3 px_isCallServices];

      if (px_isCallServices)
      {
        [(PUWallpaperPosterEditorController *)self _pickAssets];
      }

      else
      {
        v12 = PLWallpaperGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = posterConfiguration;
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
  editConfiguration = [v3 editConfiguration];

  return editConfiguration;
}

- (void)setPosterConfiguration:(id)configuration
{
  v10 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (self->_posterConfiguration != configurationCopy && ([(PFPosterConfiguration *)configurationCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_posterConfiguration, configuration);
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
    currentLayerStackViewModel = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    style = [currentLayerStackViewModel style];
    kind = [style kind];
    v6 = [kind isEqual:*MEMORY[0x1E69C0B28]];

    if (v6)
    {
      currentPosterMedia = [(PUWallpaperPosterEditorController *)self currentPosterMedia];
      editConfiguration = [currentPosterMedia editConfiguration];

      currentLayerStackViewModel2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __65__PUWallpaperPosterEditorController__updateTitleHeightProperties__block_invoke;
      v11[3] = &unk_1E7B80328;
      v12 = editConfiguration;
      v10 = editConfiguration;
      [currentLayerStackViewModel2 performChanges:v11];
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
    environment = [(PUWallpaperPosterEditorController *)self environment];
    if ([environment px_isBackdrop])
    {
    }

    else
    {
      environment2 = [(PUWallpaperPosterEditorController *)self environment];
      px_isCallServices = [environment2 px_isCallServices];

      if ((px_isCallServices & 1) == 0)
      {
        _isShuffle = [(PUWallpaperPosterEditorController *)self _isShuffle];
        editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
        currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
        [currentLayerStackViewModel containerFrame];
        PXRectWithSize();
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
        deviceOrientation = [editViewModel2 deviceOrientation];

        if ((deviceOrientation - 3) <= 1)
        {
          PXRectTransposed();
          v9 = v18;
          v11 = v19;
          v13 = v20;
          v15 = v21;
        }

        environment3 = [(PUWallpaperPosterEditorController *)self environment];
        [environment3 px_minimumTitleBoundsForLayout:0];

        v37 = v15;
        PXRectDenormalize();
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [currentLayerStackViewModel additionalViewTitleHeight];
        if (_isShuffle)
        {
          v31 = PUUserAdjustedAdditionalViewTitleHeightForViewModel(currentLayerStackViewModel);
        }

        v32 = v31;
        v43.origin.x = v24;
        v43.origin.y = v26;
        v43.size.width = v28;
        v43.size.height = v30;
        v33 = v32 + CGRectGetMaxY(v43);
        editor = [(PUWallpaperPosterEditorController *)self editor];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke;
        v41[3] = &__block_descriptor_72_e69_v24__0___PUMutablePosterEditorPreferences__8___PXPosterTransition__16l;
        *&v41[4] = v33;
        v41[5] = v9;
        v41[6] = v11;
        v41[7] = v13;
        v41[8] = v37;
        [editor pu_updatePreferences:v41];

        editor2 = [(PUWallpaperPosterEditorController *)self editor];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke_2;
        v39[3] = &__block_descriptor_33_e63_v24__0___PXPosterMutablePreferences__8___PXPosterTransition__16l;
        v40 = _isShuffle;
        [editor2 px_updatePreferences:v39];

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __64__PUWallpaperPosterEditorController__updatePreferredTitleBounds__block_invoke_3;
        v38[3] = &unk_1E7B78288;
        v38[4] = self;
        [editViewModel performChanges:v38];
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
  contentOverlayContainerView = [(PUWallpaperPosterEditorController *)self contentOverlayContainerView];
  editor = [(PUWallpaperPosterEditorController *)self editor];
  contentOverlayView = [editor contentOverlayView];

  [contentOverlayView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_deviceOrientation = [environment pu_deviceOrientation];

  v16 = v7;
  v17 = v9;
  v18 = v11;
  v19 = v13;
  if (&pu_deviceOrientation[-1].ty + 5 <= 1)
  {
    PXRectTransposed();
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
  }

  PXRectGetCenter();
  [contentOverlayContainerView setCenter:?];
  [contentOverlayContainerView setBounds:{v16, v17, v18, v19}];
  PUPosterAdditionalTransformForDeviceOrientation(pu_deviceOrientation, v24);
  [contentOverlayContainerView setTransform:v24];
}

- (void)_updateLayerStackOrderingForViewModel:(id)model
{
  v42[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  viewManager = [modelCopy viewManager];
  backgroundView = [(PUWallpaperPosterEditorController *)self backgroundView];
  v7 = *MEMORY[0x1E69C0A70];
  [(PUWallpaperPosterEditorController *)self _updateViewForLayerID:*MEMORY[0x1E69C0A70] usingViewManager:viewManager containerView:backgroundView];
  _wantsSpatialPhotoBackfill = [(PUWallpaperPosterEditorController *)self _wantsSpatialPhotoBackfill];
  spatialPhotoEnabled = [modelCopy spatialPhotoEnabled];
  if (_wantsSpatialPhotoBackfill)
  {
    v10 = MEMORY[0x1E69C0AC0];
    v11 = MEMORY[0x1E69C0AB0];
    if (spatialPhotoEnabled)
    {
      spatialPhotoBackgroundBackfillLayerView = [viewManager spatialPhotoBackgroundBackfillLayerView];
      goto LABEL_6;
    }

LABEL_14:
    v14 = *v11;
    v15 = *v10;
    goto LABEL_15;
  }

  v10 = MEMORY[0x1E69C0AB8];
  v11 = MEMORY[0x1E69C0AA8];
  if (!spatialPhotoEnabled)
  {
    goto LABEL_14;
  }

  spatialPhotoBackgroundBackfillLayerView = [viewManager spatialPhotoBackgroundLayerView];
LABEL_6:
  v13 = spatialPhotoBackgroundBackfillLayerView;

  v14 = *v11;
  v15 = *v10;
  if (v13)
  {
    v16 = [(PUWallpaperPosterEditorController *)self _updateViewForLayerID:v14 usingViewManager:viewManager containerView:backgroundView];
    floatingView = [(PUWallpaperPosterEditorController *)self floatingView];
    [(PUWallpaperPosterEditorController *)self _updateViewForLayerID:v15 usingViewManager:viewManager containerView:floatingView];

    [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyroForLayerStackViewModel:modelCopy];
    v18 = [viewManager existingViewForLayerID:*MEMORY[0x1E69C0A80]];
    superview = [v18 superview];

    if (superview)
    {
      [v18 removeFromSuperview];
    }

    v20 = [viewManager existingViewForLayerID:v7];
    superview2 = [v20 superview];

    if (superview2)
    {
      [v20 removeFromSuperview];
    }

    if (v16)
    {
      [(PUWallpaperPosterEditorController *)self _showSpatialPhotoDisabledLowerPowerModeTipIfNeeded];
    }

    [modelCopy hasMatte];
    goto LABEL_24;
  }

LABEL_15:
  v22 = [viewManager existingViewForLayerID:v14];
  superview3 = [v22 superview];

  if (superview3)
  {
    [v22 removeFromSuperview];
  }

  v24 = [viewManager existingViewForLayerID:v15];

  superview4 = [v24 superview];

  if (superview4)
  {
    [v24 removeFromSuperview];
  }

  if ([modelCopy hasMatte])
  {
    if ([modelCopy clockAppearsAboveForeground])
    {
      [(PUWallpaperPosterEditorController *)self foregroundView];
    }

    else
    {
      [(PUWallpaperPosterEditorController *)self floatingView];
    }
    v26 = ;
    [(PUWallpaperPosterEditorController *)self _updateViewForLayerID:*MEMORY[0x1E69C0A80] usingViewManager:viewManager containerView:v26];
  }

LABEL_24:
  if ([modelCopy showsDebugHUD])
  {
    floatingView2 = [(PUWallpaperPosterEditorController *)self floatingView];
    debugInfoView = [viewManager debugInfoView];
    [floatingView2 addSubview:debugInfoView];

    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
    viewManager2 = [currentLayerStackViewModel viewManager];
    debugInfoView2 = [viewManager2 debugInfoView];

    v41 = @"Idle Timer Disabled";
    editModel = [(PUWallpaperPosterEditorController *)self editModel];
    idleTimerDisabled = [editModel idleTimerDisabled];
    v35 = @"NO";
    if (idleTimerDisabled)
    {
      v35 = @"YES";
    }

    v42[0] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [debugInfoView2 displayAdditionalDebugInfo:v36];
  }

  else
  {
    debugInfoView2 = [viewManager debugInfoViewIfLoaded];
    [debugInfoView2 removeFromSuperview];
  }

  if (PXPreferencesGetBool())
  {
    floatingView3 = [(PUWallpaperPosterEditorController *)self floatingView];
    currentLayerStackViewModel2 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    viewManager3 = [currentLayerStackViewModel2 viewManager];
    debugRectsView = [viewManager3 debugRectsView];
    [floatingView3 addSubview:debugRectsView];
  }

  else
  {
    floatingView3 = [(PUWallpaperPosterEditorController *)self currentLayerStackViewModel];
    currentLayerStackViewModel2 = [floatingView3 viewManager];
    viewManager3 = [currentLayerStackViewModel2 debugRectsViewIfLoaded];
    [viewManager3 removeFromSuperview];
  }
}

- (void)_updateVisibleLayerStackViewsWithPreviouslyVisibleStackViewModels:(id)models
{
  v27 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [modelsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(modelsCopy);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        [v9 unregisterChangeObserver:self context:"LayerStackViewModelObservationContext"];
        [(PUWallpaperPosterEditorController *)self _removeViewsFromLayerStackViewModel:v9];
      }

      v6 = [modelsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  visibleLayerStackViewModels = [editViewModel visibleLayerStackViewModels];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [visibleLayerStackViewModels countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(visibleLayerStackViewModels);
        }

        v16 = *(*(&v17 + 1) + 8 * j);
        [(PUWallpaperPosterEditorController *)self _updateLayerStackOrderingForViewModel:v16];
        [v16 registerChangeObserver:self context:"LayerStackViewModelObservationContext"];
      }

      v13 = [visibleLayerStackViewModels countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (BOOL)_updateViewForLayerID:(id)d usingViewManager:(id)manager containerView:(id)view
{
  viewCopy = view;
  v8 = [manager viewForLayerID:d];
  v9 = v8;
  if (!v8 || ([v8 superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == viewCopy))
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
    v15 = viewCopy;
    v16 = v9;
    [v11 performWithoutAnimation:v14];

    v12 = 1;
  }

  return v12;
}

- (void)_removeViewsFromLayerStackViewModel:(id)model
{
  viewManager = [model viewManager];
  createdLayerViews = [viewManager createdLayerViews];
  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PUWallpaperPosterEditorController__removeViewsFromLayerStackViewModel___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v8 = createdLayerViews;
  v6 = createdLayerViews;
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

- (void)_updateSpatialPhotoGyroForLayerStackViewModel:(id)model
{
  viewManager = [model viewManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PUWallpaperPosterEditorController__updateSpatialPhotoGyroForLayerStackViewModel___block_invoke;
  aBlock[3] = &unk_1E7B782D0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  spatialPhotoBackgroundLayerView = [viewManager spatialPhotoBackgroundLayerView];
  v5[2](v5, spatialPhotoBackgroundLayerView);

  spatialPhotoBackgroundBackfillLayerView = [viewManager spatialPhotoBackgroundBackfillLayerView];
  v5[2](v5, spatialPhotoBackgroundBackfillLayerView);
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
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  visibleLayerStackViewModels = [editViewModel visibleLayerStackViewModels];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [visibleLayerStackViewModels countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(visibleLayerStackViewModels);
        }

        [(PUWallpaperPosterEditorController *)self _updateSpatialPhotoGyroForLayerStackViewModel:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [visibleLayerStackViewModels countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_showSpatialPhotoDisabledLowerPowerModeTipIfNeeded
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
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
    _isSpatialPhotoPossible = [(PUWallpaperPosterEditorController *)self _isSpatialPhotoPossible];
  }

  else
  {
    _isSpatialPhotoPossible = 0;
  }

  _isDepthEnabledInAnyOrientation = [(PUWallpaperPosterEditorController *)self _isDepthEnabledInAnyOrientation];
  editModel = [(PUWallpaperPosterEditorController *)self editModel];
  depthEffectDisabled = [editModel depthEffectDisabled];

  v7 = PLWallpaperGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    if (_isSpatialPhotoPossible)
    {
      v8 = @"YES";
    }

    v9 = v8;
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_INFO, "Updating render preferences with hasSpatialPhoto:%@", buf, 0xCu);
  }

  editor = [(PUWallpaperPosterEditorController *)self editor];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PUWallpaperPosterEditorController__updateEditorPreferences__block_invoke;
  v11[3] = &__block_descriptor_35_e69_v24__0___PUMutablePosterEditorPreferences__8___PXPosterTransition__16l;
  v12 = _isSpatialPhotoPossible;
  v13 = _isDepthEnabledInAnyOrientation;
  v14 = depthEffectDisabled;
  [editor pu_updatePreferences:v11];
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
  environment = [(PUWallpaperPosterEditorController *)self environment];
  if ([environment px_isBackdrop])
  {

LABEL_4:
    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__PUWallpaperPosterEditorController__updateDeviceOrientation__block_invoke;
    v6[3] = &unk_1E7B78288;
    v6[4] = self;
    [editViewModel performChanges:v6];

    goto LABEL_5;
  }

  deviceSupportsLandscapeConfiguration = [MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration];

  if (deviceSupportsLandscapeConfiguration)
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
  backgroundView = [(PUWallpaperPosterEditorController *)self backgroundView];
  [backgroundView bounds];
  PXRectWithOriginAndSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    environment = [(PUWallpaperPosterEditorController *)self environment];
    px_isBackdrop = [environment px_isBackdrop];

    if ((px_isBackdrop & 1) == 0)
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

  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__PUWallpaperPosterEditorController__updateContainerFrame__block_invoke;
  v22[3] = &__block_descriptor_64_e49_v16__0___PUWallpaperPosterMutableEditViewModel__8l;
  *&v22[4] = v5;
  *&v22[5] = v7;
  *&v22[6] = v9;
  *&v22[7] = v11;
  [editViewModel performChanges:v22];

  environment2 = [(PUWallpaperPosterEditorController *)self environment];
  if ([environment2 px_isBackdrop])
  {
  }

  else
  {
    environment3 = [(PUWallpaperPosterEditorController *)self environment];
    px_isCallServices = [environment3 px_isCallServices];

    if (!px_isCallServices)
    {
      return;
    }
  }

  [(PUWallpaperPosterEditorController *)self _updateContentOverlayContainerView];
  [(PUWallpaperPosterEditorController *)self _updateUserTransformView];
}

- (void)setVisibleLayerStackViewModels:(id)models
{
  modelsCopy = models;
  visibleLayerStackViewModels = self->_visibleLayerStackViewModels;
  if (visibleLayerStackViewModels != modelsCopy)
  {
    v9 = modelsCopy;
    visibleLayerStackViewModels = [(NSArray *)visibleLayerStackViewModels isEqual:modelsCopy];
    modelsCopy = v9;
    if ((visibleLayerStackViewModels & 1) == 0)
    {
      v6 = self->_visibleLayerStackViewModels;
      v7 = [(NSArray *)v9 copy];
      v8 = self->_visibleLayerStackViewModels;
      self->_visibleLayerStackViewModels = v7;

      [(PUWallpaperPosterEditorController *)self _updateVisibleLayerStackViewsWithPreviouslyVisibleStackViewModels:v6];
      modelsCopy = v9;
    }
  }

  MEMORY[0x1EEE66BB8](visibleLayerStackViewModels, modelsCopy);
}

- (void)setCurrentLayerStackViewModel:(id)model
{
  modelCopy = model;
  v5 = self->_currentLayerStackViewModel;
  v6 = v5;
  if (v5 == modelCopy)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerStackViewModel *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentLayerStackViewModel, model);
      [(PUWallpaperPosterEditorController *)self _updateMotionEffectsEnabled];
      [(PUWallpaperPosterEditorController *)self _updateEditToolbar];
      [(PUWallpaperPosterEditorController *)self _updateTitleHeightProperties];
      [(PUWallpaperPosterEditorController *)self _updatePreferredTitleBounds];
    }
  }
}

- (void)_updateVisibleLayerStackViewModels
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  visibleLayerStackViewModels = [editViewModel visibleLayerStackViewModels];
  [(PUWallpaperPosterEditorController *)self setVisibleLayerStackViewModels:visibleLayerStackViewModels];
}

- (void)_updateCurrentLayerStackViewModel
{
  editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
  currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
  [(PUWallpaperPosterEditorController *)self setCurrentLayerStackViewModel:currentLayerStackViewModel];
}

- (void)_updateCurrentStyle
{
  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
    style = [currentLayerStackViewModel style];

    bakedStyle = [style bakedStyle];
    currentEditConfiguration = [(PUWallpaperPosterEditorController *)self currentEditConfiguration];
    [currentEditConfiguration setStyle:bakedStyle];

    shuffleResourceManager = [(PUWallpaperPosterEditorController *)self shuffleResourceManager];
    [shuffleResourceManager setStyle:style];
  }
}

- (void)_updateEditViewModelPropertiesFromPosterConfiguration
{
  posterConfiguration = [(PUWallpaperPosterEditorController *)self posterConfiguration];
  editConfiguration = [posterConfiguration editConfiguration];

  if ([(PUWallpaperPosterEditorController *)self _isShuffle])
  {
    [(PUWallpaperPosterEditorController *)self _applyPosterEditConfigurationForShuffleAsset];
    if (![(PUWallpaperPosterEditorController *)self _isShuffleModeWithGlobalDepth])
    {
      goto LABEL_7;
    }

    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    [editViewModel performChanges:&__block_literal_global_334_37037];
  }

  else
  {
    if (!editConfiguration)
    {
      goto LABEL_7;
    }

    editViewModel = [(PUWallpaperPosterEditorController *)self editViewModel];
    [editViewModel applyChangesFromPosterEditConfiguration:editConfiguration];
  }

LABEL_7:
  environment = [(PUWallpaperPosterEditorController *)self environment];
  pu_posterDescriptor = [environment pu_posterDescriptor];
  descriptorType = [pu_posterDescriptor descriptorType];

  if (descriptorType == 5)
  {
    editViewModel2 = [(PUWallpaperPosterEditorController *)self editViewModel];
    [editViewModel2 performChanges:&__block_literal_global_336];
  }
}

- (void)_loadEditViewModelAndUpdateLooks:(BOOL)looks
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
  looksCopy = looks;
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

- (void)setEditViewModel:(id)model
{
  modelCopy = model;
  v5 = self->_editViewModel;
  v6 = v5;
  if (v5 == modelCopy)
  {
  }

  else
  {
    v7 = [(PUWallpaperPosterEditViewModel *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = self->_editViewModel;
      [(PUWallpaperPosterEditViewModel *)v8 unregisterChangeObserver:self context:"EditViewModelObservationContext"];
      objc_storeStrong(&self->_editViewModel, model);
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
  backgroundView = [(PUWallpaperPosterEditorController *)self backgroundView];
  [backgroundView removeObserver:self forKeyPath:@"layer.bounds" context:&BackgroundViewObservationContext];

  editModel = [(PUWallpaperPosterEditorController *)self editModel];
  [editModel unregisterChangeObserver:self context:"EditModelObservationContext"];

  [(PUWallpaperPosterEditorController *)self _stopObservingPlayerItem];
  v5.receiver = self;
  v5.super_class = PUWallpaperPosterEditorController;
  [(PUWallpaperPosterEditorController *)&v5 dealloc];
}

- (PUWallpaperPosterEditorController)initWithWallpaperEditor:(id)editor photoLibrary:(id)library
{
  editorCopy = editor;
  libraryCopy = library;
  v21.receiver = self;
  v21.super_class = PUWallpaperPosterEditorController;
  v9 = [(PUWallpaperPosterEditorController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_editor, editor);
    objc_storeStrong(&v10->_photoLibrary, library);
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
    v20 = libraryCopy;
    if (initWithWallpaperEditor_photoLibrary__onceToken != -1)
    {
      dispatch_once(&initWithWallpaperEditor_photoLibrary__onceToken, block);
    }

    mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
    [mEMORY[0x1E69C4598] scheduleDeferredTaskWithQoS:1 block:&__block_literal_global_37041];

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

+ (id)availableStylesForItem:(id)item posterConfiguration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  v9 = configurationCopy;
  if (itemCopy)
  {
    if (!configurationCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:1664 description:{@"Invalid parameter not satisfying: %@", @"posterConfiguration"}];
    }

    if ([v9 posterType] == 2)
    {
      [itemCopy defaultStyles];
    }

    else
    {
      [itemCopy availableStyles];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int64_t)posterConfigurationTypeForPosterType:(int64_t)type
{
  if (type == 2)
  {
    return 1;
  }

  if (!type)
  {
    v13 = v4;
    v14 = v3;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditorController.m" lineNumber:890 description:@"Unexpected poster descriptor type"];

    abort();
  }

  return 0;
}

+ (id)posterConfigurationFromPosterDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:{objc_msgSend(objc_opt_class(), "posterConfigurationTypeForPosterType:", objc_msgSend(descriptorCopy, "posterType"))}];
  if ([descriptorCopy descriptorType] == 2)
  {
    shuffleConfiguration = [descriptorCopy shuffleConfiguration];
    if (!shuffleConfiguration)
    {
      shuffleConfiguration = [objc_alloc(MEMORY[0x1E69C0830]) initWithShuffleType:0];
      [shuffleConfiguration setShuffleFrequency:*MEMORY[0x1E69C0C58]];
      [shuffleConfiguration setShuffleSmartAlbums:{objc_msgSend(MEMORY[0x1E69C3C90], "supportedTypes")}];
    }

    [v4 setShuffleConfiguration:shuffleConfiguration];
  }

  return v4;
}

@end