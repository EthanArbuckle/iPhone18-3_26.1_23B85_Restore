@interface PUFilmstripTileViewController
- (CGSize)expandedSize;
- (CGSize)targetSizeForProposedTargetSize:(CGSize)a3;
- (CGSize)unexpandedSize;
- (id)_currentIndicatorInfos;
- (id)loadView;
- (void)_updateFilmStripContents;
- (void)_updateFilmstripView;
- (void)applyLayoutInfo:(id)a3;
- (void)assetViewModelDidChange:(id)a3;
- (void)becomeReusable;
- (void)didChangeAnimating;
- (void)didChangeVisibleRect;
- (void)setExpanded:(BOOL)a3;
- (void)setExpandedSize:(CGSize)a3;
- (void)setVideoPlayer:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUFilmstripTileViewController

- (CGSize)unexpandedSize
{
  width = self->_unexpandedSize.width;
  height = self->_unexpandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)expandedSize
{
  width = self->_expandedSize.width;
  height = self->_expandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = PUFilmstripTileViewController;
  [(PUImageTileViewController *)&v16 viewModel:a3 didChange:v6];
  v7 = [v6 highlightTimeRangesChanged];
  if ([v6 videoPlayerDidChange])
  {
    v8 = [(PUImageTileViewController *)self assetViewModel];
    v9 = [v8 videoPlayer];
    [(PUFilmstripTileViewController *)self setVideoPlayer:v9];
  }

  v10 = [v6 videoPlayerChange];
  if ([v10 playerItemDidChange])
  {
    v11 = 1;
  }

  else
  {
    v12 = [v6 videoPlayerChange];
    v13 = [v12 avPlayerDidChange];

    v11 = v13 | v7;
  }

  v14 = [v6 irisPlayerChange];
  v15 = [v14 currentlyDisplayedTimesDidChange];

  if (v15 & 1) != 0 || (v11)
  {
    [(PUFilmstripTileViewController *)self _updateFilmstripView];
  }
}

- (id)_currentIndicatorInfos
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PUImageTileViewController *)self assetViewModel];
  v5 = [v4 irisPlayer];
  v6 = [v4 videoPlayer];
  v7 = [(PUImageTileViewController *)self asset];
  if (![v7 canPlayPhotoIris])
  {
    if (v6)
    {
      [v6 duration];
      goto LABEL_6;
    }

LABEL_7:
    epoch = 0;
    flags = 0;
    memset(&time1, 0, sizeof(time1));
    goto LABEL_8;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  [v5 currentVideoDuration];
LABEL_6:
  flags = time1.flags;
  epoch = time1.epoch;
LABEL_8:
  value = time1.value;
  timescale = time1.timescale;
  if ((flags & 0x1D) == 1 && (time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2)))
  {
    time1.value = value;
    time1.timescale = timescale;
    time1.flags = flags;
    time1.epoch = epoch;
    Seconds = CMTimeGetSeconds(&time1);
  }

  else
  {
    [v7 duration];
  }

  v11 = Seconds;
  if (Seconds > 0.0)
  {
    if (v5)
    {
      v12 = [v5 currentlyDisplayedTimes];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__PUFilmstripTileViewController__currentIndicatorInfos__block_invoke;
      v15[3] = &unk_1E7B77228;
      v17 = v11;
      v15[4] = self;
      v16 = v3;
      [v12 enumerateObjectsUsingBlock:v15];
    }

    else if (v6 && [v6 desiredPlayState] == 3 && (objc_msgSend(v6, "isActivated") & 1) == 0)
    {
      memset(&time1, 0, sizeof(time1));
      [v6 currentTime];
      time2 = time1;
      v14 = [[PUFilmStripViewIndicatorInfo alloc] initWithLocation:0 preferredColor:CMTimeGetSeconds(&time2) / v11];
      [v3 addObject:v14];
    }
  }

  return v3;
}

void __55__PUFilmstripTileViewController__currentIndicatorInfos__block_invoke(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v4 = v3 / *(a1 + 48);
  v5 = [PUFilmStripViewIndicatorInfo alloc];
  v6 = [*(a1 + 32) view];
  v7 = [v6 tintColor];
  v8 = [(PUFilmStripViewIndicatorInfo *)v5 initWithLocation:v7 preferredColor:v4];

  [*(a1 + 40) addObject:v8];
}

- (void)_updateFilmstripView
{
  v3 = [(PUFilmstripTileViewController *)self wrapperView];
  v4 = [v3 filmstripView];
  v5 = [(PUFilmstripTileViewController *)self isExpanded];
  if (v5 && !v4)
  {
    v6 = [PUFilmstripView alloc];
    [v3 bounds];
    v4 = [(PUFilmstripView *)v6 initWithFrame:?];
    [(PUFilmstripView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 setFilmstripView:v4];
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0 && ![(PUTileController *)self isAnimating])
  {
    [v3 setFilmstripView:0 leavingPreviousViewInPlace:1];
    v8 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__PUFilmstripTileViewController__updateFilmstripView__block_invoke;
    v13[3] = &unk_1E7B80DD0;
    v14 = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PUFilmstripTileViewController__updateFilmstripView__block_invoke_2;
    v11[3] = &unk_1E7B7F020;
    v12 = v14;
    [v8 animateWithDuration:v13 animations:v11 completion:0.25];

    v4 = 0;
  }

  if (![(PUTileController *)self isAnimating])
  {
    [(PUFilmstripTileViewController *)self _updateFilmStripContents];
  }

  v9 = [(PUImageTileViewController *)self image];
  [(PUFilmstripView *)v4 setPlaceholderImage:v9];

  v10 = [(PUFilmstripTileViewController *)self _currentIndicatorInfos];
  [(PUFilmstripView *)v4 setIndicatorInfos:v10];

  [v3 setAnimating:{-[PUTileController isAnimating](self, "isAnimating")}];
  [(PUTileViewController *)self visibleRect];
  [v3 setVisibleRect:?];
  [v3 setExpanded:{-[PUFilmstripTileViewController isExpanded](self, "isExpanded")}];
  [(PUFilmstripTileViewController *)self expandedSize];
  [v3 setExpandedSize:?];
}

- (void)_updateFilmStripContents
{
  v3 = [(PUFilmstripTileViewController *)self wrapperView];
  v15 = [v3 filmstripView];

  v4 = [(PUImageTileViewController *)self assetViewModel];
  v5 = [v4 videoPlayer];
  v6 = [v5 playerItem];
  v7 = [v6 asset];

  if (!v7)
  {
    v8 = [(PUImageTileViewController *)self assetViewModel];
    v9 = [v8 irisPlayer];
    v10 = [v9 playerItem];
    v7 = [v10 asset];
  }

  v11 = [(PUImageTileViewController *)self assetViewModel];
  v12 = [v11 videoPlayer];
  v13 = [v12 playerItem];
  v14 = [v13 videoComposition];

  [v15 setAsset:v7 videoComposition:v14];
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_isExpanded != a3)
  {
    self->_isExpanded = a3;
    [(PUFilmstripTileViewController *)self _updateFilmstripView];
  }
}

- (void)setExpandedSize:(CGSize)a3
{
  if (self->_expandedSize.width != a3.width || self->_expandedSize.height != a3.height)
  {
    self->_expandedSize = a3;
    [(PUFilmstripTileViewController *)self _updateFilmstripView];
  }
}

- (void)setVideoPlayer:(id)a3
{
  v5 = a3;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != v5)
  {
    v7 = v5;
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterTimeObserver:self];
    objc_storeStrong(&self->_videoPlayer, a3);
    videoPlayer = [(PUBrowsingVideoPlayer *)self->_videoPlayer registerTimeObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](videoPlayer, v5);
}

- (void)assetViewModelDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUFilmstripTileViewController;
  [(PUImageTileViewController *)&v6 assetViewModelDidChange:a3];
  v4 = [(PUImageTileViewController *)self assetViewModel];
  v5 = [v4 videoPlayer];
  [(PUFilmstripTileViewController *)self setVideoPlayer:v5];

  [(PUFilmstripTileViewController *)self _updateFilmstripView];
}

- (void)didChangeAnimating
{
  v3.receiver = self;
  v3.super_class = PUFilmstripTileViewController;
  [(PUTileController *)&v3 didChangeAnimating];
  [(PUFilmstripTileViewController *)self _updateFilmstripView];
}

- (void)didChangeVisibleRect
{
  v3.receiver = self;
  v3.super_class = PUFilmstripTileViewController;
  [(PUImageTileViewController *)&v3 didChangeVisibleRect];
  [(PUFilmstripTileViewController *)self _updateFilmstripView];
}

- (void)becomeReusable
{
  v4.receiver = self;
  v4.super_class = PUFilmstripTileViewController;
  [(PUImageTileViewController *)&v4 becomeReusable];
  [(PUImageTileViewController *)self setAssetViewModel:0];
  [(PUFilmstripTileViewController *)self setExpanded:0];
  [(PUFilmstripTileViewController *)self setExpandedSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v3 = [(PUFilmstripTileViewController *)self wrapperView];
  [v3 setAnchoredLeft:0];
}

- (CGSize)targetSizeForProposedTargetSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUFilmstripTileViewController *)self unexpandedSize];
  if (v7 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    v9 = [(PUTileViewController *)self view];
    v10 = [v9 window];
    v11 = [v10 screen];
    [v11 scale];
    v13 = v12;

    if (v13 < 1.0)
    {
      v14 = [(PUTileController *)self tilingView];
      v15 = [v14 window];
      v16 = [v15 screen];
      [v16 scale];
      v13 = v17;
    }

    if (v13 < 1.0 && PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    [(PUFilmstripTileViewController *)self unexpandedSize];
    PXSizeScale();
    PXSizeMin();
    width = v18;
    height = v19;
  }

  v20 = width;
  v21 = height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)applyLayoutInfo:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PUFilmstripTileViewController;
  [(PUImageTileViewController *)&v18 applyLayoutInfo:v5];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUFilmstripTileViewController.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"[layoutInfo isKindOfClass:PUExpandableTileLayoutInfo.class]"}];
  }

  v6 = v5;
  [v6 expandedSize];
  [(PUFilmstripTileViewController *)self setExpandedSize:?];
  -[PUFilmstripTileViewController setExpanded:](self, "setExpanded:", [v6 isExpanded]);
  [v6 unexpandedSize];
  [(PUFilmstripTileViewController *)self setUnexpandedSize:?];
  [v6 cornerRadius];
  v8 = v7;
  v9 = [(PUImageTileViewController *)self imageView];
  v10 = [v9 layer];
  [v10 setCornerRadius:v8];

  v11 = [v6 cornerCurve];
  v12 = [(PUImageTileViewController *)self imageView];
  v13 = [v12 layer];
  [v13 setCornerCurve:v11];

  v14 = [v6 cornerMask];
  v15 = [(PUImageTileViewController *)self imageView];
  v16 = [v15 layer];
  [v16 setMaskedCorners:v14];
}

- (id)loadView
{
  v7.receiver = self;
  v7.super_class = PUFilmstripTileViewController;
  v3 = [(PUImageTileViewController *)&v7 loadView];
  v4 = [PUFilmstripWrapperView alloc];
  [v3 bounds];
  v5 = [(PUFilmstripWrapperView *)v4 initWithFrame:?];
  [(PUFilmstripWrapperView *)v5 setUserInteractionEnabled:0];
  [(PUFilmstripTileViewController *)self expandedSize];
  [(PUFilmstripWrapperView *)v5 setExpandedSize:?];
  objc_storeStrong(&self->_wrapperView, v5);
  [(PUFilmstripWrapperView *)v5 setBackgroundView:v3];

  return v5;
}

@end