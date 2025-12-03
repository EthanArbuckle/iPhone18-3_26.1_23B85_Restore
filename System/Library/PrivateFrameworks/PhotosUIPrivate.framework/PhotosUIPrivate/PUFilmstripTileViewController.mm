@interface PUFilmstripTileViewController
- (CGSize)expandedSize;
- (CGSize)targetSizeForProposedTargetSize:(CGSize)size;
- (CGSize)unexpandedSize;
- (id)_currentIndicatorInfos;
- (id)loadView;
- (void)_updateFilmStripContents;
- (void)_updateFilmstripView;
- (void)applyLayoutInfo:(id)info;
- (void)assetViewModelDidChange:(id)change;
- (void)becomeReusable;
- (void)didChangeAnimating;
- (void)didChangeVisibleRect;
- (void)setExpanded:(BOOL)expanded;
- (void)setExpandedSize:(CGSize)size;
- (void)setVideoPlayer:(id)player;
- (void)viewModel:(id)model didChange:(id)change;
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

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  v16.receiver = self;
  v16.super_class = PUFilmstripTileViewController;
  [(PUImageTileViewController *)&v16 viewModel:model didChange:changeCopy];
  highlightTimeRangesChanged = [changeCopy highlightTimeRangesChanged];
  if ([changeCopy videoPlayerDidChange])
  {
    assetViewModel = [(PUImageTileViewController *)self assetViewModel];
    videoPlayer = [assetViewModel videoPlayer];
    [(PUFilmstripTileViewController *)self setVideoPlayer:videoPlayer];
  }

  videoPlayerChange = [changeCopy videoPlayerChange];
  if ([videoPlayerChange playerItemDidChange])
  {
    v11 = 1;
  }

  else
  {
    videoPlayerChange2 = [changeCopy videoPlayerChange];
    avPlayerDidChange = [videoPlayerChange2 avPlayerDidChange];

    v11 = avPlayerDidChange | highlightTimeRangesChanged;
  }

  irisPlayerChange = [changeCopy irisPlayerChange];
  currentlyDisplayedTimesDidChange = [irisPlayerChange currentlyDisplayedTimesDidChange];

  if (currentlyDisplayedTimesDidChange & 1) != 0 || (v11)
  {
    [(PUFilmstripTileViewController *)self _updateFilmstripView];
  }
}

- (id)_currentIndicatorInfos
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  irisPlayer = [assetViewModel irisPlayer];
  videoPlayer = [assetViewModel videoPlayer];
  asset = [(PUImageTileViewController *)self asset];
  if (![asset canPlayPhotoIris])
  {
    if (videoPlayer)
    {
      [videoPlayer duration];
      goto LABEL_6;
    }

LABEL_7:
    epoch = 0;
    flags = 0;
    memset(&time1, 0, sizeof(time1));
    goto LABEL_8;
  }

  if (!irisPlayer)
  {
    goto LABEL_7;
  }

  [irisPlayer currentVideoDuration];
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
    [asset duration];
  }

  v11 = Seconds;
  if (Seconds > 0.0)
  {
    if (irisPlayer)
    {
      currentlyDisplayedTimes = [irisPlayer currentlyDisplayedTimes];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__PUFilmstripTileViewController__currentIndicatorInfos__block_invoke;
      v15[3] = &unk_1E7B77228;
      v17 = v11;
      v15[4] = self;
      v16 = v3;
      [currentlyDisplayedTimes enumerateObjectsUsingBlock:v15];
    }

    else if (videoPlayer && [videoPlayer desiredPlayState] == 3 && (objc_msgSend(videoPlayer, "isActivated") & 1) == 0)
    {
      memset(&time1, 0, sizeof(time1));
      [videoPlayer currentTime];
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
  wrapperView = [(PUFilmstripTileViewController *)self wrapperView];
  filmstripView = [wrapperView filmstripView];
  isExpanded = [(PUFilmstripTileViewController *)self isExpanded];
  if (isExpanded && !filmstripView)
  {
    v6 = [PUFilmstripView alloc];
    [wrapperView bounds];
    filmstripView = [(PUFilmstripView *)v6 initWithFrame:?];
    [(PUFilmstripView *)filmstripView setTranslatesAutoresizingMaskIntoConstraints:0];
    [wrapperView setFilmstripView:filmstripView];
  }

  if (filmstripView)
  {
    v7 = isExpanded;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0 && ![(PUTileController *)self isAnimating])
  {
    [wrapperView setFilmstripView:0 leavingPreviousViewInPlace:1];
    v8 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__PUFilmstripTileViewController__updateFilmstripView__block_invoke;
    v13[3] = &unk_1E7B80DD0;
    v14 = filmstripView;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PUFilmstripTileViewController__updateFilmstripView__block_invoke_2;
    v11[3] = &unk_1E7B7F020;
    v12 = v14;
    [v8 animateWithDuration:v13 animations:v11 completion:0.25];

    filmstripView = 0;
  }

  if (![(PUTileController *)self isAnimating])
  {
    [(PUFilmstripTileViewController *)self _updateFilmStripContents];
  }

  image = [(PUImageTileViewController *)self image];
  [(PUFilmstripView *)filmstripView setPlaceholderImage:image];

  _currentIndicatorInfos = [(PUFilmstripTileViewController *)self _currentIndicatorInfos];
  [(PUFilmstripView *)filmstripView setIndicatorInfos:_currentIndicatorInfos];

  [wrapperView setAnimating:{-[PUTileController isAnimating](self, "isAnimating")}];
  [(PUTileViewController *)self visibleRect];
  [wrapperView setVisibleRect:?];
  [wrapperView setExpanded:{-[PUFilmstripTileViewController isExpanded](self, "isExpanded")}];
  [(PUFilmstripTileViewController *)self expandedSize];
  [wrapperView setExpandedSize:?];
}

- (void)_updateFilmStripContents
{
  wrapperView = [(PUFilmstripTileViewController *)self wrapperView];
  filmstripView = [wrapperView filmstripView];

  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  videoPlayer = [assetViewModel videoPlayer];
  playerItem = [videoPlayer playerItem];
  asset = [playerItem asset];

  if (!asset)
  {
    assetViewModel2 = [(PUImageTileViewController *)self assetViewModel];
    irisPlayer = [assetViewModel2 irisPlayer];
    playerItem2 = [irisPlayer playerItem];
    asset = [playerItem2 asset];
  }

  assetViewModel3 = [(PUImageTileViewController *)self assetViewModel];
  videoPlayer2 = [assetViewModel3 videoPlayer];
  playerItem3 = [videoPlayer2 playerItem];
  videoComposition = [playerItem3 videoComposition];

  [filmstripView setAsset:asset videoComposition:videoComposition];
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_isExpanded != expanded)
  {
    self->_isExpanded = expanded;
    [(PUFilmstripTileViewController *)self _updateFilmstripView];
  }
}

- (void)setExpandedSize:(CGSize)size
{
  if (self->_expandedSize.width != size.width || self->_expandedSize.height != size.height)
  {
    self->_expandedSize = size;
    [(PUFilmstripTileViewController *)self _updateFilmstripView];
  }
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != playerCopy)
  {
    v7 = playerCopy;
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterTimeObserver:self];
    objc_storeStrong(&self->_videoPlayer, player);
    videoPlayer = [(PUBrowsingVideoPlayer *)self->_videoPlayer registerTimeObserver:self];
    playerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](videoPlayer, playerCopy);
}

- (void)assetViewModelDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = PUFilmstripTileViewController;
  [(PUImageTileViewController *)&v6 assetViewModelDidChange:change];
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  videoPlayer = [assetViewModel videoPlayer];
  [(PUFilmstripTileViewController *)self setVideoPlayer:videoPlayer];

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
  wrapperView = [(PUFilmstripTileViewController *)self wrapperView];
  [wrapperView setAnchoredLeft:0];
}

- (CGSize)targetSizeForProposedTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUFilmstripTileViewController *)self unexpandedSize];
  if (v7 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    view = [(PUTileViewController *)self view];
    window = [view window];
    screen = [window screen];
    [screen scale];
    v13 = v12;

    if (v13 < 1.0)
    {
      tilingView = [(PUTileController *)self tilingView];
      window2 = [tilingView window];
      screen2 = [window2 screen];
      [screen2 scale];
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

- (void)applyLayoutInfo:(id)info
{
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = PUFilmstripTileViewController;
  [(PUImageTileViewController *)&v18 applyLayoutInfo:infoCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUFilmstripTileViewController.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"[layoutInfo isKindOfClass:PUExpandableTileLayoutInfo.class]"}];
  }

  v6 = infoCopy;
  [v6 expandedSize];
  [(PUFilmstripTileViewController *)self setExpandedSize:?];
  -[PUFilmstripTileViewController setExpanded:](self, "setExpanded:", [v6 isExpanded]);
  [v6 unexpandedSize];
  [(PUFilmstripTileViewController *)self setUnexpandedSize:?];
  [v6 cornerRadius];
  v8 = v7;
  imageView = [(PUImageTileViewController *)self imageView];
  layer = [imageView layer];
  [layer setCornerRadius:v8];

  cornerCurve = [v6 cornerCurve];
  imageView2 = [(PUImageTileViewController *)self imageView];
  layer2 = [imageView2 layer];
  [layer2 setCornerCurve:cornerCurve];

  cornerMask = [v6 cornerMask];
  imageView3 = [(PUImageTileViewController *)self imageView];
  layer3 = [imageView3 layer];
  [layer3 setMaskedCorners:cornerMask];
}

- (id)loadView
{
  v7.receiver = self;
  v7.super_class = PUFilmstripTileViewController;
  loadView = [(PUImageTileViewController *)&v7 loadView];
  v4 = [PUFilmstripWrapperView alloc];
  [loadView bounds];
  v5 = [(PUFilmstripWrapperView *)v4 initWithFrame:?];
  [(PUFilmstripWrapperView *)v5 setUserInteractionEnabled:0];
  [(PUFilmstripTileViewController *)self expandedSize];
  [(PUFilmstripWrapperView *)v5 setExpandedSize:?];
  objc_storeStrong(&self->_wrapperView, v5);
  [(PUFilmstripWrapperView *)v5 setBackgroundView:loadView];

  return v5;
}

@end