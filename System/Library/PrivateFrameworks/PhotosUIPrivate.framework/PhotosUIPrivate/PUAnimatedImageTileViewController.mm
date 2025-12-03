@interface PUAnimatedImageTileViewController
- (id)loadView;
- (void)_updateAnimatedImageIfNeeded;
- (void)_updatePlaybackStateIfNeeded;
- (void)assetViewModelDidChange:(id)change;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUAnimatedImageTileViewController

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = PUAnimatedImageTileViewController;
  modelCopy = model;
  [(PUImageTileViewController *)&v13 viewModel:modelCopy didChange:changeCopy];
  v8 = [(PUImageTileViewController *)self assetViewModel:v13.receiver];

  if (v8 == modelCopy)
  {
    if ([changeCopy focusValueChanged])
    {
      [(PUAnimatedImageTileViewController *)self _invalidatePlaybackState];
    }

    animatedImageChange = [changeCopy animatedImageChange];
    if (animatedImageChange)
    {
      v10 = animatedImageChange;
      animatedImageChange2 = [changeCopy animatedImageChange];
      animatedImageDidChange = [animatedImageChange2 animatedImageDidChange];

      if (animatedImageDidChange)
      {
        [(PUAnimatedImageTileViewController *)self _invalidatePlaybackState];
        [(PUAnimatedImageTileViewController *)self _invalidateAnimatedImage];
      }
    }

    [(PUAnimatedImageTileViewController *)self _updateAnimatedImageIfNeeded];
    [(PUAnimatedImageTileViewController *)self _updatePlaybackStateIfNeeded];
  }
}

- (void)_updateAnimatedImageIfNeeded
{
  if (!self->_isValid.animatedImage)
  {
    self->_isValid.animatedImage = 1;
    assetViewModel = [(PUImageTileViewController *)self assetViewModel];
    animatedImagePlayer = [assetViewModel animatedImagePlayer];
    animatedImage = [animatedImagePlayer animatedImage];

    pf_animatedImage = [animatedImage pf_animatedImage];
    [(ISAnimatedImageView *)self->_animatedImageView setImage:pf_animatedImage];
  }
}

- (void)_updatePlaybackStateIfNeeded
{
  if (self->_isValid.playbackState)
  {
    return;
  }

  self->_isValid.playbackState = 1;
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];

  if (!assetViewModel)
  {
    v8 = 0;
    self->_interactionState = 0;
    goto LABEL_23;
  }

  assetViewModel2 = [(PUImageTileViewController *)self assetViewModel];
  [assetViewModel2 focusValue];
  v7 = v6;

  v8 = 0;
  v9 = fabs(v7);
  interactionState = self->_interactionState;
  if (interactionState > 1)
  {
    if (interactionState == 2)
    {
      v21 = +[PUOneUpSettings sharedInstance];
      [v21 playGIFMoveOutThreshold];
      v23 = v22;

      if (v9 <= v23)
      {
LABEL_22:
        v8 = 1;
        goto LABEL_23;
      }

      v8 = 0;
      v17 = 3;
      goto LABEL_20;
    }

    if (interactionState != 3)
    {
      goto LABEL_23;
    }

    if (v9 >= 1.0)
    {
LABEL_19:
      v17 = 0;
      v8 = 0;
      goto LABEL_20;
    }

    v14 = +[PUOneUpSettings sharedInstance];
    [v14 playGIFSettledThreshold];
    v16 = v15;

    if (v9 < v16)
    {
      goto LABEL_14;
    }

LABEL_21:
    v8 = 0;
    goto LABEL_23;
  }

  if (!interactionState)
  {
    v18 = +[PUOneUpSettings sharedInstance];
    [v18 playGIFEnterThreshold];
    v20 = v19;

    if (v9 < v20)
    {
      v17 = 1;
      v8 = 1;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (interactionState == 1)
  {
    v11 = +[PUOneUpSettings sharedInstance];
    [v11 playGIFSettledThreshold];
    v13 = v12;

    if (v9 >= v13)
    {
      if (v9 < 1.0)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_14:
    v8 = 1;
    v17 = 2;
LABEL_20:
    self->_interactionState = v17;
  }

LABEL_23:
  animatedImageView = self->_animatedImageView;

  [(ISAnimatedImageView *)animatedImageView setPlaying:v8];
}

- (void)assetViewModelDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PUAnimatedImageTileViewController;
  [(PUImageTileViewController *)&v4 assetViewModelDidChange:change];
  [(PUAnimatedImageTileViewController *)self _invalidatePlaybackState];
  [(PUAnimatedImageTileViewController *)self _invalidateAnimatedImage];
  [(PUAnimatedImageTileViewController *)self _updateAnimatedImageIfNeeded];
  [(PUAnimatedImageTileViewController *)self _updatePlaybackStateIfNeeded];
}

- (id)loadView
{
  v17.receiver = self;
  v17.super_class = PUAnimatedImageTileViewController;
  loadView = [(PUImageTileViewController *)&v17 loadView];
  v4 = [objc_alloc(MEMORY[0x1E69C1AE0]) initWithAnimatedImage:0];
  animatedImageView = self->_animatedImageView;
  self->_animatedImageView = v4;

  [(ISAnimatedImageView *)self->_animatedImageView setContentMode:2];
  v6 = +[PUOneUpSettings sharedInstance];
  showGIFLoadingDelays = [v6 showGIFLoadingDelays];

  v8 = self->_animatedImageView;
  if (showGIFLoadingDelays)
  {
    blueColor = [MEMORY[0x1E69DC888] blueColor];
    [(ISAnimatedImageView *)v8 setBackgroundColor:blueColor];
  }

  else
  {
    [(ISAnimatedImageView *)self->_animatedImageView setPlaceholderImageView:loadView];
  }

  v10 = +[PUOneUpSettings sharedInstance];
  useDebuggingColors = [v10 useDebuggingColors];

  if (useDebuggingColors)
  {
    layer = [(ISAnimatedImageView *)self->_animatedImageView layer];
    v13 = [MEMORY[0x1E69DC888] colorWithRed:0.258823544 green:0.956862748 blue:0.56078434 alpha:1.0];
    [layer setBorderColor:{objc_msgSend(v13, "CGColor")}];

    [layer setBorderWidth:2.0];
  }

  v14 = self->_animatedImageView;
  v15 = v14;

  return v14;
}

@end