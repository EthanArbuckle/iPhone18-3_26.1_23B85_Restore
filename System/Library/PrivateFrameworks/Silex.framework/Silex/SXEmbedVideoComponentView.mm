@interface SXEmbedVideoComponentView
+ (id)sharedConfiguration;
- (BOOL)allowHierarchyRemoval;
- (BOOL)shouldAllowRequestToURL:(id)a3;
- (CGRect)transitionContentFrame;
- (SXEmbedVideoComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 sceneStateMonitor:(id)a9 actionHandler:(id)a10 websiteDataStore:(id)a11 proxyAuthenticationHandler:(id)a12;
- (id)webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6;
- (void)_webViewWebProcessDidCrash:(id)a3;
- (void)discardContents;
- (void)handleError:(id)a3;
- (void)initializeWebViewWithURL:(id)a3;
- (void)layoutSubviews;
- (void)presentComponentWithChanges:(id)a3;
- (void)renderContents;
- (void)reportLoadEventWithError:(id)a3;
- (void)updateWebViewToWidth:(double)a3;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webViewEnteredFullscreen:(id)a3;
- (void)webViewExitedFullscreen:(id)a3;
@end

@implementation SXEmbedVideoComponentView

- (SXEmbedVideoComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 sceneStateMonitor:(id)a9 actionHandler:(id)a10 websiteDataStore:(id)a11 proxyAuthenticationHandler:(id)a12
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v36 = a9;
  v34 = a10;
  v33 = a11;
  v32 = a12;
  v41.receiver = self;
  v41.super_class = SXEmbedVideoComponentView;
  v22 = [(SXMediaComponentView *)&v41 initWithDOMObjectProvider:v16 viewport:v17 presentationDelegate:v18 componentStyleRendererFactory:v19 analyticsReporting:v20 appStateMonitor:v21];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_actionHandler, a10);
    objc_storeStrong(&v23->_dataStore, a11);
    objc_storeStrong(&v23->_proxyAuthenticationHandler, a12);
    objc_storeStrong(&v23->_sceneStateMonitor, a9);
    v24 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = v23->_activityIndicator;
    v23->_activityIndicator = v24;

    v26 = [(SXComponentView *)v23 contentView];
    [v26 addSubview:v23->_activityIndicator];

    v27 = [(SXComponentView *)v23 viewport];
    [v27 addViewportChangeListener:v23 forOptions:8];

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

- (void)presentComponentWithChanges:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXEmbedVideoComponentView;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  if ([(SXEmbedVideoComponentView *)self webViewIsLoaded])
  {
    v4 = [(SXEmbedVideoComponentView *)self webView];
    [v4 frame];
    [(SXEmbedVideoComponentView *)self updateWebViewToWidth:CGRectGetWidth(v6)];
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SXEmbedVideoComponentView;
  [(SXEmbedVideoComponentView *)&v7 layoutSubviews];
  v3 = [(SXEmbedVideoComponentView *)self activityIndicator];
  v4 = [(SXComponentView *)self contentView];
  [v4 bounds];
  MidX = CGRectGetMidX(v8);
  v6 = [(SXComponentView *)self contentView];
  [v6 bounds];
  [v3 setCenter:{MidX, CGRectGetMidY(v9)}];
}

- (void)renderContents
{
  v6.receiver = self;
  v6.super_class = SXEmbedVideoComponentView;
  [(SXComponentView *)&v6 renderContents];
  if (![(SXEmbedVideoComponentView *)self webViewIsLoaded])
  {
    v3 = [(SXEmbedVideoComponentView *)self activityIndicator];
    [v3 startAnimating];

    v4 = [(SXComponentView *)self component];
    v5 = [v4 URL];
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
    v3 = [(SXEmbedVideoComponentView *)self webView];
    [v3 removeFromSuperview];

    [(SXEmbedVideoComponentView *)self setWebView:0];
    [(SXEmbedVideoComponentView *)self setWebViewIsLoaded:0];
  }
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  if (![a3 appearState])
  {
    v5 = [(SXEmbedVideoComponentView *)self webView];
    [v5 pauseAllMediaPlaybackWithCompletionHandler:0];
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

- (void)initializeWebViewWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SXEmbedVideoComponentView *)self webView];

  if (!v5)
  {
    v6 = [objc_opt_class() sharedConfiguration];
    v7 = [(SXEmbedVideoComponentView *)self dataStore];
    [v6 setWebsiteDataStore:v7];

    v8 = objc_alloc(MEMORY[0x1E69853A0]);
    v9 = [(SXComponentView *)self contentView];
    [v9 bounds];
    v10 = [v8 initWithFrame:v6 configuration:?];
    webView = self->_webView;
    self->_webView = v10;

    v12 = [(SXEmbedVideoComponentView *)self webView];
    v13 = [v12 scrollView];
    [v13 setScrollsToTop:0];

    v14 = [(SXEmbedVideoComponentView *)self webView];
    v15 = [v14 scrollView];
    [v15 setContentInsetAdjustmentBehavior:2];

    v16 = [(SXEmbedVideoComponentView *)self webView];
    v17 = [v16 scrollView];
    [v17 setScrollEnabled:0];

    v18 = [(SXEmbedVideoComponentView *)self webView];
    v19 = [v18 scrollView];
    [v19 setBounces:0];

    v20 = [(SXEmbedVideoComponentView *)self webView];
    [v20 setAutoresizingMask:18];

    v21 = [(SXEmbedVideoComponentView *)self webView];
    [v21 setNavigationDelegate:self];

    v22 = [(SXEmbedVideoComponentView *)self webView];
    [v22 setUIDelegate:self];

    v23 = [(SXEmbedVideoComponentView *)self webView];
    [v23 _setFullscreenDelegate:self];

    v24 = [(SXEmbedVideoComponentView *)self webView];
    [v24 setHidden:1];

    v25 = [(SXEmbedVideoComponentView *)self webView];
    [v25 setAlpha:0.0];

    v26 = [(SXComponentView *)self contentView];
    v27 = [(SXEmbedVideoComponentView *)self webView];
    [v26 addSubview:v27];
  }

  v28 = [[SXWebContentLoadEvent alloc] initWithURL:v4];
  [(SXEmbedVideoComponentView *)self setLoadEvent:v28];

  v29 = MEMORY[0x1E696AEC0];
  v30 = [v4 scheme];
  v31 = [v4 host];
  v46 = [v29 stringWithFormat:@"%@://%@", v30, v31];

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
  v41 = [v4 absoluteString];

  v42 = [v34 stringWithFormat:@"<style>* {padding: 0 margin: 0}</style></style><meta name='viewport' content='width=%f, user-scalable=no, initial-scale=1, max-scale=1'><iframe width='%f' height='%f' src='%@' frameborder='0' allowfullscreen></iframe>", v36, v38, v40, v41];;

  v43 = [(SXEmbedVideoComponentView *)self webView];
  v44 = [v43 loadSimulatedRequest:v33 responseHTMLString:v42];

  [(SXEmbedVideoComponentView *)self setWebViewIsLoaded:1];
  [(SXMediaComponentView *)self setIsDisplayingMedia:1];
  v45 = [(SXEmbedVideoComponentView *)self webView];
  [v45 frame];
  [(SXEmbedVideoComponentView *)self updateWebViewToWidth:CGRectGetWidth(v48)];
}

- (void)updateWebViewToWidth:(double)a3
{
  v4 = MEMORY[0x1E696AEC0];
  [(SXComponentView *)self contentFrame];
  v6 = v5;
  [(SXComponentView *)self contentFrame];
  v9 = [v4 stringWithFormat:@"var iframe = document.getElementsByTagName('iframe')[0] iframe.style.width = '%dpx'; iframe.style.height = '%dpx';", v6, v7];;
  v8 = [(SXEmbedVideoComponentView *)self webView];
  [v8 evaluateJavaScript:v9 completionHandler:0];
}

- (CGRect)transitionContentFrame
{
  v3 = [(SXEmbedVideoComponentView *)self webView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SXEmbedVideoComponentView *)self superview];
  [(SXEmbedVideoComponentView *)self convertRect:v12 toView:v5, v7, v9, v11];
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

- (void)handleError:(id)a3
{
  v12 = a3;
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
  v9 = [(SXEmbedVideoComponentView *)self activityIndicator];
  [v9 stopAnimating];

  v10 = [(SXEmbedVideoComponentView *)self webView];
  [v10 removeFromSuperview];

  [(SXEmbedVideoComponentView *)self setWebView:0];
  if (v12)
  {
    [(SXEmbedVideoComponentView *)self reportLoadEventWithError:v12];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] unknownError];
    [(SXEmbedVideoComponentView *)self reportLoadEventWithError:v11];
  }
}

- (id)webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6
{
  v7 = a5;
  v8 = [SXLinkAction alloc];
  v9 = [v7 request];

  v10 = [v9 URL];
  v11 = [(SXLinkAction *)v8 initWithURL:v10];

  v12 = [(SXEmbedVideoComponentView *)self actionHandler];
  v13 = [(SXEmbedVideoComponentView *)self webView];
  [v13 frame];
  [v12 handleAction:v11 sourceView:self sourceRect:0 invocationType:?];

  return 0;
}

- (void)_webViewWebProcessDidCrash:(id)a3
{
  v4 = a3;
  v5 = [(SXEmbedVideoComponentView *)self webView];

  if (v5 == v4)
  {
    v6 = [(SXEmbedVideoComponentView *)self webCrashRetryThrottler];
    v7 = [v6 shouldReloadAfterWebProcessCrash];

    if (v7)
    {
      v9 = [(SXComponentView *)self component];
      v8 = [v9 URL];
      [(SXEmbedVideoComponentView *)self initializeWebViewWithURL:v8];
    }
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__SXEmbedVideoComponentView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v12[3] = &unk_1E8501F28;
  v9 = v7;
  v13 = v9;
  v14 = self;
  v10 = v8;
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

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SXEmbedVideoComponentView_webView_didFinishNavigation___block_invoke;
  v5[3] = &unk_1E84FED18;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:{a4, 0.15}];
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

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  if (a5)
  {
    [(SXEmbedVideoComponentView *)self handleError:a5, a4];
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  if (a5)
  {
    [(SXEmbedVideoComponentView *)self handleError:a5, a4];
  }
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SXEmbedVideoComponentView *)self proxyAuthenticationHandler];
  [v9 handleAuthenticationChallenge:v8 completion:v7];
}

- (BOOL)allowHierarchyRemoval
{
  v5.receiver = self;
  v5.super_class = SXEmbedVideoComponentView;
  v3 = [(SXComponentView *)&v5 allowHierarchyRemoval];
  return ![(SXEmbedVideoComponentView *)self isPresentingFullscreen]& v3;
}

- (void)webViewEnteredFullscreen:(id)a3
{
  [(SXEmbedVideoComponentView *)self setIsPresentingFullscreen:1];
  v4 = [(SXComponentView *)self presentationDelegate];
  [v4 willReturnToFullscreenForComponent:self];
}

- (void)webViewExitedFullscreen:(id)a3
{
  [(SXEmbedVideoComponentView *)self setIsPresentingFullscreen:0];
  v4 = [(SXComponentView *)self presentationDelegate];
  [v4 willDismissFullscreenCanvasForComponent:self];
}

- (void)reportLoadEventWithError:(id)a3
{
  v9 = a3;
  v4 = [(SXEmbedVideoComponentView *)self loadEvent];

  if (v4)
  {
    v5 = [(SXEmbedVideoComponentView *)self loadEvent];
    [v5 setError:v9];

    v6 = [(SXEmbedVideoComponentView *)self loadEvent];
    [v6 determineEndDate];

    v7 = [(SXMediaComponentView *)self analyticsReporting];
    v8 = [(SXEmbedVideoComponentView *)self loadEvent];
    [v7 reportEvent:v8];

    [(SXEmbedVideoComponentView *)self setLoadEvent:0];
  }
}

@end