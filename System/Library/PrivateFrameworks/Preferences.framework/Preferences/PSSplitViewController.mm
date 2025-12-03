@interface PSSplitViewController
- (PSRootController)containerNavigationController;
- (PSSplitViewControllerNavigationDelegate)navigationDelegate;
- (id)categoryController;
- (id)childViewControllerForStatusBarStyle;
- (void)popRecursivelyToRootController;
- (void)setViewControllers:(id)controllers;
- (void)setupControllerForToolbar:(id)toolbar;
- (void)showInitialViewController:(id)controller;
@end

@implementation PSSplitViewController

- (id)childViewControllerForStatusBarStyle
{
  viewControllers = [(PSSplitViewController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (void)popRecursivelyToRootController
{
  v4.receiver = self;
  v4.super_class = PSSplitViewController;
  [(UIViewController *)&v4 popRecursivelyToRootController];
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained splitViewControllerDidPopToRootController:self];
}

- (void)showInitialViewController:(id)controller
{
  v29[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = controllerCopy;
  if (!controllerCopy)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    sf_isInternalInstall = [currentDevice sf_isInternalInstall];

    if (sf_isInternalInstall)
    {
      NSLog(&cfstr_TryingToShowAN.isa);
    }

    goto LABEL_18;
  }

  if (![controllerCopy conformsToProtocol:&unk_1EFE6C730])
  {
    goto LABEL_10;
  }

  containerNavigationController = [(PSSplitViewController *)self containerNavigationController];
  viewControllers = [containerNavigationController viewControllers];
  firstObject = [viewControllers firstObject];
  v9 = [firstObject conformsToProtocol:&unk_1EFE6C730];

  if (!v9)
  {
    goto LABEL_10;
  }

  containerNavigationController2 = [(PSSplitViewController *)self containerNavigationController];
  viewControllers2 = [containerNavigationController2 viewControllers];
  if (![viewControllers2 count])
  {

    goto LABEL_10;
  }

  containerNavigationController3 = [(PSSplitViewController *)self containerNavigationController];
  viewControllers3 = [containerNavigationController3 viewControllers];
  v14 = [viewControllers3 objectAtIndexedSubscript:0];
  specifier = [v14 specifier];
  specifier2 = [v5 specifier];

  if (specifier != specifier2)
  {
LABEL_10:
    containerNavigationController4 = [(PSSplitViewController *)self containerNavigationController];
    toolbar = [containerNavigationController4 toolbar];
    [toolbar setHidden:1];

    v29[0] = v5;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    containerNavigationController5 = [(PSSplitViewController *)self containerNavigationController];
    [containerNavigationController5 setViewControllers:v23];

    if ([v5 conformsToProtocol:&unk_1EFE6C730])
    {
      [v5 setRootController:self->_containerNavigationController];
    }

    [(PSSplitViewController *)self setupControllerForToolbar:v5];
    goto LABEL_13;
  }

  containerNavigationController6 = [(PSSplitViewController *)self containerNavigationController];
  v18 = [containerNavigationController6 popToRootViewControllerAnimated:1];

LABEL_13:
  viewControllers4 = [(PSSplitViewController *)self viewControllers];
  containerNavigationController7 = [(PSSplitViewController *)self containerNavigationController];
  if ([viewControllers4 containsObject:containerNavigationController7])
  {

LABEL_17:
    goto LABEL_18;
  }

  containerNavigationController8 = [(PSSplitViewController *)self containerNavigationController];
  splitViewController = [containerNavigationController8 splitViewController];

  if (splitViewController != self)
  {
    viewControllers4 = [(PSSplitViewController *)self containerNavigationController];
    [(PSSplitViewController *)self showDetailViewController:viewControllers4 sender:self];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)setupControllerForToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  [toolbarCopy _setSuppressesBottomBar:1];
  if (objc_opt_respondsToSelector())
  {
    [toolbarCopy _setSuppressesBottomBar:{objc_msgSend(toolbarCopy, "performSelector:", sel_needsToShowToolbarInPrefsAppRoot) == 0}];
  }
}

- (PSRootController)containerNavigationController
{
  containerNavigationController = self->_containerNavigationController;
  if (!containerNavigationController)
  {
    v4 = objc_alloc_init(PSRootController);
    v5 = self->_containerNavigationController;
    self->_containerNavigationController = v4;

    [(PSSplitViewController *)self setupControllerForToolbar:self->_containerNavigationController];
    containerNavigationController = self->_containerNavigationController;
  }

  return containerNavigationController;
}

- (void)setViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if ([controllersCopy count])
  {
    v5 = [controllersCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [controllersCopy objectAtIndexedSubscript:0];
      navigationBar = [v7 navigationBar];
      [navigationBar setPrefersLargeTitles:1];
    }
  }

  v9.receiver = self;
  v9.super_class = PSSplitViewController;
  [(PSSplitViewController *)&v9 setViewControllers:controllersCopy];
}

- (id)categoryController
{
  containerNavigationController = [(PSSplitViewController *)self containerNavigationController];
  viewControllers = [containerNavigationController viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (PSSplitViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

@end