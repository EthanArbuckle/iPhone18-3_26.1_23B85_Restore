@interface PUVideoHighlightStripTileViewController
- (void)_updateHighlightsView;
- (void)_updateHighlightsViewCurrentTime;
- (void)becomeReusable;
- (void)setAssetViewModel:(id)model;
- (void)setCurrentTime:(id *)time;
- (void)setHighlightColor:(id)color;
- (void)setVideoPlayer:(id)player;
- (void)videoPlayer:(id)player currentTimeDidChange:(id *)change;
- (void)videoPlayer:(id)player desiredSeekTimeDidChange:(id *)change;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUVideoHighlightStripTileViewController

- (void)videoPlayer:(id)player desiredSeekTimeDidChange:(id *)change
{
  if (player)
  {
    [player desiredSeekTime];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
  }

  v5 = v7;
  v6 = v8;
  [(PUVideoHighlightStripTileViewController *)self setCurrentTime:&v5];
}

- (void)videoPlayer:(id)player currentTimeDidChange:(id *)change
{
  if (player)
  {
    [player currentTime];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
  }

  v5 = v7;
  v6 = v8;
  [(PUVideoHighlightStripTileViewController *)self setCurrentTime:&v5];
}

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  modelCopy = model;
  assetViewModel = [(PUVideoHighlightStripTileViewController *)self assetViewModel];

  if (assetViewModel == modelCopy)
  {
    if (([changeCopy highlightTimeRangesChanged] & 1) != 0 || (objc_msgSend(changeCopy, "videoPlayerDidChange") & 1) != 0 || (objc_msgSend(changeCopy, "videoPlayerChange"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      [(PUVideoHighlightStripTileViewController *)self _updateHighlightsView];
    }
  }
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUVideoHighlightStripTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUVideoHighlightStripTileViewController *)self setAssetViewModel:0];
}

- (void)_updateHighlightsViewCurrentTime
{
  [(PUVideoHighlightStripTileViewController *)self currentTime];
  highlightsView = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  v4 = v6;
  v5 = v7;
  [highlightsView setCurrentTime:&v4];
}

- (void)setCurrentTime:(id *)time
{
  p_currentTime = &self->_currentTime;
  time1 = *time;
  currentTime = self->_currentTime;
  if (CMTimeCompare(&time1, &currentTime))
  {
    v6 = *&time->var0;
    p_currentTime->epoch = time->var3;
    *&p_currentTime->value = v6;
    [(PUVideoHighlightStripTileViewController *)self _updateHighlightsViewCurrentTime];
  }
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_highlightColor != colorCopy)
  {
    v8 = colorCopy;
    colorCopy = [(UIColor *)colorCopy isEqual:?];
    v6 = v8;
    if ((colorCopy & 1) == 0)
    {
      objc_storeStrong(&self->_highlightColor, color);
      highlightsView = [(PUVideoHighlightStripTileViewController *)self highlightsView];
      [highlightsView setHighlightColor:v8];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](colorCopy, v6);
}

- (void)_updateHighlightsView
{
  assetViewModel = [(PUVideoHighlightStripTileViewController *)self assetViewModel];
  highlightTimeRanges = [assetViewModel highlightTimeRanges];
  videoPlayer = [assetViewModel videoPlayer];
  timeRangeMapper = [videoPlayer timeRangeMapper];

  if (timeRangeMapper)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __64__PUVideoHighlightStripTileViewController__updateHighlightsView__block_invoke;
    v24 = &unk_1E7B7E548;
    v25 = timeRangeMapper;
    v7 = PXMap();

    highlightTimeRanges = v7;
  }

  shouldShowHighlightTimeRanges = [assetViewModel shouldShowHighlightTimeRanges];
  highlightsView = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  [highlightsView setHidden:shouldShowHighlightTimeRanges ^ 1u];

  highlightsView2 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  [highlightsView2 setHighlightTimeRanges:highlightTimeRanges];

  videoPlayer2 = [assetViewModel videoPlayer];
  v12 = videoPlayer2;
  if (videoPlayer2)
  {
    [videoPlayer2 duration];
  }

  else
  {
    v19 = 0uLL;
    v20 = 0;
  }

  highlightsView3 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  v17 = v19;
  v18 = v20;
  [highlightsView3 setVideoDuration:&v17];

  videoPlayer3 = [assetViewModel videoPlayer];
  isPlaybackDesired = [videoPlayer3 isPlaybackDesired];
  highlightsView4 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  [highlightsView4 setIsPlaying:isPlaybackDesired];

  [(PUVideoHighlightStripTileViewController *)self _updateHighlightsViewCurrentTime];
}

id __64__PUVideoHighlightStripTileViewController__updateHighlightsView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = *(a1 + 32);
  if (v3)
  {
    [v3 CMTimeRangeValue];
    if (v5)
    {
LABEL_3:
      [v5 scaledTimeRangeForOriginalTimeRange:v9];
      goto LABEL_6;
    }
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
LABEL_6:
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v6 = [MEMORY[0x1E696B098] valueWithCMTimeRange:v8];

  return v6;
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != playerCopy)
  {
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterTimeObserver:self];
    objc_storeStrong(&self->_videoPlayer, player);
    if (playerCopy)
    {
      [(PUBrowsingVideoPlayer *)playerCopy currentTime];
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    v7 = v9;
    v8 = v10;
    [(PUVideoHighlightStripTileViewController *)self setCurrentTime:&v7];
    [(PUBrowsingVideoPlayer *)playerCopy registerTimeObserver:self];
  }
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    v8 = modelCopy;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    videoPlayer = [(PUAssetViewModel *)v8 videoPlayer];
    [(PUVideoHighlightStripTileViewController *)self setVideoPlayer:videoPlayer];

    [(PUAssetViewModel *)v8 registerChangeObserver:self];
    assetViewModel = [(PUVideoHighlightStripTileViewController *)self _updateHighlightsView];
    modelCopy = v8;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, modelCopy);
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PUVideoHighlightStripTileViewController;
  [(PUTileViewController *)&v11 viewDidLoad];
  view = [(PUTileViewController *)self view];
  [view bounds];
  v8 = [[_PUVideoHighlightStripView alloc] initWithFrame:v4, v5, v6, v7];
  [(_PUVideoHighlightStripView *)v8 setAutoresizingMask:18];
  [view addSubview:v8];
  highlightColor = [(PUVideoHighlightStripTileViewController *)self highlightColor];
  [(_PUVideoHighlightStripView *)v8 setHighlightColor:highlightColor];

  highlightsView = self->_highlightsView;
  self->_highlightsView = v8;

  [(PUVideoHighlightStripTileViewController *)self _updateHighlightsView];
}

@end