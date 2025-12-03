@interface SXAudioComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)shouldAutoStartPlayback;
- (SXAudioComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor resourceDataSource:(id)source host:(id)self0;
- (void)discardContents;
- (void)hidePlaybackControls;
- (void)layoutViews;
- (void)loadAudio;
- (void)loadImage;
- (void)pauseMediaPlayback;
- (void)pauseMediaPlaybackForDisappearance;
- (void)playButtonTapped:(id)tapped;
- (void)playbackResumed;
- (void)playbackStarted;
- (void)playerViewController:(id)controller metricsCollectionEventOccured:(int64_t)occured;
- (void)presentComponentWithChanges:(id)changes;
- (void)renderContents;
- (void)setupPlayerViewControllerWithPlayer:(id)player;
- (void)showPlaybackControls;
- (void)submitMediaEngageCompleteEvent;
- (void)submitMediaEngageEventForUserAction:(unint64_t)action;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
@end

@implementation SXAudioComponentView

- (SXAudioComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor resourceDataSource:(id)source host:(id)self0
{
  viewportCopy = viewport;
  sourceCopy = source;
  hostCopy = host;
  v29.receiver = self;
  v29.super_class = SXAudioComponentView;
  v18 = [(SXMediaComponentView *)&v29 initWithDOMObjectProvider:provider viewport:viewportCopy presentationDelegate:delegate componentStyleRendererFactory:factory analyticsReporting:reporting appStateMonitor:monitor];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_host, host);
    objc_storeStrong(&v19->_resourceDataSource, source);
    v20 = [SXAudioComponentOverlayView alloc];
    contentView = [(SXComponentView *)v19 contentView];
    [contentView bounds];
    v22 = [(SXAudioComponentOverlayView *)v20 initWithFrame:?];
    overlayView = v19->_overlayView;
    v19->_overlayView = v22;

    [(SXAudioComponentOverlayView *)v19->_overlayView setAutoresizingMask:18];
    v24 = v19->_overlayView;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(SXAudioComponentOverlayView *)v24 setBackgroundColor:blackColor];

    [(SXAudioComponentOverlayView *)v19->_overlayView setUserInteractionEnabled:1];
    playButton = [(SXAudioComponentOverlayView *)v19->_overlayView playButton];
    [playButton addTarget:v19 action:sel_playButtonTapped_ forControlEvents:64];

    [viewportCopy addViewportChangeListener:v19 forOptions:8];
  }

  return v19;
}

- (void)presentComponentWithChanges:(id)changes
{
  var0 = changes.var0;
  v5.receiver = self;
  v5.super_class = SXAudioComponentView;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  if (var0)
  {
    [(SXAudioComponentView *)self layoutViews];
  }
}

- (void)renderContents
{
  v9.receiver = self;
  v9.super_class = SXAudioComponentView;
  [(SXComponentView *)&v9 renderContents];
  component = [(SXComponentView *)self component];
  stillImageIdentifier = [component stillImageIdentifier];

  if (stillImageIdentifier)
  {
    contentView = [(SXComponentView *)self contentView];
    overlayView = [(SXAudioComponentView *)self overlayView];
    [contentView addSubview:overlayView];

    [(SXAudioComponentView *)self loadImage];
  }

  else
  {
    player = [(SXAudioComponentView *)self player];

    if (!player)
    {
      [(SXAudioComponentView *)self loadAudio];
      player2 = [(SXAudioComponentView *)self player];
      [(SXAudioComponentView *)self setupPlayerViewControllerWithPlayer:player2];
    }
  }

  [(SXAudioComponentView *)self layoutViews];
}

- (void)discardContents
{
  v15.receiver = self;
  v15.super_class = SXAudioComponentView;
  [(SXComponentView *)&v15 discardContents];
  player = [(SXAudioComponentView *)self player];
  playbackStatus = [player playbackStatus];

  if (playbackStatus != 2)
  {
    cancelHandler = [(SXAudioComponentView *)self cancelHandler];

    if (cancelHandler)
    {
      cancelHandler2 = [(SXAudioComponentView *)self cancelHandler];
      cancelHandler2[2]();

      [(SXAudioComponentView *)self setCancelHandler:0];
    }

    overlayView = [(SXAudioComponentView *)self overlayView];
    [overlayView setImage:0];

    overlayView2 = [(SXAudioComponentView *)self overlayView];
    [overlayView2 removeFromSuperview];

    overlayView3 = [(SXAudioComponentView *)self overlayView];
    playButton = [overlayView3 playButton];
    [playButton setHidden:0];

    [(SXAudioComponentView *)self setPlayer:0];
    playerViewController = [(SXAudioComponentView *)self playerViewController];
    [playerViewController willMoveToParentViewController:0];

    playerViewController2 = [(SXAudioComponentView *)self playerViewController];
    view = [playerViewController2 view];
    [view removeFromSuperview];

    playerViewController3 = [(SXAudioComponentView *)self playerViewController];
    [playerViewController3 removeFromParentViewController];

    [(SXAudioComponentView *)self setPlayerViewController:0];
    [(SXAudioComponentView *)self setStartPlaybackWhenReady:0];
  }
}

- (void)layoutViews
{
  overlayView = [(SXAudioComponentView *)self overlayView];
  superview = [overlayView superview];
  playerViewController = [(SXAudioComponentView *)self playerViewController];
  contentOverlayView = [playerViewController contentOverlayView];

  overlayView2 = [(SXAudioComponentView *)self overlayView];
  overlayView3 = overlayView2;
  if (superview == contentOverlayView)
  {
    playerViewController2 = [(SXAudioComponentView *)self playerViewController];
    contentOverlayView2 = [playerViewController2 contentOverlayView];
    [contentOverlayView2 bounds];
    [overlayView3 setFrame:?];
  }

  else
  {
    superview2 = [overlayView2 superview];

    if (!superview2)
    {
      goto LABEL_6;
    }

    overlayView3 = [(SXAudioComponentView *)self overlayView];
    [(SXComponentView *)self contentFrame];
    [overlayView3 setFrame:?];
  }

LABEL_6:
  playerViewController3 = [(SXAudioComponentView *)self playerViewController];
  view = [playerViewController3 view];
  superview3 = [view superview];

  if (superview3)
  {
    playerViewController4 = [(SXAudioComponentView *)self playerViewController];
    view2 = [playerViewController4 view];
    [(SXComponentView *)self contentFrame];
    [view2 setFrame:?];
  }
}

- (void)playButtonTapped:(id)tapped
{
  overlayView = [(SXAudioComponentView *)self overlayView];
  [overlayView startActivityIndicator];

  [(SXAudioComponentView *)self setStartPlaybackWhenReady:1];
  [(SXAudioComponentView *)self submitMediaEngageEventForUserAction:4];
  v5 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SXAudioComponentView_playButtonTapped___block_invoke;
  block[3] = &unk_1E84FED18;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

void __41__SXAudioComponentView_playButtonTapped___block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadAudio];
  v2 = [MEMORY[0x1E69CE0F8] sharedSessionForMode:1];
  v3 = [*(a1 + 32) player];
  [v2 addInterestForPlayer:v3 withMode:1];

  v4 = *(a1 + 32);
  v5 = [v4 player];
  [v4 setupPlayerViewControllerWithPlayer:v5];

  v6 = [*(a1 + 32) playerViewController];
  v7 = [v6 contentOverlayView];
  v8 = [*(a1 + 32) overlayView];
  [v7 addSubview:v8];

  v11 = [*(a1 + 32) overlayView];
  v9 = [*(a1 + 32) playerViewController];
  v10 = [v9 contentOverlayView];
  [v10 bounds];
  [v11 setFrame:?];
}

- (void)setupPlayerViewControllerWithPlayer:(id)player
{
  if (!self->_playerViewController)
  {
    playerCopy = player;
    v5 = objc_alloc_init(SXAudioPlayerViewController);
    playerViewController = self->_playerViewController;
    self->_playerViewController = &v5->super;

    [(AVPlayerViewController *)self->_playerViewController setAllowsPictureInPicturePlayback:0];
    [(AVPlayerViewController *)self->_playerViewController setPlayer:playerCopy];

    [(AVPlayerViewController *)self->_playerViewController setDelegate:self];
    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    presentingContentViewController = [presentationDelegate presentingContentViewController];

    [presentingContentViewController addChildViewController:self->_playerViewController];
    view = [(AVPlayerViewController *)self->_playerViewController view];
    [(SXComponentView *)self contentFrame];
    [view setFrame:?];

    contentView = [(SXComponentView *)self contentView];
    view2 = [(AVPlayerViewController *)self->_playerViewController view];
    [contentView addSubview:view2];

    [(AVPlayerViewController *)self->_playerViewController didMoveToParentViewController:presentingContentViewController];
    playerViewController = [(SXAudioComponentView *)self playerViewController];
    view3 = [playerViewController view];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view3 setBackgroundColor:clearColor];

    playerViewController2 = [(SXAudioComponentView *)self playerViewController];
    LOBYTE(view3) = objc_opt_respondsToSelector();

    if (view3)
    {
      playerViewController3 = [(SXAudioComponentView *)self playerViewController];
      contentView2 = [playerViewController3 contentView];

      if (objc_opt_respondsToSelector())
      {
        audioOnlyIndicatorView = [contentView2 audioOnlyIndicatorView];
        clearColor2 = [MEMORY[0x1E69DC888] clearColor];
        [audioOnlyIndicatorView setBackgroundColor:clearColor2];
      }
    }
  }
}

- (void)loadImage
{
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  stillImageIdentifier = [component stillImageIdentifier];
  v6 = [dOMObjectProvider imageResourceForIdentifier:stillImageIdentifier];

  if ([(SXComponentView *)self visibilityState]== 1)
  {
    v7 = 6;
  }

  else
  {
    v7 = 4;
  }

  wideColorSpace = [v6 wideColorSpace];
  objc_initWeak(&location, self);
  v9 = [SXImageRequest alloc];
  imageIdentifier = [v6 imageIdentifier];
  v11 = [v6 URL];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __33__SXAudioComponentView_loadImage__block_invoke;
  v18 = &unk_1E84FEF88;
  objc_copyWeak(&v19, &location);
  v12 = [(SXImageRequest *)v9 initWithImageIdentifier:imageIdentifier imageQualities:v7 url:v11 size:wideColorSpace preserveColorspace:&v15 loadingBlock:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  v13 = [(SXAudioComponentView *)self resourceDataSource:v15];
  v14 = [v13 loadImagesForImageRequest:v12 completionBlock:0];
  [(SXAudioComponentView *)self setCancelHandler:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __33__SXAudioComponentView_loadImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained overlayView];
  v6 = [v5 image];

  if (!v6)
  {
    [WeakRetained setIsDisplayingMedia:1];
    v7 = MEMORY[0x1E69DD250];
    v8 = [WeakRetained overlayView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__SXAudioComponentView_loadImage__block_invoke_2;
    v9[3] = &unk_1E84FEC78;
    v9[4] = WeakRetained;
    v10 = v3;
    [v7 transitionWithView:v8 duration:5242880 options:v9 animations:0 completion:0.25];
  }
}

void __33__SXAudioComponentView_loadImage__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) overlayView];
  v2 = [*(a1 + 40) image];
  [v3 setImage:v2];
}

- (void)loadAudio
{
  v19[1] = *MEMORY[0x1E69E9840];
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  resourceIdentifier = [component resourceIdentifier];
  v6 = [dOMObjectProvider resourceForIdentifier:resourceIdentifier];

  player = [(SXAudioComponentView *)self player];

  if (!player)
  {
    v8 = objc_alloc(MEMORY[0x1E6988168]);
    v9 = [v6 URL];
    v18 = *MEMORY[0x1E6987BF0];
    v19[0] = &unk_1F538A268;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 initWithURL:v9 options:v10];

    v12 = [objc_alloc(MEMORY[0x1E69880B0]) initWithAsset:v11 automaticallyLoadedAssetKeys:&unk_1F538A628];
    v13 = [objc_alloc(MEMORY[0x1E69CE0E8]) initWithPlayerItem:v12 audioMode:3];
    [(SXAudioComponentView *)self setPlayer:v13];

    objc_initWeak(&location, self);
    player2 = [(SXAudioComponentView *)self player];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __33__SXAudioComponentView_loadAudio__block_invoke;
    v15[3] = &unk_1E8500ED0;
    objc_copyWeak(&v16, &location);
    [player2 setPlaybackStatusBlock:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __33__SXAudioComponentView_loadAudio__block_invoke(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [WeakRetained playbackPaused];
    }

    else if (a3 == 4)
    {
      [WeakRetained playbackFinished];
      [v10 seekToStartWithCompletionBlock:0];
    }
  }

  else if (a3 == 1)
  {
    [WeakRetained setIsDisplayingMedia:1];
    if ([v6 shouldAutoStartPlayback])
    {
      [v10 play];
    }
  }

  else if (a3 == 2)
  {
    v7 = [WeakRetained overlayView];
    [v7 stopActivityIndicator];

    v8 = [v6 overlayView];
    v9 = [v8 playButton];
    [v9 setHidden:1];

    [v6 setStartPlaybackWhenReady:0];
    if ([v10 playbackPosition])
    {
      [v6 playbackResumed];
    }

    else
    {
      [v6 playbackStarted];
    }
  }
}

- (BOOL)shouldAutoStartPlayback
{
  startPlaybackWhenReady = [(SXAudioComponentView *)self startPlaybackWhenReady];
  if (startPlaybackWhenReady)
  {
    host = [(SXAudioComponentView *)self host];
    active = [host active];

    if (!active || [(SXAudioComponentView *)self audioHasPlayed])
    {
      goto LABEL_10;
    }

    player = [(SXAudioComponentView *)self player];
    if (![player playbackStatus])
    {
      goto LABEL_9;
    }

    player2 = [(SXAudioComponentView *)self player];
    if ([player2 playbackStatus] == 5)
    {
LABEL_8:

LABEL_9:
LABEL_10:
      LOBYTE(startPlaybackWhenReady) = 0;
      return startPlaybackWhenReady;
    }

    player3 = [(SXAudioComponentView *)self player];
    if ([player3 playbackStatus] == 2)
    {

      goto LABEL_8;
    }

    player4 = [(SXAudioComponentView *)self player];
    playbackStatus = [player4 playbackStatus];

    if (playbackStatus == 4)
    {
      goto LABEL_10;
    }

    LOBYTE(startPlaybackWhenReady) = 1;
  }

  return startPlaybackWhenReady;
}

- (void)playbackResumed
{
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  mediaPlaybackController = [presentationDelegate mediaPlaybackController];
  [(SXMediaPlaybackController *)mediaPlaybackController registerMediaPlayBack:?];

  [(SXAudioComponentView *)self submitMediaEngageEventForUserAction:3];
}

- (void)playbackStarted
{
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  mediaPlaybackController = [presentationDelegate mediaPlaybackController];
  [(SXMediaPlaybackController *)mediaPlaybackController registerMediaPlayBack:?];

  [(SXAudioComponentView *)self setAudioHasPlayed:1];

  [(SXAudioComponentView *)self submitMediaEngageEventForUserAction:1];
}

- (void)pauseMediaPlayback
{
  player = [(SXAudioComponentView *)self player];
  [player pause];
}

- (void)pauseMediaPlaybackForDisappearance
{
  player = [(SXAudioComponentView *)self player];
  [player pause];
}

- (void)showPlaybackControls
{
  playerViewController = [(SXAudioComponentView *)self playerViewController];
  [playerViewController setShowsPlaybackControls:1];
}

- (void)hidePlaybackControls
{
  playerViewController = [(SXAudioComponentView *)self playerViewController];
  [playerViewController setShowsPlaybackControls:0];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  anyObject = [ended anyObject];
  [(SXAudioComponentView *)self bounds];
  Width = CGRectGetWidth(v18);
  [(SXAudioComponentView *)self bounds];
  v6 = CGRectGetHeight(v19) + -50.0;
  overlayView = [(SXAudioComponentView *)self overlayView];
  [anyObject locationInView:overlayView];
  v9 = v8;
  v11 = v10;

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = Width;
  v20.size.height = v6;
  v17.x = v9;
  v17.y = v11;
  if (CGRectContainsPoint(v20, v17))
  {
    playerViewController = [(SXAudioComponentView *)self playerViewController];

    if (playerViewController)
    {
      playerViewController2 = [(SXAudioComponentView *)self playerViewController];
      showsPlaybackControls = [playerViewController2 showsPlaybackControls];

      if (showsPlaybackControls)
      {
        [(SXAudioComponentView *)self hidePlaybackControls];
        [(SXAudioComponentView *)self performSelector:sel_showPlaybackControls withObject:0 afterDelay:3.0];
      }

      else
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_showPlaybackControls object:0];
        [(SXAudioComponentView *)self showPlaybackControls];
      }
    }
  }
}

- (void)submitMediaEngageEventForUserAction:(unint64_t)action
{
  player = [(SXAudioComponentView *)self player];
  v6 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v8 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
  [v8 setUserAction:action];
  player2 = [(SXAudioComponentView *)self player];
  [player2 totalTimePlayed];
  v11 = v10;

  if (action != 4)
  {
    v12 = Seconds;
    player3 = [(SXAudioComponentView *)self player];
    [player3 duration];
    v15 = v14;

    player4 = [(SXAudioComponentView *)self player];
    [player4 frameRate];
    v18 = v17;

    [v8 setMediaDuration:v15];
    [v8 setMediaFrameRate:v18];
    if (action == 3)
    {
      [v8 setMediaResumePosition:v12];
      goto LABEL_9;
    }

    if (action == 2)
    {
      [v8 setMediaPausePosition:v12];
LABEL_9:
      [v8 setMediaTimePlayed:v11];
    }
  }

  [v8 determineEndDate];
  analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
  [analyticsReporting reportEvent:v8];
}

- (void)submitMediaEngageCompleteEvent
{
  player = [(SXAudioComponentView *)self player];
  [player duration];
  v5 = v4;

  player2 = [(SXAudioComponentView *)self player];
  [player2 frameRate];
  v8 = v7;

  player3 = [(SXAudioComponentView *)self player];
  [player3 totalTimePlayed];
  v11 = v10;

  v13 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
  [v13 setMediaDuration:v5];
  [v13 setMediaFrameRate:v8];
  [v13 setMediaTimePlayed:v11];
  [v13 determineEndDate];
  analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
  [analyticsReporting reportEvent:v13];
}

- (BOOL)allowHierarchyRemoval
{
  v8.receiver = self;
  v8.super_class = SXAudioComponentView;
  allowHierarchyRemoval = [(SXComponentView *)&v8 allowHierarchyRemoval];
  if (allowHierarchyRemoval)
  {
    player = [(SXAudioComponentView *)self player];
    if ([player playbackStatus] == 2)
    {
    }

    else
    {
      player2 = [(SXAudioComponentView *)self player];
      playbackStatus = [player2 playbackStatus];

      if (playbackStatus != 1)
      {
        LOBYTE(allowHierarchyRemoval) = 1;
        return allowHierarchyRemoval;
      }
    }

    LOBYTE(allowHierarchyRemoval) = 0;
  }

  return allowHierarchyRemoval;
}

- (void)playerViewController:(id)controller metricsCollectionEventOccured:(int64_t)occured
{
  if (!occured)
  {
    v7 = [MEMORY[0x1E69CE0F8] sharedSessionForMode:1];
    player = [(SXAudioComponentView *)self player];
    [v7 addInterestForPlayer:player withMode:1];
  }
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  v5 = [viewport appearState] != 0;
  playerViewController = [(SXAudioComponentView *)self playerViewController];
  [playerViewController setUpdatesNowPlayingInfoCenter:v5];
}

@end