@interface PUPlayButtonTileViewController
+ (CGSize)playButtonTileSize;
- (BOOL)canShowPauseButton;
- (BOOL)showPlayButtonWhileActivated;
- (PUPlayButtonTileViewControllerDelegate)delegate;
- (id)loadView;
- (void)_playButtonTapped:(id)a3;
- (void)_setBrowsingVideoPlayer:(id)a3;
- (void)_setShouldShowPlayButton:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateButtonAnimated:(BOOL)a3;
- (void)_updateHasAssetBecomeFullyFocusedSinceBeingOutOfFocus;
- (void)becomeReusable;
- (void)dealloc;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHasAssetBecomeFullyFocusedSinceBeingOutOfFocus:(BOOL)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUPlayButtonTileViewController

- (PUPlayButtonTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(PUPlayButtonTileViewController *)self _browsingVideoPlayer];

  if (v7 == v15)
  {
    v11 = v6;
    if (([v11 desiredPlayStateDidChange] & 1) == 0 && (objc_msgSend(v11, "isAtBeginningDidChange") & 1) == 0 && (objc_msgSend(v11, "isAtEndDidChange") & 1) == 0 && (objc_msgSend(v11, "isActivatedDidChange") & 1) == 0 && !objc_msgSend(v11, "playStateDidChange"))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = [(PUPlayButtonTileViewController *)self assetViewModel];

  if (v8 == v15)
  {
    v12 = v6;
    if (([v12 isUserTransformingTileDidChange] & 1) != 0 || objc_msgSend(v12, "assetChanged"))
    {
      [(PUPlayButtonTileViewController *)self _updateButtonAnimated:1];
    }

    if ([v12 videoPlayerDidChange])
    {
      v13 = [(PUPlayButtonTileViewController *)self assetViewModel];
      v14 = [v13 videoPlayer];
      [(PUPlayButtonTileViewController *)self _setBrowsingVideoPlayer:v14];
    }

    if ([v12 focusValueChanged])
    {
      [(PUPlayButtonTileViewController *)self _updateHasAssetBecomeFullyFocusedSinceBeingOutOfFocus];
    }

    goto LABEL_14;
  }

  v9 = [(PUPlayButtonTileViewController *)self browsingViewModel];

  if (v9 != v15)
  {
    goto LABEL_15;
  }

  v10 = v6;
  if (([v10 isScrubbingDidChange] & 1) != 0 || (objc_msgSend(v10, "chromeVisibilityDidChange") & 1) != 0 || objc_msgSend(v10, "reviewScreenBarsModelDidChange"))
  {
LABEL_13:
    [(PUPlayButtonTileViewController *)self _updateButtonAnimated:1];
  }

LABEL_14:

LABEL_15:
}

- (void)_setShouldShowPlayButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__shouldShowPlayButton != a3)
  {
    v21 = v7;
    v22 = v6;
    v23 = v4;
    v24 = v5;
    v8 = a4;
    v9 = a3;
    self->__shouldShowPlayButton = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PUPlayButtonTileViewController__setShouldShowPlayButton_animated___block_invoke;
    aBlock[3] = &unk_1E7B7FF98;
    aBlock[4] = self;
    v20 = a3;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (v8)
    {
      v13 = 0.0;
      if (self->_delegateFlags.respondsToDelayForButtonAnimation)
      {
        v14 = [(PUPlayButtonTileViewController *)self delegate];
        [v14 playButtonTileViewController:self delayForButtonAnimation:v9];
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

- (void)_updateButtonAnimated:(BOOL)a3
{
  v25 = a3;
  v4 = [(PUPlayButtonTileViewController *)self canShowPauseButton];
  v26 = [(PUPlayButtonTileViewController *)self _browsingVideoPlayer];
  v5 = [v26 playState];
  v6 = [v26 isPlaybackDesired];
  if (v5 == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v7 == 1 && !v4)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(PUPlayButtonTileViewController *)self assetViewModel];
    v10 = [v9 isUserTransformingTile] ^ 1;
  }

  v11 = +[PUOneUpSettings sharedInstance];
  v12 = [v11 allowPlayButtonInBars];

  v13 = +[PUOneUpSettings sharedInstance];
  v14 = [(PUPlayButtonTileViewController *)self assetViewModel];
  v15 = [v14 asset];
  v16 = [v13 allowAutoplayVideoForAsset:v15];

  if (v12 && v16 && v5 != 5)
  {
    goto LABEL_13;
  }

  if (![v26 isActivated])
  {
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_13:
    v17 = 0;
    v18 = v25;
    goto LABEL_25;
  }

  v19 = [(PUPlayButtonTileViewController *)self browsingViewModel];
  v20 = v19;
  if (!v10 || ([v19 isScrubbing] & 1) != 0 || !objc_msgSend(v20, "isChromeVisible"))
  {
    v17 = 0;
    goto LABEL_24;
  }

  v21 = [(PUPlayButtonTileViewController *)self showPlayButtonWhileActivated];

  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_21:
  v22 = [(PUPlayButtonTileViewController *)self assetViewModel];
  v23 = [v22 asset];
  v24 = [v23 isTemporaryPlaceholder];

  if (v24)
  {
    goto LABEL_13;
  }

  v20 = [(PUPlayButtonTileViewController *)self playButton];
  [v20 setShowAsPause:v4 & v7];
  v17 = 1;
LABEL_24:
  v18 = v25;

LABEL_25:
  [(PUPlayButtonTileViewController *)self _setShouldShowPlayButton:v17 animated:v18];
}

- (void)setHasAssetBecomeFullyFocusedSinceBeingOutOfFocus:(BOOL)a3
{
  if (self->_hasAssetBecomeFullyFocusedSinceBeingOutOfFocus != a3)
  {
    self->_hasAssetBecomeFullyFocusedSinceBeingOutOfFocus = a3;
    [(PUPlayButtonTileViewController *)self _updateButtonAnimated:1];
  }
}

- (void)_updateHasAssetBecomeFullyFocusedSinceBeingOutOfFocus
{
  v3 = [(PUPlayButtonTileViewController *)self assetViewModel];
  if (v3 && (v4 = v3, -[PUPlayButtonTileViewController assetViewModel](self, "assetViewModel"), v5 = objc_claimAutoreleasedReturnValue(), [v5 focusValue], v7 = fabs(v6), v5, v4, v7 < 1.0))
  {
    v8 = [(PUPlayButtonTileViewController *)self assetViewModel];
    [v8 focusValue];
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

- (void)_playButtonTapped:(id)a3
{
  if (self->_delegateFlags.respondsToDidTapButton)
  {
    v4 = [(PUPlayButtonTileViewController *)self delegate];
    [v4 playButtonTileViewControllerDidTapButton:self];
  }

  [(PUPlayButtonTileViewController *)self _updateButtonAnimated:1];
}

- (BOOL)showPlayButtonWhileActivated
{
  if (!self->_delegateFlags.respondsToShouldShowPlayButtonWhileActivated)
  {
    return 0;
  }

  v2 = self;
  v3 = [(PUPlayButtonTileViewController *)self delegate];
  LOBYTE(v2) = [v3 playButtonTileViewControllerShouldShowPlayButtonWhileActivated:v2];

  return v2;
}

- (BOOL)canShowPauseButton
{
  if (!self->_delegateFlags.respondsToDidTapButton)
  {
    return 0;
  }

  v2 = self;
  v3 = [(PUPlayButtonTileViewController *)self delegate];
  LOBYTE(v2) = [v3 playButtonTileViewControllerShouldShowPauseButton:v2];

  return v2;
}

- (void)_setBrowsingVideoPlayer:(id)a3
{
  v5 = a3;
  browsingVideoPlayer = self->__browsingVideoPlayer;
  if (browsingVideoPlayer != v5)
  {
    v7 = v5;
    [(PUBrowsingVideoPlayer *)browsingVideoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->__browsingVideoPlayer, a3);
    [(PUBrowsingVideoPlayer *)self->__browsingVideoPlayer registerChangeObserver:self];
    browsingVideoPlayer = [(PUPlayButtonTileViewController *)self _updateButtonAnimated:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingVideoPlayer, v5);
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  if (self->_assetViewModel != v5)
  {
    v11 = v5;
    [(PUPlayButtonTileViewController *)self setHasAssetBecomeFullyFocusedSinceBeingOutOfFocus:0];
    [(PUAssetViewModel *)self->_assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
    {
      v6 = +[PUOneUpSettings sharedInstance];
      v7 = [(PUAssetViewModel *)v11 asset];
      if ([v6 allowAutoplayVideoForAsset:v7])
      {
        v8 = [(PUAssetViewModel *)v11 videoPlayer];
        v9 = [v8 isPlaybackDesired];

        if ((v9 & 1) == 0)
        {
          [(PUPlayButtonTileViewController *)self setIsAwaitingAutoPlay:1];
        }
      }

      else
      {
      }
    }

    v10 = [(PUAssetViewModel *)v11 videoPlayer];
    [(PUPlayButtonTileViewController *)self _setBrowsingVideoPlayer:v10];

    [(PUPlayButtonTileViewController *)self _updateHasAssetBecomeFullyFocusedSinceBeingOutOfFocus];
    [(PUPlayButtonTileViewController *)self _updateButtonAnimated:0];
    v5 = v11;
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
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    browsingViewModel = [(PUPlayButtonTileViewController *)self _updateButtonAnimated:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, v5);
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v14 = [(PUPlayButtonTileViewController *)self playButton];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(PUPlayButtonTileViewController *)self playButton];
  [v15 setAutoresizingMask:18];

  v16 = [(PUPlayButtonTileViewController *)self playButton];
  [v16 setAlpha:0.0];

  v17 = [(PUPlayButtonTileViewController *)self playButton];
  [v17 setTarget:self selector:sel__playButtonTapped_];

  [(PUPlayButtonTileViewController *)self _updateButtonAnimated:0];
  v18 = [(PUPlayButtonTileViewController *)self playButton];
  [v3 addSubview:v18];

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