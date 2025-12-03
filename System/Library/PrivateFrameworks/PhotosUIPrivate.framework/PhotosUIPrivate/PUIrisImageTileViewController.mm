@interface PUIrisImageTileViewController
+ (OS_dispatch_queue)srlCompensationLoadingQueue;
- (PUIrisImageTileViewControllerDelegate)delegate;
- (id)generateAssetTransitionInfo;
- (id)loadView;
- (id)viewsForApplyingBorder;
- (id)viewsForApplyingCornerRadius;
- (void)_handleBrowsingIrisPlayer:(id)player didChange:(id)change;
- (void)_handleLoadedSRLCompensationAmount:(id)amount forAsset:(id)asset;
- (void)_updateIrisPlayer;
- (void)_updateLivePhotoViewPlayer;
- (void)_updateLivePhotoViewVitalityEnabled;
- (void)_updatePlaybackGestureRecognizer;
- (void)_updatePlayerViewInteractivePlaybackAllowed;
- (void)_updateSRLCompensation;
- (void)_updateVitalityTransform;
- (void)addToTilingView:(id)view;
- (void)applyLayoutInfo:(id)info;
- (void)assetDidChange;
- (void)assetViewModelDidChange:(id)change;
- (void)displayedImageRequestResultDidChange;
- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style;
- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style;
- (void)livePhotoViewDidBeginHinting:(id)hinting;
- (void)livePhotoViewDidEndPlayingVitality:(id)vitality;
- (void)ppt_playLivePhotoWithCompletionHandler:(id)handler;
- (void)removeAllAnimations;
- (void)setDelegate:(id)delegate;
- (void)setIrisPlayer:(id)player;
- (void)setIsVitalityDisabledByTransformInset:(BOOL)inset;
- (void)updateModulator;
- (void)updateModulatorInputs;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUIrisImageTileViewController

- (PUIrisImageTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)livePhotoViewDidBeginHinting:(id)hinting
{
  if (self->_delegateFlags.respondsToDidBeginHinting)
  {
    delegate = [(PUIrisImageTileViewController *)self delegate];
    [delegate irisImageTileViewControllerDidBeginHinting:self];
  }
}

- (void)livePhotoViewDidEndPlayingVitality:(id)vitality
{
  if (self->_delegateFlags.respondsToDidEndVitality)
  {
    delegate = [(PUIrisImageTileViewController *)self delegate];
    [delegate irisImageTileViewControllerDidEndVitality:self];
  }
}

- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style
{
  viewCopy = view;
  if (self->_delegateFlags.respondsToDidEndPlaying)
  {
    delegate = [(PUIrisImageTileViewController *)self delegate];
    [delegate irisImageTileViewControllerDidEndPlaying:self];
  }

  ppt_didEndPlayingHandler = self->_ppt_didEndPlayingHandler;
  if (ppt_didEndPlayingHandler)
  {
    ppt_didEndPlayingHandler[2]();
    v7 = self->_ppt_didEndPlayingHandler;
    self->_ppt_didEndPlayingHandler = 0;
  }
}

- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style
{
  if (self->_delegateFlags.respondsToDidBeginPlaying)
  {
    v6 = [(PUIrisImageTileViewController *)self delegate:view];
    [v6 irisImageTileViewControllerDidBeginPlaying:self];
  }
}

- (void)setIsVitalityDisabledByTransformInset:(BOOL)inset
{
  if (self->_isVitalityDisabledByTransformInset != inset)
  {
    self->_isVitalityDisabledByTransformInset = inset;
    [(PUIrisImageTileViewController *)self _updateLivePhotoViewVitalityEnabled];
  }
}

- (void)_updateVitalityTransform
{
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  irisPlayer = [assetViewModel irisPlayer];

  if (irisPlayer)
  {
    [irisPlayer vitalityTransform];
    v5.i32[3] = 0;
    HIDWORD(v6) = 0;
    *v36 = v6;
    v7.i32[3] = 0;
    v34 = v5;
    v35 = v7;
    allowLargeVitalityInset = [irisPlayer allowLargeVitalityInset];
  }

  else
  {
    v34 = *MEMORY[0x1E69E9B10];
    v35 = *(MEMORY[0x1E69E9B10] + 32);
    *v36 = *(MEMORY[0x1E69E9B10] + 16);
    allowLargeVitalityInset = [0 allowLargeVitalityInset];
  }

  v9 = vandq_s8(vandq_s8(vceqq_f32(*v36, v31), vceqq_f32(v34, v33)), vceqq_f32(v35, v32));
  v9.i32[3] = v9.i32[2];
  v10 = vminvq_u32(v9);
  v11 = *v34.i64;
  v12 = *v36;
  v13 = *v35.i64;
  if (allowLargeVitalityInset)
  {
    if ((v10 & 0x80000000) != 0 || (-[PUIrisImageTileViewController _livePhotoView](self, "_livePhotoView"), v14 = objc_claimAutoreleasedReturnValue(), [v14 bounds], v17 = PUPerspectiveTransformMaxInsetForDimensions(v34, *v36, v35, v15, v16), v14, +[PUOneUpSettings sharedInstance](PUOneUpSettings, "sharedInstance"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "vitalityMaxAllowedLargeInsetPoints"), v20 = v19, v18, v17 > v20))
    {
      v37 = 0;
      v21 = 1;
      goto LABEL_12;
    }
  }

  else if ((v10 & 0x80000000) != 0 || (+[PUOneUpSettings sharedInstance](PUOneUpSettings, "sharedInstance"), v22 = objc_claimAutoreleasedReturnValue(), [v22 vitalityMaxAllowedInsetPoints], v24 = v23, v22, -[PUIrisImageTileViewController _livePhotoView](self, "_livePhotoView"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "bounds"), v28 = PUPerspectiveTransformMaxInsetForDimensions(v34, *v36, v35, v26, v27), v25, v28 > v24))
  {
    v21 = 0;
    v37 = 0;
    goto LABEL_12;
  }

  v37 = [MEMORY[0x1E69793D8] pu_meshTransformApplyingNormalizedPerspectiveTransform:{*v34.i64, *v36, *v35.i64}];
  v21 = 0;
LABEL_12:
  v29 = [(PUIrisImageTileViewController *)self _livePhotoView:v11];
  playerView = [v29 playerView];
  [playerView setVitalityTransform:v37];

  [(PUIrisImageTileViewController *)self setIsVitalityDisabledByTransformInset:v21];
}

- (void)_updatePlaybackGestureRecognizer
{
  _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  playbackGestureRecognizer = [_livePhotoView playbackGestureRecognizer];
  if (self->_delegateFlags.respondsToDelegateForGestureRecognizer)
  {
    delegate = [(PUIrisImageTileViewController *)self delegate];
    v6 = [delegate irisImageTileViewController:self delegateForGestureRecognizer:playbackGestureRecognizer];
  }

  else
  {
    v6 = 0;
  }

  [playbackGestureRecognizer setDelegate:v6];
  v9 = _livePhotoView;
  v7 = v9;
  if (self->_delegateFlags.respondsToViewHostingGestureRecognizers)
  {
    delegate2 = [(PUIrisImageTileViewController *)self delegate];
    v7 = [delegate2 irisImageTileViewControllerViewHostingGestureRecognizers:self];
  }

  [v7 addGestureRecognizer:playbackGestureRecognizer];
}

- (void)_handleBrowsingIrisPlayer:(id)player didChange:(id)change
{
  changeCopy = change;
  if ([changeCopy playerDidChange])
  {
    [(PUIrisImageTileViewController *)self _updateLivePhotoViewPlayer];
  }

  if ([changeCopy activatedDidChange])
  {
    [(PUIrisImageTileViewController *)self _updatePlayerViewInteractivePlaybackAllowed];
  }

  if ([changeCopy vitalityTransformDidChange])
  {
    [(PUIrisImageTileViewController *)self _updateVitalityTransform];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  v30.receiver = self;
  v30.super_class = PUIrisImageTileViewController;
  [(PUOneUpImageTileViewController *)&v30 viewModel:modelCopy didChange:changeCopy];
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];

  if (assetViewModel == modelCopy)
  {
    if ([changeCopy focusValueChanged])
    {
      [(PUIrisImageTileViewController *)self _assetFocusValueDidChange];
    }

    if ([changeCopy revealsGainMapImageChanged])
    {
      livePhotoViewModulator = [(PUIrisImageTileViewController *)self livePhotoViewModulator];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __53__PUIrisImageTileViewController_viewModel_didChange___block_invoke;
      v29[3] = &unk_1E7B7AF58;
      v29[4] = self;
      [livePhotoViewModulator performChanges:v29];
    }

    if ([changeCopy irisPlayerChanged])
    {
      [(PUIrisImageTileViewController *)self _updateIrisPlayer];
    }

    goto LABEL_22;
  }

  irisPlayer = [(PUIrisImageTileViewController *)self irisPlayer];

  if (irisPlayer == modelCopy)
  {
    v12 = modelCopy;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_20:
        [(PUIrisImageTileViewController *)self _handleBrowsingIrisPlayer:v12 didChange:changeCopy];
LABEL_21:

        goto LABEL_22;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v21 = NSStringFromClass(v22);
      px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUIrisImageTileViewController.m" lineNumber:338 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewModel", v21, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUIrisImageTileViewController.m" lineNumber:338 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewModel", v21}];
    }

    goto LABEL_20;
  }

  browsingViewModel = [(PUImageTileViewController *)self browsingViewModel];

  if (browsingViewModel == modelCopy)
  {
    v12 = changeCopy;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_6:
        if ([v12 isScrubbingActivationDidChange])
        {
          [(PUIrisImageTileViewController *)self _updatePlaybackGestureRecognizer];
        }

        if ([v12 livePhotoShouldPlayDidChange])
        {
          _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
          playbackGestureRecognizer = [_livePhotoView playbackGestureRecognizer];
          isEnabled = [playbackGestureRecognizer isEnabled];

          if (isEnabled)
          {
            playerView = [_livePhotoView playerView];
            browsingViewModel2 = [(PUImageTileViewController *)self browsingViewModel];
            [playerView setPlaybackFilterTouchActive:{objc_msgSend(browsingViewModel2, "livePhotoShouldPlay")}];
          }
        }

        goto LABEL_21;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      px_descriptionForAssertionMessage2 = [v12 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUIrisImageTileViewController.m" lineNumber:342 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"change", v26, px_descriptionForAssertionMessage2}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUIrisImageTileViewController.m" lineNumber:342 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"change", v26}];
    }

    goto LABEL_6;
  }

LABEL_22:
}

void __53__PUIrisImageTileViewController_viewModel_didChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assetViewModel];
  [v3 setRevealsGainMapImage:{objc_msgSend(v4, "revealsGainMapImage")}];
}

- (id)generateAssetTransitionInfo
{
  _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  if (([_livePhotoView isDisplayingPhoto] & 1) != 0 || ((-[PUTileViewController visibleRect](self, "visibleRect"), v5 == *MEMORY[0x1E695F060]) ? (v6 = v4 == *(MEMORY[0x1E695F060] + 8)) : (v6 = 0), v6))
  {
    v18.receiver = self;
    v18.super_class = PUIrisImageTileViewController;
    generateAssetTransitionInfo = [(PUImageTileViewController *)&v18 generateAssetTransitionInfo];
  }

  else
  {
    generateSnapshotImage = [_livePhotoView generateSnapshotImage];
    v16 = 0uLL;
    v17 = 0;
    if (_livePhotoView)
    {
      [_livePhotoView seekTime];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PUIrisImageTileViewController_generateAssetTransitionInfo__block_invoke;
    v11[3] = &unk_1E7B781F8;
    v14 = v16;
    v15 = v17;
    v12 = generateSnapshotImage;
    selfCopy = self;
    v8 = generateSnapshotImage;
    generateAssetTransitionInfo = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v11];
  }

  return generateAssetTransitionInfo;
}

void __60__PUIrisImageTileViewController_generateAssetTransitionInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImage:v3];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  [v4 setSeekTime:&v6];
  v5 = [*(a1 + 40) asset];
  [v4 setAsset:v5];
}

- (void)ppt_playLivePhotoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = _Block_copy(self->_ppt_didEndPlayingHandler);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __72__PUIrisImageTileViewController_ppt_playLivePhotoWithCompletionHandler___block_invoke;
    v13 = &unk_1E7B7FAA8;
    v14 = v5;
    v15 = handlerCopy;
    v6 = v5;
    v7 = _Block_copy(&v10);
    ppt_didEndPlayingHandler = self->_ppt_didEndPlayingHandler;
    self->_ppt_didEndPlayingHandler = v7;
  }

  v9 = [(PUIrisImageTileViewController *)self _livePhotoView:v10];
  [v9 startPlaybackWithStyle:1];
}

uint64_t __72__PUIrisImageTileViewController_ppt_playLivePhotoWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_updatePlayerViewInteractivePlaybackAllowed
{
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  [assetViewModel focusValue];
  v4 = v3;
  v5 = +[PUOneUpSettings sharedInstance];
  [v5 livePhotoInteractionThreshold];
  v7 = v6;
  v8 = fabs(v4);
  irisPlayer = [assetViewModel irisPlayer];
  isActivated = [irisPlayer isActivated];

  v11 = +[PUOneUpSettings sharedInstance];
  if ([v11 shouldMergeOverlappingLivePhotos])
  {
    assetViewModel2 = [(PUImageTileViewController *)self assetViewModel];
    asset = [assetViewModel2 asset];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  playbackGestureRecognizer = [_livePhotoView playbackGestureRecognizer];

  if (v8 <= v7)
  {
    v17 = isActivated | v14;
  }

  else
  {
    v17 = 0;
  }

  [playbackGestureRecognizer setEnabled:v17 & 1];
}

- (void)_updateLivePhotoViewPlayer
{
  irisPlayer = [(PUIrisImageTileViewController *)self irisPlayer];
  player = [irisPlayer player];
  _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  [_livePhotoView setPlayer:player];
}

- (void)setIrisPlayer:(id)player
{
  playerCopy = player;
  irisPlayer = self->_irisPlayer;
  if (irisPlayer != playerCopy)
  {
    v7 = playerCopy;
    [(PUBrowsingIrisPlayer *)irisPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_irisPlayer, player);
    [(PUBrowsingIrisPlayer *)self->_irisPlayer registerChangeObserver:self];
    irisPlayer = [(PUIrisImageTileViewController *)self _updateLivePhotoViewPlayer];
    playerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](irisPlayer, playerCopy);
}

- (void)_updateIrisPlayer
{
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  irisPlayer = [assetViewModel irisPlayer];
  [(PUIrisImageTileViewController *)self setIrisPlayer:irisPlayer];
}

- (void)_handleLoadedSRLCompensationAmount:(id)amount forAsset:(id)asset
{
  amountCopy = amount;
  assetCopy = asset;
  asset = [(PUImageTileViewController *)self asset];

  if (asset == assetCopy)
  {
    _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
    [_livePhotoView setOverrideSRLCompensationAmount:amountCopy];
  }
}

- (void)_updateSRLCompensation
{
  v3 = +[PUOneUpSettings sharedInstance];
  if (![v3 livePhotoSRLCompensationEnabled])
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  if (![v3 livePhotoSRLCompensationManualMode])
  {
    asset = [(PUImageTileViewController *)self asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      asset2 = [(PUImageTileViewController *)self asset];
      objc_initWeak(&location, self);
      srlCompensationLoadingQueue = [objc_opt_class() srlCompensationLoadingQueue];
      v11 = asset2;
      objc_copyWeak(&v12, &location);
      PXDispatchAsyncWithSignpost();

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    goto LABEL_6;
  }

  v4 = MEMORY[0x1E696AD98];
  [v3 livePhotoSRLCompensationManualValue];
  v5 = [v4 numberWithDouble:?];
LABEL_7:
  _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  [_livePhotoView setOverrideSRLCompensationAmount:v5];
}

void __55__PUIrisImageTileViewController__updateSRLCompensation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) livePhotoSRLCompensationAmount];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PUIrisImageTileViewController__updateSRLCompensation__block_invoke_2;
  block[3] = &unk_1E7B7F820;
  objc_copyWeak(&v7, (a1 + 40));
  v5 = v2;
  v6 = *(a1 + 32);
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
}

void __55__PUIrisImageTileViewController__updateSRLCompensation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleLoadedSRLCompensationAmount:*(a1 + 32) forAsset:*(a1 + 40)];
}

- (void)_updateLivePhotoViewVitalityEnabled
{
  v3 = +[PUIrisSettings sharedInstance];
  isVitalityAllowed = [v3 isVitalityAllowed];

  if (isVitalityAllowed && (-[PUImageTileViewController assetViewModel](self, "assetViewModel"), v5 = objc_claimAutoreleasedReturnValue(), [v5 irisPlayer], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    isVitalityDisabledByTransformInset = [(PUIrisImageTileViewController *)self isVitalityDisabledByTransformInset];
    _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
    if (!isVitalityDisabledByTransformInset)
    {
      tilingView = [(PUTileController *)self tilingView];
      v9 = [tilingView is_vitalityControllerCreateIfNeeded:1];

      playerView = [_livePhotoView playerView];
      [v9 addPlayerView:playerView];
      goto LABEL_7;
    }
  }

  else
  {
    _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  }

  tilingView2 = [(PUTileController *)self tilingView];
  v9 = [tilingView2 is_vitalityControllerCreateIfNeeded:0];

  playerView = [_livePhotoView playerView];
  [v9 removePlayerView:playerView];
LABEL_7:
}

- (void)displayedImageRequestResultDidChange
{
  v5.receiver = self;
  v5.super_class = PUIrisImageTileViewController;
  [(PUOneUpImageTileViewController *)&v5 displayedImageRequestResultDidChange];
  _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  debugOverlayView = [_livePhotoView debugOverlayView];
  [debugOverlayView update];
}

- (void)assetDidChange
{
  v3.receiver = self;
  v3.super_class = PUIrisImageTileViewController;
  [(PUImageTileViewController *)&v3 assetDidChange];
  [(PUIrisImageTileViewController *)self _updatePlayerViewInteractivePlaybackAllowed];
  [(PUIrisImageTileViewController *)self _updateSRLCompensation];
}

- (void)assetViewModelDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PUIrisImageTileViewController;
  [(PUOneUpImageTileViewController *)&v4 assetViewModelDidChange:change];
  [(PUIrisImageTileViewController *)self _updateIrisPlayer];
  [(PUIrisImageTileViewController *)self _updateLivePhotoViewVitalityEnabled];
  [(PUIrisImageTileViewController *)self _updatePlayerViewInteractivePlaybackAllowed];
  [(PUIrisImageTileViewController *)self _assetFocusValueDidChange];
  [(PUIrisImageTileViewController *)self _updateVitalityTransform];
}

- (id)viewsForApplyingBorder
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(PUTileViewController *)self isViewLoaded])
  {
    borderView = [(PUIrisImageTileViewController *)self borderView];
    v6[0] = borderView;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)viewsForApplyingCornerRadius
{
  v7[2] = *MEMORY[0x1E69E9840];
  if ([(PUTileViewController *)self isViewLoaded])
  {
    _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
    v7[0] = _livePhotoView;
    borderView = [(PUIrisImageTileViewController *)self borderView];
    v7[1] = borderView;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)applyLayoutInfo:(id)info
{
  v16.receiver = self;
  v16.super_class = PUIrisImageTileViewController;
  infoCopy = info;
  [(PUOneUpImageTileViewController *)&v16 applyLayoutInfo:infoCopy];
  [infoCopy contentsRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  playerView = [_livePhotoView playerView];
  [playerView setContentsRect:{v6, v8, v10, v12}];

  view = [(PUTileViewController *)self view];
  [view layoutIfNeeded];

  [(PUIrisImageTileViewController *)self _updateVitalityTransform];
}

- (void)addToTilingView:(id)view
{
  v4.receiver = self;
  v4.super_class = PUIrisImageTileViewController;
  [(PUTileViewController *)&v4 addToTilingView:view];
  [(PUIrisImageTileViewController *)self _updateLivePhotoViewVitalityEnabled];
}

- (void)removeAllAnimations
{
  v4.receiver = self;
  v4.super_class = PUIrisImageTileViewController;
  [(PUTileViewController *)&v4 removeAllAnimations];
  _livePhotoView = [(PUIrisImageTileViewController *)self _livePhotoView];
  [_livePhotoView pu_removeAllGeometryAnimationsRecursively:1];
}

- (void)updateModulatorInputs
{
  livePhotoViewModulator = [(PUIrisImageTileViewController *)self livePhotoViewModulator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PUIrisImageTileViewController_updateModulatorInputs__block_invoke;
  v4[3] = &unk_1E7B7AF58;
  v4[4] = self;
  [livePhotoViewModulator performChanges:v4];
}

void __54__PUIrisImageTileViewController_updateModulatorInputs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) gainMapImageIsAvailable])
  {
    [v3 setGainMapImage:objc_msgSend(*(a1 + 32) animated:{"gainMapImage"), 1}];
    [*(a1 + 32) gainMapValue];
    [v3 setGainMapValue:?];
  }
}

- (void)updateModulator
{
  tilingView = [(PUTileController *)self tilingView];
  shouldDisplayHDR = [tilingView shouldDisplayHDR];

  if (shouldDisplayHDR)
  {
    imageModulationManager = [(PUImageTileViewController *)self imageModulationManager];
    v6 = MEMORY[0x1E69C35F0];
    asset = [(PUImageTileViewController *)self asset];
    v8 = [v6 optionsForAsset:asset];
    v10 = v9;

    livePhotoViewModulator = [(PUIrisImageTileViewController *)self livePhotoViewModulator];
    [imageModulationManager checkInLivePhotoViewModulator:livePhotoViewModulator];

    v12 = [imageModulationManager checkoutLivePhotoViewModulatorWithOptions:{v8, v10}];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__PUIrisImageTileViewController_updateModulator__block_invoke;
    v13[3] = &unk_1E7B7AF58;
    v13[4] = self;
    [v12 performChanges:v13];
    [(PUIrisImageTileViewController *)self setLivePhotoViewModulator:v12];
  }
}

void __48__PUIrisImageTileViewController_updateModulator__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 _livePhotoView];
  v4 = [v5 playerView];
  [v3 setLivePhotoView:v4];
}

- (id)loadView
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PUIrisImageTileViewController;
  loadView = [(PUImageTileViewController *)&v15 loadView];
  v4 = objc_alloc_init(MEMORY[0x1E69790D8]);
  objc_storeStrong(&self->__livePhotoView, v4);
  [v4 setShouldApplyTargetReadiness:0];
  v5 = +[PUIrisSettings sharedInstance];
  [v4 setShowsStatusBorder:{objc_msgSend(v5, "showStatusBorder")}];

  [v4 setDelegate:self];
  [v4 setContentMode:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  [v4 setClipsToBounds:1];
  [v4 setPhotoView:loadView];
  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    v7 = PLLivePhotoPlaybackGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      assetViewModel = [(PUImageTileViewController *)self assetViewModel];
      asset = [assetViewModel asset];
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = asset;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Muting the live photo displayed by %{public}@ (asset %{public}@) because audible playback should only occur via the overlay tile.", buf, 0x16u);
    }

    [v4 setMuted:1];
  }

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  [v4 bounds];
  v11 = [v10 initWithFrame:?];
  [(UIView *)v11 setAutoresizingMask:18];
  [(UIView *)v11 setUserInteractionEnabled:0];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)v11 setBackgroundColor:clearColor2];

  [(UIView *)v11 setClipsToBounds:1];
  [v4 addSubview:v11];
  borderView = self->_borderView;
  self->_borderView = v11;

  [(PUIrisImageTileViewController *)self _updatePlaybackGestureRecognizer];
  [(PUIrisImageTileViewController *)self _updateLivePhotoViewVitalityEnabled];

  return v4;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToDidBeginPlaying = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToWillEndPlaying = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidEndPlaying = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidEndVitality = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToViewHostingGestureRecognizers = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDelegateForGestureRecognizer = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidBeginHinting = objc_opt_respondsToSelector() & 1;
    [(PUIrisImageTileViewController *)self _updatePlaybackGestureRecognizer];
  }
}

+ (OS_dispatch_queue)srlCompensationLoadingQueue
{
  if (srlCompensationLoadingQueue_onceToken_36404 != -1)
  {
    dispatch_once(&srlCompensationLoadingQueue_onceToken_36404, &__block_literal_global_36405);
  }

  v3 = srlCompensationLoadingQueue_queue_36406;

  return v3;
}

uint64_t __60__PUIrisImageTileViewController_srlCompensationLoadingQueue__block_invoke()
{
  v0 = px_dispatch_queue_create_serial();
  v1 = srlCompensationLoadingQueue_queue_36406;
  srlCompensationLoadingQueue_queue_36406 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end