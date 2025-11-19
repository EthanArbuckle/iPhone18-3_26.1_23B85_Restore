@interface PUVideoHighlightStripTileViewController
- (void)_updateHighlightsView;
- (void)_updateHighlightsViewCurrentTime;
- (void)becomeReusable;
- (void)setAssetViewModel:(id)a3;
- (void)setCurrentTime:(id *)a3;
- (void)setHighlightColor:(id)a3;
- (void)setVideoPlayer:(id)a3;
- (void)videoPlayer:(id)a3 currentTimeDidChange:(id *)a4;
- (void)videoPlayer:(id)a3 desiredSeekTimeDidChange:(id *)a4;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUVideoHighlightStripTileViewController

- (void)videoPlayer:(id)a3 desiredSeekTimeDidChange:(id *)a4
{
  if (a3)
  {
    [a3 desiredSeekTime];
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

- (void)videoPlayer:(id)a3 currentTimeDidChange:(id *)a4
{
  if (a3)
  {
    [a3 currentTime];
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

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(PUVideoHighlightStripTileViewController *)self assetViewModel];

  if (v7 == v6)
  {
    if (([v9 highlightTimeRangesChanged] & 1) != 0 || (objc_msgSend(v9, "videoPlayerDidChange") & 1) != 0 || (objc_msgSend(v9, "videoPlayerChange"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
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
  v3 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  v4 = v6;
  v5 = v7;
  [v3 setCurrentTime:&v4];
}

- (void)setCurrentTime:(id *)a3
{
  p_currentTime = &self->_currentTime;
  time1 = *a3;
  currentTime = self->_currentTime;
  if (CMTimeCompare(&time1, &currentTime))
  {
    v6 = *&a3->var0;
    p_currentTime->epoch = a3->var3;
    *&p_currentTime->value = v6;
    [(PUVideoHighlightStripTileViewController *)self _updateHighlightsViewCurrentTime];
  }
}

- (void)setHighlightColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_highlightColor != v5)
  {
    v8 = v5;
    v5 = [(UIColor *)v5 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_highlightColor, a3);
      v7 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
      [v7 setHighlightColor:v8];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_updateHighlightsView
{
  v3 = [(PUVideoHighlightStripTileViewController *)self assetViewModel];
  v4 = [v3 highlightTimeRanges];
  v5 = [v3 videoPlayer];
  v6 = [v5 timeRangeMapper];

  if (v6)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __64__PUVideoHighlightStripTileViewController__updateHighlightsView__block_invoke;
    v24 = &unk_1E7B7E548;
    v25 = v6;
    v7 = PXMap();

    v4 = v7;
  }

  v8 = [v3 shouldShowHighlightTimeRanges];
  v9 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  [v9 setHidden:v8 ^ 1u];

  v10 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  [v10 setHighlightTimeRanges:v4];

  v11 = [v3 videoPlayer];
  v12 = v11;
  if (v11)
  {
    [v11 duration];
  }

  else
  {
    v19 = 0uLL;
    v20 = 0;
  }

  v13 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  v17 = v19;
  v18 = v20;
  [v13 setVideoDuration:&v17];

  v14 = [v3 videoPlayer];
  v15 = [v14 isPlaybackDesired];
  v16 = [(PUVideoHighlightStripTileViewController *)self highlightsView];
  [v16 setIsPlaying:v15];

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

- (void)setVideoPlayer:(id)a3
{
  v5 = a3;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != v5)
  {
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterTimeObserver:self];
    objc_storeStrong(&self->_videoPlayer, a3);
    if (v5)
    {
      [(PUBrowsingVideoPlayer *)v5 currentTime];
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    v7 = v9;
    v8 = v10;
    [(PUVideoHighlightStripTileViewController *)self setCurrentTime:&v7];
    [(PUBrowsingVideoPlayer *)v5 registerTimeObserver:self];
  }
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    v8 = v5;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    v7 = [(PUAssetViewModel *)v8 videoPlayer];
    [(PUVideoHighlightStripTileViewController *)self setVideoPlayer:v7];

    [(PUAssetViewModel *)v8 registerChangeObserver:self];
    assetViewModel = [(PUVideoHighlightStripTileViewController *)self _updateHighlightsView];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, v5);
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PUVideoHighlightStripTileViewController;
  [(PUTileViewController *)&v11 viewDidLoad];
  v3 = [(PUTileViewController *)self view];
  [v3 bounds];
  v8 = [[_PUVideoHighlightStripView alloc] initWithFrame:v4, v5, v6, v7];
  [(_PUVideoHighlightStripView *)v8 setAutoresizingMask:18];
  [v3 addSubview:v8];
  v9 = [(PUVideoHighlightStripTileViewController *)self highlightColor];
  [(_PUVideoHighlightStripView *)v8 setHighlightColor:v9];

  highlightsView = self->_highlightsView;
  self->_highlightsView = v8;

  [(PUVideoHighlightStripTileViewController *)self _updateHighlightsView];
}

@end