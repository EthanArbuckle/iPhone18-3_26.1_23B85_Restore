@interface MTAccountController
+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)a3;
- (BOOL)activeAccountIsManagedAppleID;
- (BOOL)isPrimaryUserActiveAccount;
- (BOOL)isUserLoggedIn;
- (MTAccountController)init;
- (id)_activeAccountBlocking;
- (id)activeAccount;
- (id)activeDsid;
- (id)activeEmail;
- (id)activeFullName;
- (id)activeStorefront;
- (void)_updateActiveAccount;
- (void)dealloc;
- (void)didChangeStoreAccount:(id)a3;
- (void)fetchActiveAccountWithCompletion:(id)a3;
- (void)setActiveAccount:(id)a3;
@end

@implementation MTAccountController

- (MTAccountController)init
{
  v13.receiver = self;
  v13.super_class = MTAccountController;
  v2 = [(MTAccountController *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.podcasts.MTAccountController.accountQueue", 0);
    accountQueue = v2->_accountQueue;
    v2->_accountQueue = v3;

    v5 = dispatch_queue_create("com.apple.podcasts.MTAccountController.callbackQueue", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    [(MTAccountController *)v2 _updateActiveAccount];
    v7 = objc_opt_new();
    inFlightAuthRequests = v2->_inFlightAuthRequests;
    v2->_inFlightAuthRequests = v7;

    v9 = objc_opt_new();
    declinedAuthRequests = v2->_declinedAuthRequests;
    v2->_declinedAuthRequests = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v2 selector:sel_didChangeStoreAccount_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTAccountController;
  [(MTAccountController *)&v4 dealloc];
}

- (id)activeAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accountQueue = self->_accountQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__MTAccountController_activeAccount__block_invoke;
  v5[3] = &unk_279A44980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accountQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__MTAccountController_activeAccount__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v2 = *(v1 + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (void)setActiveAccount:(id)a3
{
  v4 = a3;
  accountQueue = self->_accountQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MTAccountController_setActiveAccount___block_invoke;
  v7[3] = &unk_279A44EC8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(accountQueue, v7);
}

void __40__MTAccountController_setActiveAccount___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25E9F0000, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: Setting active account: %@", &v5, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPrimaryUserActiveAccount
{
  v3 = [(ACAccount *)self->__activeAccount ams_DSID];
  if (v3)
  {
    v4 = [(MTAccountController *)self activeDsid];
    v5 = [(ACAccount *)self->__activeAccount ams_DSID];
    v6 = [v4 isEqualToNumber:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchActiveAccountWithCompletion:(id)a3
{
  v4 = a3;
  accountQueue = self->_accountQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MTAccountController_fetchActiveAccountWithCompletion___block_invoke;
  v7[3] = &unk_279A44F18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accountQueue, v7);
}

void __56__MTAccountController_fetchActiveAccountWithCompletion___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) hasFetchedInitialAccount] & 1) == 0)
  {
    [*(a1 + 32) _updateActiveAccount];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__MTAccountController_fetchActiveAccountWithCompletion___block_invoke_2;
    block[3] = &unk_279A44EF0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (id)activeDsid
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_DSID];

  return v3;
}

- (id)activeStorefront
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_storefront];

  return v3;
}

- (id)activeEmail
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 username];

  return v3;
}

- (id)activeFullName
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_fullName];

  return v3;
}

- (BOOL)isUserLoggedIn
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_DSID];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)activeAccountIsManagedAppleID
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_isManagedAppleID];

  return v3;
}

- (void)didChangeStoreAccount:(id)a3
{
  if ([MTAccountController iTunesAccountDidChangeForACAccountNotification:a3])
  {
    [(MTAccountController *)self _updateActiveAccount];
    if ([(MTAccountController *)self isUserLoggedIn])
    {
      v4 = [MEMORY[0x277CCAB98] defaultCenter];
      [v4 postNotificationName:@"MTShouldCheckShowWelcomeNotification" object:0];
    }
  }
}

- (id)_activeAccountBlocking
{
  v2 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  return v3;
}

- (void)_updateActiveAccount
{
  v3 = [(MTAccountController *)self activeDsid];
  v4 = [v3 stringValue];

  accountQueue = self->_accountQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__MTAccountController__updateActiveAccount__block_invoke;
  v7[3] = &unk_279A44EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accountQueue, v7);
}

void __43__MTAccountController__updateActiveAccount__block_invoke(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E9F0000, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: updating active account", v7, 2u);
  }

  v3 = [*(a1 + 32) _activeAccountBlocking];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  v6 = *(a1 + 40);
  if (v6 | v5 && ([v6 isEqualToString:v5] & 1) == 0)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_8);
  }

  [*(a1 + 32) setActiveAccount:v3];
  [*(a1 + 32) setHasFetchedInitialAccount:1];
}

void __43__MTAccountController__updateActiveAccount__block_invoke_20()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"AccountDSIDChangedNotification" object:0];
}

+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = *MEMORY[0x277CB8C90];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CB8C90]];
  if (v6)
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = [v8 isEqualToString:*MEMORY[0x277CB8D58]];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end