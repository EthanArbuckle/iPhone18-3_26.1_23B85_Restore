@interface _TVAppDocumentController
- (BOOL)_isFlowcaseStack;
- (BOOL)automaticallyAdjustsScrollViewInsets;
- (BOOL)document:(id)document evaluateStyleMediaQuery:(id)query;
- (BOOL)ppt_isLoading;
- (CGSize)formSize;
- (CGSize)tv_adjustedWindowSizeForDocument:(id)document;
- (NSArray)preferredFocusEnvironments;
- (UITapGestureRecognizer)menuGestureRecognizer;
- (_TVAppDocumentController)initWithAppDocument:(id)document;
- (_TVAppDocumentControllerDelegate)appDelegate;
- (id)_alertControllerWithError:(id)error;
- (id)_mediaQueryEvaluator;
- (id)activeDocument;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)currentImpressionableElements;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation fromViewController:(id)controller;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation toViewController:(id)controller;
- (id)impressionableViewElementsForDocument:(id)document;
- (id)overrideTraitCollectionForChildViewController:(id)controller;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didHostTemplateViewController:(id)controller usedTransitions:(BOOL)transitions;
- (void)_markAndNotifyStylesDirty;
- (void)_menuGestureHandler:(id)handler;
- (void)_updateIdleModeStatus;
- (void)_updateModalPresentationStateWithTemplateView:(id)view;
- (void)_updateTemplateViewController;
- (void)_willHostTemplateViewController:(id)controller usesTransitions:(BOOL *)transitions;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)documentDidUpdateImplicitly:(id)implicitly;
- (void)documentNeedsUpdate:(id)update;
- (void)loadView;
- (void)pagePerformanceController:(id)controller didUpdateMetrics:(id)metrics;
- (void)reload;
- (void)replaceAppDocumentWithAppDocument:(id)document;
- (void)scrollToTop;
- (void)setAppDelegate:(id)delegate;
- (void)setMenuGestureHandler:(id)handler;
- (void)setOpaque:(BOOL)opaque;
- (void)snapshotImpressions;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePreferredFocusedViewStateForFocus:(BOOL)focus;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _TVAppDocumentController

- (_TVAppDocumentController)initWithAppDocument:(id)document
{
  documentCopy = document;
  v12.receiver = self;
  v12.super_class = _TVAppDocumentController;
  v5 = [(TVDocumentViewController *)&v12 tvdvc_initWithNibName:0 bundle:0];

  if (v5)
  {
    [(_TVAppDocumentController *)v5 setAppDocument:documentCopy];
    appDocument = [(_TVAppDocumentController *)v5 appDocument];
    [appDocument setDelegate:v5];

    v5->_opaque = 1;
    v7 = objc_alloc_init(_TVPagePerformanceController);
    [(_TVAppDocumentController *)v5 setPagePerformance:v7];

    pagePerformance = [(_TVAppDocumentController *)v5 pagePerformance];
    [pagePerformance setDelegate:v5];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__darkerSystemColorStatusChanged_ name:*MEMORY[0x277D76460] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__boldTextStatusChanged_ name:*MEMORY[0x277D76448] object:0];
  }

  return v5;
}

- (void)replaceAppDocumentWithAppDocument:(id)document
{
  v5 = TVMLKitSignpostLogObject;
  v6 = TVMLKitSignpostLogObject;
  documentCopy = document;
  v8 = os_signpost_id_make_with_pointer(v6, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v5))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_26CD9A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v9, "TVAppDocumentControllerReplace", &unk_26CE8F202, v14, 2u);
    }
  }

  appDocument = [(_TVAppDocumentController *)self appDocument];
  [appDocument setDelegate:0];
  [(_TVAppDocumentController *)self setAppDocument:documentCopy];

  appDocument2 = [(_TVAppDocumentController *)self appDocument];
  [appDocument2 setDelegate:self];

  if ([(_TVAppDocumentController *)self isViewLoaded])
  {
    [(_TVAppDocumentController *)self _updateTemplateViewController];
    [(_TVAppDocumentController *)self _updateIdleModeStatus];
    appDocument3 = [(_TVAppDocumentController *)self appDocument];
    [appDocument3 onLoad];

    appDocument4 = [(_TVAppDocumentController *)self appDocument];
    [appDocument4 onAppear];

    [appDocument onDisappear];
    [appDocument onUnload];
  }
}

- (void)dealloc
{
  appDocument = [(_TVAppDocumentController *)self appDocument];
  [appDocument onUnload];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  view = [templateViewController view];
  [view removeFromSuperview];

  templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
  [templateViewController2 willMoveToParentViewController:0];

  templateViewController3 = [(_TVAppDocumentController *)self templateViewController];
  [templateViewController3 removeFromParentViewController];

  [(_TVAppDocumentController *)self setTemplateViewController:0];
  appDocument2 = [(_TVAppDocumentController *)self appDocument];
  [appDocument2 setDelegate:0];

  if ([(_TVAppDocumentController *)self isVisualEffectDisablementNeeded])
  {
    templateViewController4 = [(_TVAppDocumentController *)self templateViewController];
    view2 = [templateViewController4 view];
    [_TVVisualEffectView removeHostView:view2];
  }

  v12.receiver = self;
  v12.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v12 dealloc];
}

- (void)setAppDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_appDelegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appDelegate, obj);
    v5 = [obj conformsToProtocol:&unk_287EA7140];
    if (v5)
    {
      appDelegate = [(_TVAppDocumentController *)self appDelegate];
      p_delegateFlags = &self->_delegateFlags;
      self->_delegateFlags.hasMediaQueryEvaluator = objc_opt_respondsToSelector() & 1;

      appDelegate2 = [(_TVAppDocumentController *)self appDelegate];
      self->_delegateFlags.hasWillHostTemplateViewController = objc_opt_respondsToSelector() & 1;

      appDelegate3 = [(_TVAppDocumentController *)self appDelegate];
      p_delegateFlags->hasDidHostTemplateViewController = objc_opt_respondsToSelector() & 1;
    }

    else
    {
      *&self->_delegateFlags.hasMediaQueryEvaluator = 0;
      self->_delegateFlags.hasDidHostTemplateViewController = 0;
    }

    v6 = obj;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (NSArray)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  parentViewController = [templateViewController parentViewController];
  if (parentViewController && ![(_TVAppDocumentController *)self isTransitioning])
  {
    templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
  }

  else
  {
    childViewControllers = [(_TVAppDocumentController *)self childViewControllers];
    templateViewController2 = [childViewControllers firstObject];
  }

  if (templateViewController2)
  {
    v9[0] = templateViewController2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)loadView
{
  pagePerformance = [(_TVAppDocumentController *)self pagePerformance];
  [pagePerformance markViewWillLoad];

  v4 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v7 = [v4 initWithFrame:?];

  if (self->_opaque)
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v6 = ;
  [v7 setBackgroundColor:v6];

  [(_TVAppDocumentController *)self setView:v7];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v20 viewDidLoad];
  appDocument = [(_TVAppDocumentController *)self appDocument];

  if (appDocument)
  {
    [(_TVAppDocumentController *)self _updateTemplateViewController];
    appDocument2 = [(_TVAppDocumentController *)self appDocument];
    [appDocument2 onLoad];
  }

  else
  {
    appDocument2 = [(_TVAppDocumentController *)self view];
    v5 = objc_alloc_init(_TVLoadingViewController);
    navigationItem = [(_TVAppDocumentController *)self navigationItem];
    title = [navigationItem title];

    if (title)
    {
      navigationItem2 = [(_TVLoadingViewController *)v5 navigationItem];
      [navigationItem2 setTitle:title];
    }

    [(_TVAppDocumentController *)self setTemplateViewController:v5];
    [(_TVAppDocumentController *)self preferredContentSize];
    if (*MEMORY[0x277CBF3A8] != v10 || *(MEMORY[0x277CBF3A8] + 8) != v9)
    {
      [(_TVAppDocumentController *)self preferredContentSize];
      [(_TVLoadingViewController *)v5 setPreferredContentSize:?];
    }

    [(_TVAppDocumentController *)self addChildViewController:v5];
    view = [(_TVLoadingViewController *)v5 view];
    [appDocument2 addSubview:view];
    [(_TVLoadingViewController *)v5 didMoveToParentViewController:self];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [standardUserDefaults BOOLForKey:@"enableTVMLRefresh"];

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:13 target:self action:sel_reload];
    navigationItem3 = [(_TVAppDocumentController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v15];
  }

  navigationController = [(_TVAppDocumentController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setDelegate:self];

  [(_TVAppDocumentController *)self setDefinesPresentationContext:1];
  pagePerformance = [(_TVAppDocumentController *)self pagePerformance];
  [pagePerformance markViewDidLoad];
}

- (void)reload
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  delegate = [mEMORY[0x277D75128] delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [delegate reload];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  pagePerformance = [(_TVAppDocumentController *)self pagePerformance];
  [pagePerformance markViewWillAppear];

  v9.receiver = self;
  v9.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v9 viewWillAppear:appearCopy];
  if (![(_TVAppDocumentController *)self isTransitioning]&& [(_TVAppDocumentController *)self isVisualEffectDisablementNeeded])
  {
    templateViewController = [(_TVAppDocumentController *)self templateViewController];
    view = [templateViewController view];
    [_TVVisualEffectView disableForHostView:view];
  }

  [(_TVAppDocumentController *)self _updateIdleModeStatus];
  appDocument = [(_TVAppDocumentController *)self appDocument];
  [appDocument onAppear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v12 viewDidAppear:appear];
  if (![(_TVAppDocumentController *)self isTransitioning]&& [(_TVAppDocumentController *)self isVisualEffectDisablementNeeded])
  {
    templateViewController = [(_TVAppDocumentController *)self templateViewController];
    view = [templateViewController view];
    [_TVVisualEffectView enableForHostView:view];
  }

  navigationController = [(_TVAppDocumentController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers count] != 1;

  navigationController2 = [(_TVAppDocumentController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController2 interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:v8];

  pagePerformance = [(_TVAppDocumentController *)self pagePerformance];
  [pagePerformance markViewDidAppear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  pagePerformance = [(_TVAppDocumentController *)self pagePerformance];
  [pagePerformance markViewWillDisappear];

  v8.receiver = self;
  v8.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v8 viewWillDisappear:disappearCopy];
  if (![(_TVAppDocumentController *)self isTransitioning])
  {
    if ([(_TVAppDocumentController *)self isVisualEffectDisablementNeeded])
    {
      templateViewController = [(_TVAppDocumentController *)self templateViewController];
      view = [templateViewController view];
      [_TVVisualEffectView disableForHostView:view];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v7 viewDidDisappear:disappear];
  pagePerformance = [(_TVAppDocumentController *)self pagePerformance];
  [pagePerformance markViewDidDisappear];

  pagePerformanceView = [(_TVAppDocumentController *)self pagePerformanceView];
  [pagePerformanceView removeFromSuperview];

  appDocument = [(_TVAppDocumentController *)self appDocument];
  [appDocument onDisappear];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v12 viewDidLayoutSubviews];
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  parentViewController = [templateViewController parentViewController];

  if (parentViewController == self)
  {
    view = [(_TVAppDocumentController *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;

    templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
    view2 = [templateViewController2 view];

    [view2 setCenter:{v7 * 0.5, v9 * 0.5}];
    [view2 setBounds:{0.0, 0.0, v7, v9}];
  }

  if (self->_shouldMarkStylesDirtyBeforeLayout)
  {
    self->_shouldMarkStylesDirtyBeforeLayout = 0;
    [(_TVAppDocumentController *)self _markAndNotifyStylesDirty];
  }
}

- (int64_t)preferredStatusBarStyle
{
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  if (templateViewController)
  {
    templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
    preferredStatusBarStyle = [templateViewController2 preferredStatusBarStyle];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVAppDocumentController;
    preferredStatusBarStyle = [(_TVAppDocumentController *)&v7 preferredStatusBarStyle];
  }

  return preferredStatusBarStyle;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  childViewControllers = [(_TVAppDocumentController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation fromViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    appDocument = [controllerCopy appDocument];
    templateElement = [appDocument templateElement];

    appDocument2 = [(_TVAppDocumentController *)self appDocument];
    templateElement2 = [appDocument2 templateElement];

    if (templateElement2)
    {
      v11 = +[TVInterfaceFactory sharedInterfaceFactory];
      v12 = [v11 _controllerTransitionFromElement:templateElement2 toElement:templateElement forNavigationControllerOperation:operation relativeToFrom:0];

      if (v12)
      {

LABEL_8:
        goto LABEL_10;
      }
    }
  }

  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    templateElement = [(_TVAppDocumentController *)self templateViewController];
    v12 = [templateElement customAnimatorForNavigationControllerOperation:operation fromViewController:controllerCopy];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation toViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    appDocument = [controllerCopy appDocument];
    templateElement = [appDocument templateElement];

    appDocument2 = [(_TVAppDocumentController *)self appDocument];
    templateElement2 = [appDocument2 templateElement];

    if (templateElement2)
    {
      v11 = +[TVInterfaceFactory sharedInterfaceFactory];
      v12 = [v11 _controllerTransitionFromElement:templateElement2 toElement:templateElement forNavigationControllerOperation:operation relativeToFrom:1];

      if (v12)
      {

LABEL_8:
        goto LABEL_10;
      }
    }
  }

  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    templateElement = [(_TVAppDocumentController *)self templateViewController];
    v12 = [templateElement customAnimatorForNavigationControllerOperation:operation toViewController:controllerCopy];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (unint64_t)supportedInterfaceOrientations
{
  childViewControllers = [(_TVAppDocumentController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (lastObject)
  {
    supportedInterfaceOrientations = [lastObject supportedInterfaceOrientations];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _TVAppDocumentController;
    supportedInterfaceOrientations = [(_TVAppDocumentController *)&v8 supportedInterfaceOrientations];
  }

  v6 = supportedInterfaceOrientations;

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    [_TVAppDocumentController viewWillTransitionToSize:withTransitionCoordinator:];
  }

  appDocument = [(_TVAppDocumentController *)self appDocument];

  if (appDocument)
  {
    self->_shouldMarkStylesDirtyBeforeLayout = 1;
  }

  v9.receiver = self;
  v9.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (id)overrideTraitCollectionForChildViewController:(id)controller
{
  v19[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = _TVAppDocumentController;
  v5 = [(_TVAppDocumentController *)&v18 overrideTraitCollectionForChildViewController:controllerCopy];
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  if (templateViewController)
  {
    v7 = templateViewController;
    templateViewController2 = [(_TVAppDocumentController *)self templateViewController];

    if (templateViewController2 == controllerCopy)
    {
      appDocument = [(_TVAppDocumentController *)self appDocument];
      templateElement = [appDocument templateElement];
      v11 = [TVMLUtilities overrideInterfaceStyleForTemplateElement:templateElement];

      if (v11)
      {
        v12 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:v11];
        v13 = v12;
        if (v5)
        {
          v14 = MEMORY[0x277D75C80];
          v19[0] = v5;
          v19[1] = v12;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
          v16 = [v14 traitCollectionWithTraitsFromCollections:v15];

          v5 = v16;
        }

        else
        {
          v5 = v12;
        }
      }
    }
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  templateViewController = [(_TVAppDocumentController *)self templateViewController];

  if (templateViewController)
  {
    traitCollection = [(_TVAppDocumentController *)self traitCollection];
    appDocument = [(_TVAppDocumentController *)self appDocument];
    templateElement = [appDocument templateElement];
    v9 = [TVMLUtilities overrideInterfaceStyleForTemplateElement:templateElement];

    if (v9 || ![changeCopy userInterfaceStyle])
    {
      v10 = 0;
      if (!changeCopy)
      {
        goto LABEL_8;
      }
    }

    else
    {
      userInterfaceStyle = [changeCopy userInterfaceStyle];
      v10 = userInterfaceStyle != [traitCollection userInterfaceStyle];
      if (!changeCopy)
      {
LABEL_8:
        mediaQueryEvaluator = [(_TVAppDocumentController *)self mediaQueryEvaluator];
        windowSizeAdaptor = [mediaQueryEvaluator windowSizeAdaptor];
        update = [windowSizeAdaptor update];

        if (!v10)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    horizontalSizeClass = [changeCopy horizontalSizeClass];
    if (horizontalSizeClass == [traitCollection horizontalSizeClass])
    {
      verticalSizeClass = [changeCopy verticalSizeClass];
      v13 = verticalSizeClass != [traitCollection verticalSizeClass];
    }

    else
    {
      v13 = 1;
    }

    preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
    preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

    update = preferredContentSizeCategory != preferredContentSizeCategory2 || v13;
    if (!v10)
    {
LABEL_9:
      if (update)
      {
        self->_shouldMarkStylesDirtyBeforeLayout = 1;
      }

      goto LABEL_17;
    }

LABEL_16:
    [(_TVAppDocumentController *)self _markAndNotifyStylesDirty];
LABEL_17:
  }

  navigationController = [(_TVAppDocumentController *)self navigationController];
  v21 = +[_TVModalPresenter presenter];
  modalRootViewController = [v21 modalRootViewController];
  v23 = [navigationController isEqual:modalRootViewController];

  if (v23)
  {
    navigationController2 = [(_TVAppDocumentController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar traitCollectionDidChange:changeCopy];
  }

  v26.receiver = self;
  v26.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v26 traitCollectionDidChange:changeCopy];
}

- (CGSize)tv_adjustedWindowSizeForDocument:(id)document
{
  mediaQueryEvaluator = [(_TVAppDocumentController *)self mediaQueryEvaluator];
  windowSizeAdaptor = [mediaQueryEvaluator windowSizeAdaptor];
  [windowSizeAdaptor adjustedWindowSize];
  v7 = v6;
  v9 = v8;

  parentViewController = [(_TVAppDocumentController *)self parentViewController];
  if (!parentViewController || (v11 = parentViewController, -[_TVAppDocumentController parentViewController](self, "parentViewController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isViewLoaded], v12, v11, !v13) || (-[_TVAppDocumentController parentViewController](self, "parentViewController"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "view"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "frame"), v17 = v16, v19 = v18, v15, v14, v17 >= v7) && v19 >= v9)
  {
    v17 = v7;
    v19 = v9;
  }

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)documentNeedsUpdate:(id)update
{
  updateCopy = update;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    [_TVAppDocumentController documentNeedsUpdate:];
  }
}

- (void)documentDidUpdate:(id)update
{
  updateCopy = update;
  if (([(_TVAppDocumentController *)self isViewLoaded]& 1) != 0)
  {
    if (([updateCopy isUpdated] & 1) != 0 || !objc_msgSend(updateCopy, "isSubtreeUpdated"))
    {
      [(_TVAppDocumentController *)self _updateTemplateViewController];
      appDocument = [(_TVAppDocumentController *)self appDocument];
      templateElement = [appDocument templateElement];
      [templateElement resetProperty:1];
    }

    else
    {
      pagePerformance = [(_TVAppDocumentController *)self pagePerformance];
      appDocument2 = [(_TVAppDocumentController *)self appDocument];
      templateElement2 = [appDocument2 templateElement];
      appDocument = [pagePerformance getEntryForTemplate:templateElement2];

      [appDocument markTemplateWillRender];
      appDocument3 = [(_TVAppDocumentController *)self appDocument];
      templateElement = [appDocument3 templateElement];

      if ([templateElement updateType] == 4)
      {
        mediaQueryEvaluator = [(_TVAppDocumentController *)self mediaQueryEvaluator];
        [mediaQueryEvaluator setTemplateElement:templateElement];
      }

      v11 = +[TVInterfaceFactory sharedInterfaceFactory];
      [v11 _willParseAppDocument:updateCopy forImplicitUpdates:0];

      v12 = +[TVInterfaceFactory sharedInterfaceFactory];
      appDocument4 = [(_TVAppDocumentController *)self appDocument];
      templateElement3 = [appDocument4 templateElement];
      templateViewController = [(_TVAppDocumentController *)self templateViewController];
      v16 = [v12 _viewControllerFromElement:templateElement3 existingController:templateViewController];

      [appDocument markTemplateDidRender];
      [appDocument markTemplateWillTransition];
      [appDocument markTemplateDidTransition];
      appDocument5 = [(_TVAppDocumentController *)self appDocument];
      templateElement4 = [appDocument5 templateElement];
      [templateElement4 resetProperty:1];

      tabBarController = [(_TVAppDocumentController *)self tabBarController];
      if (tabBarController)
      {
        if ([(_TVAppDocumentController *)self _isFlowcaseStack])
        {
          templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
          view = [templateViewController2 view];
          [view setClipsToBounds:0];

          templateViewController3 = [(_TVAppDocumentController *)self templateViewController];
          view2 = [templateViewController3 view];
          subviews = [view2 subviews];
          firstObject = [subviews firstObject];
          [firstObject setClipsToBounds:0];
        }

        [tabBarController _setSelectedViewControllerNeedsLayout];
      }

      view3 = [v16 view];
      [(_TVAppDocumentController *)self _updateModalPresentationStateWithTemplateView:view3];
    }

    [(_TVAppDocumentController *)self _updateIdleModeStatus];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"_TVAppDocumentDidUpdateNotification" object:self];

    [updateCopy onUpdate];
  }

  else
  {
    appDocument6 = [(_TVAppDocumentController *)self appDocument];
    templateElement5 = [appDocument6 templateElement];
    [templateElement5 resetProperty:1];
  }
}

- (BOOL)document:(id)document evaluateStyleMediaQuery:(id)query
{
  queryCopy = query;
  mediaQueryEvaluator = [(_TVAppDocumentController *)self mediaQueryEvaluator];
  v7 = [mediaQueryEvaluator evaluateMediaQuery:queryCopy];

  return v7;
}

- (id)impressionableViewElementsForDocument:(id)document
{
  documentCopy = document;
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  v6 = [templateViewController tv_impressionableElementsForDocument:documentCopy];

  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)documentDidUpdateImplicitly:(id)implicitly
{
  v5 = +[TVInterfaceFactory sharedInterfaceFactory];
  appDocument = [(_TVAppDocumentController *)self appDocument];
  [v5 _willParseAppDocument:appDocument forImplicitUpdates:1];
}

- (void)setOpaque:(BOOL)opaque
{
  if (self->_opaque != opaque)
  {
    self->_opaque = opaque;
    view = [(_TVAppDocumentController *)self view];
    if (self->_opaque)
    {
      [MEMORY[0x277D75348] systemBackgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] clearColor];
    }
    v4 = ;
    [view setBackgroundColor:v4];
  }
}

- (void)scrollToTop
{
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
    [templateViewController2 scrollToTop];
  }
}

- (void)_markAndNotifyStylesDirty
{
  appDocument = [(_TVAppDocumentController *)self appDocument];

  if (appDocument)
  {
    view = [(_TVAppDocumentController *)self view];
    [view bounds];

    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVAppDocumentController _markAndNotifyStylesDirty];
    }

    appDocument2 = [(_TVAppDocumentController *)self appDocument];
    templateElement = [appDocument2 templateElement];
    [appDocument2 setViewElementStylesDirty];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TVAppDocumentDidMarkStylesDirtyNotification" object:appDocument2];

    v8 = +[TVInterfaceFactory sharedInterfaceFactory];
    [v8 _willParseAppDocument:appDocument2 forImplicitUpdates:0];

    v9 = +[TVInterfaceFactory sharedInterfaceFactory];
    templateViewController = [(_TVAppDocumentController *)self templateViewController];
    v11 = [v9 _viewControllerFromElement:templateElement existingController:templateViewController];

    [templateElement resetProperty:1];
  }
}

- (void)_updateIdleModeStatus
{
  appDocument = [(_TVAppDocumentController *)self appDocument];
  templateElement = [appDocument templateElement];
  tv_elementType = [templateElement tv_elementType];

  delegate = [*MEMORY[0x277D76620] delegate];
  if (tv_elementType != 28)
  {
    v11 = delegate;
    if (objc_opt_respondsToSelector())
    {
      supportsIdleModeVisualEffects = ((tv_elementType - 65) < 0xA) & (0x241u >> (tv_elementType - 65));
      templateViewController = [(_TVAppDocumentController *)self templateViewController];
      if ([templateViewController conformsToProtocol:&unk_287E63AE0])
      {
        templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
LABEL_7:
          [v11 updateIdleModeVisualEffectsStatus:supportsIdleModeVisualEffects];
          goto LABEL_8;
        }

        templateViewController = [(_TVAppDocumentController *)self templateViewController];
        supportsIdleModeVisualEffects = [templateViewController supportsIdleModeVisualEffects];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  MEMORY[0x2821F9730]();
}

- (id)_alertControllerWithError:(id)error
{
  errorCopy = error;
  localizedDescription = [errorCopy localizedDescription];
  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Cannot Connect to iTunes Store." message:localizedDescription preferredStyle:1];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D750F8];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54___TVAppDocumentController__alertControllerWithError___block_invoke;
  v13 = &unk_279D6EEB0;
  objc_copyWeak(&v14, &location);
  v8 = [v7 actionWithTitle:@"OK" style:1 handler:&v10];
  [v6 addAction:{v8, v10, v11, v12, v13}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v6;
}

- (BOOL)automaticallyAdjustsScrollViewInsets
{
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  v3 = templateViewController;
  if (templateViewController)
  {
    automaticallyAdjustsScrollViewInsets = [templateViewController automaticallyAdjustsScrollViewInsets];
  }

  else
  {
    automaticallyAdjustsScrollViewInsets = 1;
  }

  return automaticallyAdjustsScrollViewInsets;
}

- (void)_updateModalPresentationStateWithTemplateView:(id)view
{
  v47 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  val = self;
  navigationController = [(_TVAppDocumentController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController2 = [(_TVAppDocumentController *)val navigationController];

    if (navigationController2)
    {
      configuration = [navigationController2 configuration];
      type = [configuration type];
      containingAlertController = [navigationController2 containingAlertController];
      if (containingAlertController && (type - 1001) <= 1)
      {
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v41 = 0u;
        appDocument = [(_TVAppDocumentController *)val appDocument];
        templateElement = [appDocument templateElement];
        children = [templateElement children];

        v9 = [children countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v9)
        {
          v10 = *v42;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v42 != v10)
              {
                objc_enumerationMutation(children);
              }

              v12 = *(*(&v41 + 1) + 8 * i);
              if ([v12 tv_elementType] == 25)
              {
                v26 = v12;
                goto LABEL_16;
              }
            }

            v9 = [children countByEnumeratingWithState:&v41 objects:v46 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v26 = 0;
LABEL_16:

        v13 = MEMORY[0x277CBEB18];
        children2 = [v26 children];
        v31 = [v13 arrayWithCapacity:{objc_msgSend(children2, "count")}];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        obj = [v26 unfilteredChildren];
        v15 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v15)
        {
          v16 = *v38;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v38 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v37 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                text = [v18 text];
                string = [text string];

                attributes = [v18 attributes];
                v22 = [attributes objectForKey:@"actionStyle"];

                if ([v22 isEqualToString:@"cancel"])
                {
                  v23 = 1;
                }

                else if ([v22 isEqualToString:@"destructive"])
                {
                  v23 = 2;
                }

                else
                {
                  v23 = 0;
                }

                objc_initWeak(&location, val);
                v24 = MEMORY[0x277D750F8];
                v34[0] = MEMORY[0x277D85DD0];
                v34[1] = 3221225472;
                v34[2] = __74___TVAppDocumentController__updateModalPresentationStateWithTemplateView___block_invoke;
                v34[3] = &unk_279D6EED8;
                objc_copyWeak(&v35, &location);
                v34[4] = v18;
                v25 = [v24 actionWithTitle:string style:v23 handler:v34];
                [v31 addObject:v25];

                objc_destroyWeak(&v35);
                objc_destroyWeak(&location);
              }
            }

            v15 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v15);
        }

        [configuration setAlertActions:v31];
        [configuration _applyAlertActionsForController:containingAlertController];
      }

      [viewCopy tv_sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v26}];
      [(_TVAppDocumentController *)val setPreferredContentSize:?];
    }
  }

  else
  {
  }
}

- (void)_updateTemplateViewController
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_debug_impl(&dword_26CD9A000, log, OS_LOG_TYPE_DEBUG, "Template element: %@", buf, 0xCu);
}

- (void)_willHostTemplateViewController:(id)controller usesTransitions:(BOOL *)transitions
{
  controllerCopy = controller;
  [_TVAppDocumentController willHostTemplateViewController:"willHostTemplateViewController:usesTransitions:" usesTransitions:?];
  if (self->_delegateFlags.hasWillHostTemplateViewController)
  {
    appDelegate = [(_TVAppDocumentController *)self appDelegate];
    [appDelegate appDocumentController:self willHostTemplateViewController:controllerCopy usesTransitions:transitions];
  }

  [(TVDocumentViewController *)self willUpdateDocument];
}

- (void)_didHostTemplateViewController:(id)controller usedTransitions:(BOOL)transitions
{
  transitionsCopy = transitions;
  controllerCopy = controller;
  [_TVAppDocumentController didHostTemplateViewController:"didHostTemplateViewController:usedTransitions:" usedTransitions:?];
  if (self->_delegateFlags.hasDidHostTemplateViewController)
  {
    appDelegate = [(_TVAppDocumentController *)self appDelegate];
    [appDelegate appDocumentController:self didHostTemplateViewController:controllerCopy usedTransitions:transitionsCopy];
  }

  [(TVDocumentViewController *)self didUpdateDocument];
}

- (BOOL)_isFlowcaseStack
{
  appDocument = [(_TVAppDocumentController *)self appDocument];
  templateElement = [appDocument templateElement];
  v4 = [TVMLUtilities isFlowcaseAtTopOfStackFromElement:templateElement];

  return v4;
}

- (id)_mediaQueryEvaluator
{
  if (!self->_delegateFlags.hasMediaQueryEvaluator || (-[_TVAppDocumentController appDelegate](self, "appDelegate"), v3 = objc_claimAutoreleasedReturnValue(), [v3 mediaQueryEvaluatorForAppDocumentController:self], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    appDocument = [(_TVAppDocumentController *)self appDocument];
    appContext = [appDocument appContext];
    v7 = [appContext app];
    if ([v7 conformsToProtocol:&unk_287E5ED28])
    {
      appDocument2 = [(_TVAppDocumentController *)self appDocument];
      appContext2 = [appDocument2 appContext];
      v10 = [appContext2 app];
      keyTraitEnvironment = [v10 keyTraitEnvironment];
    }

    else
    {
      keyTraitEnvironment = 0;
    }

    view = [(_TVAppDocumentController *)self view];
    window = [view window];

    if (!window)
    {
      parentViewController = [(_TVAppDocumentController *)self parentViewController];

      if (!parentViewController || (-[_TVAppDocumentController parentViewController](self, "parentViewController"), v15 = objc_claimAutoreleasedReturnValue(), [v15 view], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "window"), window = objc_claimAutoreleasedReturnValue(), v16, v15, !window))
      {
        v17 = MEMORY[0x277D76620];
        delegate = [*MEMORY[0x277D76620] delegate];
        if (objc_opt_respondsToSelector())
        {
          delegate2 = [*v17 delegate];
          window = [delegate2 window];
        }

        else
        {
          window = 0;
        }
      }
    }

    appDocument3 = [(_TVAppDocumentController *)self appDocument];
    templateElement = [appDocument3 templateElement];
    v4 = [TVMediaQueryEvaluator evaluatorForTemplateElement:templateElement inWindow:window traitEnvironment:keyTraitEnvironment];
  }

  return v4;
}

- (CGSize)formSize
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updatePreferredFocusedViewStateForFocus:(BOOL)focus
{
  focusCopy = focus;
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  if ([templateViewController conformsToProtocol:&unk_287E7C098])
  {
    [templateViewController updatePreferredFocusedViewStateForFocus:focusCopy];
  }

  else
  {
    v5 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68___TVAppDocumentController_updatePreferredFocusedViewStateForFocus___block_invoke;
    v15[3] = &unk_279D6E7F8;
    v6 = templateViewController;
    v16 = v6;
    [v5 performWithoutAnimation:v15];
    preferredFocusEnvironments = [v6 preferredFocusEnvironments];
    firstObject = [preferredFocusEnvironments firstObject];

    preferredFocusEnvironments2 = [firstObject preferredFocusEnvironments];
    firstObject2 = [preferredFocusEnvironments2 firstObject];

    while (firstObject != firstObject2 && firstObject2)
    {
      v11 = firstObject;
      firstObject = firstObject2;

      preferredFocusEnvironments3 = [firstObject preferredFocusEnvironments];
      firstObject2 = [preferredFocusEnvironments3 firstObject];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = firstObject;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [v14 setSelected:focusCopy animated:0];
  }
}

- (void)setMenuGestureHandler:(id)handler
{
  v4 = [handler copy];
  menuGestureHandler = self->_menuGestureHandler;
  self->_menuGestureHandler = v4;

  if (self->_menuGestureHandler)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__menuGestureHandler_];
    [v10 setDelegate:self];
    [v10 setAllowedPressTypes:&unk_287E486F0];
    [(_TVAppDocumentController *)self setMenuGestureRecognizer:v10];
    view = [(_TVAppDocumentController *)self view];
    [view addGestureRecognizer:v10];
  }

  else
  {
    menuGestureRecognizer = [(_TVAppDocumentController *)self menuGestureRecognizer];

    if (menuGestureRecognizer)
    {
      view2 = [(_TVAppDocumentController *)self view];
      menuGestureRecognizer2 = [(_TVAppDocumentController *)self menuGestureRecognizer];
      [view2 removeGestureRecognizer:menuGestureRecognizer2];

      [(_TVAppDocumentController *)self setMenuGestureRecognizer:0];
    }
  }
}

- (void)_menuGestureHandler:(id)handler
{
  if ([handler state] == 3)
  {
    menuGestureHandler = self->_menuGestureHandler;
    if (menuGestureHandler)
    {
      v5 = *(menuGestureHandler + 2);

      v5();
    }
  }
}

- (void)pagePerformanceController:(id)controller didUpdateMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (([controller pageWasUpdated] & 1) == 0)
  {
    appDocument = [(_TVAppDocumentController *)self appDocument];
    [appDocument onPerformanceMetricsChange:metricsCopy];
  }
}

- (BOOL)ppt_isLoading
{
  templateViewController = [(_TVAppDocumentController *)self templateViewController];

  if (!templateViewController)
  {
    return 1;
  }

  templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  if ([(_TVAppDocumentController *)self isTransitioning])
  {
    return 1;
  }

  transitionCoordinator = [(_TVAppDocumentController *)self transitionCoordinator];

  if (transitionCoordinator)
  {
    return 1;
  }

  templateViewController3 = [(_TVAppDocumentController *)self templateViewController];
  ppt_isLoading = [templateViewController3 ppt_isLoading];

  return ppt_isLoading;
}

- (id)activeDocument
{
  appDocument = [(_TVAppDocumentController *)self appDocument];
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  v5 = [templateViewController conformsToProtocol:&unk_287E7C190];
  if (templateViewController && v5)
  {
    activeDocument = [templateViewController activeDocument];
    v7 = activeDocument;
    if (activeDocument)
    {
      v8 = activeDocument;
    }

    else
    {
      v8 = appDocument;
    }

    v9 = v8;

    appDocument = v9;
  }

  return appDocument;
}

- (id)currentImpressionableElements
{
  appDocument = [(_TVAppDocumentController *)self appDocument];
  v4 = [(_TVAppDocumentController *)self impressionableViewElementsForDocument:appDocument];

  return v4;
}

- (void)snapshotImpressions
{
  currentImpressionableElements = [(_TVAppDocumentController *)self currentImpressionableElements];
  appDocument = [(_TVAppDocumentController *)self appDocument];
  [appDocument snapshotImpressionsForViewElements:currentImpressionableElements];
}

- (_TVAppDocumentControllerDelegate)appDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appDelegate);

  return WeakRetained;
}

- (UITapGestureRecognizer)menuGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_menuGestureRecognizer);

  return WeakRetained;
}

@end