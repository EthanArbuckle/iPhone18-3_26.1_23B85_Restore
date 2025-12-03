@interface SXEmbedVideoComponentView
+ (id)sharedConfiguration;
- (BOOL)allowHierarchyRemoval;
- (BOOL)shouldAllowRequestToURL:(id)l;
- (CGRect)transitionContentFrame;
- (SXEmbedVideoComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor sceneStateMonitor:(id)stateMonitor actionHandler:(id)self0 websiteDataStore:(id)self1 proxyAuthenticationHandler:(id)self2;
- (id)webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features;
- (void)_webViewWebProcessDidCrash:(id)crash;
- (void)discardContents;
- (void)handleError:(id)error;
- (void)initializeWebViewWithURL:(id)l;
- (void)layoutSubviews;
- (void)presentComponentWithChanges:(id)changes;
- (void)renderContents;
- (void)reportLoadEventWithError:(id)error;
- (void)updateWebViewToWidth:(double)width;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webViewEnteredFullscreen:(id)fullscreen;
- (void)webViewExitedFullscreen:(id)fullscreen;
@end

@implementation SXEmbedVideoComponentView

- (SXEmbedVideoComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor sceneStateMonitor:(id)stateMonitor actionHandler:(id)self0 websiteDataStore:(id)self1 proxyAuthenticationHandler:(id)self2
{
  providerCopy = provider;
  viewportCopy = viewport;
  delegateCopy = delegate;
  factoryCopy = factory;
  reportingCopy = reporting;
  monitorCopy = monitor;
  stateMonitorCopy = stateMonitor;
  handlerCopy = handler;
  storeCopy = store;
  authenticationHandlerCopy = authenticationHandler;
  v41.receiver = self;
  v41.super_class = SXEmbedVideoComponentView;
  v22 = [(SXMediaComponentView *)&v41 initWithDOMObjectProvider:providerCopy viewport:viewportCopy presentationDelegate:delegateCopy componentStyleRendererFactory:factoryCopy analyticsReporting:reportingCopy appStateMonitor:monitorCopy];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_actionHandler, handler);
    objc_storeStrong(&v23->_dataStore, store);
    objc_storeStrong(&v23->_proxyAuthenticationHandler, authenticationHandler);
    objc_storeStrong(&v23->_sceneStateMonitor, stateMonitor);
    v24 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = v23->_activityIndicator;
    v23->_activityIndicator = v24;

    contentView = [(SXComponentView *)v23 contentView];
    [contentView addSubview:v23->_activityIndicator];

    viewport = [(SXComponentView *)v23 viewport];
    [viewport addViewportChangeListener:v23 forOptions:8];

    v28 = objc_alloc_init(MEMORY[0x1E69CE150]);
    webCrashRetryThrottler = v23->_webCrashRetryThrottler;
    v23->_webCrashRetryThrottler = v28;

    objc_initWeak(&location, v23);
    sceneStateMonitor = v23->_sceneStateMonitor;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __226__SXEmbedVideoComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor_sceneStateMonitor_actionHandler_websiteDataStore_proxyAuthenticationHandler___block_invoke;
    v38[3] = &unk_1E84FEC28;
    objc_copyWeak(&v39, &location);
    [(SXSceneStateMonitor *)sceneStateMonitor performOnSceneDidDisconnect:v38];
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v23;
}

void __226__SXEmbedVideoComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor_sceneStateMonitor_actionHandler_websiteDataStore_proxyAuthenticationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained webView];
    [v2 pauseAllMediaPlaybackWithCompletionHandler:0];

    WeakRetained = v3;
  }
}

- (void)presentComponentWithChanges:(id)changes
{
  v5.receiver = self;
  v5.super_class = SXEmbedVideoComponentView;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  if ([(SXEmbedVideoComponentView *)self webViewIsLoaded])
  {
    webView = [(SXEmbedVideoComponentView *)self webView];
    [webView frame];
    [(SXEmbedVideoComponentView *)self updateWebViewToWidth:CGRectGetWidth(v6)];
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SXEmbedVideoComponentView;
  [(SXEmbedVideoComponentView *)&v7 layoutSubviews];
  activityIndicator = [(SXEmbedVideoComponentView *)self activityIndicator];
  contentView = [(SXComponentView *)self contentView];
  [contentView bounds];
  MidX = CGRectGetMidX(v8);
  contentView2 = [(SXComponentView *)self contentView];
  [contentView2 bounds];
  [activityIndicator setCenter:{MidX, CGRectGetMidY(v9)}];
}

- (void)renderContents
{
  v6.receiver = self;
  v6.super_class = SXEmbedVideoComponentView;
  [(SXComponentView *)&v6 renderContents];
  if (![(SXEmbedVideoComponentView *)self webViewIsLoaded])
  {
    activityIndicator = [(SXEmbedVideoComponentView *)self activityIndicator];
    [activityIndicator startAnimating];

    component = [(SXComponentView *)self component];
    v5 = [component URL];
    [(SXEmbedVideoComponentView *)self initializeWebViewWithURL:v5];
  }
}

- (void)discardContents
{
  v4.receiver = self;
  v4.super_class = SXEmbedVideoComponentView;
  [(SXComponentView *)&v4 discardContents];
  if (![(SXEmbedVideoComponentView *)self isPresentingFullscreen])
  {
    webView = [(SXEmbedVideoComponentView *)self webView];
    [webView removeFromSuperview];

    [(SXEmbedVideoComponentView *)self setWebView:0];
    [(SXEmbedVideoComponentView *)self setWebViewIsLoaded:0];
  }
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  if (![viewport appearState])
  {
    webView = [(SXEmbedVideoComponentView *)self webView];
    [webView pauseAllMediaPlaybackWithCompletionHandler:0];
  }
}

+ (id)sharedConfiguration
{
  if (sharedConfiguration_onceToken != -1)
  {
    +[SXEmbedVideoComponentView sharedConfiguration];
  }

  v3 = sharedConfiguration_configuration;

  return v3;
}

void __48__SXEmbedVideoComponentView_sharedConfiguration__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v1 = sharedConfiguration_configuration;
  sharedConfiguration_configuration = v0;

  [sharedConfiguration_configuration setAllowsInlineMediaPlayback:1];
  [sharedConfiguration_configuration setMediaTypesRequiringUserActionForPlayback:-1];
  [sharedConfiguration_configuration setAllowsAirPlayForMediaPlayback:0];
  [sharedConfiguration_configuration setAllowsPictureInPictureMediaPlayback:0];
  v2 = sharedConfiguration_configuration;
  v3 = objc_alloc_init(MEMORY[0x1E6985350]);
  [v2 setUserContentController:v3];

  v4 = sharedConfiguration_configuration;
  v5 = [MEMORY[0x1E6985340] embedProcessPool];
  [v4 setProcessPool:v5];

  [sharedConfiguration_configuration _setWaitsForPaintAfterViewDidMoveToWindow:0];
  v10 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:@"document.body.style.webkitUserSelect = 'none';" injectionTime:1 forMainFrameOnly:0];
  v6 = [sharedConfiguration_configuration userContentController];
  [v6 addUserScript:v10];

  v7 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v7 _setShouldAllowUserInstalledFonts:0];
  [v7 setTextInteractionEnabled:0];
  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    [v7 _setFullScreenEnabled:1];
  }

  [sharedConfiguration_configuration setPreferences:v7];
}

- (void)initializeWebViewWithURL:(id)l
{
  lCopy = l;
  webView = [(SXEmbedVideoComponentView *)self webView];

  if (!webView)
  {
    sharedConfiguration = [objc_opt_class() sharedConfiguration];
    dataStore = [(SXEmbedVideoComponentView *)self dataStore];
    [sharedConfiguration setWebsiteDataStore:dataStore];

    v8 = objc_alloc(MEMORY[0x1E69853A0]);
    contentView = [(SXComponentView *)self contentView];
    [contentView bounds];
    v10 = [v8 initWithFrame:sharedConfiguration configuration:?];
    webView = self->_webView;
    self->_webView = v10;

    webView2 = [(SXEmbedVideoComponentView *)self webView];
    scrollView = [webView2 scrollView];
    [scrollView setScrollsToTop:0];

    webView3 = [(SXEmbedVideoComponentView *)self webView];
    scrollView2 = [webView3 scrollView];
    [scrollView2 setContentInsetAdjustmentBehavior:2];

    webView4 = [(SXEmbedVideoComponentView *)self webView];
    scrollView3 = [webView4 scrollView];
    [scrollView3 setScrollEnabled:0];

    webView5 = [(SXEmbedVideoComponentView *)self webView];
    scrollView4 = [webView5 scrollView];
    [scrollView4 setBounces:0];

    webView6 = [(SXEmbedVideoComponentView *)self webView];
    [webView6 setAutoresizingMask:18];

    webView7 = [(SXEmbedVideoComponentView *)self webView];
    [webView7 setNavigationDelegate:self];

    webView8 = [(SXEmbedVideoComponentView *)self webView];
    [webView8 setUIDelegate:self];

    webView9 = [(SXEmbedVideoComponentView *)self webView];
    [webView9 _setFullscreenDelegate:self];

    webView10 = [(SXEmbedVideoComponentView *)self webView];
    [webView10 setHidden:1];

    webView11 = [(SXEmbedVideoComponentView *)self webView];
    [webView11 setAlpha:0.0];

    contentView2 = [(SXComponentView *)self contentView];
    webView12 = [(SXEmbedVideoComponentView *)self webView];
    [contentView2 addSubview:webView12];
  }

  v28 = [[SXWebContentLoadEvent alloc] initWithURL:lCopy];
  [(SXEmbedVideoComponentView *)self setLoadEvent:v28];

  v29 = MEMORY[0x1E696AEC0];
  scheme = [lCopy scheme];
  host = [lCopy host];
  v46 = [v29 stringWithFormat:@"%@://%@", scheme, host];

  v32 = [MEMORY[0x1E695DFF8] URLWithString:v46];
  v33 = [MEMORY[0x1E695AC18] requestWithURL:v32];
  [v33 setAttribution:1];
  v34 = MEMORY[0x1E696AEC0];
  [(SXComponentView *)self contentFrame];
  v36 = v35;
  [(SXComponentView *)self contentFrame];
  v38 = v37;
  [(SXComponentView *)self contentFrame];
  v40 = v39;
  absoluteString = [lCopy absoluteString];

  v42 = [v34 stringWithFormat:@"<style>* {padding: 0 margin: 0}</style></style><meta name='viewport' content='width=%f, user-scalable=no, initial-scale=1, max-scale=1'><iframe width='%f' height='%f' src='%@' frameborder='0' allowfullscreen></iframe>", v36, v38, v40, absoluteString];;

  webView13 = [(SXEmbedVideoComponentView *)self webView];
  v44 = [webView13 loadSimulatedRequest:v33 responseHTMLString:v42];

  [(SXEmbedVideoComponentView *)self setWebViewIsLoaded:1];
  [(SXMediaComponentView *)self setIsDisplayingMedia:1];
  webView14 = [(SXEmbedVideoComponentView *)self webView];
  [webView14 frame];
  [(SXEmbedVideoComponentView *)self updateWebViewToWidth:CGRectGetWidth(v48)];
}

- (void)updateWebViewToWidth:(double)width
{
  v4 = MEMORY[0x1E696AEC0];
  [(SXComponentView *)self contentFrame];
  v6 = v5;
  [(SXComponentView *)self contentFrame];
  v9 = [v4 stringWithFormat:@"var iframe = document.getElementsByTagName('iframe')[0] iframe.style.width = '%dpx'; iframe.style.height = '%dpx';", v6, v7];;
  webView = [(SXEmbedVideoComponentView *)self webView];
  [webView evaluateJavaScript:v9 completionHandler:0];
}

- (CGRect)transitionContentFrame
{
  webView = [(SXEmbedVideoComponentView *)self webView];
  [webView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  superview = [(SXEmbedVideoComponentView *)self superview];
  [(SXEmbedVideoComponentView *)self convertRect:superview toView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)handleError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(SXEmbedVideoComponentView *)self bounds];
  v5 = CGRectGetWidth(v14) + -20.0;
  [(SXEmbedVideoComponentView *)self bounds];
  v6 = [v4 initWithFrame:{10.0, 10.0, v5, CGRectGetHeight(v15) + -20.0}];
  [v6 setNumberOfLines:0];
  [v6 setTextAlignment:1];
  v7 = SXBundle();
  v8 = [v7 localizedStringForKey:@"Couldn’t Load Content" value:&stru_1F532F6C0 table:0];
  [v6 setText:v8];

  [(SXEmbedVideoComponentView *)self addSubview:v6];
  activityIndicator = [(SXEmbedVideoComponentView *)self activityIndicator];
  [activityIndicator stopAnimating];

  webView = [(SXEmbedVideoComponentView *)self webView];
  [webView removeFromSuperview];

  [(SXEmbedVideoComponentView *)self setWebView:0];
  if (errorCopy)
  {
    [(SXEmbedVideoComponentView *)self reportLoadEventWithError:errorCopy];
  }

  else
  {
    unknownError = [MEMORY[0x1E696ABC0] unknownError];
    [(SXEmbedVideoComponentView *)self reportLoadEventWithError:unknownError];
  }
}

- (id)webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features
{
  actionCopy = action;
  v8 = [SXLinkAction alloc];
  request = [actionCopy request];

  v10 = [request URL];
  v11 = [(SXLinkAction *)v8 initWithURL:v10];

  actionHandler = [(SXEmbedVideoComponentView *)self actionHandler];
  webView = [(SXEmbedVideoComponentView *)self webView];
  [webView frame];
  [actionHandler handleAction:v11 sourceView:self sourceRect:0 invocationType:?];

  return 0;
}

- (void)_webViewWebProcessDidCrash:(id)crash
{
  crashCopy = crash;
  webView = [(SXEmbedVideoComponentView *)self webView];

  if (webView == crashCopy)
  {
    webCrashRetryThrottler = [(SXEmbedVideoComponentView *)self webCrashRetryThrottler];
    shouldReloadAfterWebProcessCrash = [webCrashRetryThrottler shouldReloadAfterWebProcessCrash];

    if (shouldReloadAfterWebProcessCrash)
    {
      component = [(SXComponentView *)self component];
      v8 = [component URL];
      [(SXEmbedVideoComponentView *)self initializeWebViewWithURL:v8];
    }
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__SXEmbedVideoComponentView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v12[3] = &unk_1E8501F28;
  v9 = actionCopy;
  v13 = v9;
  selfCopy = self;
  v10 = handlerCopy;
  v15 = v10;
  v11 = MEMORY[0x1DA716BE0](v12);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v11[2](v11);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __85__SXEmbedVideoComponentView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) navigationType])
  {
LABEL_6:
    v9 = *(*(a1 + 48) + 16);

    v9();
    return;
  }

  v2 = [*(a1 + 32) request];
  v3 = [v2 URL];
  v4 = [v3 absoluteString];
  if ([v4 isEqualToString:@"about:blank"])
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = [*(a1 + 32) targetFrame];
  v6 = [v5 request];
  v7 = [v6 URL];
  v8 = [v7 absoluteString];
  if ([v8 isEqualToString:@"about:blank"])
  {

    goto LABEL_5;
  }

  v18 = *(a1 + 40);
  v10 = [*(a1 + 32) request];
  v11 = [v10 URL];
  LODWORD(v18) = [v18 shouldAllowRequestToURL:v11];

  if (!v18)
  {
    goto LABEL_6;
  }

  v12 = [SXLinkAction alloc];
  v13 = [*(a1 + 32) request];
  v14 = [v13 URL];
  v19 = [(SXLinkAction *)v12 initWithURL:v14];

  v15 = [*(a1 + 40) actionHandler];
  v16 = [*(a1 + 40) contentView];
  v17 = [*(a1 + 40) webView];
  [v17 frame];
  [v15 handleAction:v19 sourceView:v16 sourceRect:0 invocationType:?];

  (*(*(a1 + 48) + 16))();
}

- (BOOL)shouldAllowRequestToURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    scheme2 = [lCopy scheme];
    v5 = [scheme2 isEqualToString:@"https"];
  }

  absoluteString = [lCopy absoluteString];
  v8 = [absoluteString isEqualToString:@"about:blank"];

  return (v5 | v8) & 1;
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SXEmbedVideoComponentView_webView_didFinishNavigation___block_invoke;
  v5[3] = &unk_1E84FED18;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:{navigation, 0.15}];
  [(SXEmbedVideoComponentView *)self reportLoadEventWithError:0];
}

void __57__SXEmbedVideoComponentView_webView_didFinishNavigation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webView];
  [v2 setHidden:0];

  v3 = [*(a1 + 32) webView];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) activityIndicator];
  [v4 stopAnimating];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  if (error)
  {
    [(SXEmbedVideoComponentView *)self handleError:error, navigation];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  if (error)
  {
    [(SXEmbedVideoComponentView *)self handleError:error, navigation];
  }
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  proxyAuthenticationHandler = [(SXEmbedVideoComponentView *)self proxyAuthenticationHandler];
  [proxyAuthenticationHandler handleAuthenticationChallenge:challengeCopy completion:handlerCopy];
}

- (BOOL)allowHierarchyRemoval
{
  v5.receiver = self;
  v5.super_class = SXEmbedVideoComponentView;
  allowHierarchyRemoval = [(SXComponentView *)&v5 allowHierarchyRemoval];
  return ![(SXEmbedVideoComponentView *)self isPresentingFullscreen]& allowHierarchyRemoval;
}

- (void)webViewEnteredFullscreen:(id)fullscreen
{
  [(SXEmbedVideoComponentView *)self setIsPresentingFullscreen:1];
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate willReturnToFullscreenForComponent:self];
}

- (void)webViewExitedFullscreen:(id)fullscreen
{
  [(SXEmbedVideoComponentView *)self setIsPresentingFullscreen:0];
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate willDismissFullscreenCanvasForComponent:self];
}

- (void)reportLoadEventWithError:(id)error
{
  errorCopy = error;
  loadEvent = [(SXEmbedVideoComponentView *)self loadEvent];

  if (loadEvent)
  {
    loadEvent2 = [(SXEmbedVideoComponentView *)self loadEvent];
    [loadEvent2 setError:errorCopy];

    loadEvent3 = [(SXEmbedVideoComponentView *)self loadEvent];
    [loadEvent3 determineEndDate];

    analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
    loadEvent4 = [(SXEmbedVideoComponentView *)self loadEvent];
    [analyticsReporting reportEvent:loadEvent4];

    [(SXEmbedVideoComponentView *)self setLoadEvent:0];
  }
}

@end