@interface SXVideoComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)canEnterFullscreen;
- (BOOL)usesThumbnailWithImageIdentifier:(id)a3;
- (BOOL)videoPlayerIsMoreThan50PercentVisible;
- (BOOL)videoPlayerViewControllerShouldStartPlayback:(id)a3;
- (CGRect)transitionContentFrame;
- (SXVideoComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 sceneStateMonitor:(id)a9 resourceDataSource:(id)a10 reachabilityProvider:(id)a11 scrollObserverManager:(id)a12 videoPlayerViewControllerManager:(id)a13 bookmarkManager:(id)a14 prerollAdFactory:(id)a15;
- (id)videoAdForVideoPlayerViewController:(id)a3;
- (id)videoForVideoPlayerViewController:(id)a3;
- (void)discardContents;
- (void)enterFullscreen;
- (void)loadComponent:(id)a3;
- (void)loadPosterFrameImage;
- (void)pauseMediaPlayback;
- (void)pauseMediaPlaybackForDisappearance;
- (void)pausePrerollIfNeeded;
- (void)playButtonTapped;
- (void)prepareForTransitionType:(unint64_t)a3;
- (void)presentComponentWithChanges:(id)a3;
- (void)reachabilityChanged:(BOOL)a3;
- (void)registerAsMediaPlaybackDelegate;
- (void)registerForViewportDynamicBoundsChanges;
- (void)renderContents;
- (void)setupVideoPlayerViewController:(id)a3;
- (void)showPosterFrame;
- (void)unloadVideoPlayerIfShowingAd;
- (void)unregisterForViewportDynamicBoundsChanges;
- (void)videoPlayerViewController:(id)a3 resumedPlaybackOfVideo:(id)a4;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
- (void)viewport:(id)a3 dynamicBoundsDidChangeFromBounds:(CGRect)a4;
- (void)viewport:(id)a3 interfaceOrientationChangedFromOrientation:(int64_t)a4;
- (void)visibilityStateDidChangeFromState:(int64_t)a3;
@end

@implementation SXVideoComponentView

- (SXVideoComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 sceneStateMonitor:(id)a9 resourceDataSource:(id)a10 reachabilityProvider:(id)a11 scrollObserverManager:(id)a12 videoPlayerViewControllerManager:(id)a13 bookmarkManager:(id)a14 prerollAdFactory:(id)a15
{
  v17 = a8;
  v32 = a9;
  v31 = a10;
  v30 = a11;
  v29 = a12;
  v18 = a13;
  v19 = a14;
  v20 = a15;
  v33.receiver = self;
  v33.super_class = SXVideoComponentView;
  v21 = [(SXMediaComponentView *)&v33 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6 analyticsReporting:a7 appStateMonitor:v17];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_resourceDataSource, a10);
    objc_storeStrong(&v22->_reachabilityProvider, a11);
    objc_storeStrong(&v22->_appStateMonitor, a8);
    objc_storeStrong(&v22->_sceneStateMonitor, a9);
    objc_storeStrong(&v22->_scrollObserverManager, a12);
    objc_storeStrong(&v22->_videoPlayerViewControllerManager, a13);
    objc_storeStrong(&v22->_bookmarkManager, a14);
    objc_storeStrong(&v22->_prerollAdFactory, a15);
  }

  return v22;
}

- (void)loadComponent:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = SXVideoComponentView;
  [(SXComponentView *)&v42 loadComponent:v4];
  v5 = [(SXVideoComponentView *)self videoPlayerViewController];
  if (!v5)
  {
    v6 = [(SXVideoComponentView *)self posterFrame];

    if (v6)
    {
      goto LABEL_4;
    }

    v7 = [(SXComponentView *)self DOMObjectProvider];
    v8 = [(SXComponentView *)self component];
    v9 = [v8 resourceIdentifier];
    v5 = [v7 resourceForIdentifier:v9];

    objc_initWeak(&location, self);
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v40 = 0;
    v10 = [(SXVideoComponentView *)self videoPlayerViewControllerManager];
    v11 = [v5 URL];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __38__SXVideoComponentView_loadComponent___block_invoke;
    v33[3] = &unk_1E8500F88;
    objc_copyWeak(&v34, &location);
    v33[4] = self;
    v33[5] = &v35;
    v12 = [v10 videoPlayerViewControllerForURL:v11 receiveOwnershipBlock:v33];
    v13 = v36[5];
    v36[5] = v12;

    if ([v36[5] shouldAutoplay])
    {
      objc_initWeak(&from, self);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __38__SXVideoComponentView_loadComponent___block_invoke_2;
      v30[3] = &unk_1E84FEC28;
      objc_copyWeak(&v31, &from);
      [(SXVideoComponentView *)self setPresentationBlock:v30];
      objc_destroyWeak(&v31);
      objc_destroyWeak(&from);
    }

    v14 = [(SXVideoComponentView *)self appStateMonitor];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __38__SXVideoComponentView_loadComponent___block_invoke_3;
    v28[3] = &unk_1E84FEC28;
    objc_copyWeak(&v29, &location);
    [v14 performOnApplicationDidEnterBackground:v28];

    v15 = [(SXVideoComponentView *)self reachabilityProvider];
    [v15 addReachabilityObserver:self];

    v16 = [(SXComponentView *)self viewport];
    [v16 addViewportChangeListener:self forOptions:8];

    [(SXMediaComponentView *)self setIsDisplayingMedia:1];
    v17 = [SXVideoComponentAnalyticsReporting alloc];
    v18 = [(SXComponentView *)self component];
    v19 = [(SXMediaComponentView *)self analyticsReporting];
    v20 = [(SXVideoComponentAnalyticsReporting *)v17 initWithComponent:v18 analyticsProviding:v19];
    [(SXVideoComponentView *)self setVideoComponentAnalyticsReporter:v20];

    v21 = [v36[5] analyticsRouter];

    if (v21)
    {
      v22 = [v36[5] analyticsRouter];
      [(SXVideoComponentView *)self setAnalyticsRouter:v22];

      v23 = [(SXVideoComponentView *)self analyticsRouter];
      v24 = [(SXVideoComponentView *)self videoComponentAnalyticsReporter];
      [v23 setAnalyticsReporter:v24 forPlaybackLocation:2];

      v25 = [(SXVideoComponentView *)self analyticsRouter];
      [v25 setCurrentPlaybackLocation:2];
    }

    else
    {
      v26 = [SXVideoAnalyticsRouter alloc];
      v25 = [(SXVideoComponentView *)self videoComponentAnalyticsReporter];
      v27 = [(SXVideoAnalyticsRouter *)v26 initWithInitiatedPlaybackLocation:2 analyticsReporter:v25];
      [(SXVideoComponentView *)self setAnalyticsRouter:v27];
    }

    if (([v36[5] expectVideoPlayerViewController] & 1) == 0)
    {
      [(SXVideoComponentView *)self showPosterFrame];
    }

    objc_destroyWeak(&v29);
    _Block_object_dispose(&v35, 8);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

LABEL_4:
}

void __38__SXVideoComponentView_loadComponent___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v14)
  {
    [WeakRetained setupVideoPlayerViewController:v14];
  }

  if ([*(*(*(a1 + 40) + 8) + 40) shouldAutoplay])
  {
    if ([*(a1 + 32) videoPlayerIsMoreThan50PercentVisible])
    {
      [v14 playWithButtonTapped:0];
    }

    else
    {
      [*(a1 + 32) setShouldAutoPlayWhenVisible:1];
    }
  }

  v5 = [*(*(*(a1 + 40) + 8) + 40) visibilityMonitor];

  if (v5)
  {
    v6 = [SXComponentVisiblePercentageProvider alloc];
    v7 = [v4 viewport];
    v8 = [(SXComponentVisiblePercentageProvider *)v6 initWithViewport:v7];

    v9 = [SXVideoComponentVisibilityMonitor alloc];
    v10 = objc_loadWeakRetained((a1 + 48));
    v11 = [(SXVisibilityMonitor *)v9 initWithObject:v10 visiblePercentageProvider:v8];

    [(SXVisibilityMonitor *)v11 updateVisibility];
    v12 = [v4 scrollObserverManager];
    [v12 addScrollObserver:v11];

    v13 = [*(*(*(a1 + 40) + 8) + 40) visibilityMonitor];
    [v13 setVisibilityMonitor:v11];
  }
}

void __38__SXVideoComponentView_loadComponent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained transitionViewIsVisible] & 1) == 0)
  {
    v1 = [WeakRetained bookmarkManager];
    v2 = [SXComponentBookmark alloc];
    v3 = [WeakRetained component];
    v4 = [v3 identifier];
    v5 = [(SXComponentBookmark *)v2 initWithComponentIdentifier:v4];
    [v1 applyBookmark:v5];
  }
}

void __38__SXVideoComponentView_loadComponent___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained videoPlayerViewController];
  [v1 pause];

  [WeakRetained unloadVideoPlayerIfShowingAd];
}

- (void)presentComponentWithChanges:(id)a3
{
  v11.receiver = self;
  v11.super_class = SXVideoComponentView;
  [(SXComponentView *)&v11 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  v4 = [(SXVideoComponentView *)self posterFrame];
  v5 = [(SXComponentView *)self contentView];
  [v5 bounds];
  [v4 setFrame:?];

  v6 = [(SXVideoComponentView *)self videoPlayerViewController];
  v7 = [v6 view];
  v8 = [(SXComponentView *)self contentView];
  [v8 bounds];
  [v7 setFrame:?];

  v9 = [(SXVideoComponentView *)self presentationBlock];

  if (v9)
  {
    v10 = [(SXVideoComponentView *)self presentationBlock];
    v10[2]();

    [(SXVideoComponentView *)self setPresentationBlock:0];
  }
}

- (void)renderContents
{
  v3.receiver = self;
  v3.super_class = SXVideoComponentView;
  [(SXComponentView *)&v3 renderContents];
  [(SXVideoComponentView *)self loadPosterFrameImage];
}

- (void)discardContents
{
  v12.receiver = self;
  v12.super_class = SXVideoComponentView;
  [(SXComponentView *)&v12 discardContents];
  v3 = [(SXVideoComponentView *)self thumbnailRequestCancelHandler];

  if (v3)
  {
    v4 = [(SXVideoComponentView *)self thumbnailRequestCancelHandler];
    v4[2]();

    [(SXVideoComponentView *)self setThumbnailRequestCancelHandler:0];
  }

  v5 = [(SXVideoComponentView *)self posterFrame];
  [v5 setImage:0];

  v6 = [(SXVideoComponentView *)self videoPlayerViewController];
  v7 = [v6 isPlaying];

  if ((v7 & 1) == 0)
  {
    v8 = [(SXVideoComponentView *)self videoPlayerViewController];
    [v8 willMoveToParentViewController:0];

    v9 = [(SXVideoComponentView *)self videoPlayerViewController];
    v10 = [v9 view];
    [v10 removeFromSuperview];

    v11 = [(SXVideoComponentView *)self videoPlayerViewController];
    [v11 removeFromParentViewController];

    [(SXVideoComponentView *)self setVideoPlayerViewController:0];
    [(SXVideoComponentView *)self showPosterFrame];
  }
}

- (void)showPosterFrame
{
  v3 = [(SXVideoComponentView *)self posterFrame];

  if (!v3)
  {
    v4 = [SXPosterFrameView alloc];
    v5 = [(SXComponentView *)self contentView];
    [v5 bounds];
    v6 = [(SXPosterFrameView *)v4 initWithFrame:?];
    [(SXVideoComponentView *)self setPosterFrame:v6];

    v7 = [(SXVideoComponentView *)self posterFrame];
    v8 = [v7 playButton];
    [v8 addTarget:self action:sel_playButtonTapped forControlEvents:64];

    v9 = [(SWReachabilityProvider *)self->_reachabilityProvider isNetworkReachable];
    v10 = [(SXVideoComponentView *)self posterFrame];
    v11 = [v10 playButton];
    [v11 setEnabled:v9];
  }

  v13 = [(SXComponentView *)self contentView];
  v12 = [(SXVideoComponentView *)self posterFrame];
  [v13 addSubview:v12];
}

- (void)loadPosterFrameImage
{
  v3 = [(SXComponentView *)self DOMObjectProvider];
  v4 = [(SXComponentView *)self component];
  v5 = [v4 stillImageIdentifier];
  v6 = [v3 imageResourceForIdentifier:v5];

  v7 = [(SXVideoComponentView *)self posterFrame];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  [v6 dimensions];
  v14 = v9 / v12;
  v15 = v11 / v13;
  if (v11 / v13 >= v9 / v12)
  {
    if (v14 < v15)
    {
      v11 = v13 * v14;
    }
  }

  else
  {
    v9 = v12 * v15;
  }

  objc_initWeak(&location, self);
  v16 = [SXImageRequest alloc];
  v17 = [(SXComponentView *)self component];
  v18 = [v17 stillImageIdentifier];
  v19 = [v6 URL];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __44__SXVideoComponentView_loadPosterFrameImage__block_invoke;
  v26 = &unk_1E84FEF88;
  objc_copyWeak(&v27, &location);
  v20 = [(SXImageRequest *)v16 initWithImageIdentifier:v18 imageQualities:4 url:v19 size:1 preserveColorspace:&v23 loadingBlock:v9, v11];

  v21 = [(SXVideoComponentView *)self resourceDataSource:v23];
  v22 = [v21 loadImagesForImageRequest:v20 completionBlock:0];
  [(SXVideoComponentView *)self setThumbnailRequestCancelHandler:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __44__SXVideoComponentView_loadPosterFrameImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained visibilityState] == 1 && objc_msgSend(WeakRetained, "presentationState") == 2;
  v5 = [WeakRetained posterFrame];
  v6 = [v3 image];

  [v5 setImage:v6 animated:v4];
  [WeakRetained setThumbnailRequestCancelHandler:0];
}

- (void)playButtonTapped
{
  v5 = objc_alloc_init(MEMORY[0x1E69CE130]);
  [(SXVideoComponentView *)self setupVideoPlayerViewController:v5];
  v3 = [(SXVideoComponentView *)self videoPlayerViewController];
  [v3 playWithButtonTapped:1];

  v4 = [(SXVideoComponentView *)self posterFrame];
  [v4 removeFromSuperview];
}

- (void)unloadVideoPlayerIfShowingAd
{
  v3 = [(SXVideoComponentView *)self videoPlayerViewController];
  if (v3)
  {
    v13 = v3;
    v4 = [v3 mode] == 1;
    v3 = v13;
    if (v4)
    {
      v5 = [v13 presentedViewController];

      v3 = v13;
      if (!v5)
      {
        [v13 willUnload];
        [v13 willMoveToParentViewController:0];
        v6 = [v13 view];
        [v6 removeFromSuperview];

        [v13 removeFromParentViewController];
        [(SXVideoComponentView *)self setVideoPlayerViewController:0];
        v7 = [(SXVideoComponentView *)self posterFrame];
        if (!v7)
        {
          v7 = objc_alloc_init(SXPosterFrameView);
          [(SXVideoComponentView *)self setPosterFrame:v7];
        }

        v8 = [(SXComponentView *)self contentView];
        [v8 addSubview:v7];

        v9 = [(SXVideoComponentView *)self posterFrame];
        v10 = [(SXComponentView *)self contentView];
        [v10 bounds];
        [v9 setFrame:?];

        v11 = [(SXPosterFrameView *)v7 playButton];
        [v11 addTarget:self action:sel_playButtonTapped forControlEvents:64];

        v12 = [(SXPosterFrameView *)v7 image];

        if (!v12)
        {
          [(SXVideoComponentView *)self loadPosterFrameImage];
        }

        v3 = v13;
      }
    }
  }
}

- (void)setupVideoPlayerViewController:(id)a3
{
  [(SXVideoComponentView *)self setVideoPlayerViewController:a3];
  v4 = [(SXVideoComponentView *)self videoPlayerViewController];
  [v4 setDelegate:self];

  v5 = [(SXVideoComponentView *)self videoPlayerViewController];
  [v5 setDataSource:self];

  v6 = [(SXVideoComponentView *)self videoPlayerViewController];
  [v6 setFullscreenBehavior:0];

  [(SXVideoComponentView *)self registerAsMediaPlaybackDelegate];
  v7 = [(SXComponentView *)self presentationDelegate];
  v16 = [v7 presentingContentViewController];

  v8 = [(SXVideoComponentView *)self videoPlayerViewController];
  [v16 addChildViewController:v8];

  v9 = [(SXComponentView *)self contentView];
  v10 = [(SXVideoComponentView *)self videoPlayerViewController];
  v11 = [v10 view];
  [v9 addSubview:v11];

  v12 = [(SXVideoComponentView *)self videoPlayerViewController];
  v13 = [v12 view];
  v14 = [(SXComponentView *)self contentView];
  [v14 bounds];
  [v13 setFrame:?];

  v15 = [(SXVideoComponentView *)self videoPlayerViewController];
  [v15 didMoveToParentViewController:v16];
}

- (id)videoForVideoPlayerViewController:(id)a3
{
  v4 = [(SXComponentView *)self DOMObjectProvider];
  v5 = [(SXComponentView *)self component];
  v6 = [v5 resourceIdentifier];
  v7 = [v4 resourceForIdentifier:v6];

  v8 = [SXVideoProvider alloc];
  v9 = [v7 URL];
  v10 = [(SXVideoProvider *)v8 initWithURL:v9];

  v11 = [(SXVideoComponentView *)self analyticsRouter];
  [(SXVideoProvider *)v10 setAnalyticsReporter:v11];

  return v10;
}

- (id)videoAdForVideoPlayerViewController:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentView *)self component];
  v6 = [v5 allowsPrerollAds];

  if (v6)
  {
    v7 = [(SXVideoComponentView *)self prerollAdFactory];
    v8 = [(SXVideoComponentView *)self analyticsRouter];
    v9 = [v7 createVideoAdProviderForComponentView:self videoPlayerViewController:v4 analyticsReporter:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)videoPlayerViewController:(id)a3 resumedPlaybackOfVideo:(id)a4
{
  [(SXVideoComponentView *)self registerAsMediaPlaybackDelegate:a3];

  [(SXVideoComponentView *)self pausePrerollIfNeeded];
}

- (BOOL)videoPlayerViewControllerShouldStartPlayback:(id)a3
{
  v5 = ![v4 mode] && (-[SXComponentView visibilityState](self, "visibilityState") == 1 || (-[SXVideoComponentView videoPlayerViewController](self, "videoPlayerViewController"), v6 = v4 = a3;

  return v5;
}

- (void)registerAsMediaPlaybackDelegate
{
  v4 = [(SXComponentView *)self presentationDelegate];
  v3 = [v4 mediaPlaybackController];
  [(SXMediaPlaybackController *)v3 registerMediaPlayBack:?];
}

- (void)pauseMediaPlayback
{
  v2 = [(SXVideoComponentView *)self videoPlayerViewController];
  [v2 pause];
}

- (void)pauseMediaPlaybackForDisappearance
{
  v3 = [(SXVideoComponentView *)self videoPlayerViewController];
  v4 = [v3 isFullscreenInProgress];

  if ((v4 & 1) == 0)
  {
    v5 = [(SXVideoComponentView *)self videoPlayerViewController];
    [v5 pause];
  }
}

- (void)registerForViewportDynamicBoundsChanges
{
  if (![(SXVideoComponentView *)self isReceivingViewportDynamicBoundsChanges])
  {
    v3 = [(SXComponentView *)self viewport];
    [v3 addViewportChangeListener:self forOptions:2];
  }

  [(SXVideoComponentView *)self setIsReceivingViewportDynamicBoundsChanges:1];
}

- (void)unregisterForViewportDynamicBoundsChanges
{
  if ([(SXVideoComponentView *)self isReceivingViewportDynamicBoundsChanges])
  {
    v3 = [(SXComponentView *)self viewport];
    [v3 removeViewportChangeListener:self forOptions:2];
  }

  [(SXVideoComponentView *)self setIsReceivingViewportDynamicBoundsChanges:0];
}

- (void)viewport:(id)a3 dynamicBoundsDidChangeFromBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if ([-[SXVideoComponentView superclass](self "superclass")])
  {
    v11.receiver = self;
    v11.super_class = SXVideoComponentView;
    [(SXMediaComponentView *)&v11 viewport:v9 dynamicBoundsDidChangeFromBounds:x, y, width, height];
  }

  if ([(SXVideoComponentView *)self videoPlayerIsMoreThan50PercentVisible]&& [(SXVideoComponentView *)self shouldAutoPlayWhenVisible])
  {
    [(SXVideoComponentView *)self setShouldAutoPlayWhenVisible:0];
    v10 = [(SXVideoComponentView *)self videoPlayerViewController];
    [v10 playWithButtonTapped:0];
  }

  [(SXVideoComponentView *)self pausePrerollIfNeeded];
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  if (![a3 appearState])
  {
    v5 = [(SXVideoComponentView *)self videoPlayerViewController];
    v6 = [v5 isFullscreenInProgress];

    if ((v6 & 1) == 0)
    {
      v7 = [(SXVideoComponentView *)self videoPlayerViewController];
      [v7 pause];

      [(SXVideoComponentView *)self unloadVideoPlayerIfShowingAd];
    }
  }
}

- (void)viewport:(id)a3 interfaceOrientationChangedFromOrientation:(int64_t)a4
{
  v5 = a3;
  v6 = [(SXComponentView *)self presentationDelegate];
  v8 = [v6 fullscreenVideoPlaybackManager];

  v7 = [v5 interfaceOrientation];
  if ((v7 - 3) > 1)
  {
    [(SXFullscreenVideoPlaybackManager *)v8 removeCandidate:?];
  }

  else
  {
    [(SXFullscreenVideoPlaybackManager *)v8 addCandidate:?];
  }
}

- (BOOL)videoPlayerIsMoreThan50PercentVisible
{
  v3 = [(SXVideoComponentView *)self videoPlayerViewController];
  v4 = [v3 isFullscreenInProgress];

  if (v4)
  {
    return 1;
  }

  if ([(SXComponentView *)self visibilityState]!= 1)
  {
    return 0;
  }

  v6 = [(SXComponentView *)self viewport];
  [v6 dynamicBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SXComponentView *)self absoluteFrame];
  v24.origin.x = v15;
  v24.origin.y = v16;
  v24.size.width = v17;
  v24.size.height = v18;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v22 = CGRectIntersection(v21, v24);
  Height = CGRectGetHeight(v22);
  [(SXVideoComponentView *)self bounds];
  v5 = Height > CGRectGetHeight(v23) * 0.5;

  return v5;
}

- (void)pausePrerollIfNeeded
{
  v4 = [(SXVideoComponentView *)self videoPlayerViewController];
  if ([v4 mode] == 1)
  {
    v3 = [(SXVideoComponentView *)self videoPlayerIsMoreThan50PercentVisible];

    if (v3)
    {
      return;
    }

    v4 = [(SXVideoComponentView *)self videoPlayerViewController];
    [v4 pause];
  }
}

- (void)visibilityStateDidChangeFromState:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SXVideoComponentView;
  [(SXMediaComponentView *)&v7 visibilityStateDidChangeFromState:?];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    v5 = [(SXComponentView *)self viewport];
    [v5 addViewportChangeListener:self forOptions:64];
LABEL_6:

    return;
  }

  v6 = [(SXComponentView *)self visibilityState];
  if (a3 == 1 && v6 == 2)
  {
    v5 = [(SXComponentView *)self viewport];
    [v5 removeViewportChangeListener:self forOptions:64];
    goto LABEL_6;
  }
}

- (BOOL)canEnterFullscreen
{
  v3 = [(SXComponentView *)self viewport];
  [v3 dynamicBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SXComponentView *)self absoluteFrame];
  v37.origin.x = v12;
  v37.origin.y = v13;
  v37.size.width = v14;
  v37.size.height = v15;
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  v34 = CGRectIntersection(v33, v37);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v20 = [(SXVideoComponentView *)self videoPlayerViewController];
  v21 = [v20 isPlaying];

  v22 = [v3 interfaceOrientation];
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v23 = CGRectGetHeight(v35);
  [(SXComponentView *)self absoluteFrame];
  v24 = CGRectGetHeight(v36);
  v25 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v26 = [MEMORY[0x1E69DC938] currentDevice];
    v27 = [v26 userInterfaceIdiom];

    v28 = v27 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v24 * 0.1;

  if ((v22 - 3) < 2)
  {
    v30 = v21;
  }

  else
  {
    v30 = 0;
  }

  if (v23 > v29)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  return v31 & v28;
}

- (void)enterFullscreen
{
  v2 = [(SXVideoComponentView *)self videoPlayerViewController];
  [v2 enterFullscreenWithCompletionBlock:0];
}

- (CGRect)transitionContentFrame
{
  v3 = [(SXComponentView *)self DOMObjectProvider];
  v4 = [(SXComponentView *)self component];
  v5 = [v4 stillImageIdentifier];
  v6 = [v3 imageResourceForIdentifier:v5];

  [(SXComponentView *)self contentFrame];
  [v6 sizeThatFills:{v7, v8}];
  v10 = v9;
  v12 = v11;
  [(SXComponentView *)self contentFrame];
  v13 = 0.0;
  v14 = 0.0;
  if (v12 > v15)
  {
    [(SXComponentView *)self contentFrame];
    v14 = (v12 - v16) * -0.5;
  }

  [(SXComponentView *)self contentFrame];
  if (v10 > v17)
  {
    [(SXComponentView *)self contentFrame];
    v13 = (v10 - v18) * -0.5;
  }

  v19 = v13;
  v20 = v14;
  v21 = v10;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (BOOL)usesThumbnailWithImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentView *)self component];
  v6 = [v5 stillImageIdentifier];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (void)prepareForTransitionType:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = [(SXVideoComponentView *)self videoPlayerViewController];
    [v5 willMoveToParentViewController:0];

    v6 = [(SXVideoComponentView *)self videoPlayerViewController];
    [v6 removeFromParentViewController];
  }
}

- (void)reachabilityChanged:(BOOL)a3
{
  v3 = a3;
  if (a3 && [(SXComponentView *)self hasRenderedContents])
  {
    v5 = [(SXVideoComponentView *)self posterFrame];
    v6 = [v5 image];
    if (v6)
    {
    }

    else
    {
      v7 = [(SXVideoComponentView *)self thumbnailRequestCancelHandler];

      if (!v7)
      {
        [(SXVideoComponentView *)self loadPosterFrameImage];
      }
    }
  }

  v9 = [(SXVideoComponentView *)self posterFrame];
  v8 = [v9 playButton];
  [v8 setEnabled:v3];
}

- (BOOL)allowHierarchyRemoval
{
  v2 = self;
  v6.receiver = self;
  v6.super_class = SXVideoComponentView;
  v3 = [(SXComponentView *)&v6 allowHierarchyRemoval];
  v4 = [(SXVideoComponentView *)v2 videoPlayerViewController];
  LOBYTE(v2) = v4 == 0;

  return v2 & v3;
}

@end