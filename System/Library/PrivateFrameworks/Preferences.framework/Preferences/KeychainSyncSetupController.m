@interface KeychainSyncSetupController
- (KeychainSyncSetupController)initWithManager:(id)a3;
- (void)cancelPressed;
- (void)showController:(id)a3;
@end

@implementation KeychainSyncSetupController

- (KeychainSyncSetupController)initWithManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = KeychainSyncSetupController;
  v5 = [(PSSetupController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, v4);
  }

  return v6;
}

- (void)showController:(id)a3
{
  v4 = a3;
  v5 = [(KeychainSyncSetupController *)self viewControllers];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPressed];
    v8 = [v4 navigationItem];
    [v8 setLeftBarButtonItem:v7];
  }

  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [v4 setDelegate:WeakRetained];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setRootController:self];
  }

  v10.receiver = self;
  v10.super_class = KeychainSyncSetupController;
  [(PSRootController *)&v10 showController:v4];
}

- (void)cancelPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained keychainSyncControllerCancel:self];
}

@end