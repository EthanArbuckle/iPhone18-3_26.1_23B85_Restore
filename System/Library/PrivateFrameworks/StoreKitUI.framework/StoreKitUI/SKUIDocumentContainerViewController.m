@interface SKUIDocumentContainerViewController
+ (BOOL)allowsChildViewControllerNavigationBarManagement;
+ (void)allowsChildViewControllerNavigationBarManagement;
- (BOOL)_shouldFillNavigationBarContentsBasedOnNavigationBarViewElement;
- (BOOL)document:(id)a3 evaluateStyleMediaQuery:(id)a4;
- (BOOL)performTestWithName:(id)a3 options:(id)a4;
- (BOOL)prefersNavigationBarBackgroundViewHidden;
- (BOOL)prefersNavigationBarHidden;
- (SKUIDocumentContainerViewController)initWithDocument:(id)a3 options:(id)a4 clientContext:(id)a5;
- (UIScrollView)scrollingTabNestedPagingScrollView;
- (UIView)navigationPaletteView;
- (id)_navigationBarViewElement;
- (id)_newViewControllerWithTemplateElement:(id)a3 options:(id)a4 clientContext:(id)a5;
- (id)_sidepackViewControllerWithOptions:(id)a3 clientContext:(id)a4;
- (id)additionalLeftBarButtonItemForNavigationBarController:(id)a3;
- (id)additionalRightBarButtonItemForNavigationBarController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)contentScrollView;
- (id)impressionableViewElementsForDocument:(id)a3;
- (id)mediaQueryEvaluator:(id)a3 valueForKey:(id)a4;
- (id)navigationBarTintColor;
- (id)navigationBarTitleTextTintColor;
- (id)pendingSizeTransitionCompletion;
- (id)scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)a3;
- (int64_t)navigationBarTintAdjustmentMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_enqueueLoadURLOperation;
- (void)_finishLegacyProtocolOperationForResponse:(id)a3 dataProvider:(id)a4 dictionary:(id)a5;
- (void)_finishLoadOperationWithResponse:(id)a3 error:(id)a4;
- (void)_networkTypeChangeNotification:(id)a3;
- (void)_onReportDOMChange:(id)a3;
- (void)_onReportDocumentReady:(id)a3;
- (void)_onReportPlatformJsonTimes:(id)a3;
- (void)_onReportRequestTimes:(id)a3;
- (void)_redirectToURL:(id)a3;
- (void)_reloadDefaultBarButtonItems;
- (void)_reloadNavigationBarController;
- (void)_reloadNavigationBarControllerIfNeeded;
- (void)_reloadNavigationItemContents;
- (void)_reloadNavigationPalette;
- (void)_reloadPageData;
- (void)_reloadToolbar;
- (void)_sendOnViewAttributesChangeWithAttributes:(id)a3 viewWillAppear:(BOOL)a4;
- (void)_setChildViewController:(id)a3;
- (void)_showAccountViewControllerWithURL:(id)a3;
- (void)_showLegacyStorePageWithRequest:(id)a3 page:(id)a4 pageType:(int64_t)a5 URLResponse:(id)a6;
- (void)_skui_applicationDidEnterBackground:(id)a3;
- (void)_skui_applicationWillEnterForeground:(id)a3;
- (void)_submitPageRenderIfPossible;
- (void)dealloc;
- (void)document:(id)a3 runTestWithName:(id)a4 options:(id)a5;
- (void)documentDidSendMessage:(id)a3;
- (void)documentDidUpdate:(id)a3;
- (void)documentScrollToTop:(id)a3;
- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4;
- (void)loadView;
- (void)mediaQueryEvaluatorDidChange:(id)a3;
- (void)reloadData;
- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4;
- (void)resourceLoaderDidBeginLoading:(id)a3;
- (void)scrollingTabAppearanceStatusWasUpdated:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)skui_viewWillAppear:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SKUIDocumentContainerViewController

- (SKUIDocumentContainerViewController)initWithDocument:(id)a3 options:(id)a4 clientContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [SKUIDocumentContainerViewController initWithDocument:options:clientContext:];
  if (!v11)
  {
LABEL_5:
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v9 debugDescription];
    NSLog(&cfstr_MissingClientC.isa, v13, v14);

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    NSLog(&cfstr_DocumentOption.isa, v16, v10);
  }

LABEL_6:
  v43.receiver = self;
  v43.super_class = SKUIDocumentContainerViewController;
  v17 = [(SKUIDocumentContainerViewController *)&v43 init];
  v18 = v17;
  if (v17)
  {
    [(SKUIViewController *)v17 setClientContext:v11];
    v19 = [v10 objectForKey:@"sidepackType"];
    v20 = [v10 objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v18->_urlString, v20);
    }

    v21 = [v9 templateElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v21;
      v22 = [(SKUIDocumentContainerViewController *)v18 _sidepackViewControllerWithOptions:v10 clientContext:v11];
      v23 = [(SKUIDocumentContainerViewController *)v18 navigationItem];
      [v22 _setExistingNavigationItem:v23];
    }

    else if (v21 || !v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = v18;
        v18 = 0;
        goto LABEL_27;
      }

      v25 = [(SKUIDocumentContainerViewController *)v18 _newViewControllerWithTemplateElement:v21 options:v10 clientContext:v11];
      v26 = v21;
      v23 = v25;
      v40 = v26;
      if (v25)
      {
        v23 = v25;
        v18->_templateViewElementType = [v26 elementType];
      }

      v22 = v23;
    }

    else
    {
      v40 = 0;
      v22 = objc_alloc_init(MEMORY[0x277D75D28]);
      v23 = [v22 view];
      v24 = [MEMORY[0x277D75348] whiteColor];
      [v23 setBackgroundColor:v24];
    }

    if (!v22)
    {
      v22 = v18;
      v18 = 0;
LABEL_26:
      v21 = v40;
LABEL_27:

      goto LABEL_28;
    }

    v39 = v19;
    objc_storeStrong(&v18->_document, a3);
    [(IKAppDocument *)v18->_document setDelegate:v18];
    v18->_scrollingTabAppearanceStatus.progress = 1.0;
    *&v18->_scrollingTabAppearanceStatus.isBouncingOffTheEdge = 0;
    [(SKUIDocumentContainerViewController *)v18 _setChildViewController:v22];
    v27 = [v10 copy];
    presentationOptions = v18->_presentationOptions;
    v18->_presentationOptions = v27;

    [(IKAppDocument *)v18->_document onLoad];
    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v18 selector:sel__skui_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    [v29 addObserver:v18 selector:sel_documentDidSendMessage_ name:0x2828094A8 object:v18->_document];
    v30 = [v11 applicationController];
    v31 = [v30 options];
    if ([v31 pageRenderMetricsEnabled])
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
      v35 = [(SKUIDocumentContainerViewController *)v18 pageRenderEvent];
      [v35 setPageURL:urlString];

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __78__SKUIDocumentContainerViewController_initWithDocument_options_clientContext___block_invoke;
      v41[3] = &unk_2781FD910;
      v36 = v18;
      v42 = v36;
      [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:v41];
      v37 = objc_alloc_init(SKUIMetricsDOMChangeQueue);
      [(SKUIDocumentContainerViewController *)v36 setDomChangeTimingQueue:v37];

      v30 = v42;
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [v3 removeObserver:self name:0x2828094A8 object:self->_document];
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

- (void)skui_viewWillAppear:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIViewController *)self->_childViewController skui_viewWillAppear:v3];
  }

  v5.receiver = self;
  v5.super_class = SKUIDocumentContainerViewController;
  [(SKUIViewController *)&v5 skui_viewWillAppear:v3];
}

- (id)contentScrollView
{
  if (self->_childViewController)
  {
    v2 = [(UIViewController *)self->_childViewController contentScrollView];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SKUIDocumentContainerViewController;
    v2 = [(SKUIDocumentContainerViewController *)&v4 contentScrollView];
  }

  return v2;
}

- (void)loadView
{
  v3 = [(IKAppDocument *)self->_document templateElement];
  v4 = [v3 style];
  v5 = [v4 ikBackgroundColor];
  v6 = [v5 color];

  if (v6)
  {
    v15 = 1.0;
    if ([v6 getRed:0 green:0 blue:0 alpha:&v15])
    {
      v7 = v15 <= 0.00000011920929;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277D75D18]);
  v11 = [MEMORY[0x277D75DA0] keyWindow];
  [v11 bounds];
  v12 = [v10 initWithFrame:?];

  [v12 setBackgroundColor:v9];
  childViewController = self->_childViewController;
  if (childViewController)
  {
    v14 = [(UIViewController *)childViewController view];
    [v14 setAutoresizingMask:18];
    [v12 bounds];
    [v14 setFrame:?];
    [v12 addSubview:v14];
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

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v6 setPreferredContentSize:?];
  [(UIViewController *)self->_childViewController setPreferredContentSize:width, height];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SKUIViewController *)self clientContext];
  v3 = SKUIUserInterfaceIdiom(v2);

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

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_childViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v5 delayPresentationIfNeededForParentViewController:v4];
    }
  }

  v6.receiver = self;
  v6.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v6 willMoveToParentViewController:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  [v5 pageAppearTime];
  v7 = v6;

  if (v7 < 2.22044605e-16)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSince1970];
    v10 = v9;
    v11 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v11 setPageAppearTime:v10];

    [(SKUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"SKUIApplicationPageDidDisplayNotification" object:self];

  [(IKAppDocument *)self->_document onAppear];
  v13.receiver = self;
  v13.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v13 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v9 setPageDisappearTime:v8];
  }

  [(IKAppDocument *)self->_document onDisappear];
  v10.receiver = self;
  v10.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v10 viewDidDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  p_viewSize = &self->_viewSize;
  v4 = [(SKUIDocumentContainerViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  width = p_viewSize->width;
  height = p_viewSize->height;

  if (width != v6 || height != v8)
  {
    v12 = [(SKUIDocumentContainerViewController *)self view];
    [v12 bounds];
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
  v18 = [(SKUIDocumentContainerViewController *)self bottomLayoutGuide];
  [v18 length];
  v20 = v19;

  v21 = [(SKUIDocumentContainerViewController *)self topLayoutGuide];
  [v21 length];
  v23 = v22;

  if (vabdd_f64(self->_lastBottomLayoutGuideLength, v20) > 0.00000011920929 || vabdd_f64(self->_lastTopLayoutGuideLength, v23) > 0.00000011920929)
  {
    self->_lastBottomLayoutGuideLength = v20;
    self->_lastTopLayoutGuideLength = v23;
    if ([(UIViewController *)self->_childViewController isViewLoaded])
    {
      v24 = [(UIViewController *)self->_childViewController view];
      [v24 setNeedsLayout];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  p_viewSize = &self->_viewSize;
  v6 = [(SKUIDocumentContainerViewController *)self view];
  [v6 bounds];
  p_viewSize->width = v7;
  p_viewSize->height = v8;

  [(SKUIDocumentContainerViewController *)self reloadData];
  if (!self->_personalizationItems)
  {
    v9 = [(IKAppDocument *)self->_document templateElement];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 personalizationLibraryItems];
      personalizationItems = self->_personalizationItems;
      self->_personalizationItems = v11;

      v13 = +[SKUIItemStateCenter defaultCenter];
      [v13 beginObservingLibraryItems:self->_personalizationItems];
    }
  }

  [(SKUIDocumentContainerViewController *)self _reloadNavigationBarControllerIfNeeded];
  if ([(SKUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    v14 = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
    v15 = [(SKUIDocumentContainerViewController *)self navigationItem];
    [v15 setHidesBackButton:objc_msgSend(v14 animated:{"hidesBackButton"), 0}];

    v16 = [v14 style];
    v17 = [v16 visibility];
    v18 = [v17 isEqualToString:@"hidden"];

    v19 = [(SKUIDocumentContainerViewController *)self navigationController];
    [v19 setNavigationBarHidden:v18 animated:v3];
  }

  [(SKUIViewController *)self forceOrientationBackToSupportedOrientation];
  v20 = [(SKUIDocumentContainerViewController *)self contentScrollView];
  [v20 contentInset];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v22 == 0.0)
  {
    v29 = [(SKUIDocumentContainerViewController *)self topLayoutGuide];
    [v29 length];
    v31 = v30;

    if (v22 != v31)
    {
      v32 = [(SKUIDocumentContainerViewController *)self topLayoutGuide];
      [v32 length];
      v34 = v33;

      [(SKUIDocumentContainerViewController *)self _setNavigationControllerContentInsetAdjustment:v34, v24, v26, v28];
    }
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_orientationAtDisappear)
  {
    v36 = [MEMORY[0x277D75128] sharedApplication];
    v37 = [v36 statusBarOrientation];

    if (v37 != [(NSNumber *)self->_orientationAtDisappear integerValue])
    {
      if ((v37 - 3) >= 2)
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
    v40 = [(SKUIDocumentContainerViewController *)self view];
    [v40 frame];
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

  v51 = [MEMORY[0x277D75418] currentDevice];
  v52 = [v51 userInterfaceIdiom];

  if ((v52 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v53 = [MEMORY[0x277D75128] sharedApplication];
    v54 = [v53 SKUI_isFullscreen];

    if ((v54 & 1) == 0)
    {
      v55 = [(SKUIDocumentContainerViewController *)self view];
      [v55 frame];
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
  [(SKUIViewController *)&v61 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v5 initWithInteger:{objc_msgSend(v6, "statusBarOrientation")}];
  orientationAtDisappear = self->_orientationAtDisappear;
  self->_orientationAtDisappear = v7;

  v9 = MEMORY[0x277CCAE60];
  v10 = [(SKUIDocumentContainerViewController *)self view];
  [v10 bounds];
  v13 = [v9 valueWithCGSize:{v11, v12}];
  sizeAtDisappear = self->_sizeAtDisappear;
  self->_sizeAtDisappear = v13;

  v15 = [(SKUIDocumentContainerViewController *)self navigationController];
  v16 = [v15 viewControllers];
  v17 = [v16 containsObject:self];

  if ((v17 & 1) == 0)
  {
    v18 = [(IKAppDocument *)self->_document navigationBarElement];
    [v18 dispatchEventOfType:8 canBubble:0 isCancelable:0 extraInfo:0 completionBlock:0];
  }

  v19.receiver = self;
  v19.super_class = SKUIDocumentContainerViewController;
  [(SKUIDocumentContainerViewController *)&v19 viewWillDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
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

    if (v7)
    {
      [v7 targetTransform];
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
    [v7 animateAlongsideTransition:0 completion:v15];
    v14.receiver = self;
    v14.super_class = SKUIDocumentContainerViewController;
    [(SKUIDocumentContainerViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
    [(SKUIDocumentContainerViewController *)self _reloadNavigationPalette];
  }
}

- (id)pendingSizeTransitionCompletion
{
  v2 = _Block_copy(self->_pendingSizeTransitionCompletion);

  return v2;
}

- (BOOL)document:(id)a3 evaluateStyleMediaQuery:(id)a4
{
  v5 = a4;
  mediaQueryEvaluator = self->_mediaQueryEvaluator;
  if (!mediaQueryEvaluator)
  {
    v7 = objc_alloc_init(SKUIMediaQueryEvaluator);
    v8 = self->_mediaQueryEvaluator;
    self->_mediaQueryEvaluator = v7;

    [(SKUIMediaQueryEvaluator *)self->_mediaQueryEvaluator setDelegate:self];
    mediaQueryEvaluator = self->_mediaQueryEvaluator;
  }

  v9 = [(SKUIMediaQueryEvaluator *)mediaQueryEvaluator evaluateMediaQuery:v5];

  return v9;
}

- (void)document:(id)a3 runTestWithName:(id)a4 options:(id)a5
{
  v8 = a4;
  v7 = a5;
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28291AB68])
  {
    [(UIViewController *)self->_childViewController performTestWithName:v8 options:v7];
  }
}

- (void)documentDidUpdate:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_pageResponseAbsoluteTime)
  {
    goto LABEL_13;
  }

  v5 = [MEMORY[0x277D69B38] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
    v8 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v58, v55}];
    free(v16);
    v54 = v8;
    SSFileLog();
LABEL_11:
  }

  pageResponseAbsoluteTime = self->_pageResponseAbsoluteTime;
  self->_pageResponseAbsoluteTime = 0;

LABEL_13:
  v18 = [MEMORY[0x277CBEAA8] date];
  [v18 timeIntervalSince1970];
  v20 = v19;

  v21 = [v4 templateElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v21 elementType];
  }

  else
  {
    v22 = 0;
  }

  v23 = +[SKUIItemStateCenter defaultCenter];
  v24 = self->_personalizationItems;
  v25 = [v21 personalizationLibraryItems];
  personalizationItems = self->_personalizationItems;
  self->_personalizationItems = v25;

  if ([(NSSet *)self->_personalizationItems count])
  {
    [v23 beginObservingLibraryItems:self->_personalizationItems];
  }

  if ([(NSSet *)v24 count])
  {
    [v23 endObservingLibraryItems:v24];
  }

  if (v22 == self->_templateViewElementType)
  {
    v27 = self->_childViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v27 documentDidUpdate:v4];
    }

    if (SKUIViewControllerIsVisible(self->_childViewController))
    {
      v57 = *MEMORY[0x277CBE738];
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      [v4 performSelector:sel_onUpdate withObject:0 afterDelay:v28 inModes:0.0];
    }
  }

  else
  {
    if (v22)
    {
      presentationOptions = self->_presentationOptions;
      v30 = [(SKUIViewController *)self clientContext];
      v27 = [(SKUIDocumentContainerViewController *)self _newViewControllerWithTemplateElement:v21 options:presentationOptions clientContext:v30];
    }

    else
    {
      v27 = 0;
    }

    [(SKUIDocumentContainerViewController *)self _setChildViewController:v27];
    self->_templateViewElementType = v22;
  }

  v31 = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
  v32 = [(SKUIDocumentContainerViewController *)self navigationItem];
  navigationBarController = self->_navigationBarController;
  v56 = v4;
  if (v31)
  {
    v34 = [(SKUINavigationBarController *)navigationBarController navigationBarViewElement];

    if (v34 == v31)
    {
      [(SKUINavigationBarController *)self->_navigationBarController updateNavigationItem:v32];
      [(SKUIDocumentContainerViewController *)self _reloadNavigationPalette];
    }

    else
    {
      [(SKUIDocumentContainerViewController *)self _reloadNavigationBarController];
    }
  }

  else
  {
    v35 = [(SKUINavigationBarController *)navigationBarController existingSearchBarControllers];
    searchBarControllers = self->_searchBarControllers;
    self->_searchBarControllers = v35;

    [(SKUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:v32];
    [(SKUINavigationBarController *)self->_navigationBarController setParentViewController:0];
    v37 = self->_navigationBarController;
    self->_navigationBarController = 0;
  }

  [(SKUIDocumentContainerViewController *)self prefersNavigationBarHidden];
  if ([(SKUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    v38 = [v31 hidesBackButton];
    v39 = [(SKUIDocumentContainerViewController *)self navigationItem];
    [v39 setHidesBackButton:v38];

    v40 = [v31 style];
    v41 = [v40 visibility];
    v42 = [v41 isEqualToString:@"hidden"];

    v43 = [(SKUIDocumentContainerViewController *)self navigationController];
    [v43 setNavigationBarHidden:v42 animated:0];
  }

  [(SKUIDocumentContainerViewController *)self _reloadDefaultBarButtonItems];
  v44 = [(SKUIDocumentContainerViewController *)self _toolbarViewElement];
  v45 = [(SKUIDocumentContainerViewController *)self navigationController];
  toolbarController = self->_toolbarController;
  if (v44)
  {
    v47 = [(SKUIToolbarController *)toolbarController toolbarViewElement];

    if (v47 == v44)
    {
      [(SKUIToolbarController *)self->_toolbarController updateToolbarForNavigationController:v45];
    }

    else
    {
      [(SKUIDocumentContainerViewController *)self _reloadToolbar];
    }
  }

  else
  {
    [(SKUIToolbarController *)toolbarController detachFromNavigationController:v45];
    [(SKUIToolbarController *)self->_toolbarController setDelegate:0];
    v48 = self->_toolbarController;
    self->_toolbarController = 0;
  }

  v49 = [MEMORY[0x277CCAB98] defaultCenter];
  [v49 postNotificationName:@"SKUIApplicationPageDidUpdateNotification" object:self];

  v50 = [(SKUIDocumentContainerViewController *)self domChangeTimingQueue];
  v51 = [v50 oldestPendingChange];

  if (v51)
  {
    v52 = [MEMORY[0x277CBEAA8] date];
    [v52 timeIntervalSince1970];
    [v51 setRenderEndTime:?];

    [v51 setRenderStartTime:v20];
    v53 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v53 addDOMChange:v51];
  }

  [(SKUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
}

- (void)documentScrollToTop:(id)a3
{
  v3 = [(SKUIDocumentContainerViewController *)self contentScrollView];
  if (v3)
  {
    v7 = v3;
    [v3 contentOffset];
    v5 = v4;
    [v7 contentInset];
    [v7 setContentOffset:0 animated:{v5, -v6}];
    v3 = v7;
  }
}

- (id)impressionableViewElementsForDocument:(id)a3
{
  v3 = self->_childViewController;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIViewController *)v3 impressionableViewElements];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)documentDidSendMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v8 = [v5 objectForKeyedSubscript:0x2828094C8];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:0x2828094E8];

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

- (void)resourceLoaderDidBeginLoading:(id)a3
{
  v4 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  [v4 resourceRequestStartTime];
  v6 = v5;

  if (v6 < 2.22044605e-16)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSince1970];
    v9 = v8;
    v10 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v10 setResourceRequestStartTime:v9];
  }

  v11 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  [v11 setResourceRequestEndTime:0.0];
}

- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4
{
  v15 = a3;
  if (a4 == 1)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v9 setResourceRequestOnScreenEndTime:v8];
  }

  if ([v15 isIdle])
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    [v10 timeIntervalSince1970];
    v12 = v11;
    v13 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v13 setResourceRequestEndTime:v12];

    [(SKUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
  }

  else
  {
    v14 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v14 setResourceRequestEndTime:0.0];
  }
}

- (id)mediaQueryEvaluator:(id)a3 valueForKey:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:0x2827FFCC8])
  {
    v6 = MEMORY[0x277CCABB0];
    height = self->_viewSize.height;
LABEL_5:
    v8 = [v6 numberWithDouble:height];
    goto LABEL_6;
  }

  if ([v5 isEqualToString:0x2827FFCA8])
  {
    v6 = MEMORY[0x277CCABB0];
    height = self->_viewSize.width;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:0x2827FFD28])
  {
    v10 = [MEMORY[0x277D7FD00] sharedInstance];
    v8 = SKUIMediaQueryNetworkTypeString([v10 networkType]);
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (void)mediaQueryEvaluatorDidChange:(id)a3
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

- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SKUINavigationBarController *)self->_navigationBarController barButtonItemForElementIdentifier:v10];
  if (v7)
  {
    v8 = objc_alloc_init(SKUIModalSourceViewProvider);
    [(SKUIModalSourceViewProvider *)v8 setSourceButtonBarItem:v7];
    v6[2](v6, v8);
  }

  else
  {
    v8 = [(SKUINavigationBarController *)self->_navigationBarController viewForElementIdentifier:v10];
    if (v8)
    {
      v9 = objc_alloc_init(SKUIModalSourceViewProvider);
      [(SKUIModalSourceViewProvider *)v9 setOriginalSourceView:v8];
      v6[2](v6, v9);
    }

    else if (([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28291F928]& 1) != 0)
    {
      [(UIViewController *)self->_childViewController getModalSourceViewForElementIdentifier:v10 completionBlock:v6];
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

- (id)additionalLeftBarButtonItemForNavigationBarController:(id)a3
{
  v4 = [(SKUIViewController *)self clientContext];
  v5 = [v4 additionalLeftBarButtonItemForDocumentContainerViewController:self];

  return v5;
}

- (id)additionalRightBarButtonItemForNavigationBarController:(id)a3
{
  v4 = [(SKUIViewController *)self clientContext];
  v5 = [v4 additionalRightBarButtonItemForDocumentContainerViewController:self];

  return v5;
}

- (id)navigationBarTitleTextTintColor
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIViewController *)self->_childViewController navigationBarTitleTextTintColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    v3 = [(UIViewController *)self->_childViewController navigationBarTintColor];
  }

  else
  {
    v4 = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
    v3 = [v4 tintColor];
  }

  return v3;
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
    v5 = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
    v6 = [v5 isTransparent];

    return v6;
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
  v3 = [(SKUINavigationBarController *)self->_navigationBarController navigationPaletteView];
  if (!v3)
  {
    if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_2828EAF00]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v3 = [(UIViewController *)self->_childViewController navigationPaletteView];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)scrollingTabAppearanceStatusWasUpdated:(id)a3
{
  p_scrollingTabAppearanceStatus = &self->_scrollingTabAppearanceStatus;
  self->_scrollingTabAppearanceStatus = a3;
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
    v3 = [(UIViewController *)self->_childViewController scrollingTabNestedPagingScrollView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)a3
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28292FA58])
  {
    v5 = [(UIViewController *)self->_childViewController scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)performTestWithName:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28291AB68])
  {
    v8 = [(UIViewController *)self->_childViewController performTestWithName:v6 options:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_onReportPlatformJsonTimes:(id)a3
{
  v18 = a3;
  v4 = [v18 objectForKeyedSubscript:@"jsonParseStartTime"];
  if (v4)
  {
    v5 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v5 platformJsonParseStartTime];
    v7 = v6;

    if (v7 < 2.22044605e-16)
    {
      [SKUIMetricsUtilities timeIntervalFromJSTime:v4];
      v9 = v8;
      v10 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      [v10 setPlatformJsonParseStartTime:v9];
    }
  }

  v11 = [v18 objectForKeyedSubscript:@"jsonParseEndTime"];
  if (v11)
  {
    v12 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v12 platformJsonParseEndTime];
    v14 = v13;

    if (v14 < 2.22044605e-16)
    {
      [SKUIMetricsUtilities timeIntervalFromJSTime:v11];
      v16 = v15;
      v17 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      [v17 setPlatformJsonParseEndTime:v16];
    }
  }
}

- (void)_onReportDOMChange:(id)a3
{
  v4 = a3;
  v6 = [[SKUIMetricsDOMChange alloc] initWithReportDomBuildTimesMessagePayload:v4];

  if (v6)
  {
    v5 = [(SKUIDocumentContainerViewController *)self domChangeTimingQueue];
    [v5 addPendingChange:v6];
  }
}

- (void)_onReportRequestTimes:(id)a3
{
  v7 = a3;
  v4 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];

  if (v4)
  {
    v5 = [[SKUIMetricsRequestInfo alloc] initWithReportRequestTimesMessagePayload:v7];
    if (v5)
    {
      v6 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      [v6 addRequest:v5];
    }
  }
}

- (void)_onReportDocumentReady:(id)a3
{
  v20 = a3;
  v4 = [v20 objectForKeyedSubscript:@"clientCorrelationKey"];

  if (v4)
  {
    v5 = [v20 objectForKeyedSubscript:@"clientCorrelationKey"];
    v6 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v6 setClientCorrelationKey:v5];
  }

  v7 = [v20 objectForKeyedSubscript:@"metricsBase"];

  if (v7)
  {
    v8 = [v20 objectForKeyedSubscript:@"metricsBase"];
    v9 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v9 setMetricsBase:v8];
  }

  v10 = [v20 objectForKeyedSubscript:@"documentReadyTime"];

  if (v10)
  {
    v11 = [v20 objectForKeyedSubscript:@"documentReadyTime"];
    [SKUIMetricsUtilities timeIntervalFromJSTime:v11];
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSince1970];
  }

  v13 = v12;
  v14 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  [v14 setPageUserReadyTime:v13];

  v15 = [v20 objectForKeyedSubscript:@"userInteractionTime"];

  if (v15)
  {
    v16 = [v20 objectForKeyedSubscript:@"userInteractionTime"];
    [SKUIMetricsUtilities timeIntervalFromJSTime:v16];
    v18 = v17;
    v19 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v19 setPageRequestedTime:v18];
  }

  [(SKUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
}

- (void)_submitPageRenderIfPossible
{
  v14 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
  if ([v14 isReadyForSubmission])
  {
    v3 = [(SKUIDocumentContainerViewController *)self domChangeTimingQueue];
    v4 = [v3 isEmpty];

    if (v4)
    {
      v5 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      v6 = [(SKUIViewController *)self clientContext];
      [v5 appendSamplingPropertiesFromClientContext:v6];

      v7 = [(SKUIViewController *)self clientContext];
      v8 = [v7 _applicationController];
      v9 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      [v8 recordMetricsEvent:v9 flushImmediately:0];

      if (+[SKUIMetricsUtilities shouldLogTimingMetrics])
      {
        SSDebugLevel();
        SSDebugFileLevel();
        v13 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        SSDebugLog();
      }

      if (+[SKUIMetricsUtilities showEventNotifications])
      {
        v10 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        v11 = +[SKUIStatusBarAlertCenter sharedCenter];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __66__SKUIDocumentContainerViewController__submitPageRenderIfPossible__block_invoke;
        v15[3] = &unk_2781F80F0;
        v16 = v10;
        v12 = v10;
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
    v3 = [(SKUIDocumentContainerViewController *)self navigationItem];
    [(SKUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:v3];
    [(SKUINavigationBarController *)self->_navigationBarController attachToNavigationItem:v3];
  }
}

- (void)_networkTypeChangeNotification:(id)a3
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

- (void)_skui_applicationDidEnterBackground:(id)a3
{
  v4 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSince1970];
    v7 = v6;
    v8 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
    [v8 setPageDisappearTime:v7];
  }

  if (SKUIViewControllerIsVisible(self))
  {
    [(IKAppDocument *)self->_document onDisappear];
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277D76758];
  [v10 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [v10 addObserver:self selector:sel__skui_applicationWillEnterForeground_ name:v9 object:0];
}

- (void)_skui_applicationWillEnterForeground:(id)a3
{
  if (SKUIViewControllerIsVisible(self))
  {
    [(IKAppDocument *)self->_document onAppear];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76758] object:0];
}

- (void)_enqueueLoadURLOperation
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self->_urlString];
  v4 = [(SKUIViewController *)self clientContext];
  v5 = [v4 newLoadStoreURLOperationWithURL:v3];
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
  v10 = [MEMORY[0x277D69B38] sharedConfig];
  v11 = [v10 shouldLog];
  v12 = [v10 shouldLogToDisk];
  v13 = [v10 OSLogObject];
  v14 = v13;
  if (v12)
  {
    v11 |= 2u;
  }

  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v11 &= 2u;
  }

  if (!v11)
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

  v19 = [(SKUIViewController *)self operationQueue];
  [v19 addOperation:self->_loadURLOperation];

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

- (void)_finishLegacyProtocolOperationForResponse:(id)a3 dataProvider:(id)a4 dictionary:(id)a5
{
  v21 = a3;
  v8 = a5;
  v9 = [a4 redirectURL];
  if (v9)
  {
    [(SKUIDocumentContainerViewController *)self _redirectToURL:v9];
  }

  else
  {
    v10 = [v21 URLResponse];
    v11 = [v10 URL];
    v12 = [v11 absoluteString];
    urlString = self->_urlString;
    self->_urlString = v12;

    [(SKUIDocumentContainerViewController *)self _setChildViewController:0];
    v14 = [v8 objectForKey:*MEMORY[0x277D7FD78]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [objc_alloc(MEMORY[0x277D7FCE8]) initWithDialogDictionary:v14], v16 = objc_msgSend(v15, "kind"), v15, v16 != 1))
    {
      v17 = [(SKUIViewController *)self clientContext];
      document = self->_document;
      v19 = [v21 data];
      v20 = [v21 URLResponse];
      [v17 sendOnPageResponseWithDocument:document data:v19 URLResponse:v20 performanceMetrics:0];
    }
  }
}

- (void)_finishLoadOperationWithResponse:(id)a3 error:(id)a4
{
  v108 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v92 = v7;
  if (v6 && !v7)
  {
    v91 = [v6 URLResponse];
    v8 = [v91 allHeaderFields];
    v9 = ISDictionaryValueForCaseInsensitiveString();

    if (!v9)
    {
      v9 = [v91 MIMEType];
    }

    v10 = [(SSVLoadURLOperation *)self->_loadURLOperation metricsPageEvent];
    if (v10)
    {
      v11 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
      v12 = [v11 clientCorrelationKey];

      if (!v12)
      {
        v13 = [v10 clientCorrelationKey];
        v14 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [v14 setClientCorrelationKey:v13];

        [v10 requestStartTime];
        v16 = v15;
        v17 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [v17 setPlatformRequestStartTime:v16];

        [v10 responseStartTime];
        v19 = v18;
        v20 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [v20 setPlatformResponseStartTime:v19];

        [v10 responseEndTime];
        v22 = v21;
        v23 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [v23 setPlatformResponseEndTime:v22];

        v24 = [v10 isCachedResponse];
        v25 = [(SKUIDocumentContainerViewController *)self pageRenderEvent];
        [v25 setPlatformResponseWasCached:v24];
      }
    }

    if ([v9 rangeOfString:@"itml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = [MEMORY[0x277D69B38] sharedConfig];
      v45 = [v44 shouldLog];
      if ([v44 shouldLogToDisk])
      {
        v45 |= 2u;
      }

      v46 = [v44 OSLogObject];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = v45;
      }

      else
      {
        v47 = v45 & 2;
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
      [v10 requestStartTime];
      v71 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
      v102[0] = v71;
      v101[1] = @"responseStartTime";
      [v10 responseStartTime];
      v72 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
      v102[1] = v72;
      v101[2] = @"responseEndTime";
      [v10 responseEndTime];
      v73 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
      v102[2] = v73;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];

      v75 = [(SKUIViewController *)self clientContext];
      document = self->_document;
      v77 = [v6 data];
      v78 = [v6 URLResponse];
      [v75 sendOnPageResponseWithDocument:document data:v77 URLResponse:v78 performanceMetrics:v74];

      goto LABEL_42;
    }

    if ([v9 rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v9 rangeOfString:@"html" options:1] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v9 rangeOfString:@"text/xml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = MEMORY[0x277CCAC58];
          v27 = [v6 data];
          v28 = [v26 propertyListWithData:v27 options:0 format:0 error:0];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [v28 objectForKey:@"page-type"];
            if (v29 && ([v28 objectForKey:@"items"], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
            {
              v31 = objc_alloc_init(MEMORY[0x277D7FE98]);
              [v31 loadFromDictionary:v28];
              v32 = [(SSVLoadURLOperation *)self->_loadURLOperation URLRequest];
              v33 = [v6 URLResponse];
              [(SKUIDocumentContainerViewController *)self _showLegacyStorePageWithRequest:v32 page:v31 pageType:0 URLResponse:v33];
            }

            else
            {
              v83 = [objc_alloc(MEMORY[0x277D7FD28]) initWithPropertyList:v28];
              v84 = [MEMORY[0x277D7FD30] provider];
              [v84 setShouldProcessAuthenticationDialogs:1];
              [v84 setShouldProcessDialogs:0];
              v85 = [MEMORY[0x277D69A20] defaultStore];
              v90 = [v85 activeAccount];

              if (v90)
              {
                v86 = [objc_alloc(MEMORY[0x277D69A58]) initWithAccount:v90];
                [v84 setAuthenticationContext:v86];
              }

              [v83 setDataProvider:v84];
              objc_initWeak(location, v83);
              objc_initWeak(&from, self);
              v93[0] = MEMORY[0x277D85DD0];
              v93[1] = 3221225472;
              v93[2] = __78__SKUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_259;
              v93[3] = &unk_2781FD960;
              objc_copyWeak(&v96, location);
              objc_copyWeak(&v97, &from);
              v94 = v6;
              v95 = v28;
              [v83 setCompletionBlock:v93];
              v87 = [(SKUIViewController *)self operationQueue];
              [v87 addOperation:v83];

              objc_destroyWeak(&v97);
              objc_destroyWeak(&v96);
              objc_destroyWeak(&from);
              objc_destroyWeak(location);
            }
          }
        }

        goto LABEL_42;
      }

      v66 = [(SSVLoadURLOperation *)self->_loadURLOperation URLRequest];
      v79 = [v6 data];
      v80 = [v6 URLResponse];
      [(SKUIDocumentContainerViewController *)self _showLegacyStorePageWithRequest:v66 page:v79 pageType:1 URLResponse:v80];
    }

    else
    {
      v64 = [SKUILegacyNativeViewController alloc];
      v65 = [v6 data];
      v66 = [(SKUILegacyNativeViewController *)v64 initWithData:v65 fromOperation:self->_loadURLOperation];

      v67 = [(SKUIViewController *)self clientContext];
      [(SKUIViewController *)v66 setClientContext:v67];

      v68 = [(SKUIDocumentContainerViewController *)self navigationItem];
      [(SKUILegacyNativeViewController *)v66 _setExistingNavigationItem:v68];

      [(SKUILegacyNativeViewController *)v66 reloadData];
      [(SKUIDocumentContainerViewController *)self _setChildViewController:v66];
    }

LABEL_42:
    v81 = self->_urlString;
    self->_urlString = 0;

    goto LABEL_43;
  }

  v34 = [MEMORY[0x277D69B38] sharedConfig];
  v35 = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    v36 = v35 | 2;
  }

  else
  {
    v36 = v35;
  }

  v37 = [v34 OSLogObject];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
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
  v53 = [(UIViewController *)self->_beforeErrorChildViewController view];
  v54 = [v53 backgroundColor];

  if (!v54)
  {
    v55 = [(SKUIDocumentContainerViewController *)self view];
    v54 = [v55 backgroundColor];
  }

  v56 = [SKUIErrorDocumentViewController alloc];
  v57 = [(SKUIViewController *)self clientContext];
  v58 = [(SKUIErrorDocumentViewController *)v56 initWithBackgroundColor:v54 clientContext:v57];

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
  v60 = [(SKUIViewController *)self clientContext];
  v61 = [v60 _applicationController];
  [v61 recordMetricsEvent:v59 flushImmediately:0];

  v62 = [MEMORY[0x277CCAB98] defaultCenter];
  v63 = [MEMORY[0x277D7FD00] sharedInstance];
  [v62 addObserver:self selector:sel__networkTypeChangeNotification_ name:*MEMORY[0x277D7FCC0] object:v63];

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
    v3 = [(IKAppDocument *)self->_document navigationBarElement];
    if (!v3)
    {
      v4 = [(IKAppDocument *)self->_document templateElement];
      if (objc_opt_respondsToSelector())
      {
        v3 = [v4 navigationBarElement];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_newViewControllerWithTemplateElement:(id)a3 options:(id)a4 clientContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SKUIViewController *)self clientContext];
  v12 = [v11 documentViewControllerForTemplateViewElement:v8];

  if (!v12)
  {
    v13 = [v9 objectForKey:@"type"];
    v14 = [v13 isEqual:0x2828080A8];
    v15 = [v8 elementType];
    if (v15 <= 82)
    {
      if (v15 <= 36)
      {
        if (v15 > 26)
        {
          if (v15 == 27)
          {
            v16 = SKUIContentUnavailableDocumentViewController;
            goto LABEL_43;
          }

          if (v15 == 34)
          {
            v16 = SKUIEditorDocumentViewController;
            goto LABEL_43;
          }
        }

        else
        {
          if (v15 == 17)
          {
            v19 = v8;
            v20 = [v19 type];
            v21 = [v20 isEqualToString:@"modern"];

            v22 = off_2781F6560;
            if (!v21)
            {
              v22 = off_2781F6258;
            }

            v12 = [objc_alloc(*v22) initWithTemplateElement:v19];

            goto LABEL_45;
          }

          if (v15 == 25)
          {
            v16 = SKUICommentDocumentViewController;
LABEL_43:
            v18 = [[v16 alloc] initWithTemplateElement:v8];
            goto LABEL_44;
          }
        }

        goto LABEL_45;
      }

      if (v15 <= 70)
      {
        if (v15 == 37)
        {
          v16 = SKUIExploreDocumentViewController;
          goto LABEL_43;
        }

        if (v15 == 65)
        {
          v16 = SKUILoadingDocumentViewController;
          goto LABEL_43;
        }

LABEL_45:

        goto LABEL_46;
      }

      if (v15 == 71)
      {
        v16 = SKUIMenuBarTemplateDocumentViewController;
        goto LABEL_43;
      }

      if (v15 != 78)
      {
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    if (v15 > 120)
    {
      if (v15 <= 131)
      {
        if (v15 == 121)
        {
          v16 = SKUISignInDocumentViewController;
          goto LABEL_43;
        }

        if (v15 != 129)
        {
          goto LABEL_45;
        }

        v17 = SKUISplitViewDocumentViewController;
        goto LABEL_27;
      }

      if (v15 != 132)
      {
        if (v15 == 148)
        {
          v16 = SKUITrendingSearchDocumentViewController;
          goto LABEL_43;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v15 <= 92)
      {
        if (v15 == 83)
        {
          v16 = SKUIPanelDocumentViewController;
          goto LABEL_43;
        }

        if (v15 != 85)
        {
          goto LABEL_45;
        }

LABEL_30:
        v18 = [[SKUIPhysicalCirclesDocumentViewController alloc] initWithPhysicalCirclesTemplateViewElement:v8];
        goto LABEL_44;
      }

      if (v15 != 93)
      {
        if (v15 != 115)
        {
          goto LABEL_45;
        }

        v17 = SKUISettingsDocumentViewController;
LABEL_27:
        v18 = [[v17 alloc] initWithTemplateElement:v8 clientContext:v10];
LABEL_44:
        v12 = v18;
        goto LABEL_45;
      }
    }

    v18 = [[SKUIStackDocumentViewController alloc] initWithTemplateElement:v8 layoutStyle:v14];
    goto LABEL_44;
  }

LABEL_46:
  [v12 setClientContext:v10];

  return v12;
}

- (void)_redirectToURL:(id)a3
{
  loadURLOperation = self->_loadURLOperation;
  v5 = a3;
  [(SSVLoadURLOperation *)loadURLOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadURLOperation cancel];
  v6 = self->_loadURLOperation;
  self->_loadURLOperation = 0;

  v7 = [v5 absoluteString];

  urlString = self->_urlString;
  self->_urlString = v7;

  [(SKUIDocumentContainerViewController *)self _enqueueLoadURLOperation];
}

- (void)_reloadDefaultBarButtonItems
{
  v10 = [(SKUIDocumentContainerViewController *)self navigationItem];
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
    v6 = [v10 leftBarButtonItems];
    v7 = [v6 mutableCopy];

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

    [v10 setLeftBarButtonItems:v7 animated:0];
  }
}

- (void)_reloadPageData
{
  if (self->_urlString)
  {
    if (!self->_loadURLOperation)
    {
      v3 = [MEMORY[0x277D7FD00] sharedInstance];
      v4 = [v3 networkType];

      if (v4)
      {
        v6 = [MEMORY[0x277CCAB98] defaultCenter];
        [v6 removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
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
  v16 = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
  v3 = [(SKUIDocumentContainerViewController *)self navigationItem];
  navigationBarController = self->_navigationBarController;
  if (navigationBarController)
  {
    v5 = [(SKUINavigationBarController *)navigationBarController existingSearchBarControllers];
    searchBarControllers = self->_searchBarControllers;
    self->_searchBarControllers = v5;

    if (self->_makeSearchBarFirstResponderOnLoad)
    {
      v7 = [(NSArray *)self->_searchBarControllers firstObject];
      self->_makeSearchBarFirstResponderOnLoad = 0;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v16 firstChildForElementType:106];

    v10 = self->_navigationBarController;
    if (v9)
    {
      [(SKUINavigationBarController *)v10 detachNavigationItemControllers];
      v8 = 1;
    }

    else
    {
      [(SKUINavigationBarController *)v10 detachFromNavigationItem:v3];
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_28292FAE8])
  {
    v11 = [(UIViewController *)self->_childViewController navigationBarControllerWithViewElement:v16];
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v16)
  {
    v11 = [[SKUINavigationBarController alloc] initWithNavigationBarViewElement:v16];
  }

LABEL_15:
  if (v11)
  {
    v12 = [(SKUIViewController *)self clientContext];
    [(SKUINavigationBarController *)v11 setClientContext:v12];

    [(SKUINavigationBarController *)v11 setDelegate:self];
    [(SKUINavigationBarController *)v11 setParentViewController:self];
    [(SKUINavigationBarController *)v11 setReusableSearchBarControllers:self->_searchBarControllers];
    [(SKUINavigationBarController *)v11 attachToNavigationItem:v3];
  }

  else if (v8)
  {
    [(SKUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:v3];
  }

  v13 = self->_navigationBarController;
  self->_navigationBarController = v11;

  if ([v7 canBecomeActive])
  {
    [v7 becomeActive];
    if (self->_selectSearchBarContentOnBecomingFirstResponder)
    {
      v14 = [v7 searchBar];
      v15 = [v14 searchField];
      [v15 selectAll:0];

      self->_selectSearchBarContentOnBecomingFirstResponder = 0;
    }
  }

  [(SKUIDocumentContainerViewController *)self _reloadNavigationPalette];
}

- (void)_reloadNavigationPalette
{
  v8 = [(SKUIDocumentContainerViewController *)self navigationController];
  v3 = [v8 topViewController];

  if (v3 == self)
  {
    v4 = [(SKUIViewController *)self clientContext];
    v5 = [SKUINavigationControllerAssistant assistantForNavigationController:v8 clientContext:v4];

    v6 = [(SKUIDocumentContainerViewController *)self navigationPaletteView];
    [v5 setPaletteView:v6 animated:0];
    v7 = [(SKUIDocumentContainerViewController *)self _navigationBarViewElement];
    [v5 setHidesShadow:{objc_msgSend(v7, "hidesShadow")}];
  }
}

- (void)_reloadToolbar
{
  v7 = [(SKUIDocumentContainerViewController *)self _toolbarViewElement];
  v3 = [(SKUIDocumentContainerViewController *)self navigationController];
  v4 = [[SKUIToolbarController alloc] initWithToolbarViewElement:v7];
  v5 = v4;
  if (v4)
  {
    [(SKUIToolbarController *)v4 setDelegate:self];
    [(SKUIToolbarController *)v5 updateToolbarForNavigationController:v3];
  }

  toolbarController = self->_toolbarController;
  self->_toolbarController = v5;
}

- (void)_sendOnViewAttributesChangeWithAttributes:(id)a3 viewWillAppear:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__SKUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke;
  aBlock[3] = &unk_2781FD988;
  objc_copyWeak(&v18, &location);
  v19 = a4;
  aBlock[4] = self;
  v7 = v6;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x277D75128] sharedApplication];
  v10 = [v9 applicationState];

  if (v10 == 2)
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

- (void)_setChildViewController:(id)a3
{
  v5 = a3;
  childViewController = self->_childViewController;
  if (childViewController != v5)
  {
    v11 = v5;
    [(UIViewController *)childViewController willMoveToParentViewController:0];
    if ([(UIViewController *)self->_childViewController isViewLoaded])
    {
      v7 = [(UIViewController *)self->_childViewController view];
      [v7 removeFromSuperview];
    }

    [(UIViewController *)self->_childViewController removeFromParentViewController];
    objc_storeStrong(&self->_childViewController, a3);
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

      v9 = [(SKUIDocumentContainerViewController *)self view];
      v10 = [(UIViewController *)self->_childViewController view];
      [v10 setAutoresizingMask:18];
      [v9 bounds];
      [v10 setFrame:?];
      [v9 insertSubview:v10 atIndex:0];
      [(UIViewController *)self->_childViewController didMoveToParentViewController:self];
      [(UIViewController *)self setNeedsScrollingSegmentContentScrollViewUpdate];
    }

    [(SKUIDocumentContainerViewController *)self _reloadDefaultBarButtonItems];
    childViewController = [(SKUIDocumentContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
    v5 = v11;
  }

  MEMORY[0x2821F96F8](childViewController, v5);
}

- (BOOL)_shouldFillNavigationBarContentsBasedOnNavigationBarViewElement
{
  v3 = [(SKUIDocumentContainerViewController *)self _appearState];
  if (v3)
  {
    v3 = [objc_opt_class() allowsChildViewControllerNavigationBarManagement];
    if (v3)
    {
      v4 = [(SKUIDocumentContainerViewController *)self parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        LOBYTE(v3) = 0;
      }

      else if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_2828EAF00]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        LOBYTE(v3) = [(UIViewController *)self->_childViewController managesNavigationBarContents]^ 1;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

- (void)_showAccountViewControllerWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SKUIViewController *)self clientContext];
  v6 = [v5 clientInterface];
  v7 = [objc_alloc(MEMORY[0x277D7FD90]) initWithExternalAccountURL:v4];

  [v7 setCanMoveToOverlay:0];
  [v7 setClientInterface:v6];
  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  if (SKUIUserInterfaceIdiom(v5) == 1)
  {
    [v8 setModalPresentationStyle:2];
  }

  v9 = [(SKUIDocumentContainerViewController *)self transitionCoordinator];
  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__SKUIDocumentContainerViewController__showAccountViewControllerWithURL___block_invoke;
    v10[3] = &unk_2781FB740;
    v10[4] = self;
    v11 = v8;
    [v9 animateAlongsideTransition:0 completion:v10];
  }

  else
  {
    [(SKUIDocumentContainerViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_showLegacyStorePageWithRequest:(id)a3 page:(id)a4 pageType:(int64_t)a5 URLResponse:(id)a6
{
  v19 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(SKUIViewController *)self clientContext];
  v13 = [v12 newLegacyStorePageViewControllerForURLResponse:v19];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277D7FE88]);
  }

  v14 = [v13 clientInterface];

  if (!v14)
  {
    v15 = [v12 clientInterface];
    [v13 setClientInterface:v15];
  }

  [v13 setCanMoveToOverlay:0];
  [v13 setShouldAdjustContentOffsets:0];
  v16 = [(SKUIDocumentContainerViewController *)self navigationItem];
  [v13 _setExistingNavigationItem:v16];

  [v13 setExternalRequest:1];
  [(SKUIDocumentContainerViewController *)self _setChildViewController:v13];
  v17 = [v19 URL];
  [v13 reloadWithStorePage:v10 ofType:a5 forURL:v17];

  v18 = [objc_alloc(MEMORY[0x277D69CA0]) initWithURLRequest:v11];
  [v13 setURLRequestProperties:v18];
}

- (id)_sidepackViewControllerWithOptions:(id)a3 clientContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"sidepackType"];
  if ([v7 isEqualToString:0x28280B108])
  {
    v8 = [v5 objectForKey:@"sidepackData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SKUIItem alloc] initWithLookupDictionary:v8];
      v10 = SKUIUserInterfaceIdiom(v6);
      v11 = off_2781F6390;
      if (v10 != 1)
      {
        v11 = off_2781F63A8;
      }

      v12 = [objc_alloc(*v11) initWithItem:v9];
      [v12 setClientContext:v6];
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

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(UIViewController *)self->_childViewController animationControllerForPresentedController:v8 presentingController:v9 sourceController:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIViewController *)self->_childViewController animationControllerForDismissedController:v4];
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