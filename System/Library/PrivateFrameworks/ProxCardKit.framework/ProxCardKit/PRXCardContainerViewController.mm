@interface PRXCardContainerViewController
- (BOOL)_canShowWhileLocked;
- (BOOL)_shouldLayoutViewControllerBeforeCalculatingSize:(id)size;
- (CGSize)_maximumCardSizeForContainerSize:(CGSize)size;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (PRXCardContainerViewController)init;
- (PRXCardContainerViewController)initWithCoder:(id)coder;
- (PRXCardContainerViewController)initWithConfiguration:(id)configuration;
- (PRXFlowDelegate)flowDelegate;
- (id)initAsSingleCardWithContentViewController:(id)controller containerLayoutMargins:(NSDirectionalEdgeInsets)margins configuration:(id)configuration;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (int64_t)_cardStyleForContentContainer:(id)container;
- (void)_commonInit;
- (void)_updateCardSizeClassForContainerSize:(CGSize)size;
- (void)_updateContainerPreferredContentSize;
- (void)_updatePreferredContentSizeForViewController:(id)controller containerSize:(CGSize)size;
- (void)backgroundTapped:(id)tapped;
- (void)loadView;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PRXCardContainerViewController

- (id)initAsSingleCardWithContentViewController:(id)controller containerLayoutMargins:(NSDirectionalEdgeInsets)margins configuration:(id)configuration
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  controllerCopy = controller;
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = PRXCardContainerViewController;
  v14 = [(PRXCardContainerViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, configuration);
    objc_storeStrong(&v15->_contentViewController, controller);
    v15->_containerLayoutMargins.top = top;
    v15->_containerLayoutMargins.leading = leading;
    v15->_containerLayoutMargins.bottom = bottom;
    v15->_containerLayoutMargins.trailing = trailing;
    v15->_legacyCard = 1;
    [(PRXCardContainerViewController *)v15 _commonInit];
  }

  return v15;
}

- (PRXCardContainerViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = PRXCardContainerViewController;
  v6 = [(PRXCardContainerViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = objc_alloc_init(PRXNavigationController);
    mainNavigationController = v7->_mainNavigationController;
    v7->_mainNavigationController = &v8->super;

    [(UINavigationController *)v7->_mainNavigationController setDelegate:v7];
    [(UINavigationController *)v7->_mainNavigationController setNavigationBarHidden:1];
    objc_storeStrong(&v7->_contentViewController, v7->_mainNavigationController);
    v7->_containerLayoutMargins.top = PRXCardContainerDefaultLayoutMargins();
    v7->_containerLayoutMargins.leading = v10;
    v7->_containerLayoutMargins.bottom = v11;
    v7->_containerLayoutMargins.trailing = v12;
    v7->_legacyCard = 0;
    [(PRXCardContainerViewController *)v7 _commonInit];
  }

  return v7;
}

- (PRXCardContainerViewController)init
{
  v3 = +[PRXFlowConfiguration defaultConfiguration];
  v4 = [(PRXCardContainerViewController *)self initWithConfiguration:v3];

  return v4;
}

- (PRXCardContainerViewController)initWithCoder:(id)coder
{
  v4 = +[PRXFlowConfiguration defaultConfiguration];
  v5 = [(PRXCardContainerViewController *)self initWithConfiguration:v4];

  return v5;
}

- (void)_commonInit
{
  [(PRXCardContainerViewController *)self setModalPresentationStyle:4];
  v3 = [[PRXTransitioningController alloc] initWithPullDismissalProvider:self];
  transitionController = self->_transitionController;
  self->_transitionController = v3;

  [(PRXCardContainerViewController *)self setTransitioningDelegate:self->_transitionController];
  configuration = [(PRXCardContainerViewController *)self configuration];
  supportsDarkMode = [configuration supportsDarkMode];

  if ((supportsDarkMode & 1) == 0)
  {
    [(PRXCardContainerViewController *)self setOverrideUserInterfaceStyle:1];
  }

  configuration2 = [(PRXCardContainerViewController *)self configuration];
  overrideInterfaceStyle = [configuration2 overrideInterfaceStyle];

  if (overrideInterfaceStyle)
  {
    configuration3 = [(PRXCardContainerViewController *)self configuration];
    -[PRXCardContainerViewController setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [configuration3 overrideInterfaceStyle]);
  }
}

- (void)loadView
{
  v3 = [PRXCardContainerView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [PRXCardContainerView initWithFrame:v3 containerLayoutMargins:"initWithFrame:containerLayoutMargins:"];
  container = self->_container;
  self->_container = v5;

  [(PRXCardContainerView *)self->_container setAutoresizingMask:18];
  [(PRXCardContainerView *)self->_container setDelegate:self];
  configuration = [(PRXCardContainerViewController *)self configuration];
  LOBYTE(mainScreen) = [configuration supportsDarkMode];

  if ((mainScreen & 1) == 0)
  {
    [(PRXCardContainerView *)self->_container setAccessibilityIgnoresInvertColors:1];
  }

  v8 = self->_container;

  [(PRXCardContainerViewController *)self setView:v8];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PRXCardContainerViewController;
  [(PRXCardContainerViewController *)&v11 viewDidLoad];
  [(PRXCardContainerViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  v3 = [PRXPullDismissalInteractionDriver alloc];
  pullDismissalScrollView = [(PRXCardContainerView *)self->_container pullDismissalScrollView];
  v5 = [(PRXPullDismissalInteractionDriver *)v3 initWithPresentedViewController:self scrollView:pullDismissalScrollView];
  pullDismissalInteractionDriver = self->_pullDismissalInteractionDriver;
  self->_pullDismissalInteractionDriver = v5;

  [(PRXCardContainerViewController *)self addChildViewController:self->_contentViewController];
  view = [(UIViewController *)self->_contentViewController view];
  contentContainerView = [(PRXCardContainerView *)self->_container contentContainerView];
  [contentContainerView bounds];
  [view setFrame:?];
  [contentContainerView addSubview:view];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  [(PRXCardContainerView *)self->_container bounds];
  [(PRXCardContainerViewController *)self _updateCardSizeClassForContainerSize:v9, v10];
}

- (void)viewDidLayoutSubviews
{
  v26.receiver = self;
  v26.super_class = PRXCardContainerViewController;
  [(PRXCardContainerViewController *)&v26 viewDidLayoutSubviews];
  if (self->_legacyCard)
  {
    view = [(UIViewController *)self->_contentViewController view];
    [view frame];
    v5 = v4;
    v7 = v6;

    contentViewController = self->_contentViewController;
    view2 = [(PRXCardContainerViewController *)self view];
    [view2 bounds];
    [(PRXCardContainerViewController *)self sizeForChildContentContainer:contentViewController withParentContainerSize:v10, v11];
    v13 = v12;
    v15 = v14;

    view3 = [(UIViewController *)self->_contentViewController view];
    [view3 setFrame:{v5, v7, v13, v15}];
  }

  else
  {
    view3 = [(PRXCardContainerView *)self->_container contentContainerView];
    [view3 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    view4 = [(UIViewController *)self->_contentViewController view];
    [view4 setFrame:{v18, v20, v22, v24}];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  topViewController = [(UINavigationController *)self->_mainNavigationController topViewController];
  contentViewController = topViewController;
  if (!topViewController)
  {
    contentViewController = self->_contentViewController;
  }

  [(PRXCardContainerView *)self->_container bounds];
  [(PRXCardContainerViewController *)self _updatePreferredContentSizeForViewController:contentViewController containerSize:v7, v8];

  view = [(UIViewController *)self->_contentViewController view];
  [view frame];
  v11 = v10;
  v13 = v12;

  v14 = self->_contentViewController;
  view2 = [(PRXCardContainerViewController *)self view];
  [view2 bounds];
  [(PRXCardContainerViewController *)self sizeForChildContentContainer:v14 withParentContainerSize:v16, v17];
  v19 = v18;
  v21 = v20;

  view3 = [(UIViewController *)self->_contentViewController view];
  [view3 setFrame:{v11, v13, v19, v21}];

  [(PRXCardContainerViewController *)self _updateContainerPreferredContentSize];
  v25.receiver = self;
  v25.super_class = PRXCardContainerViewController;
  [(PRXCardContainerViewController *)&v25 viewWillAppear:appearCopy];
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  LOBYTE(view3) = objc_opt_respondsToSelector();

  if (view3)
  {
    v24 = objc_loadWeakRetained(&self->_flowDelegate);
    [v24 proxCardFlowWillPresent];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PRXCardContainerViewController;
  [(PRXCardContainerViewController *)&v7 viewDidDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_flowDelegate);
    [v6 proxCardFlowDidDismiss];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(PRXCardContainerViewController *)self _updateCardSizeClassForContainerSize:width, height];
  topViewController = [(UINavigationController *)self->_mainNavigationController topViewController];
  contentViewController = topViewController;
  if (!topViewController)
  {
    contentViewController = self->_contentViewController;
  }

  [(PRXCardContainerViewController *)self _updatePreferredContentSizeForViewController:contentViewController containerSize:width, height];

  [(PRXCardContainerViewController *)self _updateContainerPreferredContentSize];
  v10.receiver = self;
  v10.super_class = PRXCardContainerViewController;
  [(PRXCardContainerViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  [(PRXCardContainerViewController *)self _maximumCardSizeForContainerSize:container, size.width, size.height];
  v6 = v5;
  v8 = v7;
  [(PRXCardContainerView *)self->_container preferredContentSize];
  if (v6 < v9)
  {
    v9 = v6;
  }

  if (v8 < v10)
  {
    v10 = v8;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_maximumCardSizeForContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_containerLayoutMargins = &self->_containerLayoutMargins;
  bottom = self->_containerLayoutMargins.bottom;
  trailing = self->_containerLayoutMargins.trailing;
  leading = self->_containerLayoutMargins.leading;
  v9 = PRXIsPad();
  if (height <= width || v9)
  {
    p_top = &p_containerLayoutMargins->top;
  }

  else
  {
    p_top = &PRXCardContainerTopLayoutMarginPortraitPhone;
  }

  v12 = width - (leading + trailing);
  v13 = height - bottom - *p_top;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v6.receiver = self;
  v6.super_class = PRXCardContainerViewController;
  containerCopy = container;
  [(PRXCardContainerViewController *)&v6 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  contentViewController = self->_contentViewController;

  if (contentViewController == containerCopy)
  {
    [(PRXCardContainerViewController *)self _updateContainerPreferredContentSize:v6.receiver];
  }
}

- (int64_t)_cardStyleForContentContainer:(id)container
{
  containerCopy = container;
  mainNavigationController = self->_mainNavigationController;
  topViewController = containerCopy;
  if (mainNavigationController == containerCopy)
  {
    topViewController = [(UINavigationController *)mainNavigationController topViewController];
  }

  if (objc_opt_respondsToSelector())
  {
    cardStyle = [topViewController cardStyle];
  }

  else
  {
    cardStyle = 0;
  }

  return cardStyle;
}

- (void)_updateCardSizeClassForContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D75C80] prx_traitCollectionWithCardSizeClass:{PRXCardPreferredSizeClassForContainerBounds(0.0, 0.0, size.width, size.height)}];
  configuration = [(PRXCardContainerViewController *)self configuration];
  customBackgroundColor = [configuration customBackgroundColor];

  if (customBackgroundColor)
  {
    v9 = MEMORY[0x277D75C80];
    configuration2 = [(PRXCardContainerViewController *)self configuration];
    customBackgroundColor2 = [configuration2 customBackgroundColor];
    v12 = [v9 prx_traitCollectionWithCustomBackgroundColor:customBackgroundColor2];

    v13 = MEMORY[0x277D75C80];
    v18[0] = v6;
    v18[1] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v15 = [v13 traitCollectionWithTraitsFromCollections:v14];
  }

  else
  {
    v15 = v6;
  }

  [(PRXCardContainerViewController *)self setOverrideTraitCollection:v15 forChildViewController:self->_contentViewController];
  v16 = !PRXIsPad();
  v17 = height > width && v16;
  [(PRXCardContainerView *)self->_container setUsePortraitTopInset:v17];
}

- (void)_updatePreferredContentSizeForViewController:(id)controller containerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(PRXCardContainerViewController *)self _cardStyleForContentContainer:controllerCopy];
    traitCollection = [(UIViewController *)self->_contentViewController traitCollection];
    v9 = PRXCardPreferredSize(v7, [traitCollection prx_cardSizeClass]);

    [(PRXCardContainerViewController *)self _maximumCardSizeForContainerSize:width, height];
    if (v9 < v10)
    {
      v10 = v9;
    }

    [controllerCopy updatePreferredContentSizeForCardWidth:v10];
  }
}

- (void)_updateContainerPreferredContentSize
{
  v3 = [(PRXCardContainerViewController *)self _cardStyleForContentContainer:self->_contentViewController];
  traitCollection = [(UIViewController *)self->_contentViewController traitCollection];
  v5 = PRXCardPreferredSize(v3, [traitCollection prx_cardSizeClass]);
  v7 = v6;

  [(UIViewController *)self->_contentViewController preferredContentSize];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  container = self->_container;

  [(PRXCardContainerView *)container setPreferredContentSize:v5, v8];
}

- (BOOL)_shouldLayoutViewControllerBeforeCalculatingSize:(id)size
{
  sizeCopy = size;
  view = [sizeCopy view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view2 = [sizeCopy view];
    scrollView = [view2 scrollView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }

    else
    {
      scrollView2 = [view2 scrollView];
      objc_opt_class();
      v8 = objc_opt_isKindOfClass();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)_canShowWhileLocked
{
  topViewController = [(UINavigationController *)self->_mainNavigationController topViewController];
  _canShowWhileLocked = [topViewController _canShowWhileLocked];

  return _canShowWhileLocked;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  toViewControllerCopy = toViewController;
  v8 = objc_alloc_init(PRXCrossDissolveTransition);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __123__PRXCardContainerViewController_navigationController_animationControllerForOperation_fromViewController_toViewController___block_invoke;
  v14[3] = &unk_279ACC188;
  v14[4] = self;
  [(PRXCrossDissolveTransition *)v8 setAdditionalAnimations:v14];
  view = [(PRXCardContainerViewController *)self view];
  [view bounds];
  [(PRXCardContainerViewController *)self _maximumCardSizeForContainerSize:v10, v11];
  [(PRXCrossDissolveTransition *)v8 setMaxSize:?];

  v12 = [(PRXCardContainerViewController *)self _cardStyleForContentContainer:toViewControllerCopy];
  [(PRXCrossDissolveTransition *)v8 setCardStyle:v12];

  return v8;
}

void __123__PRXCardContainerViewController_navigationController_animationControllerForOperation_fromViewController_toViewController___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setDefersKeyboardUpdates:0];
  v2 = [*(*(a1 + 32) + 1000) contentContainerView];
  v3 = [v2 superview];
  [v3 layoutIfNeeded];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (objc_opt_respondsToSelector())
  {
    allowsPullToDismiss = [viewControllerCopy allowsPullToDismiss];
  }

  else
  {
    allowsPullToDismiss = 0;
  }

  pullDismissalScrollView = [(PRXCardContainerView *)self->_container pullDismissalScrollView];
  [pullDismissalScrollView setAllowsPullToDismiss:allowsPullToDismiss];

  if (([(PRXCardContainerViewController *)self isBeingPresented]& 1) == 0)
  {
    [(PRXCardContainerView *)self->_container bounds];
    [(PRXCardContainerViewController *)self _updatePreferredContentSizeForViewController:viewControllerCopy containerSize:v11, v12];
    [viewControllerCopy preferredContentSize];
    [controllerCopy setPreferredContentSize:?];
  }

  if (animatedCopy)
  {
    [(PRXCardContainerView *)self->_container setDefersKeyboardUpdates:1];
    view = [(PRXCardContainerViewController *)self view];
    [view setNeedsLayout];
  }

  else
  {
    view2 = [controllerCopy view];
    [view2 frame];
    v16 = v15;
    v18 = v17;

    view3 = [(PRXCardContainerViewController *)self view];
    [view3 bounds];
    [(PRXCardContainerViewController *)self sizeForChildContentContainer:controllerCopy withParentContainerSize:v20, v21];
    v23 = v22;
    v25 = v24;

    view = [controllerCopy view];
    [view setFrame:{v16, v18, v23, v25}];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  didShowViewController = [(PRXCardContainerViewController *)self didShowViewController];

  if (didShowViewController)
  {
    didShowViewController2 = [(PRXCardContainerViewController *)self didShowViewController];
    (didShowViewController2)[2](didShowViewController2, viewControllerCopy);
  }
}

- (void)backgroundTapped:(id)tapped
{
  presentingViewController = [(PRXCardContainerViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (PRXFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end