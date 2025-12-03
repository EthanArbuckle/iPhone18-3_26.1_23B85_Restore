@interface PSSetupController
- (PSSetupController)init;
- (id)controller;
- (id)parentController;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)handleURL:(id)l;
- (void)popControllerOnParent;
- (void)pushControllerOnParentWithSpecifier:(id)specifier;
- (void)setParentController:(id)controller;
- (void)setupController;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)statusBarWillChangeHeight:(id)height;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PSSetupController

- (PSSetupController)init
{
  v5.receiver = self;
  v5.super_class = PSSetupController;
  v2 = [(PSRootController *)&v5 initWithTitle:@"setup" identifier:@"setup"];
  v3 = v2;
  if (v2)
  {
    [(PSSetupController *)v2 setModalPresentationStyle:2];
  }

  return v3;
}

- (void)handleURL:(id)l
{
  lCopy = l;
  topViewController = [(PSSetupController *)self topViewController];
  if ([topViewController conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [topViewController handleURL:lCopy];
  }
}

- (id)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (void)setupController
{
  viewControllers = [(PSSetupController *)self viewControllers];
  v4 = [viewControllers count];

  if (!v4)
  {
    aClassName = [(PSSpecifier *)self->super._specifier propertyForKey:@"customControllerClass"];
    if (![(NSString *)aClassName length]|| (v5 = NSClassFromString(aClassName)) == 0)
    {
      v5 = objc_opt_class();
    }

    v6 = CreateDetailControllerInstanceWithClass(v5);
    WeakRetained = objc_loadWeakRetained(&self->super._specifier->target);

    if (!WeakRetained)
    {
      objc_storeWeak(&self->super._specifier->target, self);
    }

    properties = [(PSSpecifier *)self->super._specifier properties];
    rootInfo = self->_rootInfo;
    self->_rootInfo = properties;

    [v6 setParentController:self];
    [v6 setRootController:self];
    [v6 setSpecifier:self->super._specifier];
    [(PSRootController *)self showController:v6];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PSSetupController;
  [(PSRootController *)&v4 viewWillDisappear:disappear];
  if ([(PSSetupController *)self usePopupStyle])
  {
    [(PSRootController *)self->_parentRootController willDismissPopupView];
  }

  else if ([(PSSetupController *)self modalPresentationStyle]== 2)
  {
    [(PSRootController *)self->_parentRootController willDismissFormSheetView];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PSSetupController;
  [(PSRootController *)&v4 viewDidDisappear:disappear];
  if ([(PSSetupController *)self usePopupStyle])
  {
    [(PSRootController *)self->_parentRootController didDismissPopupView];
  }

  else if ([(PSSetupController *)self modalPresentationStyle]== 2)
  {
    [(PSRootController *)self->_parentRootController didDismissFormSheetView];
  }
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    specifier = [controllerCopy specifier];
    v7 = [specifier propertyForKey:@"dontAnimate"];
    bOOLValue = [v7 BOOLValue];

    v9 = bOOLValue ^ 1u;
  }

  else
  {
    v9 = 1;
  }

  v10.receiver = self;
  v10.super_class = PSSetupController;
  [(PSRootController *)&v10 showController:controllerCopy animate:v9];
}

- (void)setParentController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentController, obj);
    rootController = [obj rootController];
    parentRootController = self->_parentRootController;
    self->_parentRootController = rootController;
  }
}

- (id)controller
{
  viewControllers = [(PSSetupController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (![(PSSetupController *)self usePopupStyle])
  {
    parentController = [(PSSetupController *)self parentController];
    [parentController performSelector:sel__setNotShowingSetupController];

    presentingViewController = [(PSSetupController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  presentedViewController = [WeakRetained presentedViewController];

  if (presentedViewController == self)
  {
    presentingViewController = objc_loadWeakRetained(&self->_parentController);
    [presentingViewController dismissPopoverWithCompletion:completionCopy];
    goto LABEL_7;
  }

  presentedViewController2 = [(PSRootController *)self->_parentRootController presentedViewController];

  if (presentedViewController2 == self)
  {
    [(PSRootController *)self->_parentRootController dismissViewControllerAnimated:1 completion:completionCopy];
  }

LABEL_8:
}

- (void)pushControllerOnParentWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = CreateDetailControllerInstanceWithClass(specifierCopy[6]);
    [v6 setRootController:self->_parentRootController];
    v7 = objc_loadWeakRetained(&self->_parentController);
    [v6 setParentController:v7];

    [v6 setSpecifier:specifierCopy];
    v8 = objc_loadWeakRetained(&self->_parentController);
    navigationController = [v8 navigationController];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [navigationController pushViewController:v6 animated:{objc_msgSend(currentDevice, "sf_isiPad")}];
  }
}

- (void)popControllerOnParent
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_loadWeakRetained(&self->_parentController);
    navigationController = [v7 navigationController];
    v6 = [navigationController popViewControllerAnimated:0];
  }
}

- (void)statusBarWillChangeHeight:(id)height
{
  heightCopy = height;
  if (![(PSSetupController *)self usePopupStyle]&& [(PSSetupController *)self modalPresentationStyle]!= 2)
  {
    v5.receiver = self;
    v5.super_class = PSSetupController;
    [(PSRootController *)&v5 statusBarWillChangeHeight:heightCopy];
  }
}

@end