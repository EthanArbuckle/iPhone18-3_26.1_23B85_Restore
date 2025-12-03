@interface PULivePhotoVideoOverlayTileViewController
+ (OS_dispatch_queue)srlCompensationLoadingQueue;
- (BOOL)livePhotoView:(id)view canBeginPlaybackWithStyle:(int64_t)style;
- (PULivePhotoVideoOverlayTileViewControllerDelegate)delegate;
- (double)livePhotoView:(id)view extraMinimumTouchDurationForTouch:(id)touch withStyle:(int64_t)style;
- (id)loadView;
- (void)_handleLoadedSRLCompensationAmount:(id)amount forAsset:(id)asset;
- (void)_updateLivePhotoViewModulator;
- (void)_updateLivePhotoViewModulatorInput;
- (void)_updateLivePhotoViewPhoto;
- (void)_updateMergedVideo;
- (void)_updatePlaybackEnabled;
- (void)_updateSRLCompensation;
- (void)_videoCurrentTimeDidChange:(id *)change;
- (void)becomeReusable;
- (void)dealloc;
- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style;
- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBrowsingViewModel:(id)model;
- (void)setDelegate:(id)delegate;
- (void)setImageModulationManager:(id)manager;
- (void)setLivePhotoViewModulator:(id)modulator;
- (void)setMergedVideo:(id)video;
- (void)setMergedVideoProvider:(id)provider;
- (void)setPlaybackAssetReference:(id)reference;
- (void)setVideoPlayer:(id)player;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PULivePhotoVideoOverlayTileViewController

- (PULivePhotoVideoOverlayTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleLoadedSRLCompensationAmount:(id)amount forAsset:(id)asset
{
  amountCopy = amount;
  assetCopy = asset;
  mergedVideo = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideo];
  assets = [mergedVideo assets];
  firstObject = [assets firstObject];

  if (firstObject == assetCopy)
  {
    livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
    [livePhotoView setOverrideSRLCompensationAmount:amountCopy];
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
    mergedVideo = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideo];
    assets = [mergedVideo assets];
    firstObject = [assets firstObject];

    objc_initWeak(&location, self);
    srlCompensationLoadingQueue = [objc_opt_class() srlCompensationLoadingQueue];
    v11 = firstObject;
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
  livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  [livePhotoView setOverrideSRLCompensationAmount:v5];
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
  livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  player = [livePhotoView player];
  currentPlaybackStyle = [player currentPlaybackStyle];

  if (!currentPlaybackStyle)
  {
    browsingViewModel = [(PULivePhotoVideoOverlayTileViewController *)self browsingViewModel];
    currentAssetReference = [browsingViewModel currentAssetReference];
    v7 = [browsingViewModel assetViewModelForAssetReference:currentAssetReference];
    asset = [currentAssetReference asset];
    playbackStyle = [asset playbackStyle];

    if (playbackStyle == 3 && ([browsingViewModel currentAssetTransitionProgress], PXFloatEqualToFloatWithTolerance()) && (objc_msgSend(v7, "isAccessoryViewVisible") & 1) == 0 && (objc_msgSend(v7, "irisPlayer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isActivated"), v10, (v11 & 1) == 0))
    {
      asset2 = [v7 asset];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    livePhotoView2 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
    playbackGestureRecognizer = [livePhotoView2 playbackGestureRecognizer];
    [playbackGestureRecognizer setEnabled:isKindOfClass & 1];

    containerView = [(PULivePhotoVideoOverlayTileViewController *)self containerView];
    [containerView setHidden:(isKindOfClass & 1) == 0];
  }
}

- (void)_videoCurrentTimeDidChange:(id *)change
{
  livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  player = [livePhotoView player];
  if ([player currentPlaybackStyle] == 1 && !-[PULivePhotoVideoOverlayTileViewController isPresentedForSecondScreen](self, "isPresentedForSecondScreen"))
  {
    willEndCurrentPlayback = [(PULivePhotoVideoOverlayTileViewController *)self willEndCurrentPlayback];

    if (!willEndCurrentPlayback)
    {
      v22 = NAN;
      mergedVideo = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideo];
      v20 = *&change->var0;
      var3 = change->var3;
      v8 = [mergedVideo assetAtTime:&v20 progress:&v22];

      if (v8)
      {
        browsingViewModel = [(PULivePhotoVideoOverlayTileViewController *)self browsingViewModel];
        v10 = [[PUAssetReference alloc] initWithAsset:v8 assetCollection:0 indexPath:0 dataSourceIdentifier:0];
        assetsDataSource = [browsingViewModel assetsDataSource];
        v12 = [assetsDataSource assetReferenceForAssetReference:v10];

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __72__PULivePhotoVideoOverlayTileViewController__videoCurrentTimeDidChange___block_invoke;
        v16[3] = &unk_1E7B7F350;
        v17 = browsingViewModel;
        v18 = v12;
        v19 = v22;
        v13 = v12;
        v14 = browsingViewModel;
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
  livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  player = [livePhotoView player];

  if (![player currentPlaybackStyle])
  {
    mergedVideoProvider = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideoProvider];
    mergedVideo = [mergedVideoProvider mergedVideo];
    [(PULivePhotoVideoOverlayTileViewController *)self setMergedVideo:mergedVideo];
  }
}

- (void)_updateLivePhotoViewModulatorInput
{
  livePhotoViewModulator = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoViewModulator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__PULivePhotoVideoOverlayTileViewController__updateLivePhotoViewModulatorInput__block_invoke;
  v4[3] = &unk_1E7B7AF58;
  v4[4] = self;
  [livePhotoViewModulator performChanges:v4];
}

void __79__PULivePhotoVideoOverlayTileViewController__updateLivePhotoViewModulatorInput__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 livePhotoView];
  v4 = [v5 playerView];
  [v3 setLivePhotoView:v4];
}

- (void)setLivePhotoViewModulator:(id)modulator
{
  modulatorCopy = modulator;
  if (self->_livePhotoViewModulator != modulatorCopy)
  {
    v6 = modulatorCopy;
    objc_storeStrong(&self->_livePhotoViewModulator, modulator);
    [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewModulatorInput];
    modulatorCopy = v6;
  }
}

- (void)_updateLivePhotoViewModulator
{
  imageModulationManager = [(PULivePhotoVideoOverlayTileViewController *)self imageModulationManager];
  livePhotoViewModulator = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoViewModulator];
  [imageModulationManager checkInLivePhotoViewModulator:livePhotoViewModulator];

  mergedVideo = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideo];
  assets = [mergedVideo assets];
  firstObject = [assets firstObject];

  if (firstObject)
  {
    v7 = [MEMORY[0x1E69C35F0] optionsForAsset:firstObject];
    v9 = [imageModulationManager checkoutLivePhotoViewModulatorWithOptions:{v7, v8}];
    [(PULivePhotoVideoOverlayTileViewController *)self setLivePhotoViewModulator:v9];
  }

  else
  {
    [(PULivePhotoVideoOverlayTileViewController *)self setLivePhotoViewModulator:0];
  }
}

- (void)setImageModulationManager:(id)manager
{
  managerCopy = manager;
  if (self->_imageModulationManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_imageModulationManager, manager);
    [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewModulator];
    managerCopy = v6;
  }
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != playerCopy)
  {
    videoPlayerTimeObserver = [(PULivePhotoVideoOverlayTileViewController *)self videoPlayerTimeObserver];
    [(ISWrappedAVPlayer *)videoPlayer removeTimeObserver:videoPlayerTimeObserver];

    objc_storeStrong(&self->_videoPlayer, player);
    objc_initWeak(&location, self);
    CMTimeMake(&v13, 1, 60);
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PULivePhotoVideoOverlayTileViewController_setVideoPlayer___block_invoke;
    v11[3] = &unk_1E7B7D380;
    objc_copyWeak(&v12, &location);
    v10 = [(ISWrappedAVPlayer *)playerCopy addPeriodicTimeObserverForInterval:&v13 queue:v8 usingBlock:v11];
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
  delegate = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  v4 = [delegate livePhotoVideoPlaybackTileViewControllerCurrentImage:self];

  cGImage = [v4 CGImage];
  livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  [livePhotoView setOverridePhoto:cGImage];

  v13 = 0;
  v12 = 0;
  delegate2 = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  v8 = [delegate2 livePhotoVideoPlaybackTileViewControllerCurrentGainMapImage:self outGainMapAvailable:&v13 outGainMapValue:&v12];

  if (v13 == 1)
  {
    livePhotoViewModulator = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoViewModulator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__PULivePhotoVideoOverlayTileViewController__updateLivePhotoViewPhoto__block_invoke;
    v10[3] = &__block_descriptor_52_e43_v16__0___PXMutableLivePhotoViewModulator__8l;
    v10[4] = cGImage;
    v10[5] = v8;
    v11 = v12;
    [livePhotoViewModulator performChanges:v10];
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

- (void)setPlaybackAssetReference:(id)reference
{
  v14[1] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  if (self->_playbackAssetReference != referenceCopy)
  {
    objc_storeStrong(&self->_playbackAssetReference, reference);
    if (referenceCopy)
    {
      tilingView = [(PUTileController *)self tilingView];
      v14[0] = self;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [tilingView detachTileControllers:v7];

      view = [(PUTileViewController *)self view];
      tilingView2 = [(PUTileController *)self tilingView];
      superview = [tilingView2 superview];
      [view px_transferToSuperview:superview];
    }

    else
    {
      view2 = [(PUTileViewController *)self view];
      tilingView3 = [(PUTileController *)self tilingView];
      [view2 px_transferToSuperview:tilingView3];

      view = [(PUTileController *)self tilingView];
      selfCopy = self;
      tilingView2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
      [view reattachTileControllers:tilingView2 withContext:0];
    }
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  v41 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  changeCopy = change;
  browsingViewModel = [(PULivePhotoVideoOverlayTileViewController *)self browsingViewModel];

  if (browsingViewModel != modelCopy)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      browsingViewModel = self->_browsingViewModel;
      *buf = 138412802;
      selfCopy = self;
      v37 = 2112;
      v38 = browsingViewModel;
      v39 = 2112;
      v40 = modelCopy;
      _os_log_fault_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_FAULT, "Unexpected browsing view model sent a change to %@. Expected %@, but got %@.", buf, 0x20u);
    }
  }

  isScrubbingActivationDidChange = [changeCopy isScrubbingActivationDidChange];
  currentAssetTransitionProgressDidChange = [changeCopy currentAssetTransitionProgressDidChange];
  v12 = [changeCopy currentAssetDidChange] | currentAssetTransitionProgressDidChange | isScrubbingActivationDidChange;
  currentAssetReference = [modelCopy currentAssetReference];
  if (currentAssetReference && (v12 & 1) == 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    assetViewModelChangesByAssetReference = [changeCopy assetViewModelChangesByAssetReference];
    v15 = [assetViewModelChangesByAssetReference objectForKeyedSubscript:currentAssetReference];

    v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      selfCopy2 = self;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          irisPlayerChange = [v20 irisPlayerChange];
          activatedDidChange = [irisPlayerChange activatedDidChange];

          if (activatedDidChange & 1) != 0 || ([v20 accessoryViewVisibilityChanged])
          {
            v12 = 1;
            self = selfCopy2;
            goto LABEL_19;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
        v12 = 0;
        self = selfCopy2;
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

  livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  if ([changeCopy livePhotoShouldPlayDidChange])
  {
    playbackGestureRecognizer = [livePhotoView playbackGestureRecognizer];
    isEnabled = [playbackGestureRecognizer isEnabled];

    if (isEnabled)
    {
      livePhotoView2 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
      playerView = [livePhotoView2 playerView];
      [playerView setPlaybackFilterTouchActive:{objc_msgSend(modelCopy, "livePhotoShouldPlay")}];
    }
  }

  if (v12)
  {
    [(PULivePhotoVideoOverlayTileViewController *)self _updatePlaybackEnabled];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (MergedVideoProviderContext_32337 == context)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((changeCopy & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PULivePhotoVideoOverlayTileViewController.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"[observable isKindOfClass:PUOneUpMergedVideoProvider.class]"}];

      if ((changeCopy & 2) == 0)
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

  if (VideoPlayerChangeContext != context)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PULivePhotoVideoOverlayTileViewController.m" lineNumber:251 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x40) != 0 && ![(PULivePhotoVideoOverlayTileViewController *)self isPresentedForSecondScreen])
  {
    v15[10] = MEMORY[0x1E69E9820];
    v15[11] = 3221225472;
    v15[12] = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_2;
    v15[13] = &unk_1E7B80DD0;
    v15[14] = self;
    px_dispatch_on_main_queue();
  }

  if (changeCopy < 0 && ![(PULivePhotoVideoOverlayTileViewController *)self isPresentedForSecondScreen])
  {
    playbackAssetReference = [(PULivePhotoVideoOverlayTileViewController *)self playbackAssetReference];

    if (playbackAssetReference)
    {
      v15[5] = MEMORY[0x1E69E9820];
      v15[6] = 3221225472;
      v15[7] = __74__PULivePhotoVideoOverlayTileViewController_observable_didChange_context___block_invoke_4;
      v15[8] = &unk_1E7B80DD0;
      v15[9] = self;
      px_dispatch_on_main_queue();
    }
  }

  if ((changeCopy & 4) != 0)
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

- (double)livePhotoView:(id)view extraMinimumTouchDurationForTouch:(id)touch withStyle:(int64_t)style
{
  touchCopy = touch;
  delegate = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  [delegate livePhotoVideoPlaybackTileViewControllerExtraMinimumTouchDuration:self locationProvider:touchCopy];
  v9 = v8;

  return v9;
}

- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style
{
  v5 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView:view];
  [v5 setHidden:1];

  [(PULivePhotoVideoOverlayTileViewController *)self setPlaybackAssetReference:0];
  delegate = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  [delegate livePhotoVideoPlaybackTileViewControllerDidEndPlaying:self];

  [(PULivePhotoVideoOverlayTileViewController *)self _updateMergedVideo];
}

- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style
{
  [(PULivePhotoVideoOverlayTileViewController *)self setWillEndCurrentPlayback:0, style];
  [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewPhoto];
  browsingViewModel = [(PULivePhotoVideoOverlayTileViewController *)self browsingViewModel];
  currentAssetReference = [browsingViewModel currentAssetReference];
  [(PULivePhotoVideoOverlayTileViewController *)self setPlaybackAssetReference:currentAssetReference];
  delegate = [(PULivePhotoVideoOverlayTileViewController *)self delegate];
  v8 = [delegate livePhotoVideoPlaybackTileViewControllerDisplayTileTransform:self];

  modelTileTransform = [v8 modelTileTransform];
  [(PULivePhotoVideoOverlayTileViewController *)self setModelTileTransform:modelTileTransform];

  modelTileTransform2 = [v8 modelTileTransform];
  hasUserZoomedIn = [modelTileTransform2 hasUserZoomedIn];

  livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
  [livePhotoView setHidden:0];

  if (![(PULivePhotoVideoOverlayTileViewController *)self isPresentedForSecondScreen])
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __86__PULivePhotoVideoOverlayTileViewController_livePhotoView_willBeginPlaybackWithStyle___block_invoke;
    v17 = &unk_1E7B7FF98;
    v18 = browsingViewModel;
    v19 = hasUserZoomedIn;
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

- (BOOL)livePhotoView:(id)view canBeginPlaybackWithStyle:(int64_t)style
{
  selfCopy = self;
  v5 = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView:view];
  playbackGestureRecognizer = [v5 playbackGestureRecognizer];

  delegate = [(PULivePhotoVideoOverlayTileViewController *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate livePhotoVideoPlaybackTileViewControllerCanBeginPlaying:selfCopy locationProvider:playbackGestureRecognizer];

  return selfCopy;
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
  mergedVideoProvider = [(PULivePhotoVideoOverlayTileViewController *)self mergedVideoProvider];
  livePhotoPlayer = [mergedVideoProvider livePhotoPlayer];
  [(PHLivePhotoView *)self->_livePhotoView setPlayer:livePhotoPlayer];

  player = [(PHLivePhotoView *)self->_livePhotoView player];
  videoPlayer = [player videoPlayer];
  [(PULivePhotoVideoOverlayTileViewController *)self setVideoPlayer:videoPlayer];

  player2 = [(PHLivePhotoView *)self->_livePhotoView player];
  [player2 registerChangeObserver:self context:VideoPlayerChangeContext];

  [(UIView *)self->_containerView addSubview:self->_livePhotoView];
  playbackGestureRecognizer = [(PHLivePhotoView *)self->_livePhotoView playbackGestureRecognizer];
  v18[0] = playbackGestureRecognizer;
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PULivePhotoVideoOverlayTileViewController *)self _updatePlaybackEnabled];
    v5 = obj;
  }
}

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, model);
    browsingViewModel = [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, modelCopy);
}

- (void)setMergedVideoProvider:(id)provider
{
  providerCopy = provider;
  mergedVideoProvider = self->_mergedVideoProvider;
  if (mergedVideoProvider != providerCopy)
  {
    v12 = providerCopy;
    [(PUOneUpMergedVideoProvider *)mergedVideoProvider unregisterChangeObserver:self context:MergedVideoProviderContext_32337];
    objc_storeStrong(&self->_mergedVideoProvider, provider);
    [(PUOneUpMergedVideoProvider *)self->_mergedVideoProvider registerChangeObserver:self context:MergedVideoProviderContext_32337];
    livePhotoPlayer = [(PUOneUpMergedVideoProvider *)v12 livePhotoPlayer];
    livePhotoView = [(PULivePhotoVideoOverlayTileViewController *)self livePhotoView];
    [livePhotoView setPlayer:livePhotoPlayer];

    player = [(PHLivePhotoView *)self->_livePhotoView player];
    videoPlayer = [player videoPlayer];
    [(PULivePhotoVideoOverlayTileViewController *)self setVideoPlayer:videoPlayer];

    player2 = [(PHLivePhotoView *)self->_livePhotoView player];
    [player2 registerChangeObserver:self context:VideoPlayerChangeContext];

    mergedVideoProvider = [(PULivePhotoVideoOverlayTileViewController *)self _updateMergedVideo];
    providerCopy = v12;
  }

  MEMORY[0x1EEE66BB8](mergedVideoProvider, providerCopy);
}

- (void)setMergedVideo:(id)video
{
  videoCopy = video;
  if (self->_mergedVideo != videoCopy)
  {
    v6 = videoCopy;
    objc_storeStrong(&self->_mergedVideo, video);
    [(PULivePhotoVideoOverlayTileViewController *)self _updateLivePhotoViewModulator];
    [(PULivePhotoVideoOverlayTileViewController *)self _updateSRLCompensation];
    videoCopy = v6;
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