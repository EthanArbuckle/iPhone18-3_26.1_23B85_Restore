@interface SKUIScrollingTabNavigationController
- (BOOL)isShowingNavigationStackRootContent;
- (SKUINavigationStackObserver)navigationStackObserver;
- (SKUIScrollingTabNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_scrollViewBottomContentInsetForViewController:(id)controller;
- (void)_observedNavigationStackDidChange;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)popToNavigationStackRootContentAnimated:(BOOL)animated withBehavior:(int64_t)behavior;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)scrollingTabBarBottomInsetAdjustmentDidChange;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SKUIScrollingTabNavigationController

- (SKUIScrollingTabNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScrollingTabNavigationController initWithNibName:bundle:];
  }

  v10.receiver = self;
  v10.super_class = SKUIScrollingTabNavigationController;
  v8 = [(SUNavigationController *)&v10 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    [(SKUIScrollingTabNavigationController *)v8 setNavigationBarClass:objc_opt_class()];
  }

  return v8;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SKUIScrollingTabNavigationController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_2781F9B48;
  v9[4] = self;
  v10 = completionCopy;
  v8.receiver = self;
  v8.super_class = SKUIScrollingTabNavigationController;
  v7 = completionCopy;
  [(SKUIScrollingTabNavigationController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];
}

uint64_t __81__SKUIScrollingTabNavigationController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _observedNavigationStackDidChange];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = SKUIScrollingTabNavigationController;
  [(SKUIScrollingTabNavigationController *)&v6 presentViewController:controller animated:animated completion:completion];
  [(SKUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKUIScrollingTabNavigationController;
  [(SKUIScrollingTabNavigationController *)&v4 viewDidAppear:appear];
  [(SKUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SKUIScrollingTabNavigationController;
  [(SKUINavigationController *)&v5 didShowViewController:controller animated:animated];
  [(SKUIScrollingTabNavigationController *)self _observedNavigationStackDidChange];
}

- (double)_scrollViewBottomContentInsetForViewController:(id)controller
{
  controllerCopy = controller;
  scrollingTabBarController = [(UIViewController *)self scrollingTabBarController];
  v6 = scrollingTabBarController;
  if (scrollingTabBarController)
  {
    [scrollingTabBarController contentViewControllerBottomInsetAdjustment];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SKUIScrollingTabNavigationController;
    [(SKUIScrollingTabNavigationController *)&v10 _scrollViewBottomContentInsetForViewController:controllerCopy];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isShowingNavigationStackRootContent
{
  viewControllers = [(SKUIScrollingTabNavigationController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4 > 1)
  {
    return 0;
  }

  presentedViewController = [(SKUIScrollingTabNavigationController *)self presentedViewController];
  v6 = presentedViewController == 0;

  return v6;
}

- (void)popToNavigationStackRootContentAnimated:(BOOL)animated withBehavior:(int64_t)behavior
{
  animatedCopy = animated;
  presentedViewController = [(SKUIScrollingTabNavigationController *)self presentedViewController];
  v8 = presentedViewController;
  if (!presentedViewController)
  {
    selfCopy3 = self;
    v11 = animatedCopy;
    goto LABEL_13;
  }

  if (behavior == 1)
  {
    if (animatedCopy)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __93__SKUIScrollingTabNavigationController_popToNavigationStackRootContentAnimated_withBehavior___block_invoke;
      v16[3] = &unk_2781F80F0;
      v16[4] = self;
      v12 = v16;
      selfCopy4 = self;
      v14 = 1;
LABEL_11:
      [(SKUIScrollingTabNavigationController *)selfCopy4 dismissViewControllerAnimated:v14 completion:v12];
      goto LABEL_14;
    }

    [(SKUIScrollingTabNavigationController *)self dismissViewControllerAnimated:0 completion:0];
    selfCopy3 = self;
    v11 = 0;
LABEL_13:
    v15 = [(SKUINavigationController *)selfCopy3 popToRootViewControllerAnimated:v11];
    goto LABEL_14;
  }

  if (behavior)
  {
    goto LABEL_14;
  }

  if (![presentedViewController conformsToProtocol:&unk_282993DA8])
  {
    selfCopy4 = self;
    v14 = animatedCopy;
    v12 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  if ([v9 isShowingNavigationStackRootContent])
  {
    [(SKUIScrollingTabNavigationController *)self dismissViewControllerAnimated:animatedCopy completion:0];
  }

  else
  {
    [v9 popToNavigationStackRootContentAnimated:animatedCopy withBehavior:0];
  }

LABEL_14:
}

- (void)scrollingTabBarBottomInsetAdjustmentDidChange
{
  if (objc_opt_respondsToSelector())
  {
    topViewController = [(SKUIScrollingTabNavigationController *)self topViewController];
    [(SKUIScrollingTabNavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:topViewController];
  }

  if ([(SKUIScrollingTabNavigationController *)self isViewLoaded])
  {
    view = [(SKUIScrollingTabNavigationController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_observedNavigationStackDidChange
{
  navigationStackObserver = [(SKUIScrollingTabNavigationController *)self navigationStackObserver];
  [navigationStackObserver observedNavigationStackDidChange:self];
}

- (SKUINavigationStackObserver)navigationStackObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationStackObserver);

  return WeakRetained;
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingTabNavigationController initWithNibName:bundle:]";
}

@end