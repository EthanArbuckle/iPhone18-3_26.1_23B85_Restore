@interface PUPlaybackTimeIndicatorTileViewController
+ (CGSize)playbackTimeIndicatorTileSize;
- (PUPlaybackTimeIndicatorTileViewControllerDelegate)delegate;
- (void)_flashTimeIndicator;
- (void)_handleVideoPlayer:(id)player change:(id)change;
- (void)_handleViewModel:(id)model change:(id)change;
- (void)_setIndicatorFormat:(int64_t)format animated:(BOOL)animated;
- (void)_setIndicatorVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_updateIndicatorDisplayStyle;
- (void)_updateIndicatorValueWithTime:(id *)time;
- (void)becomeReusable;
- (void)setDelegate:(id)delegate;
- (void)setForcedIndicatorVisibilityEndDate:(id)date;
- (void)setVideoPlayer:(id)player;
- (void)setViewModel:(id)model;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUPlaybackTimeIndicatorTileViewController

- (PUPlaybackTimeIndicatorTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_flashTimeIndicator
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2.0];
  [(PUPlaybackTimeIndicatorTileViewController *)self setForcedIndicatorVisibilityEndDate:v3];
}

- (void)_handleViewModel:(id)model change:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if ([changeCopy isScrubbingDidChange])
  {
    [(PUPlaybackTimeIndicatorTileViewController *)self _updateIndicatorDisplayStyle];
  }

  if ([changeCopy chromeVisibilityDidChange])
  {
    if ([modelCopy isChromeVisible])
    {
      if ([modelCopy lastChromeVisibilityChangeReason] == 1)
      {
        videoPlayer = [(PUPlaybackTimeIndicatorTileViewController *)self videoPlayer];
        desiredPlayState = [videoPlayer desiredPlayState];

        if (desiredPlayState == 4)
        {
          if (!self->_delegateFlags.respondsToCanFlashIndicator || (-[PUPlaybackTimeIndicatorTileViewController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 playbackTimeIndicatorTileViewControllerCanFlashIndicator:self], v9, v10))
          {
            [(PUPlaybackTimeIndicatorTileViewController *)self _flashTimeIndicator];
          }
        }
      }
    }
  }
}

- (void)_handleVideoPlayer:(id)player change:(id)change
{
  changeCopy = change;
  if (([changeCopy isAtBeginningDidChange] & 1) != 0 || objc_msgSend(changeCopy, "desiredPlayStateDidChange"))
  {
    [(PUPlaybackTimeIndicatorTileViewController *)self _updateIndicatorDisplayStyle];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  videoPlayer = [(PUPlaybackTimeIndicatorTileViewController *)self videoPlayer];

  if (videoPlayer == modelCopy)
  {
    [(PUPlaybackTimeIndicatorTileViewController *)self _handleVideoPlayer:modelCopy change:changeCopy];
  }

  else
  {
    viewModel = [(PUPlaybackTimeIndicatorTileViewController *)self viewModel];

    if (viewModel == modelCopy)
    {
      [(PUPlaybackTimeIndicatorTileViewController *)self _handleViewModel:modelCopy change:changeCopy];
    }
  }
}

- (void)_updateIndicatorDisplayStyle
{
  videoPlayer = [(PUPlaybackTimeIndicatorTileViewController *)self videoPlayer];
  viewModel = [(PUPlaybackTimeIndicatorTileViewController *)self viewModel];
  v4 = +[PUScrubberSettings sharedInstance];
  if ([videoPlayer desiredPlayState] == 3)
  {
    goto LABEL_2;
  }

  if ([viewModel isScrubbing])
  {
    scrubbingPlaybackIndicator = [v4 scrubbingPlaybackIndicator];
  }

  else if ([videoPlayer isAtBeginning] && objc_msgSend(videoPlayer, "isActivated"))
  {
    scrubbingPlaybackIndicator = [v4 initialPlaybackIndicator];
  }

  else
  {
    forcedIndicatorVisibilityEndDate = [(PUPlaybackTimeIndicatorTileViewController *)self forcedIndicatorVisibilityEndDate];
    [forcedIndicatorVisibilityEndDate timeIntervalSinceNow];
    v8 = v7;

    if (v8 <= 0.0)
    {
      if ([videoPlayer desiredPlayState] != 4)
      {
LABEL_2:
        scrubbingPlaybackIndicator = [v4 defaultPlaybackIndicator];
        goto LABEL_12;
      }

      scrubbingPlaybackIndicator = [v4 playingPlaybackIndicator];
    }

    else
    {
      scrubbingPlaybackIndicator = [v4 chromeShownPlaybackIndicator];
    }
  }

LABEL_12:
  if (videoPlayer)
  {
    v9 = viewModel == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  [(PUPlaybackTimeIndicatorTileViewController *)self _setIndicatorFormat:scrubbingPlaybackIndicator animated:v10];
}

- (void)_updateIndicatorValueWithTime:(id *)time
{
  videoPlayer = [(PUPlaybackTimeIndicatorTileViewController *)self videoPlayer];
  v6 = videoPlayer;
  v9 = *time;
  memset(&v8[1], 0, sizeof($3CC8671D27C23BF42ADDB32F2B5E48AE));
  if (videoPlayer)
  {
    [videoPlayer duration];
  }

  _label = [(PUPlaybackTimeIndicatorTileViewController *)self _label];
  v8[0] = v9;
  [_label setCurrentPlaybackTime:v8];
  v8[0] = v8[1];
  [_label setPlaybackDuration:v8];
}

- (void)setForcedIndicatorVisibilityEndDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (self->_forcedIndicatorVisibilityEndDate != dateCopy && ([(NSDate *)dateCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_forcedIndicatorVisibilityEndDate, date);
    [(PUPlaybackTimeIndicatorTileViewController *)self _updateIndicatorDisplayStyle];
    if (v6)
    {
      [(NSDate *)v6 timeIntervalSinceNow];
      v8 = v7 + 0.05;
      objc_initWeak(&location, self);
      v9 = dispatch_time(0, (v8 * 1000000000.0));
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __81__PUPlaybackTimeIndicatorTileViewController_setForcedIndicatorVisibilityEndDate___block_invoke;
      v10[3] = &unk_1E7B80638;
      objc_copyWeak(&v11, &location);
      dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __81__PUPlaybackTimeIndicatorTileViewController_setForcedIndicatorVisibilityEndDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIndicatorDisplayStyle];
}

- (void)_setIndicatorVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->__isIndicatorVisible != visible)
  {
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = v4;
    v26 = v5;
    animatedCopy = animated;
    visibleCopy = visible;
    self->__isIndicatorVisible = visible;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PUPlaybackTimeIndicatorTileViewController__setIndicatorVisible_animated___block_invoke;
    aBlock[3] = &unk_1E7B7FF98;
    aBlock[4] = self;
    visibleCopy2 = visible;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (animatedCopy)
    {
      if (visibleCopy)
      {
        v14 = 0.1;
      }

      else
      {
        v14 = 0.3;
      }

      if (visibleCopy)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 0.5;
      }

      v16 = MEMORY[0x1E69DD250];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __75__PUPlaybackTimeIndicatorTileViewController__setIndicatorVisible_animated___block_invoke_2;
      v17[3] = &unk_1E7B80C88;
      v18 = v12;
      [v16 animateWithDuration:4 delay:v17 options:0 animations:v14 completion:v15];
    }

    else
    {
      v12[2](v12);
    }
  }
}

void __75__PUPlaybackTimeIndicatorTileViewController__setIndicatorVisible_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _label];
  v4 = v2;
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
}

- (void)_setIndicatorFormat:(int64_t)format animated:(BOOL)animated
{
  if (self->__indicatorFormat != format)
  {
    animatedCopy = animated;
    self->__indicatorFormat = format;
    if (format)
    {
      _label = [(PUPlaybackTimeIndicatorTileViewController *)self _label];
      [_label setFormat:format];
    }

    [(PUPlaybackTimeIndicatorTileViewController *)self _setIndicatorVisible:format != 0 animated:animatedCopy];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v12 = modelCopy;
    [(PUBrowsingViewModel *)viewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_viewModel, model);
    [(PUBrowsingViewModel *)self->_viewModel registerChangeObserver:self];
    [(PUPlaybackTimeIndicatorTileViewController *)self _updateIndicatorDisplayStyle];
    if (-[PUBrowsingViewModel isChromeVisible](v12, "isChromeVisible") && (-[PUBrowsingViewModel lastChromeVisibilityChangeDate](v12, "lastChromeVisibilityChangeDate"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[PUBrowsingViewModel lastChromeVisibilityChangeDate](v12, "lastChromeVisibilityChangeDate"), v9 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceNow], v11 = v10, v9, v8, v11 > -2.0))
    {
      viewModel = [(PUPlaybackTimeIndicatorTileViewController *)self _flashTimeIndicator];
    }

    else
    {
      viewModel = [(PUPlaybackTimeIndicatorTileViewController *)self _cancelFlashTimeIndicator];
    }

    modelCopy = v12;
  }

  MEMORY[0x1EEE66BB8](viewModel, modelCopy);
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != playerCopy)
  {
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterTimeObserver:self];
    [(PUBrowsingVideoPlayer *)self->_videoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_videoPlayer, player);
    [(PUBrowsingVideoPlayer *)self->_videoPlayer registerTimeObserver:self];
    [(PUBrowsingVideoPlayer *)self->_videoPlayer registerChangeObserver:self];
    if (playerCopy)
    {
      [(PUBrowsingVideoPlayer *)playerCopy currentTime];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    [(PUPlaybackTimeIndicatorTileViewController *)self _updateIndicatorValueWithTime:v7];
  }
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUPlaybackTimeIndicatorTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUPlaybackTimeIndicatorTileViewController *)self setVideoPlayer:0];
  [(PUPlaybackTimeIndicatorTileViewController *)self setViewModel:0];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToCanFlashIndicator = objc_opt_respondsToSelector() & 1;
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PUPlaybackTimeIndicatorTileViewController;
  [(PUTileViewController *)&v7 viewDidLoad];
  view = [(PUTileViewController *)self view];
  v4 = [PUPlaybackTimeLabel alloc];
  [view bounds];
  v5 = [(PUPlaybackTimeLabel *)v4 initWithFrame:?];
  label = self->__label;
  self->__label = v5;

  [(PUPlaybackTimeLabel *)self->__label setAutoresizingMask:18];
  [(PUPlaybackTimeLabel *)self->__label setAlpha:0.0];
  [view addSubview:self->__label];
}

+ (CGSize)playbackTimeIndicatorTileSize
{
  if (playbackTimeIndicatorTileSize_onceToken != -1)
  {
    dispatch_once(&playbackTimeIndicatorTileSize_onceToken, &__block_literal_global_70140);
  }

  v2 = *&playbackTimeIndicatorTileSize_playbackTimeIndicatorTileSize_0;
  v3 = *&playbackTimeIndicatorTileSize_playbackTimeIndicatorTileSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __74__PUPlaybackTimeIndicatorTileViewController_playbackTimeIndicatorTileSize__block_invoke()
{
  v0 = objc_alloc_init(PUPlaybackTimeLabel);
  [(PUPlaybackTimeLabel *)v0 setFormat:2];
  CMTimeMakeWithSeconds(&v4, 360000.0, 1);
  [(PUPlaybackTimeLabel *)v0 setPlaybackDuration:&v4];
  [(PUPlaybackTimeLabel *)v0 sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  playbackTimeIndicatorTileSize_playbackTimeIndicatorTileSize_0 = v2;
  v3 = 18.0;
  if (v1 >= 18.0)
  {
    v3 = v1;
  }

  playbackTimeIndicatorTileSize_playbackTimeIndicatorTileSize_1 = *&v3;
}

@end