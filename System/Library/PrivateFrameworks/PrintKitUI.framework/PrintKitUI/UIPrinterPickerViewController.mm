@interface UIPrinterPickerViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)shouldShowPrinter:(id)printer;
- (UIPrinterPickerViewController)initWithPrinterPickerController:(id)controller inParentController:(id)parentController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_keyWindowWillRotate:(id)rotate;
- (void)_presentInParentAnimated:(BOOL)animated;
- (void)_presentWindow;
- (void)dealloc;
- (void)dismissPrinterPickerAnimated:(BOOL)animated;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentPrinterPickerPanelAnimated:(BOOL)animated hostingScene:(id)scene;
- (void)presentPrinterPickerPanelFromBarButtonItem:(id)item animated:(BOOL)animated;
- (void)presentPrinterPickerPanelFromRect:(CGRect)rect inView:(id)view animated:(BOOL)animated;
- (void)printerBrowserViewDidDisappear;
@end

@implementation UIPrinterPickerViewController

- (UIPrinterPickerViewController)initWithPrinterPickerController:(id)controller inParentController:(id)parentController
{
  controllerCopy = controller;
  parentControllerCopy = parentController;
  v22.receiver = self;
  v22.super_class = UIPrinterPickerViewController;
  v9 = [(UIPrinterPickerViewController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_printerPickerController, controller);
    v11 = objc_storeWeak(&v10->_parentController, parentControllerCopy);
    v10->_userSelectedPrinter = 0;
    v12 = v11;
    v13 = [[UIPrinterBrowserViewController alloc] initWithOwnerViewController:v10 printInfo:0 printPanelViewController:0];
    printerBrowserViewController = v10->_printerBrowserViewController;
    v10->_printerBrowserViewController = v13;

    if (parentControllerCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10->_printerBrowserViewController];
        navigationController = v10->_navigationController;
        v10->_navigationController = v15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        viewControllers = [parentControllerCopy viewControllers];
        v18 = [viewControllers count];

        if (v18)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10->_printerBrowserViewController];
      v20 = v10->_navigationController;
      v10->_navigationController = v19;
    }

    [(UIPrinterBrowserViewController *)v10->_printerBrowserViewController showCancelButton];
LABEL_10:
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = UIPrinterPickerViewController;
  [(UIPrinterPickerViewController *)&v4 dealloc];
}

- (void)_presentInParentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  _popoverController = [WeakRetained _popoverController];
  self->_parentHasNoPopover = _popoverController == 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [WeakRetained topViewController];
    originalViewControllerInNav = self->_originalViewControllerInNav;
    self->_originalViewControllerInNav = topViewController;

    delegate = [WeakRetained delegate];
    objc_storeWeak(&self->_originalNavControllerDelegate, delegate);

    [WeakRetained setDelegate:self];
    [WeakRetained pushViewController:self->_printerBrowserViewController animated:animatedCopy];
  }

  else
  {
    [WeakRetained presentViewController:self->_navigationController animated:animatedCopy completion:0];
  }

  printerPickerController = self->_printerPickerController;
  if (animatedCopy)
  {
    [(UIPrinterPickerController *)printerPickerController performSelector:sel__printerPickerDidPresent withObject:0 afterDelay:0.35];
  }

  else
  {
    [(UIPrinterPickerController *)printerPickerController _printerPickerDidPresent];
  }
}

- (void)_presentWindow
{
  [(UIWindow *)self->_window frame];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = CGRectGetHeight(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v13 = CGRectOffset(v12, 0.0, v7);
  [(UIWindow *)self->_window setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
  v8 = 0.3;
  if (!self->_animated)
  {
    v8 = 0.0;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__UIPrinterPickerViewController__presentWindow__block_invoke;
  v10[3] = &unk_279A9CCA0;
  v10[4] = self;
  *&v10[5] = x;
  *&v10[6] = y;
  *&v10[7] = width;
  *&v10[8] = height;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__UIPrinterPickerViewController__presentWindow__block_invoke_2;
  v9[3] = &unk_279A9C8D8;
  v9[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:v8];
}

uint64_t __47__UIPrinterPickerViewController__presentWindow__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 32);
    if (*(v3 + 1058) == 1)
    {
      v4 = [MEMORY[0x277CCAB98] defaultCenter];
      [v4 removeObserver:*(v2 + 32) name:*MEMORY[0x277D772D8] object:0];

      *(*(v2 + 32) + 1058) = 0;
      v3 = *(v2 + 32);
    }

    v5 = *(v3 + 1000);

    return [v5 _printerPickerDidPresent];
  }

  return result;
}

- (void)_keyWindowWillRotate:(id)rotate
{
  if (self->_observingRotation)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D772D8] object:0];

    self->_observingRotation = 0;
  }

  [(UIWindow *)self->_window _updateInterfaceOrientationFromDeviceOrientation:0];

  [(UIPrinterPickerViewController *)self _presentWindow];
}

- (void)presentPrinterPickerPanelAnimated:(BOOL)animated hostingScene:(id)scene
{
  animatedCopy = animated;
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  if (WeakRetained)
  {
    [(UIPrinterPickerViewController *)self _presentInParentAnimated:animatedCopy];
  }

  else
  {
    _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    if (_applicationKeyWindow)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__keyWindowWillRotate_ name:*MEMORY[0x277D772D8] object:_applicationKeyWindow];

      self->_observingRotation = 1;
    }

    if (!sceneCopy)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      sceneCopy = [mEMORY[0x277D75128] _findUISceneForLegacyInterfaceOrientation];
    }

    v10 = [[UIPrinterPickerWindow alloc] initWithWindowScene:sceneCopy];
    window = self->_window;
    self->_window = &v10->super;

    [(UIWindow *)self->_window setWindowLevel:*MEMORY[0x277D768D0]];
    [(UIWindow *)self->_window setRootViewController:self->_navigationController];
    v12 = self->_window;
    view = [(UINavigationController *)self->_navigationController view];
    [(UIWindow *)v12 addSubview:view];

    [(UIWindow *)self->_window makeKeyAndVisible];
    self->_animated = animatedCopy;
    [(UIPrinterPickerViewController *)self _presentWindow];
  }
}

- (void)presentPrinterPickerPanelFromRect:(CGRect)rect inView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  if (WeakRetained)
  {
    [(UIPrinterPickerViewController *)self _presentInParentAnimated:animatedCopy];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_navigationController];
    poverController = self->_poverController;
    self->_poverController = v12;

    [(UIPopoverController *)self->_poverController setDelegate:self];
    [(UIPopoverController *)self->_poverController presentPopoverFromRect:viewCopy inView:15 permittedArrowDirections:animatedCopy animated:x, y, width, height];
    printerPickerController = self->_printerPickerController;
    if (animatedCopy)
    {
      [(UIPrinterPickerController *)printerPickerController performSelector:sel__printerPickerDidPresent withObject:0 afterDelay:0.35];
    }

    else
    {
      [(UIPrinterPickerController *)printerPickerController _printerPickerDidPresent];
    }
  }
}

- (void)presentPrinterPickerPanelFromBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  if (WeakRetained)
  {
    [(UIPrinterPickerViewController *)self _presentInParentAnimated:animatedCopy];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_navigationController];
    poverController = self->_poverController;
    self->_poverController = v7;

    [(UIPopoverController *)self->_poverController setDelegate:self];
    [(UIPopoverController *)self->_poverController presentPopoverFromBarButtonItem:itemCopy permittedArrowDirections:15 animated:animatedCopy];
    printerPickerController = self->_printerPickerController;
    if (animatedCopy)
    {
      [(UIPrinterPickerController *)printerPickerController performSelector:sel__printerPickerDidPresent withObject:0 afterDelay:0.35];
    }

    else
    {
      [(UIPrinterPickerController *)printerPickerController _printerPickerDidPresent];
    }
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  if (self->_originalViewControllerInNav == viewController)
  {
    [(UIPrinterPickerController *)self->_printerPickerController _printerPickerWillDismiss];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  if (self->_originalViewControllerInNav == viewController)
  {
    self->_dismissed = 1;
    controllerCopy = controller;
    WeakRetained = objc_loadWeakRetained(&self->_originalNavControllerDelegate);
    [controllerCopy setDelegate:WeakRetained];

    printerPickerController = self->_printerPickerController;

    [(UIPrinterPickerController *)printerPickerController _printerPickerDidDismiss];
  }
}

- (void)dismissPrinterPickerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIPrinterPickerController *)self->_printerPickerController _printerPickerWillDismiss];
  self->_dismissed = 1;
  window = self->_window;
  if (window)
  {
    if (animatedCopy)
    {
      [(UIWindow *)window frame];
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      v10 = CGRectGetHeight(v20);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __62__UIPrinterPickerViewController_dismissPrinterPickerAnimated___block_invoke;
      v18[3] = &unk_279A9CCC8;
      v18[4] = self;
      *&v18[5] = x;
      *&v18[6] = y;
      *&v18[7] = width;
      *&v18[8] = height;
      v18[9] = 0;
      *&v18[10] = v10;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __62__UIPrinterPickerViewController_dismissPrinterPickerAnimated___block_invoke_2;
      v17[3] = &unk_279A9C8D8;
      v17[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v18 animations:v17 completion:0.3];
      return;
    }

    [(UIWindow *)window setHidden:1];
    printerPickerController = self->_printerPickerController;
    goto LABEL_10;
  }

  poverController = self->_poverController;
  if (poverController)
  {
    [(UIPopoverController *)poverController dismissPopoverAnimated:animatedCopy];
    printerPickerController = self->_printerPickerController;
    if (!animatedCopy)
    {
LABEL_10:

      [(UIPrinterPickerController *)printerPickerController _printerPickerDidDismiss];
      return;
    }

    [(UIPrinterPickerController *)printerPickerController performSelector:sel__printerPickerDidDismiss withObject:0 afterDelay:0.35];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentController);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([WeakRetained viewControllers], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14 >= 2))
    {
      v15 = [WeakRetained popViewControllerAnimated:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [WeakRetained setViewControllers:MEMORY[0x277CBEBF8]];
      }

      else
      {
        [WeakRetained dismissViewControllerAnimated:animatedCopy completion:0];
      }
    }

    [(UIPrinterPickerController *)self->_printerPickerController _printerPickerDidDismiss];
  }
}

uint64_t __62__UIPrinterPickerViewController_dismissPrinterPickerAnimated___block_invoke(uint64_t a1)
{
  v5 = CGRectOffset(*(a1 + 40), *(a1 + 72), *(a1 + 80));
  v2 = *(*(a1 + 32) + 1048);

  return [v2 setFrame:{v5.origin.x, v5.origin.y, v5.size.width, v5.size.height}];
}

uint64_t __62__UIPrinterPickerViewController_dismissPrinterPickerAnimated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1048) setHidden:1];
  v2 = *(*(a1 + 32) + 1000);

  return [v2 _printerPickerDidDismiss];
}

- (void)printerBrowserViewDidDisappear
{
  if (!self->_dismissed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentController);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_parentController);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = objc_loadWeakRetained(&self->_parentController);
      }

      else
      {
        v5 = self->_navigationController;
      }

      v8 = v5;

      topViewController = [(UINavigationController *)v8 topViewController];
      printerBrowserViewController = self->_printerBrowserViewController;

      if (topViewController == printerBrowserViewController)
      {
        [(UIPrinterPickerViewController *)self dismissPrinterPickerAnimated:0];
      }
    }
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v21 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 1;
  }

  if (orientation == 2)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  if (WeakRetained)
  {
    return 1;
  }

  v7 = 1;
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([v14 _isTextEffectsWindow] & 1) == 0 && !objc_msgSend(v14, "_shouldAutorotateToInterfaceOrientation:", orientation))
        {
          v7 = 0;
          goto LABEL_17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v7 = 1;
  }

LABEL_17:

  return v7;
}

- (unint64_t)supportedInterfaceOrientations
{
  v19 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  if (WeakRetained)
  {
    return 26;
  }

  v7 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    v5 = 26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 _isTextEffectsWindow] & 1) == 0)
        {
          v5 &= [v12 _supportedInterfaceOrientationsForRootViewController];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  else
  {
    v5 = 26;
  }

  return v5;
}

- (BOOL)shouldShowPrinter:(id)printer
{
  printerCopy = printer;
  if (printerCopy && (v5 = [[UIPrinter alloc] _initWithPrinter:printerCopy]) != 0)
  {
    v6 = v5;
    v7 = [(UIPrinterPickerController *)self->_printerPickerController _shouldShowPrinter:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end