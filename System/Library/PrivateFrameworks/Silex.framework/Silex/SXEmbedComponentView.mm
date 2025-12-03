@interface SXEmbedComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)hasLoadedEmbedData;
- (BOOL)shouldAllowRequestToURL:(id)l;
- (BOOL)shouldLayoutWebView;
- (BOOL)shouldShowWebView;
- (CGSize)currentLayoutSize;
- (CGSize)currentViewportSize;
- (CGSize)currentlyLayoutingForSize;
- (SXEmbedComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory reachabilityProvider:(id)reachabilityProvider embedDataProvider:(id)dataProvider actionHandler:(id)handler layoutInvalidator:(id)self0 websiteDataStore:(id)self1 processPoolCache:(id)self2 proxyAuthenticationHandler:(id)self3 sceneStateMonitor:(id)self4 analyticsReporting:(id)self5;
- (SXEmbedResource)embedResource;
- (SXEmbedType)embedConfiguration;
- (double)initialScale;
- (id)enclosingHTML;
- (id)unableToLoadMessage;
- (id)webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features;
- (unint64_t)userActionMediaTypes;
- (void)_webViewDidEnterElementFullscreen:(id)fullscreen;
- (void)_webViewDidExitElementFullscreen:(id)fullscreen;
- (void)_webViewDidExitFullscreen:(id)fullscreen;
- (void)_webViewWebProcessDidCrash:(id)crash;
- (void)addScriptMessageHandlers;
- (void)dealloc;
- (void)discardContents;
- (void)displayEmbedIfNeeded;
- (void)finalizeLayoutForSize:(CGSize)size;
- (void)handleError:(id)error;
- (void)layoutWebViewForSize:(CGSize)size;
- (void)loadComponent:(id)component;
- (void)loadEmbedData;
- (void)loadEmbedIfNeeded;
- (void)loadWebView;
- (void)loadWebViewIfNeeded;
- (void)presentComponentWithChanges:(id)changes;
- (void)prewarmWebView;
- (void)reloadEmbed;
- (void)removeScriptMessageHandlers;
- (void)renderContents;
- (void)reportLoadEventWithError:(id)error;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)showActivityIndicator:(BOOL)indicator;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webViewEnteredFullscreen:(id)fullscreen;
- (void)webViewExitedFullscreen:(id)fullscreen;
- (void)willPresentComponentWithChanges:(id)changes;
@end

@implementation SXEmbedComponentView

- (SXEmbedComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory reachabilityProvider:(id)reachabilityProvider embedDataProvider:(id)dataProvider actionHandler:(id)handler layoutInvalidator:(id)self0 websiteDataStore:(id)self1 processPoolCache:(id)self2 proxyAuthenticationHandler:(id)self3 sceneStateMonitor:(id)self4 analyticsReporting:(id)self5
{
  providerCopy = provider;
  viewportCopy = viewport;
  delegateCopy = delegate;
  factoryCopy = factory;
  reachabilityProviderCopy = reachabilityProvider;
  dataProviderCopy = dataProvider;
  handlerCopy = handler;
  invalidatorCopy = invalidator;
  storeCopy = store;
  cacheCopy = cache;
  authenticationHandlerCopy = authenticationHandler;
  monitorCopy = monitor;
  reportingCopy = reporting;
  v49.receiver = self;
  v49.super_class = SXEmbedComponentView;
  v23 = [(SXComponentView *)&v49 initWithDOMObjectProvider:providerCopy viewport:viewportCopy presentationDelegate:delegateCopy componentStyleRendererFactory:factoryCopy];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_reachabilityProvider, reachabilityProvider);
    objc_storeStrong(&v24->_embedDataProvider, dataProvider);
    objc_storeStrong(&v24->_actionHandler, handler);
    objc_storeStrong(&v24->_layoutInvalidator, invalidator);
    v25 = [objc_alloc(MEMORY[0x1E69D6CE8]) initWithDelegate:v24 delegateProtocol:&unk_1F5404200];
    scriptMessageHandler = v24->_scriptMessageHandler;
    v24->_scriptMessageHandler = v25;

    objc_storeStrong(&v24->_dataStore, store);
    objc_storeStrong(&v24->_processPoolCache, cache);
    objc_storeStrong(&v24->_proxyAuthenticationHandler, authenticationHandler);
    objc_storeStrong(&v24->_sceneStateMonitor, monitor);
    objc_storeStrong(&v24->_analyticsReporting, reporting);
    viewport = [(SXComponentView *)v24 viewport];
    [viewport addViewportChangeListener:v24 forOptions:8];

    v28 = [MEMORY[0x1E695DFA8] set];
    expectedMessages = v24->_expectedMessages;
    v24->_expectedMessages = v28;

    v30 = objc_alloc_init(MEMORY[0x1E69CE150]);
    webCrashRetryThrottler = v24->_webCrashRetryThrottler;
    v24->_webCrashRetryThrottler = v30;

    contentView = [(SXComponentView *)v24 contentView];
    [contentView setClipsToBounds:1];

    objc_initWeak(&location, v24);
    sceneStateMonitor = v24->_sceneStateMonitor;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __279__SXEmbedComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_reachabilityProvider_embedDataProvider_actionHandler_layoutInvalidator_websiteDataStore_processPoolCache_proxyAuthenticationHandler_sceneStateMonitor_analyticsReporting___block_invoke;
    v46[3] = &unk_1E84FEC28;
    objc_copyWeak(&v47, &location);
    [(SXSceneStateMonitor *)sceneStateMonitor performOnSceneDidDisconnect:v46];
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v24;
}

void __279__SXEmbedComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_reachabilityProvider_embedDataProvider_actionHandler_layoutInvalidator_websiteDataStore_processPoolCache_proxyAuthenticationHandler_sceneStateMonitor_analyticsReporting___block_invoke(uint64_t a1)
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

- (void)dealloc
{
  [(SXEmbedComponentView *)self removeScriptMessageHandlers];
  v3.receiver = self;
  v3.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v3 dealloc];
}

- (void)loadComponent:(id)component
{
  v6.receiver = self;
  v6.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v6 loadComponent:component];
  viewport = [(SXComponentView *)self viewport];
  appearState = [viewport appearState];

  if (appearState == 2)
  {
    [(SXEmbedComponentView *)self prewarmWebView];
  }
}

- (void)renderContents
{
  v3.receiver = self;
  v3.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v3 renderContents];
  [(SXEmbedComponentView *)self loadEmbedIfNeeded];
}

- (void)discardContents
{
  v6.receiver = self;
  v6.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v6 discardContents];
  webView = [(SXEmbedComponentView *)self webView];
  webViewPresentingInFullscreen = [(SXEmbedComponentView *)self webViewPresentingInFullscreen];

  if (webView != webViewPresentingInFullscreen)
  {
    webView2 = [(SXEmbedComponentView *)self webView];
    [webView2 removeFromSuperview];
  }
}

- (void)willPresentComponentWithChanges:(id)changes
{
  v5.receiver = self;
  v5.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v5 willPresentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  if ([(SXEmbedComponentView *)self shouldLayoutWebView])
  {
    webView = [(SXEmbedComponentView *)self webView];
    [webView setAlpha:0.0];

    [(SXEmbedComponentView *)self discardContents];
  }
}

- (void)presentComponentWithChanges:(id)changes
{
  v4.receiver = self;
  v4.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v4 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  [(SXEmbedComponentView *)self loadEmbedIfNeeded];
}

- (void)loadEmbedIfNeeded
{
  if (![(SXEmbedComponentView *)self hasLoadedEmbedData])
  {
    [(SXEmbedComponentView *)self loadEmbedData];
  }

  [(SXEmbedComponentView *)self displayEmbedIfNeeded];
}

- (void)loadEmbedData
{
  selfCopy = self;
  component = [a2 component];
  identifier = [component identifier];
  OUTLINED_FUNCTION_0_4(&dword_1D825C000, v6, v7, "Failed to load embed user script, component-identifier=%{public}@", v8, v9, v10, v11, 2u);
}

- (void)displayEmbedIfNeeded
{
  v38 = *MEMORY[0x1E69E9840];
  [(SXEmbedComponentView *)self loadWebViewIfNeeded];
  if ([(SXEmbedComponentView *)self shouldLayoutWebView])
  {
    v3 = [SXWebContentLoadEvent alloc];
    embedResource = [(SXEmbedComponentView *)self embedResource];
    v5 = [embedResource URL];
    v6 = [(SXWebContentLoadEvent *)v3 initWithURL:v5];
    [(SXEmbedComponentView *)self setLoadEvent:v6];

    [(SXComponentView *)self contentFrame];
    v8 = v7;
    embedConfiguration = [(SXEmbedComponentView *)self embedConfiguration];
    [embedConfiguration maximumWidth];
    v11 = v10;

    if (v8 >= v11)
    {
      v8 = v11;
    }

    [(SXComponentView *)self contentFrame];
    Height = CGRectGetHeight(v40);
    v13 = SXEmbedLog;
    if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v39.width = v8;
      v39.height = Height;
      v15 = NSStringFromCGSize(v39);
      component = [(SXComponentView *)self component];
      identifier = [component identifier];
      *buf = 138543618;
      v35 = v15;
      v36 = 2114;
      v37 = identifier;
      _os_log_impl(&dword_1D825C000, v14, OS_LOG_TYPE_DEFAULT, "Starting layout for embed with size: %{public}@, component-identifier=%{public}@", buf, 0x16u);
    }

    [(SXEmbedComponentView *)self layoutWebViewForSize:v8, Height];
    [(SXEmbedComponentView *)self showActivityIndicator:1];
    [(SXEmbedComponentView *)self reloadEmbed];
  }

  else if ([(SXEmbedComponentView *)self shouldShowWebView])
  {
    v18 = SXEmbedLog;
    if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      component2 = [(SXComponentView *)self component];
      identifier2 = [component2 identifier];
      *buf = 138543362;
      v35 = identifier2;
      _os_log_impl(&dword_1D825C000, v19, OS_LOG_TYPE_DEFAULT, "Display embed, component-identifier=%{public}@", buf, 0xCu);
    }

    [(SXEmbedComponentView *)self showActivityIndicator:0];
    webView = [(SXEmbedComponentView *)self webView];
    [webView bounds];
    [(SXEmbedComponentView *)self layoutWebViewForSize:v23, v24];

    webView2 = [(SXEmbedComponentView *)self webView];
    [webView2 alpha];
    v27 = v26;

    if (v27 == 0.0)
    {
      if ([(SXComponentView *)self visibilityState]== 1)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __44__SXEmbedComponentView_displayEmbedIfNeeded__block_invoke;
        v33[3] = &unk_1E84FED18;
        v33[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v33 options:0 animations:0.2 completion:0.0];
      }

      else
      {
        webView3 = [(SXEmbedComponentView *)self webView];
        [webView3 setAlpha:1.0];
      }
    }

    else
    {
      webView4 = [(SXEmbedComponentView *)self webView];
      superview = [webView4 superview];

      if (!superview)
      {
        contentView = [(SXComponentView *)self contentView];
        webView5 = [(SXEmbedComponentView *)self webView];
        [contentView addSubview:webView5];
      }
    }
  }
}

void __44__SXEmbedComponentView_displayEmbedIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) webView];
  [v1 setAlpha:1.0];
}

- (void)prewarmWebView
{
  v10 = *MEMORY[0x1E69E9840];
  webView = [(SXEmbedComponentView *)self webView];
  if (webView)
  {
  }

  else if (![(SXEmbedComponentView *)self failedLoading])
  {
    v4 = SXEmbedLog;
    if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      component = [(SXComponentView *)self component];
      identifier = [component identifier];
      v8 = 138543362;
      v9 = identifier;
      _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Prewarming web view, component-identifier=%{public}@", &v8, 0xCu);
    }

    [(SXEmbedComponentView *)self loadWebView];
  }
}

- (void)loadWebViewIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  webView = [(SXEmbedComponentView *)self webView];
  v4 = webView;
  if (webView || (webView = [(SXComponentView *)self hasRenderedContents], v4 = 0, !webView))
  {

    MEMORY[0x1EEE66BB8](webView, v4);
  }

  else if (![(SXEmbedComponentView *)self failedLoading])
  {
    v5 = SXEmbedLog;
    if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      component = [(SXComponentView *)self component];
      identifier = [component identifier];
      *buf = 138543362;
      v10 = identifier;
      _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Setting up web view, component-identifier=%{public}@", buf, 0xCu);
    }

    [(SXEmbedComponentView *)self loadWebView];
  }
}

- (void)loadWebView
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    component = [(SXComponentView *)self component];
    identifier = [component identifier];
    v51 = 138543362;
    v52 = identifier;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Setting up web view, component-identifier=%{public}@", &v51, 0xCu);
  }

  errorLabel = [(SXEmbedComponentView *)self errorLabel];
  [errorLabel removeFromSuperview];

  v8 = objc_alloc_init(MEMORY[0x1E6985350]);
  v9 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:@"document.body.style.webkitUserSelect = 'none';" injectionTime:1 forMainFrameOnly:0];
  [v8 addUserScript:v9];
  v10 = objc_alloc_init(MEMORY[0x1E69853A8]);
  [v10 setMediaTypesRequiringUserActionForPlayback:{-[SXEmbedComponentView userActionMediaTypes](self, "userActionMediaTypes")}];
  [v10 setAllowsAirPlayForMediaPlayback:0];
  [v10 setAllowsPictureInPictureMediaPlayback:0];
  [v10 _setWaitsForPaintAfterViewDidMoveToWindow:0];
  dataStore = [(SXEmbedComponentView *)self dataStore];
  [v10 setWebsiteDataStore:dataStore];

  processPoolCache = [(SXEmbedComponentView *)self processPoolCache];
  embedConfiguration = [(SXEmbedComponentView *)self embedConfiguration];
  baseURL = [embedConfiguration baseURL];
  v15 = [processPoolCache processPoolForBaseURL:baseURL];

  [v10 setProcessPool:v15];
  v16 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v16 setJavaScriptCanOpenWindowsAutomatically:1];
  traitCollection = [(SXEmbedComponentView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [v16 _setFullScreenEnabled:1];
  }

  [v16 _setShouldAllowUserInstalledFonts:0];
  [v10 setPreferences:v16];
  [v10 setUserContentController:v8];
  [(SXComponentView *)self contentFrame];
  v20 = v19;
  embedConfiguration2 = [(SXEmbedComponentView *)self embedConfiguration];
  [embedConfiguration2 maximumWidth];
  v23 = v22;

  if (v20 >= v23)
  {
    v20 = v23;
  }

  contentView = [(SXComponentView *)self contentView];
  [contentView bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [objc_alloc(MEMORY[0x1E69853A0]) initWithFrame:v10 configuration:{v26, v28, v20, v30}];
  [(SXEmbedComponentView *)self setWebView:v31];

  webView = [(SXEmbedComponentView *)self webView];
  scrollView = [webView scrollView];
  [scrollView setScrollsToTop:0];

  webView2 = [(SXEmbedComponentView *)self webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 setContentInsetAdjustmentBehavior:2];

  webView3 = [(SXEmbedComponentView *)self webView];
  scrollView3 = [webView3 scrollView];
  [scrollView3 setScrollEnabled:0];

  webView4 = [(SXEmbedComponentView *)self webView];
  scrollView4 = [webView4 scrollView];
  [scrollView4 setDelegate:self];

  webView5 = [(SXEmbedComponentView *)self webView];
  [webView5 _setFullscreenDelegate:self];

  webView6 = [(SXEmbedComponentView *)self webView];
  scrollView5 = [webView6 scrollView];
  [scrollView5 setAlwaysBounceVertical:0];

  webView7 = [(SXEmbedComponentView *)self webView];
  scrollView6 = [webView7 scrollView];
  [scrollView6 setAlwaysBounceHorizontal:0];

  webView8 = [(SXEmbedComponentView *)self webView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [webView8 setBackgroundColor:clearColor];

  webView9 = [(SXEmbedComponentView *)self webView];
  [webView9 setOpaque:0];

  webView10 = [(SXEmbedComponentView *)self webView];
  [webView10 setNavigationDelegate:self];

  webView11 = [(SXEmbedComponentView *)self webView];
  [webView11 setUIDelegate:self];

  webView12 = [(SXEmbedComponentView *)self webView];
  [webView12 setAlpha:0.0];
}

- (void)reloadEmbed
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(SXEmbedComponentView *)self hasLoadedEmbedData])
  {
    webView = [(SXEmbedComponentView *)self webView];

    if (webView)
    {
      v4 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        component = [(SXComponentView *)self component];
        identifier = [component identifier];
        v37 = 138543362;
        v38 = identifier;
        _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Start loading embed, component-identifier=%{public}@", &v37, 0xCu);
      }

      webViewPresentingInFullscreen = [(SXEmbedComponentView *)self webViewPresentingInFullscreen];

      if (webViewPresentingInFullscreen)
      {
        v9 = SXEmbedLog;
        if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          component2 = [(SXComponentView *)self component];
          identifier2 = [component2 identifier];
          v37 = 138543362;
          v38 = identifier2;
          _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Web view in fullscreen, keeping it alive, component-identifier=%{public}@", &v37, 0xCu);
        }

        [(SXEmbedComponentView *)self removeScriptMessageHandlers];
        [(SXEmbedComponentView *)self setWebView:0];
        [(SXEmbedComponentView *)self loadWebViewIfNeeded];
      }

      [(SXComponentView *)self contentFrame];
      [(SXEmbedComponentView *)self setCurrentlyLayoutingForSize:v13, v14];
      [(SXEmbedComponentView *)self addScriptMessageHandlers];
      v15 = MEMORY[0x1E695AC18];
      v16 = [MEMORY[0x1E695DFF8] URLWithString:@"about:blank"];
      v17 = [v15 requestWithURL:v16];

      [v17 setAttribution:1];
      webView2 = [(SXEmbedComponentView *)self webView];
      v19 = [webView2 loadSimulatedRequest:v17 responseHTMLString:&stru_1F532F6C0];

      layoutInvalidator = [(SXEmbedComponentView *)self layoutInvalidator];
      component3 = [(SXComponentView *)self component];
      [layoutInvalidator mightInvalidateComponent:component3];

      webView3 = [(SXEmbedComponentView *)self webView];
      [webView3 setAlpha:0.0];

      embedConfiguration = [(SXEmbedComponentView *)self embedConfiguration];
      baseURL = [embedConfiguration baseURL];

      v25 = objc_alloc(MEMORY[0x1E6985358]);
      userScript = [(SXEmbedComponentView *)self userScript];
      v27 = [v25 initWithSource:userScript injectionTime:1 forMainFrameOnly:0];

      webView4 = [(SXEmbedComponentView *)self webView];
      configuration = [webView4 configuration];
      userContentController = [configuration userContentController];
      [userContentController addUserScript:v27];

      v31 = [MEMORY[0x1E695AC18] requestWithURL:baseURL];
      [v31 setAttribution:1];
      hTML = [(SXEmbedComponentView *)self HTML];
      enclosingHTML = [(SXEmbedComponentView *)self enclosingHTML];
      v34 = [(SXEmbedComponentView *)self HTMLByEnclosingHTML:hTML withHTML:enclosingHTML];

      webView5 = [(SXEmbedComponentView *)self webView];
      v36 = [webView5 loadSimulatedRequest:v31 responseHTMLString:v34];
      [(SXEmbedComponentView *)self setInitialNavigation:v36];
    }
  }
}

- (void)layoutWebViewForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  webView = [(SXEmbedComponentView *)self webView];
  [webView setBounds:{0.0, 0.0, width, height}];

  webView2 = [(SXEmbedComponentView *)self webView];
  contentView = [(SXComponentView *)self contentView];
  [contentView bounds];
  MidX = CGRectGetMidX(v12);
  contentView2 = [(SXComponentView *)self contentView];
  [contentView2 bounds];
  [webView2 setCenter:{MidX, CGRectGetMidY(v13)}];
}

- (void)finalizeLayoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v21 = *MEMORY[0x1E69E9840];
  v6 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v22.width = width;
    v22.height = height;
    v8 = NSStringFromCGSize(v22);
    component = [(SXComponentView *)self component];
    identifier = [component identifier];
    v17 = 138543618;
    v18 = v8;
    v19 = 2114;
    v20 = identifier;
    _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Finalizing layout with size: %{public}@, component-identifier=%{public}@", &v17, 0x16u);
  }

  layoutInvalidator = [(SXEmbedComponentView *)self layoutInvalidator];
  component2 = [(SXComponentView *)self component];
  [(SXEmbedComponentView *)self bounds];
  v13 = [layoutInvalidator invalidateComponent:component2 suggestedSize:{CGRectGetWidth(v23), height}];

  [(SXEmbedComponentView *)self setCurrentlyLayoutingForSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(SXEmbedComponentView *)self setCurrentLayoutSize:width, height];
  viewport = [(SXComponentView *)self viewport];
  [viewport bounds];
  [(SXEmbedComponentView *)self setCurrentViewportSize:v15, v16];

  [(SXEmbedComponentView *)self layoutWebViewForSize:width, height];
  [(SXEmbedComponentView *)self reportLoadEventWithError:0];
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  viewportCopy = viewport;
  if ([viewportCopy appearState])
  {
    if ([viewportCopy appearState] == 2)
    {
      [(SXEmbedComponentView *)self prewarmWebView];
    }
  }

  else
  {
    webView = [(SXEmbedComponentView *)self webView];
    [webView pauseAllMediaPlaybackWithCompletionHandler:0];
  }
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  *&v91[13] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  name = [messageCopy name];
  v7 = [name isEqualToString:@"ANFExpect"];

  if (v7)
  {
    body = [messageCopy body];

    if (body)
    {
      v9 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        body2 = [messageCopy body];
        component = [(SXComponentView *)self component];
        identifier = [component identifier];
        v88 = 138543618;
        v89 = body2;
        v90 = 2114;
        *v91 = identifier;
        _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Expect message received: %{public}@, component-identifier=%{public}@", &v88, 0x16u);
      }

      expectedMessages = [(SXEmbedComponentView *)self expectedMessages];
      body3 = [messageCopy body];
      [expectedMessages addObject:body3];
    }

    goto LABEL_53;
  }

  name2 = [messageCopy name];
  v17 = [name2 isEqualToString:@"ANFDone"];

  if (!v17)
  {
    name3 = [messageCopy name];
    v39 = [name3 isEqualToString:@"ANFUpdate"];

    if (v39)
    {
      v40 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        body4 = [messageCopy body];
        component2 = [(SXComponentView *)self component];
        identifier2 = [component2 identifier];
        v88 = 138543618;
        v89 = body4;
        v90 = 2114;
        *v91 = identifier2;
        _os_log_impl(&dword_1D825C000, v41, OS_LOG_TYPE_DEFAULT, "Update message received: %{public}@, component-identifier=%{public}@", &v88, 0x16u);
      }

      body5 = [messageCopy body];
      unknownError = [body5 objectForKey:@"height"];

      if (unknownError)
      {
        [unknownError floatValue];
        if (v47 != 0.0)
        {
          v48 = v47;
          [(SXComponentView *)self contentFrame];
          v50 = v49;
          embedConfiguration = [(SXEmbedComponentView *)self embedConfiguration];
          [embedConfiguration maximumWidth];
          v53 = v52;

          if (v50 >= v53)
          {
            v50 = v53;
          }

          [(SXEmbedComponentView *)self initialScale];
          v55 = ceil(v54 * v48);
          [(SXEmbedComponentView *)self currentLayoutSize];
          if (v50 != v57 || v55 != v56)
          {
            [(SXEmbedComponentView *)self finalizeLayoutForSize:v50, v55];
          }
        }
      }
    }

    else
    {
      name4 = [messageCopy name];
      v59 = [name4 isEqualToString:@"ANFFailed"];

      if (!v59)
      {
        goto LABEL_53;
      }

      v60 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
        body6 = [messageCopy body];
        component3 = [(SXComponentView *)self component];
        identifier3 = [component3 identifier];
        v88 = 138543618;
        v89 = body6;
        v90 = 2114;
        *v91 = identifier3;
        _os_log_impl(&dword_1D825C000, v61, OS_LOG_TYPE_DEFAULT, "Failed message received: %{public}@, component-identifier=%{public}@", &v88, 0x16u);
      }

      unknownError = [MEMORY[0x1E696ABC0] unknownError];
      [(SXEmbedComponentView *)self handleError:unknownError];
    }

    goto LABEL_53;
  }

  body7 = [messageCopy body];

  if (body7)
  {
    v19 = SXEmbedLog;
    if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      body8 = [messageCopy body];
      expectedMessages2 = [(SXEmbedComponentView *)self expectedMessages];
      body9 = [messageCopy body];
      v24 = [expectedMessages2 containsObject:body9];
      component4 = [(SXComponentView *)self component];
      identifier4 = [component4 identifier];
      v88 = 138543874;
      v89 = body8;
      v90 = 1024;
      *v91 = v24;
      v91[2] = 2114;
      *&v91[3] = identifier4;
      _os_log_impl(&dword_1D825C000, v20, OS_LOG_TYPE_DEFAULT, "Done message received: %{public}@, expected=%d, component-identifier=%{public}@", &v88, 0x1Cu);
    }

    body10 = [messageCopy body];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    body11 = [messageCopy body];
    v30 = body11;
    if (isKindOfClass)
    {
      expectedMessages7 = [body11 objectForKey:@"key"];

      if (expectedMessages7)
      {
        expectedMessages3 = [(SXEmbedComponentView *)self expectedMessages];
        v33 = [expectedMessages3 containsObject:expectedMessages7];

        if (v33)
        {
          body12 = [messageCopy body];
          body15 = [body12 objectForKey:@"height"];

          if (body15)
          {
            [body15 floatValue];
            v37 = v36;
          }

          else
          {
            v37 = 1.79769313e308;
          }

          expectedMessages4 = [(SXEmbedComponentView *)self expectedMessages];
          [expectedMessages4 removeObject:expectedMessages7];

LABEL_39:
          v33 = 1;
          goto LABEL_40;
        }
      }

      else
      {
        v33 = 0;
      }

      v37 = 1.79769313e308;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        expectedMessages5 = [(SXEmbedComponentView *)self expectedMessages];
        body13 = [messageCopy body];
        v67 = [expectedMessages5 containsObject:body13];

        if (!v67)
        {
          v33 = 1;
          v37 = 1.79769313e308;
LABEL_41:
          expectedMessages6 = [(SXEmbedComponentView *)self expectedMessages];
          v70 = [expectedMessages6 count];

          if (v33 && !v70)
          {
            v71 = SXEmbedLog;
            if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
            {
              v72 = v71;
              component5 = [(SXComponentView *)self component];
              identifier5 = [component5 identifier];
              v88 = 138543362;
              v89 = identifier5;
              _os_log_impl(&dword_1D825C000, v72, OS_LOG_TYPE_DEFAULT, "No more messages expected, finalizing layout, component-identifier=%{public}@", &v88, 0xCu);
            }

            if (v37 == 1.79769313e308)
            {
              webView = [(SXEmbedComponentView *)self webView];
              scrollView = [webView scrollView];
              [scrollView contentSize];
              v37 = v77;
            }

            body14 = [messageCopy body];
            v79 = [body14 objectForKey:@"width"];
            [v79 floatValue];
            v81 = v80;

            if (v81 == 0.0)
            {
              [(SXComponentView *)self contentFrame];
              v83 = v82;
              embedConfiguration2 = [(SXEmbedComponentView *)self embedConfiguration];
              [embedConfiguration2 maximumWidth];
              v86 = v85;

              if (v83 >= v86)
              {
                v83 = v86;
              }
            }

            else
            {
              v83 = v81;
            }

            [(SXEmbedComponentView *)self initialScale];
            [(SXEmbedComponentView *)self finalizeLayoutForSize:v83, ceil(v37 * v87)];
            [(SXEmbedComponentView *)self reportLoadEventWithError:0];
          }

          goto LABEL_53;
        }

        expectedMessages7 = [(SXEmbedComponentView *)self expectedMessages];
        body15 = [messageCopy body];
        [expectedMessages7 removeObject:body15];
        v37 = 1.79769313e308;
        goto LABEL_39;
      }

      v33 = 1;
      v37 = 1.79769313e308;
      expectedMessages7 = v30;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_53:
}

- (void)handleError:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    component = [(SXComponentView *)self component];
    identifier = [component identifier];
    v23 = 138543618;
    v24 = errorCopy;
    v25 = 2114;
    v26 = identifier;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Received error while attempting to load embed: %{public}@, component-identifier=%{public}@", &v23, 0x16u);
  }

  layoutInvalidator = [(SXEmbedComponentView *)self layoutInvalidator];
  component2 = [(SXComponentView *)self component];
  [layoutInvalidator cancelPendingInvalidationForComponent:component2];

  [(SXEmbedComponentView *)self setFailedLoading:1];
  [(SXEmbedComponentView *)self showActivityIndicator:0];
  v11 = objc_alloc(MEMORY[0x1E69DCC10]);
  contentView = [(SXComponentView *)self contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v28);
  contentView2 = [(SXComponentView *)self contentView];
  [contentView2 bounds];
  v15 = [v11 initWithFrame:{0.0, 0.0, Width, CGRectGetHeight(v29)}];
  [(SXEmbedComponentView *)self setErrorLabel:v15];

  errorLabel = [(SXEmbedComponentView *)self errorLabel];
  [errorLabel setNumberOfLines:0];

  errorLabel2 = [(SXEmbedComponentView *)self errorLabel];
  [errorLabel2 setTextAlignment:1];

  errorLabel3 = [(SXEmbedComponentView *)self errorLabel];
  unableToLoadMessage = [(SXEmbedComponentView *)self unableToLoadMessage];
  [errorLabel3 setText:unableToLoadMessage];

  contentView3 = [(SXComponentView *)self contentView];
  errorLabel4 = [(SXEmbedComponentView *)self errorLabel];
  [contentView3 addSubview:errorLabel4];

  [(SXEmbedComponentView *)self removeScriptMessageHandlers];
  webView = [(SXEmbedComponentView *)self webView];
  [webView removeFromSuperview];

  [(SXEmbedComponentView *)self setWebView:0];
  [(SXEmbedComponentView *)self reportLoadEventWithError:errorCopy];
}

- (id)unableToLoadMessage
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Couldn’t Load Content" value:&stru_1F532F6C0 table:0];

  return v3;
}

- (id)webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features
{
  v35 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  configurationCopy = configuration;
  actionCopy = action;
  featuresCopy = features;
  v14 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    request = [actionCopy request];
    v17 = [request URL];
    component = [(SXComponentView *)self component];
    identifier = [component identifier];
    v31 = 138543618;
    v32 = v17;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_DEFAULT, "Navigating to URL %{public}@ in reponse to new window for component-identifier=%{public}@", &v31, 0x16u);
  }

  request2 = [actionCopy request];
  v21 = [request2 URL];
  absoluteString = [v21 absoluteString];
  v23 = [absoluteString isEqualToString:@"about:blank"];

  if ((v23 & 1) == 0)
  {
    v24 = [SXLinkAction alloc];
    request3 = [actionCopy request];
    v26 = [request3 URL];
    v27 = [(SXLinkAction *)v24 initWithURL:v26];

    actionHandler = [(SXEmbedComponentView *)self actionHandler];
    webView = [(SXEmbedComponentView *)self webView];
    [webView frame];
    [actionHandler handleAction:v27 sourceView:self sourceRect:0 invocationType:?];
  }

  return 0;
}

- (void)_webViewDidExitFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  if (![(SXEmbedComponentView *)self usingElementFullscreen])
  {
    [(SXEmbedComponentView *)self webViewExitedFullscreen:fullscreenCopy];
  }
}

- (void)_webViewDidEnterElementFullscreen:(id)fullscreen
{
  [(SXEmbedComponentView *)self webViewEnteredFullscreen:fullscreen];

  [(SXEmbedComponentView *)self setUsingElementFullscreen:1];
}

- (void)_webViewDidExitElementFullscreen:(id)fullscreen
{
  [(SXEmbedComponentView *)self webViewExitedFullscreen:fullscreen];

  [(SXEmbedComponentView *)self setUsingElementFullscreen:0];
}

- (void)_webViewWebProcessDidCrash:(id)crash
{
  v18 = *MEMORY[0x1E69E9840];
  crashCopy = crash;
  v5 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    component = [(SXComponentView *)self component];
    identifier = [component identifier];
    v16 = 138543362;
    v17 = identifier;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Web view crashed, attempting reload, component-identifier=%{public}@", &v16, 0xCu);
  }

  webView = [(SXEmbedComponentView *)self webView];

  if (webView == crashCopy)
  {
    [(SXEmbedComponentView *)self showActivityIndicator:1];
    webCrashRetryThrottler = [(SXEmbedComponentView *)self webCrashRetryThrottler];
    shouldReloadAfterWebProcessCrash = [webCrashRetryThrottler shouldReloadAfterWebProcessCrash];

    if (shouldReloadAfterWebProcessCrash)
    {
      [(SXEmbedComponentView *)self removeScriptMessageHandlers];
      [(SXEmbedComponentView *)self reloadEmbed];
    }

    else
    {
      v12 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        component2 = [(SXComponentView *)self component];
        identifier2 = [component2 identifier];
        v16 = 138543362;
        v17 = identifier2;
        _os_log_impl(&dword_1D825C000, v13, OS_LOG_TYPE_DEFAULT, "Stopped reloading after crash, threshold reached, component-identifier=%{public}@", &v16, 0xCu);
      }
    }
  }
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  v10 = errorCopy;
  if (errorCopy && [errorCopy code] != -999 && objc_msgSend(v10, "code") != -1002)
  {
    [(SXEmbedComponentView *)self handleError:v10];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  v10 = errorCopy;
  if (errorCopy && [errorCopy code] != -999 && objc_msgSend(v10, "code") != -1002)
  {
    [(SXEmbedComponentView *)self handleError:v10];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  navigationCopy = navigation;
  initialNavigation = [(SXEmbedComponentView *)self initialNavigation];

  if (initialNavigation == navigationCopy)
  {
    contentView = [(SXComponentView *)self contentView];
    webView = [(SXEmbedComponentView *)self webView];
    [contentView addSubview:webView];

    [(SXEmbedComponentView *)self setInitialNavigation:0];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  viewCopy = view;
  actionCopy = action;
  handlerCopy = handler;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __80__SXEmbedComponentView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v18 = &unk_1E8501268;
  v11 = actionCopy;
  v19 = v11;
  selfCopy = self;
  v12 = viewCopy;
  v21 = v12;
  v13 = handlerCopy;
  v22 = v13;
  v14 = MEMORY[0x1DA716BE0](&v15);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v14[2](v14);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }
}

void __80__SXEmbedComponentView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) targetFrame];
  if (![v2 isMainFrame])
  {
    goto LABEL_6;
  }

  v3 = [*(a1 + 32) request];
  v4 = [v3 URL];
  v5 = [v4 absoluteString];
  if ([v5 isEqualToString:@"about:blank"])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v10 = *(*(a1 + 56) + 16);

    v10();
    return;
  }

  v6 = [*(a1 + 32) targetFrame];
  v7 = [v6 request];
  v8 = [v7 URL];
  v9 = [v8 absoluteString];
  if ([v9 isEqualToString:@"about:blank"])
  {

    goto LABEL_5;
  }

  v35 = [*(a1 + 32) targetFrame];
  v34 = [v35 request];
  v11 = [v34 URL];
  if (v11)
  {
    v33 = v11;
    v12 = *(a1 + 40);
    v32 = [*(a1 + 32) request];
    v31 = [v32 URL];
    if ([v12 shouldAllowRequestToURL:?])
    {
      v13 = [*(a1 + 48) superview];
      if (v13)
      {
        v14 = v13;
        [*(a1 + 48) alpha];
        v13 = v14;
        v16 = v15 > 0.0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v11 = v33;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = v17;
    v20 = [v18 request];
    v21 = [v20 URL];
    v22 = [*(a1 + 40) component];
    v23 = [v22 identifier];
    *buf = 138543618;
    v37 = v21;
    v38 = 2114;
    v39 = v23;
    _os_log_impl(&dword_1D825C000, v19, OS_LOG_TYPE_DEFAULT, "Navigating to URL %{public}@ in response to navigation action for component-identifier=%{public}@", buf, 0x16u);
  }

  v24 = [SXLinkAction alloc];
  v25 = [*(a1 + 32) request];
  v26 = [v25 URL];
  v27 = [(SXLinkAction *)v24 initWithURL:v26];

  v28 = [*(a1 + 40) actionHandler];
  v29 = [*(a1 + 40) contentView];
  v30 = [*(a1 + 40) webView];
  [v30 frame];
  [v28 handleAction:v27 sourceView:v29 sourceRect:0 invocationType:?];

  (*(*(a1 + 56) + 16))();
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  proxyAuthenticationHandler = [(SXEmbedComponentView *)self proxyAuthenticationHandler];
  [proxyAuthenticationHandler handleAuthenticationChallenge:challengeCopy completion:handlerCopy];
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

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  pinchGestureRecognizer = [zooming pinchGestureRecognizer];
  [pinchGestureRecognizer setEnabled:0];
}

- (id)enclosingHTML
{
  embedConfiguration = [(SXEmbedComponentView *)self embedConfiguration];
  enclosingHTML = [embedConfiguration enclosingHTML];

  if ([enclosingHTML containsString:@"{initial_scale}"])
  {
    [(SXEmbedComponentView *)self initialScale];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", v5];
    v7 = [enclosingHTML stringByReplacingOccurrencesOfString:@"{initial_scale}" withString:v6];

    enclosingHTML = v7;
  }

  return enclosingHTML;
}

- (double)initialScale
{
  [(SXComponentView *)self contentFrame];
  Width = CGRectGetWidth(v9);
  embedConfiguration = [(SXEmbedComponentView *)self embedConfiguration];
  [embedConfiguration minimumWidth];
  v6 = v5;

  if (v6 >= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  return fmin(Width / v7, 1.0);
}

- (SXEmbedType)embedConfiguration
{
  embedConfiguration = self->_embedConfiguration;
  if (!embedConfiguration)
  {
    embedDataProvider = [(SXEmbedComponentView *)self embedDataProvider];
    component = [(SXComponentView *)self component];
    embedType = [component embedType];
    v7 = [embedDataProvider embedForType:embedType];
    v8 = self->_embedConfiguration;
    self->_embedConfiguration = v7;

    embedConfiguration = self->_embedConfiguration;
  }

  return embedConfiguration;
}

- (BOOL)shouldLayoutWebView
{
  [(SXEmbedComponentView *)self currentLayoutSize];
  v4 = v3;
  [(SXComponentView *)self contentFrame];
  if (v4 == v5)
  {
    return 0;
  }

  webView = [(SXEmbedComponentView *)self webView];
  if (webView)
  {
    hTML = [(SXEmbedComponentView *)self HTML];
    if (hTML && [(SXComponentView *)self hasRenderedContents])
    {
      [(SXEmbedComponentView *)self currentlyLayoutingForSize];
      v9 = v8;
      v11 = v10;
      [(SXComponentView *)self contentFrame];
      v14 = v11 != v13 || v9 != v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)shouldShowWebView
{
  [(SXEmbedComponentView *)self currentLayoutSize];
  v4 = v3;
  [(SXComponentView *)self contentFrame];
  if (v4 == v5)
  {
    webView = [(SXEmbedComponentView *)self webView];
    if (webView)
    {
      v7 = ![(SXEmbedComponentView *)self failedLoading];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)hasLoadedEmbedData
{
  hTML = [(SXEmbedComponentView *)self HTML];
  if (hTML)
  {
    userScript = [(SXEmbedComponentView *)self userScript];
    if (userScript)
    {
      failedLoading = 1;
    }

    else
    {
      failedLoading = [(SXEmbedComponentView *)self failedLoading];
    }
  }

  else
  {
    failedLoading = [(SXEmbedComponentView *)self failedLoading];
  }

  return failedLoading;
}

- (void)showActivityIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  activityIndicator = [(SXEmbedComponentView *)self activityIndicator];

  if (indicatorCopy)
  {
    if (!activityIndicator)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      activityIndicator = self->_activityIndicator;
      self->_activityIndicator = v6;

      [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
      contentView = [(SXComponentView *)self contentView];
      [contentView addSubview:self->_activityIndicator];
    }

    activityIndicator2 = [(SXEmbedComponentView *)self activityIndicator];
    contentView2 = [(SXComponentView *)self contentView];
    [contentView2 bounds];
    MidX = CGRectGetMidX(v15);
    contentView3 = [(SXComponentView *)self contentView];
    [contentView3 bounds];
    [activityIndicator2 setCenter:{MidX, CGRectGetMidY(v16)}];

    activityIndicator3 = [(SXEmbedComponentView *)self activityIndicator];
    [activityIndicator3 startAnimating];
  }

  else
  {
    if (!activityIndicator)
    {
      return;
    }

    activityIndicator3 = [(SXEmbedComponentView *)self activityIndicator];
    [activityIndicator3 stopAnimating];
  }
}

- (SXEmbedResource)embedResource
{
  embedResource = self->_embedResource;
  if (!embedResource)
  {
    dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
    component = [(SXComponentView *)self component];
    resourceIdentifier = [component resourceIdentifier];
    v7 = [dOMObjectProvider resourceForIdentifier:resourceIdentifier];
    v8 = self->_embedResource;
    self->_embedResource = v7;

    embedResource = self->_embedResource;
  }

  return embedResource;
}

- (unint64_t)userActionMediaTypes
{
  embedConfiguration = [(SXEmbedComponentView *)self embedConfiguration];
  autoPlayMedia = [embedConfiguration autoPlayMedia];

  if ((autoPlayMedia + 1) > 3)
  {
    return -1;
  }

  else
  {
    return qword_1D8392340[autoPlayMedia + 1];
  }
}

- (void)addScriptMessageHandlers
{
  if (![(SXEmbedComponentView *)self hasRegisteredScriptMessageHandlers])
  {
    webView = [(SXEmbedComponentView *)self webView];
    configuration = [webView configuration];
    userContentController = [configuration userContentController];

    scriptMessageHandler = [(SXEmbedComponentView *)self scriptMessageHandler];
    [userContentController addScriptMessageHandler:scriptMessageHandler name:@"ANFExpect"];

    scriptMessageHandler2 = [(SXEmbedComponentView *)self scriptMessageHandler];
    [userContentController addScriptMessageHandler:scriptMessageHandler2 name:@"ANFDone"];

    scriptMessageHandler3 = [(SXEmbedComponentView *)self scriptMessageHandler];
    [userContentController addScriptMessageHandler:scriptMessageHandler3 name:@"ANFUpdate"];

    scriptMessageHandler4 = [(SXEmbedComponentView *)self scriptMessageHandler];
    [userContentController addScriptMessageHandler:scriptMessageHandler4 name:@"ANFFailed"];

    [(SXEmbedComponentView *)self setHasRegisteredScriptMessageHandlers:1];
  }
}

- (void)removeScriptMessageHandlers
{
  if ([(SXEmbedComponentView *)self hasRegisteredScriptMessageHandlers])
  {
    webView = [(SXEmbedComponentView *)self webView];
    configuration = [webView configuration];
    userContentController = [configuration userContentController];

    [userContentController removeScriptMessageHandlerForName:@"ANFExpect"];
    [userContentController removeScriptMessageHandlerForName:@"ANFDone"];
    [userContentController removeScriptMessageHandlerForName:@"ANFUpdate"];
    [userContentController removeScriptMessageHandlerForName:@"ANFFailed"];
    [(SXEmbedComponentView *)self setHasRegisteredScriptMessageHandlers:0];
  }
}

- (BOOL)allowHierarchyRemoval
{
  v6.receiver = self;
  v6.super_class = SXEmbedComponentView;
  allowHierarchyRemoval = [(SXComponentView *)&v6 allowHierarchyRemoval];
  webViewPresentingInFullscreen = [(SXEmbedComponentView *)self webViewPresentingInFullscreen];

  return (webViewPresentingInFullscreen == 0) & allowHierarchyRemoval;
}

- (void)webViewEnteredFullscreen:(id)fullscreen
{
  [(SXEmbedComponentView *)self setWebViewPresentingInFullscreen:fullscreen];
  [(SXEmbedComponentView *)self setWebView:0];
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate willReturnToFullscreenForComponent:self];
}

- (void)webViewExitedFullscreen:(id)fullscreen
{
  webView = [(SXEmbedComponentView *)self webView];

  webViewPresentingInFullscreen = [(SXEmbedComponentView *)self webViewPresentingInFullscreen];
  v6 = webViewPresentingInFullscreen;
  if (webView)
  {
    [webViewPresentingInFullscreen removeFromSuperview];
  }

  else
  {
    [(SXEmbedComponentView *)self setWebView:webViewPresentingInFullscreen];
  }

  [(SXEmbedComponentView *)self setWebViewPresentingInFullscreen:0];
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate willDismissFullscreenCanvasForComponent:self];
}

- (void)reportLoadEventWithError:(id)error
{
  errorCopy = error;
  loadEvent = [(SXEmbedComponentView *)self loadEvent];

  if (loadEvent)
  {
    loadEvent2 = [(SXEmbedComponentView *)self loadEvent];
    [loadEvent2 setError:errorCopy];

    loadEvent3 = [(SXEmbedComponentView *)self loadEvent];
    [loadEvent3 determineEndDate];

    analyticsReporting = [(SXEmbedComponentView *)self analyticsReporting];
    loadEvent4 = [(SXEmbedComponentView *)self loadEvent];
    [analyticsReporting reportEvent:loadEvent4];

    [(SXEmbedComponentView *)self setLoadEvent:0];
  }
}

- (CGSize)currentlyLayoutingForSize
{
  width = self->_currentlyLayoutingForSize.width;
  height = self->_currentlyLayoutingForSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)currentLayoutSize
{
  width = self->_currentLayoutSize.width;
  height = self->_currentLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)currentViewportSize
{
  width = self->_currentViewportSize.width;
  height = self->_currentViewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end