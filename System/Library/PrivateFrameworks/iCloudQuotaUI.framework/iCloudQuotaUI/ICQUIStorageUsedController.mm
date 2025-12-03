@interface ICQUIStorageUsedController
- (ICQUIStorageUsedController)initWithAppBundleID:(id)d account:(id)account navigationController:(id)controller;
- (void)_beginLiftUIFlowWithURL:(id)l;
- (void)_beginRUIFlowWithURL:(id)l;
- (void)_startSpinnerInSpecifier:(id)specifier;
- (void)_stopSpinnerInSpecifier:(id)specifier;
- (void)beginLoadingForSpecifier:(id)specifier;
- (void)loadFailed:(id)failed withError:(id)error;
- (void)loadFinished:(id)finished;
- (void)loadStarted:(id)started;
@end

@implementation ICQUIStorageUsedController

- (ICQUIStorageUsedController)initWithAppBundleID:(id)d account:(id)account navigationController:(id)controller
{
  dCopy = d;
  accountCopy = account;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = ICQUIStorageUsedController;
  v12 = [(ICQUIStorageUsedController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_appBundleID, d);
    objc_storeStrong(&v13->_navigationController, controller);
  }

  return v13;
}

- (void)beginLoadingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  objc_storeStrong(&self->_activeSpecifier, specifier);
  [(ICQUIStorageUsedController *)self _startSpinnerInSpecifier:specifierCopy];
  v6 = [objc_alloc(MEMORY[0x277D7F338]) initWithAccount:self->_account];
  appBundleID = self->_appBundleID;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ICQUIStorageUsedController_beginLoadingForSpecifier___block_invoke;
  v9[3] = &unk_27A65B5D0;
  v9[4] = self;
  v10 = specifierCopy;
  v8 = specifierCopy;
  [v6 fetchStorageByApp:appBundleID completion:v9];
}

void __55__ICQUIStorageUsedController_beginLoadingForSpecifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__ICQUIStorageUsedController_beginLoadingForSpecifier___block_invoke_cold_1(v6, v8);
    }

    [*(a1 + 32) _stopSpinnerInSpecifier:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Fetch app storage finished with success.", buf, 2u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__ICQUIStorageUsedController_beginLoadingForSpecifier___block_invoke_34;
    v11[3] = &unk_27A65A708;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __55__ICQUIStorageUsedController_beginLoadingForSpecifier___block_invoke_34(uint64_t a1)
{
  v2 = [*(a1 + 32) ruiURL];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = [v3 ruiURL];
    [v4 _beginRUIFlowWithURL:?];
  }

  else
  {
    v5 = [v3 liftUIURL];
    [v4 _beginLiftUIFlowWithURL:?];
  }
}

- (void)_beginRUIFlowWithURL:(id)l
{
  lCopy = l;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Initiating RUI flow.", v8, 2u);
  }

  v6 = [[ICQPreferencesRemoteUIDelegate alloc] initWithNavigationController:self->_navigationController initialAction:0 account:self->_account];
  ruiDelegate = self->_ruiDelegate;
  self->_ruiDelegate = v6;

  [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setDelegate:self];
  [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate loadURL:lCopy postBody:0];
}

- (void)_beginLiftUIFlowWithURL:(id)l
{
  lCopy = l;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Initiating LiftUI flow.", v8, 2u);
  }

  v6 = [[ICQUIPreferencesLiftUIDelegate alloc] initWithNavigationController:self->_navigationController account:self->_account];
  liftUIDelegate = self->_liftUIDelegate;
  self->_liftUIDelegate = v6;

  [(ICQUIPreferencesLiftUIDelegate *)self->_liftUIDelegate loadURL:lCopy];
  [(ICQUIStorageUsedController *)self _stopSpinnerInSpecifier:self->_activeSpecifier];
}

- (void)loadStarted:(id)started
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Storage used VC loading started.", v4, 2u);
  }
}

- (void)loadFinished:(id)finished
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Storage used VC load finished with success.", v5, 2u);
  }

  [(ICQUIStorageUsedController *)self _stopSpinnerInSpecifier:self->_activeSpecifier];
}

- (void)loadFailed:(id)failed withError:(id)error
{
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQUIStorageUsedController loadFailed:errorCopy withError:v6];
  }

  [(ICQUIStorageUsedController *)self _stopSpinnerInSpecifier:self->_activeSpecifier];
}

- (void)_startSpinnerInSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:*MEMORY[0x277D40148]];
  if (v3)
  {
    v6 = v3;
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [v4 setColor:systemGrayColor];

    [v4 startAnimating];
    [v6 setAccessoryView:v4];

    v3 = v6;
  }
}

- (void)_stopSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v3 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
  if (v3)
  {
    v4 = [specifierCopy propertyForKey:*MEMORY[0x277D3FEB0]];
    [v3 setAccessoryView:v4];
  }
}

void __55__ICQUIStorageUsedController_beginLoadingForSpecifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Fetch app storage failed with error %@", &v2, 0xCu);
}

- (void)loadFailed:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Storage used VC load failed with error: %@", &v2, 0xCu);
}

@end