@interface SKUIDocumentContainerViewController
+ (BOOL)allowsChildViewControllerNavigationBarManagement;
+ (void)allowsChildViewControllerNavigationBarManagement;
- (BOOL)_shouldFillNavigationBarContentsBasedOnNavigationBarViewElement;
- (BOOL)document:(id)document evaluateStyleMediaQuery:(id)query;
- (BOOL)performTestWithName:(id)name options:(id)options;
- (BOOL)prefersNavigationBarBackgroundViewHidden;
- (BOOL)prefersNavigationBarHidden;
- (SKUIDocumentContainerViewController)initWithDocument:(id)document options:(id)options clientContext:(id)context;
- (UIScrollView)scrollingTabNestedPagingScrollView;
- (UIView)navigationPaletteView;
- (id)_navigationBarViewElement;
- (id)_newViewControllerWithTemplateElement:(id)element options:(id)options clientContext:(id)context;
- (id)_sidepackViewControllerWithOptions:(id)options clientContext:(id)context;
- (id)additionalLeftBarButtonItemForNavigationBarController:(id)controller;
- (id)additionalRightBarButtonItemForNavigationBarController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)contentScrollView;
- (id)impressionableViewElementsForDocument:(id)document;
- (id)mediaQueryEvaluator:(id)evaluator valueForKey:(id)key;
- (id)navigationBarTintColor;
- (id)navigationBarTitleTextTintColor;
- (id)pendingSizeTransitionCompletion;
- (id)scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)index;
- (int64_t)navigationBarTintAdjustmentMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_enqueueLoadURLOperation;
- (void)_finishLegacyProtocolOperationForResponse:(id)response dataProvider:(id)provider dictionary:(id)dictionary;
- (void)_finishLoadOperationWithResponse:(id)response error:(id)error;
- (void)_networkTypeChangeNotification:(id)notification;
- (void)_onReportDOMChange:(id)change;
- (void)_onReportDocumentReady:(id)ready;
- (void)_onReportPlatformJsonTimes:(id)times;
- (void)_onReportRequestTimes:(id)times;
- (void)_redirectToURL:(id)l;
- (void)_reloadDefaultBarButtonItems;
- (void)_reloadNavigationBarController;
- (void)_reloadNavigationBarControllerIfNeeded;
- (void)_reloadNavigationItemContents;
- (void)_reloadNavigationPalette;
- (void)_reloadPageData;
- (void)_reloadToolbar;
- (void)_sendOnViewAttributesChangeWithAttributes:(id)attributes viewWillAppear:(BOOL)appear;
- (void)_setChildViewController:(id)controller;
- (void)_showAccountViewControllerWithURL:(id)l;
- (void)_showLegacyStorePageWithRequest:(id)request page:(id)page pageType:(int64_t)type URLResponse:(id)response;
- (void)_skui_applicationDidEnterBackground:(id)background;
- (void)_skui_applicationWillEnterForeground:(id)foreground;
- (void)_submitPageRenderIfPossible;
- (void)dealloc;
- (void)document:(id)document runTestWithName:(id)name options:(id)options;
- (void)documentDidSendMessage:(id)message;
- (void)documentDidUpdate:(id)update;
- (void)documentScrollToTop:(id)top;
- (void)getModalSourceViewForElementIdentifier:(id)identifier completionBlock:(id)block;
- (void)loadView;
- (void)mediaQueryEvaluatorDidChange:(id)change;
- (void)reloadData;
- (void)resourceLoader:(id)loader didLoadAllForReason:(int64_t)reason;
- (void)resourceLoaderDidBeginLoading:(id)loading;
- (void)scrollingTabAppearanceStatusWasUpdated:(id)updated;
- (void)setPreferredContentSize:(CGSize)size;
- (void)skui_viewWillAppear:(BOOL)appear;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation SKUIDocumentContainerViewController

- (SKUIDocumentContainerViewController)initWithDocument:(id)document options:(id)options clientContext:(id)context
{
  documentCopy = document;
  optionsCopy = options;
  contextCopy = context;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (contextCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [SKUIDocumentContainerViewController initWithDocument:options:clientContext:];
  if (!contextCopy)
  {
LABEL_5:
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [documentCopy debugDescription];
    NSLog(&cfstr_MissingClientC.isa, v13, v14);

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    NSLog(&cfstr_DocumentOption.isa, v16, optionsCopy);
  }

LABEL_6:
  v43.receiver = self;
  v43.super_class = SKUIDocumentContainerViewController;
  v17 = [(SKUIDocumentContainerViewController *)&v43 init];
  v18 = v17;
  if (v17)
  {
    [(SKUIViewController *)v17 setClientContext:contextCopy];
    v19 = [optionsCopy objectForKey:@"sidepackType"];
    v20 = [optionsCopy objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v18->_urlString, v20);
    }

    templateElement = [documentCopy templateElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = templateElement;
      v22 = [(SKUIDocumentContainerViewController *)v18 _sidepackViewControllerWithOptions:optionsCopy clientContext:contextCopy];
      navigationItem = [(SKUIDocumentContainerViewController *)v18 navigationItem];
      [v22 _setExistingNavigationItem:navigationItem];
    }

    else if (templateElement || !v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = v18;
        v18 = 0;
        goto LABEL_27;
      }

      v25 = [(SKUIDocumentContainerViewController *)v18 _newViewControllerWithTemplateElement:templateElement options:optionsCopy clientContext:contextCopy];
      v26 = templateElement;
      navigationItem = v25;
      v40 = v26;
      if (v25)
      {
        navigationItem = v25;
        v18->_templateViewElementType = [v26 elementType];
      }

      v22 = navigationItem;
    }

    else
    {
      v40 = 0;
      v22 = objc_alloc_init(MEMORY[0x277D75D28]);
      navigationItem = [v22 view];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [navigationItem setBackgroundColor:whiteColor];
    }

    if (!v22)
    {
      v22 = v18;
      v18 = 0;
LABEL_26:
      templateElement = v40;
LABEL_27:

      goto LABEL_28;
    }

    v39 = v19;
    objc_storeStrong(&v18->_document, document);
    [(IKAppDocument *)v18->_document setDelegate:v18];
    v18->_scrollingTabAppearanceStatus.progress = 1.0;
    *&v18->_scrollingTabAppearanceStatus.isBouncingOffTheEdge = 0;
    [(SKUIDocumentContainerViewController *)v18 _setChildViewController:v22];
    v27 = [optionsCopy copy];
    presentationOptions = v18->_presentationOptions;
    v18->_presentationOptions = v27;

    [(IKAppDocument *)v18->_document onLoad];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel__skui_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v18 selector:sel_documentDidSendMessage_ name:0x2828094A8 object:v18->_document];
    applicationController = [contextCopy applicationController];
    options = [applicationController options];
    if ([options pageRenderMetricsEnabled])
    {
      v32 = [SKUIMetricsPageRenderEvent shouldCollectPageRenderDataForDocument:v18->_document];

      if (!v32)
      {
LABEL_25:

        v19 = v39;
        goto LABEL_26;
      }

      v33 = objc_alloc_init(SKUIMetricsPageRenderEvent);
      [(SKUIDocumentContainerViewController *)v18 setPageRenderEvent:v33];

      urlString = v18->_urlString;
      pageRenderEvent = [(SKUIDocumentContainerViewController *)v18 pageRenderEvent];
      [pageRenderEvent setPageURL:urlString];

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __78__SKUIDocumentContainerViewController_initWithDocument_options_clientContext___block_invoke;
      v41[3] = &unk_2781FD910;
      v36 = v18;
      v42 = v36;
      [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:v41];
      v37 = objc_alloc_init(SKUIMetricsDOMChangeQueue);
      [(SKUIDocumentContainerViewController *)v36 setDomChangeTimingQueue:v37];

      applicationController = v42;
    }

    else
    {
    }

    goto LABEL_25;
  }

LABEL_28:

  return v18;
}

void __78__SKUIDocumentContainerViewController_initWithDocument_options_clientContext___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 launchCorrelationKey];
  v3 = [*(a1 + 32) pageRenderEvent];
  [v3 setLaunchCorrelationKey:v4];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [defaultCenter removeObserver:self name:0x2828094A8 object:self->_document];
  if ([(NSSet *)self->_personalizationItems count])
  {
    v4 = +[SKUIItemStateCenter defaultCenter];
    [v4 endObservingLibraryItems:self->_personalizationItems];
  }

  if ([(SKUIDocumentContainerViewController *)self _appearState]== 3)
  {
    [(IKAppDocument *)self->_document onDisappear];
  }

  [(IKAppDocument *)self->_document setDelegate:0];
  [(SKUIMediaQueryEvaluator *)self->_mediaQueryEvaluator setDelegate:0];
  [(SKUINavigationBarController *)self->_navigationBarController setParentViewController:0];
  [(SSVLoadURLOperation *)self->_loadURLOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadURLOperation cancel];

  v5.receiver = self;
  v5.super_class = SKUIDocumentContainerViewController;
  [(SKUIViewController *)&v5 dealloc];
}

+ (BOOL)allowsChildViewControllerNavigationBarManagement
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIDocumentContainerViewController allowsChildViewControllerNavigationBarManagement];
  }

  return 1;
}

- (void)skui_viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIViewController *)self->_childViewController skui_viewWillAppear:appearCopy];
  }

  v5.receiver = self;
  v5.super_class = SKUIDocumentContainerViewController;
  [(SKUIViewController *)&v5 skui_viewWillAppear:appearCopy];
}

- (id)contentScrollView
{
  if (self->_childViewController)
  {
    contentScrollView = [(UIViewController *)self->_childViewController contentScrollView];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SKUIDocumentContainerViewController;
    contentScrollView = [(SKUIDocumentContainerViewController *)&v4 contentScrollView];
  }

  return contentScrollView;
}

- (void)loadView
{
  templateElement = [(IKAppDocument *)self->_document templateElement];
  style = [templateElement style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v15 = 1.0;
    if ([color getRed:0 green:0 blue:0 alpha:&v15])
    {
      v7 = v15 <= 0.00000011920929;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      clearColor = color;
    }
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v9 = clearColor;
  v10 = objc_alloc(MEMORY[0x277D75D18]);
  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  [keyWindow bounds];
  v12 = [v10 initWithFrame:?];

  [v12 setBackgroundColor:v9];
  childViewController = self->_childViewController;
  if (childViewController)
  {
    view = [(UIViewController *)childViewController view];
    [view setAutoresizingMask:18];
    [v12 bounds];
    [view setFrame:?];
    [v12 addSubview:view];
  }

  [(SKUIDocumentContainerViewController *)self setView:v12];
}

- (void)reloadData
{
  if (self->_urlString)
  {
    if (!self->_loadURLOperation)
    {
      [(SKUIDocumentContainerViewController *)self _enqueueLoadURLOperation];
    }
  }
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v6 setPreferredContentSize:?];
  [(UIViewController *)self->_childViewController setPreferredContentSize:width, height];
}

- (unint64_t)supportedInterfaceOrientations
{
  clientContext = [(SKUIViewController *)self clientContext];
  v3 = SKUIUserInterfaceIdiom(clientContext);

  if (v3 == 1)
  {
    return 30;
  }

  if (SKUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = self->_childViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v5 delayPresentationIfNeededForParentViewController:controllerCopy];
    }
  }

  v6.receiver = self;
  v6.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v6 willMoveToParentViewController:controllerCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  [pageRenderEvent pageAppearTime];
  v7 = v6;

  if (v7 < 2.22044605e-16)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v10 = v9;
    pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent2 setPageAppearTime:v10];

    [(SKUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SKUIApplicationPageDidDisplayNotification" object:self];

  [(IKAppDocument *)self->_document onAppear];
  v13.receiver = self;
  v13.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v13 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];

  if (pageRenderEvent)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v8 = v7;
    pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent2 setPageDisappearTime:v8];
  }

  [(IKAppDocument *)self->_document onDisappear];
  v10.receiver = self;
  v10.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v10 viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  p_viewSize = &self->_viewSize;
  view = [(SKUIDocumentContainerViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  width = p_viewSize->width;
  height = p_viewSize->height;

  if (width != v6 || height != v8)
  {
    view2 = [(SKUIDocumentContainerViewController *)self view];
    [view2 bounds];
    p_viewSize->width = v13;
    p_viewSize->height = v14;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:p_viewSize->height];
    [v15 setObject:v16 forKey:@"height"];

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:p_viewSize->width];
    [v15 setObject:v17 forKey:@"width"];

    [(SKUIDocumentContainerViewController *)self _sendOnViewAttributesChangeWithAttributes:v15 viewWillAppear:0];
    [(SKUIMediaQueryEvaluator *)self->_mediaQueryEvaluator reloadData];
  }

  [(SKUIDocumentContainerViewController *)self _reloadNavigationBarControllerIfNeeded];
  v25.receiver = self;
  v25.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v25 viewDidLayoutSubviews];
  bottomLayoutGuide = [(SKUIDocumentContainerViewController *)self bottomLayoutGuide];
  [bottomLayoutGuide length];
  v20 = v19;

  topLayoutGuide = [(SKUIDocumentContainerViewController *)self topLayoutGuide];
  [topLayoutGuide length];
  v23 = v22;

  if (vabdd_f64(self->_lastBottomLayoutGuideLength, v20) > 0.00000011920929 || vabdd_f64(self->_lastTopLayoutGuideLength, v23) > 0.00000011920929)
  {
    self->_lastBottomLayoutGuideLength = v20;
    self->_lastTopLayoutGuideLength = v23;
    if ([(UIViewController *)self->_childViewController isViewLoaded])
    {
      view3 = [(UIViewController *)self->_childViewController view];
      [view3 setNeedsLayout];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  p_viewSize = &self->_viewSize;
  view = [(SKUIDocumentContainerViewController *)self view];
  [view bounds];
  p_viewSize->width = v7;
  p_viewSize->height = v8;

  [(SKUIDocumentContainerViewController *)self reloadData];
  if (!self->_personalizationItems)
  {
    templateElement = [(IKAppDocument *)self->_document templateElement];
    v10 = templateElement;
    if (templateElement)
    {
      personalizationLibraryItems = [templateElement personalizationLibraryItems];
      personalizationItems = self->_personalizationItems;
      self->_personalizationItems = personalizationLibraryItems;

      v13 = +[SKUIItemStateCenter defaultCenter];
      [v13 beginObservingLibraryItems:self->_personalizationItems];
    }
  }

  [(SKUIDocumentContainerViewController *)self _reloadNavigationBarControllerIfNeeded];
  if ([(SKUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    _navigationBarViewElement = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
    navigationItem = [(SKUIDocumentContainerViewController *)self navigationItem];
    [navigationItem setHidesBackButton:objc_msgSend(_navigationBarViewElement animated:{"hidesBackButton"), 0}];

    style = [_navigationBarViewElement style];
    visibility = [style visibility];
    v18 = [visibility isEqualToString:@"hidden"];

    navigationController = [(SKUIDocumentContainerViewController *)self navigationController];
    [navigationController setNavigationBarHidden:v18 animated:appearCopy];
  }

  [(SKUIViewController *)self forceOrientationBackToSupportedOrientation];
  contentScrollView = [(SKUIDocumentContainerViewController *)self contentScrollView];
  [contentScrollView contentInset];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v22 == 0.0)
  {
    topLayoutGuide = [(SKUIDocumentContainerViewController *)self topLayoutGuide];
    [topLayoutGuide length];
    v31 = v30;

    if (v22 != v31)
    {
      topLayoutGuide2 = [(SKUIDocumentContainerViewController *)self topLayoutGuide];
      [topLayoutGuide2 length];
      v34 = v33;

      [(SKUIDocumentContainerViewController *)self _setNavigationControllerContentInsetAdjustment:v34, v24, v26, v28];
    }
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_orientationAtDisappear)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

    if (statusBarOrientation != [(NSNumber *)self->_orientationAtDisappear integerValue])
    {
      if ((statusBarOrientation - 3) >= 2)
      {
        v38 = @"portrait";
      }

      else
      {
        v38 = @"landscape";
      }

      [v35 setObject:v38 forKey:@"orientation"];
    }

    orientationAtDisappear = self->_orientationAtDisappear;
    self->_orientationAtDisappear = 0;
  }

  if (self->_sizeAtDisappear)
  {
    view2 = [(SKUIDocumentContainerViewController *)self view];
    [view2 frame];
    v42 = v41;
    v44 = v43;

    [(NSValue *)self->_sizeAtDisappear CGSizeValue];
    if (v46 != v42 || v45 != v44)
    {
      v48 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
      [v35 setObject:v48 forKey:@"height"];

      v49 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
      [v35 setObject:v49 forKey:@"width"];
    }

    sizeAtDisappear = self->_sizeAtDisappear;
    self->_sizeAtDisappear = 0;
    goto LABEL_24;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    sKUI_isFullscreen = [mEMORY[0x277D75128]2 SKUI_isFullscreen];

    if ((sKUI_isFullscreen & 1) == 0)
    {
      view3 = [(SKUIDocumentContainerViewController *)self view];
      [view3 frame];
      v57 = v56;
      v59 = v58;

      v60 = [MEMORY[0x277CCABB0] numberWithDouble:v59];
      [v35 setObject:v60 forKey:@"height"];

      sizeAtDisappear = [MEMORY[0x277CCABB0] numberWithDouble:v57];
      [v35 setObject:sizeAtDisappear forKey:@"width"];
LABEL_24:
    }
  }

  if ([v35 count])
  {
    [(SKUIDocumentContainerViewController *)self _sendOnViewAttributesChangeWithAttributes:v35 viewWillAppear:1];
    [(SKUIMediaQueryEvaluator *)self->_mediaQueryEvaluator reloadData];
  }

  v61.receiver = self;
  v61.super_class = SKUIDocumentContainerViewController;
  [(SKUIViewController *)&v61 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v5 initWithInteger:{objc_msgSend(mEMORY[0x277D75128], "statusBarOrientation")}];
  orientationAtDisappear = self->_orientationAtDisappear;
  self->_orientationAtDisappear = v7;

  v9 = MEMORY[0x277CCAE60];
  view = [(SKUIDocumentContainerViewController *)self view];
  [view bounds];
  v13 = [v9 valueWithCGSize:{v11, v12}];
  sizeAtDisappear = self->_sizeAtDisappear;
  self->_sizeAtDisappear = v13;

  navigationController = [(SKUIDocumentContainerViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v17 = [viewControllers containsObject:self];

  if ((v17 & 1) == 0)
  {
    navigationBarElement = [(IKAppDocument *)self->_document navigationBarElement];
    [navigationBarElement dispatchEventOfType:8 canBubble:0 isCancelable:0 extraInfo:0 completionBlock:0];
  }

  v19.receiver = self;
  v19.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v19 viewWillDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = [(NSDictionary *)self->_presentationOptions objectForKey:@"type"];
  v9 = [v8 isEqualToString:@"popover"];

  if ((v9 & 1) == 0)
  {
    self->_viewSize.width = width;
    self->_viewSize.height = height;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:height];
    [v10 setObject:v11 forKey:@"height"];

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    [v10 setObject:v12 forKey:@"width"];

    if (coordinatorCopy)
    {
      [coordinatorCopy targetTransform];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    if (!CGAffineTransformIsIdentity(&v16))
    {
      if (width <= height)
      {
        v13 = @"portrait";
      }

      else
      {
        v13 = @"landscape";
      }

      [v10 setObject:v13 forKey:@"orientation"];
    }

    [(SKUIDocumentContainerViewController *)self _sendOnViewAttributesChangeWithAttributes:v10 viewWillAppear:[(SKUIDocumentContainerViewController *)self _appearState]== 1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__SKUIDocumentContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v15[3] = &unk_2781F8348;
    v15[4] = self;
    [coordinatorCopy animateAlongsideTransition:0 completion:v15];
    v14.receiver = self;
    v14.super_class = SKUIDocumentContainerViewController;
    [(SKUIDocumentContainerViewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
    [(SKUIDocumentContainerViewController *)self _reloadNavigationPalette];
  }
}

- (id)pendingSizeTransitionCompletion
{
  v2 = _Block_copy(self->_pendingSizeTransitionCompletion);

  return v2;
}

- (BOOL)document:(id)document evaluateStyleMediaQuery:(id)query
{
  queryCopy = query;
  mediaQueryEvaluator = self->_mediaQueryEvaluator;
  if (!mediaQueryEvaluator)
  {
    v7 = objc_alloc_init(SKUIMediaQueryEvaluator);
    v8 = self->_mediaQueryEvaluator;
    self->_mediaQueryEvaluator = v7;

    [(SKUIMediaQueryEvaluator *)self->_mediaQueryEvaluator setDelegate:self];
    mediaQueryEvaluator = self->_mediaQueryEvaluator;
  }

  v9 = [(SKUIMediaQueryEvaluator *)mediaQueryEvaluator evaluateMediaQuery:queryCopy];

  return v9;
}

- (void)document:(id)document runTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28291AB68])
  {
    [(UIViewController *)self->_childViewController performTestWithName:nameCopy options:optionsCopy];
  }
}

- (void)documentDidUpdate:(id)update
{
  v64 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (!self->_pageResponseAbsoluteTime)
  {
    goto LABEL_13;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  v11 = v10;
  Current = CFAbsoluteTimeGetCurrent();
  [(NSNumber *)self->_pageResponseAbsoluteTime doubleValue];
  v14 = Current - v13;
  v15 = [(NSDictionary *)self->_presentationOptions objectForKey:@"url"];
  v58 = 138412802;
  v59 = v10;
  v60 = 2048;
  v61 = v14;
  v62 = 2112;
  v63 = v15;
  LODWORD(v55) = 32;
  v54 = &v58;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v58, v55}];
    free(v16);
    v54 = oSLogObject;
    SSFileLog();
LABEL_11:
  }

  pageResponseAbsoluteTime = self->_pageResponseAbsoluteTime;
  self->_pageResponseAbsoluteTime = 0;

LABEL_13:
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v20 = v19;

  templateElement = [updateCopy templateElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    elementType = [templateElement elementType];
  }

  else
  {
    elementType = 0;
  }

  v23 = +[SKUIItemStateCenter defaultCenter];
  v24 = self->_personalizationItems;
  personalizationLibraryItems = [templateElement personalizationLibraryItems];
  personalizationItems = self->_personalizationItems;
  self->_personalizationItems = personalizationLibraryItems;

  if ([(NSSet *)self->_personalizationItems count])
  {
    [v23 beginObservingLibraryItems:self->_personalizationItems];
  }

  if ([(NSSet *)v24 count])
  {
    [v23 endObservingLibraryItems:v24];
  }

  if (elementType == self->_templateViewElementType)
  {
    v27 = self->_childViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v27 documentDidUpdate:updateCopy];
    }

    if (SKUIViewControllerIsVisible(self->_childViewController))
    {
      v57 = *MEMORY[0x277CBE738];
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      [updateCopy performSelector:sel_onUpdate withObject:0 afterDelay:v28 inModes:0.0];
    }
  }

  else
  {
    if (elementType)
    {
      presentationOptions = self->_presentationOptions;
      clientContext = [(SKUIViewController *)self clientContext];
      v27 = [(SKUIDocumentContainerViewController *)self _newViewControllerWithTemplateElement:templateElement options:presentationOptions clientContext:clientContext];
    }

    else
    {
      v27 = 0;
    }

    [(SKUIDocumentContainerViewController *)self _setChildViewController:v27];
    self->_templateViewElementType = elementType;
  }

  _navigationBarViewElement = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
  navigationItem = [(SKUIDocumentContainerViewController *)self navigationItem];
  navigationBarController = self->_navigationBarController;
  v56 = updateCopy;
  if (_navigationBarViewElement)
  {
    navigationBarViewElement = [(SKUINavigationBarController *)navigationBarController navigationBarViewElement];

    if (navigationBarViewElement == _navigationBarViewElement)
    {
      [(SKUINavigationBarController *)self->_navigationBarController updateNavigationItem:navigationItem];
      [(SKUIDocumentContainerViewController *)self _reloadNavigationPalette];
    }

    else
    {
      [(SKUIDocumentContainerViewController *)self _reloadNavigationBarController];
    }
  }

  else
  {
    existingSearchBarControllers = [(SKUINavigationBarController *)navigationBarController existingSearchBarControllers];
    searchBarControllers = self->_searchBarControllers;
    self->_searchBarControllers = existingSearchBarControllers;

    [(SKUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:navigationItem];
    [(SKUINavigationBarController *)self->_navigationBarController setParentViewController:0];
    v37 = self->_navigationBarController;
    self->_navigationBarController = 0;
  }

  [(SKUIDocumentContainerViewController *)self prefersNavigationBarHidden];
  if ([(SKUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    hidesBackButton = [_navigationBarViewElement hidesBackButton];
    navigationItem2 = [(SKUIDocumentContainerViewController *)self navigationItem];
    [navigationItem2 setHidesBackButton:hidesBackButton];

    style = [_navigationBarViewElement style];
    visibility = [style visibility];
    v42 = [visibility isEqualToString:@"hidden"];

    navigationController = [(SKUIDocumentContainerViewController *)self navigationController];
    [navigationController setNavigationBarHidden:v42 animated:0];
  }

  [(SKUIDocumentContainerViewController *)self _reloadDefaultBarButtonItems];
  _toolbarViewElement = [(SKUIDocumentContainerViewController *)self _toolbarViewElement];
  navigationController2 = [(SKUIDocumentContainerViewController *)self navigationController];
  toolbarController = self->_toolbarController;
  if (_toolbarViewElement)
  {
    toolbarViewElement = [(SKUIToolbarController *)toolbarController toolbarViewElement];

    if (toolbarViewElement == _toolbarViewElement)
    {
      [(SKUIToolbarController *)self->_toolbarController updateToolbarForNavigationController:navigationController2];
    }

    else
    {
      [(SKUIDocumentContainerViewController *)self _reloadToolbar];
    }
  }

  else
  {
    [(SKUIToolbarController *)toolbarController detachFromNavigationController:navigationController2];
    [(SKUIToolbarController *)self->_toolbarController setDelegate:0];
    v48 = self->_toolbarController;
    self->_toolbarController = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SKUIApplicationPageDidUpdateNotification" object:self];

  domChangeTimingQueue = [(SKUIDocumentContainerViewController *)self domChangeTimingQueue];
  oldestPendingChange = [domChangeTimingQueue oldestPendingChange];

  if (oldestPendingChange)
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSince1970];
    [oldestPendingChange setRenderEndTime:?];

    [oldestPendingChange setRenderStartTime:v20];
    pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent addDOMChange:oldestPendingChange];
  }

  [(SKUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
}

- (void)documentScrollToTop:(id)top
{
  contentScrollView = [(SKUIDocumentContainerViewController *)self contentScrollView];
  if (contentScrollView)
  {
    v7 = contentScrollView;
    [contentScrollView contentOffset];
    v5 = v4;
    [v7 contentInset];
    [v7 setContentOffset:0 animated:{v5, -v6}];
    contentScrollView = v7;
  }
}

- (id)impressionableViewElementsForDocument:(id)document
{
  v3 = self->_childViewController;
  if (objc_opt_respondsToSelector())
  {
    impressionableViewElements = [(UIViewController *)v3 impressionableViewElements];
  }

  else
  {
    impressionableViewElements = 0;
  }

  return impressionableViewElements;
}

- (void)documentDidSendMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:0x2828094C8];

  userInfo2 = [messageCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:0x2828094E8];

  if ([v8 isEqualToString:0x282809428])
  {
    [(SKUIDocumentContainerViewController *)self _onReportPlatformJsonTimes:v7];
  }

  else if ([v8 isEqualToString:0x282809448])
  {
    [(SKUIDocumentContainerViewController *)self _onReportDOMChange:v7];
  }

  else if ([v8 isEqualToString:0x282809468])
  {
    [(SKUIDocumentContainerViewController *)self _onReportRequestTimes:v7];
  }

  else if ([v8 isEqualToString:0x282809488])
  {
    [(SKUIDocumentContainerViewController *)self _onReportDocumentReady:v7];
  }
}

- (void)resourceLoaderDidBeginLoading:(id)loading
{
  pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  [pageRenderEvent resourceRequestStartTime];
  v6 = v5;

  if (v6 < 2.22044605e-16)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v9 = v8;
    pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent2 setResourceRequestStartTime:v9];
  }

  pageRenderEvent3 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  [pageRenderEvent3 setResourceRequestEndTime:0.0];
}

- (void)resourceLoader:(id)loader didLoadAllForReason:(int64_t)reason
{
  loaderCopy = loader;
  if (reason == 1)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v8 = v7;
    pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent setResourceRequestOnScreenEndTime:v8];
  }

  if ([loaderCopy isIdle])
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSince1970];
    v12 = v11;
    pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent2 setResourceRequestEndTime:v12];

    [(SKUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
  }

  else
  {
    pageRenderEvent3 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent3 setResourceRequestEndTime:0.0];
  }
}

- (id)mediaQueryEvaluator:(id)evaluator valueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:0x2827FFCC8])
  {
    v6 = MEMORY[0x277CCABB0];
    height = self->_viewSize.height;
LABEL_5:
    v8 = [v6 numberWithDouble:height];
    goto LABEL_6;
  }

  if ([keyCopy isEqualToString:0x2827FFCA8])
  {
    v6 = MEMORY[0x277CCABB0];
    height = self->_viewSize.width;
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:0x2827FFD28])
  {
    mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
    v8 = SKUIMediaQueryNetworkTypeString([mEMORY[0x277D7FD00] networkType]);
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (void)mediaQueryEvaluatorDidChange:(id)change
{
  [(SKUIMediaQueryEvaluator *)self->_mediaQueryEvaluator setDelegate:self];
  mediaQueryEvaluator = self->_mediaQueryEvaluator;
  self->_mediaQueryEvaluator = 0;

  [(IKAppDocument *)self->_document setViewElementStylesDirty];
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_2828EAF00])
  {
    v5 = objc_opt_respondsToSelector();
    childViewController = self->_childViewController;
    document = self->_document;
    if (v5)
    {

      [(UIViewController *)childViewController documentMediaQueriesDidUpdate:document];
    }

    else
    {

      [(UIViewController *)childViewController documentDidUpdate:document];
    }
  }
}

- (void)getModalSourceViewForElementIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v7 = [(SKUINavigationBarController *)self->_navigationBarController barButtonItemForElementIdentifier:identifierCopy];
  if (v7)
  {
    v8 = objc_alloc_init(SKUIModalSourceViewProvider);
    [(SKUIModalSourceViewProvider *)v8 setSourceButtonBarItem:v7];
    blockCopy[2](blockCopy, v8);
  }

  else
  {
    v8 = [(SKUINavigationBarController *)self->_navigationBarController viewForElementIdentifier:identifierCopy];
    if (v8)
    {
      v9 = objc_alloc_init(SKUIModalSourceViewProvider);
      [(SKUIModalSourceViewProvider *)v9 setOriginalSourceView:v8];
      blockCopy[2](blockCopy, v9);
    }

    else if (([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28291F928]& 1) != 0)
    {
      [(UIViewController *)self->_childViewController getModalSourceViewForElementIdentifier:identifierCopy completionBlock:blockCopy];
    }

    else
    {
      blockCopy[2](blockCopy, 0);
    }
  }
}

- (id)additionalLeftBarButtonItemForNavigationBarController:(id)controller
{
  clientContext = [(SKUIViewController *)self clientContext];
  v5 = [clientContext additionalLeftBarButtonItemForDocumentContainerViewController:self];

  return v5;
}

- (id)additionalRightBarButtonItemForNavigationBarController:(id)controller
{
  clientContext = [(SKUIViewController *)self clientContext];
  v5 = [clientContext additionalRightBarButtonItemForDocumentContainerViewController:self];

  return v5;
}

- (id)navigationBarTitleTextTintColor
{
  if (objc_opt_respondsToSelector())
  {
    navigationBarTitleTextTintColor = [(UIViewController *)self->_childViewController navigationBarTitleTextTintColor];
  }

  else
  {
    navigationBarTitleTextTintColor = 0;
  }

  return navigationBarTitleTextTintColor;
}

- (int64_t)navigationBarTintAdjustmentMode
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  childViewController = self->_childViewController;

  return [(UIViewController *)childViewController navigationBarTintAdjustmentMode];
}

- (id)navigationBarTintColor
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_282938F18])
  {
    navigationBarTintColor = [(UIViewController *)self->_childViewController navigationBarTintColor];
  }

  else
  {
    _navigationBarViewElement = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
    navigationBarTintColor = [_navigationBarViewElement tintColor];
  }

  return navigationBarTintColor;
}

- (BOOL)prefersNavigationBarBackgroundViewHidden
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_282938F18])
  {
    childViewController = self->_childViewController;

    return [(UIViewController *)childViewController prefersNavigationBarBackgroundViewHidden];
  }

  else
  {
    _navigationBarViewElement = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
    isTransparent = [_navigationBarViewElement isTransparent];

    return isTransparent;
  }
}

- (BOOL)prefersNavigationBarHidden
{
  if (![(UIViewController *)self->_childViewController conformsToProtocol:&unk_282938F18]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  childViewController = self->_childViewController;

  return [(UIViewController *)childViewController prefersNavigationBarHidden];
}

- (UIView)navigationPaletteView
{
  navigationPaletteView = [(SKUINavigationBarController *)self->_navigationBarController navigationPaletteView];
  if (!navigationPaletteView)
  {
    if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_2828EAF00]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      navigationPaletteView = [(UIViewController *)self->_childViewController navigationPaletteView];
    }

    else
    {
      navigationPaletteView = 0;
    }
  }

  return navigationPaletteView;
}

- (void)scrollingTabAppearanceStatusWasUpdated:(id)updated
{
  p_scrollingTabAppearanceStatus = &self->_scrollingTabAppearanceStatus;
  self->_scrollingTabAppearanceStatus = updated;
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28292F980])
  {
    childViewController = self->_childViewController;
    progress = p_scrollingTabAppearanceStatus->progress;
    v7 = *&p_scrollingTabAppearanceStatus->isBouncingOffTheEdge;

    [(UIViewController *)childViewController scrollingTabAppearanceStatusWasUpdated:*&progress, v7];
  }
}

- (UIScrollView)scrollingTabNestedPagingScrollView
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28292FA58])
  {
    scrollingTabNestedPagingScrollView = [(UIViewController *)self->_childViewController scrollingTabNestedPagingScrollView];
  }

  else
  {
    scrollingTabNestedPagingScrollView = 0;
  }

  return scrollingTabNestedPagingScrollView;
}

- (id)scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)index
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28292FA58])
  {
    v5 = [(UIViewController *)self->_childViewController scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:index];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)performTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28291AB68])
  {
    v8 = [(UIViewController *)self->_childViewController performTestWithName:nameCopy options:optionsCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_onReportPlatformJsonTimes:(id)times
{
  timesCopy = times;
  v4 = [timesCopy objectForKeyedSubscript:@"jsonParseStartTime"];
  if (v4)
  {
    pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent platformJsonParseStartTime];
    v7 = v6;

    if (v7 < 2.22044605e-16)
    {
      [SKUIMetricsUtilities timeIntervalFromJSTime:v4];
      v9 = v8;
      pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      [pageRenderEvent2 setPlatformJsonParseStartTime:v9];
    }
  }

  v11 = [timesCopy objectForKeyedSubscript:@"jsonParseEndTime"];
  if (v11)
  {
    pageRenderEvent3 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent3 platformJsonParseEndTime];
    v14 = v13;

    if (v14 < 2.22044605e-16)
    {
      [SKUIMetricsUtilities timeIntervalFromJSTime:v11];
      v16 = v15;
      pageRenderEvent4 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      [pageRenderEvent4 setPlatformJsonParseEndTime:v16];
    }
  }
}

- (void)_onReportDOMChange:(id)change
{
  changeCopy = change;
  v6 = [[SKUIMetricsDOMChange alloc] initWithReportDomBuildTimesMessagePayload:changeCopy];

  if (v6)
  {
    domChangeTimingQueue = [(SKUIDocumentContainerViewController *)self domChangeTimingQueue];
    [domChangeTimingQueue addPendingChange:v6];
  }
}

- (void)_onReportRequestTimes:(id)times
{
  timesCopy = times;
  pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];

  if (pageRenderEvent)
  {
    v5 = [[SKUIMetricsRequestInfo alloc] initWithReportRequestTimesMessagePayload:timesCopy];
    if (v5)
    {
      pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      [pageRenderEvent2 addRequest:v5];
    }
  }
}

- (void)_onReportDocumentReady:(id)ready
{
  readyCopy = ready;
  v4 = [readyCopy objectForKeyedSubscript:@"clientCorrelationKey"];

  if (v4)
  {
    v5 = [readyCopy objectForKeyedSubscript:@"clientCorrelationKey"];
    pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent setClientCorrelationKey:v5];
  }

  v7 = [readyCopy objectForKeyedSubscript:@"metricsBase"];

  if (v7)
  {
    v8 = [readyCopy objectForKeyedSubscript:@"metricsBase"];
    pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent2 setMetricsBase:v8];
  }

  v10 = [readyCopy objectForKeyedSubscript:@"documentReadyTime"];

  if (v10)
  {
    date = [readyCopy objectForKeyedSubscript:@"documentReadyTime"];
    [SKUIMetricsUtilities timeIntervalFromJSTime:date];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
  }

  v13 = v12;
  pageRenderEvent3 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  [pageRenderEvent3 setPageUserReadyTime:v13];

  v15 = [readyCopy objectForKeyedSubscript:@"userInteractionTime"];

  if (v15)
  {
    v16 = [readyCopy objectForKeyedSubscript:@"userInteractionTime"];
    [SKUIMetricsUtilities timeIntervalFromJSTime:v16];
    v18 = v17;
    pageRenderEvent4 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent4 setPageRequestedTime:v18];
  }

  [(SKUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
}

- (void)_submitPageRenderIfPossible
{
  pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  if ([pageRenderEvent isReadyForSubmission])
  {
    domChangeTimingQueue = [(SKUIDocumentContainerViewController *)self domChangeTimingQueue];
    isEmpty = [domChangeTimingQueue isEmpty];

    if (isEmpty)
    {
      pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      clientContext = [(SKUIViewController *)self clientContext];
      [pageRenderEvent2 appendSamplingPropertiesFromClientContext:clientContext];

      clientContext2 = [(SKUIViewController *)self clientContext];
      _applicationController = [clientContext2 _applicationController];
      pageRenderEvent3 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      [_applicationController recordMetricsEvent:pageRenderEvent3 flushImmediately:0];

      if (+[SKUIMetricsUtilities shouldLogTimingMetrics])
      {
        SSDebugLevel();
        SSDebugFileLevel();
        pageRenderEvent4 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        SSDebugLog();
      }

      if (+[SKUIMetricsUtilities showEventNotifications])
      {
        pageRenderEvent5 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        v11 = +[SKUIStatusBarAlertCenter sharedCenter];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __66__SKUIDocumentContainerViewController__submitPageRenderIfPossible__block_invoke;
        v15[3] = &unk_2781F80F0;
        v16 = pageRenderEvent5;
        v12 = pageRenderEvent5;
        [v11 showMessage:@"Page Rendered" withStyle:0 forDuration:v15 actionBlock:0.0];
      }

      [(SKUIDocumentContainerViewController *)self setPageRenderEvent:0];
      [(SKUIDocumentContainerViewController *)self setDomChangeTimingQueue:0];
    }
  }

  else
  {
  }
}

- (void)_reloadNavigationItemContents
{
  if ([(SKUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    navigationItem = [(SKUIDocumentContainerViewController *)self navigationItem];
    [(SKUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:navigationItem];
    [(SKUINavigationBarController *)self->_navigationBarController attachToNavigationItem:navigationItem];
  }
}

- (void)_networkTypeChangeNotification:(id)notification
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 5000000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SKUIDocumentContainerViewController__networkTypeChangeNotification___block_invoke;
  v4[3] = &unk_2781F8320;
  objc_copyWeak(&v5, &location);
  dispatch_after(v3, MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __70__SKUIDocumentContainerViewController__networkTypeChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadPageData];
}

- (void)_skui_applicationDidEnterBackground:(id)background
{
  pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];

  if (pageRenderEvent)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v7 = v6;
    pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [pageRenderEvent2 setPageDisappearTime:v7];
  }

  if (SKUIViewControllerIsVisible(self))
  {
    [(IKAppDocument *)self->_document onDisappear];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277D76758];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [defaultCenter addObserver:self selector:sel__skui_applicationWillEnterForeground_ name:v9 object:0];
}

- (void)_skui_applicationWillEnterForeground:(id)foreground
{
  if (SKUIViewControllerIsVisible(self))
  {
    [(IKAppDocument *)self->_document onAppear];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
}

- (void)_enqueueLoadURLOperation
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self->_urlString];
  clientContext = [(SKUIViewController *)self clientContext];
  v5 = [clientContext newLoadStoreURLOperationWithURL:v3];
  loadURLOperation = self->_loadURLOperation;
  self->_loadURLOperation = v5;

  v7 = self->_loadURLOperation;
  v8 = +[(SSVURLDataConsumer *)SKUIURLResolverDataConsumer];
  [(SSVLoadURLOperation *)v7 setDataConsumer:v8];

  objc_initWeak(&location, self);
  v9 = self->_loadURLOperation;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __63__SKUIDocumentContainerViewController__enqueueLoadURLOperation__block_invoke;
  v24 = &unk_2781FD938;
  objc_copyWeak(&v25, &location);
  [(SSVLoadURLOperation *)v9 setOutputBlock:&v21];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  v14 = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    shouldLog &= 2u;
  }

  if (!shouldLog)
  {
    goto LABEL_8;
  }

  v15 = objc_opt_class();
  urlString = self->_urlString;
  v27 = 138412546;
  v28 = v15;
  v29 = 2112;
  v30 = urlString;
  v17 = v15;
  LODWORD(v20) = 22;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v27, v20, v21, v22, v23, v24}];
    free(v18);
    SSFileLog();
LABEL_8:
  }

  operationQueue = [(SKUIViewController *)self operationQueue];
  [operationQueue addOperation:self->_loadURLOperation];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __63__SKUIDocumentContainerViewController__enqueueLoadURLOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SKUIDocumentContainerViewController__enqueueLoadURLOperation__block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __63__SKUIDocumentContainerViewController__enqueueLoadURLOperation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishLoadOperationWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_finishLegacyProtocolOperationForResponse:(id)response dataProvider:(id)provider dictionary:(id)dictionary
{
  responseCopy = response;
  dictionaryCopy = dictionary;
  redirectURL = [provider redirectURL];
  if (redirectURL)
  {
    [(SKUIDocumentContainerViewController *)self _redirectToURL:redirectURL];
  }

  else
  {
    uRLResponse = [responseCopy URLResponse];
    v11 = [uRLResponse URL];
    absoluteString = [v11 absoluteString];
    urlString = self->_urlString;
    self->_urlString = absoluteString;

    [(SKUIDocumentContainerViewController *)self _setChildViewController:0];
    v14 = [dictionaryCopy objectForKey:*MEMORY[0x277D7FD78]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [objc_alloc(MEMORY[0x277D7FCE8]) initWithDialogDictionary:v14], v16 = objc_msgSend(v15, "kind"), v15, v16 != 1))
    {
      clientContext = [(SKUIViewController *)self clientContext];
      document = self->_document;
      data = [responseCopy data];
      uRLResponse2 = [responseCopy URLResponse];
      [clientContext sendOnPageResponseWithDocument:document data:data URLResponse:uRLResponse2 performanceMetrics:0];
    }
  }
}

- (void)_finishLoadOperationWithResponse:(id)response error:(id)error
{
  v108 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  v92 = errorCopy;
  if (responseCopy && !errorCopy)
  {
    uRLResponse = [responseCopy URLResponse];
    allHeaderFields = [uRLResponse allHeaderFields];
    mIMEType = ISDictionaryValueForCaseInsensitiveString();

    if (!mIMEType)
    {
      mIMEType = [uRLResponse MIMEType];
    }

    metricsPageEvent = [(SSVLoadURLOperation *)self->_loadURLOperation metricsPageEvent];
    if (metricsPageEvent)
    {
      pageRenderEvent = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      clientCorrelationKey = [pageRenderEvent clientCorrelationKey];

      if (!clientCorrelationKey)
      {
        clientCorrelationKey2 = [metricsPageEvent clientCorrelationKey];
        pageRenderEvent2 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [pageRenderEvent2 setClientCorrelationKey:clientCorrelationKey2];

        [metricsPageEvent requestStartTime];
        v16 = v15;
        pageRenderEvent3 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [pageRenderEvent3 setPlatformRequestStartTime:v16];

        [metricsPageEvent responseStartTime];
        v19 = v18;
        pageRenderEvent4 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [pageRenderEvent4 setPlatformResponseStartTime:v19];

        [metricsPageEvent responseEndTime];
        v22 = v21;
        pageRenderEvent5 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [pageRenderEvent5 setPlatformResponseEndTime:v22];

        isCachedResponse = [metricsPageEvent isCachedResponse];
        pageRenderEvent6 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [pageRenderEvent6 setPlatformResponseWasCached:isCachedResponse];
      }
    }

    if ([mIMEType rangeOfString:@"itml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        shouldLog |= 2u;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v47 = shouldLog;
      }

      else
      {
        v47 = shouldLog & 2;
      }

      if (v47)
      {
        v48 = objc_opt_class();
        urlString = self->_urlString;
        *location = 138412546;
        *&location[4] = v48;
        v104 = 2112;
        v105 = urlString;
        v50 = v48;
        LODWORD(v89) = 22;
        v88 = location;
        v51 = _os_log_send_and_compose_impl();

        if (v51)
        {
          v52 = [MEMORY[0x277CCACA8] stringWithCString:v51 encoding:{4, location, v89}];
          free(v51);
          v88 = v52;
          SSFileLog();
        }
      }

      else
      {
      }

      v69 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:CFAbsoluteTimeGetCurrent()];
      pageResponseAbsoluteTime = self->_pageResponseAbsoluteTime;
      self->_pageResponseAbsoluteTime = v69;

      v101[0] = @"requestStartTime";
      [metricsPageEvent requestStartTime];
      v71 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
      v102[0] = v71;
      v101[1] = @"responseStartTime";
      [metricsPageEvent responseStartTime];
      v72 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
      v102[1] = v72;
      v101[2] = @"responseEndTime";
      [metricsPageEvent responseEndTime];
      v73 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
      v102[2] = v73;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];

      clientContext = [(SKUIViewController *)self clientContext];
      document = self->_document;
      data = [responseCopy data];
      uRLResponse2 = [responseCopy URLResponse];
      [clientContext sendOnPageResponseWithDocument:document data:data URLResponse:uRLResponse2 performanceMetrics:v74];

      goto LABEL_42;
    }

    if ([mIMEType rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([mIMEType rangeOfString:@"html" options:1] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([mIMEType rangeOfString:@"text/xml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = MEMORY[0x277CCAC58];
          data2 = [responseCopy data];
          v28 = [v26 propertyListWithData:data2 options:0 format:0 error:0];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [v28 objectForKey:@"page-type"];
            if (v29 && ([v28 objectForKey:@"items"], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
            {
              v31 = objc_alloc_init(MEMORY[0x277D7FE98]);
              [v31 loadFromDictionary:v28];
              uRLRequest = [(SSVLoadURLOperation *)self->_loadURLOperation URLRequest];
              uRLResponse3 = [responseCopy URLResponse];
              [(SKUIDocumentContainerViewController *)self _showLegacyStorePageWithRequest:uRLRequest page:v31 pageType:0 URLResponse:uRLResponse3];
            }

            else
            {
              v83 = [objc_alloc(MEMORY[0x277D7FD28]) initWithPropertyList:v28];
              provider = [MEMORY[0x277D7FD30] provider];
              [provider setShouldProcessAuthenticationDialogs:1];
              [provider setShouldProcessDialogs:0];
              defaultStore = [MEMORY[0x277D69A20] defaultStore];
              activeAccount = [defaultStore activeAccount];

              if (activeAccount)
              {
                v86 = [objc_alloc(MEMORY[0x277D69A58]) initWithAccount:activeAccount];
                [provider setAuthenticationContext:v86];
              }

              [v83 setDataProvider:provider];
              objc_initWeak(location, v83);
              objc_initWeak(&from, self);
              v93[0] = MEMORY[0x277D85DD0];
              v93[1] = 3221225472;
              v93[2] = __78__SKUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_259;
              v93[3] = &unk_2781FD960;
              objc_copyWeak(&v96, location);
              objc_copyWeak(&v97, &from);
              v94 = responseCopy;
              v95 = v28;
              [v83 setCompletionBlock:v93];
              operationQueue = [(SKUIViewController *)self operationQueue];
              [operationQueue addOperation:v83];

              objc_destroyWeak(&v97);
              objc_destroyWeak(&v96);
              objc_destroyWeak(&from);
              objc_destroyWeak(location);
            }
          }
        }

        goto LABEL_42;
      }

      uRLRequest2 = [(SSVLoadURLOperation *)self->_loadURLOperation URLRequest];
      data3 = [responseCopy data];
      uRLResponse4 = [responseCopy URLResponse];
      [(SKUIDocumentContainerViewController *)self _showLegacyStorePageWithRequest:uRLRequest2 page:data3 pageType:1 URLResponse:uRLResponse4];
    }

    else
    {
      v64 = [SKUILegacyNativeViewController alloc];
      data4 = [responseCopy data];
      uRLRequest2 = [(SKUILegacyNativeViewController *)v64 initWithData:data4 fromOperation:self->_loadURLOperation];

      clientContext2 = [(SKUIViewController *)self clientContext];
      [(SKUIViewController *)uRLRequest2 setClientContext:clientContext2];

      navigationItem = [(SKUIDocumentContainerViewController *)self navigationItem];
      [(SKUILegacyNativeViewController *)uRLRequest2 _setExistingNavigationItem:navigationItem];

      [(SKUILegacyNativeViewController *)uRLRequest2 reloadData];
      [(SKUIDocumentContainerViewController *)self _setChildViewController:uRLRequest2];
    }

LABEL_42:
    v81 = self->_urlString;
    self->_urlString = 0;

    goto LABEL_43;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v36 = shouldLog2 | 2;
  }

  else
  {
    v36 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 & 2;
  }

  if (v38)
  {
    v39 = objc_opt_class();
    v40 = self->_urlString;
    *location = 138412802;
    *&location[4] = v39;
    v104 = 2112;
    v105 = v92;
    v106 = 2112;
    v107 = v40;
    v41 = v39;
    LODWORD(v89) = 32;
    v88 = location;
    v42 = _os_log_send_and_compose_impl();

    if (v42)
    {
      v43 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:{4, location, v89}];
      free(v42);
      v88 = v43;
      SSFileLog();
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_beforeErrorChildViewController, self->_childViewController);
  view = [(UIViewController *)self->_beforeErrorChildViewController view];
  backgroundColor = [view backgroundColor];

  if (!backgroundColor)
  {
    view2 = [(SKUIDocumentContainerViewController *)self view];
    backgroundColor = [view2 backgroundColor];
  }

  v56 = [SKUIErrorDocumentViewController alloc];
  clientContext3 = [(SKUIViewController *)self clientContext];
  v58 = [(SKUIErrorDocumentViewController *)v56 initWithBackgroundColor:backgroundColor clientContext:clientContext3];

  objc_initWeak(location, self);
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __78__SKUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke;
  v99[3] = &unk_2781F8320;
  objc_copyWeak(&v100, location);
  [(SKUIErrorDocumentViewController *)v58 setRetryActionBlock:v99];
  [(SKUIDocumentContainerViewController *)self _setChildViewController:v58];
  v59 = +[SKUIMetricsUtilities newErrorPageEvent];
  [v59 setPageURL:self->_urlString];
  [v59 setPageType:@"SKUIDocumentContainerViewController"];
  clientContext4 = [(SKUIViewController *)self clientContext];
  _applicationController = [clientContext4 _applicationController];
  [_applicationController recordMetricsEvent:v59 flushImmediately:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  [defaultCenter addObserver:self selector:sel__networkTypeChangeNotification_ name:*MEMORY[0x277D7FCC0] object:mEMORY[0x277D7FD00]];

  objc_destroyWeak(&v100);
  objc_destroyWeak(location);

LABEL_43:
  [(SSVLoadURLOperation *)self->_loadURLOperation setOutputBlock:0, v88];
  loadURLOperation = self->_loadURLOperation;
  self->_loadURLOperation = 0;
}

void __78__SKUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _reloadPageData];
    v2 = +[SKUIMetricsUtilities newErrorRetryClickEvent];
    [v2 setPageURL:v5[156]];
    [v2 setPageType:@"SKUIDocumentContainerViewController"];
    v3 = [v5 clientContext];
    v4 = [v3 _applicationController];
    [v4 recordMetricsEvent:v2 flushImmediately:0];

    WeakRetained = v5;
  }
}

void __78__SKUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_259(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __78__SKUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_2;
  v7 = &unk_2781F81E0;
  objc_copyWeak(&v11, a1 + 7);
  v8 = a1[4];
  v3 = WeakRetained;
  v9 = v3;
  v10 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], &v4);
  [v3 setCompletionBlock:{0, v4, v5, v6, v7}];

  objc_destroyWeak(&v11);
}

void __78__SKUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataProvider];
  [WeakRetained _finishLegacyProtocolOperationForResponse:v2 dataProvider:v3 dictionary:*(a1 + 48)];
}

- (id)_navigationBarViewElement
{
  if ([(SKUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    navigationBarElement = [(IKAppDocument *)self->_document navigationBarElement];
    if (!navigationBarElement)
    {
      templateElement = [(IKAppDocument *)self->_document templateElement];
      if (objc_opt_respondsToSelector())
      {
        navigationBarElement = [templateElement navigationBarElement];
      }

      else
      {
        navigationBarElement = 0;
      }
    }
  }

  else
  {
    navigationBarElement = 0;
  }

  return navigationBarElement;
}

- (id)_newViewControllerWithTemplateElement:(id)element options:(id)options clientContext:(id)context
{
  elementCopy = element;
  optionsCopy = options;
  contextCopy = context;
  clientContext = [(SKUIViewController *)self clientContext];
  v12 = [clientContext documentViewControllerForTemplateViewElement:elementCopy];

  if (!v12)
  {
    v13 = [optionsCopy objectForKey:@"type"];
    v14 = [v13 isEqual:0x2828080A8];
    elementType = [elementCopy elementType];
    if (elementType <= 82)
    {
      if (elementType <= 36)
      {
        if (elementType > 26)
        {
          if (elementType == 27)
          {
            v16 = SKUIContentUnavailableDocumentViewController;
            goto LABEL_43;
          }

          if (elementType == 34)
          {
            v16 = SKUIEditorDocumentViewController;
            goto LABEL_43;
          }
        }

        else
        {
          if (elementType == 17)
          {
            v19 = elementCopy;
            type = [v19 type];
            v21 = [type isEqualToString:@"modern"];

            v22 = off_2781F6560;
            if (!v21)
            {
              v22 = off_2781F6258;
            }

            v12 = [objc_alloc(*v22) initWithTemplateElement:v19];

            goto LABEL_45;
          }

          if (elementType == 25)
          {
            v16 = SKUICommentDocumentViewController;
LABEL_43:
            v18 = [[v16 alloc] initWithTemplateElement:elementCopy];
            goto LABEL_44;
          }
        }

        goto LABEL_45;
      }

      if (elementType <= 70)
      {
        if (elementType == 37)
        {
          v16 = SKUIExploreDocumentViewController;
          goto LABEL_43;
        }

        if (elementType == 65)
        {
          v16 = SKUILoadingDocumentViewController;
          goto LABEL_43;
        }

LABEL_45:

        goto LABEL_46;
      }

      if (elementType == 71)
      {
        v16 = SKUIMenuBarTemplateDocumentViewController;
        goto LABEL_43;
      }

      if (elementType != 78)
      {
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    if (elementType > 120)
    {
      if (elementType <= 131)
      {
        if (elementType == 121)
        {
          v16 = SKUISignInDocumentViewController;
          goto LABEL_43;
        }

        if (elementType != 129)
        {
          goto LABEL_45;
        }

        v17 = SKUISplitViewDocumentViewController;
        goto LABEL_27;
      }

      if (elementType != 132)
      {
        if (elementType == 148)
        {
          v16 = SKUITrendingSearchDocumentViewController;
          goto LABEL_43;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (elementType <= 92)
      {
        if (elementType == 83)
        {
          v16 = SKUIPanelDocumentViewController;
          goto LABEL_43;
        }

        if (elementType != 85)
        {
          goto LABEL_45;
        }

LABEL_30:
        v18 = [[SKUIPhysicalCirclesDocumentViewController alloc] initWithPhysicalCirclesTemplateViewElement:elementCopy];
        goto LABEL_44;
      }

      if (elementType != 93)
      {
        if (elementType != 115)
        {
          goto LABEL_45;
        }

        v17 = SKUISettingsDocumentViewController;
LABEL_27:
        v18 = [[v17 alloc] initWithTemplateElement:elementCopy clientContext:contextCopy];
LABEL_44:
        v12 = v18;
        goto LABEL_45;
      }
    }

    v18 = [[SKUIStackDocumentViewController alloc] initWithTemplateElement:elementCopy layoutStyle:v14];
    goto LABEL_44;
  }

LABEL_46:
  [v12 setClientContext:contextCopy];

  return v12;
}

- (void)_redirectToURL:(id)l
{
  loadURLOperation = self->_loadURLOperation;
  lCopy = l;
  [(SSVLoadURLOperation *)loadURLOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadURLOperation cancel];
  v6 = self->_loadURLOperation;
  self->_loadURLOperation = 0;

  absoluteString = [lCopy absoluteString];

  urlString = self->_urlString;
  self->_urlString = absoluteString;

  [(SKUIDocumentContainerViewController *)self _enqueueLoadURLOperation];
}

- (void)_reloadDefaultBarButtonItems
{
  navigationItem = [(SKUIDocumentContainerViewController *)self navigationItem];
  v3 = self->_childViewController;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIViewController *)v3 leftBarButtonItemsForDocument:self->_document];
  }

  else
  {
    v4 = 0;
  }

  defaultLeftBarButtonItems = self->_defaultLeftBarButtonItems;
  if (defaultLeftBarButtonItems != v4 && ![(NSArray *)defaultLeftBarButtonItems isEqualToArray:v4])
  {
    leftBarButtonItems = [navigationItem leftBarButtonItems];
    v7 = [leftBarButtonItems mutableCopy];

    if (v7)
    {
      if (self->_defaultLeftBarButtonItems)
      {
        [v7 removeObjectsInArray:?];
      }
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v8 = [(NSArray *)v4 copy];
    v9 = self->_defaultLeftBarButtonItems;
    self->_defaultLeftBarButtonItems = v8;

    if (![v7 count] && -[NSArray count](self->_defaultLeftBarButtonItems, "count"))
    {
      [v7 addObjectsFromArray:self->_defaultLeftBarButtonItems];
    }

    [navigationItem setLeftBarButtonItems:v7 animated:0];
  }
}

- (void)_reloadPageData
{
  if (self->_urlString)
  {
    if (!self->_loadURLOperation)
    {
      mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
      networkType = [mEMORY[0x277D7FD00] networkType];

      if (networkType)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
        [(SKUIDocumentContainerViewController *)self _setChildViewController:self->_beforeErrorChildViewController];
        beforeErrorChildViewController = self->_beforeErrorChildViewController;
        self->_beforeErrorChildViewController = 0;

        [(SKUIDocumentContainerViewController *)self _enqueueLoadURLOperation];
      }
    }
  }
}

- (void)_reloadNavigationBarControllerIfNeeded
{
  if (self->_navigationBarController)
  {

    [(SKUIDocumentContainerViewController *)self _reloadNavigationPalette];
  }

  else
  {
    [(SKUIDocumentContainerViewController *)self _reloadNavigationBarController];
    [(SKUIDocumentContainerViewController *)self _reloadDefaultBarButtonItems];

    [(SKUIDocumentContainerViewController *)self _reloadToolbar];
  }
}

- (void)_reloadNavigationBarController
{
  _navigationBarViewElement = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
  navigationItem = [(SKUIDocumentContainerViewController *)self navigationItem];
  navigationBarController = self->_navigationBarController;
  if (navigationBarController)
  {
    existingSearchBarControllers = [(SKUINavigationBarController *)navigationBarController existingSearchBarControllers];
    searchBarControllers = self->_searchBarControllers;
    self->_searchBarControllers = existingSearchBarControllers;

    if (self->_makeSearchBarFirstResponderOnLoad)
    {
      firstObject = [(NSArray *)self->_searchBarControllers firstObject];
      self->_makeSearchBarFirstResponderOnLoad = 0;
    }

    else
    {
      firstObject = 0;
    }

    v9 = [_navigationBarViewElement firstChildForElementType:106];

    v10 = self->_navigationBarController;
    if (v9)
    {
      [(SKUINavigationBarController *)v10 detachNavigationItemControllers];
      v8 = 1;
    }

    else
    {
      [(SKUINavigationBarController *)v10 detachFromNavigationItem:navigationItem];
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    firstObject = 0;
  }

  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28292FAE8])
  {
    v11 = [(UIViewController *)self->_childViewController navigationBarControllerWithViewElement:_navigationBarViewElement];
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
  }

  if (_navigationBarViewElement)
  {
    v11 = [[SKUINavigationBarController alloc] initWithNavigationBarViewElement:_navigationBarViewElement];
  }

LABEL_15:
  if (v11)
  {
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUINavigationBarController *)v11 setClientContext:clientContext];

    [(SKUINavigationBarController *)v11 setDelegate:self];
    [(SKUINavigationBarController *)v11 setParentViewController:self];
    [(SKUINavigationBarController *)v11 setReusableSearchBarControllers:self->_searchBarControllers];
    [(SKUINavigationBarController *)v11 attachToNavigationItem:navigationItem];
  }

  else if (v8)
  {
    [(SKUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:navigationItem];
  }

  v13 = self->_navigationBarController;
  self->_navigationBarController = v11;

  if ([firstObject canBecomeActive])
  {
    [firstObject becomeActive];
    if (self->_selectSearchBarContentOnBecomingFirstResponder)
    {
      searchBar = [firstObject searchBar];
      searchField = [searchBar searchField];
      [searchField selectAll:0];

      self->_selectSearchBarContentOnBecomingFirstResponder = 0;
    }
  }

  [(SKUIDocumentContainerViewController *)self _reloadNavigationPalette];
}

- (void)_reloadNavigationPalette
{
  navigationController = [(SKUIDocumentContainerViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    clientContext = [(SKUIViewController *)self clientContext];
    v5 = [SKUINavigationControllerAssistant assistantForNavigationController:navigationController clientContext:clientContext];

    navigationPaletteView = [(SKUIDocumentContainerViewController *)self navigationPaletteView];
    [v5 setPaletteView:navigationPaletteView animated:0];
    _navigationBarViewElement = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
    [v5 setHidesShadow:{objc_msgSend(_navigationBarViewElement, "hidesShadow")}];
  }
}

- (void)_reloadToolbar
{
  _toolbarViewElement = [(SKUIDocumentContainerViewController *)self _toolbarViewElement];
  navigationController = [(SKUIDocumentContainerViewController *)self navigationController];
  v4 = [[SKUIToolbarController alloc] initWithToolbarViewElement:_toolbarViewElement];
  v5 = v4;
  if (v4)
  {
    [(SKUIToolbarController *)v4 setDelegate:self];
    [(SKUIToolbarController *)v5 updateToolbarForNavigationController:navigationController];
  }

  toolbarController = self->_toolbarController;
  self->_toolbarController = v5;
}

- (void)_sendOnViewAttributesChangeWithAttributes:(id)attributes viewWillAppear:(BOOL)appear
{
  attributesCopy = attributes;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__SKUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke;
  aBlock[3] = &unk_2781FD988;
  objc_copyWeak(&v18, &location);
  appearCopy = appear;
  aBlock[4] = self;
  v7 = attributesCopy;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  applicationState = [mEMORY[0x277D75128] applicationState];

  if (applicationState == 2)
  {
    pendingSizeTransitionCompletion = self->_pendingSizeTransitionCompletion;
    v12 = _Block_copy(v8);
    v13 = self->_pendingSizeTransitionCompletion;
    self->_pendingSizeTransitionCompletion = v12;

    if (!pendingSizeTransitionCompletion)
    {
      v14 = dispatch_time(0, 100000000);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __96__SKUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke_2;
      v15[3] = &unk_2781F80F0;
      v15[4] = self;
      dispatch_after(v14, MEMORY[0x277D85CD0], v15);
    }
  }

  else
  {
    v8[2](v8);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __96__SKUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isViewLoaded])
  {
    v3 = [WeakRetained view];
    v4 = [v3 window];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(a1 + 56);
    }
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (SKUIAllowsLandscapePhone() & v5)
  {
LABEL_11:
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 1088);
    v11[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v9 onViewAttributesChangeWithArguments:v10 completion:0];
  }

LABEL_12:
}

void __96__SKUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) pendingSizeTransitionCompletion];
  if (v4)
  {
    v4[2]();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 1256);
  *(v2 + 1256) = 0;
}

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  childViewController = self->_childViewController;
  if (childViewController != controllerCopy)
  {
    v11 = controllerCopy;
    [(UIViewController *)childViewController willMoveToParentViewController:0];
    if ([(UIViewController *)self->_childViewController isViewLoaded])
    {
      view = [(UIViewController *)self->_childViewController view];
      [view removeFromSuperview];
    }

    [(UIViewController *)self->_childViewController removeFromParentViewController];
    objc_storeStrong(&self->_childViewController, controller);
    [(SKUIDocumentContainerViewController *)self _setNavigationControllerContentInsetAdjustment:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    if (self->_childViewController)
    {
      [(SKUIDocumentContainerViewController *)self addChildViewController:?];
      v8 = self->_childViewController;
      [(SKUIDocumentContainerViewController *)self preferredContentSize];
      [(UIViewController *)v8 setPreferredContentSize:?];
      if ([(SKUIDocumentContainerViewController *)self _appearState]== 1 || [(SKUIDocumentContainerViewController *)self _appearState]== 2)
      {
        [(UIViewController *)self->_childViewController beginAppearanceTransition:1 animated:0];
      }

      view2 = [(SKUIDocumentContainerViewController *)self view];
      view3 = [(UIViewController *)self->_childViewController view];
      [view3 setAutoresizingMask:18];
      [view2 bounds];
      [view3 setFrame:?];
      [view2 insertSubview:view3 atIndex:0];
      [(UIViewController *)self->_childViewController didMoveToParentViewController:self];
      [(UIViewController *)self setNeedsScrollingSegmentContentScrollViewUpdate];
    }

    [(SKUIDocumentContainerViewController *)self _reloadDefaultBarButtonItems];
    childViewController = [(SKUIDocumentContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
    controllerCopy = v11;
  }

  MEMORY[0x2821F96F8](childViewController, controllerCopy);
}

- (BOOL)_shouldFillNavigationBarContentsBasedOnNavigationBarViewElement
{
  _appearState = [(SKUIDocumentContainerViewController *)self _appearState];
  if (_appearState)
  {
    _appearState = [objc_opt_class() allowsChildViewControllerNavigationBarManagement];
    if (_appearState)
    {
      parentViewController = [(SKUIDocumentContainerViewController *)self parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        LOBYTE(_appearState) = 0;
      }

      else if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_2828EAF00]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        LOBYTE(_appearState) = [(UIViewController *)self->_childViewController managesNavigationBarContents]^ 1;
      }

      else
      {
        LOBYTE(_appearState) = 1;
      }
    }
  }

  return _appearState;
}

- (void)_showAccountViewControllerWithURL:(id)l
{
  lCopy = l;
  clientContext = [(SKUIViewController *)self clientContext];
  clientInterface = [clientContext clientInterface];
  v7 = [objc_alloc(MEMORY[0x277D7FD90]) initWithExternalAccountURL:lCopy];

  [v7 setCanMoveToOverlay:0];
  [v7 setClientInterface:clientInterface];
  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  if (SKUIUserInterfaceIdiom(clientContext) == 1)
  {
    [v8 setModalPresentationStyle:2];
  }

  transitionCoordinator = [(SKUIDocumentContainerViewController *)self transitionCoordinator];
  if (transitionCoordinator)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__SKUIDocumentContainerViewController__showAccountViewControllerWithURL___block_invoke;
    v10[3] = &unk_2781FB740;
    v10[4] = self;
    v11 = v8;
    [transitionCoordinator animateAlongsideTransition:0 completion:v10];
  }

  else
  {
    [(SKUIDocumentContainerViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_showLegacyStorePageWithRequest:(id)request page:(id)page pageType:(int64_t)type URLResponse:(id)response
{
  responseCopy = response;
  pageCopy = page;
  requestCopy = request;
  clientContext = [(SKUIViewController *)self clientContext];
  v13 = [clientContext newLegacyStorePageViewControllerForURLResponse:responseCopy];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277D7FE88]);
  }

  clientInterface = [v13 clientInterface];

  if (!clientInterface)
  {
    clientInterface2 = [clientContext clientInterface];
    [v13 setClientInterface:clientInterface2];
  }

  [v13 setCanMoveToOverlay:0];
  [v13 setShouldAdjustContentOffsets:0];
  navigationItem = [(SKUIDocumentContainerViewController *)self navigationItem];
  [v13 _setExistingNavigationItem:navigationItem];

  [v13 setExternalRequest:1];
  [(SKUIDocumentContainerViewController *)self _setChildViewController:v13];
  v17 = [responseCopy URL];
  [v13 reloadWithStorePage:pageCopy ofType:type forURL:v17];

  v18 = [objc_alloc(MEMORY[0x277D69CA0]) initWithURLRequest:requestCopy];
  [v13 setURLRequestProperties:v18];
}

- (id)_sidepackViewControllerWithOptions:(id)options clientContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  v7 = [optionsCopy objectForKey:@"sidepackType"];
  if ([v7 isEqualToString:0x28280B108])
  {
    v8 = [optionsCopy objectForKey:@"sidepackData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SKUIItem alloc] initWithLookupDictionary:v8];
      v10 = SKUIUserInterfaceIdiom(contextCopy);
      v11 = off_2781F6390;
      if (v10 != 1)
      {
        v11 = off_2781F63A8;
      }

      v12 = [objc_alloc(*v11) initWithItem:v9];
      [v12 setClientContext:contextCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(UIViewController *)self->_childViewController animationControllerForPresentedController:controllerCopy presentingController:presentingControllerCopy sourceController:sourceControllerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIViewController *)self->_childViewController animationControllerForDismissedController:controllerCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithDocument:options:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDocumentContainerViewController initWithDocument:options:clientContext:]";
}

+ (void)allowsChildViewControllerNavigationBarManagement
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIDocumentContainerViewController allowsChildViewControllerNavigationBarManagement]";
}

@end