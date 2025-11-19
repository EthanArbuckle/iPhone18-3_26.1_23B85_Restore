@interface SXEmbedComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)hasLoadedEmbedData;
- (BOOL)shouldAllowRequestToURL:(id)a3;
- (BOOL)shouldLayoutWebView;
- (BOOL)shouldShowWebView;
- (CGSize)currentLayoutSize;
- (CGSize)currentViewportSize;
- (CGSize)currentlyLayoutingForSize;
- (SXEmbedComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 reachabilityProvider:(id)a7 embedDataProvider:(id)a8 actionHandler:(id)a9 layoutInvalidator:(id)a10 websiteDataStore:(id)a11 processPoolCache:(id)a12 proxyAuthenticationHandler:(id)a13 sceneStateMonitor:(id)a14 analyticsReporting:(id)a15;
- (SXEmbedResource)embedResource;
- (SXEmbedType)embedConfiguration;
- (double)initialScale;
- (id)enclosingHTML;
- (id)unableToLoadMessage;
- (id)webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6;
- (unint64_t)userActionMediaTypes;
- (void)_webViewDidEnterElementFullscreen:(id)a3;
- (void)_webViewDidExitElementFullscreen:(id)a3;
- (void)_webViewDidExitFullscreen:(id)a3;
- (void)_webViewWebProcessDidCrash:(id)a3;
- (void)addScriptMessageHandlers;
- (void)dealloc;
- (void)discardContents;
- (void)displayEmbedIfNeeded;
- (void)finalizeLayoutForSize:(CGSize)a3;
- (void)handleError:(id)a3;
- (void)layoutWebViewForSize:(CGSize)a3;
- (void)loadComponent:(id)a3;
- (void)loadEmbedData;
- (void)loadEmbedIfNeeded;
- (void)loadWebView;
- (void)loadWebViewIfNeeded;
- (void)presentComponentWithChanges:(id)a3;
- (void)prewarmWebView;
- (void)reloadEmbed;
- (void)removeScriptMessageHandlers;
- (void)renderContents;
- (void)reportLoadEventWithError:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)showActivityIndicator:(BOOL)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webViewEnteredFullscreen:(id)a3;
- (void)webViewExitedFullscreen:(id)a3;
- (void)willPresentComponentWithChanges:(id)a3;
@end

@implementation SXEmbedComponentView

- (SXEmbedComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 reachabilityProvider:(id)a7 embedDataProvider:(id)a8 actionHandler:(id)a9 layoutInvalidator:(id)a10 websiteDataStore:(id)a11 processPoolCache:(id)a12 proxyAuthenticationHandler:(id)a13 sceneStateMonitor:(id)a14 analyticsReporting:(id)a15
{
  v20 = a3;
  v44 = a4;
  v21 = a5;
  v22 = a6;
  v43 = a7;
  v42 = a8;
  v41 = a9;
  v40 = a10;
  v39 = a11;
  v38 = a12;
  v37 = a13;
  v36 = a14;
  v35 = a15;
  v49.receiver = self;
  v49.super_class = SXEmbedComponentView;
  v23 = [(SXComponentView *)&v49 initWithDOMObjectProvider:v20 viewport:v44 presentationDelegate:v21 componentStyleRendererFactory:v22];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_reachabilityProvider, a7);
    objc_storeStrong(&v24->_embedDataProvider, a8);
    objc_storeStrong(&v24->_actionHandler, a9);
    objc_storeStrong(&v24->_layoutInvalidator, a10);
    v25 = [objc_alloc(MEMORY[0x1E69D6CE8]) initWithDelegate:v24 delegateProtocol:&unk_1F5404200];
    scriptMessageHandler = v24->_scriptMessageHandler;
    v24->_scriptMessageHandler = v25;

    objc_storeStrong(&v24->_dataStore, a11);
    objc_storeStrong(&v24->_processPoolCache, a12);
    objc_storeStrong(&v24->_proxyAuthenticationHandler, a13);
    objc_storeStrong(&v24->_sceneStateMonitor, a14);
    objc_storeStrong(&v24->_analyticsReporting, a15);
    v27 = [(SXComponentView *)v24 viewport];
    [v27 addViewportChangeListener:v24 forOptions:8];

    v28 = [MEMORY[0x1E695DFA8] set];
    expectedMessages = v24->_expectedMessages;
    v24->_expectedMessages = v28;

    v30 = objc_alloc_init(MEMORY[0x1E69CE150]);
    webCrashRetryThrottler = v24->_webCrashRetryThrottler;
    v24->_webCrashRetryThrottler = v30;

    v32 = [(SXComponentView *)v24 contentView];
    [v32 setClipsToBounds:1];

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

- (void)loadComponent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v6 loadComponent:a3];
  v4 = [(SXComponentView *)self viewport];
  v5 = [v4 appearState];

  if (v5 == 2)
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
  v3 = [(SXEmbedComponentView *)self webView];
  v4 = [(SXEmbedComponentView *)self webViewPresentingInFullscreen];

  if (v3 != v4)
  {
    v5 = [(SXEmbedComponentView *)self webView];
    [v5 removeFromSuperview];
  }
}

- (void)willPresentComponentWithChanges:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v5 willPresentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  if ([(SXEmbedComponentView *)self shouldLayoutWebView])
  {
    v4 = [(SXEmbedComponentView *)self webView];
    [v4 setAlpha:0.0];

    [(SXEmbedComponentView *)self discardContents];
  }
}

- (void)presentComponentWithChanges:(id)a3
{
  v4.receiver = self;
  v4.super_class = SXEmbedComponentView;
  [(SXComponentView *)&v4 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
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
  v3 = a1;
  v4 = [a2 component];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_0_4(&dword_1D825C000, v6, v7, "Failed to load embed user script, component-identifier=%{public}@", v8, v9, v10, v11, 2u);
}

- (void)displayEmbedIfNeeded
{
  v38 = *MEMORY[0x1E69E9840];
  [(SXEmbedComponentView *)self loadWebViewIfNeeded];
  if ([(SXEmbedComponentView *)self shouldLayoutWebView])
  {
    v3 = [SXWebContentLoadEvent alloc];
    v4 = [(SXEmbedComponentView *)self embedResource];
    v5 = [v4 URL];
    v6 = [(SXWebContentLoadEvent *)v3 initWithURL:v5];
    [(SXEmbedComponentView *)self setLoadEvent:v6];

    [(SXComponentView *)self contentFrame];
    v8 = v7;
    v9 = [(SXEmbedComponentView *)self embedConfiguration];
    [v9 maximumWidth];
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
      v16 = [(SXComponentView *)self component];
      v17 = [v16 identifier];
      *buf = 138543618;
      v35 = v15;
      v36 = 2114;
      v37 = v17;
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
      v20 = [(SXComponentView *)self component];
      v21 = [v20 identifier];
      *buf = 138543362;
      v35 = v21;
      _os_log_impl(&dword_1D825C000, v19, OS_LOG_TYPE_DEFAULT, "Display embed, component-identifier=%{public}@", buf, 0xCu);
    }

    [(SXEmbedComponentView *)self showActivityIndicator:0];
    v22 = [(SXEmbedComponentView *)self webView];
    [v22 bounds];
    [(SXEmbedComponentView *)self layoutWebViewForSize:v23, v24];

    v25 = [(SXEmbedComponentView *)self webView];
    [v25 alpha];
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
        v32 = [(SXEmbedComponentView *)self webView];
        [v32 setAlpha:1.0];
      }
    }

    else
    {
      v28 = [(SXEmbedComponentView *)self webView];
      v29 = [v28 superview];

      if (!v29)
      {
        v30 = [(SXComponentView *)self contentView];
        v31 = [(SXEmbedComponentView *)self webView];
        [v30 addSubview:v31];
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
  v3 = [(SXEmbedComponentView *)self webView];
  if (v3)
  {
  }

  else if (![(SXEmbedComponentView *)self failedLoading])
  {
    v4 = SXEmbedLog;
    if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(SXComponentView *)self component];
      v7 = [v6 identifier];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Prewarming web view, component-identifier=%{public}@", &v8, 0xCu);
    }

    [(SXEmbedComponentView *)self loadWebView];
  }
}

- (void)loadWebViewIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(SXEmbedComponentView *)self webView];
  v4 = v3;
  if (v3 || (v3 = [(SXComponentView *)self hasRenderedContents], v4 = 0, !v3))
  {

    MEMORY[0x1EEE66BB8](v3, v4);
  }

  else if (![(SXEmbedComponentView *)self failedLoading])
  {
    v5 = SXEmbedLog;
    if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(SXComponentView *)self component];
      v8 = [v7 identifier];
      *buf = 138543362;
      v10 = v8;
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
    v5 = [(SXComponentView *)self component];
    v6 = [v5 identifier];
    v51 = 138543362;
    v52 = v6;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Setting up web view, component-identifier=%{public}@", &v51, 0xCu);
  }

  v7 = [(SXEmbedComponentView *)self errorLabel];
  [v7 removeFromSuperview];

  v8 = objc_alloc_init(MEMORY[0x1E6985350]);
  v9 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:@"document.body.style.webkitUserSelect = 'none';" injectionTime:1 forMainFrameOnly:0];
  [v8 addUserScript:v9];
  v10 = objc_alloc_init(MEMORY[0x1E69853A8]);
  [v10 setMediaTypesRequiringUserActionForPlayback:{-[SXEmbedComponentView userActionMediaTypes](self, "userActionMediaTypes")}];
  [v10 setAllowsAirPlayForMediaPlayback:0];
  [v10 setAllowsPictureInPictureMediaPlayback:0];
  [v10 _setWaitsForPaintAfterViewDidMoveToWindow:0];
  v11 = [(SXEmbedComponentView *)self dataStore];
  [v10 setWebsiteDataStore:v11];

  v12 = [(SXEmbedComponentView *)self processPoolCache];
  v13 = [(SXEmbedComponentView *)self embedConfiguration];
  v14 = [v13 baseURL];
  v15 = [v12 processPoolForBaseURL:v14];

  [v10 setProcessPool:v15];
  v16 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v16 setJavaScriptCanOpenWindowsAutomatically:1];
  v17 = [(SXEmbedComponentView *)self traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 1)
  {
    [v16 _setFullScreenEnabled:1];
  }

  [v16 _setShouldAllowUserInstalledFonts:0];
  [v10 setPreferences:v16];
  [v10 setUserContentController:v8];
  [(SXComponentView *)self contentFrame];
  v20 = v19;
  v21 = [(SXEmbedComponentView *)self embedConfiguration];
  [v21 maximumWidth];
  v23 = v22;

  if (v20 >= v23)
  {
    v20 = v23;
  }

  v24 = [(SXComponentView *)self contentView];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [objc_alloc(MEMORY[0x1E69853A0]) initWithFrame:v10 configuration:{v26, v28, v20, v30}];
  [(SXEmbedComponentView *)self setWebView:v31];

  v32 = [(SXEmbedComponentView *)self webView];
  v33 = [v32 scrollView];
  [v33 setScrollsToTop:0];

  v34 = [(SXEmbedComponentView *)self webView];
  v35 = [v34 scrollView];
  [v35 setContentInsetAdjustmentBehavior:2];

  v36 = [(SXEmbedComponentView *)self webView];
  v37 = [v36 scrollView];
  [v37 setScrollEnabled:0];

  v38 = [(SXEmbedComponentView *)self webView];
  v39 = [v38 scrollView];
  [v39 setDelegate:self];

  v40 = [(SXEmbedComponentView *)self webView];
  [v40 _setFullscreenDelegate:self];

  v41 = [(SXEmbedComponentView *)self webView];
  v42 = [v41 scrollView];
  [v42 setAlwaysBounceVertical:0];

  v43 = [(SXEmbedComponentView *)self webView];
  v44 = [v43 scrollView];
  [v44 setAlwaysBounceHorizontal:0];

  v45 = [(SXEmbedComponentView *)self webView];
  v46 = [MEMORY[0x1E69DC888] clearColor];
  [v45 setBackgroundColor:v46];

  v47 = [(SXEmbedComponentView *)self webView];
  [v47 setOpaque:0];

  v48 = [(SXEmbedComponentView *)self webView];
  [v48 setNavigationDelegate:self];

  v49 = [(SXEmbedComponentView *)self webView];
  [v49 setUIDelegate:self];

  v50 = [(SXEmbedComponentView *)self webView];
  [v50 setAlpha:0.0];
}

- (void)reloadEmbed
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(SXEmbedComponentView *)self hasLoadedEmbedData])
  {
    v3 = [(SXEmbedComponentView *)self webView];

    if (v3)
    {
      v4 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        v6 = [(SXComponentView *)self component];
        v7 = [v6 identifier];
        v37 = 138543362;
        v38 = v7;
        _os_log_impl(&dword_1D825C000, v5, OS_LOG_TYPE_DEFAULT, "Start loading embed, component-identifier=%{public}@", &v37, 0xCu);
      }

      v8 = [(SXEmbedComponentView *)self webViewPresentingInFullscreen];

      if (v8)
      {
        v9 = SXEmbedLog;
        if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [(SXComponentView *)self component];
          v12 = [v11 identifier];
          v37 = 138543362;
          v38 = v12;
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
      v18 = [(SXEmbedComponentView *)self webView];
      v19 = [v18 loadSimulatedRequest:v17 responseHTMLString:&stru_1F532F6C0];

      v20 = [(SXEmbedComponentView *)self layoutInvalidator];
      v21 = [(SXComponentView *)self component];
      [v20 mightInvalidateComponent:v21];

      v22 = [(SXEmbedComponentView *)self webView];
      [v22 setAlpha:0.0];

      v23 = [(SXEmbedComponentView *)self embedConfiguration];
      v24 = [v23 baseURL];

      v25 = objc_alloc(MEMORY[0x1E6985358]);
      v26 = [(SXEmbedComponentView *)self userScript];
      v27 = [v25 initWithSource:v26 injectionTime:1 forMainFrameOnly:0];

      v28 = [(SXEmbedComponentView *)self webView];
      v29 = [v28 configuration];
      v30 = [v29 userContentController];
      [v30 addUserScript:v27];

      v31 = [MEMORY[0x1E695AC18] requestWithURL:v24];
      [v31 setAttribution:1];
      v32 = [(SXEmbedComponentView *)self HTML];
      v33 = [(SXEmbedComponentView *)self enclosingHTML];
      v34 = [(SXEmbedComponentView *)self HTMLByEnclosingHTML:v32 withHTML:v33];

      v35 = [(SXEmbedComponentView *)self webView];
      v36 = [v35 loadSimulatedRequest:v31 responseHTMLString:v34];
      [(SXEmbedComponentView *)self setInitialNavigation:v36];
    }
  }
}

- (void)layoutWebViewForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SXEmbedComponentView *)self webView];
  [v6 setBounds:{0.0, 0.0, width, height}];

  v10 = [(SXEmbedComponentView *)self webView];
  v7 = [(SXComponentView *)self contentView];
  [v7 bounds];
  MidX = CGRectGetMidX(v12);
  v9 = [(SXComponentView *)self contentView];
  [v9 bounds];
  [v10 setCenter:{MidX, CGRectGetMidY(v13)}];
}

- (void)finalizeLayoutForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x1E69E9840];
  v6 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v22.width = width;
    v22.height = height;
    v8 = NSStringFromCGSize(v22);
    v9 = [(SXComponentView *)self component];
    v10 = [v9 identifier];
    v17 = 138543618;
    v18 = v8;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Finalizing layout with size: %{public}@, component-identifier=%{public}@", &v17, 0x16u);
  }

  v11 = [(SXEmbedComponentView *)self layoutInvalidator];
  v12 = [(SXComponentView *)self component];
  [(SXEmbedComponentView *)self bounds];
  v13 = [v11 invalidateComponent:v12 suggestedSize:{CGRectGetWidth(v23), height}];

  [(SXEmbedComponentView *)self setCurrentlyLayoutingForSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(SXEmbedComponentView *)self setCurrentLayoutSize:width, height];
  v14 = [(SXComponentView *)self viewport];
  [v14 bounds];
  [(SXEmbedComponentView *)self setCurrentViewportSize:v15, v16];

  [(SXEmbedComponentView *)self layoutWebViewForSize:width, height];
  [(SXEmbedComponentView *)self reportLoadEventWithError:0];
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  v6 = a3;
  if ([v6 appearState])
  {
    if ([v6 appearState] == 2)
    {
      [(SXEmbedComponentView *)self prewarmWebView];
    }
  }

  else
  {
    v5 = [(SXEmbedComponentView *)self webView];
    [v5 pauseAllMediaPlaybackWithCompletionHandler:0];
  }
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  *&v91[13] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"ANFExpect"];

  if (v7)
  {
    v8 = [v5 body];

    if (v8)
    {
      v9 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v5 body];
        v12 = [(SXComponentView *)self component];
        v13 = [v12 identifier];
        v88 = 138543618;
        v89 = v11;
        v90 = 2114;
        *v91 = v13;
        _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Expect message received: %{public}@, component-identifier=%{public}@", &v88, 0x16u);
      }

      v14 = [(SXEmbedComponentView *)self expectedMessages];
      v15 = [v5 body];
      [v14 addObject:v15];
    }

    goto LABEL_53;
  }

  v16 = [v5 name];
  v17 = [v16 isEqualToString:@"ANFDone"];

  if (!v17)
  {
    v38 = [v5 name];
    v39 = [v38 isEqualToString:@"ANFUpdate"];

    if (v39)
    {
      v40 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        v42 = [v5 body];
        v43 = [(SXComponentView *)self component];
        v44 = [v43 identifier];
        v88 = 138543618;
        v89 = v42;
        v90 = 2114;
        *v91 = v44;
        _os_log_impl(&dword_1D825C000, v41, OS_LOG_TYPE_DEFAULT, "Update message received: %{public}@, component-identifier=%{public}@", &v88, 0x16u);
      }

      v45 = [v5 body];
      v46 = [v45 objectForKey:@"height"];

      if (v46)
      {
        [v46 floatValue];
        if (v47 != 0.0)
        {
          v48 = v47;
          [(SXComponentView *)self contentFrame];
          v50 = v49;
          v51 = [(SXEmbedComponentView *)self embedConfiguration];
          [v51 maximumWidth];
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
      v58 = [v5 name];
      v59 = [v58 isEqualToString:@"ANFFailed"];

      if (!v59)
      {
        goto LABEL_53;
      }

      v60 = SXEmbedLog;
      if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
        v62 = [v5 body];
        v63 = [(SXComponentView *)self component];
        v64 = [v63 identifier];
        v88 = 138543618;
        v89 = v62;
        v90 = 2114;
        *v91 = v64;
        _os_log_impl(&dword_1D825C000, v61, OS_LOG_TYPE_DEFAULT, "Failed message received: %{public}@, component-identifier=%{public}@", &v88, 0x16u);
      }

      v46 = [MEMORY[0x1E696ABC0] unknownError];
      [(SXEmbedComponentView *)self handleError:v46];
    }

    goto LABEL_53;
  }

  v18 = [v5 body];

  if (v18)
  {
    v19 = SXEmbedLog;
    if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v5 body];
      v22 = [(SXEmbedComponentView *)self expectedMessages];
      v23 = [v5 body];
      v24 = [v22 containsObject:v23];
      v25 = [(SXComponentView *)self component];
      v26 = [v25 identifier];
      v88 = 138543874;
      v89 = v21;
      v90 = 1024;
      *v91 = v24;
      v91[2] = 2114;
      *&v91[3] = v26;
      _os_log_impl(&dword_1D825C000, v20, OS_LOG_TYPE_DEFAULT, "Done message received: %{public}@, expected=%d, component-identifier=%{public}@", &v88, 0x1Cu);
    }

    v27 = [v5 body];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v29 = [v5 body];
    v30 = v29;
    if (isKindOfClass)
    {
      v31 = [v29 objectForKey:@"key"];

      if (v31)
      {
        v32 = [(SXEmbedComponentView *)self expectedMessages];
        v33 = [v32 containsObject:v31];

        if (v33)
        {
          v34 = [v5 body];
          v35 = [v34 objectForKey:@"height"];

          if (v35)
          {
            [v35 floatValue];
            v37 = v36;
          }

          else
          {
            v37 = 1.79769313e308;
          }

          v68 = [(SXEmbedComponentView *)self expectedMessages];
          [v68 removeObject:v31];

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
        v65 = [(SXEmbedComponentView *)self expectedMessages];
        v66 = [v5 body];
        v67 = [v65 containsObject:v66];

        if (!v67)
        {
          v33 = 1;
          v37 = 1.79769313e308;
LABEL_41:
          v69 = [(SXEmbedComponentView *)self expectedMessages];
          v70 = [v69 count];

          if (v33 && !v70)
          {
            v71 = SXEmbedLog;
            if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
            {
              v72 = v71;
              v73 = [(SXComponentView *)self component];
              v74 = [v73 identifier];
              v88 = 138543362;
              v89 = v74;
              _os_log_impl(&dword_1D825C000, v72, OS_LOG_TYPE_DEFAULT, "No more messages expected, finalizing layout, component-identifier=%{public}@", &v88, 0xCu);
            }

            if (v37 == 1.79769313e308)
            {
              v75 = [(SXEmbedComponentView *)self webView];
              v76 = [v75 scrollView];
              [v76 contentSize];
              v37 = v77;
            }

            v78 = [v5 body];
            v79 = [v78 objectForKey:@"width"];
            [v79 floatValue];
            v81 = v80;

            if (v81 == 0.0)
            {
              [(SXComponentView *)self contentFrame];
              v83 = v82;
              v84 = [(SXEmbedComponentView *)self embedConfiguration];
              [v84 maximumWidth];
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

        v31 = [(SXEmbedComponentView *)self expectedMessages];
        v35 = [v5 body];
        [v31 removeObject:v35];
        v37 = 1.79769313e308;
        goto LABEL_39;
      }

      v33 = 1;
      v37 = 1.79769313e308;
      v31 = v30;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_53:
}

- (void)handleError:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SXComponentView *)self component];
    v8 = [v7 identifier];
    v23 = 138543618;
    v24 = v4;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Received error while attempting to load embed: %{public}@, component-identifier=%{public}@", &v23, 0x16u);
  }

  v9 = [(SXEmbedComponentView *)self layoutInvalidator];
  v10 = [(SXComponentView *)self component];
  [v9 cancelPendingInvalidationForComponent:v10];

  [(SXEmbedComponentView *)self setFailedLoading:1];
  [(SXEmbedComponentView *)self showActivityIndicator:0];
  v11 = objc_alloc(MEMORY[0x1E69DCC10]);
  v12 = [(SXComponentView *)self contentView];
  [v12 bounds];
  Width = CGRectGetWidth(v28);
  v14 = [(SXComponentView *)self contentView];
  [v14 bounds];
  v15 = [v11 initWithFrame:{0.0, 0.0, Width, CGRectGetHeight(v29)}];
  [(SXEmbedComponentView *)self setErrorLabel:v15];

  v16 = [(SXEmbedComponentView *)self errorLabel];
  [v16 setNumberOfLines:0];

  v17 = [(SXEmbedComponentView *)self errorLabel];
  [v17 setTextAlignment:1];

  v18 = [(SXEmbedComponentView *)self errorLabel];
  v19 = [(SXEmbedComponentView *)self unableToLoadMessage];
  [v18 setText:v19];

  v20 = [(SXComponentView *)self contentView];
  v21 = [(SXEmbedComponentView *)self errorLabel];
  [v20 addSubview:v21];

  [(SXEmbedComponentView *)self removeScriptMessageHandlers];
  v22 = [(SXEmbedComponentView *)self webView];
  [v22 removeFromSuperview];

  [(SXEmbedComponentView *)self setWebView:0];
  [(SXEmbedComponentView *)self reportLoadEventWithError:v4];
}

- (id)unableToLoadMessage
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Couldn’t Load Content" value:&stru_1F532F6C0 table:0];

  return v3;
}

- (id)webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v12 request];
    v17 = [v16 URL];
    v18 = [(SXComponentView *)self component];
    v19 = [v18 identifier];
    v31 = 138543618;
    v32 = v17;
    v33 = 2114;
    v34 = v19;
    _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_DEFAULT, "Navigating to URL %{public}@ in reponse to new window for component-identifier=%{public}@", &v31, 0x16u);
  }

  v20 = [v12 request];
  v21 = [v20 URL];
  v22 = [v21 absoluteString];
  v23 = [v22 isEqualToString:@"about:blank"];

  if ((v23 & 1) == 0)
  {
    v24 = [SXLinkAction alloc];
    v25 = [v12 request];
    v26 = [v25 URL];
    v27 = [(SXLinkAction *)v24 initWithURL:v26];

    v28 = [(SXEmbedComponentView *)self actionHandler];
    v29 = [(SXEmbedComponentView *)self webView];
    [v29 frame];
    [v28 handleAction:v27 sourceView:self sourceRect:0 invocationType:?];
  }

  return 0;
}

- (void)_webViewDidExitFullscreen:(id)a3
{
  v4 = a3;
  if (![(SXEmbedComponentView *)self usingElementFullscreen])
  {
    [(SXEmbedComponentView *)self webViewExitedFullscreen:v4];
  }
}

- (void)_webViewDidEnterElementFullscreen:(id)a3
{
  [(SXEmbedComponentView *)self webViewEnteredFullscreen:a3];

  [(SXEmbedComponentView *)self setUsingElementFullscreen:1];
}

- (void)_webViewDidExitElementFullscreen:(id)a3
{
  [(SXEmbedComponentView *)self webViewExitedFullscreen:a3];

  [(SXEmbedComponentView *)self setUsingElementFullscreen:0];
}

- (void)_webViewWebProcessDidCrash:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SXEmbedLog;
  if (os_log_type_enabled(SXEmbedLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SXComponentView *)self component];
    v8 = [v7 identifier];
    v16 = 138543362;
    v17 = v8;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Web view crashed, attempting reload, component-identifier=%{public}@", &v16, 0xCu);
  }

  v9 = [(SXEmbedComponentView *)self webView];

  if (v9 == v4)
  {
    [(SXEmbedComponentView *)self showActivityIndicator:1];
    v10 = [(SXEmbedComponentView *)self webCrashRetryThrottler];
    v11 = [v10 shouldReloadAfterWebProcessCrash];

    if (v11)
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
        v14 = [(SXComponentView *)self component];
        v15 = [v14 identifier];
        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_1D825C000, v13, OS_LOG_TYPE_DEFAULT, "Stopped reloading after crash, threshold reached, component-identifier=%{public}@", &v16, 0xCu);
      }
    }
  }
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9 && [v9 code] != -999 && objc_msgSend(v10, "code") != -1002)
  {
    [(SXEmbedComponentView *)self handleError:v10];
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9 && [v9 code] != -999 && objc_msgSend(v10, "code") != -1002)
  {
    [(SXEmbedComponentView *)self handleError:v10];
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = a4;
  v6 = [(SXEmbedComponentView *)self initialNavigation];

  if (v6 == v5)
  {
    v7 = [(SXComponentView *)self contentView];
    v8 = [(SXEmbedComponentView *)self webView];
    [v7 addSubview:v8];

    [(SXEmbedComponentView *)self setInitialNavigation:0];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __80__SXEmbedComponentView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v18 = &unk_1E8501268;
  v11 = v9;
  v19 = v11;
  v20 = self;
  v12 = v8;
  v21 = v12;
  v13 = v10;
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

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SXEmbedComponentView *)self proxyAuthenticationHandler];
  [v9 handleAuthenticationChallenge:v8 completion:v7];
}

- (BOOL)shouldAllowRequestToURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if ([v4 isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 scheme];
    v5 = [v6 isEqualToString:@"https"];
  }

  v7 = [v3 absoluteString];
  v8 = [v7 isEqualToString:@"about:blank"];

  return (v5 | v8) & 1;
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v4 = [a3 pinchGestureRecognizer];
  [v4 setEnabled:0];
}

- (id)enclosingHTML
{
  v3 = [(SXEmbedComponentView *)self embedConfiguration];
  v4 = [v3 enclosingHTML];

  if ([v4 containsString:@"{initial_scale}"])
  {
    [(SXEmbedComponentView *)self initialScale];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", v5];
    v7 = [v4 stringByReplacingOccurrencesOfString:@"{initial_scale}" withString:v6];

    v4 = v7;
  }

  return v4;
}

- (double)initialScale
{
  [(SXComponentView *)self contentFrame];
  Width = CGRectGetWidth(v9);
  v4 = [(SXEmbedComponentView *)self embedConfiguration];
  [v4 minimumWidth];
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
    v4 = [(SXEmbedComponentView *)self embedDataProvider];
    v5 = [(SXComponentView *)self component];
    v6 = [v5 embedType];
    v7 = [v4 embedForType:v6];
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

  v6 = [(SXEmbedComponentView *)self webView];
  if (v6)
  {
    v7 = [(SXEmbedComponentView *)self HTML];
    if (v7 && [(SXComponentView *)self hasRenderedContents])
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
    v6 = [(SXEmbedComponentView *)self webView];
    if (v6)
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
  v3 = [(SXEmbedComponentView *)self HTML];
  if (v3)
  {
    v4 = [(SXEmbedComponentView *)self userScript];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = [(SXEmbedComponentView *)self failedLoading];
    }
  }

  else
  {
    v5 = [(SXEmbedComponentView *)self failedLoading];
  }

  return v5;
}

- (void)showActivityIndicator:(BOOL)a3
{
  v3 = a3;
  v5 = [(SXEmbedComponentView *)self activityIndicator];

  if (v3)
  {
    if (!v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      activityIndicator = self->_activityIndicator;
      self->_activityIndicator = v6;

      [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
      v8 = [(SXComponentView *)self contentView];
      [v8 addSubview:self->_activityIndicator];
    }

    v9 = [(SXEmbedComponentView *)self activityIndicator];
    v10 = [(SXComponentView *)self contentView];
    [v10 bounds];
    MidX = CGRectGetMidX(v15);
    v12 = [(SXComponentView *)self contentView];
    [v12 bounds];
    [v9 setCenter:{MidX, CGRectGetMidY(v16)}];

    v13 = [(SXEmbedComponentView *)self activityIndicator];
    [v13 startAnimating];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v13 = [(SXEmbedComponentView *)self activityIndicator];
    [v13 stopAnimating];
  }
}

- (SXEmbedResource)embedResource
{
  embedResource = self->_embedResource;
  if (!embedResource)
  {
    v4 = [(SXComponentView *)self DOMObjectProvider];
    v5 = [(SXComponentView *)self component];
    v6 = [v5 resourceIdentifier];
    v7 = [v4 resourceForIdentifier:v6];
    v8 = self->_embedResource;
    self->_embedResource = v7;

    embedResource = self->_embedResource;
  }

  return embedResource;
}

- (unint64_t)userActionMediaTypes
{
  v2 = [(SXEmbedComponentView *)self embedConfiguration];
  v3 = [v2 autoPlayMedia];

  if ((v3 + 1) > 3)
  {
    return -1;
  }

  else
  {
    return qword_1D8392340[v3 + 1];
  }
}

- (void)addScriptMessageHandlers
{
  if (![(SXEmbedComponentView *)self hasRegisteredScriptMessageHandlers])
  {
    v3 = [(SXEmbedComponentView *)self webView];
    v4 = [v3 configuration];
    v9 = [v4 userContentController];

    v5 = [(SXEmbedComponentView *)self scriptMessageHandler];
    [v9 addScriptMessageHandler:v5 name:@"ANFExpect"];

    v6 = [(SXEmbedComponentView *)self scriptMessageHandler];
    [v9 addScriptMessageHandler:v6 name:@"ANFDone"];

    v7 = [(SXEmbedComponentView *)self scriptMessageHandler];
    [v9 addScriptMessageHandler:v7 name:@"ANFUpdate"];

    v8 = [(SXEmbedComponentView *)self scriptMessageHandler];
    [v9 addScriptMessageHandler:v8 name:@"ANFFailed"];

    [(SXEmbedComponentView *)self setHasRegisteredScriptMessageHandlers:1];
  }
}

- (void)removeScriptMessageHandlers
{
  if ([(SXEmbedComponentView *)self hasRegisteredScriptMessageHandlers])
  {
    v3 = [(SXEmbedComponentView *)self webView];
    v4 = [v3 configuration];
    v5 = [v4 userContentController];

    [v5 removeScriptMessageHandlerForName:@"ANFExpect"];
    [v5 removeScriptMessageHandlerForName:@"ANFDone"];
    [v5 removeScriptMessageHandlerForName:@"ANFUpdate"];
    [v5 removeScriptMessageHandlerForName:@"ANFFailed"];
    [(SXEmbedComponentView *)self setHasRegisteredScriptMessageHandlers:0];
  }
}

- (BOOL)allowHierarchyRemoval
{
  v6.receiver = self;
  v6.super_class = SXEmbedComponentView;
  v3 = [(SXComponentView *)&v6 allowHierarchyRemoval];
  v4 = [(SXEmbedComponentView *)self webViewPresentingInFullscreen];

  return (v4 == 0) & v3;
}

- (void)webViewEnteredFullscreen:(id)a3
{
  [(SXEmbedComponentView *)self setWebViewPresentingInFullscreen:a3];
  [(SXEmbedComponentView *)self setWebView:0];
  v4 = [(SXComponentView *)self presentationDelegate];
  [v4 willReturnToFullscreenForComponent:self];
}

- (void)webViewExitedFullscreen:(id)a3
{
  v4 = [(SXEmbedComponentView *)self webView];

  v5 = [(SXEmbedComponentView *)self webViewPresentingInFullscreen];
  v6 = v5;
  if (v4)
  {
    [v5 removeFromSuperview];
  }

  else
  {
    [(SXEmbedComponentView *)self setWebView:v5];
  }

  [(SXEmbedComponentView *)self setWebViewPresentingInFullscreen:0];
  v7 = [(SXComponentView *)self presentationDelegate];
  [v7 willDismissFullscreenCanvasForComponent:self];
}

- (void)reportLoadEventWithError:(id)a3
{
  v9 = a3;
  v4 = [(SXEmbedComponentView *)self loadEvent];

  if (v4)
  {
    v5 = [(SXEmbedComponentView *)self loadEvent];
    [v5 setError:v9];

    v6 = [(SXEmbedComponentView *)self loadEvent];
    [v6 determineEndDate];

    v7 = [(SXEmbedComponentView *)self analyticsReporting];
    v8 = [(SXEmbedComponentView *)self loadEvent];
    [v7 reportEvent:v8];

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