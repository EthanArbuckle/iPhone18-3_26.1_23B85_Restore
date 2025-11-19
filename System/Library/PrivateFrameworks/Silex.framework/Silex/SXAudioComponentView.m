@interface SXAudioComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)shouldAutoStartPlayback;
- (SXAudioComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 resourceDataSource:(id)a9 host:(id)a10;
- (void)discardContents;
- (void)hidePlaybackControls;
- (void)layoutViews;
- (void)loadAudio;
- (void)loadImage;
- (void)pauseMediaPlayback;
- (void)pauseMediaPlaybackForDisappearance;
- (void)playButtonTapped:(id)a3;
- (void)playbackResumed;
- (void)playbackStarted;
- (void)playerViewController:(id)a3 metricsCollectionEventOccured:(int64_t)a4;
- (void)presentComponentWithChanges:(id)a3;
- (void)renderContents;
- (void)setupPlayerViewControllerWithPlayer:(id)a3;
- (void)showPlaybackControls;
- (void)submitMediaEngageCompleteEvent;
- (void)submitMediaEngageEventForUserAction:(unint64_t)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
@end

@implementation SXAudioComponentView

- (SXAudioComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 resourceDataSource:(id)a9 host:(id)a10
{
  v16 = a4;
  v28 = a9;
  v17 = a10;
  v29.receiver = self;
  v29.super_class = SXAudioComponentView;
  v18 = [(SXMediaComponentView *)&v29 initWithDOMObjectProvider:a3 viewport:v16 presentationDelegate:a5 componentStyleRendererFactory:a6 analyticsReporting:a7 appStateMonitor:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_host, a10);
    objc_storeStrong(&v19->_resourceDataSource, a9);
    v20 = [SXAudioComponentOverlayView alloc];
    v21 = [(SXComponentView *)v19 contentView];
    [v21 bounds];
    v22 = [(SXAudioComponentOverlayView *)v20 initWithFrame:?];
    overlayView = v19->_overlayView;
    v19->_overlayView = v22;

    [(SXAudioComponentOverlayView *)v19->_overlayView setAutoresizingMask:18];
    v24 = v19->_overlayView;
    v25 = [MEMORY[0x1E69DC888] blackColor];
    [(SXAudioComponentOverlayView *)v24 setBackgroundColor:v25];

    [(SXAudioComponentOverlayView *)v19->_overlayView setUserInteractionEnabled:1];
    v26 = [(SXAudioComponentOverlayView *)v19->_overlayView playButton];
    [v26 addTarget:v19 action:sel_playButtonTapped_ forControlEvents:64];

    [v16 addViewportChangeListener:v19 forOptions:8];
  }

  return v19;
}

- (void)presentComponentWithChanges:(id)a3
{
  var0 = a3.var0;
  v5.receiver = self;
  v5.super_class = SXAudioComponentView;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
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
  v3 = [(SXComponentView *)self component];
  v4 = [v3 stillImageIdentifier];

  if (v4)
  {
    v5 = [(SXComponentView *)self contentView];
    v6 = [(SXAudioComponentView *)self overlayView];
    [v5 addSubview:v6];

    [(SXAudioComponentView *)self loadImage];
  }

  else
  {
    v7 = [(SXAudioComponentView *)self player];

    if (!v7)
    {
      [(SXAudioComponentView *)self loadAudio];
      v8 = [(SXAudioComponentView *)self player];
      [(SXAudioComponentView *)self setupPlayerViewControllerWithPlayer:v8];
    }
  }

  [(SXAudioComponentView *)self layoutViews];
}

- (void)discardContents
{
  v15.receiver = self;
  v15.super_class = SXAudioComponentView;
  [(SXComponentView *)&v15 discardContents];
  v3 = [(SXAudioComponentView *)self player];
  v4 = [v3 playbackStatus];

  if (v4 != 2)
  {
    v5 = [(SXAudioComponentView *)self cancelHandler];

    if (v5)
    {
      v6 = [(SXAudioComponentView *)self cancelHandler];
      v6[2]();

      [(SXAudioComponentView *)self setCancelHandler:0];
    }

    v7 = [(SXAudioComponentView *)self overlayView];
    [v7 setImage:0];

    v8 = [(SXAudioComponentView *)self overlayView];
    [v8 removeFromSuperview];

    v9 = [(SXAudioComponentView *)self overlayView];
    v10 = [v9 playButton];
    [v10 setHidden:0];

    [(SXAudioComponentView *)self setPlayer:0];
    v11 = [(SXAudioComponentView *)self playerViewController];
    [v11 willMoveToParentViewController:0];

    v12 = [(SXAudioComponentView *)self playerViewController];
    v13 = [v12 view];
    [v13 removeFromSuperview];

    v14 = [(SXAudioComponentView *)self playerViewController];
    [v14 removeFromParentViewController];

    [(SXAudioComponentView *)self setPlayerViewController:0];
    [(SXAudioComponentView *)self setStartPlaybackWhenReady:0];
  }
}

- (void)layoutViews
{
  v3 = [(SXAudioComponentView *)self overlayView];
  v4 = [v3 superview];
  v5 = [(SXAudioComponentView *)self playerViewController];
  v6 = [v5 contentOverlayView];

  v7 = [(SXAudioComponentView *)self overlayView];
  v8 = v7;
  if (v4 == v6)
  {
    v10 = [(SXAudioComponentView *)self playerViewController];
    v11 = [v10 contentOverlayView];
    [v11 bounds];
    [v8 setFrame:?];
  }

  else
  {
    v9 = [v7 superview];

    if (!v9)
    {
      goto LABEL_6;
    }

    v8 = [(SXAudioComponentView *)self overlayView];
    [(SXComponentView *)self contentFrame];
    [v8 setFrame:?];
  }

LABEL_6:
  v12 = [(SXAudioComponentView *)self playerViewController];
  v13 = [v12 view];
  v14 = [v13 superview];

  if (v14)
  {
    v16 = [(SXAudioComponentView *)self playerViewController];
    v15 = [v16 view];
    [(SXComponentView *)self contentFrame];
    [v15 setFrame:?];
  }
}

- (void)playButtonTapped:(id)a3
{
  v4 = [(SXAudioComponentView *)self overlayView];
  [v4 startActivityIndicator];

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

- (void)setupPlayerViewControllerWithPlayer:(id)a3
{
  if (!self->_playerViewController)
  {
    v4 = a3;
    v5 = objc_alloc_init(SXAudioPlayerViewController);
    playerViewController = self->_playerViewController;
    self->_playerViewController = &v5->super;

    [(AVPlayerViewController *)self->_playerViewController setAllowsPictureInPicturePlayback:0];
    [(AVPlayerViewController *)self->_playerViewController setPlayer:v4];

    [(AVPlayerViewController *)self->_playerViewController setDelegate:self];
    v7 = [(SXComponentView *)self presentationDelegate];
    v19 = [v7 presentingContentViewController];

    [v19 addChildViewController:self->_playerViewController];
    v8 = [(AVPlayerViewController *)self->_playerViewController view];
    [(SXComponentView *)self contentFrame];
    [v8 setFrame:?];

    v9 = [(SXComponentView *)self contentView];
    v10 = [(AVPlayerViewController *)self->_playerViewController view];
    [v9 addSubview:v10];

    [(AVPlayerViewController *)self->_playerViewController didMoveToParentViewController:v19];
    v11 = [(SXAudioComponentView *)self playerViewController];
    v12 = [v11 view];
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [v12 setBackgroundColor:v13];

    v14 = [(SXAudioComponentView *)self playerViewController];
    LOBYTE(v12) = objc_opt_respondsToSelector();

    if (v12)
    {
      v15 = [(SXAudioComponentView *)self playerViewController];
      v16 = [v15 contentView];

      if (objc_opt_respondsToSelector())
      {
        v17 = [v16 audioOnlyIndicatorView];
        v18 = [MEMORY[0x1E69DC888] clearColor];
        [v17 setBackgroundColor:v18];
      }
    }
  }
}

- (void)loadImage
{
  v3 = [(SXComponentView *)self DOMObjectProvider];
  v4 = [(SXComponentView *)self component];
  v5 = [v4 stillImageIdentifier];
  v6 = [v3 imageResourceForIdentifier:v5];

  if ([(SXComponentView *)self visibilityState]== 1)
  {
    v7 = 6;
  }

  else
  {
    v7 = 4;
  }

  v8 = [v6 wideColorSpace];
  objc_initWeak(&location, self);
  v9 = [SXImageRequest alloc];
  v10 = [v6 imageIdentifier];
  v11 = [v6 URL];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __33__SXAudioComponentView_loadImage__block_invoke;
  v18 = &unk_1E84FEF88;
  objc_copyWeak(&v19, &location);
  v12 = [(SXImageRequest *)v9 initWithImageIdentifier:v10 imageQualities:v7 url:v11 size:v8 preserveColorspace:&v15 loadingBlock:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

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
  v3 = [(SXComponentView *)self DOMObjectProvider];
  v4 = [(SXComponentView *)self component];
  v5 = [v4 resourceIdentifier];
  v6 = [v3 resourceForIdentifier:v5];

  v7 = [(SXAudioComponentView *)self player];

  if (!v7)
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
    v14 = [(SXAudioComponentView *)self player];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __33__SXAudioComponentView_loadAudio__block_invoke;
    v15[3] = &unk_1E8500ED0;
    objc_copyWeak(&v16, &location);
    [v14 setPlaybackStatusBlock:v15];

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
  v3 = [(SXAudioComponentView *)self startPlaybackWhenReady];
  if (v3)
  {
    v4 = [(SXAudioComponentView *)self host];
    v5 = [v4 active];

    if (!v5 || [(SXAudioComponentView *)self audioHasPlayed])
    {
      goto LABEL_10;
    }

    v6 = [(SXAudioComponentView *)self player];
    if (![v6 playbackStatus])
    {
      goto LABEL_9;
    }

    v7 = [(SXAudioComponentView *)self player];
    if ([v7 playbackStatus] == 5)
    {
LABEL_8:

LABEL_9:
LABEL_10:
      LOBYTE(v3) = 0;
      return v3;
    }

    v8 = [(SXAudioComponentView *)self player];
    if ([v8 playbackStatus] == 2)
    {

      goto LABEL_8;
    }

    v9 = [(SXAudioComponentView *)self player];
    v10 = [v9 playbackStatus];

    if (v10 == 4)
    {
      goto LABEL_10;
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)playbackResumed
{
  v3 = [(SXComponentView *)self presentationDelegate];
  v4 = [v3 mediaPlaybackController];
  [(SXMediaPlaybackController *)v4 registerMediaPlayBack:?];

  [(SXAudioComponentView *)self submitMediaEngageEventForUserAction:3];
}

- (void)playbackStarted
{
  v3 = [(SXComponentView *)self presentationDelegate];
  v4 = [v3 mediaPlaybackController];
  [(SXMediaPlaybackController *)v4 registerMediaPlayBack:?];

  [(SXAudioComponentView *)self setAudioHasPlayed:1];

  [(SXAudioComponentView *)self submitMediaEngageEventForUserAction:1];
}

- (void)pauseMediaPlayback
{
  v2 = [(SXAudioComponentView *)self player];
  [v2 pause];
}

- (void)pauseMediaPlaybackForDisappearance
{
  v2 = [(SXAudioComponentView *)self player];
  [v2 pause];
}

- (void)showPlaybackControls
{
  v2 = [(SXAudioComponentView *)self playerViewController];
  [v2 setShowsPlaybackControls:1];
}

- (void)hidePlaybackControls
{
  v2 = [(SXAudioComponentView *)self playerViewController];
  [v2 setShowsPlaybackControls:0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v15 = [a3 anyObject];
  [(SXAudioComponentView *)self bounds];
  Width = CGRectGetWidth(v18);
  [(SXAudioComponentView *)self bounds];
  v6 = CGRectGetHeight(v19) + -50.0;
  v7 = [(SXAudioComponentView *)self overlayView];
  [v15 locationInView:v7];
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
    v12 = [(SXAudioComponentView *)self playerViewController];

    if (v12)
    {
      v13 = [(SXAudioComponentView *)self playerViewController];
      v14 = [v13 showsPlaybackControls];

      if (v14)
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

- (void)submitMediaEngageEventForUserAction:(unint64_t)a3
{
  v5 = [(SXAudioComponentView *)self player];
  v6 = v5;
  if (v5)
  {
    [v5 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v8 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
  [v8 setUserAction:a3];
  v9 = [(SXAudioComponentView *)self player];
  [v9 totalTimePlayed];
  v11 = v10;

  if (a3 != 4)
  {
    v12 = Seconds;
    v13 = [(SXAudioComponentView *)self player];
    [v13 duration];
    v15 = v14;

    v16 = [(SXAudioComponentView *)self player];
    [v16 frameRate];
    v18 = v17;

    [v8 setMediaDuration:v15];
    [v8 setMediaFrameRate:v18];
    if (a3 == 3)
    {
      [v8 setMediaResumePosition:v12];
      goto LABEL_9;
    }

    if (a3 == 2)
    {
      [v8 setMediaPausePosition:v12];
LABEL_9:
      [v8 setMediaTimePlayed:v11];
    }
  }

  [v8 determineEndDate];
  v19 = [(SXMediaComponentView *)self analyticsReporting];
  [v19 reportEvent:v8];
}

- (void)submitMediaEngageCompleteEvent
{
  v3 = [(SXAudioComponentView *)self player];
  [v3 duration];
  v5 = v4;

  v6 = [(SXAudioComponentView *)self player];
  [v6 frameRate];
  v8 = v7;

  v9 = [(SXAudioComponentView *)self player];
  [v9 totalTimePlayed];
  v11 = v10;

  v13 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
  [v13 setMediaDuration:v5];
  [v13 setMediaFrameRate:v8];
  [v13 setMediaTimePlayed:v11];
  [v13 determineEndDate];
  v12 = [(SXMediaComponentView *)self analyticsReporting];
  [v12 reportEvent:v13];
}

- (BOOL)allowHierarchyRemoval
{
  v8.receiver = self;
  v8.super_class = SXAudioComponentView;
  v3 = [(SXComponentView *)&v8 allowHierarchyRemoval];
  if (v3)
  {
    v4 = [(SXAudioComponentView *)self player];
    if ([v4 playbackStatus] == 2)
    {
    }

    else
    {
      v5 = [(SXAudioComponentView *)self player];
      v6 = [v5 playbackStatus];

      if (v6 != 1)
      {
        LOBYTE(v3) = 1;
        return v3;
      }
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)playerViewController:(id)a3 metricsCollectionEventOccured:(int64_t)a4
{
  if (!a4)
  {
    v7 = [MEMORY[0x1E69CE0F8] sharedSessionForMode:1];
    v6 = [(SXAudioComponentView *)self player];
    [v7 addInterestForPlayer:v6 withMode:1];
  }
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  v5 = [a3 appearState] != 0;
  v6 = [(SXAudioComponentView *)self playerViewController];
  [v6 setUpdatesNowPlayingInfoCenter:v5];
}

@end