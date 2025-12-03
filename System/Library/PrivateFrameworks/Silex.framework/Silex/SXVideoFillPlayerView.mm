@interface SXVideoFillPlayerView
- (SXVideoFillPlayerView)initWithVideoResource:(id)resource imageView:(id)view;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playIfPossible;
- (void)registerForHDRTraitChanges;
- (void)reset;
- (void)setFillMode:(unint64_t)mode;
- (void)switchToPlayer;
@end

@implementation SXVideoFillPlayerView

- (SXVideoFillPlayerView)initWithVideoResource:(id)resource imageView:(id)view
{
  v30[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  viewCopy = view;
  v28.receiver = self;
  v28.super_class = SXVideoFillPlayerView;
  v9 = [(SXVideoFillPlayerView *)&v28 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoResource, resource);
    objc_storeStrong(&v10->_stillImageView, view);
    stillImageView = v10->_stillImageView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SXImageView *)stillImageView setBackgroundColor:clearColor];

    objc_initWeak(&location, v10);
    v13 = objc_alloc(MEMORY[0x1E6988168]);
    v14 = [resourceCopy URL];
    v29 = *MEMORY[0x1E6987BF0];
    v30[0] = &unk_1F538A250;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v16 = [v13 initWithURL:v14 options:v15];

    v17 = [objc_alloc(MEMORY[0x1E69880B0]) initWithAsset:v16 automaticallyLoadedAssetKeys:&unk_1F538A610];
    v18 = [objc_alloc(MEMORY[0x1E69CE0E8]) initWithPlayerItem:v17 audioMode:2];
    player = v10->_player;
    v10->_player = v18;

    [(SVAVPlayer *)v10->_player setPreventsDisplaySleepDuringVideoPlayback:0];
    [(SVAVPlayer *)v10->_player setMuted:1];
    v20 = v10->_player;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __57__SXVideoFillPlayerView_initWithVideoResource_imageView___block_invoke;
    v25[3] = &unk_1E8500ED0;
    objc_copyWeak(&v26, &location);
    [(SVAVPlayer *)v20 setPlaybackStatusBlock:v25];
    player = [(SXVideoFillPlayerView *)v10 player];
    v22 = [(AVPlayerLayer *)SXPlayerLayer playerLayerWithPlayer:player];
    playerLayer = v10->_playerLayer;
    v10->_playerLayer = v22;

    [(SXPlayerLayer *)v10->_playerLayer addObserver:v10 forKeyPath:@"readyForDisplay" options:1 context:0];
    [(SXVideoFillPlayerView *)v10 addSubview:v10->_stillImageView];
    [(SXVideoFillPlayerView *)v10 registerForHDRTraitChanges];
    objc_destroyWeak(&v26);

    objc_destroyWeak(&location);
  }

  return v10;
}

void __57__SXVideoFillPlayerView_initWithVideoResource_imageView___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a3 == 4)
  {
    if ([WeakRetained shouldLoop])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__SXVideoFillPlayerView_initWithVideoResource_imageView___block_invoke_2;
      v8[3] = &unk_1E84FED18;
      v9 = v5;
      [v9 seekToStartWithCompletionBlock:v8];
    }
  }

  else if (a3 == 1)
  {
    [WeakRetained playIfPossible];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SXVideoFillPlayerView;
  [(SXVideoFillPlayerView *)&v5 layoutSubviews];
  stillImageView = [(SXVideoFillPlayerView *)self stillImageView];
  [(SXVideoFillPlayerView *)self bounds];
  [stillImageView setFrame:?];

  playerLayer = [(SXVideoFillPlayerView *)self playerLayer];
  [(SXVideoFillPlayerView *)self bounds];
  [playerLayer setFrame:?];
}

- (void)play
{
  player = [(SXVideoFillPlayerView *)self player];
  if ([player status] == 1)
  {
    playerLayer = [(SXVideoFillPlayerView *)self playerLayer];
    if ([playerLayer isReadyForDisplay])
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

      if (IsReduceMotionEnabled)
      {
        goto LABEL_7;
      }

      [(SXVideoFillPlayerView *)self switchToPlayer];
      player = [(SXVideoFillPlayerView *)self player];
      [player play];
    }

    else
    {
    }
  }

LABEL_7:

  [(SXVideoFillPlayerView *)self setHasRequestedPlayback:1];
}

- (void)pause
{
  player = [(SXVideoFillPlayerView *)self player];
  [player pause];

  [(SXVideoFillPlayerView *)self setHasRequestedPlayback:0];
}

- (void)setFillMode:(unint64_t)mode
{
  self->_fillMode = mode;
  playerLayer = [(SXVideoFillPlayerView *)self playerLayer];
  v6 = playerLayer;
  v5 = MEMORY[0x1E69874E0];
  if (mode != 2)
  {
    v5 = MEMORY[0x1E69874F0];
  }

  [playerLayer setVideoGravity:*v5];
}

- (void)reset
{
  player = [(SXVideoFillPlayerView *)self player];
  status = [player status];

  if (status == 1)
  {
    player2 = [(SXVideoFillPlayerView *)self player];
    [player2 seekToStartWithCompletionBlock:0];
  }
}

- (void)switchToPlayer
{
  stillImageView = [(SXVideoFillPlayerView *)self stillImageView];

  if (stillImageView)
  {
    layer = [(SXVideoFillPlayerView *)self layer];
    playerLayer = [(SXVideoFillPlayerView *)self playerLayer];
    [layer insertSublayer:playerLayer atIndex:0];

    stillImageView2 = [(SXVideoFillPlayerView *)self stillImageView];
    [stillImageView2 removeFromSuperview];

    [(SXVideoFillPlayerView *)self setStillImageView:0];
  }
}

- (void)playIfPossible
{
  if ([(SXVideoFillPlayerView *)self hasRequestedPlayback])
  {
    playerLayer = [(SXVideoFillPlayerView *)self playerLayer];
    if ([playerLayer isReadyForDisplay])
    {
      player = [(SXVideoFillPlayerView *)self player];
      status = [player status];

      if (status == 1)
      {

        [(SXVideoFillPlayerView *)self play];
      }
    }

    else
    {
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  playerLayer = [(SXVideoFillPlayerView *)self playerLayer];

  if (playerLayer == objectCopy && [pathCopy isEqualToString:@"readyForDisplay"])
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

    if (!IsReduceMotionEnabled)
    {
      [(SXVideoFillPlayerView *)self switchToPlayer];
      [(SXVideoFillPlayerView *)self playIfPossible];
    }
  }

  else
  {
  }
}

- (void)dealloc
{
  playerLayer = [(SXVideoFillPlayerView *)self playerLayer];

  if (playerLayer)
  {
    playerLayer2 = [(SXVideoFillPlayerView *)self playerLayer];
    [playerLayer2 removeObserver:self forKeyPath:@"readyForDisplay"];
  }

  v5.receiver = self;
  v5.super_class = SXVideoFillPlayerView;
  [(SXVideoFillPlayerView *)&v5 dealloc];
}

- (void)registerForHDRTraitChanges
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SXVideoFillPlayerView_registerForHDRTraitChanges__block_invoke;
  v5[3] = &unk_1E8500EF8;
  v5[4] = self;
  v4 = [(SXVideoFillPlayerView *)self registerForTraitChanges:v3 withHandler:v5];
}

void __51__SXVideoFillPlayerView_registerForHDRTraitChanges__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 _headroomUsage];

  v4 = [*(a1 + 32) playerLayer];
  v6 = v4;
  v5 = MEMORY[0x1E69792A0];
  if (v3 != 1)
  {
    v5 = MEMORY[0x1E6979298];
  }

  [v4 setPreferredDynamicRange:*v5];
}

@end