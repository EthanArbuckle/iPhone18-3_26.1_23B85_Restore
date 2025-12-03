@interface PKCompactNavigationContainerController
+ (id)dimmingColor;
- ($B0E03EE70DBE361165F1CEED4B44113B)_infoForViewController:(SEL)controller;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_targetNavigationControllerFrameForInfo:(id *)info;
- (CGRect)exclusionRect;
- (CGSize)_navigationControllerSizeForChildViewControllerInfo:(id *)info withCurrentInfo:(id *)currentInfo;
- (CGSize)childViewControllerPreferredContentSizeForSize:(CGSize)size isRoot:(BOOL)root;
- (CGSize)childViewControllerSizeForNavigationControllerSize:(CGSize)size;
- (CGSize)modalPresentationSize;
- (CGSize)navigationControllerSizeForChildViewControllerPreferredContentSize:(CGSize)size isRoot:(BOOL)root;
- (PKCompactNavigationContainerController)initWithNavigationController:(id)controller;
- (PKCompactNavigationContainerController)initWithNavigationController:(id)controller style:(unint64_t)style;
- (PKCompactNavigationContainerControllerDelegate)delegate;
- (id)_backgroundColor;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_endLayoutGroup;
- (void)_updateForKeyboardIfNecessary;
- (void)_updateLayoutForKeyboardAction:(id)action;
- (void)_updateStatusBarFrame;
- (void)_updateTopViewController:(id)controller animated:(BOOL)animated;
- (void)_updateTopViewControllerAsync:(id)async animated:(BOOL)animated;
- (void)contentContainer:(id)container preferredContentSizeDidChangeForChildContentContainer:(id)contentContainer;
- (void)dealloc;
- (void)insertBackgroundLevelView:(id)view;
- (void)keyboardWillChange:(id)change;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)observedView:(id)view didMoveToWindow:(id)window;
- (void)setExclusionRect:(CGRect)rect withCoordinateSpace:(id)space;
- (void)setPresentingNavigationController:(BOOL)controller;
- (void)tapGestureRecognized:(id)recognized;
- (void)updateChildViewControllerSizeAnimated:(BOOL)animated forceUpdate:(BOOL)update;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PKCompactNavigationContainerController

+ (id)dimmingColor
{
  v2 = MEMORY[0x1E69DC888];
  IsAvailable = PKUserIntentIsAvailable();
  v4 = 0.75;
  if (!IsAvailable)
  {
    v4 = 0.4;
  }

  return [v2 colorWithWhite:0.0 alpha:v4];
}

- (PKCompactNavigationContainerController)initWithNavigationController:(id)controller
{
  controllerCopy = controller;
  v5 = -[PKCompactNavigationContainerController initWithNavigationController:style:](self, "initWithNavigationController:style:", controllerCopy, [controllerCopy style]);

  return v5;
}

- (PKCompactNavigationContainerController)initWithNavigationController:(id)controller style:(unint64_t)style
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = PKCompactNavigationContainerController;
  v7 = [(PKCompactNavigationContainerController *)&v19 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_style = style;
    preferredUserInterfaceStyle = [(PKCompactNavigationContainerController *)v7 preferredUserInterfaceStyle];
    [(PKCompactNavigationContainerController *)v8 setModalPresentationStyle:4];
    [(PKCompactNavigationContainerController *)v8 setTransitioningDelegate:v8];
    if (v8->_style)
    {
      pkui_userInterfaceIdiomSupportsLargeLayouts = 0;
    }

    else
    {
      pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIViewController *)v8 pkui_userInterfaceIdiomSupportsLargeLayouts];
    }

    v8->_centeredCard = pkui_userInterfaceIdiomSupportsLargeLayouts;
    v11 = controllerCopy;
    if (!controllerCopy)
    {
      v11 = [[PKCompactNavigationContainedNavigationController alloc] initWithStyle:style];
    }

    objc_storeStrong(&v8->_containedNavigationController, v11);
    if (!controllerCopy)
    {
    }

    [(PKCompactNavigationContainedNavigationController *)v8->_containedNavigationController addContentContainerObserver:v8];
    [(PKCompactNavigationContainedNavigationController *)v8->_containedNavigationController setDelegate:v8];
    v12 = [[PKCompactNavigationContainedNavigationWrapperViewController alloc] initWithWrappedViewController:v8->_containedNavigationController parentViewController:v8];
    presentationContextVC = v8->_presentationContextVC;
    v8->_presentationContextVC = v12;

    [(PKCompactNavigationContainedNavigationWrapperViewController *)v8->_presentationContextVC setUseParentSafeAreaInsets:!v8->_centeredCard];
    [(PKCompactNavigationContainedNavigationWrapperViewController *)v8->_presentationContextVC setDefinesPresentationContext:[(PKCompactNavigationContainedNavigationController *)v8->_containedNavigationController definesPresentationContext]];
    [(PKCompactNavigationContainedNavigationController *)v8->_containedNavigationController setDefinesPresentationContext:0];
    [(PKCompactNavigationContainerController *)v8 addChildViewController:v8->_presentationContextVC];
    [(PKCompactNavigationContainedNavigationWrapperViewController *)v8->_presentationContextVC didMoveToParentViewController:v8];
    [(PKCompactNavigationContainerController *)v8 setNeedsStatusBarAppearanceUpdate];
    if (preferredUserInterfaceStyle != [(PKCompactNavigationContainerController *)v8 preferredUserInterfaceStyle])
    {
      [(PKCompactNavigationContainerController *)v8 setNeedsUserInterfaceAppearanceUpdate];
    }

    [(PKCompactNavigationContainerController *)v8 setNeedsUpdateOfHomeIndicatorAutoHidden];
    [(PKCompactNavigationContainerController *)v8 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    [(PKCompactNavigationContainerController *)v8 setNeedsWhitePointAdaptivityStyleUpdate];
    v14 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 16);
    v8->_exclusionRect.origin = *MEMORY[0x1E695F050];
    v8->_exclusionRect.size = v15;
    v8->_lastKeyboardFrame.origin = v14;
    v8->_lastKeyboardFrame.size = v15;
    v8->_keyboardFrame.origin = v14;
    v8->_keyboardFrame.size = v15;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = defaultCenter;
    if (v8->_centeredCard)
    {
      [defaultCenter addObserver:v8 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE028] object:0];
      [v17 addObserver:v8 selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE018] object:0];
      [v17 addObserver:v8 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE020] object:0];
    }
  }

  return v8;
}

- (void)dealloc
{
  viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
  [viewIfLoaded removeWindowObserver:self];

  [(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController removeContentContainerObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v5 dealloc];
}

- (void)loadView
{
  v3 = PKUIGetMinScreenType();
  v4 = (&unk_1BE116228 + 8 * v3);
  v5 = (&unk_1BE1162C8 + 8 * v3);
  if (v3 >= 0x14)
  {
    v5 = (MEMORY[0x1E695F060] + 8);
    v4 = MEMORY[0x1E695F060];
  }

  v6 = [[PKView alloc] initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), *v4, *v5];
  [(PKCompactNavigationContainerController *)self setView:v6];
  [(PKView *)v6 setAutoresizesSubviews:0];
  [(PKView *)v6 setOpaque:0];
  _backgroundColor = [(PKCompactNavigationContainerController *)self _backgroundColor];
  [(PKView *)v6 setBackgroundColor:_backgroundColor];

  [(PKView *)v6 addWindowObserver:self];
  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapGestureRecognized_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v8;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [(PKView *)v6 addGestureRecognizer:self->_tapGestureRecognizer];
  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
  maskingContainerView = self->_maskingContainerView;
  self->_maskingContainerView = v10;

  [(UIView *)self->_maskingContainerView setAutoresizesSubviews:0];
  [(PKView *)v6 addSubview:self->_maskingContainerView];
  view = [(PKCompactNavigationContainedNavigationWrapperViewController *)self->_presentationContextVC view];
  [view setAutoresizesSubviews:0];
  [(UIView *)self->_maskingContainerView addSubview:view];
  layer = [(UIView *)self->_maskingContainerView layer];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __50__PKCompactNavigationContainerController_loadView__block_invoke;
  v28 = &unk_1E801FCB0;
  v29 = layer;
  selfCopy = self;
  v14 = layer;
  v15 = _Block_copy(&v25);
  v17 = v15;
  style = self->_style;
  v19 = 0.0;
  if (style == 2)
  {
    v16.n128_u64[0] = 10.0;
    (*(v15 + 2))(v15, 3, v16);
  }

  else if (style == 1)
  {
    MGGetFloat32Answer();
    v20 = v21.n128_f32[0] <= 0.0;
    v21.n128_u64[0] = 12.0;
    if (!v20)
    {
      v21.n128_f64[0] = 30.0;
    }

    v17[2](v17, 15, v21);
  }

  else if (!style && [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts:v25])
  {
    (v17[2])(v17, 15, 12.0);
    v19 = 0.5;
  }

  v22 = [(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController view:v25];
  [v22 setAutoresizingMask:0];
  [view addSubview:v22];
  [v14 setAnchorPoint:{0.5, v19}];
  layer2 = [view layer];
  [layer2 setAnchorPoint:{0.5, v19}];

  layer3 = [v22 layer];
  [layer3 setAnchorPoint:{0.5, v19}];
}

uint64_t __50__PKCompactNavigationContainerController_loadView__block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  [*(a1 + 32) setMasksToBounds:1];
  [*(a1 + 32) setCornerCurve:*MEMORY[0x1E69796E8]];
  [*(a1 + 32) setCornerRadius:a3];
  result = [*(a1 + 32) setMaskedCorners:a2];
  *(*(a1 + 40) + 1008) = 1;
  return result;
}

- (void)viewDidLoad
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v8 viewDidLoad];
  [(PKCompactNavigationContainerController *)self _updateStatusBarFrame];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromCGRect(self->_statusBarFrame);
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "compact navigation container loaded with status bar frame %@", buf, 0xCu);
  }

  view = [(PKCompactNavigationContainerController *)self view];
  _backgroundColor = [(PKCompactNavigationContainerController *)self _backgroundColor];
  [view setBackgroundColor:_backgroundColor];

  if (!self->_topVC && !self->_pendingTopVC)
  {
    topViewController = [(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController topViewController];
    if (topViewController)
    {
      [(PKCompactNavigationContainerController *)self _updateTopViewController:topViewController animated:0];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(PKCompactNavigationContainerController *)self _updateStatusBarFrame];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v4 viewWillAppear:appear];
  self->_visibility = 1;
  [(PKCompactNavigationContainerController *)self _updateForKeyboardIfNecessary];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v4 viewDidAppear:appear];
  self->_visibility = 2;
  [(PKCompactNavigationContainerController *)self _updateForKeyboardIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v4 viewWillDisappear:disappear];
  self->_visibility = 3;
  [(PKCompactNavigationContainerController *)self _updateForKeyboardIfNecessary];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v4 viewDidDisappear:disappear];
  self->_visibility = 0;
  [(PKCompactNavigationContainerController *)self _updateForKeyboardIfNecessary];
}

- (void)viewWillLayoutSubviews
{
  v72.receiver = self;
  v72.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v72 viewWillLayoutSubviews];
  [(PKCompactNavigationContainerController *)self _beginLayoutGroup];
  ++self->_contentSizeUpdateDeferralCounter;
  view = [(PKCompactNavigationContainerController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v12;
  if (self->_visibility - 1 > 1)
  {
    origin = self->_lastKeyboardFrame.origin;
    size = self->_lastKeyboardFrame.size;
  }

  else
  {
    v56 = *(MEMORY[0x1E695F050] + 16);
    v57 = *MEMORY[0x1E695F050];
    if (!CGRectIsNull(self->_keyboardFrame))
    {
      window = [view window];
      v15 = window;
      if (window)
      {
        [window convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
        [view convertRect:0 fromView:?];
        v17.y = v16;
        v19.height = v18;
        v56 = v19;
        v57 = v17;
      }
    }

    size = v56;
    origin = v57;
  }

  self->_lastKeyboardFrame.origin = origin;
  self->_lastKeyboardFrame.size = size;
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v5;
  remainder.origin.y = v7;
  remainder.size.width = v9;
  remainder.size.height = v11;
  if (self->_centeredCard)
  {
    [MEMORY[0x1E69DCCD8] defaultFormSheetSize];
    PKSizeAlignedInRect();
    self->_maximumModalPresentationFrame.origin.x = v22;
    self->_maximumModalPresentationFrame.origin.y = v23;
    self->_maximumModalPresentationFrame.size.width = v24;
    self->_maximumModalPresentationFrame.size.height = v25;
  }

  else
  {
    v73.origin.x = v5;
    v73.origin.y = v7;
    v73.size.width = v9;
    v73.size.height = v11;
    CGRectDivide(v73, &slice, &remainder, fmax(v13, self->_statusBarFrame.size.height), CGRectMinYEdge);
    v26 = remainder.size;
    self->_maximumModalPresentationFrame.origin = remainder.origin;
    self->_maximumModalPresentationFrame.size = v26;
  }

  view2 = [(PKCompactNavigationContainedNavigationWrapperViewController *)self->_presentationContextVC view];
  v28 = *&self->_topVCInfo.minimumNavigationHeight;
  v69[0] = self->_topVCInfo.preferredContentSize;
  v69[1] = v28;
  [(PKCompactNavigationContainerController *)self _targetNavigationControllerFrameForInfo:v69];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [(UIView *)self->_maskingContainerView setFrame:?];
  [(UIView *)self->_maskingContainerView bounds];
  [view2 setFrame:?];
  [view2 convertRect:view fromView:{v30, v32, v34, v36}];
  if (self->_topVCIsExpectedClass)
  {
    [(UIViewController *)self->_topVC setTargetNavigationHeight:v36];
    if (self->_topVCIsInInitialLayout)
    {
      self->_topVCIsInInitialLayout = 1;
    }

    else
    {
      needsInitialLayout = [(UIViewController *)self->_topVC needsInitialLayout];
      self->_topVCIsInInitialLayout = needsInitialLayout;
      if ((needsInitialLayout & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __64__PKCompactNavigationContainerController_viewWillLayoutSubviews__block_invoke;
    v68[3] = &unk_1E8010970;
    v68[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v68];
  }

LABEL_16:
  view3 = [(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController view];
  [view3 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  PKSizeAlignedInRect();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v74.origin.x = v40;
  v74.origin.y = v42;
  v74.size.width = v44;
  v74.size.height = v46;
  v75.origin.x = v48;
  v75.origin.y = v50;
  v75.size.width = v52;
  v75.size.height = v54;
  if (!CGRectEqualToRect(v74, v75))
  {
    if (!self->_presentingNavigationController || v44 == *MEMORY[0x1E695F060] && v46 == *(MEMORY[0x1E695F060] + 8))
    {
      v55 = MEMORY[0x1E69DD250];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __64__PKCompactNavigationContainerController_viewWillLayoutSubviews__block_invoke_2;
      v58[3] = &unk_1E801FCD8;
      v59 = view3;
      v60 = v40;
      v61 = v42;
      v62 = v44;
      v63 = v46;
      v64 = v48;
      v65 = v50;
      v66 = v52;
      v67 = v54;
      [v55 performWithoutAnimation:v58];
    }

    [view3 setFrame:{v48, v50, v52, v54}];
  }
}

void __64__PKCompactNavigationContainerController_viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1136) view];
  [v1 layoutIfNeeded];
}

uint64_t __64__PKCompactNavigationContainerController_viewWillLayoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 96)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKCompactNavigationContainerController;
  [(PKCompactNavigationContainerController *)&v4 viewDidLayoutSubviews];
  v3 = self->_contentSizeUpdateDeferralCounter - 1;
  self->_contentSizeUpdateDeferralCounter = v3;
  if (!v3 && self->_deferredContentSizeUpdate)
  {
    [(PKCompactNavigationContainerController *)self updateChildViewControllerSizeAnimated:self->_deferredContentSizeUpdateIsAnimated forceUpdate:self->_deferredContentSizeUpdateIsForced];
  }

  [(PKCompactNavigationContainerController *)self _endLayoutGroup];
}

- (CGRect)_targetNavigationControllerFrameForInfo:(id *)info
{
  v4 = *&info->var1;
  remainder.origin = info->var0;
  remainder.size = v4;
  v5 = *&self->_topVCInfo.minimumNavigationHeight;
  slice.origin = self->_topVCInfo.preferredContentSize;
  slice.size = v5;
  [(PKCompactNavigationContainerController *)self _navigationControllerSizeForChildViewControllerInfo:&remainder withCurrentInfo:&slice];
  v7 = v6;
  v9 = v8;
  viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
  v11 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v11 safeAreaInsets];
    v42 = v20;
    size = self->_maximumModalPresentationFrame.size;
    remainder.origin = self->_maximumModalPresentationFrame.origin;
    remainder.size = size;
    memset(&slice, 0, sizeof(slice));
    if (self->_centeredCard)
    {
      PKSizeAlignedInRect();
      slice.origin.x = v22;
      slice.origin.y = v23;
      slice.size.width = v24;
      slice.size.height = v25;
    }

    else
    {
      CGRectDivide(remainder, &slice, &remainder, v9, CGRectMaxYEdge);
    }

    PKSizeAlignedInRect();
    v27 = v29;
    v7 = v30;
    v9 = v31;
    if (self->_presentingNavigationController)
    {
      MaxY = v28;
      if (self->_centeredCard)
      {
        p_lastKeyboardFrame = &self->_lastKeyboardFrame;
        if (!CGRectIsNull(*p_lastKeyboardFrame))
        {
          remainder.origin.x = v13;
          remainder.origin.y = v15;
          remainder.size.width = v17;
          remainder.size.height = v19;
          v45.origin.x = v13;
          v45.origin.y = v15;
          v45.size.width = v17;
          v45.size.height = v19;
          v33 = fmax(CGRectGetMaxY(v45) - p_lastKeyboardFrame->origin.y, 0.0);
          CGRectDivide(remainder, &remainder, &slice, v33, CGRectMaxYEdge);
          PKSizeAlignedInRect();
          v27 = v34;
          MaxY = v35;
          v7 = v36;
          v9 = v37;
        }

        MaxY = fmax(v15 + v42, MaxY);
      }
    }

    else
    {
      v46.origin.x = v13;
      v46.origin.y = v15;
      v46.size.width = v17;
      v46.size.height = v19;
      MaxY = CGRectGetMaxY(v46);
    }
  }

  else
  {
    v27 = *MEMORY[0x1E695EFF8];
    MaxY = *(MEMORY[0x1E695EFF8] + 8);
  }

  v38 = v27;
  v39 = MaxY;
  v40 = v7;
  v41 = v9;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (void)_endLayoutGroup
{
  v2 = self->_layoutGroupCounter - 1;
  self->_layoutGroupCounter = v2;
  if (!v2)
  {
    self->_topVCIsInInitialLayout = 0;
  }
}

- (void)insertBackgroundLevelView:(id)view
{
  if (view)
  {
    viewCopy = view;
    view = [(PKCompactNavigationContainerController *)self view];
    [view insertSubview:viewCopy belowSubview:self->_maskingContainerView];
  }
}

- (CGSize)childViewControllerPreferredContentSizeForSize:(CGSize)size isRoot:(BOOL)root
{
  PKSizeRoundToPixel();
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)navigationControllerSizeForChildViewControllerPreferredContentSize:(CGSize)size isRoot:(BOOL)root
{
  sizeCopy = size;
  v9 = 0;
  rootCopy = root;
  v4 = *&self->_topVCInfo.minimumNavigationHeight;
  v7[0] = self->_topVCInfo.preferredContentSize;
  v7[1] = v4;
  [(PKCompactNavigationContainerController *)self _navigationControllerSizeForChildViewControllerInfo:&sizeCopy withCurrentInfo:v7];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)childViewControllerSizeForNavigationControllerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (([(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController isNavigationBarHidden]& 1) == 0)
  {
    navigationBar = [(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController navigationBar];
    [navigationBar frame];
    height = height - v7;
  }

  if (!self->_centeredCard)
  {
    viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
    [viewIfLoaded safeAreaInsets];
    height = height - v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)modalPresentationSize
{
  width = self->_maximumModalPresentationFrame.size.width;
  height = self->_maximumModalPresentationFrame.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_hasExplicitlyDefinedSupportedInterfaceOrientations)
  {
    return self->_explicitlyDefinedSupportedInterfaceOrientations;
  }

  if (self->_containedNavigationController)
  {
    containedNavigationController = self->_containedNavigationController;

    return [(PKCompactNavigationContainedNavigationController *)containedNavigationController supportedInterfaceOrientations];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PKCompactNavigationContainerController;
    return [(PKCompactNavigationContainerController *)&v6 supportedInterfaceOrientations];
  }
}

- (void)setExclusionRect:(CGRect)rect withCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
  [viewIfLoaded layoutIfNeeded];

  self->_exclusionRect.origin.x = x;
  self->_exclusionRect.origin.y = y;
  self->_exclusionRect.size.width = width;
  self->_exclusionRect.size.height = height;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (CGRectIsNull(v14))
  {
    v10 = 0;
    fixedCoordinateSpace = 0;
  }

  else if (spaceCopy)
  {
    v10 = 0;
    fixedCoordinateSpace = spaceCopy;
  }

  else
  {
    viewIfLoaded = [MEMORY[0x1E69DCEB0] mainScreen];
    fixedCoordinateSpace = [viewIfLoaded fixedCoordinateSpace];
    v10 = 1;
  }

  objc_storeStrong(&self->_exclusionCoordinateSpace, fixedCoordinateSpace);
  if (v10)
  {
  }

  [(PKCompactNavigationContainerController *)self updateChildViewControllerSizeAnimated:1];
}

- (void)setPresentingNavigationController:(BOOL)controller
{
  if (self->_presentingNavigationController != controller)
  {
    self->_presentingNavigationController = controller;
    viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
    if (viewIfLoaded)
    {
      v7 = viewIfLoaded;
      _backgroundColor = [(PKCompactNavigationContainerController *)self _backgroundColor];
      [v7 setBackgroundColor:_backgroundColor];

      [v7 setNeedsLayout];
      viewIfLoaded = v7;
    }
  }
}

- (id)_backgroundColor
{
  if (self->_presentingNavigationController)
  {
    [objc_opt_class() dimmingColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v2 = ;

  return v2;
}

- (void)updateChildViewControllerSizeAnimated:(BOOL)animated forceUpdate:(BOOL)update
{
  animatedCopy = animated;
  if (self->_contentSizeUpdateDeferralCounter)
  {
    deferredContentSizeUpdate = self->_deferredContentSizeUpdate;
    self->_deferredContentSizeUpdate = 1;
    if (deferredContentSizeUpdate)
    {
      self->_deferredContentSizeUpdateIsAnimated &= animated;
      if (self->_deferredContentSizeUpdateIsForced)
      {
        update = 1;
      }
    }

    else
    {
      self->_deferredContentSizeUpdateIsAnimated = animated;
    }

    self->_deferredContentSizeUpdateIsForced = update;
  }

  else
  {
    self->_deferredContentSizeUpdate = 0;
    v15 = 0;
    v16 = 0u;
    [(PKCompactNavigationContainerController *)self _infoForViewController:self->_topVC];
    v8 = self->_updateChildViewControllerSizeCounter + 1;
    self->_updateChildViewControllerSizeCounter = v8;
    if (update || (self->_topVCInfo.preferredContentSize.width == v15.width ? (v9 = self->_topVCInfo.preferredContentSize.height == v15.height) : (v9 = 0), !v9 || self->_topVCInfo.minimumNavigationHeight != *&v16 || self->_topVCInfo.isRoot != BYTE8(v16)))
    {
      [(PKCompactNavigationContainerController *)self _beginLayoutGroup];
      viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
      [viewIfLoaded layoutIfNeeded];
      if (v8 == self->_updateChildViewControllerSizeCounter)
      {
        v11 = v16;
        self->_topVCInfo.preferredContentSize = v15;
        *&self->_topVCInfo.minimumNavigationHeight = v11;
        [viewIfLoaded setNeedsLayout];
        if (viewIfLoaded)
        {
          if (animatedCopy)
          {
            v12 = MEMORY[0x1E69DD250];
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __92__PKCompactNavigationContainerController_updateChildViewControllerSizeAnimated_forceUpdate___block_invoke;
            v13[3] = &unk_1E8010970;
            v14 = viewIfLoaded;
            [v12 pkui_animateUsingOptions:134 delay:v13 animations:0 completion:0.0];
          }
        }
      }

      [(PKCompactNavigationContainerController *)self _endLayoutGroup];
    }
  }
}

- (void)_updateTopViewControllerAsync:(id)async animated:(BOOL)animated
{
  asyncCopy = async;
  if (asyncCopy)
  {
    v8 = self->_pendingTopVCIdentifier + 1;
    self->_pendingTopVCIdentifier = v8;
    objc_storeStrong(&self->_pendingTopVC, async);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__PKCompactNavigationContainerController__updateTopViewControllerAsync_animated___block_invoke;
    block[3] = &unk_1E801FD00;
    block[4] = self;
    block[5] = v8;
    animatedCopy = animated;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __81__PKCompactNavigationContainerController__updateTopViewControllerAsync_animated___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 1160) == *(result + 40))
  {
    return [*(result + 32) _updateTopViewController:*(v1 + 1152) animated:*(result + 48)];
  }

  return result;
}

- (void)_updateTopViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (controllerCopy)
  {
    ++self->_pendingTopVCIdentifier;
    pendingTopVC = self->_pendingTopVC;
    self->_pendingTopVC = 0;
    v11 = controllerCopy;

    topVC = self->_topVC;
    objc_storeStrong(&self->_topVC, controller);
    objc_opt_class();
    self->_topVCIsExpectedClass = objc_opt_isKindOfClass() & 1;
    v10 = topVC == v11 && self->_topVCIsInInitialLayout;
    self->_topVCIsInInitialLayout = v10;
    [(PKCompactNavigationContainerController *)self updateChildViewControllerSizeAnimated:animatedCopy forceUpdate:topVC != v11];
    controllerCopy = v11;
  }
}

- ($B0E03EE70DBE361165F1CEED4B44113B)_infoForViewController:(SEL)controller
{
  containedNavigationController = self->_containedNavigationController;
  v7 = a4;
  viewControllers = [(PKCompactNavigationContainedNavigationController *)containedNavigationController viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject)
  {
    v10 = firstObject == v7;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  [v7 preferredContentSize];
  v13 = v12;
  v15 = v14;

  [(PKCompactNavigationContainerController *)self childViewControllerPreferredContentSizeForSize:v11 isRoot:v13, v15];
  retstr->var0.width = v16;
  retstr->var0.height = v17;
  retstr->var1 = 0.0;
  *&retstr->var2 = 0;
  retstr->var2 = v11;
  if (v11)
  {
    v18 = *&retstr->var1;
    var0 = retstr->var0;
    v26 = v18;
    preferredContentSize = retstr->var0;
    v19 = *&retstr->var1;
  }

  else
  {
    v21 = *&self->_topVCInfo.minimumNavigationHeight;
    var0 = self->_topVCInfo.preferredContentSize;
    v26 = v21;
    preferredContentSize = self->_topVCInfo.preferredContentSize;
    v19 = *&self->_topVCInfo.minimumNavigationHeight;
  }

  v24[0] = preferredContentSize;
  v24[1] = v19;
  [(PKCompactNavigationContainerController *)self _navigationControllerSizeForChildViewControllerInfo:&var0 withCurrentInfo:v24];
  retstr->var1 = v22;

  return result;
}

- (CGSize)_navigationControllerSizeForChildViewControllerInfo:(id *)info withCurrentInfo:(id *)currentInfo
{
  view = [(PKCompactNavigationContainerController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [view safeAreaInsets];
  v15 = v14;
  v17 = v16;
  v18 = 0.0;
  v19 = 0.0;
  if (([(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController isNavigationBarHidden]& 1) == 0)
  {
    navigationBar = [(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController navigationBar];
    [navigationBar frame];
    v19 = v21;
  }

  centeredCard = self->_centeredCard;
  v23 = 60.0;
  if (v11 > v13)
  {
    v23 = 20.0;
  }

  if (!self->_centeredCard)
  {
    v18 = v23;
  }

  style = self->_style;
  height = info->var0.height;
  [(PKCompactNavigationContainerController *)self modalPresentationSize];
  if (height == v26)
  {
    if (self->_centeredCard || !info->var2)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (self->_centeredCard)
  {
    height = v19 + height;
  }

  else
  {
    height = v17 + v19 + height;
  }

  if (!info->var2)
  {
    height = fmax(currentInfo->var1, height);
  }

  if (!self->_centeredCard)
  {
    v18 = fmax(v18, fmax(self->_statusBarFrame.size.height, v15));
    if (info->var2)
    {
LABEL_18:
      if (!CGRectIsNull(self->_exclusionRect) && self->_exclusionCoordinateSpace)
      {
        [view convertRect:self->_exclusionRect.origin.x fromCoordinateSpace:{self->_exclusionRect.origin.y, self->_exclusionRect.size.width, self->_exclusionRect.size.height}];
        v18 = fmax(v18, CGRectGetMaxY(v33) - v9);
      }
    }
  }

LABEL_21:
  v27 = 146.0;
  if (v11 <= v13)
  {
    v27 = 0.0;
  }

  if (centeredCard)
  {
    v27 = 0.0;
  }

  if (style == 1)
  {
    v27 = 12.0;
  }

  v28 = fmin(fmax(v11 + v27 * -2.0, 0.0), self->_maximumModalPresentationFrame.size.width);
  v29 = fmin(fmax(fmin(v13 - v18, height), v19), self->_maximumModalPresentationFrame.size.height);

  v30 = v28;
  v31 = v29;
  result.height = v31;
  result.width = v30;
  return result;
}

- (void)contentContainer:(id)container preferredContentSizeDidChangeForChildContentContainer:(id)contentContainer
{
  containerCopy = container;
  contentContainerCopy = contentContainer;
  if (self->_containedNavigationController == containerCopy && self->_topVC == contentContainerCopy)
  {
    [(PKCompactNavigationContainerController *)self updateChildViewControllerSizeAnimated:1];
  }
}

- (void)observedView:(id)view didMoveToWindow:(id)window
{
  if (self->_didMoveToWindowDirtiesLayout)
  {
    v5 = [(PKCompactNavigationContainerController *)self view:view];
    [v5 setNeedsLayout];
  }

  [(PKCompactNavigationContainerController *)self _updateStatusBarFrame];
}

- (void)_updateStatusBarFrame
{
  if (!self->_centeredCard)
  {
    viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
    if (viewIfLoaded)
    {
      v14 = viewIfLoaded;
      window = [viewIfLoaded window];
      windowScene = [window windowScene];

      p_statusBarFrame = &self->_statusBarFrame;
      if (windowScene)
      {
        statusBarManager = [windowScene statusBarManager];
        [statusBarManager statusBarFrame];
        p_statusBarFrame->origin.x = v9;
        p_statusBarFrame->origin.y = v10;
        p_statusBarFrame->size.width = v11;
        p_statusBarFrame->size.height = v12;
      }

      else
      {
        v13 = *(MEMORY[0x1E695F058] + 16);
        p_statusBarFrame->origin = *MEMORY[0x1E695F058];
        self->_statusBarFrame.size = v13;
      }

      [v14 setNeedsLayout];

      viewIfLoaded = v14;
    }
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  transitionCoordinator = [(PKCompactNavigationContainerController *)self transitionCoordinator];
  v11 = transitionCoordinator;
  if (transitionCoordinator)
  {
    transitionCoordinator2 = transitionCoordinator;
  }

  else
  {
    transitionCoordinator2 = [viewControllerCopy transitionCoordinator];
  }

  v13 = transitionCoordinator2;

  v14 = [v13 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v15 = v14;
  if (v13 && v14)
  {
    [(PKCompactNavigationContainerController *)self _updateTopViewControllerAsync:viewControllerCopy animated:animatedCopy];
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__PKCompactNavigationContainerController_navigationController_willShowViewController_animated___block_invoke;
    v19[3] = &unk_1E801FD28;
    objc_copyWeak(&v21, &location);
    v20 = v15;
    [v13 notifyWhenInteractionChangesUsingBlock:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    interactivePopGestureRecognizer = [(PKCompactNavigationContainedNavigationController *)self->_containedNavigationController interactivePopGestureRecognizer];
    state = [interactivePopGestureRecognizer state];

    if (state <= 5 && ((1 << state) & 0x31) != 0)
    {
      [(PKCompactNavigationContainerController *)self _updateTopViewControllerAsync:viewControllerCopy animated:animatedCopy];
    }
  }
}

void __95__PKCompactNavigationContainerController_navigationController_willShowViewController_animated___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && [v4 isCancelled])
  {
    [WeakRetained _updateTopViewControllerAsync:*(a1 + 32) animated:{objc_msgSend(v4, "isAnimated")}];
  }
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  if (controller == self)
  {
    viewControllerCopy = viewController;
    controllerCopy = controller;
    v5 = [[PKCompactNavigationContainerControllerPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [[PKCompactNavigationContainerControllerPresentationAnimator alloc] initWithPresenting:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [[PKCompactNavigationContainerControllerPresentationAnimator alloc] initWithPresenting:0];

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (!self->_presentingNavigationController)
  {
    return 0;
  }

  presentedViewController = [(PKCompactNavigationContainedNavigationWrapperViewController *)self->_presentationContextVC presentedViewController];
  v4 = presentedViewController == 0;

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [(PKCompactNavigationContainerController *)self view];
  [touchCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  [(UIView *)view bounds];
  v22.x = v8;
  v22.y = v10;
  if (CGRectContainsPoint(v24, v22) && (-[PKCompactNavigationContainedNavigationController view](self->_containedNavigationController, "view"), v11 = objc_claimAutoreleasedReturnValue(), [v11 bounds], -[UIView convertRect:fromView:](view, "convertRect:fromView:", v11, v12 + -44.0, v13 + -44.0, v14 + 88.0, v15 + 88.0), v23.x = v8, v23.y = v10, v16 = CGRectContainsPoint(v25, v23), v11, !v16))
  {
    v18 = [(UIView *)view hitTest:0 withEvent:v8, v10];
    v19 = v18;
    if (v18)
    {
      if (v18 == view || v18 == self->_maskingContainerView)
      {
        v17 = 1;
      }

      else
      {
        view2 = [(PKCompactNavigationContainedNavigationWrapperViewController *)self->_presentationContextVC view];
        v17 = v19 == view2;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)tapGestureRecognized:(id)recognized
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained compactNavigationContainerControllerReceivedExternalTap:self];
  }
}

- (void)_updateForKeyboardIfNecessary
{
  if (self->_centeredCard)
  {
    viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKCompactNavigationContainerController_keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKCompactNavigationContainerController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __59__PKCompactNavigationContainerController_keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1192);
  v4 = *(v2 + 1200);
  v5 = *(v2 + 1208);
  v6 = *(v2 + 1216);
  *(v2 + 1185) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1192);
  if (v7)
  {
    [v7 CGRectValue];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
  }

  else
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    *v9 = *MEMORY[0x1E695F050];
    *(v8 + 1208) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1192), v16);
}

- (void)keyboardWillChange:(id)change
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    userInfo = [change userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__PKCompactNavigationContainerController_keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKCompactNavigationContainerController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __61__PKCompactNavigationContainerController_keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 149;
  v4 = *(v2 + 149);
  v5 = *(v2 + 150);
  v6 = *(v2 + 151);
  v7 = *(v2 + 152);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1192), v13);
}

- (void)keyboardWillHide:(id)hide
{
  if (self->_keyboardVisible)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__PKCompactNavigationContainerController_keyboardWillHide___block_invoke;
    v5[3] = &unk_1E8010EB8;
    v5[4] = self;
    [(PKCompactNavigationContainerController *)self _updateLayoutForKeyboardAction:v5];
  }
}

BOOL __59__PKCompactNavigationContainerController_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1192);
  *(v1 + 1185) = 0;
  v2 = (*(a1 + 32) + 1192);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1192);
  v4 = *(*(a1 + 32) + 1200);
  v5 = *(*(a1 + 32) + 1208);
  v6 = *(*(a1 + 32) + 1216);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    viewIfLoaded = [(PKCompactNavigationContainerController *)self viewIfLoaded];
    v6 = viewIfLoaded;
    v7 = self->_visibility - 3;
    if (viewIfLoaded && v7 >= 0xFFFFFFFE)
    {
      [viewIfLoaded layoutIfNeeded];
    }

    v8 = actionCopy[2](actionCopy);
    if (v6 && v8)
    {
      [v6 setNeedsLayout];
      if (v7 >= 0xFFFFFFFE)
      {
        v9 = MEMORY[0x1E69DD250];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __73__PKCompactNavigationContainerController__updateLayoutForKeyboardAction___block_invoke;
        v10[3] = &unk_1E8010970;
        v11 = v6;
        [v9 _animateUsingDefaultTimingWithOptions:134 animations:v10 completion:0];
      }

      else
      {
        [v6 layoutIfNeeded];
      }
    }
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  if (self->_presentationContextVC)
  {
    presentationContextVC = self->_presentationContextVC;

    return [(PKWrapperViewController *)presentationContextVC preferredUserInterfaceStyle];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PKCompactNavigationContainerController;
    return [(PKCompactNavigationContainerController *)&v6 preferredUserInterfaceStyle];
  }
}

- (CGRect)exclusionRect
{
  x = self->_exclusionRect.origin.x;
  y = self->_exclusionRect.origin.y;
  width = self->_exclusionRect.size.width;
  height = self->_exclusionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PKCompactNavigationContainerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end