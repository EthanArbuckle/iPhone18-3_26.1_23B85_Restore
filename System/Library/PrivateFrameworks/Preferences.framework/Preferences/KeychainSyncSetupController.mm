@interface KeychainSyncSetupController
- (KeychainSyncSetupController)initWithManager:(id)manager;
- (void)cancelPressed;
- (void)showController:(id)controller;
@end

@implementation KeychainSyncSetupController

- (KeychainSyncSetupController)initWithManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = KeychainSyncSetupController;
  v5 = [(PSSetupController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, managerCopy);
  }

  return v6;
}

- (void)showController:(id)controller
{
  controllerCopy = controller;
  viewControllers = [(KeychainSyncSetupController *)self viewControllers];
  v6 = [viewControllers count];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPressed];
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setLeftBarButtonItem:v7];
  }

  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [controllerCopy setDelegate:WeakRetained];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setRootController:self];
  }

  v10.receiver = self;
  v10.super_class = KeychainSyncSetupController;
  [(PSRootController *)&v10 showController:controllerCopy];
}

- (void)cancelPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained keychainSyncControllerCancel:self];
}

@end