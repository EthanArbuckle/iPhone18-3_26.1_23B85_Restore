@interface SXWebContentComponentView
- (SXWebContentComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 containerViewController:(id)a7 configurationProvider:(id)a8 navigationManager:(id)a9 analyticsReporting:(id)a10 componentExposureMonitor:(id)a11 interactionManagerFactory:(id)a12 reachabilityProvider:(id)a13 resourceDataSource:(id)a14 loadingPolicyProvider:(id)a15 dataSourceProvider:(id)a16 layoutInvalidator:(id)a17;
- (id)createDisabledState;
- (id)createErrorState;
- (id)createLoadingState;
- (id)createPresentationState;
- (id)createStateMachine;
- (id)foregroundColor:(int64_t)a3;
- (void)configure;
- (void)configureComponentExposureMonitor;
- (void)configureConfigurationProvider;
- (void)configureErrorProvider;
- (void)configurePresentationManager;
- (void)configureViewController;
- (void)layout;
- (void)layoutErrorView;
- (void)layoutLoadingIndicator;
- (void)layoutSubviews;
- (void)layoutWebView;
- (void)loadComponent:(id)a3;
- (void)loadWebContent;
- (void)presentComponentWithChanges:(id)a3;
- (void)presentWithHeight:(double)a3;
- (void)reachabilityChanged:(BOOL)a3;
- (void)reloadWebContent;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
@end

@implementation SXWebContentComponentView

- (SXWebContentComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 containerViewController:(id)a7 configurationProvider:(id)a8 navigationManager:(id)a9 analyticsReporting:(id)a10 componentExposureMonitor:(id)a11 interactionManagerFactory:(id)a12 reachabilityProvider:(id)a13 resourceDataSource:(id)a14 loadingPolicyProvider:(id)a15 dataSourceProvider:(id)a16 layoutInvalidator:(id)a17
{
  v48 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v44 = a7;
  v43 = a8;
  v42 = a9;
  v41 = a10;
  v40 = a11;
  v25 = a12;
  v45 = a13;
  v39 = a14;
  v38 = a15;
  v37 = a16;
  v36 = a17;
  v52.receiver = self;
  v52.super_class = SXWebContentComponentView;
  v47 = v22;
  v26 = [(SXComponentView *)&v52 initWithDOMObjectProvider:v48 viewport:v22 presentationDelegate:v23 componentStyleRendererFactory:v24];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_containerViewController, a7);
    objc_storeStrong(&v27->_configurationProvider, a8);
    objc_storeStrong(&v27->_componentExposureMonitor, a11);
    objc_storeStrong(&v27->_navigationManager, a9);
    objc_storeStrong(&v27->_analyticsReporting, a10);
    v28 = [v25 interactionManagerForComponentView:v27];
    interactionManager = v27->_interactionManager;
    v27->_interactionManager = v28;

    objc_storeStrong(&v27->_reachabilityProvider, a13);
    objc_storeStrong(&v27->_resourceDataSource, a14);
    objc_storeStrong(&v27->_loadingPolicyProvider, a15);
    objc_storeStrong(&v27->_dataSourceProvider, a16);
    objc_storeStrong(&v27->_layoutInvalidator, a17);
    v30 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v27 action:sel_handleTap_];
    tapGestureRecognizer = v27->_tapGestureRecognizer;
    v27->_tapGestureRecognizer = v30;

    objc_initWeak(&location, v27);
    navigationManager = v27->_navigationManager;
    v33 = objc_alloc(MEMORY[0x1E69CE198]);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __348__SXWebContentComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_containerViewController_configurationProvider_navigationManager_analyticsReporting_componentExposureMonitor_interactionManagerFactory_reachabilityProvider_resourceDataSource_loadingPolicyProvider_dataSourceProvider_layoutInvalidator___block_invoke;
    v49[3] = &unk_1E8500570;
    objc_copyWeak(&v50, &location);
    v34 = [v33 initWithBlock:v49];
    [(SWNavigationManager *)navigationManager addObserver:v34];

    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
  }

  return v27;
}

void __348__SXWebContentComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_containerViewController_configurationProvider_navigationManager_analyticsReporting_componentExposureMonitor_interactionManagerFactory_reachabilityProvider_resourceDataSource_loadingPolicyProvider_dataSourceProvider_layoutInvalidator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SXWebContentLinkTapEvent alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained component];
  v7 = [v6 URL];
  v8 = [v7 absoluteString];
  v11 = [(SXWebContentLinkTapEvent *)v4 initWithIdentifier:v8 destinationURL:v3];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 analyticsReporting];
  [v10 reportEvent:v11];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SXWebContentComponentView;
  [(SXWebContentComponentView *)&v3 layoutSubviews];
  [(SXWebContentComponentView *)self layout];
}

- (void)configure
{
  v10.receiver = self;
  v10.super_class = SXWebContentComponentView;
  [(SXComponentView *)&v10 configure];
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  loadingIndicator = self->_loadingIndicator;
  self->_loadingIndicator = v3;

  [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];
  v5 = [(SXComponentView *)self contentView];
  v6 = [(SXWebContentComponentView *)self loadingIndicator];
  [v5 addSubview:v6];

  [(SXWebContentComponentView *)self configureViewController];
  v7 = [(SXWebContentComponentView *)self createStateMachine];
  stateMachine = self->_stateMachine;
  self->_stateMachine = v7;

  [(SXWebContentComponentView *)self configurePresentationManager];
  [(SXWebContentComponentView *)self configureErrorProvider];
  [(SXWebContentComponentView *)self configureConfigurationProvider];
  v9 = [(SXWebContentComponentView *)self stateMachine];
  [v9 activate];
}

- (void)loadComponent:(id)a3
{
  v12.receiver = self;
  v12.super_class = SXWebContentComponentView;
  [(SXComponentView *)&v12 loadComponent:a3];
  v4 = [(SXWebContentComponentView *)self loadingIndicator];
  v5 = [(SXWebContentComponentView *)self traitCollection];
  v6 = -[SXWebContentComponentView foregroundColor:](self, "foregroundColor:", [v5 userInterfaceStyle]);
  [v4 setColor:v6];

  v7 = [(SXWebContentComponentView *)self loadingPolicyProvider];
  v8 = [v7 loadingPolicy];

  if (v8 == 2)
  {
    v9 = [(SXWebContentComponentView *)self stateMachine];
    v10 = [v9 fireEventWithName:@"disable" withContext:0];
  }

  else
  {
    [(SXWebContentComponentView *)self loadWebContent];
    v11 = [(SXComponentView *)self viewport];
    [v11 addViewportChangeListener:self forOptions:8];

    [(SXWebContentComponentView *)self configureComponentExposureMonitor];
  }
}

- (void)configureComponentExposureMonitor
{
  objc_initWeak(&location, self);
  v3 = [(SXWebContentComponentView *)self componentExposureMonitor];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SXWebContentComponentView_configureComponentExposureMonitor__block_invoke;
  v6[3] = &unk_1E8500598;
  objc_copyWeak(&v7, &location);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__SXWebContentComponentView_configureComponentExposureMonitor__block_invoke_2;
  v4[3] = &unk_1E85005C0;
  objc_copyWeak(&v5, &location);
  [v3 onExposureOf:self then:v6 when:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __62__SXWebContentComponentView_configureComponentExposureMonitor__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2 == 2)
    {
      v11 = WeakRetained;
      v7 = [WeakRetained componentExposureEvent];

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_8;
      }

      v8 = [v11 componentExposureEvent];
      [v8 determineEndDate];

      v9 = [v11 analyticsReporting];
      v10 = [v11 componentExposureEvent];
      [v9 reportEvent:v10];

      [v11 setComponentExposureEvent:0];
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_8;
      }

      v11 = WeakRetained;
      v4 = [SXWebContentComponentExposureEvent alloc];
      v5 = [v11 component];
      v6 = [(SXWebContentComponentExposureEvent *)v4 initWithComponent:v5];
      [v11 setComponentExposureEvent:v6];
    }

    WeakRetained = v11;
  }

LABEL_8:
}

BOOL __62__SXWebContentComponentView_configureComponentExposureMonitor__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained containerViewController];
  v3 = [v2 presentationManager];
  v4 = [v3 presentationState] == 1;

  return v4;
}

- (void)loadWebContent
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 resourceIdentifier];

  if (!v4)
  {
    v19 = [(SXComponentView *)self component];
    v20 = [v19 URL];

    if (!v20)
    {
      return;
    }

    v25 = [(SXWebContentComponentView *)self containerViewController];
    v15 = [(SXComponentView *)self component];
    v17 = [v15 URL];
    v16 = v25;
    v18 = v17;
    goto LABEL_8;
  }

  v5 = [(SXComponentView *)self DOMObjectProvider];
  v6 = [(SXComponentView *)self component];
  v7 = [v6 resourceIdentifier];
  v25 = [v5 resourceForIdentifier:v7];

  v8 = [v25 HTML];
  if (v8)
  {
    v9 = v8;
    v10 = [(SXWebContentComponentView *)self loadingPolicyProvider];
    v11 = [v10 loadingPolicy];

    if (v11 != 1)
    {
      v21 = [(SXWebContentComponentView *)self resourceDataSource];
      v22 = [v25 baseURL];
      v23 = [v21 translateURL:v22];
      v15 = [v23 URLByAppendingPathComponent:&stru_1F532F6C0];

      v17 = [(SXWebContentComponentView *)self containerViewController];
      v24 = [v25 HTML];
      [v17 loadHTMLString:v24 baseURL:v15];

      goto LABEL_10;
    }
  }

  v12 = [v25 URL];

  if (v12)
  {
    v13 = [(SXWebContentComponentView *)self resourceDataSource];
    v14 = [v25 URL];
    v15 = [v13 translateURL:v14];

    v16 = [(SXWebContentComponentView *)self containerViewController];
    v17 = v16;
    v18 = v15;
LABEL_8:
    [v16 loadURL:v18];
LABEL_10:
  }
}

- (void)configureViewController
{
  v3 = [(SXWebContentComponentView *)self containerViewController];
  v4 = [v3 view];
  [v4 setHidden:1];

  v5 = [(SXComponentView *)self presentationDelegate];
  v11 = [v5 presentingContentViewController];

  v6 = [(SXWebContentComponentView *)self containerViewController];
  [v11 addChildViewController:v6];

  v7 = [(SXComponentView *)self contentView];
  v8 = [(SXWebContentComponentView *)self containerViewController];
  v9 = [v8 view];
  [v7 addSubview:v9];

  v10 = [(SXWebContentComponentView *)self containerViewController];
  [v10 didMoveToParentViewController:v11];
}

- (void)configurePresentationManager
{
  objc_initWeak(&location, self);
  v3 = [(SXWebContentComponentView *)self containerViewController];
  v4 = [v3 presentationManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__SXWebContentComponentView_configurePresentationManager__block_invoke;
  v9[3] = &unk_1E85005E8;
  objc_copyWeak(&v10, &location);
  [v4 onPresentable:v9];

  v5 = [(SXWebContentComponentView *)self containerViewController];
  v6 = [v5 presentationManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SXWebContentComponentView_configurePresentationManager__block_invoke_2;
  v7[3] = &unk_1E84FEC28;
  objc_copyWeak(&v8, &location);
  [v6 onLoad:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__SXWebContentComponentView_configurePresentationManager__block_invoke(uint64_t a1, double a2)
{
  if (a2 != 1.79769313e308)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained documentColumnLayout];
    [v5 contentScaleFactor];
    v7 = round(v6 * a2);

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 presentWithHeight:v7];
  }
}

void __57__SXWebContentComponentView_configurePresentationManager__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  v2 = [v1 fireEventWithName:@"reload" withContext:0];
}

- (void)configureErrorProvider
{
  objc_initWeak(&location, self);
  v3 = [(SXWebContentComponentView *)self containerViewController];
  v4 = [v3 errorProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SXWebContentComponentView_configureErrorProvider__block_invoke;
  v5[3] = &unk_1E8500610;
  objc_copyWeak(&v6, &location);
  [v4 onError:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __51__SXWebContentComponentView_configureErrorProvider__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateMachine];
  v5 = [v4 fireEventWithName:@"error" withContext:0];

  v6 = [v8 domain];
  if ([v6 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v7 = [v8 code];

    if (v7 != -1009)
    {
      goto LABEL_5;
    }

    v6 = [WeakRetained reachabilityProvider];
    [v6 addReachabilityObserver:WeakRetained];
  }

LABEL_5:
}

- (void)configureConfigurationProvider
{
  v3 = [(SXWebContentComponentView *)self dataSourceProvider];
  v4 = [(SXComponentView *)self component];
  v5 = [v4 dataSourceReferences];
  v6 = [v5 NSDictionary];
  v7 = [v3 dataSourcesForReferences:v6];

  v8 = [(SXWebContentComponentView *)self configurationProvider];
  v9 = [(SXComponentView *)self component];
  v10 = [v9 URL];
  v11 = [v8 configurationForSize:v7 dataSources:v10 sourceURL:{0.0, 0.0}];

  v12 = [(SXWebContentComponentView *)self containerViewController];
  [v12 setConfiguration:v11];

  objc_initWeak(&location, self);
  v13 = [(SXWebContentComponentView *)self configurationProvider];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__SXWebContentComponentView_configureConfigurationProvider__block_invoke;
  v15[3] = &unk_1E8500638;
  objc_copyWeak(&v17, &location);
  v14 = v7;
  v16 = v14;
  [v13 onChange:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __59__SXWebContentComponentView_configureConfigurationProvider__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained configurationProvider];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 contentFrame];
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 32);
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 component];
  v12 = [v11 URL];
  v15 = [v3 configurationForSize:v9 dataSources:v12 sourceURL:{v6, v8}];

  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 containerViewController];
  [v14 setConfiguration:v15];
}

- (void)presentComponentWithChanges:(id)a3
{
  var0 = a3.var0;
  v31 = a3;
  v30.receiver = self;
  v30.super_class = SXWebContentComponentView;
  [(SXComponentView *)&v30 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  if (var0)
  {
    [(SXWebContentComponentView *)self layout];
    [(SXWebContentComponentView *)self reloadWebContent];
  }

  v5 = [(SXWebContentComponentView *)self invalidationPromise];

  if (v5)
  {
    v6 = [MEMORY[0x1E696B098] value:&v31 withObjCType:"{?=BBB}"];
    v7 = [(SXWebContentComponentView *)self invalidationPromise];
    v8 = [v7 resolve];
    (v8)[2](v8, v6);

    [(SXWebContentComponentView *)self setInvalidationPromise:0];
  }

  v9 = [(SXWebContentComponentView *)self dataSourceProvider];
  v10 = [(SXComponentView *)self component];
  v11 = [v10 dataSourceReferences];
  v12 = [v11 NSDictionary];
  v13 = [v9 dataSourcesForReferences:v12];

  v14 = [(SXComponentView *)self documentColumnLayout];
  [v14 contentScaleFactor];
  v16 = v15;

  v17 = [(SXWebContentComponentView *)self containerViewController];
  v18 = [v17 scaleManager];
  [v18 setScale:v16];

  [(SXComponentView *)self contentFrame];
  v26 = v20;
  v27 = v19;
  CGAffineTransformMakeScale(&v29, 1.0 / v16, 1.0 / v16);
  v28 = vmlaq_n_f64(vmulq_n_f64(*&v29.c, v26), *&v29.a, v27);
  v21 = [(SXWebContentComponentView *)self configurationProvider];
  v22 = [(SXComponentView *)self component];
  v23 = [v22 URL];
  v24 = [v21 configurationForSize:v13 dataSources:v23 sourceURL:*&v28];

  v25 = [(SXWebContentComponentView *)self containerViewController];
  [v25 setConfiguration:v24];
}

- (void)reloadWebContent
{
  v3 = [(SXWebContentComponentView *)self stateMachine];
  v2 = [v3 fireEventWithName:@"reload" withContext:0];
}

- (void)presentWithHeight:(double)a3
{
  [(SXComponentView *)self contentFrame];
  v5 = CGRectGetHeight(v17) - a3;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 >= 2.22044605e-16)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69B68F0]);
    [(SXWebContentComponentView *)self setInvalidationPromise:v7];

    v8 = [(SXWebContentComponentView *)self invalidationPromise];
    v9 = [v8 promise];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__SXWebContentComponentView_presentWithHeight___block_invoke;
    v15[3] = &unk_1E8500660;
    v15[4] = self;
    *&v15[5] = a3;
    v10 = [v9 then:v15];

    v11 = [(SXWebContentComponentView *)self layoutInvalidator];
    v12 = [(SXComponentView *)self component];
    [(SXComponentView *)self contentFrame];
    v13 = [v11 invalidateComponent:v12 suggestedSize:{CGRectGetWidth(v18), a3}];
  }

  else
  {
    v14 = [(SXWebContentComponentView *)self stateMachine];
    v6 = [v14 fireEventWithName:@"present" withContext:0];
  }
}

uint64_t __47__SXWebContentComponentView_presentWithHeight___block_invoke(uint64_t a1, void *a2)
{
  v10 = 0;
  v9 = 0;
  [a2 getValue:&v9];
  if (v9 != 1)
  {
    goto LABEL_6;
  }

  [*(a1 + 32) contentFrame];
  v3 = CGRectGetHeight(v11) - *(a1 + 40);
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v3 > 2.22044605e-16)
  {
    [*(a1 + 32) presentWithHeight:?];
  }

  else
  {
LABEL_6:
    v4 = [*(a1 + 32) layoutInvalidator];
    v5 = [*(a1 + 32) component];
    [v4 cancelPendingInvalidationForComponent:v5];

    v6 = [*(a1 + 32) stateMachine];
    v7 = [v6 fireEventWithName:@"present" withContext:0];
  }

  return 0;
}

- (id)createStateMachine
{
  v3 = [(SXWebContentComponentView *)self createLoadingState];
  v4 = [(SXWebContentComponentView *)self createPresentationState];
  v5 = [(SXWebContentComponentView *)self createErrorState];
  v20 = [(SXWebContentComponentView *)self createDisabledState];
  v6 = objc_alloc(MEMORY[0x1E69B6910]);
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{v3, v5, 0}];
  v8 = [v6 initWithName:@"present" transitionFromStates:v7 toState:v4];

  v9 = objc_alloc(MEMORY[0x1E69B6910]);
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{v3, v4, 0}];
  v11 = [v9 initWithName:@"error" transitionFromStates:v10 toState:v5];

  v12 = objc_alloc(MEMORY[0x1E69B6910]);
  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{v4, 0}];
  v14 = [v12 initWithName:@"reload" transitionFromStates:v13 toState:v3];

  v15 = objc_alloc(MEMORY[0x1E69B6910]);
  v16 = [MEMORY[0x1E695DFD8] setWithObjects:{v3, v4, v5, 0}];
  v17 = [v15 initWithName:@"disable" transitionFromStates:v16 toState:v20];

  v18 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v3 withOwner:self];
  [v18 addState:v4];
  [v18 addState:v5];
  [v18 addState:v20];
  [v18 addEvent:v8];
  [v18 addEvent:v11];
  [v18 addEvent:v14];
  [v18 addEvent:v17];

  return v18;
}

- (id)createLoadingState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"loading"];
  v3 = [v2 onWillEnter:&__block_literal_global_44];
  v4 = [v2 onWillExit:&__block_literal_global_46_0];

  return v2;
}

void __47__SXWebContentComponentView_createLoadingState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 containerViewController];
  v5 = [v4 presentationManager];
  [v5 setPresentationState:2];

  v6 = [v3 loadingIndicator];
  [v6 startAnimating];

  v8 = [v3 layoutInvalidator];
  v7 = [v3 component];

  [v8 mightInvalidateComponent:v7];
}

void __47__SXWebContentComponentView_createLoadingState__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 loadingIndicator];
  [v3 stopAnimating];
}

- (id)createPresentationState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"presentationState"];
  v3 = [v2 onWillEnter:&__block_literal_global_51];
  v4 = [v2 onWillExit:&__block_literal_global_54];

  return v2;
}

void __52__SXWebContentComponentView_createPresentationState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 containerViewController];
  v5 = [v4 presentationManager];
  [v5 setPresentationState:1];

  v6 = [v3 componentExposureMonitor];
  [v6 conditionsChanged];

  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SXWebContentComponentView_createPresentationState__block_invoke_2;
  v9[3] = &unk_1E84FED18;
  v10 = v3;
  v8 = v3;
  [v7 animateWithDuration:v9 animations:0.15];
}

void __52__SXWebContentComponentView_createPresentationState__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) containerViewController];
  v1 = [v2 view];
  [v1 setHidden:0];
}

void __52__SXWebContentComponentView_createPresentationState__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SXWebContentComponentView_createPresentationState__block_invoke_4;
  v6[3] = &unk_1E84FED18;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0.15];
}

void __52__SXWebContentComponentView_createPresentationState__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) containerViewController];
  v1 = [v2 view];
  [v1 setHidden:1];
}

- (id)createErrorState
{
  v3 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"error"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SXWebContentComponentView_createErrorState__block_invoke;
  v7[3] = &unk_1E85006A8;
  v7[4] = self;
  v4 = [v3 onWillEnter:v7];
  v5 = [v3 onWillExit:&__block_literal_global_60];

  return v3;
}

void __45__SXWebContentComponentView_createErrorState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v4 = [v22 containerViewController];
  v5 = [v4 presentationManager];
  [v5 setPresentationState:2];

  v6 = [v22 errorLabel];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v22 setErrorLabel:v7];

    v8 = [v22 errorLabel];
    v9 = SXBundle();
    v10 = [v9 localizedStringForKey:@"SXTapToRetry" value:&stru_1F532F6C0 table:0];
    [v8 setText:v10];

    v11 = [v22 errorLabel];
    [v11 setNumberOfLines:2];

    v12 = [v22 errorLabel];
    [v12 setTextAlignment:1];

    v13 = [v22 errorLabel];
    [v13 sizeToFit];

    v14 = [v22 errorLabel];
    v15 = [*(a1 + 32) traitCollection];
    v16 = [v22 foregroundColor:{objc_msgSend(v15, "userInterfaceStyle")}];
    [v14 setTextColor:v16];

    v17 = [v22 contentView];
    v18 = [v22 errorLabel];
    [v17 addSubview:v18];
  }

  [v22 layoutErrorView];
  v19 = [v22 tapGestureRecognizer];
  [v22 addGestureRecognizer:v19];

  v20 = [v22 layoutInvalidator];
  v21 = [v22 component];
  [v20 cancelPendingInvalidationForComponent:v21];
}

void __45__SXWebContentComponentView_createErrorState__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 errorLabel];
  [v4 removeFromSuperview];

  [v3 setErrorLabel:0];
  v5 = [v3 tapGestureRecognizer];
  [v3 removeGestureRecognizer:v5];
}

- (id)createDisabledState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"disabled"];

  return v2;
}

- (void)layout
{
  [(SXWebContentComponentView *)self layoutLoadingIndicator];
  [(SXWebContentComponentView *)self layoutErrorView];
  [(SXWebContentComponentView *)self layoutWebView];

  [(SXWebContentComponentView *)self layoutIfNeeded];
}

- (void)layoutLoadingIndicator
{
  v4 = [(SXWebContentComponentView *)self loadingIndicator];
  [(SXComponentView *)self contentFrame];
  MidX = CGRectGetMidX(v6);
  [(SXComponentView *)self contentFrame];
  [v4 setCenter:{MidX, CGRectGetMidY(v7)}];
}

- (void)layoutWebView
{
  v4 = [(SXWebContentComponentView *)self containerViewController];
  v3 = [v4 view];
  [(SXComponentView *)self contentFrame];
  [v3 setFrame:?];
}

- (void)layoutErrorView
{
  v4 = [(SXWebContentComponentView *)self errorLabel];
  [(SXComponentView *)self contentFrame];
  MidX = CGRectGetMidX(v6);
  [(SXComponentView *)self contentFrame];
  [v4 setCenter:{MidX, CGRectGetMidY(v7)}];
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  v5 = [(SXComponentView *)self viewport:a3];
  v6 = [v5 appearState];

  if (v6 == 2)
  {
    v8 = [(SXWebContentComponentView *)self containerViewController];
    v7 = [v8 presentationManager];
    [v7 refresh];
  }
}

- (void)reachabilityChanged:(BOOL)a3
{
  if (a3)
  {
    [(SXWebContentComponentView *)self loadWebContent];
    v4 = [(SXWebContentComponentView *)self reachabilityProvider];
    [v4 removeReachabilityObserver:self];
  }
}

- (id)foregroundColor:(int64_t)a3
{
  v4 = [(SXComponentView *)self DOMObjectProvider];
  v5 = [(SXComponentView *)self component];
  v6 = [v4 componentStyleForComponent:v5];

  if (v6)
  {
    v7 = [v6 backgroundColor];
    [v7 _luminance];
    if (v8 > 0.7)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v9 = ;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v9;
}

@end