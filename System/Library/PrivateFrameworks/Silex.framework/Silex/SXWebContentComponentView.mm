@interface SXWebContentComponentView
- (SXWebContentComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory containerViewController:(id)controller configurationProvider:(id)configurationProvider navigationManager:(id)manager analyticsReporting:(id)self0 componentExposureMonitor:(id)self1 interactionManagerFactory:(id)self2 reachabilityProvider:(id)self3 resourceDataSource:(id)self4 loadingPolicyProvider:(id)self5 dataSourceProvider:(id)self6 layoutInvalidator:(id)self7;
- (id)createDisabledState;
- (id)createErrorState;
- (id)createLoadingState;
- (id)createPresentationState;
- (id)createStateMachine;
- (id)foregroundColor:(int64_t)color;
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
- (void)loadComponent:(id)component;
- (void)loadWebContent;
- (void)presentComponentWithChanges:(id)changes;
- (void)presentWithHeight:(double)height;
- (void)reachabilityChanged:(BOOL)changed;
- (void)reloadWebContent;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
@end

@implementation SXWebContentComponentView

- (SXWebContentComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory containerViewController:(id)controller configurationProvider:(id)configurationProvider navigationManager:(id)manager analyticsReporting:(id)self0 componentExposureMonitor:(id)self1 interactionManagerFactory:(id)self2 reachabilityProvider:(id)self3 resourceDataSource:(id)self4 loadingPolicyProvider:(id)self5 dataSourceProvider:(id)self6 layoutInvalidator:(id)self7
{
  providerCopy = provider;
  viewportCopy = viewport;
  delegateCopy = delegate;
  factoryCopy = factory;
  controllerCopy = controller;
  configurationProviderCopy = configurationProvider;
  managerCopy = manager;
  reportingCopy = reporting;
  monitorCopy = monitor;
  managerFactoryCopy = managerFactory;
  reachabilityProviderCopy = reachabilityProvider;
  sourceCopy = source;
  policyProviderCopy = policyProvider;
  sourceProviderCopy = sourceProvider;
  invalidatorCopy = invalidator;
  v52.receiver = self;
  v52.super_class = SXWebContentComponentView;
  v47 = viewportCopy;
  v26 = [(SXComponentView *)&v52 initWithDOMObjectProvider:providerCopy viewport:viewportCopy presentationDelegate:delegateCopy componentStyleRendererFactory:factoryCopy];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_containerViewController, controller);
    objc_storeStrong(&v27->_configurationProvider, configurationProvider);
    objc_storeStrong(&v27->_componentExposureMonitor, monitor);
    objc_storeStrong(&v27->_navigationManager, manager);
    objc_storeStrong(&v27->_analyticsReporting, reporting);
    v28 = [managerFactoryCopy interactionManagerForComponentView:v27];
    interactionManager = v27->_interactionManager;
    v27->_interactionManager = v28;

    objc_storeStrong(&v27->_reachabilityProvider, reachabilityProvider);
    objc_storeStrong(&v27->_resourceDataSource, source);
    objc_storeStrong(&v27->_loadingPolicyProvider, policyProvider);
    objc_storeStrong(&v27->_dataSourceProvider, sourceProvider);
    objc_storeStrong(&v27->_layoutInvalidator, invalidator);
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
  contentView = [(SXComponentView *)self contentView];
  loadingIndicator = [(SXWebContentComponentView *)self loadingIndicator];
  [contentView addSubview:loadingIndicator];

  [(SXWebContentComponentView *)self configureViewController];
  createStateMachine = [(SXWebContentComponentView *)self createStateMachine];
  stateMachine = self->_stateMachine;
  self->_stateMachine = createStateMachine;

  [(SXWebContentComponentView *)self configurePresentationManager];
  [(SXWebContentComponentView *)self configureErrorProvider];
  [(SXWebContentComponentView *)self configureConfigurationProvider];
  stateMachine = [(SXWebContentComponentView *)self stateMachine];
  [stateMachine activate];
}

- (void)loadComponent:(id)component
{
  v12.receiver = self;
  v12.super_class = SXWebContentComponentView;
  [(SXComponentView *)&v12 loadComponent:component];
  loadingIndicator = [(SXWebContentComponentView *)self loadingIndicator];
  traitCollection = [(SXWebContentComponentView *)self traitCollection];
  v6 = -[SXWebContentComponentView foregroundColor:](self, "foregroundColor:", [traitCollection userInterfaceStyle]);
  [loadingIndicator setColor:v6];

  loadingPolicyProvider = [(SXWebContentComponentView *)self loadingPolicyProvider];
  loadingPolicy = [loadingPolicyProvider loadingPolicy];

  if (loadingPolicy == 2)
  {
    stateMachine = [(SXWebContentComponentView *)self stateMachine];
    v10 = [stateMachine fireEventWithName:@"disable" withContext:0];
  }

  else
  {
    [(SXWebContentComponentView *)self loadWebContent];
    viewport = [(SXComponentView *)self viewport];
    [viewport addViewportChangeListener:self forOptions:8];

    [(SXWebContentComponentView *)self configureComponentExposureMonitor];
  }
}

- (void)configureComponentExposureMonitor
{
  objc_initWeak(&location, self);
  componentExposureMonitor = [(SXWebContentComponentView *)self componentExposureMonitor];
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
  [componentExposureMonitor onExposureOf:self then:v6 when:v4];

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
  component = [(SXComponentView *)self component];
  resourceIdentifier = [component resourceIdentifier];

  if (!resourceIdentifier)
  {
    component2 = [(SXComponentView *)self component];
    v20 = [component2 URL];

    if (!v20)
    {
      return;
    }

    containerViewController = [(SXWebContentComponentView *)self containerViewController];
    component3 = [(SXComponentView *)self component];
    containerViewController2 = [component3 URL];
    containerViewController3 = containerViewController;
    v18 = containerViewController2;
    goto LABEL_8;
  }

  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component4 = [(SXComponentView *)self component];
  resourceIdentifier2 = [component4 resourceIdentifier];
  containerViewController = [dOMObjectProvider resourceForIdentifier:resourceIdentifier2];

  hTML = [containerViewController HTML];
  if (hTML)
  {
    v9 = hTML;
    loadingPolicyProvider = [(SXWebContentComponentView *)self loadingPolicyProvider];
    loadingPolicy = [loadingPolicyProvider loadingPolicy];

    if (loadingPolicy != 1)
    {
      resourceDataSource = [(SXWebContentComponentView *)self resourceDataSource];
      baseURL = [containerViewController baseURL];
      v23 = [resourceDataSource translateURL:baseURL];
      component3 = [v23 URLByAppendingPathComponent:&stru_1F532F6C0];

      containerViewController2 = [(SXWebContentComponentView *)self containerViewController];
      hTML2 = [containerViewController HTML];
      [containerViewController2 loadHTMLString:hTML2 baseURL:component3];

      goto LABEL_10;
    }
  }

  v12 = [containerViewController URL];

  if (v12)
  {
    resourceDataSource2 = [(SXWebContentComponentView *)self resourceDataSource];
    v14 = [containerViewController URL];
    component3 = [resourceDataSource2 translateURL:v14];

    containerViewController3 = [(SXWebContentComponentView *)self containerViewController];
    containerViewController2 = containerViewController3;
    v18 = component3;
LABEL_8:
    [containerViewController3 loadURL:v18];
LABEL_10:
  }
}

- (void)configureViewController
{
  containerViewController = [(SXWebContentComponentView *)self containerViewController];
  view = [containerViewController view];
  [view setHidden:1];

  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  presentingContentViewController = [presentationDelegate presentingContentViewController];

  containerViewController2 = [(SXWebContentComponentView *)self containerViewController];
  [presentingContentViewController addChildViewController:containerViewController2];

  contentView = [(SXComponentView *)self contentView];
  containerViewController3 = [(SXWebContentComponentView *)self containerViewController];
  view2 = [containerViewController3 view];
  [contentView addSubview:view2];

  containerViewController4 = [(SXWebContentComponentView *)self containerViewController];
  [containerViewController4 didMoveToParentViewController:presentingContentViewController];
}

- (void)configurePresentationManager
{
  objc_initWeak(&location, self);
  containerViewController = [(SXWebContentComponentView *)self containerViewController];
  presentationManager = [containerViewController presentationManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__SXWebContentComponentView_configurePresentationManager__block_invoke;
  v9[3] = &unk_1E85005E8;
  objc_copyWeak(&v10, &location);
  [presentationManager onPresentable:v9];

  containerViewController2 = [(SXWebContentComponentView *)self containerViewController];
  presentationManager2 = [containerViewController2 presentationManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SXWebContentComponentView_configurePresentationManager__block_invoke_2;
  v7[3] = &unk_1E84FEC28;
  objc_copyWeak(&v8, &location);
  [presentationManager2 onLoad:v7];

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
  containerViewController = [(SXWebContentComponentView *)self containerViewController];
  errorProvider = [containerViewController errorProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SXWebContentComponentView_configureErrorProvider__block_invoke;
  v5[3] = &unk_1E8500610;
  objc_copyWeak(&v6, &location);
  [errorProvider onError:v5];

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
  dataSourceProvider = [(SXWebContentComponentView *)self dataSourceProvider];
  component = [(SXComponentView *)self component];
  dataSourceReferences = [component dataSourceReferences];
  nSDictionary = [dataSourceReferences NSDictionary];
  v7 = [dataSourceProvider dataSourcesForReferences:nSDictionary];

  configurationProvider = [(SXWebContentComponentView *)self configurationProvider];
  component2 = [(SXComponentView *)self component];
  v10 = [component2 URL];
  v11 = [configurationProvider configurationForSize:v7 dataSources:v10 sourceURL:{0.0, 0.0}];

  containerViewController = [(SXWebContentComponentView *)self containerViewController];
  [containerViewController setConfiguration:v11];

  objc_initWeak(&location, self);
  configurationProvider2 = [(SXWebContentComponentView *)self configurationProvider];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__SXWebContentComponentView_configureConfigurationProvider__block_invoke;
  v15[3] = &unk_1E8500638;
  objc_copyWeak(&v17, &location);
  v14 = v7;
  v16 = v14;
  [configurationProvider2 onChange:v15];

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

- (void)presentComponentWithChanges:(id)changes
{
  var0 = changes.var0;
  changesCopy = changes;
  v30.receiver = self;
  v30.super_class = SXWebContentComponentView;
  [(SXComponentView *)&v30 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  if (var0)
  {
    [(SXWebContentComponentView *)self layout];
    [(SXWebContentComponentView *)self reloadWebContent];
  }

  invalidationPromise = [(SXWebContentComponentView *)self invalidationPromise];

  if (invalidationPromise)
  {
    v6 = [MEMORY[0x1E696B098] value:&changesCopy withObjCType:"{?=BBB}"];
    invalidationPromise2 = [(SXWebContentComponentView *)self invalidationPromise];
    resolve = [invalidationPromise2 resolve];
    (resolve)[2](resolve, v6);

    [(SXWebContentComponentView *)self setInvalidationPromise:0];
  }

  dataSourceProvider = [(SXWebContentComponentView *)self dataSourceProvider];
  component = [(SXComponentView *)self component];
  dataSourceReferences = [component dataSourceReferences];
  nSDictionary = [dataSourceReferences NSDictionary];
  v13 = [dataSourceProvider dataSourcesForReferences:nSDictionary];

  documentColumnLayout = [(SXComponentView *)self documentColumnLayout];
  [documentColumnLayout contentScaleFactor];
  v16 = v15;

  containerViewController = [(SXWebContentComponentView *)self containerViewController];
  scaleManager = [containerViewController scaleManager];
  [scaleManager setScale:v16];

  [(SXComponentView *)self contentFrame];
  v26 = v20;
  v27 = v19;
  CGAffineTransformMakeScale(&v29, 1.0 / v16, 1.0 / v16);
  v28 = vmlaq_n_f64(vmulq_n_f64(*&v29.c, v26), *&v29.a, v27);
  configurationProvider = [(SXWebContentComponentView *)self configurationProvider];
  component2 = [(SXComponentView *)self component];
  v23 = [component2 URL];
  v24 = [configurationProvider configurationForSize:v13 dataSources:v23 sourceURL:*&v28];

  containerViewController2 = [(SXWebContentComponentView *)self containerViewController];
  [containerViewController2 setConfiguration:v24];
}

- (void)reloadWebContent
{
  stateMachine = [(SXWebContentComponentView *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"reload" withContext:0];
}

- (void)presentWithHeight:(double)height
{
  [(SXComponentView *)self contentFrame];
  v5 = CGRectGetHeight(v17) - height;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 >= 2.22044605e-16)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69B68F0]);
    [(SXWebContentComponentView *)self setInvalidationPromise:v7];

    invalidationPromise = [(SXWebContentComponentView *)self invalidationPromise];
    promise = [invalidationPromise promise];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__SXWebContentComponentView_presentWithHeight___block_invoke;
    v15[3] = &unk_1E8500660;
    v15[4] = self;
    *&v15[5] = height;
    v10 = [promise then:v15];

    layoutInvalidator = [(SXWebContentComponentView *)self layoutInvalidator];
    component = [(SXComponentView *)self component];
    [(SXComponentView *)self contentFrame];
    v13 = [layoutInvalidator invalidateComponent:component suggestedSize:{CGRectGetWidth(v18), height}];
  }

  else
  {
    stateMachine = [(SXWebContentComponentView *)self stateMachine];
    v6 = [stateMachine fireEventWithName:@"present" withContext:0];
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
  createLoadingState = [(SXWebContentComponentView *)self createLoadingState];
  createPresentationState = [(SXWebContentComponentView *)self createPresentationState];
  createErrorState = [(SXWebContentComponentView *)self createErrorState];
  createDisabledState = [(SXWebContentComponentView *)self createDisabledState];
  v6 = objc_alloc(MEMORY[0x1E69B6910]);
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{createLoadingState, createErrorState, 0}];
  v8 = [v6 initWithName:@"present" transitionFromStates:v7 toState:createPresentationState];

  v9 = objc_alloc(MEMORY[0x1E69B6910]);
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{createLoadingState, createPresentationState, 0}];
  v11 = [v9 initWithName:@"error" transitionFromStates:v10 toState:createErrorState];

  v12 = objc_alloc(MEMORY[0x1E69B6910]);
  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{createPresentationState, 0}];
  v14 = [v12 initWithName:@"reload" transitionFromStates:v13 toState:createLoadingState];

  v15 = objc_alloc(MEMORY[0x1E69B6910]);
  v16 = [MEMORY[0x1E695DFD8] setWithObjects:{createLoadingState, createPresentationState, createErrorState, 0}];
  v17 = [v15 initWithName:@"disable" transitionFromStates:v16 toState:createDisabledState];

  v18 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:createLoadingState withOwner:self];
  [v18 addState:createPresentationState];
  [v18 addState:createErrorState];
  [v18 addState:createDisabledState];
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
  loadingIndicator = [(SXWebContentComponentView *)self loadingIndicator];
  [(SXComponentView *)self contentFrame];
  MidX = CGRectGetMidX(v6);
  [(SXComponentView *)self contentFrame];
  [loadingIndicator setCenter:{MidX, CGRectGetMidY(v7)}];
}

- (void)layoutWebView
{
  containerViewController = [(SXWebContentComponentView *)self containerViewController];
  view = [containerViewController view];
  [(SXComponentView *)self contentFrame];
  [view setFrame:?];
}

- (void)layoutErrorView
{
  errorLabel = [(SXWebContentComponentView *)self errorLabel];
  [(SXComponentView *)self contentFrame];
  MidX = CGRectGetMidX(v6);
  [(SXComponentView *)self contentFrame];
  [errorLabel setCenter:{MidX, CGRectGetMidY(v7)}];
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  v5 = [(SXComponentView *)self viewport:viewport];
  appearState = [v5 appearState];

  if (appearState == 2)
  {
    containerViewController = [(SXWebContentComponentView *)self containerViewController];
    presentationManager = [containerViewController presentationManager];
    [presentationManager refresh];
  }
}

- (void)reachabilityChanged:(BOOL)changed
{
  if (changed)
  {
    [(SXWebContentComponentView *)self loadWebContent];
    reachabilityProvider = [(SXWebContentComponentView *)self reachabilityProvider];
    [reachabilityProvider removeReachabilityObserver:self];
  }
}

- (id)foregroundColor:(int64_t)color
{
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  v6 = [dOMObjectProvider componentStyleForComponent:component];

  if (v6)
  {
    backgroundColor = [v6 backgroundColor];
    [backgroundColor _luminance];
    if (v8 > 0.7)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    labelColor = ;
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return labelColor;
}

@end