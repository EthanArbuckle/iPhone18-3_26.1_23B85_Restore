@interface _TVAppDocumentController
- (BOOL)_isFlowcaseStack;
- (BOOL)automaticallyAdjustsScrollViewInsets;
- (BOOL)document:(id)a3 evaluateStyleMediaQuery:(id)a4;
- (BOOL)ppt_isLoading;
- (CGSize)formSize;
- (CGSize)tv_adjustedWindowSizeForDocument:(id)a3;
- (NSArray)preferredFocusEnvironments;
- (UITapGestureRecognizer)menuGestureRecognizer;
- (_TVAppDocumentController)initWithAppDocument:(id)a3;
- (_TVAppDocumentControllerDelegate)appDelegate;
- (id)_alertControllerWithError:(id)a3;
- (id)_mediaQueryEvaluator;
- (id)activeDocument;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)currentImpressionableElements;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 fromViewController:(id)a4;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 toViewController:(id)a4;
- (id)impressionableViewElementsForDocument:(id)a3;
- (id)overrideTraitCollectionForChildViewController:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didHostTemplateViewController:(id)a3 usedTransitions:(BOOL)a4;
- (void)_markAndNotifyStylesDirty;
- (void)_menuGestureHandler:(id)a3;
- (void)_updateIdleModeStatus;
- (void)_updateModalPresentationStateWithTemplateView:(id)a3;
- (void)_updateTemplateViewController;
- (void)_willHostTemplateViewController:(id)a3 usesTransitions:(BOOL *)a4;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)documentDidUpdateImplicitly:(id)a3;
- (void)documentNeedsUpdate:(id)a3;
- (void)loadView;
- (void)pagePerformanceController:(id)a3 didUpdateMetrics:(id)a4;
- (void)reload;
- (void)replaceAppDocumentWithAppDocument:(id)a3;
- (void)scrollToTop;
- (void)setAppDelegate:(id)a3;
- (void)setMenuGestureHandler:(id)a3;
- (void)setOpaque:(BOOL)a3;
- (void)snapshotImpressions;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePreferredFocusedViewStateForFocus:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _TVAppDocumentController

- (_TVAppDocumentController)initWithAppDocument:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _TVAppDocumentController;
  v5 = [(TVDocumentViewController *)&v12 tvdvc_initWithNibName:0 bundle:0];

  if (v5)
  {
    [(_TVAppDocumentController *)v5 setAppDocument:v4];
    v6 = [(_TVAppDocumentController *)v5 appDocument];
    [v6 setDelegate:v5];

    v5->_opaque = 1;
    v7 = objc_alloc_init(_TVPagePerformanceController);
    [(_TVAppDocumentController *)v5 setPagePerformance:v7];

    v8 = [(_TVAppDocumentController *)v5 pagePerformance];
    [v8 setDelegate:v5];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v5 selector:sel__darkerSystemColorStatusChanged_ name:*MEMORY[0x277D76460] object:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v5 selector:sel__boldTextStatusChanged_ name:*MEMORY[0x277D76448] object:0];
  }

  return v5;
}

- (void)replaceAppDocumentWithAppDocument:(id)a3
{
  v5 = TVMLKitSignpostLogObject;
  v6 = TVMLKitSignpostLogObject;
  v7 = a3;
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

  v10 = [(_TVAppDocumentController *)self appDocument];
  [v10 setDelegate:0];
  [(_TVAppDocumentController *)self setAppDocument:v7];

  v11 = [(_TVAppDocumentController *)self appDocument];
  [v11 setDelegate:self];

  if ([(_TVAppDocumentController *)self isViewLoaded])
  {
    [(_TVAppDocumentController *)self _updateTemplateViewController];
    [(_TVAppDocumentController *)self _updateIdleModeStatus];
    v12 = [(_TVAppDocumentController *)self appDocument];
    [v12 onLoad];

    v13 = [(_TVAppDocumentController *)self appDocument];
    [v13 onAppear];

    [v10 onDisappear];
    [v10 onUnload];
  }
}

- (void)dealloc
{
  v3 = [(_TVAppDocumentController *)self appDocument];
  [v3 onUnload];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5 = [(_TVAppDocumentController *)self templateViewController];
  v6 = [v5 view];
  [v6 removeFromSuperview];

  v7 = [(_TVAppDocumentController *)self templateViewController];
  [v7 willMoveToParentViewController:0];

  v8 = [(_TVAppDocumentController *)self templateViewController];
  [v8 removeFromParentViewController];

  [(_TVAppDocumentController *)self setTemplateViewController:0];
  v9 = [(_TVAppDocumentController *)self appDocument];
  [v9 setDelegate:0];

  if ([(_TVAppDocumentController *)self isVisualEffectDisablementNeeded])
  {
    v10 = [(_TVAppDocumentController *)self templateViewController];
    v11 = [v10 view];
    [_TVVisualEffectView removeHostView:v11];
  }

  v12.receiver = self;
  v12.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v12 dealloc];
}

- (void)setAppDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_appDelegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appDelegate, obj);
    v5 = [obj conformsToProtocol:&unk_287EA7140];
    if (v5)
    {
      v7 = [(_TVAppDocumentController *)self appDelegate];
      p_delegateFlags = &self->_delegateFlags;
      self->_delegateFlags.hasMediaQueryEvaluator = objc_opt_respondsToSelector() & 1;

      v9 = [(_TVAppDocumentController *)self appDelegate];
      self->_delegateFlags.hasWillHostTemplateViewController = objc_opt_respondsToSelector() & 1;

      v10 = [(_TVAppDocumentController *)self appDelegate];
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
  v3 = [(_TVAppDocumentController *)self templateViewController];
  v4 = [v3 parentViewController];
  if (v4 && ![(_TVAppDocumentController *)self isTransitioning])
  {
    v6 = [(_TVAppDocumentController *)self templateViewController];
  }

  else
  {
    v5 = [(_TVAppDocumentController *)self childViewControllers];
    v6 = [v5 firstObject];
  }

  if (v6)
  {
    v9[0] = v6;
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
  v3 = [(_TVAppDocumentController *)self pagePerformance];
  [v3 markViewWillLoad];

  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
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
  v3 = [(_TVAppDocumentController *)self appDocument];

  if (v3)
  {
    [(_TVAppDocumentController *)self _updateTemplateViewController];
    v4 = [(_TVAppDocumentController *)self appDocument];
    [v4 onLoad];
  }

  else
  {
    v4 = [(_TVAppDocumentController *)self view];
    v5 = objc_alloc_init(_TVLoadingViewController);
    v6 = [(_TVAppDocumentController *)self navigationItem];
    v7 = [v6 title];

    if (v7)
    {
      v8 = [(_TVLoadingViewController *)v5 navigationItem];
      [v8 setTitle:v7];
    }

    [(_TVAppDocumentController *)self setTemplateViewController:v5];
    [(_TVAppDocumentController *)self preferredContentSize];
    if (*MEMORY[0x277CBF3A8] != v10 || *(MEMORY[0x277CBF3A8] + 8) != v9)
    {
      [(_TVAppDocumentController *)self preferredContentSize];
      [(_TVLoadingViewController *)v5 setPreferredContentSize:?];
    }

    [(_TVAppDocumentController *)self addChildViewController:v5];
    v12 = [(_TVLoadingViewController *)v5 view];
    [v4 addSubview:v12];
    [(_TVLoadingViewController *)v5 didMoveToParentViewController:self];
  }

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [v13 BOOLForKey:@"enableTVMLRefresh"];

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:13 target:self action:sel_reload];
    v16 = [(_TVAppDocumentController *)self navigationItem];
    [v16 setRightBarButtonItem:v15];
  }

  v17 = [(_TVAppDocumentController *)self navigationController];
  v18 = [v17 interactivePopGestureRecognizer];
  [v18 setDelegate:self];

  [(_TVAppDocumentController *)self setDefinesPresentationContext:1];
  v19 = [(_TVAppDocumentController *)self pagePerformance];
  [v19 markViewDidLoad];
}

- (void)reload
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 reload];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(_TVAppDocumentController *)self pagePerformance];
  [v5 markViewWillAppear];

  v9.receiver = self;
  v9.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v9 viewWillAppear:v3];
  if (![(_TVAppDocumentController *)self isTransitioning]&& [(_TVAppDocumentController *)self isVisualEffectDisablementNeeded])
  {
    v6 = [(_TVAppDocumentController *)self templateViewController];
    v7 = [v6 view];
    [_TVVisualEffectView disableForHostView:v7];
  }

  [(_TVAppDocumentController *)self _updateIdleModeStatus];
  v8 = [(_TVAppDocumentController *)self appDocument];
  [v8 onAppear];
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v12 viewDidAppear:a3];
  if (![(_TVAppDocumentController *)self isTransitioning]&& [(_TVAppDocumentController *)self isVisualEffectDisablementNeeded])
  {
    v4 = [(_TVAppDocumentController *)self templateViewController];
    v5 = [v4 view];
    [_TVVisualEffectView enableForHostView:v5];
  }

  v6 = [(_TVAppDocumentController *)self navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 count] != 1;

  v9 = [(_TVAppDocumentController *)self navigationController];
  v10 = [v9 interactivePopGestureRecognizer];
  [v10 setEnabled:v8];

  v11 = [(_TVAppDocumentController *)self pagePerformance];
  [v11 markViewDidAppear];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(_TVAppDocumentController *)self pagePerformance];
  [v5 markViewWillDisappear];

  v8.receiver = self;
  v8.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v8 viewWillDisappear:v3];
  if (![(_TVAppDocumentController *)self isTransitioning])
  {
    if ([(_TVAppDocumentController *)self isVisualEffectDisablementNeeded])
    {
      v6 = [(_TVAppDocumentController *)self templateViewController];
      v7 = [v6 view];
      [_TVVisualEffectView disableForHostView:v7];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v7 viewDidDisappear:a3];
  v4 = [(_TVAppDocumentController *)self pagePerformance];
  [v4 markViewDidDisappear];

  v5 = [(_TVAppDocumentController *)self pagePerformanceView];
  [v5 removeFromSuperview];

  v6 = [(_TVAppDocumentController *)self appDocument];
  [v6 onDisappear];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v12 viewDidLayoutSubviews];
  v3 = [(_TVAppDocumentController *)self templateViewController];
  v4 = [v3 parentViewController];

  if (v4 == self)
  {
    v5 = [(_TVAppDocumentController *)self view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    v10 = [(_TVAppDocumentController *)self templateViewController];
    v11 = [v10 view];

    [v11 setCenter:{v7 * 0.5, v9 * 0.5}];
    [v11 setBounds:{0.0, 0.0, v7, v9}];
  }

  if (self->_shouldMarkStylesDirtyBeforeLayout)
  {
    self->_shouldMarkStylesDirtyBeforeLayout = 0;
    [(_TVAppDocumentController *)self _markAndNotifyStylesDirty];
  }
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [(_TVAppDocumentController *)self templateViewController];
  if (v3)
  {
    v4 = [(_TVAppDocumentController *)self templateViewController];
    v5 = [v4 preferredStatusBarStyle];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVAppDocumentController;
    v5 = [(_TVAppDocumentController *)&v7 preferredStatusBarStyle];
  }

  return v5;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = [(_TVAppDocumentController *)self childViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 fromViewController:(id)a4
{
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 appDocument];
    v8 = [v7 templateElement];

    v9 = [(_TVAppDocumentController *)self appDocument];
    v10 = [v9 templateElement];

    if (v10)
    {
      v11 = +[TVInterfaceFactory sharedInterfaceFactory];
      v12 = [v11 _controllerTransitionFromElement:v10 toElement:v8 forNavigationControllerOperation:a3 relativeToFrom:0];

      if (v12)
      {

LABEL_8:
        goto LABEL_10;
      }
    }
  }

  v13 = [(_TVAppDocumentController *)self templateViewController];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v8 = [(_TVAppDocumentController *)self templateViewController];
    v12 = [v8 customAnimatorForNavigationControllerOperation:a3 fromViewController:v6];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 toViewController:(id)a4
{
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 appDocument];
    v8 = [v7 templateElement];

    v9 = [(_TVAppDocumentController *)self appDocument];
    v10 = [v9 templateElement];

    if (v10)
    {
      v11 = +[TVInterfaceFactory sharedInterfaceFactory];
      v12 = [v11 _controllerTransitionFromElement:v10 toElement:v8 forNavigationControllerOperation:a3 relativeToFrom:1];

      if (v12)
      {

LABEL_8:
        goto LABEL_10;
      }
    }
  }

  v13 = [(_TVAppDocumentController *)self templateViewController];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v8 = [(_TVAppDocumentController *)self templateViewController];
    v12 = [v8 customAnimatorForNavigationControllerOperation:a3 toViewController:v6];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(_TVAppDocumentController *)self childViewControllers];
  v4 = [v3 lastObject];

  if (v4)
  {
    v5 = [v4 supportedInterfaceOrientations];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _TVAppDocumentController;
    v5 = [(_TVAppDocumentController *)&v8 supportedInterfaceOrientations];
  }

  v6 = v5;

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    [_TVAppDocumentController viewWillTransitionToSize:withTransitionCoordinator:];
  }

  v8 = [(_TVAppDocumentController *)self appDocument];

  if (v8)
  {
    self->_shouldMarkStylesDirtyBeforeLayout = 1;
  }

  v9.receiver = self;
  v9.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (id)overrideTraitCollectionForChildViewController:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _TVAppDocumentController;
  v5 = [(_TVAppDocumentController *)&v18 overrideTraitCollectionForChildViewController:v4];
  v6 = [(_TVAppDocumentController *)self templateViewController];
  if (v6)
  {
    v7 = v6;
    v8 = [(_TVAppDocumentController *)self templateViewController];

    if (v8 == v4)
    {
      v9 = [(_TVAppDocumentController *)self appDocument];
      v10 = [v9 templateElement];
      v11 = [TVMLUtilities overrideInterfaceStyleForTemplateElement:v10];

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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(_TVAppDocumentController *)self templateViewController];

  if (v5)
  {
    v6 = [(_TVAppDocumentController *)self traitCollection];
    v7 = [(_TVAppDocumentController *)self appDocument];
    v8 = [v7 templateElement];
    v9 = [TVMLUtilities overrideInterfaceStyleForTemplateElement:v8];

    if (v9 || ![v4 userInterfaceStyle])
    {
      v10 = 0;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v14 = [v4 userInterfaceStyle];
      v10 = v14 != [v6 userInterfaceStyle];
      if (!v4)
      {
LABEL_8:
        v15 = [(_TVAppDocumentController *)self mediaQueryEvaluator];
        v16 = [v15 windowSizeAdaptor];
        v17 = [v16 update];

        if (!v10)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    v11 = [v4 horizontalSizeClass];
    if (v11 == [v6 horizontalSizeClass])
    {
      v12 = [v4 verticalSizeClass];
      v13 = v12 != [v6 verticalSizeClass];
    }

    else
    {
      v13 = 1;
    }

    v18 = [v4 preferredContentSizeCategory];
    v19 = [v6 preferredContentSizeCategory];

    v17 = v18 != v19 || v13;
    if (!v10)
    {
LABEL_9:
      if (v17)
      {
        self->_shouldMarkStylesDirtyBeforeLayout = 1;
      }

      goto LABEL_17;
    }

LABEL_16:
    [(_TVAppDocumentController *)self _markAndNotifyStylesDirty];
LABEL_17:
  }

  v20 = [(_TVAppDocumentController *)self navigationController];
  v21 = +[_TVModalPresenter presenter];
  v22 = [v21 modalRootViewController];
  v23 = [v20 isEqual:v22];

  if (v23)
  {
    v24 = [(_TVAppDocumentController *)self navigationController];
    v25 = [v24 navigationBar];
    [v25 traitCollectionDidChange:v4];
  }

  v26.receiver = self;
  v26.super_class = _TVAppDocumentController;
  [(_TVAppDocumentController *)&v26 traitCollectionDidChange:v4];
}

- (CGSize)tv_adjustedWindowSizeForDocument:(id)a3
{
  v4 = [(_TVAppDocumentController *)self mediaQueryEvaluator];
  v5 = [v4 windowSizeAdaptor];
  [v5 adjustedWindowSize];
  v7 = v6;
  v9 = v8;

  v10 = [(_TVAppDocumentController *)self parentViewController];
  if (!v10 || (v11 = v10, -[_TVAppDocumentController parentViewController](self, "parentViewController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isViewLoaded], v12, v11, !v13) || (-[_TVAppDocumentController parentViewController](self, "parentViewController"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "view"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "frame"), v17 = v16, v19 = v18, v15, v14, v17 >= v7) && v19 >= v9)
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

- (void)documentNeedsUpdate:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    [_TVAppDocumentController documentNeedsUpdate:];
  }
}

- (void)documentDidUpdate:(id)a3
{
  v30 = a3;
  if (([(_TVAppDocumentController *)self isViewLoaded]& 1) != 0)
  {
    if (([v30 isUpdated] & 1) != 0 || !objc_msgSend(v30, "isSubtreeUpdated"))
    {
      [(_TVAppDocumentController *)self _updateTemplateViewController];
      v7 = [(_TVAppDocumentController *)self appDocument];
      v9 = [v7 templateElement];
      [v9 resetProperty:1];
    }

    else
    {
      v4 = [(_TVAppDocumentController *)self pagePerformance];
      v5 = [(_TVAppDocumentController *)self appDocument];
      v6 = [v5 templateElement];
      v7 = [v4 getEntryForTemplate:v6];

      [v7 markTemplateWillRender];
      v8 = [(_TVAppDocumentController *)self appDocument];
      v9 = [v8 templateElement];

      if ([v9 updateType] == 4)
      {
        v10 = [(_TVAppDocumentController *)self mediaQueryEvaluator];
        [v10 setTemplateElement:v9];
      }

      v11 = +[TVInterfaceFactory sharedInterfaceFactory];
      [v11 _willParseAppDocument:v30 forImplicitUpdates:0];

      v12 = +[TVInterfaceFactory sharedInterfaceFactory];
      v13 = [(_TVAppDocumentController *)self appDocument];
      v14 = [v13 templateElement];
      v15 = [(_TVAppDocumentController *)self templateViewController];
      v16 = [v12 _viewControllerFromElement:v14 existingController:v15];

      [v7 markTemplateDidRender];
      [v7 markTemplateWillTransition];
      [v7 markTemplateDidTransition];
      v17 = [(_TVAppDocumentController *)self appDocument];
      v18 = [v17 templateElement];
      [v18 resetProperty:1];

      v19 = [(_TVAppDocumentController *)self tabBarController];
      if (v19)
      {
        if ([(_TVAppDocumentController *)self _isFlowcaseStack])
        {
          v20 = [(_TVAppDocumentController *)self templateViewController];
          v21 = [v20 view];
          [v21 setClipsToBounds:0];

          v22 = [(_TVAppDocumentController *)self templateViewController];
          v23 = [v22 view];
          v24 = [v23 subviews];
          v25 = [v24 firstObject];
          [v25 setClipsToBounds:0];
        }

        [v19 _setSelectedViewControllerNeedsLayout];
      }

      v26 = [v16 view];
      [(_TVAppDocumentController *)self _updateModalPresentationStateWithTemplateView:v26];
    }

    [(_TVAppDocumentController *)self _updateIdleModeStatus];
    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 postNotificationName:@"_TVAppDocumentDidUpdateNotification" object:self];

    [v30 onUpdate];
  }

  else
  {
    v27 = [(_TVAppDocumentController *)self appDocument];
    v28 = [v27 templateElement];
    [v28 resetProperty:1];
  }
}

- (BOOL)document:(id)a3 evaluateStyleMediaQuery:(id)a4
{
  v5 = a4;
  v6 = [(_TVAppDocumentController *)self mediaQueryEvaluator];
  v7 = [v6 evaluateMediaQuery:v5];

  return v7;
}

- (id)impressionableViewElementsForDocument:(id)a3
{
  v4 = a3;
  v5 = [(_TVAppDocumentController *)self templateViewController];
  v6 = [v5 tv_impressionableElementsForDocument:v4];

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

- (void)documentDidUpdateImplicitly:(id)a3
{
  v5 = +[TVInterfaceFactory sharedInterfaceFactory];
  v4 = [(_TVAppDocumentController *)self appDocument];
  [v5 _willParseAppDocument:v4 forImplicitUpdates:1];
}

- (void)setOpaque:(BOOL)a3
{
  if (self->_opaque != a3)
  {
    self->_opaque = a3;
    v5 = [(_TVAppDocumentController *)self view];
    if (self->_opaque)
    {
      [MEMORY[0x277D75348] systemBackgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] clearColor];
    }
    v4 = ;
    [v5 setBackgroundColor:v4];
  }
}

- (void)scrollToTop
{
  v3 = [(_TVAppDocumentController *)self templateViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_TVAppDocumentController *)self templateViewController];
    [v5 scrollToTop];
  }
}

- (void)_markAndNotifyStylesDirty
{
  v3 = [(_TVAppDocumentController *)self appDocument];

  if (v3)
  {
    v4 = [(_TVAppDocumentController *)self view];
    [v4 bounds];

    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVAppDocumentController _markAndNotifyStylesDirty];
    }

    v5 = [(_TVAppDocumentController *)self appDocument];
    v6 = [v5 templateElement];
    [v5 setViewElementStylesDirty];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"TVAppDocumentDidMarkStylesDirtyNotification" object:v5];

    v8 = +[TVInterfaceFactory sharedInterfaceFactory];
    [v8 _willParseAppDocument:v5 forImplicitUpdates:0];

    v9 = +[TVInterfaceFactory sharedInterfaceFactory];
    v10 = [(_TVAppDocumentController *)self templateViewController];
    v11 = [v9 _viewControllerFromElement:v6 existingController:v10];

    [v6 resetProperty:1];
  }
}

- (void)_updateIdleModeStatus
{
  v3 = [(_TVAppDocumentController *)self appDocument];
  v4 = [v3 templateElement];
  v5 = [v4 tv_elementType];

  v6 = [*MEMORY[0x277D76620] delegate];
  if (v5 != 28)
  {
    v11 = v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = ((v5 - 65) < 0xA) & (0x241u >> (v5 - 65));
      v8 = [(_TVAppDocumentController *)self templateViewController];
      if ([v8 conformsToProtocol:&unk_287E63AE0])
      {
        v9 = [(_TVAppDocumentController *)self templateViewController];
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
LABEL_7:
          [v11 updateIdleModeVisualEffectsStatus:v7];
          goto LABEL_8;
        }

        v8 = [(_TVAppDocumentController *)self templateViewController];
        v7 = [v8 supportsIdleModeVisualEffects];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  MEMORY[0x2821F9730]();
}

- (id)_alertControllerWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedDescription];
  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Cannot Connect to iTunes Store." message:v5 preferredStyle:1];
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
  v2 = [(_TVAppDocumentController *)self templateViewController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 automaticallyAdjustsScrollViewInsets];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_updateModalPresentationStateWithTemplateView:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v30 = a3;
  val = self;
  v4 = [(_TVAppDocumentController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [(_TVAppDocumentController *)val navigationController];

    if (v29)
    {
      v28 = [v29 configuration];
      v5 = [v28 type];
      v27 = [v29 containingAlertController];
      if (v27 && (v5 - 1001) <= 1)
      {
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v41 = 0u;
        v6 = [(_TVAppDocumentController *)val appDocument];
        v7 = [v6 templateElement];
        v8 = [v7 children];

        v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v9)
        {
          v10 = *v42;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v42 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v41 + 1) + 8 * i);
              if ([v12 tv_elementType] == 25)
              {
                v26 = v12;
                goto LABEL_16;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
        v14 = [v26 children];
        v31 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];

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
                v19 = [v18 text];
                v20 = [v19 string];

                v21 = [v18 attributes];
                v22 = [v21 objectForKey:@"actionStyle"];

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
                v25 = [v24 actionWithTitle:v20 style:v23 handler:v34];
                [v31 addObject:v25];

                objc_destroyWeak(&v35);
                objc_destroyWeak(&location);
              }
            }

            v15 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v15);
        }

        [v28 setAlertActions:v31];
        [v28 _applyAlertActionsForController:v27];
      }

      [v30 tv_sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v26}];
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
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_26CD9A000, log, OS_LOG_TYPE_DEBUG, "Template element: %@", buf, 0xCu);
}

- (void)_willHostTemplateViewController:(id)a3 usesTransitions:(BOOL *)a4
{
  v7 = a3;
  [_TVAppDocumentController willHostTemplateViewController:"willHostTemplateViewController:usesTransitions:" usesTransitions:?];
  if (self->_delegateFlags.hasWillHostTemplateViewController)
  {
    v6 = [(_TVAppDocumentController *)self appDelegate];
    [v6 appDocumentController:self willHostTemplateViewController:v7 usesTransitions:a4];
  }

  [(TVDocumentViewController *)self willUpdateDocument];
}

- (void)_didHostTemplateViewController:(id)a3 usedTransitions:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [_TVAppDocumentController didHostTemplateViewController:"didHostTemplateViewController:usedTransitions:" usedTransitions:?];
  if (self->_delegateFlags.hasDidHostTemplateViewController)
  {
    v6 = [(_TVAppDocumentController *)self appDelegate];
    [v6 appDocumentController:self didHostTemplateViewController:v7 usedTransitions:v4];
  }

  [(TVDocumentViewController *)self didUpdateDocument];
}

- (BOOL)_isFlowcaseStack
{
  v2 = [(_TVAppDocumentController *)self appDocument];
  v3 = [v2 templateElement];
  v4 = [TVMLUtilities isFlowcaseAtTopOfStackFromElement:v3];

  return v4;
}

- (id)_mediaQueryEvaluator
{
  if (!self->_delegateFlags.hasMediaQueryEvaluator || (-[_TVAppDocumentController appDelegate](self, "appDelegate"), v3 = objc_claimAutoreleasedReturnValue(), [v3 mediaQueryEvaluatorForAppDocumentController:self], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = [(_TVAppDocumentController *)self appDocument];
    v6 = [v5 appContext];
    v7 = [v6 app];
    if ([v7 conformsToProtocol:&unk_287E5ED28])
    {
      v8 = [(_TVAppDocumentController *)self appDocument];
      v9 = [v8 appContext];
      v10 = [v9 app];
      v11 = [v10 keyTraitEnvironment];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(_TVAppDocumentController *)self view];
    v13 = [v12 window];

    if (!v13)
    {
      v14 = [(_TVAppDocumentController *)self parentViewController];

      if (!v14 || (-[_TVAppDocumentController parentViewController](self, "parentViewController"), v15 = objc_claimAutoreleasedReturnValue(), [v15 view], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "window"), v13 = objc_claimAutoreleasedReturnValue(), v16, v15, !v13))
      {
        v17 = MEMORY[0x277D76620];
        v18 = [*MEMORY[0x277D76620] delegate];
        if (objc_opt_respondsToSelector())
        {
          v19 = [*v17 delegate];
          v13 = [v19 window];
        }

        else
        {
          v13 = 0;
        }
      }
    }

    v20 = [(_TVAppDocumentController *)self appDocument];
    v21 = [v20 templateElement];
    v4 = [TVMediaQueryEvaluator evaluatorForTemplateElement:v21 inWindow:v13 traitEnvironment:v11];
  }

  return v4;
}

- (CGSize)formSize
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updatePreferredFocusedViewStateForFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(_TVAppDocumentController *)self templateViewController];
  if ([v4 conformsToProtocol:&unk_287E7C098])
  {
    [v4 updatePreferredFocusedViewStateForFocus:v3];
  }

  else
  {
    v5 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68___TVAppDocumentController_updatePreferredFocusedViewStateForFocus___block_invoke;
    v15[3] = &unk_279D6E7F8;
    v6 = v4;
    v16 = v6;
    [v5 performWithoutAnimation:v15];
    v7 = [v6 preferredFocusEnvironments];
    v8 = [v7 firstObject];

    v9 = [v8 preferredFocusEnvironments];
    v10 = [v9 firstObject];

    while (v8 != v10 && v10)
    {
      v11 = v8;
      v8 = v10;

      v12 = [v8 preferredFocusEnvironments];
      v10 = [v12 firstObject];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [v14 setSelected:v3 animated:0];
  }
}

- (void)setMenuGestureHandler:(id)a3
{
  v4 = [a3 copy];
  menuGestureHandler = self->_menuGestureHandler;
  self->_menuGestureHandler = v4;

  if (self->_menuGestureHandler)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__menuGestureHandler_];
    [v10 setDelegate:self];
    [v10 setAllowedPressTypes:&unk_287E486F0];
    [(_TVAppDocumentController *)self setMenuGestureRecognizer:v10];
    v6 = [(_TVAppDocumentController *)self view];
    [v6 addGestureRecognizer:v10];
  }

  else
  {
    v7 = [(_TVAppDocumentController *)self menuGestureRecognizer];

    if (v7)
    {
      v8 = [(_TVAppDocumentController *)self view];
      v9 = [(_TVAppDocumentController *)self menuGestureRecognizer];
      [v8 removeGestureRecognizer:v9];

      [(_TVAppDocumentController *)self setMenuGestureRecognizer:0];
    }
  }
}

- (void)_menuGestureHandler:(id)a3
{
  if ([a3 state] == 3)
  {
    menuGestureHandler = self->_menuGestureHandler;
    if (menuGestureHandler)
    {
      v5 = *(menuGestureHandler + 2);

      v5();
    }
  }
}

- (void)pagePerformanceController:(id)a3 didUpdateMetrics:(id)a4
{
  v7 = a4;
  if (([a3 pageWasUpdated] & 1) == 0)
  {
    v6 = [(_TVAppDocumentController *)self appDocument];
    [v6 onPerformanceMetricsChange:v7];
  }
}

- (BOOL)ppt_isLoading
{
  v3 = [(_TVAppDocumentController *)self templateViewController];

  if (!v3)
  {
    return 1;
  }

  v4 = [(_TVAppDocumentController *)self templateViewController];
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

  v6 = [(_TVAppDocumentController *)self transitionCoordinator];

  if (v6)
  {
    return 1;
  }

  v8 = [(_TVAppDocumentController *)self templateViewController];
  v9 = [v8 ppt_isLoading];

  return v9;
}

- (id)activeDocument
{
  v3 = [(_TVAppDocumentController *)self appDocument];
  v4 = [(_TVAppDocumentController *)self templateViewController];
  v5 = [v4 conformsToProtocol:&unk_287E7C190];
  if (v4 && v5)
  {
    v6 = [v4 activeDocument];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v9 = v8;

    v3 = v9;
  }

  return v3;
}

- (id)currentImpressionableElements
{
  v3 = [(_TVAppDocumentController *)self appDocument];
  v4 = [(_TVAppDocumentController *)self impressionableViewElementsForDocument:v3];

  return v4;
}

- (void)snapshotImpressions
{
  v4 = [(_TVAppDocumentController *)self currentImpressionableElements];
  v3 = [(_TVAppDocumentController *)self appDocument];
  [v3 snapshotImpressionsForViewElements:v4];
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