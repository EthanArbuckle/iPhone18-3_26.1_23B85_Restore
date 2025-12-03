@interface SKUIMoreNavigationController
- (SKUIMoreNavigationControllerDelegate)storeKitDelegate;
- (id)displayedViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setDisplayedViewController:(id)controller;
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
    displayedViewController = displayedViewController;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SKUIMoreNavigationController;
    displayedViewController = [(UIMoreNavigationController *)&v14 displayedViewController];
  }

  return displayedViewController;
}

- (void)setDisplayedViewController:(id)controller
{
  controllerCopy = controller;
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

  displayedViewController = [(SKUIMoreNavigationController *)self displayedViewController];

  if (displayedViewController != controllerCopy)
  {
    displayedViewController = self->_displayedViewController;
    self->_displayedViewController = 0;

    controllerCopy = controllerCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers = [(UINavigationController *)controllerCopy viewControllers];
      v16 = [viewControllers count];

      if (v16)
      {
LABEL_11:
        v19.receiver = self;
        v19.super_class = SKUIMoreNavigationController;
        [(UIMoreNavigationController *)&v19 setDisplayedViewController:controllerCopy];
        goto LABEL_12;
      }

      v17 = 0;
      v18 = self->_displayedViewController;
      self->_displayedViewController = controllerCopy;
      controllerCopy = v18;
    }

    else
    {
      v17 = controllerCopy;
    }

    controllerCopy = v17;
    goto LABEL_11;
  }

LABEL_12:
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v21[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
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

  moreListController = [(UIMoreNavigationController *)self moreListController];

  if (moreListController == controllerCopy)
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
  [(UIMoreNavigationController *)&v20 didShowViewController:controllerCopy animated:animatedCopy];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
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

  v15 = controllerCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllers = [v15 viewControllers];
    v17 = [viewControllers count];

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
      viewControllers2 = [v15 viewControllers];
      firstObject = [viewControllers2 firstObject];
      firstActualViewController = self->_firstActualViewController;
      self->_firstActualViewController = firstObject;
    }

    else
    {
      v21 = v15;
      viewControllers2 = self->_firstActualViewController;
      self->_firstActualViewController = v21;
    }
  }

  v22.receiver = self;
  v22.super_class = SKUIMoreNavigationController;
  [(UIMoreNavigationController *)&v22 pushViewController:v15 animated:animatedCopy];
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

  topViewController = [(SKUIMoreNavigationController *)self topViewController];
  v12 = topViewController;
  if (topViewController)
  {
    supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      supportedInterfaceOrientations = 30;
    }

    else if (SKUIAllowsLandscapePhone())
    {
      supportedInterfaceOrientations = 26;
    }

    else
    {
      supportedInterfaceOrientations = 2;
    }
  }

  return supportedInterfaceOrientations;
}

- (SKUIMoreNavigationControllerDelegate)storeKitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_storeKitDelegate);

  return WeakRetained;
}

@end