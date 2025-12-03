@interface SXVideoComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)canEnterFullscreen;
- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier;
- (BOOL)videoPlayerIsMoreThan50PercentVisible;
- (BOOL)videoPlayerViewControllerShouldStartPlayback:(id)playback;
- (CGRect)transitionContentFrame;
- (SXVideoComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor sceneStateMonitor:(id)stateMonitor resourceDataSource:(id)self0 reachabilityProvider:(id)self1 scrollObserverManager:(id)self2 videoPlayerViewControllerManager:(id)self3 bookmarkManager:(id)self4 prerollAdFactory:(id)self5;
- (id)videoAdForVideoPlayerViewController:(id)controller;
- (id)videoForVideoPlayerViewController:(id)controller;
- (void)discardContents;
- (void)enterFullscreen;
- (void)loadComponent:(id)component;
- (void)loadPosterFrameImage;
- (void)pauseMediaPlayback;
- (void)pauseMediaPlaybackForDisappearance;
- (void)pausePrerollIfNeeded;
- (void)playButtonTapped;
- (void)prepareForTransitionType:(unint64_t)type;
- (void)presentComponentWithChanges:(id)changes;
- (void)reachabilityChanged:(BOOL)changed;
- (void)registerAsMediaPlaybackDelegate;
- (void)registerForViewportDynamicBoundsChanges;
- (void)renderContents;
- (void)setupVideoPlayerViewController:(id)controller;
- (void)showPosterFrame;
- (void)unloadVideoPlayerIfShowingAd;
- (void)unregisterForViewportDynamicBoundsChanges;
- (void)videoPlayerViewController:(id)controller resumedPlaybackOfVideo:(id)video;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
- (void)viewport:(id)viewport dynamicBoundsDidChangeFromBounds:(CGRect)bounds;
- (void)viewport:(id)viewport interfaceOrientationChangedFromOrientation:(int64_t)orientation;
- (void)visibilityStateDidChangeFromState:(int64_t)state;
@end

@implementation SXVideoComponentView

- (SXVideoComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor sceneStateMonitor:(id)stateMonitor resourceDataSource:(id)self0 reachabilityProvider:(id)self1 scrollObserverManager:(id)self2 videoPlayerViewControllerManager:(id)self3 bookmarkManager:(id)self4 prerollAdFactory:(id)self5
{
  monitorCopy = monitor;
  stateMonitorCopy = stateMonitor;
  sourceCopy = source;
  reachabilityProviderCopy = reachabilityProvider;
  managerCopy = manager;
  controllerManagerCopy = controllerManager;
  bookmarkManagerCopy = bookmarkManager;
  adFactoryCopy = adFactory;
  v33.receiver = self;
  v33.super_class = SXVideoComponentView;
  v21 = [(SXMediaComponentView *)&v33 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory analyticsReporting:reporting appStateMonitor:monitorCopy];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_resourceDataSource, source);
    objc_storeStrong(&v22->_reachabilityProvider, reachabilityProvider);
    objc_storeStrong(&v22->_appStateMonitor, monitor);
    objc_storeStrong(&v22->_sceneStateMonitor, stateMonitor);
    objc_storeStrong(&v22->_scrollObserverManager, manager);
    objc_storeStrong(&v22->_videoPlayerViewControllerManager, controllerManager);
    objc_storeStrong(&v22->_bookmarkManager, bookmarkManager);
    objc_storeStrong(&v22->_prerollAdFactory, adFactory);
  }

  return v22;
}

- (void)loadComponent:(id)component
{
  componentCopy = component;
  v42.receiver = self;
  v42.super_class = SXVideoComponentView;
  [(SXComponentView *)&v42 loadComponent:componentCopy];
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  if (!videoPlayerViewController)
  {
    posterFrame = [(SXVideoComponentView *)self posterFrame];

    if (posterFrame)
    {
      goto LABEL_4;
    }

    dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
    component = [(SXComponentView *)self component];
    resourceIdentifier = [component resourceIdentifier];
    videoPlayerViewController = [dOMObjectProvider resourceForIdentifier:resourceIdentifier];

    objc_initWeak(&location, self);
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v40 = 0;
    videoPlayerViewControllerManager = [(SXVideoComponentView *)self videoPlayerViewControllerManager];
    v11 = [videoPlayerViewController URL];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __38__SXVideoComponentView_loadComponent___block_invoke;
    v33[3] = &unk_1E8500F88;
    objc_copyWeak(&v34, &location);
    v33[4] = self;
    v33[5] = &v35;
    v12 = [videoPlayerViewControllerManager videoPlayerViewControllerForURL:v11 receiveOwnershipBlock:v33];
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

    appStateMonitor = [(SXVideoComponentView *)self appStateMonitor];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __38__SXVideoComponentView_loadComponent___block_invoke_3;
    v28[3] = &unk_1E84FEC28;
    objc_copyWeak(&v29, &location);
    [appStateMonitor performOnApplicationDidEnterBackground:v28];

    reachabilityProvider = [(SXVideoComponentView *)self reachabilityProvider];
    [reachabilityProvider addReachabilityObserver:self];

    viewport = [(SXComponentView *)self viewport];
    [viewport addViewportChangeListener:self forOptions:8];

    [(SXMediaComponentView *)self setIsDisplayingMedia:1];
    v17 = [SXVideoComponentAnalyticsReporting alloc];
    component2 = [(SXComponentView *)self component];
    analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
    v20 = [(SXVideoComponentAnalyticsReporting *)v17 initWithComponent:component2 analyticsProviding:analyticsReporting];
    [(SXVideoComponentView *)self setVideoComponentAnalyticsReporter:v20];

    analyticsRouter = [v36[5] analyticsRouter];

    if (analyticsRouter)
    {
      analyticsRouter2 = [v36[5] analyticsRouter];
      [(SXVideoComponentView *)self setAnalyticsRouter:analyticsRouter2];

      analyticsRouter3 = [(SXVideoComponentView *)self analyticsRouter];
      videoComponentAnalyticsReporter = [(SXVideoComponentView *)self videoComponentAnalyticsReporter];
      [analyticsRouter3 setAnalyticsReporter:videoComponentAnalyticsReporter forPlaybackLocation:2];

      analyticsRouter4 = [(SXVideoComponentView *)self analyticsRouter];
      [analyticsRouter4 setCurrentPlaybackLocation:2];
    }

    else
    {
      v26 = [SXVideoAnalyticsRouter alloc];
      analyticsRouter4 = [(SXVideoComponentView *)self videoComponentAnalyticsReporter];
      v27 = [(SXVideoAnalyticsRouter *)v26 initWithInitiatedPlaybackLocation:2 analyticsReporter:analyticsRouter4];
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

- (void)presentComponentWithChanges:(id)changes
{
  v11.receiver = self;
  v11.super_class = SXVideoComponentView;
  [(SXComponentView *)&v11 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  posterFrame = [(SXVideoComponentView *)self posterFrame];
  contentView = [(SXComponentView *)self contentView];
  [contentView bounds];
  [posterFrame setFrame:?];

  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  view = [videoPlayerViewController view];
  contentView2 = [(SXComponentView *)self contentView];
  [contentView2 bounds];
  [view setFrame:?];

  presentationBlock = [(SXVideoComponentView *)self presentationBlock];

  if (presentationBlock)
  {
    presentationBlock2 = [(SXVideoComponentView *)self presentationBlock];
    presentationBlock2[2]();

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
  thumbnailRequestCancelHandler = [(SXVideoComponentView *)self thumbnailRequestCancelHandler];

  if (thumbnailRequestCancelHandler)
  {
    thumbnailRequestCancelHandler2 = [(SXVideoComponentView *)self thumbnailRequestCancelHandler];
    thumbnailRequestCancelHandler2[2]();

    [(SXVideoComponentView *)self setThumbnailRequestCancelHandler:0];
  }

  posterFrame = [(SXVideoComponentView *)self posterFrame];
  [posterFrame setImage:0];

  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  isPlaying = [videoPlayerViewController isPlaying];

  if ((isPlaying & 1) == 0)
  {
    videoPlayerViewController2 = [(SXVideoComponentView *)self videoPlayerViewController];
    [videoPlayerViewController2 willMoveToParentViewController:0];

    videoPlayerViewController3 = [(SXVideoComponentView *)self videoPlayerViewController];
    view = [videoPlayerViewController3 view];
    [view removeFromSuperview];

    videoPlayerViewController4 = [(SXVideoComponentView *)self videoPlayerViewController];
    [videoPlayerViewController4 removeFromParentViewController];

    [(SXVideoComponentView *)self setVideoPlayerViewController:0];
    [(SXVideoComponentView *)self showPosterFrame];
  }
}

- (void)showPosterFrame
{
  posterFrame = [(SXVideoComponentView *)self posterFrame];

  if (!posterFrame)
  {
    v4 = [SXPosterFrameView alloc];
    contentView = [(SXComponentView *)self contentView];
    [contentView bounds];
    v6 = [(SXPosterFrameView *)v4 initWithFrame:?];
    [(SXVideoComponentView *)self setPosterFrame:v6];

    posterFrame2 = [(SXVideoComponentView *)self posterFrame];
    playButton = [posterFrame2 playButton];
    [playButton addTarget:self action:sel_playButtonTapped forControlEvents:64];

    isNetworkReachable = [(SWReachabilityProvider *)self->_reachabilityProvider isNetworkReachable];
    posterFrame3 = [(SXVideoComponentView *)self posterFrame];
    playButton2 = [posterFrame3 playButton];
    [playButton2 setEnabled:isNetworkReachable];
  }

  contentView2 = [(SXComponentView *)self contentView];
  posterFrame4 = [(SXVideoComponentView *)self posterFrame];
  [contentView2 addSubview:posterFrame4];
}

- (void)loadPosterFrameImage
{
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  stillImageIdentifier = [component stillImageIdentifier];
  v6 = [dOMObjectProvider imageResourceForIdentifier:stillImageIdentifier];

  posterFrame = [(SXVideoComponentView *)self posterFrame];
  [posterFrame bounds];
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
  component2 = [(SXComponentView *)self component];
  stillImageIdentifier2 = [component2 stillImageIdentifier];
  v19 = [v6 URL];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __44__SXVideoComponentView_loadPosterFrameImage__block_invoke;
  v26 = &unk_1E84FEF88;
  objc_copyWeak(&v27, &location);
  v20 = [(SXImageRequest *)v16 initWithImageIdentifier:stillImageIdentifier2 imageQualities:4 url:v19 size:1 preserveColorspace:&v23 loadingBlock:v9, v11];

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
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  [videoPlayerViewController playWithButtonTapped:1];

  posterFrame = [(SXVideoComponentView *)self posterFrame];
  [posterFrame removeFromSuperview];
}

- (void)unloadVideoPlayerIfShowingAd
{
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  if (videoPlayerViewController)
  {
    v13 = videoPlayerViewController;
    v4 = [videoPlayerViewController mode] == 1;
    videoPlayerViewController = v13;
    if (v4)
    {
      presentedViewController = [v13 presentedViewController];

      videoPlayerViewController = v13;
      if (!presentedViewController)
      {
        [v13 willUnload];
        [v13 willMoveToParentViewController:0];
        view = [v13 view];
        [view removeFromSuperview];

        [v13 removeFromParentViewController];
        [(SXVideoComponentView *)self setVideoPlayerViewController:0];
        posterFrame = [(SXVideoComponentView *)self posterFrame];
        if (!posterFrame)
        {
          posterFrame = objc_alloc_init(SXPosterFrameView);
          [(SXVideoComponentView *)self setPosterFrame:posterFrame];
        }

        contentView = [(SXComponentView *)self contentView];
        [contentView addSubview:posterFrame];

        posterFrame2 = [(SXVideoComponentView *)self posterFrame];
        contentView2 = [(SXComponentView *)self contentView];
        [contentView2 bounds];
        [posterFrame2 setFrame:?];

        playButton = [(SXPosterFrameView *)posterFrame playButton];
        [playButton addTarget:self action:sel_playButtonTapped forControlEvents:64];

        image = [(SXPosterFrameView *)posterFrame image];

        if (!image)
        {
          [(SXVideoComponentView *)self loadPosterFrameImage];
        }

        videoPlayerViewController = v13;
      }
    }
  }
}

- (void)setupVideoPlayerViewController:(id)controller
{
  [(SXVideoComponentView *)self setVideoPlayerViewController:controller];
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  [videoPlayerViewController setDelegate:self];

  videoPlayerViewController2 = [(SXVideoComponentView *)self videoPlayerViewController];
  [videoPlayerViewController2 setDataSource:self];

  videoPlayerViewController3 = [(SXVideoComponentView *)self videoPlayerViewController];
  [videoPlayerViewController3 setFullscreenBehavior:0];

  [(SXVideoComponentView *)self registerAsMediaPlaybackDelegate];
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  presentingContentViewController = [presentationDelegate presentingContentViewController];

  videoPlayerViewController4 = [(SXVideoComponentView *)self videoPlayerViewController];
  [presentingContentViewController addChildViewController:videoPlayerViewController4];

  contentView = [(SXComponentView *)self contentView];
  videoPlayerViewController5 = [(SXVideoComponentView *)self videoPlayerViewController];
  view = [videoPlayerViewController5 view];
  [contentView addSubview:view];

  videoPlayerViewController6 = [(SXVideoComponentView *)self videoPlayerViewController];
  view2 = [videoPlayerViewController6 view];
  contentView2 = [(SXComponentView *)self contentView];
  [contentView2 bounds];
  [view2 setFrame:?];

  videoPlayerViewController7 = [(SXVideoComponentView *)self videoPlayerViewController];
  [videoPlayerViewController7 didMoveToParentViewController:presentingContentViewController];
}

- (id)videoForVideoPlayerViewController:(id)controller
{
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  resourceIdentifier = [component resourceIdentifier];
  v7 = [dOMObjectProvider resourceForIdentifier:resourceIdentifier];

  v8 = [SXVideoProvider alloc];
  v9 = [v7 URL];
  v10 = [(SXVideoProvider *)v8 initWithURL:v9];

  analyticsRouter = [(SXVideoComponentView *)self analyticsRouter];
  [(SXVideoProvider *)v10 setAnalyticsReporter:analyticsRouter];

  return v10;
}

- (id)videoAdForVideoPlayerViewController:(id)controller
{
  controllerCopy = controller;
  component = [(SXComponentView *)self component];
  allowsPrerollAds = [component allowsPrerollAds];

  if (allowsPrerollAds)
  {
    prerollAdFactory = [(SXVideoComponentView *)self prerollAdFactory];
    analyticsRouter = [(SXVideoComponentView *)self analyticsRouter];
    v9 = [prerollAdFactory createVideoAdProviderForComponentView:self videoPlayerViewController:controllerCopy analyticsReporter:analyticsRouter];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)videoPlayerViewController:(id)controller resumedPlaybackOfVideo:(id)video
{
  [(SXVideoComponentView *)self registerAsMediaPlaybackDelegate:controller];

  [(SXVideoComponentView *)self pausePrerollIfNeeded];
}

- (BOOL)videoPlayerViewControllerShouldStartPlayback:(id)playback
{
  v5 = ![v4 mode] && (-[SXComponentView visibilityState](self, "visibilityState") == 1 || (-[SXVideoComponentView videoPlayerViewController](self, "videoPlayerViewController"), v6 = v4 = playback;

  return v5;
}

- (void)registerAsMediaPlaybackDelegate
{
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  mediaPlaybackController = [presentationDelegate mediaPlaybackController];
  [(SXMediaPlaybackController *)mediaPlaybackController registerMediaPlayBack:?];
}

- (void)pauseMediaPlayback
{
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  [videoPlayerViewController pause];
}

- (void)pauseMediaPlaybackForDisappearance
{
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  isFullscreenInProgress = [videoPlayerViewController isFullscreenInProgress];

  if ((isFullscreenInProgress & 1) == 0)
  {
    videoPlayerViewController2 = [(SXVideoComponentView *)self videoPlayerViewController];
    [videoPlayerViewController2 pause];
  }
}

- (void)registerForViewportDynamicBoundsChanges
{
  if (![(SXVideoComponentView *)self isReceivingViewportDynamicBoundsChanges])
  {
    viewport = [(SXComponentView *)self viewport];
    [viewport addViewportChangeListener:self forOptions:2];
  }

  [(SXVideoComponentView *)self setIsReceivingViewportDynamicBoundsChanges:1];
}

- (void)unregisterForViewportDynamicBoundsChanges
{
  if ([(SXVideoComponentView *)self isReceivingViewportDynamicBoundsChanges])
  {
    viewport = [(SXComponentView *)self viewport];
    [viewport removeViewportChangeListener:self forOptions:2];
  }

  [(SXVideoComponentView *)self setIsReceivingViewportDynamicBoundsChanges:0];
}

- (void)viewport:(id)viewport dynamicBoundsDidChangeFromBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewportCopy = viewport;
  if ([-[SXVideoComponentView superclass](self "superclass")])
  {
    v11.receiver = self;
    v11.super_class = SXVideoComponentView;
    [(SXMediaComponentView *)&v11 viewport:viewportCopy dynamicBoundsDidChangeFromBounds:x, y, width, height];
  }

  if ([(SXVideoComponentView *)self videoPlayerIsMoreThan50PercentVisible]&& [(SXVideoComponentView *)self shouldAutoPlayWhenVisible])
  {
    [(SXVideoComponentView *)self setShouldAutoPlayWhenVisible:0];
    videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
    [videoPlayerViewController playWithButtonTapped:0];
  }

  [(SXVideoComponentView *)self pausePrerollIfNeeded];
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  if (![viewport appearState])
  {
    videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
    isFullscreenInProgress = [videoPlayerViewController isFullscreenInProgress];

    if ((isFullscreenInProgress & 1) == 0)
    {
      videoPlayerViewController2 = [(SXVideoComponentView *)self videoPlayerViewController];
      [videoPlayerViewController2 pause];

      [(SXVideoComponentView *)self unloadVideoPlayerIfShowingAd];
    }
  }
}

- (void)viewport:(id)viewport interfaceOrientationChangedFromOrientation:(int64_t)orientation
{
  viewportCopy = viewport;
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  fullscreenVideoPlaybackManager = [presentationDelegate fullscreenVideoPlaybackManager];

  interfaceOrientation = [viewportCopy interfaceOrientation];
  if ((interfaceOrientation - 3) > 1)
  {
    [(SXFullscreenVideoPlaybackManager *)fullscreenVideoPlaybackManager removeCandidate:?];
  }

  else
  {
    [(SXFullscreenVideoPlaybackManager *)fullscreenVideoPlaybackManager addCandidate:?];
  }
}

- (BOOL)videoPlayerIsMoreThan50PercentVisible
{
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  isFullscreenInProgress = [videoPlayerViewController isFullscreenInProgress];

  if (isFullscreenInProgress)
  {
    return 1;
  }

  if ([(SXComponentView *)self visibilityState]!= 1)
  {
    return 0;
  }

  viewport = [(SXComponentView *)self viewport];
  [viewport dynamicBounds];
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
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  if ([videoPlayerViewController mode] == 1)
  {
    videoPlayerIsMoreThan50PercentVisible = [(SXVideoComponentView *)self videoPlayerIsMoreThan50PercentVisible];

    if (videoPlayerIsMoreThan50PercentVisible)
    {
      return;
    }

    videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
    [videoPlayerViewController pause];
  }
}

- (void)visibilityStateDidChangeFromState:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = SXVideoComponentView;
  [(SXMediaComponentView *)&v7 visibilityStateDidChangeFromState:?];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    viewport = [(SXComponentView *)self viewport];
    [viewport addViewportChangeListener:self forOptions:64];
LABEL_6:

    return;
  }

  visibilityState = [(SXComponentView *)self visibilityState];
  if (state == 1 && visibilityState == 2)
  {
    viewport = [(SXComponentView *)self viewport];
    [viewport removeViewportChangeListener:self forOptions:64];
    goto LABEL_6;
  }
}

- (BOOL)canEnterFullscreen
{
  viewport = [(SXComponentView *)self viewport];
  [viewport dynamicBounds];
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
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  isPlaying = [videoPlayerViewController isPlaying];

  interfaceOrientation = [viewport interfaceOrientation];
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v23 = CGRectGetHeight(v35);
  [(SXComponentView *)self absoluteFrame];
  v24 = CGRectGetHeight(v36);
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    v28 = userInterfaceIdiom == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v24 * 0.1;

  if ((interfaceOrientation - 3) < 2)
  {
    v30 = isPlaying;
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
  videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
  [videoPlayerViewController enterFullscreenWithCompletionBlock:0];
}

- (CGRect)transitionContentFrame
{
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  stillImageIdentifier = [component stillImageIdentifier];
  v6 = [dOMObjectProvider imageResourceForIdentifier:stillImageIdentifier];

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

- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  component = [(SXComponentView *)self component];
  stillImageIdentifier = [component stillImageIdentifier];
  v7 = [identifierCopy isEqualToString:stillImageIdentifier];

  return v7;
}

- (void)prepareForTransitionType:(unint64_t)type
{
  if (type == 2)
  {
    videoPlayerViewController = [(SXVideoComponentView *)self videoPlayerViewController];
    [videoPlayerViewController willMoveToParentViewController:0];

    videoPlayerViewController2 = [(SXVideoComponentView *)self videoPlayerViewController];
    [videoPlayerViewController2 removeFromParentViewController];
  }
}

- (void)reachabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  if (changed && [(SXComponentView *)self hasRenderedContents])
  {
    posterFrame = [(SXVideoComponentView *)self posterFrame];
    image = [posterFrame image];
    if (image)
    {
    }

    else
    {
      thumbnailRequestCancelHandler = [(SXVideoComponentView *)self thumbnailRequestCancelHandler];

      if (!thumbnailRequestCancelHandler)
      {
        [(SXVideoComponentView *)self loadPosterFrameImage];
      }
    }
  }

  posterFrame2 = [(SXVideoComponentView *)self posterFrame];
  playButton = [posterFrame2 playButton];
  [playButton setEnabled:changedCopy];
}

- (BOOL)allowHierarchyRemoval
{
  selfCopy = self;
  v6.receiver = self;
  v6.super_class = SXVideoComponentView;
  allowHierarchyRemoval = [(SXComponentView *)&v6 allowHierarchyRemoval];
  videoPlayerViewController = [(SXVideoComponentView *)selfCopy videoPlayerViewController];
  LOBYTE(selfCopy) = videoPlayerViewController == 0;

  return selfCopy & allowHierarchyRemoval;
}

@end