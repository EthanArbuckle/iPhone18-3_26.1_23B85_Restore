@interface MTAccountController
+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)notification;
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
- (void)didChangeStoreAccount:(id)account;
- (void)fetchActiveAccountWithCompletion:(id)completion;
- (void)setActiveAccount:(id)account;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didChangeStoreAccount_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)setActiveAccount:(id)account
{
  accountCopy = account;
  accountQueue = self->_accountQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MTAccountController_setActiveAccount___block_invoke;
  v7[3] = &unk_279A44EC8;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
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
  ams_DSID = [(ACAccount *)self->__activeAccount ams_DSID];
  if (ams_DSID)
  {
    activeDsid = [(MTAccountController *)self activeDsid];
    ams_DSID2 = [(ACAccount *)self->__activeAccount ams_DSID];
    v6 = [activeDsid isEqualToNumber:ams_DSID2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchActiveAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  accountQueue = self->_accountQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MTAccountController_fetchActiveAccountWithCompletion___block_invoke;
  v7[3] = &unk_279A44F18;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  return ams_DSID;
}

- (id)activeStorefront
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_storefront = [activeAccount ams_storefront];

  return ams_storefront;
}

- (id)activeEmail
{
  activeAccount = [(MTAccountController *)self activeAccount];
  username = [activeAccount username];

  return username;
}

- (id)activeFullName
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_fullName = [activeAccount ams_fullName];

  return ams_fullName;
}

- (BOOL)isUserLoggedIn
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_DSID = [activeAccount ams_DSID];
  v4 = ams_DSID != 0;

  return v4;
}

- (BOOL)activeAccountIsManagedAppleID
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_isManagedAppleID = [activeAccount ams_isManagedAppleID];

  return ams_isManagedAppleID;
}

- (void)didChangeStoreAccount:(id)account
{
  if ([MTAccountController iTunesAccountDidChangeForACAccountNotification:account])
  {
    [(MTAccountController *)self _updateActiveAccount];
    if ([(MTAccountController *)self isUserLoggedIn])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"MTShouldCheckShowWelcomeNotification" object:0];
    }
  }
}

- (id)_activeAccountBlocking
{
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

- (void)_updateActiveAccount
{
  activeDsid = [(MTAccountController *)self activeDsid];
  stringValue = [activeDsid stringValue];

  accountQueue = self->_accountQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__MTAccountController__updateActiveAccount__block_invoke;
  v7[3] = &unk_279A44EC8;
  v7[4] = self;
  v8 = stringValue;
  v6 = stringValue;
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

+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = *MEMORY[0x277CB8C90];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CB8C90]];
  if (v6)
  {
    userInfo2 = [notificationCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:v5];
    v9 = [v8 isEqualToString:*MEMORY[0x277CB8D58]];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end