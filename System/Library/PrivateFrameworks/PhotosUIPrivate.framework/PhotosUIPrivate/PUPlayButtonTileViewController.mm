@interface PUPlayButtonTileViewController
+ (CGSize)playButtonTileSize;
- (BOOL)canShowPauseButton;
- (BOOL)showPlayButtonWhileActivated;
- (PUPlayButtonTileViewControllerDelegate)delegate;
- (id)loadView;
- (void)_playButtonTapped:(id)tapped;
- (void)_setBrowsingVideoPlayer:(id)player;
- (void)_setShouldShowPlayButton:(BOOL)button animated:(BOOL)animated;
- (void)_updateButtonAnimated:(BOOL)animated;
- (void)_updateHasAssetBecomeFullyFocusedSinceBeingOutOfFocus;
- (void)becomeReusable;
- (void)dealloc;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)setDelegate:(id)delegate;
- (void)setHasAssetBecomeFullyFocusedSinceBeingOutOfFocus:(BOOL)focus;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUPlayButtonTileViewController

- (PUPlayButtonTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  _browsingVideoPlayer = [(PUPlayButtonTileViewController *)self _browsingVideoPlayer];

  if (_browsingVideoPlayer == modelCopy)
  {
    v11 = changeCopy;
    if (([v11 desiredPlayStateDidChange] & 1) == 0 && (objc_msgSend(v11, "isAtBeginningDidChange") & 1) == 0 && (objc_msgSend(v11, "isAtEndDidChange") & 1) == 0 && (objc_msgSend(v11, "isActivatedDidChange") & 1) == 0 && !objc_msgSend(v11, "playStateDidChange"))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  assetViewModel = [(PUPlayButtonTileViewController *)self assetViewModel];

  if (assetViewModel == modelCopy)
  {
    v12 = changeCopy;
    if (([v12 isUserTransformingTileDidChange] & 1) != 0 || objc_msgSend(v12, "assetChanged"))
    {
      [(PUPlayButtonTileViewController *)self _updateButtonAnimated:1];
    }

    if ([v12 videoPlayerDidChange])
    {
      assetViewModel2 = [(PUPlayButtonTileViewController *)self assetViewModel];
      videoPlayer = [assetViewModel2 videoPlayer];
      [(PUPlayButtonTileViewController *)self _setBrowsingVideoPlayer:videoPlayer];
    }

    if ([v12 focusValueChanged])
    {
      [(PUPlayButtonTileViewController *)self _updateHasAssetBecomeFullyFocusedSinceBeingOutOfFocus];
    }

    goto LABEL_14;
  }

  browsingViewModel = [(PUPlayButtonTileViewController *)self browsingViewModel];

  if (browsingViewModel != modelCopy)
  {
    goto LABEL_15;
  }

  v10 = changeCopy;
  if (([v10 isScrubbingDidChange] & 1) != 0 || (objc_msgSend(v10, "chromeVisibilityDidChange") & 1) != 0 || objc_msgSend(v10, "reviewScreenBarsModelDidChange"))
  {
LABEL_13:
    [(PUPlayButtonTileViewController *)self _updateButtonAnimated:1];
  }

LABEL_14:

LABEL_15:
}

- (void)_setShouldShowPlayButton:(BOOL)button animated:(BOOL)animated
{
  if (self->__shouldShowPlayButton != button)
  {
    v21 = v7;
    v22 = v6;
    v23 = v4;
    v24 = v5;
    animatedCopy = animated;
    buttonCopy = button;
    self->__shouldShowPlayButton = button;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PUPlayButtonTileViewController__setShouldShowPlayButton_animated___block_invoke;
    aBlock[3] = &unk_1E7B7FF98;
    aBlock[4] = self;
    buttonCopy2 = button;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (animatedCopy)
    {
      v13 = 0.0;
      if (self->_delegateFlags.respondsToDelayForButtonAnimation)
      {
        delegate = [(PUPlayButtonTileViewController *)self delegate];
        [delegate playButtonTileViewController:self delayForButtonAnimation:buttonCopy];
        v13 = v15;
      }

      v16 = MEMORY[0x1E69DD250];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__PUPlayButtonTileViewController__setShouldShowPlayButton_animated___block_invoke_2;
      v17[3] = &unk_1E7B80C88;
      v18 = v12;
      [v16 _animateUsingDefaultDampedSpringWithDelay:6 initialSpringVelocity:v17 options:0 animations:v13 completion:0.0];
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

void __68__PUPlayButtonTileViewController__setShouldShowPlayButton_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) playButton];
  [v3 setAlpha:v2];
}

- (void)_updateButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  canShowPauseButton = [(PUPlayButtonTileViewController *)self canShowPauseButton];
  _browsingVideoPlayer = [(PUPlayButtonTileViewController *)self _browsingVideoPlayer];
  playState = [_browsingVideoPlayer playState];
  isPlaybackDesired = [_browsingVideoPlayer isPlaybackDesired];
  if (playState == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = isPlaybackDesired;
  }

  if (v7 == 1 && !canShowPauseButton)
  {
    v10 = 0;
  }

  else
  {
    assetViewModel = [(PUPlayButtonTileViewController *)self assetViewModel];
    v10 = [assetViewModel isUserTransformingTile] ^ 1;
  }

  v11 = +[PUOneUpSettings sharedInstance];
  allowPlayButtonInBars = [v11 allowPlayButtonInBars];

  v13 = +[PUOneUpSettings sharedInstance];
  assetViewModel2 = [(PUPlayButtonTileViewController *)self assetViewModel];
  asset = [assetViewModel2 asset];
  v16 = [v13 allowAutoplayVideoForAsset:asset];

  if (allowPlayButtonInBars && v16 && playState != 5)
  {
    goto LABEL_13;
  }

  if (![_browsingVideoPlayer isActivated])
  {
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_13:
    v17 = 0;
    v18 = animatedCopy;
    goto LABEL_25;
  }

  browsingViewModel = [(PUPlayButtonTileViewController *)self browsingViewModel];
  playButton = browsingViewModel;
  if (!v10 || ([browsingViewModel isScrubbing] & 1) != 0 || !objc_msgSend(playButton, "isChromeVisible"))
  {
    v17 = 0;
    goto LABEL_24;
  }

  showPlayButtonWhileActivated = [(PUPlayButtonTileViewController *)self showPlayButtonWhileActivated];

  if (!showPlayButtonWhileActivated)
  {
    goto LABEL_13;
  }

LABEL_21:
  assetViewModel3 = [(PUPlayButtonTileViewController *)self assetViewModel];
  asset2 = [assetViewModel3 asset];
  isTemporaryPlaceholder = [asset2 isTemporaryPlaceholder];

  if (isTemporaryPlaceholder)
  {
    goto LABEL_13;
  }

  playButton = [(PUPlayButtonTileViewController *)self playButton];
  [playButton setShowAsPause:canShowPauseButton & v7];
  v17 = 1;
LABEL_24:
  v18 = animatedCopy;

LABEL_25:
  [(PUPlayButtonTileViewController *)self _setShouldShowPlayButton:v17 animated:v18];
}

- (void)setHasAssetBecomeFullyFocusedSinceBeingOutOfFocus:(BOOL)focus
{
  if (self->_hasAssetBecomeFullyFocusedSinceBeingOutOfFocus != focus)
  {
    self->_hasAssetBecomeFullyFocusedSinceBeingOutOfFocus = focus;
    [(PUPlayButtonTileViewController *)self _updateButtonAnimated:1];
  }
}

- (void)_updateHasAssetBecomeFullyFocusedSinceBeingOutOfFocus
{
  assetViewModel = [(PUPlayButtonTileViewController *)self assetViewModel];
  if (assetViewModel && (v4 = assetViewModel, -[PUPlayButtonTileViewController assetViewModel](self, "assetViewModel"), v5 = objc_claimAutoreleasedReturnValue(), [v5 focusValue], v7 = fabs(v6), v5, v4, v7 < 1.0))
  {
    assetViewModel2 = [(PUPlayButtonTileViewController *)self assetViewModel];
    [assetViewModel2 focusValue];
    v9 = PXFloatApproximatelyEqualToFloat();

    if (!v9)
    {
      return;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  [(PUPlayButtonTileViewController *)self setHasAssetBecomeFullyFocusedSinceBeingOutOfFocus:v10];
}

- (void)_playButtonTapped:(id)tapped
{
  if (self->_delegateFlags.respondsToDidTapButton)
  {
    delegate = [(PUPlayButtonTileViewController *)self delegate];
    [delegate playButtonTileViewControllerDidTapButton:self];
  }

  [(PUPlayButtonTileViewController *)self _updateButtonAnimated:1];
}

- (BOOL)showPlayButtonWhileActivated
{
  if (!self->_delegateFlags.respondsToShouldShowPlayButtonWhileActivated)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PUPlayButtonTileViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate playButtonTileViewControllerShouldShowPlayButtonWhileActivated:selfCopy];

  return selfCopy;
}

- (BOOL)canShowPauseButton
{
  if (!self->_delegateFlags.respondsToDidTapButton)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PUPlayButtonTileViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate playButtonTileViewControllerShouldShowPauseButton:selfCopy];

  return selfCopy;
}

- (void)_setBrowsingVideoPlayer:(id)player
{
  playerCopy = player;
  browsingVideoPlayer = self->__browsingVideoPlayer;
  if (browsingVideoPlayer != playerCopy)
  {
    v7 = playerCopy;
    [(PUBrowsingVideoPlayer *)browsingVideoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->__browsingVideoPlayer, player);
    [(PUBrowsingVideoPlayer *)self->__browsingVideoPlayer registerChangeObserver:self];
    browsingVideoPlayer = [(PUPlayButtonTileViewController *)self _updateButtonAnimated:0];
    playerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingVideoPlayer, playerCopy);
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  if (self->_assetViewModel != modelCopy)
  {
    v11 = modelCopy;
    [(PUPlayButtonTileViewController *)self setHasAssetBecomeFullyFocusedSinceBeingOutOfFocus:0];
    [(PUAssetViewModel *)self->_assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
    {
      v6 = +[PUOneUpSettings sharedInstance];
      asset = [(PUAssetViewModel *)v11 asset];
      if ([v6 allowAutoplayVideoForAsset:asset])
      {
        videoPlayer = [(PUAssetViewModel *)v11 videoPlayer];
        isPlaybackDesired = [videoPlayer isPlaybackDesired];

        if ((isPlaybackDesired & 1) == 0)
        {
          [(PUPlayButtonTileViewController *)self setIsAwaitingAutoPlay:1];
        }
      }

      else
      {
      }
    }

    videoPlayer2 = [(PUAssetViewModel *)v11 videoPlayer];
    [(PUPlayButtonTileViewController *)self _setBrowsingVideoPlayer:videoPlayer2];

    [(PUPlayButtonTileViewController *)self _updateHasAssetBecomeFullyFocusedSinceBeingOutOfFocus];
    [(PUPlayButtonTileViewController *)self _updateButtonAnimated:0];
    modelCopy = v11;
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
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    browsingViewModel = [(PUPlayButtonTileViewController *)self _updateButtonAnimated:0];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, modelCopy);
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToShouldShowPauseButton = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowPlayButtonWhileActivated = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidTapButton = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDelayForButtonAnimation = objc_opt_respondsToSelector() & 1;
  }
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUPlayButtonTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUPlayButtonTileViewController *)self setBrowsingViewModel:0];
  [(PUPlayButtonTileViewController *)self setAssetViewModel:0];
}

- (void)dealloc
{
  [(PUAssetViewModel *)self->_assetViewModel unregisterChangeObserver:self];
  [(PUBrowsingVideoPlayer *)self->__browsingVideoPlayer unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PUPlayButtonTileViewController;
  [(PUTileViewController *)&v3 dealloc];
}

- (id)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v4 = [PUPlayButtonTileView alloc];
  v5 = -[PUPlayButtonTileView initWithStyle:](v4, "initWithStyle:", [MEMORY[0x1E69C3640] isOneUpRefreshEnabled]);
  [(PUPlayButtonTileViewController *)self setPlayButton:v5];

  [v3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  playButton = [(PUPlayButtonTileViewController *)self playButton];
  [playButton setFrame:{v7, v9, v11, v13}];

  playButton2 = [(PUPlayButtonTileViewController *)self playButton];
  [playButton2 setAutoresizingMask:18];

  playButton3 = [(PUPlayButtonTileViewController *)self playButton];
  [playButton3 setAlpha:0.0];

  playButton4 = [(PUPlayButtonTileViewController *)self playButton];
  [playButton4 setTarget:self selector:sel__playButtonTapped_];

  [(PUPlayButtonTileViewController *)self _updateButtonAnimated:0];
  playButton5 = [(PUPlayButtonTileViewController *)self playButton];
  [v3 addSubview:playButton5];

  return v3;
}

+ (CGSize)playButtonTileSize
{
  if (playButtonTileSize_onceToken != -1)
  {
    dispatch_once(&playButtonTileSize_onceToken, &__block_literal_global_69751);
  }

  v2 = *&playButtonTileSize_playButtonTileSize_0;
  v3 = *&playButtonTileSize_playButtonTileSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __52__PUPlayButtonTileViewController_playButtonTileSize__block_invoke()
{
  v2 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithStyle:0];
  [v2 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  playButtonTileSize_playButtonTileSize_0 = v0;
  playButtonTileSize_playButtonTileSize_1 = v1;
}

@end