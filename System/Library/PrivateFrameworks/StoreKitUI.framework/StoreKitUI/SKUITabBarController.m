@interface SKUITabBarController
- (BOOL)containsTransientViewControllerOnly;
- (SKUITabBarController)init;
- (id)moreNavigationController;
- (id)traitCollection;
- (void)_layoutFloatingOverlayView;
- (void)_setSelectedViewController:(id)a3;
- (void)init;
- (void)moreNavigationController:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)setFloatingOverlayViewController:(id)a3 animated:(BOOL)a4;
- (void)setTransientViewController:(id)a3 animated:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
    v5 = [(SKUITabBarController *)v3 tabBar];
    [v5 setSemanticContentAttribute:storeSemanticContentAttribute()];
  }

  return v4;
}

- (BOOL)containsTransientViewControllerOnly
{
  v3 = [(SKUITabBarController *)self transientViewController];
  if (v3)
  {
    v4 = [(SKUITabBarController *)self viewControllers];
    if ([v4 count] == 1)
    {
      v5 = [(SKUITabBarController *)self viewControllers];
      v6 = [v5 firstObject];
      v7 = v6 == v3;
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

- (void)setFloatingOverlayViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = v7;
  floatingOverlayViewController = self->_floatingOverlayViewController;
  if (floatingOverlayViewController != v7)
  {
    if (v7 && floatingOverlayViewController)
    {
      objc_storeStrong(&self->_floatingOverlayViewController, a3);
      floatingOverlayView = self->_floatingOverlayView;
      v11 = [(UIViewController *)self->_floatingOverlayViewController view];
      [(SKUIFloatingOverlayView *)floatingOverlayView setContentView:v11];

      [(SKUITabBarController *)self _layoutFloatingOverlayView];
    }

    else if (v7)
    {
      objc_storeStrong(&self->_floatingOverlayViewController, a3);
      v12 = objc_alloc_init(SKUIFloatingOverlayView);
      v13 = self->_floatingOverlayView;
      self->_floatingOverlayView = v12;

      [(SKUIFloatingOverlayView *)self->_floatingOverlayView setContentInset:6.0, 0.0, 6.0, 0.0];
      v14 = self->_floatingOverlayView;
      v15 = [(UIViewController *)self->_floatingOverlayViewController view];
      [(SKUIFloatingOverlayView *)v14 setContentView:v15];

      v16 = [(SKUITabBarController *)self view];
      [v16 addSubview:self->_floatingOverlayView];

      [(SKUITabBarController *)self _layoutFloatingOverlayView];
      if (v4)
      {
        [(SKUIFloatingOverlayView *)self->_floatingOverlayView setAlpha:0.0];
        v17 = self->_floatingOverlayView;
        v18 = [MEMORY[0x277D75348] systemBackgroundColor];
        v19 = [v18 colorWithAlphaComponent:0.8];
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

      if (v4)
      {
        v22 = [MEMORY[0x277D75348] systemBackgroundColor];
        v23 = [v22 colorWithAlphaComponent:0.8];
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
  v3 = [(SKUITabBarController *)&v8 moreNavigationController];
  [v3 setStoreKitDelegate:self];
  v4 = storeSemanticContentAttribute();
  v5 = [v3 view];
  [v5 setSemanticContentAttribute:v4];

  v6 = [v3 navigationBar];
  [v6 setSemanticContentAttribute:v4];

  return v3;
}

- (void)_setSelectedViewController:(id)a3
{
  v4 = a3;
  v5 = [(SKUITabBarController *)self selectedViewController];
  v8.receiver = self;
  v8.super_class = SKUITabBarController;
  [(SKUITabBarController *)&v8 _setSelectedViewController:v4];

  v6 = [(SKUITabBarController *)self selectedViewController];
  if (v5 == v6)
  {
    v7 = [(SKUITabBarController *)self delegate];
    if (![(SKUITabBarController *)self sizeTransitionInProgress]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 tabBarController:self didReselectViewController:v6];
    }
  }
}

- (void)setTransientViewController:(id)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SKUITabBarController;
  [(SKUITabBarController *)&v4 setTransientViewController:a3 animated:0];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(SKUITabBarController *)self setSizeTransitionInProgress:1];
  v8 = [(SKUITabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 tabBarController:self willTransitionToSize:v7 withTransitionCoordinator:{width, height}];
  }

  v9.receiver = self;
  v9.super_class = SKUITabBarController;
  [(SKUITabBarController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(SKUITabBarController *)self setSizeTransitionInProgress:0];
}

- (id)traitCollection
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SKUITabBarController;
  v3 = [(SKUITabBarController *)&v12 traitCollection];
  v4 = [(SKUITabBarController *)self view];
  [v4 bounds];
  Width = CGRectGetWidth(v15);
  v6 = SKUICompactThreshold();

  if (Width <= v6)
  {
    v10 = v3;
  }

  else
  {
    v7 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:2];
    v8 = MEMORY[0x277D75C80];
    v13[0] = v3;
    v13[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v10 = [v8 traitCollectionWithTraitsFromCollections:v9];
  }

  return v10;
}

- (void)moreNavigationController:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  v6 = [(SKUITabBarController *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SKUITabBarController *)self selectedViewController];
    [v6 tabBarController:self didSelectViewController:v5];
  }
}

- (void)_layoutFloatingOverlayView
{
  v29 = [(SKUITabBarController *)self view];
  [v29 bounds];
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
  v17 = [v16 navigationBar];
  v18 = v17;
  if (v17)
  {
    [v17 bounds];
    [v18 convertRect:v29 toView:?];
    v20 = v19;
    v22 = v21;
    v23 = [MEMORY[0x277D75128] sharedApplication];
    [v18 defaultSizeForOrientation:{objc_msgSend(v23, "statusBarOrientation")}];
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
  [v29 bringSubviewToFront:self->_floatingOverlayView];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITabBarController init]";
}

@end