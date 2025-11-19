@interface PUIrisImageTileViewController
+ (OS_dispatch_queue)srlCompensationLoadingQueue;
- (PUIrisImageTileViewControllerDelegate)delegate;
- (id)generateAssetTransitionInfo;
- (id)loadView;
- (id)viewsForApplyingBorder;
- (id)viewsForApplyingCornerRadius;
- (void)_handleBrowsingIrisPlayer:(id)a3 didChange:(id)a4;
- (void)_handleLoadedSRLCompensationAmount:(id)a3 forAsset:(id)a4;
- (void)_updateIrisPlayer;
- (void)_updateLivePhotoViewPlayer;
- (void)_updateLivePhotoViewVitalityEnabled;
- (void)_updatePlaybackGestureRecognizer;
- (void)_updatePlayerViewInteractivePlaybackAllowed;
- (void)_updateSRLCompensation;
- (void)_updateVitalityTransform;
- (void)addToTilingView:(id)a3;
- (void)applyLayoutInfo:(id)a3;
- (void)assetDidChange;
- (void)assetViewModelDidChange:(id)a3;
- (void)displayedImageRequestResultDidChange;
- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4;
- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4;
- (void)livePhotoViewDidBeginHinting:(id)a3;
- (void)livePhotoViewDidEndPlayingVitality:(id)a3;
- (void)ppt_playLivePhotoWithCompletionHandler:(id)a3;
- (void)removeAllAnimations;
- (void)setDelegate:(id)a3;
- (void)setIrisPlayer:(id)a3;
- (void)setIsVitalityDisabledByTransformInset:(BOOL)a3;
- (void)updateModulator;
- (void)updateModulatorInputs;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUIrisImageTileViewController

- (PUIrisImageTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)livePhotoViewDidBeginHinting:(id)a3
{
  if (self->_delegateFlags.respondsToDidBeginHinting)
  {
    v5 = [(PUIrisImageTileViewController *)self delegate];
    [v5 irisImageTileViewControllerDidBeginHinting:self];
  }
}

- (void)livePhotoViewDidEndPlayingVitality:(id)a3
{
  if (self->_delegateFlags.respondsToDidEndVitality)
  {
    v5 = [(PUIrisImageTileViewController *)self delegate];
    [v5 irisImageTileViewControllerDidEndVitality:self];
  }
}

- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4
{
  v8 = a3;
  if (self->_delegateFlags.respondsToDidEndPlaying)
  {
    v5 = [(PUIrisImageTileViewController *)self delegate];
    [v5 irisImageTileViewControllerDidEndPlaying:self];
  }

  ppt_didEndPlayingHandler = self->_ppt_didEndPlayingHandler;
  if (ppt_didEndPlayingHandler)
  {
    ppt_didEndPlayingHandler[2]();
    v7 = self->_ppt_didEndPlayingHandler;
    self->_ppt_didEndPlayingHandler = 0;
  }
}

- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4
{
  if (self->_delegateFlags.respondsToDidBeginPlaying)
  {
    v6 = [(PUIrisImageTileViewController *)self delegate:a3];
    [v6 irisImageTileViewControllerDidBeginPlaying:self];
  }
}

- (void)setIsVitalityDisabledByTransformInset:(BOOL)a3
{
  if (self->_isVitalityDisabledByTransformInset != a3)
  {
    self->_isVitalityDisabledByTransformInset = a3;
    [(PUIrisImageTileViewController *)self _updateLivePhotoViewVitalityEnabled];
  }
}

- (void)_updateVitalityTransform
{
  v3 = [(PUImageTileViewController *)self assetViewModel];
  v4 = [v3 irisPlayer];

  if (v4)
  {
    [v4 vitalityTransform];
    v5.i32[3] = 0;
    HIDWORD(v6) = 0;
    *v36 = v6;
    v7.i32[3] = 0;
    v34 = v5;
    v35 = v7;
    v8 = [v4 allowLargeVitalityInset];
  }

  else
  {
    v34 = *MEMORY[0x1E69E9B10];
    v35 = *(MEMORY[0x1E69E9B10] + 32);
    *v36 = *(MEMORY[0x1E69E9B10] + 16);
    v8 = [0 allowLargeVitalityInset];
  }

  v9 = vandq_s8(vandq_s8(vceqq_f32(*v36, v31), vceqq_f32(v34, v33)), vceqq_f32(v35, v32));
  v9.i32[3] = v9.i32[2];
  v10 = vminvq_u32(v9);
  v11 = *v34.i64;
  v12 = *v36;
  v13 = *v35.i64;
  if (v8)
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
  v30 = [v29 playerView];
  [v30 setVitalityTransform:v37];

  [(PUIrisImageTileViewController *)self setIsVitalityDisabledByTransformInset:v21];
}

- (void)_updatePlaybackGestureRecognizer
{
  v3 = [(PUIrisImageTileViewController *)self _livePhotoView];
  v4 = [v3 playbackGestureRecognizer];
  if (self->_delegateFlags.respondsToDelegateForGestureRecognizer)
  {
    v5 = [(PUIrisImageTileViewController *)self delegate];
    v6 = [v5 irisImageTileViewController:self delegateForGestureRecognizer:v4];
  }

  else
  {
    v6 = 0;
  }

  [v4 setDelegate:v6];
  v9 = v3;
  v7 = v9;
  if (self->_delegateFlags.respondsToViewHostingGestureRecognizers)
  {
    v8 = [(PUIrisImageTileViewController *)self delegate];
    v7 = [v8 irisImageTileViewControllerViewHostingGestureRecognizers:self];
  }

  [v7 addGestureRecognizer:v4];
}

- (void)_handleBrowsingIrisPlayer:(id)a3 didChange:(id)a4
{
  v5 = a4;
  if ([v5 playerDidChange])
  {
    [(PUIrisImageTileViewController *)self _updateLivePhotoViewPlayer];
  }

  if ([v5 activatedDidChange])
  {
    [(PUIrisImageTileViewController *)self _updatePlayerViewInteractivePlaybackAllowed];
  }

  if ([v5 vitalityTransformDidChange])
  {
    [(PUIrisImageTileViewController *)self _updateVitalityTransform];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = PUIrisImageTileViewController;
  [(PUOneUpImageTileViewController *)&v30 viewModel:v7 didChange:v8];
  v9 = [(PUImageTileViewController *)self assetViewModel];

  if (v9 == v7)
  {
    if ([v8 focusValueChanged])
    {
      [(PUIrisImageTileViewController *)self _assetFocusValueDidChange];
    }

    if ([v8 revealsGainMapImageChanged])
    {
      v18 = [(PUIrisImageTileViewController *)self livePhotoViewModulator];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __53__PUIrisImageTileViewController_viewModel_didChange___block_invoke;
      v29[3] = &unk_1E7B7AF58;
      v29[4] = self;
      [v18 performChanges:v29];
    }

    if ([v8 irisPlayerChanged])
    {
      [(PUIrisImageTileViewController *)self _updateIrisPlayer];
    }

    goto LABEL_22;
  }

  v10 = [(PUIrisImageTileViewController *)self irisPlayer];

  if (v10 == v7)
  {
    v12 = v7;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_20:
        [(PUIrisImageTileViewController *)self _handleBrowsingIrisPlayer:v12 didChange:v8];
LABEL_21:

        goto LABEL_22;
      }

      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v21 = NSStringFromClass(v22);
      v23 = [v12 px_descriptionForAssertionMessage];
      [v19 handleFailureInMethod:a2 object:self file:@"PUIrisImageTileViewController.m" lineNumber:338 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewModel", v21, v23}];
    }

    else
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      [v19 handleFailureInMethod:a2 object:self file:@"PUIrisImageTileViewController.m" lineNumber:338 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewModel", v21}];
    }

    goto LABEL_20;
  }

  v11 = [(PUImageTileViewController *)self browsingViewModel];

  if (v11 == v7)
  {
    v12 = v8;
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
          v13 = [(PUIrisImageTileViewController *)self _livePhotoView];
          v14 = [v13 playbackGestureRecognizer];
          v15 = [v14 isEnabled];

          if (v15)
          {
            v16 = [v13 playerView];
            v17 = [(PUImageTileViewController *)self browsingViewModel];
            [v16 setPlaybackFilterTouchActive:{objc_msgSend(v17, "livePhotoShouldPlay")}];
          }
        }

        goto LABEL_21;
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      v28 = [v12 px_descriptionForAssertionMessage];
      [v24 handleFailureInMethod:a2 object:self file:@"PUIrisImageTileViewController.m" lineNumber:342 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"change", v26, v28}];
    }

    else
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v24 handleFailureInMethod:a2 object:self file:@"PUIrisImageTileViewController.m" lineNumber:342 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"change", v26}];
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
  v3 = [(PUIrisImageTileViewController *)self _livePhotoView];
  if (([v3 isDisplayingPhoto] & 1) != 0 || ((-[PUTileViewController visibleRect](self, "visibleRect"), v5 == *MEMORY[0x1E695F060]) ? (v6 = v4 == *(MEMORY[0x1E695F060] + 8)) : (v6 = 0), v6))
  {
    v18.receiver = self;
    v18.super_class = PUIrisImageTileViewController;
    v9 = [(PUImageTileViewController *)&v18 generateAssetTransitionInfo];
  }

  else
  {
    v7 = [v3 generateSnapshotImage];
    v16 = 0uLL;
    v17 = 0;
    if (v3)
    {
      [v3 seekTime];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PUIrisImageTileViewController_generateAssetTransitionInfo__block_invoke;
    v11[3] = &unk_1E7B781F8;
    v14 = v16;
    v15 = v17;
    v12 = v7;
    v13 = self;
    v8 = v7;
    v9 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v11];
  }

  return v9;
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

- (void)ppt_playLivePhotoWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = _Block_copy(self->_ppt_didEndPlayingHandler);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __72__PUIrisImageTileViewController_ppt_playLivePhotoWithCompletionHandler___block_invoke;
    v13 = &unk_1E7B7FAA8;
    v14 = v5;
    v15 = v4;
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
  v18 = [(PUImageTileViewController *)self assetViewModel];
  [v18 focusValue];
  v4 = v3;
  v5 = +[PUOneUpSettings sharedInstance];
  [v5 livePhotoInteractionThreshold];
  v7 = v6;
  v8 = fabs(v4);
  v9 = [v18 irisPlayer];
  v10 = [v9 isActivated];

  v11 = +[PUOneUpSettings sharedInstance];
  if ([v11 shouldMergeOverlappingLivePhotos])
  {
    v12 = [(PUImageTileViewController *)self assetViewModel];
    v13 = [v12 asset];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  v15 = [(PUIrisImageTileViewController *)self _livePhotoView];
  v16 = [v15 playbackGestureRecognizer];

  if (v8 <= v7)
  {
    v17 = v10 | v14;
  }

  else
  {
    v17 = 0;
  }

  [v16 setEnabled:v17 & 1];
}

- (void)_updateLivePhotoViewPlayer
{
  v5 = [(PUIrisImageTileViewController *)self irisPlayer];
  v3 = [v5 player];
  v4 = [(PUIrisImageTileViewController *)self _livePhotoView];
  [v4 setPlayer:v3];
}

- (void)setIrisPlayer:(id)a3
{
  v5 = a3;
  irisPlayer = self->_irisPlayer;
  if (irisPlayer != v5)
  {
    v7 = v5;
    [(PUBrowsingIrisPlayer *)irisPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_irisPlayer, a3);
    [(PUBrowsingIrisPlayer *)self->_irisPlayer registerChangeObserver:self];
    irisPlayer = [(PUIrisImageTileViewController *)self _updateLivePhotoViewPlayer];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](irisPlayer, v5);
}

- (void)_updateIrisPlayer
{
  v4 = [(PUImageTileViewController *)self assetViewModel];
  v3 = [v4 irisPlayer];
  [(PUIrisImageTileViewController *)self setIrisPlayer:v3];
}

- (void)_handleLoadedSRLCompensationAmount:(id)a3 forAsset:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PUImageTileViewController *)self asset];

  if (v7 == v6)
  {
    v8 = [(PUIrisImageTileViewController *)self _livePhotoView];
    [v8 setOverrideSRLCompensationAmount:v9];
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
    v6 = [(PUImageTileViewController *)self asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(PUImageTileViewController *)self asset];
      objc_initWeak(&location, self);
      v9 = [objc_opt_class() srlCompensationLoadingQueue];
      v11 = v8;
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
  v10 = [(PUIrisImageTileViewController *)self _livePhotoView];
  [v10 setOverrideSRLCompensationAmount:v5];
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
  v4 = [v3 isVitalityAllowed];

  if (v4 && (-[PUImageTileViewController assetViewModel](self, "assetViewModel"), v5 = objc_claimAutoreleasedReturnValue(), [v5 irisPlayer], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(PUIrisImageTileViewController *)self isVitalityDisabledByTransformInset];
    v12 = [(PUIrisImageTileViewController *)self _livePhotoView];
    if (!v7)
    {
      v8 = [(PUTileController *)self tilingView];
      v9 = [v8 is_vitalityControllerCreateIfNeeded:1];

      v10 = [v12 playerView];
      [v9 addPlayerView:v10];
      goto LABEL_7;
    }
  }

  else
  {
    v12 = [(PUIrisImageTileViewController *)self _livePhotoView];
  }

  v11 = [(PUTileController *)self tilingView];
  v9 = [v11 is_vitalityControllerCreateIfNeeded:0];

  v10 = [v12 playerView];
  [v9 removePlayerView:v10];
LABEL_7:
}

- (void)displayedImageRequestResultDidChange
{
  v5.receiver = self;
  v5.super_class = PUIrisImageTileViewController;
  [(PUOneUpImageTileViewController *)&v5 displayedImageRequestResultDidChange];
  v3 = [(PUIrisImageTileViewController *)self _livePhotoView];
  v4 = [v3 debugOverlayView];
  [v4 update];
}

- (void)assetDidChange
{
  v3.receiver = self;
  v3.super_class = PUIrisImageTileViewController;
  [(PUImageTileViewController *)&v3 assetDidChange];
  [(PUIrisImageTileViewController *)self _updatePlayerViewInteractivePlaybackAllowed];
  [(PUIrisImageTileViewController *)self _updateSRLCompensation];
}

- (void)assetViewModelDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUIrisImageTileViewController;
  [(PUOneUpImageTileViewController *)&v4 assetViewModelDidChange:a3];
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
    v3 = [(PUIrisImageTileViewController *)self borderView];
    v6[0] = v3;
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
    v3 = [(PUIrisImageTileViewController *)self _livePhotoView];
    v7[0] = v3;
    v4 = [(PUIrisImageTileViewController *)self borderView];
    v7[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)applyLayoutInfo:(id)a3
{
  v16.receiver = self;
  v16.super_class = PUIrisImageTileViewController;
  v4 = a3;
  [(PUOneUpImageTileViewController *)&v16 applyLayoutInfo:v4];
  [v4 contentsRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(PUIrisImageTileViewController *)self _livePhotoView];
  v14 = [v13 playerView];
  [v14 setContentsRect:{v6, v8, v10, v12}];

  v15 = [(PUTileViewController *)self view];
  [v15 layoutIfNeeded];

  [(PUIrisImageTileViewController *)self _updateVitalityTransform];
}

- (void)addToTilingView:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUIrisImageTileViewController;
  [(PUTileViewController *)&v4 addToTilingView:a3];
  [(PUIrisImageTileViewController *)self _updateLivePhotoViewVitalityEnabled];
}

- (void)removeAllAnimations
{
  v4.receiver = self;
  v4.super_class = PUIrisImageTileViewController;
  [(PUTileViewController *)&v4 removeAllAnimations];
  v3 = [(PUIrisImageTileViewController *)self _livePhotoView];
  [v3 pu_removeAllGeometryAnimationsRecursively:1];
}

- (void)updateModulatorInputs
{
  v3 = [(PUIrisImageTileViewController *)self livePhotoViewModulator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PUIrisImageTileViewController_updateModulatorInputs__block_invoke;
  v4[3] = &unk_1E7B7AF58;
  v4[4] = self;
  [v3 performChanges:v4];
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
  v3 = [(PUTileController *)self tilingView];
  v4 = [v3 shouldDisplayHDR];

  if (v4)
  {
    v5 = [(PUImageTileViewController *)self imageModulationManager];
    v6 = MEMORY[0x1E69C35F0];
    v7 = [(PUImageTileViewController *)self asset];
    v8 = [v6 optionsForAsset:v7];
    v10 = v9;

    v11 = [(PUIrisImageTileViewController *)self livePhotoViewModulator];
    [v5 checkInLivePhotoViewModulator:v11];

    v12 = [v5 checkoutLivePhotoViewModulatorWithOptions:{v8, v10}];
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
  v3 = [(PUImageTileViewController *)&v15 loadView];
  v4 = objc_alloc_init(MEMORY[0x1E69790D8]);
  objc_storeStrong(&self->__livePhotoView, v4);
  [v4 setShouldApplyTargetReadiness:0];
  v5 = +[PUIrisSettings sharedInstance];
  [v4 setShowsStatusBorder:{objc_msgSend(v5, "showStatusBorder")}];

  [v4 setDelegate:self];
  [v4 setContentMode:2];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v6];

  [v4 setClipsToBounds:1];
  [v4 setPhotoView:v3];
  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    v7 = PLLivePhotoPlaybackGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PUImageTileViewController *)self assetViewModel];
      v9 = [v8 asset];
      *buf = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Muting the live photo displayed by %{public}@ (asset %{public}@) because audible playback should only occur via the overlay tile.", buf, 0x16u);
    }

    [v4 setMuted:1];
  }

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  [v4 bounds];
  v11 = [v10 initWithFrame:?];
  [(UIView *)v11 setAutoresizingMask:18];
  [(UIView *)v11 setUserInteractionEnabled:0];
  v12 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)v11 setBackgroundColor:v12];

  [(UIView *)v11 setClipsToBounds:1];
  [v4 addSubview:v11];
  borderView = self->_borderView;
  self->_borderView = v11;

  [(PUIrisImageTileViewController *)self _updatePlaybackGestureRecognizer];
  [(PUIrisImageTileViewController *)self _updateLivePhotoViewVitalityEnabled];

  return v4;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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