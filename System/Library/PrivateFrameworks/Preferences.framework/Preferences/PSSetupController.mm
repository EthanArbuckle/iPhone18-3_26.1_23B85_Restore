@interface PSSetupController
- (PSSetupController)init;
- (id)controller;
- (id)parentController;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleURL:(id)a3;
- (void)popControllerOnParent;
- (void)pushControllerOnParentWithSpecifier:(id)a3;
- (void)setParentController:(id)a3;
- (void)setupController;
- (void)showController:(id)a3 animate:(BOOL)a4;
- (void)statusBarWillChangeHeight:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (void)handleURL:(id)a3
{
  v5 = a3;
  v4 = [(PSSetupController *)self topViewController];
  if ([v4 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 handleURL:v5];
  }
}

- (id)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (void)setupController
{
  v3 = [(PSSetupController *)self viewControllers];
  v4 = [v3 count];

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

    v8 = [(PSSpecifier *)self->super._specifier properties];
    rootInfo = self->_rootInfo;
    self->_rootInfo = v8;

    [v6 setParentController:self];
    [v6 setRootController:self];
    [v6 setSpecifier:self->super._specifier];
    [(PSRootController *)self showController:v6];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PSSetupController;
  [(PSRootController *)&v4 viewWillDisappear:a3];
  if ([(PSSetupController *)self usePopupStyle])
  {
    [(PSRootController *)self->_parentRootController willDismissPopupView];
  }

  else if ([(PSSetupController *)self modalPresentationStyle]== 2)
  {
    [(PSRootController *)self->_parentRootController willDismissFormSheetView];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PSSetupController;
  [(PSRootController *)&v4 viewDidDisappear:a3];
  if ([(PSSetupController *)self usePopupStyle])
  {
    [(PSRootController *)self->_parentRootController didDismissPopupView];
  }

  else if ([(PSSetupController *)self modalPresentationStyle]== 2)
  {
    [(PSRootController *)self->_parentRootController didDismissFormSheetView];
  }
}

- (void)showController:(id)a3 animate:(BOOL)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 specifier];
    v7 = [v6 propertyForKey:@"dontAnimate"];
    v8 = [v7 BOOLValue];

    v9 = v8 ^ 1u;
  }

  else
  {
    v9 = 1;
  }

  v10.receiver = self;
  v10.super_class = PSSetupController;
  [(PSRootController *)&v10 showController:v5 animate:v9];
}

- (void)setParentController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentController, obj);
    v5 = [obj rootController];
    parentRootController = self->_parentRootController;
    self->_parentRootController = v5;
  }
}

- (id)controller
{
  v2 = [(PSSetupController *)self viewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v11 = a4;
  if (![(PSSetupController *)self usePopupStyle])
  {
    v9 = [(PSSetupController *)self parentController];
    [v9 performSelector:sel__setNotShowingSetupController];

    v10 = [(PSSetupController *)self presentingViewController];
    [v10 dismissViewControllerAnimated:v4 completion:v11];
LABEL_7:

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v7 = [WeakRetained presentedViewController];

  if (v7 == self)
  {
    v10 = objc_loadWeakRetained(&self->_parentController);
    [v10 dismissPopoverWithCompletion:v11];
    goto LABEL_7;
  }

  v8 = [(PSRootController *)self->_parentRootController presentedViewController];

  if (v8 == self)
  {
    [(PSRootController *)self->_parentRootController dismissViewControllerAnimated:1 completion:v11];
  }

LABEL_8:
}

- (void)pushControllerOnParentWithSpecifier:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = CreateDetailControllerInstanceWithClass(v11[6]);
    [v6 setRootController:self->_parentRootController];
    v7 = objc_loadWeakRetained(&self->_parentController);
    [v6 setParentController:v7];

    [v6 setSpecifier:v11];
    v8 = objc_loadWeakRetained(&self->_parentController);
    v9 = [v8 navigationController];
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    [v9 pushViewController:v6 animated:{objc_msgSend(v10, "sf_isiPad")}];
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
    v5 = [v7 navigationController];
    v6 = [v5 popViewControllerAnimated:0];
  }
}

- (void)statusBarWillChangeHeight:(id)a3
{
  v4 = a3;
  if (![(PSSetupController *)self usePopupStyle]&& [(PSSetupController *)self modalPresentationStyle]!= 2)
  {
    v5.receiver = self;
    v5.super_class = PSSetupController;
    [(PSRootController *)&v5 statusBarWillChangeHeight:v4];
  }
}

@end