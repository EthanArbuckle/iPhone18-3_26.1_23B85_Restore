@interface PULivePhotoVideoOverlayTileViewController
+ (OS_dispatch_queue)srlCompensationLoadingQueue;
- (BOOL)livePhotoView:(id)a3 canBeginPlaybackWithStyle:(int64_t)a4;
- (PULivePhotoVideoOverlayTileViewControllerDelegate)delegate;
- (double)livePhotoView:(id)a3 extraMinimumTouchDurationForTouch:(id)a4 withStyle:(int64_t)a5;
- (id)loadView;
- (void)_handleLoadedSRLCompensationAmount:(id)a3 forAsset:(id)a4;
- (void)_updateLivePhotoViewModulator;
- (void)_updateLivePhotoViewModulatorInput;
- (void)_updateLivePhotoViewPhoto;
- (void)_updateMergedVideo;
- (void)_updatePlaybackEnabled;
- (void)_updateSRLCompensation;
- (void)_videoCurrentTimeDidChange:(id *)a3;
- (void)becomeReusable;
- (void)dealloc;
- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4;
- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setBrowsingViewModel:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setImageModulationManager:(id)a3;
- (void)setLivePhotoViewModulator:(id)a3;
- (void)setMergedVideo:(id)a3;
- (void)setMergedVideoProvider:(id)a3;
- (void)setPlaybackAssetReference:(id)a3;
- (void)setVideoPlayer:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PULivePhotoVideoOverlayTileViewController

- (PULivePhotoVideoOverlayTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleLoadedSRLCompensationAmount:(id)a3 forAsset:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideo];
  v8 = [v7 assets];
  v9 = [v8 firstObject];

  if (v9 == v6)
  {
    v10 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
    [v10 setOverrideSRLCompensationAmount:v11];
  }
}

- (void)_updateSRLCompensation
{
  v3 = +[PUOneUpSettings sharedInstance];
  if (![v3 livePhotoSRLCompensationEnabled])
  {
    goto LABEL_5;
  }

  if (![v3 livePhotoSRLCompensationManualMode])
  {
    v6 = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideo];
    v7 = [v6 assets];
    v8 = [v7 firstObject];

    objc_initWeak(&location, self);
    v9 = [objc_opt_class() srlCompensationLoadingQueue];
    v11 = v8;
    objc_copyWeak(&v12, &location);
    PXDispatchAsyncWithSignpost();

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = MEMORY[0x1E696AD98];
  [v3 livePhotoSRLCompensationManualValue];
  v5 = [v4 numberWithDouble:?];
LABEL_6:
  v10 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  [v10 setOverrideSRLCompensationAmount:v5];
}

void __67__PULivePhotoVideoOverlayTileViewController__updateSRLCompensation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) livePhotoSRLCompensationAmount];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PULivePhotoVideoOverlayTileViewController__updateSRLCompensation__block_invoke_2;
  block[3] = &unk_1E7B7F820;
  objc_copyWeak(&v7, (a1 + 40));
  v5 = v2;
  v6 = *(a1 + 32);
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
}

void __67__PULivePhotoVideoOverlayTileViewController__updateSRLCompensation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleLoadedSRLCompensationAmount:*(a1 + 32) forAsset:*(a1 + 40)];
}

- (void)_updatePlaybackEnabled
{
  v3 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  v4 = [v3 player];
  v5 = [v4 currentPlaybackStyle];

  if (!v5)
  {
    v17 = [(PULivePhotoVideoOverlayTileViewController *)self browsingViewModel];
    v6 = [v17 currentAssetReference];
    v7 = [v17 assetViewModelForAssetReference:v6];
    v8 = [v6 asset];
    v9 = [v8 playbackStyle];

    if (v9 == 3 && ([v17 currentAssetTransitionProgress], PXFloatEqualToFloatWithTolerance()) && (objc_msgSend(v7, "isAccessoryViewVisible") & 1) == 0 && (objc_msgSend(v7, "irisPlayer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isActivated"), v10, (v11 & 1) == 0))
    {
      v16 = [v7 asset];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    v13 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
    v14 = [v13 playbackGestureRecognizer];
    [v14 setEnabled:isKindOfClass & 1];

    v15 = [(PULivePhotoVideoOverlayTileViewController *)self containerView];
    [v15 setHidden:(isKindOfClass & 1) == 0];
  }
}

- (void)_videoCurrentTimeDidChange:(id *)a3
{
  v15 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  v5 = [v15 player];
  if ([v5 currentPlaybackStyle] == 1 && !-[PULivePhotoVideoOverlayTileViewController isPresentedForSecondScreen](self, "isPresentedForSecondScreen"))
  {
    v6 = [(PULivePhotoVideoOverlayTileViewController *)self willEndCurrentPlayback];

    if (!v6)
    {
      v22 = NAN;
      v7 = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideo];
      v20 = *&a3->var0;
      var3 = a3->var3;
      v8 = [v7 assetAtTime:&v20 progress:&v22];

      if (v8)
      {
        v9 = [(PULivePhotoVideoOverlayTileViewController *)self browsingViewModel];
        v10 = [[PUAssetReference alloc] initWithAsset:v8 assetCollection:0 indexPath:0 dataSourceIdentifier:0];
        v11 = [v9 assetsDataSource];
        v12 = [v11 assetReferenceForAssetReference:v10];

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __72__PULivePhotoVideoOverlayTileViewController__videoCurrentTimeDidChange___block_invoke;
        v16[3] = &unk_1E7B7F350;
        v17 = v9;
        v18 = v12;
        v19 = v22;
        v13 = v12;
        v14 = v9;
        [v14 performChanges:v16];
      }
    }
  }

  else
  {
  }
}

- (void)_updateMergedVideo
{
  v3 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  v6 = [v3 player];

  if (![v6 currentPlaybackStyle])
  {
    v4 = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideoProvider];
    v5 = [v4 mergedVideo];
    [(PULivePhotoVideoOverlayTileViewController *)self setMergedVideo:v5];
  }
}

- (void)_updateLivePhotoViewModulatorInput
{
  v3 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoViewModulator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__PULivePhotoVideoOverlayTileViewController__updateLivePhotoViewModulatorInput__block_invoke;
  v4[3] = &unk_1E7B7AF58;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __79__PULivePhotoVideoOverlayTileViewController__updateLivePhotoViewModulatorInput__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 livePhotoView];
  v4 = [v5 playerView];
  [v3 setLivePhotoView:v4];
}

- (void)setLivePhotoViewModulator:(id)a3
{
  v5 = a3;
  if (self->_livePhotoViewModulator != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_livePhotoViewModulator, a3);
    [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewModulatorInput];
    v5 = v6;
  }
}

- (void)_updateLivePhotoViewModulator
{
  v10 = [(PULivePhotoVideoOverlayTileViewController *)self imageModulationManager];
  v3 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoViewModulator];
  [v10 checkInLivePhotoViewModulator:v3];

  v4 = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideo];
  v5 = [v4 assets];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [MEMORY[0x1E69C35F0] optionsForAsset:v6];
    v9 = [v10 checkoutLivePhotoViewModulatorWithOptions:{v7, v8}];
    [(PULivePhotoVideoOverlayTileViewController *)self setLivePhotoViewModulator:v9];
  }

  else
  {
    [(PULivePhotoVideoOverlayTileViewController *)self setLivePhotoViewModulator:0];
  }
}

- (void)setImageModulationManager:(id)a3
{
  v5 = a3;
  if (self->_imageModulationManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_imageModulationManager, a3);
    [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewModulator];
    v5 = v6;
  }
}

- (void)setVideoPlayer:(id)a3
{
  v5 = a3;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != v5)
  {
    v7 = [(PULivePhotoVideoOverlayTileViewController *)self videoPlayerTimeObserver];
    [(ISWrappedAVPlayer *)videoPlayer removeTimeObserver:v7];

    objc_storeStrong(&self->_videoPlayer, a3);
    objc_initWeak(&location, self);
    CMTimeMake(&v13, 1, 60);
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PULivePhotoVideoOverlayTileViewController_setVideoPlayer___block_invoke;
    v11[3] = &unk_1E7B7D380;
    objc_copyWeak(&v12, &location);
    v10 = [(ISWrappedAVPlayer *)v5 addPeriodicTimeObserverForInterval:&v13 queue:v8 usingBlock:v11];
    [(PULivePhotoVideoOverlayTileViewController *)self setVideoPlayerTimeObserver:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __60__PULivePhotoVideoOverlayTileViewController_setVideoPlayer___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _videoCurrentTimeDidChange:&v4];
}

- (void)_updateLivePhotoViewPhoto
{
  v3 = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  v4 = [v3 livePhotoVideoPlaybackTileViewControllerCurrentImage:self];

  v5 = [v4 CGImage];
  v6 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  [v6 setOverridePhoto:v5];

  v13 = 0;
  v12 = 0;
  v7 = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  v8 = [v7 livePhotoVideoPlaybackTileViewControllerCurrentGainMapImage:self outGainMapAvailable:&v13 outGainMapValue:&v12];

  if (v13 == 1)
  {
    v9 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoViewModulator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__PULivePhotoVideoOverlayTileViewController__updateLivePhotoViewPhoto__block_invoke;
    v10[3] = &__block_descriptor_52_e43_v16__0___PXMutableLivePhotoViewModulator__8l;
    v10[4] = v5;
    v10[5] = v8;
    v11 = v12;
    [v9 performChanges:v10];
  }
}

void __70__PULivePhotoVideoOverlayTileViewController__updateLivePhotoViewPhoto__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  v5 = a2;
  [v5 setGainMapImage:v3];
  LODWORD(v4) = *(a1 + 48);
  [v5 setGainMapValue:v4];
}

- (void)setPlaybackAssetReference:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_playbackAssetReference != v5)
  {
    objc_storeStrong(&self->_playbackAssetReference, a3);
    if (v5)
    {
      v6 = [(PUTileController *)self tilingView];
      v14[0] = self;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v6 detachTileControllers:v7];

      v8 = [(PUTileViewController *)self view];
      v9 = [(PUTileController *)self tilingView];
      v10 = [v9 superview];
      [v8 px_transferToSuperview:v10];
    }

    else
    {
      v11 = [(PUTileViewController *)self view];
      v12 = [(PUTileController *)self tilingView];
      [v11 px_transferToSuperview:v12];

      v8 = [(PUTileController *)self tilingView];
      v13 = self;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v8 reattachTileControllers:v9 withContext:0];
    }
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PULivePhotoVideoOverlayTileViewController *)self browsingViewModel];

  if (v8 != v6)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      browsingViewModel = self->_browsingViewModel;
      *buf = 138412802;
      v36 = self;
      v37 = 2112;
      v38 = browsingViewModel;
      v39 = 2112;
      v40 = v6;
      _os_log_fault_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_FAULT, "Unexpected browsing view model sent a change to %@. Expected %@, but got %@.", buf, 0x20u);
    }
  }

  v10 = [v7 isScrubbingActivationDidChange];
  v11 = [v7 currentAssetTransitionProgressDidChange];
  v12 = [v7 currentAssetDidChange] | v11 | v10;
  v13 = [v6 currentAssetReference];
  if (v13 && (v12 & 1) == 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [v7 assetViewModelChangesByAssetReference];
    v15 = [v14 objectForKeyedSubscript:v13];

    v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      v29 = self;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = [v20 irisPlayerChange];
          v22 = [v21 activatedDidChange];

          if (v22 & 1) != 0 || ([v20 accessoryViewVisibilityChanged])
          {
            v12 = 1;
            self = v29;
            goto LABEL_19;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
        v12 = 0;
        self = v29;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
  }

  v23 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  if ([v7 livePhotoShouldPlayDidChange])
  {
    v24 = [v23 playbackGestureRecognizer];
    v25 = [v24 isEnabled];

    if (v25)
    {
      v26 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
      v27 = [v26 playerView];
      [v27 setPlaybackFilterTouchActive:{objc_msgSend(v6, "livePhotoShouldPlay")}];
    }
  }

  if (v12)
  {
    [(PULivePhotoVideoOverlayTileViewController *)self _updatePlaybackEnabled];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (MergedVideoProviderContext_32337 == a5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PULivePhotoVideoOverlayTileViewController.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"[observable isKindOfClass:PUOneUpMergedVideoProvider.class]"}];

      if ((v6 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v11 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v12 = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke;
    goto LABEL_15;
  }

  if (VideoPlayerChangeContext != a5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PULivePhotoVideoOverlayTileViewController.m" lineNumber:251 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x40) != 0 && ![(PULivePhotoVideoOverlayTileViewController *)self isPresentedForSecondScreen])
  {
    v15[10] = MEMORY[0x1E69E9820];
    v15[11] = 3221225472;
    v15[12] = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_2;
    v15[13] = &unk_1E7B80DD0;
    v15[14] = self;
    px_dispatch_on_main_queue();
  }

  if (v6 < 0 && ![(PULivePhotoVideoOverlayTileViewController *)self isPresentedForSecondScreen])
  {
    v10 = [(PULivePhotoVideoOverlayTileViewController *)self playbackAssetReference];

    if (v10)
    {
      v15[5] = MEMORY[0x1E69E9820];
      v15[6] = 3221225472;
      v15[7] = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_4;
      v15[8] = &unk_1E7B80DD0;
      v15[9] = self;
      px_dispatch_on_main_queue();
    }
  }

  if ((v6 & 4) != 0)
  {
    v11 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v12 = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_7;
LABEL_15:
    v11[2] = v12;
    v11[3] = &unk_1E7B80DD0;
    v11[4] = self;
    px_dispatch_on_main_queue();
  }

LABEL_16:
}

void __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) browsingViewModel];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_3;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = *(a1 + 32);
  [v2 performChanges:v3];
}

void __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setWillEndCurrentPlayback:1];
  v2 = [*(a1 + 32) browsingViewModel];
  v3 = [*(a1 + 32) modelTileTransform];
  v4 = [*(a1 + 32) playbackAssetReference];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_5;
  v8[3] = &unk_1E7B809F0;
  v9 = v2;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  v7 = v2;
  [v7 performChanges:v8];
}

void __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_7(uint64_t a1)
{
  v4 = [*(a1 + 32) livePhotoView];
  v2 = [v4 player];
  v3 = [v2 videoPlayer];
  [*(a1 + 32) setVideoPlayer:v3];
}

void __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) assetViewModelForAssetReference:*(a1 + 40)];
  v3 = v2;
  if (*(a1 + 48))
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_6;
    v9 = &unk_1E7B80C38;
    v10 = v2;
    v11 = *(a1 + 48);
    [v10 performChanges:&v6];
  }

  [*(a1 + 32) setVideoOverlayPlayState:{0, v6, v7, v8, v9}];
  v4 = [*(a1 + 32) assetsDataSource];
  v5 = [v4 assetReferenceForAssetReference:*(a1 + 40)];

  [*(a1 + 32) setCurrentAssetReference:v5 transitionProgress:@"PUBrowsingViewModelTransitionDriverIdentifierLivePhotoOverlay" transitionDriverIdentifier:0 animated:0.0];
}

void __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) mergedVideoProvider];
  v2 = [v5 livePhotoPlayer];
  v3 = [v2 isAttemptingToPlayback];
  v4 = [*(a1 + 32) browsingViewModel];
  [v4 setIsAttemptingToPlayVideoOverlay:v3];
}

- (double)livePhotoView:(id)a3 extraMinimumTouchDurationForTouch:(id)a4 withStyle:(int64_t)a5
{
  v6 = a4;
  v7 = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  [v7 livePhotoVideoPlaybackTileViewControllerExtraMinimumTouchDuration:self locationProvider:v6];
  v9 = v8;

  return v9;
}

- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4
{
  v5 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView:a3];
  [v5 setHidden:1];

  [(PULivePhotoVideoOverlayTileViewController *)self setPlaybackAssetReference:0];
  v6 = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  [v6 livePhotoVideoPlaybackTileViewControllerDidEndPlaying:self];

  [(PULivePhotoVideoOverlayTileViewController *)self _updateMergedVideo];
}

- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4
{
  [(PULivePhotoVideoOverlayTileViewController *)self setWillEndCurrentPlayback:0, a4];
  [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewPhoto];
  v5 = [(PULivePhotoVideoOverlayTileViewController *)self browsingViewModel];
  v6 = [v5 currentAssetReference];
  [(PULivePhotoVideoOverlayTileViewController *)self setPlaybackAssetReference:v6];
  v7 = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  v8 = [v7 livePhotoVideoPlaybackTileViewControllerDisplayTileTransform:self];

  v9 = [v8 modelTileTransform];
  [(PULivePhotoVideoOverlayTileViewController *)self setModelTileTransform:v9];

  v10 = [v8 modelTileTransform];
  v11 = [v10 hasUserZoomedIn];

  v12 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  [v12 setHidden:0];

  if (![(PULivePhotoVideoOverlayTileViewController *)self isPresentedForSecondScreen])
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __86__PULivePhotoVideoOverlayTileViewController_livePhotoView_willBeginPlaybackWithStyle___block_invoke;
    v17 = &unk_1E7B7FF98;
    v18 = v5;
    v19 = v11;
    [v18 performChanges:&v14];
  }

  v13 = [(PULivePhotoVideoOverlayTileViewController *)self delegate:v14];
  [v13 livePhotoVideoPlaybackTileViewControllerWillBeginPlaying:self];
}

uint64_t __86__PULivePhotoVideoOverlayTileViewController_livePhotoView_willBeginPlaybackWithStyle___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return [*(a1 + 32) setVideoOverlayPlayState:v1];
}

- (BOOL)livePhotoView:(id)a3 canBeginPlaybackWithStyle:(int64_t)a4
{
  v4 = self;
  v5 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView:a3];
  v6 = [v5 playbackGestureRecognizer];

  v7 = [(PULivePhotoVideoOverlayTileViewController *)v4 delegate];
  LOBYTE(v4) = [v7 livePhotoVideoPlaybackTileViewControllerCanBeginPlaying:v4 locationProvider:v6];

  return v4;
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PULivePhotoVideoOverlayTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PULivePhotoVideoOverlayTileViewController *)self setBrowsingViewModel:0];
  [(PULivePhotoVideoOverlayTileViewController *)self setImageModulationManager:0];
  [(PULivePhotoVideoOverlayTileViewController *)self setMergedVideoProvider:0];
}

- (id)loadView
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  containerView = self->_containerView;
  self->_containerView = v3;

  [(UIView *)self->_containerView setUserInteractionEnabled:0];
  [(UIView *)self->_containerView setClipsToBounds:1];
  v5 = objc_alloc_init(MEMORY[0x1E69790D8]);
  livePhotoView = self->_livePhotoView;
  self->_livePhotoView = v5;

  [(UIView *)self->_containerView bounds];
  [(PHLivePhotoView *)self->_livePhotoView setFrame:?];
  [(PHLivePhotoView *)self->_livePhotoView setAutoresizingMask:18];
  [(PHLivePhotoView *)self->_livePhotoView setUserInteractionEnabled:0];
  [(PHLivePhotoView *)self->_livePhotoView setContentMode:2];
  [(PHLivePhotoView *)self->_livePhotoView setDelegate:self];
  [(PHLivePhotoView *)self->_livePhotoView setHidden:1];
  [(PHLivePhotoView *)self->_livePhotoView setClipsToBounds:1];
  [(PHLivePhotoView *)self->_livePhotoView setShouldApplyTargetReadiness:0];
  v7 = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideoProvider];
  v8 = [v7 livePhotoPlayer];
  [(PHLivePhotoView *)self->_livePhotoView setPlayer:v8];

  v9 = [(PHLivePhotoView *)self->_livePhotoView player];
  v10 = [v9 videoPlayer];
  [(PULivePhotoVideoOverlayTileViewController *)self setVideoPlayer:v10];

  v11 = [(PHLivePhotoView *)self->_livePhotoView player];
  [v11 registerChangeObserver:self context:VideoPlayerChangeContext];

  [(UIView *)self->_containerView addSubview:self->_livePhotoView];
  v12 = [(PHLivePhotoView *)self->_livePhotoView playbackGestureRecognizer];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  playbackGestureRecognizers = self->_playbackGestureRecognizers;
  self->_playbackGestureRecognizers = v13;

  modelTileTransform = self->_modelTileTransform;
  self->_modelTileTransform = 0;

  [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewPhoto];
  [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewModulatorInput];
  v16 = self->_containerView;

  return v16;
}

- (void)dealloc
{
  [(ISWrappedAVPlayer *)self->_videoPlayer removeTimeObserver:self->_videoPlayerTimeObserver];
  v3.receiver = self;
  v3.super_class = PULivePhotoVideoOverlayTileViewController;
  [(PUTileViewController *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PULivePhotoVideoOverlayTileViewController *)self _updatePlaybackEnabled];
    v5 = obj;
  }
}

- (void)setBrowsingViewModel:(id)a3
{
  v5 = a3;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != v5)
  {
    v7 = v5;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, a3);
    browsingViewModel = [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, v5);
}

- (void)setMergedVideoProvider:(id)a3
{
  v5 = a3;
  mergedVideoProvider = self->_mergedVideoProvider;
  if (mergedVideoProvider != v5)
  {
    v12 = v5;
    [(PUOneUpMergedVideoProvider *)mergedVideoProvider unregisterChangeObserver:self context:MergedVideoProviderContext_32337];
    objc_storeStrong(&self->_mergedVideoProvider, a3);
    [(PUOneUpMergedVideoProvider *)self->_mergedVideoProvider registerChangeObserver:self context:MergedVideoProviderContext_32337];
    v7 = [(PUOneUpMergedVideoProvider *)v12 livePhotoPlayer];
    v8 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
    [v8 setPlayer:v7];

    v9 = [(PHLivePhotoView *)self->_livePhotoView player];
    v10 = [v9 videoPlayer];
    [(PULivePhotoVideoOverlayTileViewController *)self setVideoPlayer:v10];

    v11 = [(PHLivePhotoView *)self->_livePhotoView player];
    [v11 registerChangeObserver:self context:VideoPlayerChangeContext];

    mergedVideoProvider = [(PULivePhotoVideoOverlayTileViewController *)self _updateMergedVideo];
    v5 = v12;
  }

  MEMORY[0x1EEE66BB8](mergedVideoProvider, v5);
}

- (void)setMergedVideo:(id)a3
{
  v5 = a3;
  if (self->_mergedVideo != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mergedVideo, a3);
    [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewModulator];
    [(PULivePhotoVideoOverlayTileViewController *)self _updateSRLCompensation];
    v5 = v6;
  }
}

+ (OS_dispatch_queue)srlCompensationLoadingQueue
{
  if (srlCompensationLoadingQueue_onceToken != -1)
  {
    dispatch_once(&srlCompensationLoadingQueue_onceToken, &__block_literal_global_32362);
  }

  v3 = srlCompensationLoadingQueue_queue;

  return v3;
}

uint64_t __72__PULivePhotoVideoOverlayTileViewController_srlCompensationLoadingQueue__block_invoke()
{
  v0 = px_dispatch_queue_create_serial();
  v1 = srlCompensationLoadingQueue_queue;
  srlCompensationLoadingQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end