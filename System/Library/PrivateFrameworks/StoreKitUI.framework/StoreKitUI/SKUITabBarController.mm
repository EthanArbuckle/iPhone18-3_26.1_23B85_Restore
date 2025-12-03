@interface SKUITabBarController
- (BOOL)containsTransientViewControllerOnly;
- (SKUITabBarController)init;
- (id)moreNavigationController;
- (id)traitCollection;
- (void)_layoutFloatingOverlayView;
- (void)_setSelectedViewController:(id)controller;
- (void)init;
- (void)moreNavigationController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)setFloatingOverlayViewController:(id)controller animated:(BOOL)animated;
- (void)setTransientViewController:(id)controller animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUITabBarController

- (SKUITabBarController)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITabBarController init];
  }

  v7.receiver = self;
  v7.super_class = SKUITabBarController;
  v3 = [(SKUITabBarController *)&v7 init];
  v4 = v3;
  if (v3)
  {
    tabBar = [(SKUITabBarController *)v3 tabBar];
    [tabBar setSemanticContentAttribute:storeSemanticContentAttribute()];
  }

  return v4;
}

- (BOOL)containsTransientViewControllerOnly
{
  transientViewController = [(SKUITabBarController *)self transientViewController];
  if (transientViewController)
  {
    viewControllers = [(SKUITabBarController *)self viewControllers];
    if ([viewControllers count] == 1)
    {
      viewControllers2 = [(SKUITabBarController *)self viewControllers];
      firstObject = [viewControllers2 firstObject];
      v7 = firstObject == transientViewController;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setFloatingOverlayViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  v8 = controllerCopy;
  floatingOverlayViewController = self->_floatingOverlayViewController;
  if (floatingOverlayViewController != controllerCopy)
  {
    if (controllerCopy && floatingOverlayViewController)
    {
      objc_storeStrong(&self->_floatingOverlayViewController, controller);
      floatingOverlayView = self->_floatingOverlayView;
      view = [(UIViewController *)self->_floatingOverlayViewController view];
      [(SKUIFloatingOverlayView *)floatingOverlayView setContentView:view];

      [(SKUITabBarController *)self _layoutFloatingOverlayView];
    }

    else if (controllerCopy)
    {
      objc_storeStrong(&self->_floatingOverlayViewController, controller);
      v12 = objc_alloc_init(SKUIFloatingOverlayView);
      v13 = self->_floatingOverlayView;
      self->_floatingOverlayView = v12;

      [(SKUIFloatingOverlayView *)self->_floatingOverlayView setContentInset:6.0, 0.0, 6.0, 0.0];
      v14 = self->_floatingOverlayView;
      view2 = [(UIViewController *)self->_floatingOverlayViewController view];
      [(SKUIFloatingOverlayView *)v14 setContentView:view2];

      view3 = [(SKUITabBarController *)self view];
      [view3 addSubview:self->_floatingOverlayView];

      [(SKUITabBarController *)self _layoutFloatingOverlayView];
      if (animatedCopy)
      {
        [(SKUIFloatingOverlayView *)self->_floatingOverlayView setAlpha:0.0];
        v17 = self->_floatingOverlayView;
        systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
        v19 = [systemBackgroundColor colorWithAlphaComponent:0.8];
        [(SKUIFloatingOverlayView *)v17 setBackgroundColor:v19];

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __66__SKUITabBarController_setFloatingOverlayViewController_animated___block_invoke_3;
        v26[3] = &unk_2781F80F0;
        v26[4] = self;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __66__SKUITabBarController_setFloatingOverlayViewController_animated___block_invoke_4;
        v25[3] = &unk_2781F84A0;
        v25[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v26 animations:v25 completion:0.3];
      }
    }

    else
    {
      self->_floatingOverlayViewController = 0;

      v20 = self->_floatingOverlayView;
      v21 = self->_floatingOverlayView;
      self->_floatingOverlayView = 0;

      if (animatedCopy)
      {
        systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
        v23 = [systemBackgroundColor2 colorWithAlphaComponent:0.8];
        [(SKUIFloatingOverlayView *)v20 setBackgroundColor:v23];

        v24 = MEMORY[0x277D75D18];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __66__SKUITabBarController_setFloatingOverlayViewController_animated___block_invoke;
        v29[3] = &unk_2781F80F0;
        v30 = v20;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __66__SKUITabBarController_setFloatingOverlayViewController_animated___block_invoke_2;
        v27[3] = &unk_2781F84A0;
        v28 = v30;
        [v24 animateWithDuration:v29 animations:v27 completion:0.3];
      }

      else
      {
        [(SKUIFloatingOverlayView *)v20 removeFromSuperview];
      }
    }
  }
}

void __66__SKUITabBarController_setFloatingOverlayViewController_animated___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1272);
  v2 = [MEMORY[0x277D75348] clearColor];
  [v1 setBackgroundColor:v2];
}

- (id)moreNavigationController
{
  v8.receiver = self;
  v8.super_class = SKUITabBarController;
  moreNavigationController = [(SKUITabBarController *)&v8 moreNavigationController];
  [moreNavigationController setStoreKitDelegate:self];
  v4 = storeSemanticContentAttribute();
  view = [moreNavigationController view];
  [view setSemanticContentAttribute:v4];

  navigationBar = [moreNavigationController navigationBar];
  [navigationBar setSemanticContentAttribute:v4];

  return moreNavigationController;
}

- (void)_setSelectedViewController:(id)controller
{
  controllerCopy = controller;
  selectedViewController = [(SKUITabBarController *)self selectedViewController];
  v8.receiver = self;
  v8.super_class = SKUITabBarController;
  [(SKUITabBarController *)&v8 _setSelectedViewController:controllerCopy];

  selectedViewController2 = [(SKUITabBarController *)self selectedViewController];
  if (selectedViewController == selectedViewController2)
  {
    delegate = [(SKUITabBarController *)self delegate];
    if (![(SKUITabBarController *)self sizeTransitionInProgress]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate tabBarController:self didReselectViewController:selectedViewController2];
    }
  }
}

- (void)setTransientViewController:(id)controller animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = SKUITabBarController;
  [(SKUITabBarController *)&v4 setTransientViewController:controller animated:0];
}

- (void)viewDidLayoutSubviews
{
  if (self->_floatingOverlayView)
  {
    [(SKUITabBarController *)self _layoutFloatingOverlayView];
  }

  v3.receiver = self;
  v3.super_class = SKUITabBarController;
  [(SKUITabBarController *)&v3 viewDidLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(SKUITabBarController *)self setSizeTransitionInProgress:1];
  delegate = [(SKUITabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tabBarController:self willTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
  }

  v9.receiver = self;
  v9.super_class = SKUITabBarController;
  [(SKUITabBarController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(SKUITabBarController *)self setSizeTransitionInProgress:0];
}

- (id)traitCollection
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SKUITabBarController;
  traitCollection = [(SKUITabBarController *)&v12 traitCollection];
  view = [(SKUITabBarController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v15);
  v6 = SKUICompactThreshold();

  if (Width <= v6)
  {
    v10 = traitCollection;
  }

  else
  {
    v7 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:2];
    v8 = MEMORY[0x277D75C80];
    v13[0] = traitCollection;
    v13[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v10 = [v8 traitCollectionWithTraitsFromCollections:v9];
  }

  return v10;
}

- (void)moreNavigationController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  v6 = [(SKUITabBarController *)self delegate:controller];
  if (objc_opt_respondsToSelector())
  {
    selectedViewController = [(SKUITabBarController *)self selectedViewController];
    [v6 tabBarController:self didSelectViewController:selectedViewController];
  }
}

- (void)_layoutFloatingOverlayView
{
  view = [(SKUITabBarController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIFloatingOverlayView *)self->_floatingOverlayView sizeThatFits:320.0, 1.79769313e308];
  v12 = v11;
  v14 = v13;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  Width = CGRectGetWidth(v31);
  v16 = SKUITabBarControllerGetActiveNavigationController(self);
  navigationBar = [v16 navigationBar];
  v18 = navigationBar;
  if (navigationBar)
  {
    [navigationBar bounds];
    [v18 convertRect:view toView:?];
    v20 = v19;
    v22 = v21;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [v18 defaultSizeForOrientation:{objc_msgSend(mEMORY[0x277D75128], "statusBarOrientation")}];
    v25 = v24;
    v27 = v26;

    v32.origin.x = v20;
    v32.origin.y = v22;
    v32.size.width = v25;
    v32.size.height = v27;
    v28 = CGRectGetMaxY(v32) + 15.0;
  }

  else
  {
    v28 = 35.0;
  }

  [(SKUIFloatingOverlayView *)self->_floatingOverlayView setFrame:Width - v12 + -15.0, v28, v12, v14];
  [view bringSubviewToFront:self->_floatingOverlayView];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITabBarController init]";
}

@end