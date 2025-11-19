@interface SKUIMoreNavigationController
- (SKUIMoreNavigationControllerDelegate)storeKitDelegate;
- (id)displayedViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setDisplayedViewController:(id)a3;
@end

@implementation SKUIMoreNavigationController

- (id)displayedViewController
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIMoreNavigationController *)v3 displayedViewController:v4];
      }
    }
  }

  displayedViewController = self->_displayedViewController;
  if (displayedViewController)
  {
    v12 = displayedViewController;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SKUIMoreNavigationController;
    v12 = [(UIMoreNavigationController *)&v14 displayedViewController];
  }

  return v12;
}

- (void)setDisplayedViewController:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMoreNavigationController *)v5 setDisplayedViewController:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIMoreNavigationController *)self displayedViewController];

  if (v13 != v4)
  {
    displayedViewController = self->_displayedViewController;
    self->_displayedViewController = 0;

    v4 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(UINavigationController *)v4 viewControllers];
      v16 = [v15 count];

      if (v16)
      {
LABEL_11:
        v19.receiver = self;
        v19.super_class = SKUIMoreNavigationController;
        [(UIMoreNavigationController *)&v19 setDisplayedViewController:v4];
        goto LABEL_12;
      }

      v17 = 0;
      v18 = self->_displayedViewController;
      self->_displayedViewController = v4;
      v4 = v18;
    }

    else
    {
      v17 = v4;
    }

    v4 = v17;
    goto LABEL_11;
  }

LABEL_12:
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIMoreNavigationController *)v7 didShowViewController:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [(UIMoreNavigationController *)self moreListController];

  if (v15 == v6)
  {
    if (self->_firstActualViewController)
    {
      displayedViewController = self->_displayedViewController;
      v21[0] = self->_firstActualViewController;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      [(UINavigationController *)displayedViewController setViewControllers:v17 animated:0];

      firstActualViewController = self->_firstActualViewController;
      self->_firstActualViewController = 0;
    }

    v19 = self->_displayedViewController;
    self->_displayedViewController = 0;
  }

  v20.receiver = self;
  v20.super_class = SKUIMoreNavigationController;
  [(UIMoreNavigationController *)&v20 didShowViewController:v6 animated:v4];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIMoreNavigationController *)v7 pushViewController:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 viewControllers];
    v17 = [v16 count];

    if (!v17)
    {
      [(SKUIMoreNavigationController *)self setDisplayedViewController:v15];
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (!self->_firstActualViewController && self->_displayedViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v15 viewControllers];
      v19 = [v18 firstObject];
      firstActualViewController = self->_firstActualViewController;
      self->_firstActualViewController = v19;
    }

    else
    {
      v21 = v15;
      v18 = self->_firstActualViewController;
      self->_firstActualViewController = v21;
    }
  }

  v22.receiver = self;
  v22.super_class = SKUIMoreNavigationController;
  [(UIMoreNavigationController *)&v22 pushViewController:v15 animated:v4];
LABEL_16:
}

- (unint64_t)supportedInterfaceOrientations
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIMoreNavigationController *)v3 supportedInterfaceOrientations:v4];
      }
    }
  }

  v11 = [(SKUIMoreNavigationController *)self topViewController];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 supportedInterfaceOrientations];
  }

  else
  {
    v14 = [MEMORY[0x277D75418] currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (v15 == 1)
    {
      v13 = 30;
    }

    else if (SKUIAllowsLandscapePhone())
    {
      v13 = 26;
    }

    else
    {
      v13 = 2;
    }
  }

  return v13;
}

- (SKUIMoreNavigationControllerDelegate)storeKitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_storeKitDelegate);

  return WeakRetained;
}

@end