@interface STLockoutPolicyController
- (BOOL)_actionIgnoreLimitForTodayWithCompletionHandler:(id)a3;
- (BOOL)_actionOneMoreMinuteWithCompletionHandler:(id)a3;
- (BOOL)_actionRemindMeInMinutesWithCompletionHandler:(id)a3;
- (BOOL)_actionRemindMeInOneHourWithCompletionHandler:(id)a3;
- (BOOL)_changeInternalStateTo:(unint64_t)a3;
- (BOOL)_requestAdditionalTime:(int64_t)a3 withCompletionHandler:(id)a4;
- (BOOL)handleAction:(int64_t)a3 withCompletionHandler:(id)a4;
- (BOOL)shouldAllowOneMoreMinute;
- (CNContainer)iCloudContainer;
- (NSSet)blockedContactsHandles;
- (STLockoutPolicyController)init;
- (STLockoutPolicyController)initWithBundleIdentifier:(id)a3 contactsHandles:(id)a4 delegate:(id)a5;
- (STLockoutPolicyController)initWithBundleIdentifier:(id)a3 conversationContext:(id)a4 contactStore:(id)a5 delegate:(id)a6;
- (STLockoutPolicyController)initWithBundleIdentifier:(id)a3 delegate:(id)a4;
- (STLockoutPolicyController)initWithCategoryIdentifier:(id)a3 delegate:(id)a4;
- (STLockoutPolicyController)initWithWebsiteURL:(id)a3 delegate:(id)a4;
- (double)_timeIntervalToEndOfDay;
- (id)_makeAskForTimeResource;
- (void)_allowedByContactsHandleDidChange:(id)a3 conversationContext:(id)a4;
- (void)_allowedByScreenTimeDidChange:(BOOL)a3 conversationContext:(id)a4;
- (void)_applicationCurrentlyLimitedDidChange:(BOOL)a3 conversationContext:(id)a4;
- (void)_askForTimeResponseWithState:(int64_t)a3 respondingParent:(id)a4 amountGranted:(id)a5 error:(id)a6;
- (void)_authenticatedApproveForAdditionalTime:(double)a3 withCompletionHandler:(id)a4;
- (void)_changePolicyToCurrent;
- (void)_changePolicyToCurrentWithBundleIdentifier:(id)a3;
- (void)_changePolicyToCurrentWithCategoryIdentifier:(id)a3;
- (void)_changePolicyToCurrentWithURL:(id)a3;
- (void)_changeStateToBeforePending;
- (void)_changeStateToInitial;
- (void)_handleChangeToPolicy:(int64_t)a3;
- (void)_setupCategoryPolicyMonitorForIdentifier:(id)a3;
- (void)_setupWebsitePolicyMonitorForURL:(id)a3;
- (void)_updateAllowedByScreenTime:(BOOL)a3 applicationCurrentlyLimited:(BOOL)a4 allowedByContactsHandle:(id)a5;
- (void)dealloc;
- (void)iCloudContainer;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setBundleIdentifier:(id)a3;
- (void)shouldAllowOneMoreMinute;
@end

@implementation STLockoutPolicyController

- (STLockoutPolicyController)init
{
  v3.receiver = self;
  v3.super_class = STLockoutPolicyController;
  return [(STLockoutPolicyController *)&v3 init];
}

- (STLockoutPolicyController)initWithCategoryIdentifier:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = STLockoutPolicyController;
  v8 = [(STLockoutPolicyController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v10 = [v6 copy];
    categoryIdentifier = v9->_categoryIdentifier;
    v9->_categoryIdentifier = v10;

    v9->_style = 4;
    [(STLockoutPolicyController *)v9 _setupCategoryPolicyMonitorForIdentifier:v9->_categoryIdentifier];
    v12 = objc_opt_new();
    managementState = v9->_managementState;
    v9->_managementState = v12;
  }

  return v9;
}

- (STLockoutPolicyController)initWithBundleIdentifier:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = STLockoutPolicyController;
  v9 = [(STLockoutPolicyController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v10->_style = 0;
    v11 = objc_opt_new();
    managementState = v10->_managementState;
    v10->_managementState = v11;

    objc_storeStrong(&v10->_bundleIdentifier, a3);
  }

  return v10;
}

- (STLockoutPolicyController)initWithWebsiteURL:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = STLockoutPolicyController;
  v9 = [(STLockoutPolicyController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_websiteURL, a3);
    v10->_style = 1;
    [(STLockoutPolicyController *)v10 _setupWebsitePolicyMonitorForURL:v10->_websiteURL];
    v11 = objc_opt_new();
    managementState = v10->_managementState;
    v10->_managementState = v11;
  }

  return v10;
}

- (STLockoutPolicyController)initWithBundleIdentifier:(id)a3 contactsHandles:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = STLockoutPolicyController;
  v10 = a5;
  v11 = [(STLockoutPolicyController *)&v31 init];
  v12 = [v8 copy];
  bundleIdentifier = v11->_bundleIdentifier;
  v11->_bundleIdentifier = v12;

  v14 = [v9 copy];
  contactsHandles = v11->_contactsHandles;
  v11->_contactsHandles = v14;

  objc_storeWeak(&v11->_delegate, v10);
  v11->_style = 3;
  v11->_state = 0;
  v16 = objc_opt_new();
  managementState = v11->_managementState;
  v11->_managementState = v16;

  v18 = objc_opt_new();
  contactStore = v11->_contactStore;
  v11->_contactStore = v18;

  v20 = MEMORY[0x277D4B968];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__STLockoutPolicyController_initWithBundleIdentifier_contactsHandles_delegate___block_invoke;
  v27[3] = &unk_278338F10;
  v28 = v8;
  v21 = v11;
  v29 = v21;
  v30 = v9;
  v22 = v9;
  v23 = v8;
  [v20 requestConversationWithBundleIdentifier:v23 completionHandler:v27];
  v24 = v30;
  v25 = v21;

  return v25;
}

void __79__STLockoutPolicyController_initWithBundleIdentifier_contactsHandles_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__STLockoutPolicyController_initWithBundleIdentifier_contactsHandles_delegate___block_invoke_10;
    block[3] = &unk_278338EE8;
    v9 = *(a1 + 40);
    v10 = v5;
    v11 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], block);

    v7 = v9;
  }

  else
  {
    v7 = +[STBlockingUILog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __79__STLockoutPolicyController_initWithBundleIdentifier_contactsHandles_delegate___block_invoke_cold_1();
    }
  }
}

void __79__STLockoutPolicyController_initWithBundleIdentifier_contactsHandles_delegate___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) setConversation:*(a1 + 40)];
  v6 = [*(a1 + 40) allowableByContactsHandles:*(a1 + 48)];
  [*(a1 + 32) setConversationContext:v6];
  v2 = *(a1 + 32);
  v3 = [v6 allowedByScreenTime];
  v4 = [v6 applicationCurrentlyLimited];
  v5 = [v6 allowedByContactsHandle];
  [v2 _updateAllowedByScreenTime:v3 applicationCurrentlyLimited:v4 allowedByContactsHandle:v5];

  [v6 addObserver:*(a1 + 32) forKeyPath:@"allowedByScreenTime" options:1 context:@"KVOContextLockoutPolicyController"];
  [v6 addObserver:*(a1 + 32) forKeyPath:@"applicationCurrentlyLimited" options:1 context:@"KVOContextLockoutPolicyController"];
  [v6 addObserver:*(a1 + 32) forKeyPath:@"allowedByContactsHandle" options:1 context:@"KVOContextLockoutPolicyController"];
}

- (STLockoutPolicyController)initWithBundleIdentifier:(id)a3 conversationContext:(id)a4 contactStore:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = STLockoutPolicyController;
  v12 = a6;
  v13 = a3;
  v14 = [(STLockoutPolicyController *)&v28 init];
  v15 = [v13 copy];

  bundleIdentifier = v14->_bundleIdentifier;
  v14->_bundleIdentifier = v15;

  v17 = [v10 allowedByContactsHandle];
  v18 = [v17 allKeys];
  v19 = [v18 copy];
  contactsHandles = v14->_contactsHandles;
  v14->_contactsHandles = v19;

  objc_storeWeak(&v14->_delegate, v12);
  v14->_style = 3;
  v14->_state = 0;
  v21 = objc_opt_new();
  managementState = v14->_managementState;
  v14->_managementState = v21;

  if (v11)
  {
    v23 = v11;
  }

  else
  {
    v23 = objc_opt_new();
  }

  contactStore = v14->_contactStore;
  v14->_contactStore = v23;

  conversationContext = v14->_conversationContext;
  v14->_conversationContext = v10;
  v26 = v10;

  [(STConversationContext *)v14->_conversationContext addObserver:v14 forKeyPath:@"allowedByScreenTime" options:1 context:@"KVOContextLockoutPolicyController"];
  [(STConversationContext *)v14->_conversationContext addObserver:v14 forKeyPath:@"applicationCurrentlyLimited" options:1 context:@"KVOContextLockoutPolicyController"];
  [(STConversationContext *)v14->_conversationContext addObserver:v14 forKeyPath:@"allowedByContactsHandle" options:1 context:@"KVOContextLockoutPolicyController"];

  return v14;
}

- (void)setBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_storeStrong(&self->_bundleIdentifier, a3);
  v6 = +[STBlockingUILog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    *buf = 138412290;
    v17 = bundleIdentifier;
    _os_log_impl(&dword_21DD93000, v6, OS_LOG_TYPE_DEFAULT, "bundle identifier is %@", buf, 0xCu);
  }

  v8 = (self->_reuseIdentifier + 1);
  self->_reuseIdentifier = v8;
  objc_initWeak(buf, self);
  v9 = objc_alloc(MEMORY[0x277D04BD8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__STLockoutPolicyController_setBundleIdentifier___block_invoke;
  v13[3] = &unk_278338F38;
  objc_copyWeak(v15, buf);
  v15[1] = v8;
  v10 = v5;
  v14 = v10;
  v11 = [v9 initWithPolicyChangeHandler:v13];
  applicationPolicyMonitor = self->_applicationPolicyMonitor;
  self->_applicationPolicyMonitor = v11;

  self->_state = 0;
  [(STLockoutPolicyController *)self _changePolicyToCurrent];

  objc_destroyWeak(v15);
  objc_destroyWeak(buf);
}

void __49__STLockoutPolicyController_setBundleIdentifier___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__STLockoutPolicyController_setBundleIdentifier___block_invoke_2;
  block[3] = &unk_278338F38;
  objc_copyWeak(v4, a1 + 5);
  v4[1] = a1[6];
  v3 = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v4);
}

void __49__STLockoutPolicyController_setBundleIdentifier___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[1] == *(a1 + 48))
  {
    v4 = +[STBlockingUILog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3[1]];
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "received notification of policy change for %@ (%@) bundle identifier %@", &v7, 0x20u);
    }

    [v3 _changePolicyToCurrentWithBundleIdentifier:*(a1 + 32)];
  }
}

- (BOOL)handleAction:(int64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 1;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (v6)
        {
          (*(v6 + 2))(v6, 0);
        }

        v8 = 0;
      }

      else if (a3 == 2)
      {
        v9 = [(STLockoutPolicyController *)self _requestAdditionalTime:2 withCompletionHandler:v6];
LABEL_16:
        v8 = v9;
      }
    }

    else if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }

  else
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        v9 = [(STLockoutPolicyController *)self _actionIgnoreLimitForTodayWithCompletionHandler:v6];
      }

      else
      {
        v9 = [(STLockoutPolicyController *)self _actionRemindMeInMinutesWithCompletionHandler:v6];
      }

      goto LABEL_16;
    }

    if (a3 == 5)
    {
      v9 = [(STLockoutPolicyController *)self _actionRemindMeInOneHourWithCompletionHandler:v6];
      goto LABEL_16;
    }

    if (a3 == 6)
    {
      v9 = [(STLockoutPolicyController *)self _actionOneMoreMinuteWithCompletionHandler:v6];
      goto LABEL_16;
    }
  }

  return v8;
}

- (void)dealloc
{
  [(STConversationContext *)self->_conversationContext removeObserver:self forKeyPath:@"allowedByScreenTime" context:@"KVOContextLockoutPolicyController"];
  [(STConversationContext *)self->_conversationContext removeObserver:self forKeyPath:@"applicationCurrentlyLimited" context:@"KVOContextLockoutPolicyController"];
  [(STConversationContext *)self->_conversationContext removeObserver:self forKeyPath:@"allowedByContactsHandle" context:@"KVOContextLockoutPolicyController"];
  v3.receiver = self;
  v3.super_class = STLockoutPolicyController;
  [(STLockoutPolicyController *)&v3 dealloc];
}

- (NSSet)blockedContactsHandles
{
  v3 = [(STLockoutPolicyController *)self conversationContext];
  v4 = [v3 allowedByContactsHandle];
  v5 = [v4 keysOfEntriesPassingTest:&__block_literal_global_3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = [(STLockoutPolicyController *)self contactsHandles];
    v7 = [v8 setWithArray:v9];
  }

  return v7;
}

- (CNContainer)iCloudContainer
{
  managementState = self->_managementState;
  v15 = 0;
  v4 = [(STManagementState *)managementState primaryiCloudCardDAVAccountIdentifierWithError:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = [MEMORY[0x277CBDAD8] predicateForContainersInAccountWithExternalIdentifier:v4];
    v7 = [(STLockoutPolicyController *)self contactStore];
    v14 = v5;
    v8 = [v7 containersMatchingPredicate:v6 error:&v14];
    v9 = v14;

    if (v8)
    {
      if ([v8 count])
      {
        v10 = [v8 objectAtIndexedSubscript:0];
LABEL_13:

        goto LABEL_14;
      }

      v11 = +[STBlockingUILog log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_21DD93000, v11, OS_LOG_TYPE_DEFAULT, "No iCloud container found for user", v13, 2u);
      }
    }

    else
    {
      v11 = +[STBlockingUILog log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [STLockoutPolicyController iCloudContainer];
      }
    }

    v10 = 0;
    goto LABEL_13;
  }

  v6 = +[STBlockingUILog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [STLockoutPolicyController iCloudContainer];
  }

  v10 = 0;
  v9 = v5;
LABEL_14:

  return v10;
}

- (void)_setupCategoryPolicyMonitorForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  reuseIdentifier = self->_reuseIdentifier;
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D04BE0]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__STLockoutPolicyController__setupCategoryPolicyMonitorForIdentifier___block_invoke;
  v10[3] = &unk_278338F38;
  objc_copyWeak(v12, &location);
  v12[1] = reuseIdentifier;
  v7 = v4;
  v11 = v7;
  v8 = [v6 initWithPolicyChangeHandler:v10];
  categoryPolicyMonitor = self->_categoryPolicyMonitor;
  self->_categoryPolicyMonitor = v8;

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __70__STLockoutPolicyController__setupCategoryPolicyMonitorForIdentifier___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__STLockoutPolicyController__setupCategoryPolicyMonitorForIdentifier___block_invoke_2;
  block[3] = &unk_278338F38;
  objc_copyWeak(v4, a1 + 5);
  v4[1] = a1[6];
  v3 = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v4);
}

void __70__STLockoutPolicyController__setupCategoryPolicyMonitorForIdentifier___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[1] == *(a1 + 48))
  {
    v4 = +[STBlockingUILog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3[1]];
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "received notification of policy change for %@ (%@) category identifier %@", &v7, 0x20u);
    }

    [v3 _changePolicyToCurrentWithCategoryIdentifier:*(a1 + 32)];
  }
}

- (void)_setupWebsitePolicyMonitorForURL:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  reuseIdentifier = self->_reuseIdentifier;
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D04D88]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__STLockoutPolicyController__setupWebsitePolicyMonitorForURL___block_invoke;
  v10[3] = &unk_278338F38;
  objc_copyWeak(v12, &location);
  v12[1] = reuseIdentifier;
  v7 = v4;
  v11 = v7;
  v8 = [v6 initWithPolicyChangeHandler:v10];
  websitePolicyMonitor = self->_websitePolicyMonitor;
  self->_websitePolicyMonitor = v8;

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __62__STLockoutPolicyController__setupWebsitePolicyMonitorForURL___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__STLockoutPolicyController__setupWebsitePolicyMonitorForURL___block_invoke_2;
  block[3] = &unk_278338F38;
  objc_copyWeak(v4, a1 + 5);
  v4[1] = a1[6];
  v3 = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v4);
}

void __62__STLockoutPolicyController__setupWebsitePolicyMonitorForURL___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[1] == *(a1 + 48))
  {
    v4 = +[STBlockingUILog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3[1]];
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "received notification of policy change for %@ (%@) URL %@", &v7, 0x20u);
    }

    [v3 _changePolicyToCurrentWithURL:*(a1 + 32)];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == @"KVOContextLockoutPolicyController")
  {
    if ([v10 isEqualToString:@"allowedByScreenTime"])
    {
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      -[STLockoutPolicyController _allowedByScreenTimeDidChange:conversationContext:](self, "_allowedByScreenTimeDidChange:conversationContext:", [v13 BOOLValue], v11);
    }

    else if ([v10 isEqualToString:@"applicationCurrentlyLimited"])
    {
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v13 == v15)
      {

        v13 = 0;
      }

      -[STLockoutPolicyController _applicationCurrentlyLimitedDidChange:conversationContext:](self, "_applicationCurrentlyLimitedDidChange:conversationContext:", [v13 BOOLValue], v11);
    }

    else
    {
      if (![v10 isEqualToString:@"allowedByContactsHandle"])
      {
        goto LABEL_16;
      }

      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v16 = [MEMORY[0x277CBEB68] null];

      if (v13 == v16)
      {

        v13 = 0;
      }

      [(STLockoutPolicyController *)self _allowedByContactsHandleDidChange:v13 conversationContext:v11];
    }

    goto LABEL_16;
  }

  v17.receiver = self;
  v17.super_class = STLockoutPolicyController;
  [(STLockoutPolicyController *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_16:
}

- (void)_allowedByScreenTimeDidChange:(BOOL)a3 conversationContext:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__STLockoutPolicyController__allowedByScreenTimeDidChange_conversationContext___block_invoke;
  block[3] = &unk_278338F60;
  v10 = a3;
  block[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__STLockoutPolicyController__allowedByScreenTimeDidChange_conversationContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) applicationCurrentlyLimited];
  v5 = [*(a1 + 40) allowedByContactsHandle];
  [v3 _updateAllowedByScreenTime:v2 applicationCurrentlyLimited:v4 allowedByContactsHandle:v5];
}

- (void)_applicationCurrentlyLimitedDidChange:(BOOL)a3 conversationContext:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__STLockoutPolicyController__applicationCurrentlyLimitedDidChange_conversationContext___block_invoke;
  block[3] = &unk_278338F60;
  block[4] = self;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __87__STLockoutPolicyController__applicationCurrentlyLimitedDidChange_conversationContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allowedByScreenTime];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) allowedByContactsHandle];
  [v2 _updateAllowedByScreenTime:v3 applicationCurrentlyLimited:v4 allowedByContactsHandle:v5];
}

- (void)_allowedByContactsHandleDidChange:(id)a3 conversationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__STLockoutPolicyController__allowedByContactsHandleDidChange_conversationContext___block_invoke;
  block[3] = &unk_278338EE8;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __83__STLockoutPolicyController__allowedByContactsHandleDidChange_conversationContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allowedByScreenTime];
  v4 = [*(a1 + 40) applicationCurrentlyLimited];
  v5 = *(a1 + 48);

  return [v2 _updateAllowedByScreenTime:v3 applicationCurrentlyLimited:v4 allowedByContactsHandle:v5];
}

- (void)_updateAllowedByScreenTime:(BOOL)a3 applicationCurrentlyLimited:(BOOL)a4 allowedByContactsHandle:(id)a5
{
  v5 = a4;
  v8 = a5;
  v12 = v8;
  if (a3)
  {
    v9 = 9;
  }

  else
  {
    v10 = [v8 keysOfEntriesPassingTest:&__block_literal_global_3];
    v11 = [v10 count];

    if (!v11)
    {
      goto LABEL_8;
    }

    if (v5)
    {
      v9 = 8;
    }

    else
    {
      v9 = 7;
    }
  }

  [(STLockoutPolicyController *)self _changeInternalStateTo:v9];
LABEL_8:
}

- (BOOL)shouldAllowOneMoreMinute
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    managementState = self->_managementState;
    v20 = 0;
    v5 = [(STManagementState *)managementState shouldAllowOneMoreMinuteForBundleIdentifier:bundleIdentifier error:&v20];
    v6 = v20;
  }

  else
  {
    p_websiteURL = &self->_websiteURL;
    websiteURL = self->_websiteURL;
    if (websiteURL)
    {
      v11 = [(NSURL *)websiteURL host];
      if (v11)
      {
        v12 = self->_managementState;
        v19 = 0;
        v5 = [(STManagementState *)v12 shouldAllowOneMoreMinuteForWebDomain:v11 error:&v19];
        v7 = v19;
      }

      else
      {
        v15 = +[STBlockingUILog log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          [(STLockoutPolicyController *)p_websiteURL shouldAllowOneMoreMinute];
        }

        v7 = 0;
        v5 = 0;
      }

      if (v5)
      {
        goto LABEL_4;
      }

LABEL_14:
      v16 = +[STBlockingUILog log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [STLockoutPolicyController shouldAllowOneMoreMinute];
      }

      v8 = 1;
      goto LABEL_17;
    }

    categoryIdentifier = self->_categoryIdentifier;
    if (!categoryIdentifier)
    {
      return 0;
    }

    v14 = self->_managementState;
    v18 = 0;
    v5 = [(STManagementState *)v14 shouldAllowOneMoreMinuteForCategoryIdentifier:categoryIdentifier error:&v18];
    v6 = v18;
  }

  v7 = v6;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = [v5 BOOLValue];
LABEL_17:

  return v8;
}

- (void)_changePolicyToCurrentWithCategoryIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    reuseIdentifier = self->_reuseIdentifier;
    objc_initWeak(&location, self);
    categoryPolicyMonitor = self->_categoryPolicyMonitor;
    v13[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__STLockoutPolicyController__changePolicyToCurrentWithCategoryIdentifier___block_invoke;
    v9[3] = &unk_278338FB0;
    v10 = v4;
    objc_copyWeak(v11, &location);
    v11[1] = reuseIdentifier;
    [(DMFCategoryPolicyMonitor *)categoryPolicyMonitor requestPoliciesForCategoryIdentifiers:v7 completionHandler:v9];

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = +[STBlockingUILog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [STLockoutPolicyController _changePolicyToCurrentWithCategoryIdentifier:];
    }
  }
}

void __74__STLockoutPolicyController__changePolicyToCurrentWithCategoryIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_21DD93000, v6, OS_LOG_TYPE_DEFAULT, "request policies for category %@ returned error: %@", buf, 0x16u);
    }
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    v8 = [v6 integerValue];
    v9 = +[STBlockingUILog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = STStringFromPolicy(v8);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_21DD93000, v9, OS_LOG_TYPE_DEFAULT, "request policies for category %@ returned %@", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__STLockoutPolicyController__changePolicyToCurrentWithCategoryIdentifier___block_invoke_28;
    block[3] = &unk_278338F88;
    objc_copyWeak(v13, (a1 + 40));
    v13[1] = *(a1 + 48);
    v13[2] = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v13);
  }
}

void __74__STLockoutPolicyController__changePolicyToCurrentWithCategoryIdentifier___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1] == *(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained _handleChangeToPolicy:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_changePolicyToCurrentWithBundleIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    reuseIdentifier = self->_reuseIdentifier;
    objc_initWeak(&location, self);
    applicationPolicyMonitor = self->_applicationPolicyMonitor;
    v13[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__STLockoutPolicyController__changePolicyToCurrentWithBundleIdentifier___block_invoke;
    v9[3] = &unk_278338FB0;
    v10 = v4;
    objc_copyWeak(v11, &location);
    v11[1] = reuseIdentifier;
    [(DMFApplicationPolicyMonitor *)applicationPolicyMonitor requestPoliciesForBundleIdentifiers:v7 completionHandler:v9];

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = +[STBlockingUILog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [STLockoutPolicyController _changePolicyToCurrentWithBundleIdentifier:];
    }
  }
}

void __72__STLockoutPolicyController__changePolicyToCurrentWithBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_21DD93000, v6, OS_LOG_TYPE_DEFAULT, "request policies for bundle identifier %@ returned error: %@", buf, 0x16u);
    }
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    v8 = [v6 integerValue];
    v9 = +[STBlockingUILog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = STStringFromPolicy(v8);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_21DD93000, v9, OS_LOG_TYPE_DEFAULT, "request policies for bundle identifier %@ returned %@", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__STLockoutPolicyController__changePolicyToCurrentWithBundleIdentifier___block_invoke_30;
    block[3] = &unk_278338F88;
    objc_copyWeak(v13, (a1 + 40));
    v13[1] = *(a1 + 48);
    v13[2] = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v13);
  }
}

void __72__STLockoutPolicyController__changePolicyToCurrentWithBundleIdentifier___block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1] == *(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained _handleChangeToPolicy:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_changePolicyToCurrentWithURL:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    reuseIdentifier = self->_reuseIdentifier;
    objc_initWeak(&location, self);
    websitePolicyMonitor = self->_websitePolicyMonitor;
    v13[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__STLockoutPolicyController__changePolicyToCurrentWithURL___block_invoke;
    v9[3] = &unk_278338FB0;
    v10 = v4;
    objc_copyWeak(v11, &location);
    v11[1] = reuseIdentifier;
    [(DMFWebsitePolicyMonitor *)websitePolicyMonitor requestPoliciesForWebsites:v7 completionHandler:v9];

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = +[STBlockingUILog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [STLockoutPolicyController _changePolicyToCurrentWithURL:];
    }
  }
}

void __59__STLockoutPolicyController__changePolicyToCurrentWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_21DD93000, v6, OS_LOG_TYPE_DEFAULT, "request policies for website %@ returned error: %@", buf, 0x16u);
    }
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    v8 = [v6 integerValue];
    v9 = +[STBlockingUILog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = STStringFromPolicy(v8);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_21DD93000, v9, OS_LOG_TYPE_DEFAULT, "request policies for website %@ returned %@", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__STLockoutPolicyController__changePolicyToCurrentWithURL___block_invoke_31;
    block[3] = &unk_278338F88;
    objc_copyWeak(v13, (a1 + 40));
    v13[1] = *(a1 + 48);
    v13[2] = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v13);
  }
}

void __59__STLockoutPolicyController__changePolicyToCurrentWithURL___block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1] == *(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained _handleChangeToPolicy:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_changePolicyToCurrent
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleChangeToPolicy:(int64_t)a3
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v11 = +[STBlockingUILog log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_21DD93000, v11, OS_LOG_TYPE_DEFAULT, "change to policy Warn", v16, 2u);
        }

        v6 = self;
        v7 = 2;
      }

      else
      {
        if (a3 != 2)
        {
          return;
        }

        v5 = +[STBlockingUILog log];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "change to policy Ask", buf, 2u);
        }

        v6 = self;
        v7 = 3;
      }
    }

    else
    {
      v9 = +[STBlockingUILog log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21DD93000, v9, OS_LOG_TYPE_DEFAULT, "change to policy OK", v17, 2u);
      }

      v6 = self;
      v7 = 9;
    }

    goto LABEL_26;
  }

  switch(a3)
  {
    case 3:
      v10 = +[STBlockingUILog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21DD93000, v10, OS_LOG_TYPE_DEFAULT, "change to policy Ask Pending", v14, 2u);
      }

      v6 = self;
      v7 = 4;
      goto LABEL_26;
    case 4:
      v12 = +[STBlockingUILog log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_21DD93000, v12, OS_LOG_TYPE_DEFAULT, "change to policy Blocked", v13, 2u);
      }

      v6 = self;
      v7 = 6;
LABEL_26:
      [(STLockoutPolicyController *)v6 _changeInternalStateTo:v7];
      return;
    case 5:
      v8 = +[STBlockingUILog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [STLockoutPolicyController _handleChangeToPolicy:];
      }

      break;
  }
}

- (void)_changeStateToBeforePending
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_state == 4)
  {
    stateBeforePending = self->_stateBeforePending;
    v4 = +[STBlockingUILog log];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (stateBeforePending == 2)
    {
      if (v5)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Reverting state to Warn", &v11, 2u);
      }

      v6 = self;
      v7 = 2;
      goto LABEL_12;
    }

    if (stateBeforePending == 3)
    {
      if (v5)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Reverting state to Ask", &v11, 2u);
      }

      v6 = self;
      v7 = 3;
LABEL_12:
      [(STLockoutPolicyController *)v6 _changeInternalStateTo:v7];
      return;
    }

    if (v5)
    {
      v10 = STStringFromLockoutState(self->_stateBeforePending);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "State before request was %{public}@; expected Ask or Warn", &v11, 0xCu);
    }
  }

  else
  {
    v4 = +[STBlockingUILog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = STStringFromLockoutState(self->_state);
      v9 = STStringFromLockoutState(self->_stateBeforePending);
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Current state (%{public}@) is no longer pending, so skipping revert to state (%{public}@) before pending", &v11, 0x16u);
    }
  }
}

- (BOOL)_changeInternalStateTo:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  state = self->_state;
  if (state == a3)
  {
    v15 = +[STBlockingUILog log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = STStringFromLockoutState(a3);
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_21DD93000, v15, OS_LOG_TYPE_DEFAULT, "skipping change to state: already %@", &v18, 0xCu);
    }

    goto LABEL_17;
  }

  if (state == 9)
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = STStringFromLockoutState(a3);
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_21DD93000, v6, OS_LOG_TYPE_DEFAULT, "WARNING: change to state %@: lockout state is Dismissing", &v18, 0xCu);
    }
  }

  v8 = +[STBlockingUILog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = STStringFromLockoutState(a3);
    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&dword_21DD93000, v8, OS_LOG_TYPE_DEFAULT, "changing lockout state to %@", &v18, 0xCu);
  }

  if (a3 == 4)
  {
    self->_stateBeforePending = self->_state;
  }

  self->_state = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = +[STBlockingUILog log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = STStringFromLockoutState(a3);
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_21DD93000, v13, OS_LOG_TYPE_DEFAULT, "calling delegate  stateDidChange to %@", &v18, 0xCu);
      }

      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 stateDidChange:a3];
LABEL_17:
    }
  }

  return state != a3;
}

- (void)_changeStateToInitial
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[STBlockingUILog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21DD93000, v3, OS_LOG_TYPE_DEFAULT, "Changing state to Initial", v4, 2u);
  }

  if ([(STLockoutPolicyController *)self _changeInternalStateTo:1])
  {
    [(STLockoutPolicyController *)self _changePolicyToCurrent];
  }
}

- (double)_timeIntervalToEndOfDay
{
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 dateByAddingUnit:16 value:1 toDate:v3 options:0];
  v5 = [v2 components:252 fromDate:v4];
  [v5 setHour:0];
  [v5 setMinute:0];
  [v5 setSecond:0];
  v6 = [v2 dateFromComponents:v5];
  [v6 timeIntervalSinceDate:v3];
  v8 = v7;

  return v8;
}

- (void)_authenticatedApproveForAdditionalTime:(double)a3 withCompletionHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  reuseIdentifier = self->_reuseIdentifier;
  v8 = [(STLockoutPolicyController *)self _makeAskForTimeResource];
  askForTimeResource = self->_askForTimeResource;
  self->_askForTimeResource = v8;

  v10 = a3;
  if (a3 != 60.0)
  {
    v10 = a3;
    if (a3 == 0.0)
    {
      [(STLockoutPolicyController *)self _timeIntervalToEndOfDay];
      v10 = v11;
    }
  }

  v12 = +[STBlockingUILog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_askForTimeResource;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    *buf = 138412546;
    v25 = v13;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_21DD93000, v12, OS_LOG_TYPE_DEFAULT, "Created Ask For Time Resource %@ to grant additional time %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __90__STLockoutPolicyController__authenticatedApproveForAdditionalTime_withCompletionHandler___block_invoke;
  v21 = &unk_278339000;
  v23[1] = *&v10;
  objc_copyWeak(v23, buf);
  v23[2] = reuseIdentifier;
  v15 = v6;
  v22 = v15;
  v16 = _Block_copy(&v18);
  v17 = self->_askForTimeResource;
  if (a3 == 60.0)
  {
    [(STAskForTimeResource *)v17 approveOneMoreMinuteWithCompletionHandler:v16, v18, v19, v20, v21];
  }

  else
  {
    [(STAskForTimeResource *)v17 approveAdditionalTime:v16 completionHandler:v10, v18, v19, v20, v21];
  }

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);
}

void __90__STLockoutPolicyController__authenticatedApproveForAdditionalTime_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[STBlockingUILog log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
      *buf = 138412546;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Attempt to grant approval for %@{public}@ seconds failed; error: %{public}@", buf, 0x16u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __90__STLockoutPolicyController__authenticatedApproveForAdditionalTime_withCompletionHandler___block_invoke_36;
    v8[3] = &unk_278338FD8;
    objc_copyWeak(v11, (a1 + 40));
    v11[1] = *(a1 + 56);
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(v11);
  }

  else
  {
    if (v5)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Request to grant approval for %{public}@ seconds was received with no error; should be granted immediately", buf, 0xCu);
    }
  }
}

uint64_t __90__STLockoutPolicyController__authenticatedApproveForAdditionalTime_withCompletionHandler___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (WeakRetained[1] == *(a1 + 56))
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        (*(v3 + 16))(v3, *(a1 + 32));
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_requestAdditionalTime:(int64_t)a3 withCompletionHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[STBlockingUILog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21DD93000, v6, OS_LOG_TYPE_DEFAULT, "Requesting parent for additional time", buf, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  reuseIdentifier = self->_reuseIdentifier;
  if (self->_askForTimeResource)
  {
    v8 = +[STBlockingUILog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21DD93000, v8, OS_LOG_TYPE_DEFAULT, "warning: ask for time request in progress when another one issued", buf, 2u);
    }
  }

  v9 = [(STLockoutPolicyController *)self _makeAskForTimeResource];
  askForTimeResource = self->_askForTimeResource;
  self->_askForTimeResource = v9;

  v11 = +[STBlockingUILog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_askForTimeResource;
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:3600.0];
    categoryIdentifier = self->_categoryIdentifier;
    if (categoryIdentifier || (categoryIdentifier = self->_bundleIdentifier) != 0)
    {
      v15 = 0;
    }

    else
    {
      categoryIdentifier = [(NSURL *)self->_websiteURL host];
      v15 = 1;
    }

    *buf = 138412802;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = categoryIdentifier;
    _os_log_impl(&dword_21DD93000, v11, OS_LOG_TYPE_DEFAULT, "Created Ask For Time Resource %@ for additional time %@ for %@", buf, 0x20u);
    if (v15)
    {
    }
  }

  objc_initWeak(buf, self);
  v16 = self->_askForTimeResource;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__STLockoutPolicyController__requestAdditionalTime_withCompletionHandler___block_invoke;
  v19[3] = &unk_278339000;
  v21[1] = 0x40AC200000000000;
  objc_copyWeak(v21, buf);
  v21[2] = reuseIdentifier;
  v17 = v5;
  v20 = v17;
  [(STAskForTimeResource *)v16 requestAdditionalTime:v19 completionHandler:3600.0];

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);

  return 1;
}

void __74__STLockoutPolicyController__requestAdditionalTime_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[STBlockingUILog log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Requested %@ seconds; error: %@", buf, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21DD93000, v4, OS_LOG_TYPE_DEFAULT, "Requested %@ seconds; request pending", buf, 0xCu);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__STLockoutPolicyController__requestAdditionalTime_withCompletionHandler___block_invoke_38;
    v9[3] = &unk_278339028;
    objc_copyWeak(v10, (a1 + 40));
    v10[1] = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], v9);
    objc_destroyWeak(v10);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void __74__STLockoutPolicyController__requestAdditionalTime_withCompletionHandler___block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1] == *(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained _changeInternalStateTo:4];
    WeakRetained = v3;
  }
}

- (BOOL)_actionOneMoreMinuteWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(STLockoutPolicyController *)self _authenticatedApproveForAdditionalTime:v4 withCompletionHandler:60.0];

  return 1;
}

- (BOOL)_actionRemindMeInMinutesWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(STLockoutPolicyController *)self _authenticatedApproveForAdditionalTime:v4 withCompletionHandler:900.0];

  return 1;
}

- (BOOL)_actionRemindMeInOneHourWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(STLockoutPolicyController *)self _authenticatedApproveForAdditionalTime:v4 withCompletionHandler:3600.0];

  return 1;
}

- (BOOL)_actionIgnoreLimitForTodayWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(STLockoutPolicyController *)self _authenticatedApproveForAdditionalTime:v4 withCompletionHandler:0.0];

  return 1;
}

- (id)_makeAskForTimeResource
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  reuseIdentifier = self->_reuseIdentifier;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__STLockoutPolicyController__makeAskForTimeResource__block_invoke;
  aBlock[3] = &unk_278339078;
  objc_copyWeak(v12, &location);
  v12[1] = reuseIdentifier;
  v4 = _Block_copy(aBlock);
  style = self->_style;
  if (style == 1)
  {
    if (self->_websiteURL)
    {
      v7 = objc_alloc(MEMORY[0x277D4B918]);
      v8 = [(NSURL *)self->_websiteURL host];
      v9 = [v7 initWithWebsiteDomain:v8 changeHandler:v4];

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (style != 4 || !self->_categoryIdentifier)
  {
LABEL_7:
    v6 = [objc_alloc(MEMORY[0x277D4B8E0]) initWithBundleIdentifier:self->_bundleIdentifier changeHandler:v4];
    goto LABEL_8;
  }

  v6 = [objc_alloc(MEMORY[0x277D4B8F0]) initWithCategoryIdentifier:self->_categoryIdentifier changeHandler:v4];
LABEL_8:
  v9 = v6;
LABEL_9:

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v9;
}

void __52__STLockoutPolicyController__makeAskForTimeResource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__STLockoutPolicyController__makeAskForTimeResource__block_invoke_2;
  v15[3] = &unk_278339050;
  objc_copyWeak(v19, (a1 + 32));
  v19[1] = *(a1 + 40);
  v19[2] = a2;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v15);

  objc_destroyWeak(v19);
}

void __52__STLockoutPolicyController__makeAskForTimeResource__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && WeakRetained[1] == *(a1 + 64))
  {
    v3 = WeakRetained;
    [WeakRetained _askForTimeResponseWithState:*(a1 + 72) respondingParent:*(a1 + 32) amountGranted:*(a1 + 40) error:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_askForTimeResponseWithState:(int64_t)a3 respondingParent:(id)a4 amountGranted:(id)a5 error:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    if (a3 <= 2)
    {
      if (!a3)
      {
        v13 = +[STBlockingUILog log];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        *v31 = 0;
        v14 = "ask for time response: unknown";
        v15 = v13;
        v16 = 2;
        goto LABEL_4;
      }

      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_6;
        }

        v17 = +[STBlockingUILog log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 0;
          v18 = "ask for time response: timeout";
LABEL_23:
          _os_log_impl(&dword_21DD93000, v17, OS_LOG_TYPE_DEFAULT, v18, v31, 2u);
          goto LABEL_24;
        }

        goto LABEL_24;
      }

      v24 = +[STBlockingUILog log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&dword_21DD93000, v24, OS_LOG_TYPE_DEFAULT, "ask for time response: request pending", v31, 2u);
      }

      v21 = self;
      v22 = 4;
LABEL_35:
      [(STLockoutPolicyController *)v21 _changeInternalStateTo:v22, *v31, *&v31[16], v32];
      goto LABEL_6;
    }

    if (a3 == 3)
    {
      v17 = +[STBlockingUILog log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        v18 = "ask for time response: canceled";
        goto LABEL_23;
      }

LABEL_24:

      askForTimeResource = self->_askForTimeResource;
      self->_askForTimeResource = 0;

      [(STLockoutPolicyController *)self _changeStateToBeforePending];
      goto LABEL_6;
    }

    if (a3 != 4)
    {
      if (a3 != 5)
      {
        goto LABEL_6;
      }

      v19 = +[STBlockingUILog log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&dword_21DD93000, v19, OS_LOG_TYPE_DEFAULT, "ask for time response: disapproved", v31, 2u);
      }

      v20 = self->_askForTimeResource;
      self->_askForTimeResource = 0;

      v21 = self;
      v22 = 6;
      goto LABEL_35;
    }

    v25 = +[STBlockingUILog log];
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v26)
      {
        *v31 = 138412546;
        *&v31[4] = v10;
        *&v31[12] = 2112;
        *&v31[14] = v11;
        v27 = "ask for time response: parent %@ approved for %@ seconds";
        v28 = v25;
        v29 = 22;
LABEL_33:
        _os_log_impl(&dword_21DD93000, v28, OS_LOG_TYPE_DEFAULT, v27, v31, v29);
      }
    }

    else if (v26)
    {
      *v31 = 138412290;
      *&v31[4] = v10;
      v27 = "ask for time response: parent %@ approved for rest of day";
      v28 = v25;
      v29 = 12;
      goto LABEL_33;
    }

    v30 = self->_askForTimeResource;
    self->_askForTimeResource = 0;

    v21 = self;
    v22 = 5;
    goto LABEL_35;
  }

  v13 = +[STBlockingUILog log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 67109378;
    *&v31[4] = a3;
    *&v31[8] = 2112;
    *&v31[10] = v12;
    v14 = "ask for time response: request state %d, error: %@";
    v15 = v13;
    v16 = 18;
LABEL_4:
    _os_log_impl(&dword_21DD93000, v15, OS_LOG_TYPE_DEFAULT, v14, v31, v16);
  }

LABEL_5:

LABEL_6:
}

void __79__STLockoutPolicyController_initWithBundleIdentifier_contactsHandles_delegate___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_21DD93000, v1, OS_LOG_TYPE_FAULT, "Failed to request a conversation: %{public}@ for bundle identifier: %{public}@", v2, 0x16u);
}

- (void)iCloudContainer
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)shouldAllowOneMoreMinute
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_21DD93000, v0, OS_LOG_TYPE_FAULT, "failed to determine if One More Minute should be allowed %{public}@", v1, 0xCu);
}

- (void)_changePolicyToCurrentWithCategoryIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_changePolicyToCurrentWithBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_changePolicyToCurrentWithURL:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end