@interface PRXCardContainerViewController
- (BOOL)_canShowWhileLocked;
- (BOOL)_shouldLayoutViewControllerBeforeCalculatingSize:(id)a3;
- (CGSize)_maximumCardSizeForContainerSize:(CGSize)a3;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (PRXCardContainerViewController)init;
- (PRXCardContainerViewController)initWithCoder:(id)a3;
- (PRXCardContainerViewController)initWithConfiguration:(id)a3;
- (PRXFlowDelegate)flowDelegate;
- (id)initAsSingleCardWithContentViewController:(id)a3 containerLayoutMargins:(NSDirectionalEdgeInsets)a4 configuration:(id)a5;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (int64_t)_cardStyleForContentContainer:(id)a3;
- (void)_commonInit;
- (void)_updateCardSizeClassForContainerSize:(CGSize)a3;
- (void)_updateContainerPreferredContentSize;
- (void)_updatePreferredContentSizeForViewController:(id)a3 containerSize:(CGSize)a4;
- (void)backgroundTapped:(id)a3;
- (void)loadView;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PRXCardContainerViewController

- (id)initAsSingleCardWithContentViewController:(id)a3 containerLayoutMargins:(NSDirectionalEdgeInsets)a4 configuration:(id)a5
{
  trailing = a4.trailing;
  bottom = a4.bottom;
  leading = a4.leading;
  top = a4.top;
  v12 = a3;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PRXCardContainerViewController;
  v14 = [(PRXCardContainerViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, a5);
    objc_storeStrong(&v15->_contentViewController, a3);
    v15->_containerLayoutMargins.top = top;
    v15->_containerLayoutMargins.leading = leading;
    v15->_containerLayoutMargins.bottom = bottom;
    v15->_containerLayoutMargins.trailing = trailing;
    v15->_legacyCard = 1;
    [(PRXCardContainerViewController *)v15 _commonInit];
  }

  return v15;
}

- (PRXCardContainerViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PRXCardContainerViewController;
  v6 = [(PRXCardContainerViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
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

- (PRXCardContainerViewController)initWithCoder:(id)a3
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
  v5 = [(PRXCardContainerViewController *)self configuration];
  v6 = [v5 supportsDarkMode];

  if ((v6 & 1) == 0)
  {
    [(PRXCardContainerViewController *)self setOverrideUserInterfaceStyle:1];
  }

  v7 = [(PRXCardContainerViewController *)self configuration];
  v8 = [v7 overrideInterfaceStyle];

  if (v8)
  {
    v9 = [(PRXCardContainerViewController *)self configuration];
    -[PRXCardContainerViewController setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v9 overrideInterfaceStyle]);
  }
}

- (void)loadView
{
  v3 = [PRXCardContainerView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = [PRXCardContainerView initWithFrame:v3 containerLayoutMargins:"initWithFrame:containerLayoutMargins:"];
  container = self->_container;
  self->_container = v5;

  [(PRXCardContainerView *)self->_container setAutoresizingMask:18];
  [(PRXCardContainerView *)self->_container setDelegate:self];
  v7 = [(PRXCardContainerViewController *)self configuration];
  LOBYTE(v4) = [v7 supportsDarkMode];

  if ((v4 & 1) == 0)
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
  v4 = [(PRXCardContainerView *)self->_container pullDismissalScrollView];
  v5 = [(PRXPullDismissalInteractionDriver *)v3 initWithPresentedViewController:self scrollView:v4];
  pullDismissalInteractionDriver = self->_pullDismissalInteractionDriver;
  self->_pullDismissalInteractionDriver = v5;

  [(PRXCardContainerViewController *)self addChildViewController:self->_contentViewController];
  v7 = [(UIViewController *)self->_contentViewController view];
  v8 = [(PRXCardContainerView *)self->_container contentContainerView];
  [v8 bounds];
  [v7 setFrame:?];
  [v8 addSubview:v7];
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
    v3 = [(UIViewController *)self->_contentViewController view];
    [v3 frame];
    v5 = v4;
    v7 = v6;

    contentViewController = self->_contentViewController;
    v9 = [(PRXCardContainerViewController *)self view];
    [v9 bounds];
    [(PRXCardContainerViewController *)self sizeForChildContentContainer:contentViewController withParentContainerSize:v10, v11];
    v13 = v12;
    v15 = v14;

    v16 = [(UIViewController *)self->_contentViewController view];
    [v16 setFrame:{v5, v7, v13, v15}];
  }

  else
  {
    v16 = [(PRXCardContainerView *)self->_container contentContainerView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(UIViewController *)self->_contentViewController view];
    [v25 setFrame:{v18, v20, v22, v24}];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(UINavigationController *)self->_mainNavigationController topViewController];
  contentViewController = v5;
  if (!v5)
  {
    contentViewController = self->_contentViewController;
  }

  [(PRXCardContainerView *)self->_container bounds];
  [(PRXCardContainerViewController *)self _updatePreferredContentSizeForViewController:contentViewController containerSize:v7, v8];

  v9 = [(UIViewController *)self->_contentViewController view];
  [v9 frame];
  v11 = v10;
  v13 = v12;

  v14 = self->_contentViewController;
  v15 = [(PRXCardContainerViewController *)self view];
  [v15 bounds];
  [(PRXCardContainerViewController *)self sizeForChildContentContainer:v14 withParentContainerSize:v16, v17];
  v19 = v18;
  v21 = v20;

  v22 = [(UIViewController *)self->_contentViewController view];
  [v22 setFrame:{v11, v13, v19, v21}];

  [(PRXCardContainerViewController *)self _updateContainerPreferredContentSize];
  v25.receiver = self;
  v25.super_class = PRXCardContainerViewController;
  [(PRXCardContainerViewController *)&v25 viewWillAppear:v3];
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  LOBYTE(v22) = objc_opt_respondsToSelector();

  if (v22)
  {
    v24 = objc_loadWeakRetained(&self->_flowDelegate);
    [v24 proxCardFlowWillPresent];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PRXCardContainerViewController;
  [(PRXCardContainerViewController *)&v7 viewDidDisappear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_flowDelegate);
    [v6 proxCardFlowDidDismiss];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(PRXCardContainerViewController *)self _updateCardSizeClassForContainerSize:width, height];
  v8 = [(UINavigationController *)self->_mainNavigationController topViewController];
  contentViewController = v8;
  if (!v8)
  {
    contentViewController = self->_contentViewController;
  }

  [(PRXCardContainerViewController *)self _updatePreferredContentSizeForViewController:contentViewController containerSize:width, height];

  [(PRXCardContainerViewController *)self _updateContainerPreferredContentSize];
  v10.receiver = self;
  v10.super_class = PRXCardContainerViewController;
  [(PRXCardContainerViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  [(PRXCardContainerViewController *)self _maximumCardSizeForContainerSize:a3, a4.width, a4.height];
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

- (CGSize)_maximumCardSizeForContainerSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v6.receiver = self;
  v6.super_class = PRXCardContainerViewController;
  v4 = a3;
  [(PRXCardContainerViewController *)&v6 preferredContentSizeDidChangeForChildContentContainer:v4];
  contentViewController = self->_contentViewController;

  if (contentViewController == v4)
  {
    [(PRXCardContainerViewController *)self _updateContainerPreferredContentSize:v6.receiver];
  }
}

- (int64_t)_cardStyleForContentContainer:(id)a3
{
  v4 = a3;
  mainNavigationController = self->_mainNavigationController;
  v6 = v4;
  if (mainNavigationController == v4)
  {
    v6 = [(UINavigationController *)mainNavigationController topViewController];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 cardStyle];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateCardSizeClassForContainerSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D75C80] prx_traitCollectionWithCardSizeClass:{PRXCardPreferredSizeClassForContainerBounds(0.0, 0.0, a3.width, a3.height)}];
  v7 = [(PRXCardContainerViewController *)self configuration];
  v8 = [v7 customBackgroundColor];

  if (v8)
  {
    v9 = MEMORY[0x277D75C80];
    v10 = [(PRXCardContainerViewController *)self configuration];
    v11 = [v10 customBackgroundColor];
    v12 = [v9 prx_traitCollectionWithCustomBackgroundColor:v11];

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

- (void)_updatePreferredContentSizeForViewController:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(PRXCardContainerViewController *)self _cardStyleForContentContainer:v11];
    v8 = [(UIViewController *)self->_contentViewController traitCollection];
    v9 = PRXCardPreferredSize(v7, [v8 prx_cardSizeClass]);

    [(PRXCardContainerViewController *)self _maximumCardSizeForContainerSize:width, height];
    if (v9 < v10)
    {
      v10 = v9;
    }

    [v11 updatePreferredContentSizeForCardWidth:v10];
  }
}

- (void)_updateContainerPreferredContentSize
{
  v3 = [(PRXCardContainerViewController *)self _cardStyleForContentContainer:self->_contentViewController];
  v4 = [(UIViewController *)self->_contentViewController traitCollection];
  v5 = PRXCardPreferredSize(v3, [v4 prx_cardSizeClass]);
  v7 = v6;

  [(UIViewController *)self->_contentViewController preferredContentSize];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  container = self->_container;

  [(PRXCardContainerView *)container setPreferredContentSize:v5, v8];
}

- (BOOL)_shouldLayoutViewControllerBeforeCalculatingSize:(id)a3
{
  v3 = a3;
  v4 = [v3 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 view];
    v7 = [v6 scrollView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }

    else
    {
      v9 = [v6 scrollView];
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
  v2 = [(UINavigationController *)self->_mainNavigationController topViewController];
  v3 = [v2 _canShowWhileLocked];

  return v3;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v7 = a6;
  v8 = objc_alloc_init(PRXCrossDissolveTransition);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __123__PRXCardContainerViewController_navigationController_animationControllerForOperation_fromViewController_toViewController___block_invoke;
  v14[3] = &unk_279ACC188;
  v14[4] = self;
  [(PRXCrossDissolveTransition *)v8 setAdditionalAnimations:v14];
  v9 = [(PRXCardContainerViewController *)self view];
  [v9 bounds];
  [(PRXCardContainerViewController *)self _maximumCardSizeForContainerSize:v10, v11];
  [(PRXCrossDissolveTransition *)v8 setMaxSize:?];

  v12 = [(PRXCardContainerViewController *)self _cardStyleForContentContainer:v7];
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

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v26 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 allowsPullToDismiss];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PRXCardContainerView *)self->_container pullDismissalScrollView];
  [v10 setAllowsPullToDismiss:v9];

  if (([(PRXCardContainerViewController *)self isBeingPresented]& 1) == 0)
  {
    [(PRXCardContainerView *)self->_container bounds];
    [(PRXCardContainerViewController *)self _updatePreferredContentSizeForViewController:v8 containerSize:v11, v12];
    [v8 preferredContentSize];
    [v26 setPreferredContentSize:?];
  }

  if (v5)
  {
    [(PRXCardContainerView *)self->_container setDefersKeyboardUpdates:1];
    v13 = [(PRXCardContainerViewController *)self view];
    [v13 setNeedsLayout];
  }

  else
  {
    v14 = [v26 view];
    [v14 frame];
    v16 = v15;
    v18 = v17;

    v19 = [(PRXCardContainerViewController *)self view];
    [v19 bounds];
    [(PRXCardContainerViewController *)self sizeForChildContentContainer:v26 withParentContainerSize:v20, v21];
    v23 = v22;
    v25 = v24;

    v13 = [v26 view];
    [v13 setFrame:{v16, v18, v23, v25}];
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a4;
  v6 = [(PRXCardContainerViewController *)self didShowViewController];

  if (v6)
  {
    v7 = [(PRXCardContainerViewController *)self didShowViewController];
    (v7)[2](v7, v8);
  }
}

- (void)backgroundTapped:(id)a3
{
  v3 = [(PRXCardContainerViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (PRXFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end